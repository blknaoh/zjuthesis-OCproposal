\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{zjuthesis}
    [Zhejiang University Thesis and Design Template, Zixuan Wang zxwang42@gmail.com]
\input{config/version}
\wlog{zjuthesis version: \zjuthesisversion}

\RequirePackage{kvoptions}

\SetupKeyvalOptions{
    family=zjuthesis,
    prefix=
}
\DeclareStringOption{StudentName}
\DeclareStringOption{StudentID}
\DeclareStringOption{AdvisorName}
\DeclareStringOption{Grade}
\DeclareStringOption{Major}
\DeclareStringOption{Department}
\DeclareStringOption{Title}
\DeclareStringOption{TitleEng}
\DeclareStringOption{SubmitDate}
\DeclareStringOption[undergraduate]{Degree}
\DeclareStringOption[general]{MajorFormat}
\DeclareStringOption[thesis]{Type}
\DeclareStringOption[proposal]{Period}
\DeclareStringOption[false]{BlindReview}
\DeclareStringOption[chinese]{Language}

\DeclareStringOption[doctor]{GradLevel}
\DeclareStringOption{ColaboratorName}
\DeclareStringOption{Topic}

\ProcessKeyvalOptions*

\wlog{Degree: {\Degree}}
\wlog{MajorFormat: {\MajorFormat}}
\wlog{Type: {\Type}}
\wlog{Period: {\Period}}
\wlog{BlindReview: {\BlindReview}}
\wlog{Language: {\Language}}
\wlog{GradLevel: {\GradLevel}}

\PassOptionsToPackage{no-math}{fontspec}
\PassOptionsToPackage{AutoFakeBold}{xeCJK}
\LoadClass[
    zihao=-4,
    UTF8,
    twoside
]{ctexrep}

\input{config/packages}

% graduate
\ifthenelse{\equal{\GradLevel}{doctor}}
{
    % doctor
    \ifthenelse{\equal{\Type}{thesis} \OR \equal{\Type}{design}}
    {
        % thesis or design
        \newcommand{\TitleTypeName}{浙江大学博士学位论文开题报告}
        \newcommand{\TitleTypeNameCover}{博士学位论文开题报告}
    }
    {}
}
{
    % master
    \ifthenelse{\equal{\Type}{thesis}}
    {
        % thesis
        \newcommand{\TitleTypeName}{浙江大学硕士学位论文开题报告}
        \newcommand{\TitleTypeNameCover}{硕士学位论文开题报告}
    }
    {
        % design
        \newcommand{\TitleTypeName}{浙江大学硕士专业学位论文开题报告}
        \newcommand{\TitleTypeNameCover}{硕士专业学位论文开题报告}
    }
}


\input{config/path}
\input{config/commands}
\input{config/format/format}
