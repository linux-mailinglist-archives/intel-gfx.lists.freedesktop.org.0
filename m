Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4899E268C70
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Sep 2020 15:44:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41C386E0BE;
	Mon, 14 Sep 2020 13:44:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3AA66E965
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Sep 2020 13:53:19 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id lo4so8814020ejb.8
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Sep 2020 06:53:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BSXDVvwPAtAiCD/rJl3ImVq2ZOABoxvahJzz/MlXDvo=;
 b=HxPYlwIzUBAlBpijKOuemO4Hv4WQp5krYB/DfKzFEytFGsS72dtrmLSeZ11Ilc+lI9
 kQfI4eixv3H+7NUgLCMASVjeSSG7KjDnpmZ1WxsJfNee3k1GkXJK8s18wkRwPpGmZk1m
 DBa6e442H0VsNyJ9dqkWswsHbDXZU6y/zr9tqNk2/CpgzWJm0+zYNc+J9zNXyAJLxqj8
 mh//ofji79Ezm5TWAsozeJeKfJHr9qWIC/MGqtXvgmxxUbz4rIRpu6Hee/i1RA6c4gf/
 lYSk/aAn+sw2ZAUjiIntj3gx0xnWlJwioD8rWVDaWKqNX0Mcezhf+gKGYwV6qwVR50IR
 e0/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BSXDVvwPAtAiCD/rJl3ImVq2ZOABoxvahJzz/MlXDvo=;
 b=kEwBHekxrbh3kqqU0lrr/1eNMF3hcZVxSFEl9bD0UaC5c+1o8Epg94Z5S97viwv62B
 QL0QjE4ns5DSwHJiz4Sp0AGbS5iI+mT3NNBAy0SRo8ZydomzMPLGucwaIdbIZgVBHkzU
 rpDG2j2KViU5oisWnLxF5dT7fXh2VkncJjbIJCxwurcE3nw5oE72rn95H/Lgecf3+95g
 OyYwNRBsQxbFmazAkMigqy/LEq9cz2NSTMbJuiQ2jr6xaYTmi3avU0uB/n2A9ts1Qecu
 Lfc+Zxfv5wzfBoh40FEywTxatwYfRNFffcnR0T0jbamRcqj1eR0x2MTFUetIFC8rdeIc
 Seug==
X-Gm-Message-State: AOAM533J/9soRSJFo2Cla/WwBvykJ1XspGZxHB4DO2HfZW2G4uh5XC2K
 7mfT/8s6HMLZZ7wx58NQnZcKLW0U4d6Z2W6R978=
X-Google-Smtp-Source: ABdhPJzBlqIOlU68OEGMEXSLWskwZnQ7e0hOs5VsylXpthbmnTRckA/8velSweZ5uEpLap9UHwCbfr9rbKWrSh3QkGE=
X-Received: by 2002:a17:906:4755:: with SMTP id
 j21mr9172114ejs.228.1599745998468; 
 Thu, 10 Sep 2020 06:53:18 -0700 (PDT)
MIME-Version: 1.0
References: <CALdu-zH+yh2X7OSVQ7aTW2Dj=rEMD2MRYighJ-YGdEp9W4AXYA@mail.gmail.com>
 <875z8l21nd.fsf@intel.com>
In-Reply-To: <875z8l21nd.fsf@intel.com>
From: Peter Ganzhorn <peter.ganzhorn@gmail.com>
Date: Thu, 10 Sep 2020 15:53:07 +0200
Message-ID: <CA+3fRbFodUvd2ESMFNRYeU=WgvFhMbSQc_P52Fn6NTCVrJ7vTA@mail.gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
X-Mailman-Approved-At: Mon, 14 Sep 2020 13:44:28 +0000
Subject: Re: [Intel-gfx] i915: boot/load regression since Linux v5.7-rc1 on
 Iris Pro (Crystal Well)
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: Niklas Schnelle <niklas.schnelle@gmail.com>,
 intel-gfx@lists.freedesktop.org, Peter Vollmer <vollmerpeter@gmail.com>
Content-Type: multipart/mixed; boundary="===============0698877839=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0698877839==
Content-Type: multipart/alternative; boundary="000000000000f8391305aef5e3c6"

--000000000000f8391305aef5e3c6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jani,

there is also already a bug report at
https://gitlab.freedesktop.org/drm/intel/-/issues/2381 but it also seems to
get not much attention.
Ville Syrj=C3=A4l=C3=A4 from Intel provided a workaround and mentioned the =
issue was
encountered before, but has never been fixed.
It would be great if someone from Intel would be investigating this bug
that renders the affected machines virtually unusable and I guess all
affected users who chimed in are willing to provide any information needed
to find the root cause of this issue.
Looking forward to hearing from you or your team!

Best regards,
Peter Ganzhorn

On Thu, Sep 10, 2020, 15:37 Jani Nikula <jani.nikula@linux.intel.com> wrote=
:

> On Wed, 02 Sep 2020, Peter Vollmer <vollmerpeter@gmail.com> wrote:
> > Hi,
> >
> > since kernel v5.7-rc1 my graphical output hangs on boot or if the i915
> > module is blacklisted on modprobe.
> > I've already found and extended a bugzilla
> > https://bugzilla.kernel.org/show_bug.cgi?id=3D208737
> >
> > But sadly there has been little reaction so I would appreciate any
> > help in further debugging or better yet resolving this issue.
>
> Sorry, nobody in the team looks at kernel.org bugzilla except once in a
> blue moon to close bugs and tell people to report bugs at fdo gitlab
> [1].
>
> BR,
> Jani.
>
>
> [1] https://gitlab.freedesktop.org/drm/intel/-/wikis/How-to-file-i915-bug=
s
>
>
> --
> Jani Nikula, Intel Open Source Graphics Center
>

--000000000000f8391305aef5e3c6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Jani,<div dir=3D"auto"><br></div><div dir=3D"auto">the=
re is also already a bug report at=C2=A0<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/-/issues/2381">https://gitlab.freedesktop.org/drm/intel/-/=
issues/2381</a> but it also seems to get not much attention.</div><div dir=
=3D"auto">Ville Syrj=C3=A4l=C3=A4 from Intel provided a workaround and ment=
ioned the issue was encountered before, but has never been fixed.</div><div=
 dir=3D"auto">It would be great if someone from Intel would be investigatin=
g this bug that renders the affected machines virtually unusable and I gues=
s all affected users who chimed in are willing to provide any information n=
eeded to find the root cause of=C2=A0this issue.</div><div dir=3D"auto">Loo=
king forward to hearing from you or your=C2=A0team!<br><div data-smartmail=
=3D"gmail_signature" dir=3D"auto"><br></div><div data-smartmail=3D"gmail_si=
gnature" dir=3D"auto">Best regards,<br>Peter Ganzhorn</div></div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Se=
p 10, 2020, 15:37 Jani Nikula &lt;<a href=3D"mailto:jani.nikula@linux.intel=
.com">jani.nikula@linux.intel.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">On Wed, 02 Sep 2020, Peter Vollmer &lt;<a href=3D"mailto:voll=
merpeter@gmail.com" target=3D"_blank" rel=3D"noreferrer">vollmerpeter@gmail=
.com</a>&gt; wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; since kernel v5.7-rc1 my graphical output hangs on boot or if the i915=
<br>
&gt; module is blacklisted on modprobe.<br>
&gt; I&#39;ve already found and extended a bugzilla<br>
&gt; <a href=3D"https://bugzilla.kernel.org/show_bug.cgi?id=3D208737" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://bugzilla.kernel.org/sh=
ow_bug.cgi?id=3D208737</a><br>
&gt;<br>
&gt; But sadly there has been little reaction so I would appreciate any<br>
&gt; help in further debugging or better yet resolving this issue.<br>
<br>
Sorry, nobody in the team looks at <a href=3D"http://kernel.org" rel=3D"nor=
eferrer noreferrer" target=3D"_blank">kernel.org</a> bugzilla except once i=
n a<br>
blue moon to close bugs and tell people to report bugs at fdo gitlab<br>
[1].<br>
<br>
BR,<br>
Jani.<br>
<br>
<br>
[1] <a href=3D"https://gitlab.freedesktop.org/drm/intel/-/wikis/How-to-file=
-i915-bugs" rel=3D"noreferrer noreferrer" target=3D"_blank">https://gitlab.=
freedesktop.org/drm/intel/-/wikis/How-to-file-i915-bugs</a><br>
<br>
<br>
-- <br>
Jani Nikula, Intel Open Source Graphics Center<br>
</blockquote></div>

--000000000000f8391305aef5e3c6--

--===============0698877839==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0698877839==--
