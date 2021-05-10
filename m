Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EB75377F9F
	for <lists+intel-gfx@lfdr.de>; Mon, 10 May 2021 11:41:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0695B6E44B;
	Mon, 10 May 2021 09:41:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com
 [IPv6:2607:f8b0:4864:20::1032])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 704186E40C
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 May 2021 08:08:09 +0000 (UTC)
Received: by mail-pj1-x1032.google.com with SMTP id
 z6-20020a17090a1706b0290155e8a752d8so9588058pjd.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 May 2021 01:08:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=glmtgRRpU/XT+ujN2f3FN1QucV1c1uNnkCmDAYvBkXM=;
 b=FNmlLurQ8dPS7mban12adHfODt1ZDqxWuwt93q1nE4wOiJenXFjthH0KnWTHoKiN8I
 852BNDGNGf9wdVx0A4imjcReZHbFvU237Yt/GPMm2og6MCuFhGF7BUxoed9ftFi1Lp0y
 mdl9rbL3dteexeANDLBst8jOwJgtF36x41OOTppw/OnDxyfRaJuknEKUbk4cKgeIUjhS
 a/yCYLR9qW3qsav0TieAt2Amd4N0nGvEB/lGqyBIROBA8/myYg+uwfscm5xUQhp5n9A4
 kjHDbUP1utHN9IZ/0d2tW+l01wVSC8v+s73R5AMeP5ozgqgxfRzx5/ZRkyEoq97TZzwl
 L0Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=glmtgRRpU/XT+ujN2f3FN1QucV1c1uNnkCmDAYvBkXM=;
 b=Q3CwSClR1qItHxqHBnz892knLBfzKeAQbGdXIBJnn9DobBXWj4CNTOTIDWHfJ3rMkF
 k6ODEmYhPwqu8Li97AIrVoEUZhL6fdnSQOT7Ts8bKksXEBTTn5b0j8YxD6f2cVjXnjiX
 ugHCe5ihtXeGiDaxel6dIHo1jfz1JaWtXKfdLEQWFEQa5x7lZqbIYOPIWAdoM7kAnpBy
 LaKBD17mHZAh3xsKIZpiGSqVo9IoqIXgVFcDH4fzxCegvOaeFW22s0o9ustfFPXjabDx
 5FFgN+Qi1LEh73iN8Zsf39QRWsIb9qXY2hrTnTv82+hgmh+r3M519f2xVebMeS03AG3j
 Ylzg==
X-Gm-Message-State: AOAM530TyYHYLnbJs87Cqak94xOD1D8LCaA1A/PcZyF9MAFVAwrU2Ukq
 2kzs5RVexgOrmQhxd8tRsuNOy4rw18ZToefqlWs=
X-Google-Smtp-Source: ABdhPJzRtb0V5wKeJ0uSIKL7xE0nTxEbt4G/1A1C35CqPUSDKera5dDz/kGnd+R/FOhNah0WN7CZZbdQ72tljXU95A4=
X-Received: by 2002:a17:90a:17e7:: with SMTP id
 q94mr25488177pja.117.1620634088965; 
 Mon, 10 May 2021 01:08:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210107182026.24848-1-ville.syrjala@linux.intel.com>
 <X/yY3Tvk8gq+Eg8W@intel.com>
In-Reply-To: <X/yY3Tvk8gq+Eg8W@intel.com>
From: Emanuele Panigati <ilpanich@gmail.com>
Date: Mon, 10 May 2021 10:07:33 +0200
Message-ID: <CABpPkAEVbSUwoBqXDaKpckbfkq4-z=MWNC27JYOLki3FhN0PyA@mail.gmail.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
X-Mailman-Approved-At: Mon, 10 May 2021 09:41:14 +0000
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Try to use fast+narrow link
 on eDP again and fall back to the old max strategy on failure
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
Cc: Matteo Iervasi <matteoiervasi@gmail.com>,
 Jani Nikula <jani.nikula@intel.com>, Albert Astals Cid <aacid@kde.org>,
 intel-gfx@lists.freedesktop.org, Kai-Heng Feng <kai.heng.feng@canonical.com>
Content-Type: multipart/mixed; boundary="===============1602716052=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1602716052==
Content-Type: multipart/alternative; boundary="0000000000002f0fa005c1f5470c"

--0000000000002f0fa005c1f5470c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,
  on my Dell XPS 15 9570 laptop I might have a regression with Arch Linux
(kernel 5.12.2-arch1-1: during boot the laptop monitor goes black while
external monitors still works...


Panich


Il giorno lun 11 gen 2021 alle ore 19:28 Ville Syrj=C3=A4l=C3=A4 <
ville.syrjala@linux.intel.com> ha scritto:

> On Thu, Jan 07, 2021 at 08:20:25PM +0200, Ville Syrjala wrote:
> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> >
> > Some new eDP panels don't like to operate at the max parameters, and
> > instead we need to go for an optimal confiugration. That unfortunately
> > doesn't work with older eDP panels which are generally only guaranteed
> > to work at the max parameters.
> >
> > To solve these two conflicting requirements let's start with the optima=
l
> > setup, and if that fails we start again with the max parameters. The
> > downside is probably an extra modeset when we switch strategies but
> > I don't see a good way to avoid that.
> >
> > For a bit of history we first tried to go for the fast+narrow in
> > commit 7769db588384 ("drm/i915/dp: optimize eDP 1.4+ link config
> > fast and narrow"). but that had to be reverted due to regression
> > on older panels in commit f11cb1c19ad0 ("drm/i915/dp: revert back
> > to max link rate and lane count on eDP"). So now we try to get
> > the best of both worlds by using both strategies.
>
> Pushed. Fingers crossed for no regressions...
>
> --
> Ville Syrj=C3=A4l=C3=A4
> Intel
>

--0000000000002f0fa005c1f5470c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi,</div><div dir=3D"ltr">=C2=A0 on my De=
ll XPS 15 9570 laptop I might have a regression with Arch Linux (kernel 5.1=
2.2-arch1-1: during boot the laptop monitor goes black while external monit=
ors still works...<br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_si=
gnature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><br><div><br><=
/div><div>Panich</div></div></div></div><br></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">Il giorno lun 11 gen 2021 alle =
ore 19:28 Ville Syrj=C3=A4l=C3=A4 &lt;<a href=3D"mailto:ville.syrjala@linux=
.intel.com">ville.syrjala@linux.intel.com</a>&gt; ha scritto:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex">On Thu, Jan 07, 2021 at 08:20=
:25PM +0200, Ville Syrjala wrote:<br>
&gt; From: Ville Syrj=C3=A4l=C3=A4 &lt;<a href=3D"mailto:ville.syrjala@linu=
x.intel.com" target=3D"_blank">ville.syrjala@linux.intel.com</a>&gt;<br>
&gt; <br>
&gt; Some new eDP panels don&#39;t like to operate at the max parameters, a=
nd<br>
&gt; instead we need to go for an optimal confiugration. That unfortunately=
<br>
&gt; doesn&#39;t work with older eDP panels which are generally only guaran=
teed<br>
&gt; to work at the max parameters.<br>
&gt; <br>
&gt; To solve these two conflicting requirements let&#39;s start with the o=
ptimal<br>
&gt; setup, and if that fails we start again with the max parameters. The<b=
r>
&gt; downside is probably an extra modeset when we switch strategies but<br=
>
&gt; I don&#39;t see a good way to avoid that.<br>
&gt; <br>
&gt; For a bit of history we first tried to go for the fast+narrow in<br>
&gt; commit 7769db588384 (&quot;drm/i915/dp: optimize eDP 1.4+ link config<=
br>
&gt; fast and narrow&quot;). but that had to be reverted due to regression<=
br>
&gt; on older panels in commit f11cb1c19ad0 (&quot;drm/i915/dp: revert back=
<br>
&gt; to max link rate and lane count on eDP&quot;). So now we try to get<br=
>
&gt; the best of both worlds by using both strategies.<br>
<br>
Pushed. Fingers crossed for no regressions...<br>
<br>
-- <br>
Ville Syrj=C3=A4l=C3=A4<br>
Intel<br>
</blockquote></div></div>

--0000000000002f0fa005c1f5470c--

--===============1602716052==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1602716052==--
