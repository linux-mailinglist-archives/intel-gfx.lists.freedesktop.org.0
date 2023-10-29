Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E29A17DAC42
	for <lists+intel-gfx@lfdr.de>; Sun, 29 Oct 2023 12:41:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC9E310E09F;
	Sun, 29 Oct 2023 11:41:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com
 [IPv6:2a00:1450:4864:20::231])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C5EB10E09F
 for <intel-gfx@lists.freedesktop.org>; Sun, 29 Oct 2023 11:41:12 +0000 (UTC)
Received: by mail-lj1-x231.google.com with SMTP id
 38308e7fff4ca-2c59a4dcdacso53102621fa.1
 for <intel-gfx@lists.freedesktop.org>; Sun, 29 Oct 2023 04:41:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1698579670; x=1699184470; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=KHCgBS2Uhss2xyvzw4yGcFyywrP35VzwQw1nBkJ3Y6E=;
 b=lVZPbPaSgCHItw/0DUt5iw2ODgnw7kTZkciDU10nbvZDej/7lMdhUm7zM5myaxQbUa
 jgaINDy38gw7zmTI20h7E7ZEL9Fe01GHXRj9HeHjQpbCQixU+RtDL+Wv5FVNdSxXJikZ
 aqI4QNrZB5KUN7rIzZzIVq9FhjnkamNJiXTrUhyYD+BSSA17o9sgG8KUCsSOTK8GOR6i
 2CVdBN6ZR13eqMk7R4b9gi0wNDJmvAKX/zivRKv+50ML167Xb8BtYokGNbJK9fJcLoBm
 QaXUnK6iwaj42+FIxqzppMNC1QZx9QNj+z8QHS6LkmqE88h8jyV37VE8bHQy0XMp5a4z
 Z2xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698579670; x=1699184470;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=KHCgBS2Uhss2xyvzw4yGcFyywrP35VzwQw1nBkJ3Y6E=;
 b=E3ILzcPic8Yiv50lyMd7d8qFD9W3gFqkR14JTxZ0he8JFIEjlonJ+IT7a5HrderOB3
 DcU3a55vAgD1CfGx8yQZv6nAoXzTwcwCtP/hKJRoL+rGOen1GJlOpzNlkD/B1sQouWWi
 KRGx5c+odNS3kQDTsIKaw2NIjhulaPmt+8D6a92LuSGVIr8ekHyaTcjoC0ECaAMiPwUy
 4iSCvsRNrZR7ysM6NKXA+QPNUaY0f3l8zKKRTWb4KZTev2QX0E5KKPb3GrpKVwdAtaVU
 8WBRL7yEPb92v1Wd08RSDW85h6Hvjqm1rF3/f/ms4AGcH6r2fUpmuq+Yow3dyhmQx8sK
 wXDg==
X-Gm-Message-State: AOJu0YzLmmm95OYVuaWTLDFFbNWtMM7tKQLOe7kUgxU/1zvoq2iH7Kf+
 3EaTe2sxCznNpHsMUlkvuyIuSLykxBSPlbfsxEGgz41jECylzw==
X-Google-Smtp-Source: AGHT+IEFELN8QuQRxyNOZ1MK9FHA8JLPTF2NGMYW7WukrkQFJOxXlgp+ZD254svM6XMBeE1H9G0CAU1lKEDmcc2ozqE=
X-Received: by 2002:a2e:988e:0:b0:2c5:38d:f80b with SMTP id
 b14-20020a2e988e000000b002c5038df80bmr5567667ljj.6.1698579669937; Sun, 29 Oct
 2023 04:41:09 -0700 (PDT)
MIME-Version: 1.0
References: <20231026105623.480172-1-gilbertadikankwu@gmail.com>
 <ZT4t-kRN18CAC9Sh@ashyti-mobl2.lan>
In-Reply-To: <ZT4t-kRN18CAC9Sh@ashyti-mobl2.lan>
From: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
Date: Sun, 29 Oct 2023 12:40:57 +0100
Message-ID: <CAKrXSsa2-pzO8oEh0huW_mEe36WbJHHd2uOkjrBxw3PWqjXcSA@mail.gmail.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Content-Type: multipart/alternative; boundary="000000000000d972350608d965e9"
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Remove unncessary {} from
 if-else
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--000000000000d972350608d965e9
Content-Type: text/plain; charset="UTF-8"

Hi,

On Sun, 29 Oct 2023, 11:03 Andi Shyti, <andi.shyti@linux.intel.com> wrote:

> Hi Gilbert,
>
> On Thu, Oct 26, 2023 at 11:56:23AM +0100, Gilbert Adikankwu wrote:
> > Fix checkpatch.pl error:
> >
> > WARNING: braces {} are not necessary for any arm of this statement
> >
> > Signed-off-by: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
>
> the errors from CI are obviously unrelated to this patch.
>
> Applied in drm-intel-gt-next.
>
> Andi
>

Thanks for the feedback.

Gilbert.

>

--000000000000d972350608d965e9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Hi,=C2=A0<br><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Sun, 29 Oct 2023, 11:03 Andi Shyti, &lt;<a=
 href=3D"mailto:andi.shyti@linux.intel.com">andi.shyti@linux.intel.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi Gilbert,<br>
<br>
On Thu, Oct 26, 2023 at 11:56:23AM +0100, Gilbert Adikankwu wrote:<br>
&gt; Fix <a href=3D"http://checkpatch.pl" rel=3D"noreferrer noreferrer" tar=
get=3D"_blank">checkpatch.pl</a> error:<br>
&gt; <br>
&gt; WARNING: braces {} are not necessary for any arm of this statement<br>
&gt; <br>
&gt; Signed-off-by: Gilbert Adikankwu &lt;<a href=3D"mailto:gilbertadikankw=
u@gmail.com" target=3D"_blank" rel=3D"noreferrer">gilbertadikankwu@gmail.co=
m</a>&gt;<br>
<br>
the errors from CI are obviously unrelated to this patch.<br>
<br>
Applied in drm-intel-gt-next.<br>
<br>
Andi<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"au=
to">Thanks for the feedback.</div><div dir=3D"auto"><br></div><div dir=3D"a=
uto">Gilbert.</div><div dir=3D"auto"><div class=3D"gmail_quote"><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex">
</blockquote></div></div></div>

--000000000000d972350608d965e9--
