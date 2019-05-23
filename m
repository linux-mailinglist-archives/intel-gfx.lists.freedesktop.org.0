Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A28278F6
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 11:14:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AA238984E;
	Thu, 23 May 2019 09:14:05 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com
 [IPv6:2607:f8b0:4864:20::42b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA4468984E
 for <Intel-gfx@lists.freedesktop.org>; Thu, 23 May 2019 09:14:03 +0000 (UTC)
Received: by mail-pf1-x42b.google.com with SMTP id s11so2888353pfm.12
 for <Intel-gfx@lists.freedesktop.org>; Thu, 23 May 2019 02:14:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8JvwA3Vp2yrHosB5UeXLs5yONyXf7nVi1CYORTEcV2s=;
 b=qIzcGjKlMyfA8zXZE/wwggsi1pZa34ONfl3+dovHmyLvgMbb2n0BRLORmI/W4w7tBw
 vo9WVqQRG/E5RglxexoOVBq+mPqR3x93G5s7yykeaEq9hB1Z4xX9VxThJxBqk5jC9Uw8
 tPvMCH04Zmu/zF5qTllsmIE+xW4P9G9bheCC1Bsg0Rn6vouW5CSoFJ8o6X5oy1HKUWoC
 mKFyeZesWUzNIinbTmCPCPEj7nHiwUzNKZnbMfsItUN8AxHOxC+ef6BAxlMBdcM+NZFy
 gGJlSmd3i2IzJw89ZhdvDJLfaNyrdbURRhwcyToTIgnMrUx6aYJfalt+on8ya1PbHoGz
 swUw==
X-Gm-Message-State: APjAAAWGhYog7aN8jHmPtc41GQJQHJ523LeZ1PSCC4MaiR3ahjRwRh6e
 yrpNHjTsRm5HEJssNkw676cdosPsEZ3hvYqGB2jy/ebLXEWBig==
X-Google-Smtp-Source: APXvYqzhUVhi9x0nypNe/3WVI2wfvo8Lu7ZT2LxoeLRwvdcEnq+W5fjkZELje8k216Lpn28iTw78l1TV6UTuN3rv/3k=
X-Received: by 2002:a65:550b:: with SMTP id f11mr95246299pgr.311.1558602842584; 
 Thu, 23 May 2019 02:14:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190522075450.qtkysqijqgkrgzw5@beczulka>
 <155851231212.23981.4860472054088585761@skylake-alporthouse-com>
In-Reply-To: <155851231212.23981.4860472054088585761@skylake-alporthouse-com>
From: Marcin Owsiany <marcin@owsiany.pl>
Date: Thu, 23 May 2019 11:13:51 +0200
Message-ID: <CAFsGsxKr8ns_9C=ZOt-=SwSRPYG2v1dTWk9TuvBvj-BydTXFTA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=owsiany-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=8JvwA3Vp2yrHosB5UeXLs5yONyXf7nVi1CYORTEcV2s=;
 b=d+3s05my5pbkdW+BUU1xrw8zSSPEARNrREW65GX0PvDcGbpXv2b2ywALr6ki0qiSSE
 rNE196AsRRV8+UEW5DmZck9+PArbJwlNbN0xwFshDNBvwxN+CbIYarzN9bIG9ENjxzQt
 cokSt0NQ8lAdXCbmwNkk6pDBrybV09X4Rdka79e/62563igj5fGuZg7zTD1KcqGabgcB
 qeyEyRJNbTqvGqlCWL8D7MwgPRjZX3EaVMLlX6w0Z3TJEt+vE5ORlyc0LUDMePSh1xh+
 o257Qkafe5ChwohUOQlwiy7MvVc4KfLKdv7/p5o5ZLKQjFjmFNr0OpAV0e8HUE6Xp2S7
 p9Vg==
Subject: Re: [Intel-gfx] Getting "rcs0: reset request timeout" on 4.19.16
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============1329960591=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1329960591==
Content-Type: multipart/alternative; boundary="000000000000c7501505898a80ce"

--000000000000c7501505898a80ce
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you for the quick response, Chris!

I still don't understand why an X server restart is not enough to make it
work again?
What does "intel_do_flush_locked failed: Input/output error" mean?
Is it just a fact of life these days that userspace can mess up the GPU to
a state where only a reboot helps?

=C5=9Br., 22 maj 2019 o 10:05 Chris Wilson <chris@chris-wilson.co.uk> napis=
a=C5=82(a):

> Quoting Marcin Owsiany (2019-05-22 08:54:50)
> > Hello,
> >
> > Every couple of weeks or so my laptop experiences some graphics-related
> > crash. Sometimes it's more frequent - happened twice yesterday.
> >
> > I'm wondering whether this could be a sign of a hardware failure? Or is
> this
> > some software lock-up?  Please do let me know whether I can do anything
> to help
> > debug this.
>
> It starts as a userspace hang that takes out the GPU. Update mesa to
> one of the 19.x stable releases.
>
> > As you can see from the log below, sometimes there is just a single
> > "Resetting rcs0 for hang on rcs0" from which it recovers, while at othe=
r
> > times it is followed by "reset request timeout", together with an X
> > server crash.
>
> File a regression report against debian, X should not crash and did not
> use to crash over a mere terminal GPU hang.
> -Chris
>

--000000000000c7501505898a80ce
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Thank you for the quick response, Chris!<=
div><br></div><div>I still don&#39;t understand why an X server restart is =
not enough to make it work again?</div><div>What does &quot;intel_do_flush_=
locked failed: Input/output error&quot; mean?</div><div>Is it just a fact o=
f life these days that userspace can mess up the GPU to a state where only =
a reboot helps?</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">=C5=9Br., 22 maj 2019 o 10:05=C2=A0Chris Wilson &lt;<a=
 href=3D"mailto:chris@chris-wilson.co.uk">chris@chris-wilson.co.uk</a>&gt; =
napisa=C5=82(a):<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>Quoting Marcin Owsiany (2019-05-22 08:54:50)<br>
&gt; Hello,<br>
&gt; <br>
&gt; Every couple of weeks or so my laptop experiences some graphics-relate=
d<br>
&gt; crash. Sometimes it&#39;s more frequent - happened twice yesterday.<br=
>
&gt; <br>
&gt; I&#39;m wondering whether this could be a sign of a hardware failure? =
Or is this<br>
&gt; some software lock-up?=C2=A0 Please do let me know whether I can do an=
ything to help<br>
&gt; debug this.<br>
<br>
It starts as a userspace hang that takes out the GPU. Update mesa to<br>
one of the 19.x stable releases.<br>
<br>
&gt; As you can see from the log below, sometimes there is just a single<br=
>
&gt; &quot;Resetting rcs0 for hang on rcs0&quot; from which it recovers, wh=
ile at other<br>
&gt; times it is followed by &quot;reset request timeout&quot;, together wi=
th an X<br>
&gt; server crash.<br>
<br>
File a regression report against debian, X should not crash and did not<br>
use to crash over a mere terminal GPU hang.<br>
-Chris<br>
</blockquote></div></div>

--000000000000c7501505898a80ce--

--===============1329960591==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1329960591==--
