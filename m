Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9209472EFE
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Dec 2021 15:22:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 720D710E76E;
	Mon, 13 Dec 2021 14:22:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com
 [IPv6:2607:f8b0:4864:20::b2c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD66E10E2D0
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Dec 2021 03:15:16 +0000 (UTC)
Received: by mail-yb1-xb2c.google.com with SMTP id v203so25567368ybe.6
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Dec 2021 19:15:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=l3bdCq7anI4Qe4LpjY7De0uPwaZQ3bCtaimkhxYLK0E=;
 b=nNetR2AzfTLhui2PQ+7hmgjZhFvIGzpwe7aiGSNMmmEgDgUb7g1pzOger4MGu3O31E
 WE9NByiRX9sy0O1Ih5sYMYYK/AB2lqY9aD443ErRzasd6m4qaetOtQIXgEk0h/viVlZL
 dCCs7ITh4XiSuZv/AwS/3l82LUBXAR7wsfzGGF/xwndgYnOdEjI+gcgsDzHZrU3zbqNQ
 QuFtCaclFhpQygETRqCMho7ogWYkq8pOVDAo4Xo8zRGzY2MPAt2rXlxCHLh8tqPBGfer
 xJQZvHNC/vJjdYvQuT0ENploKS9YstkExZvRzkEQ5/RmVo2uHcVroTFR3g1Pu8rXqoBi
 K/5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=l3bdCq7anI4Qe4LpjY7De0uPwaZQ3bCtaimkhxYLK0E=;
 b=jvMzxqSHcftkOMrVDBCD+Sc+e0rK5rcosLBaoHIGxxH8Q2sQ3i7apa5GFiy/oNQAk0
 xfx67NelTp4TsLqOQ9e6mOtJ3qBumMyzOEML9OmbZlZdFbyvOXEupkXXGqjXfIM5T0Ax
 EfC2lAB0ZZJ1N5GcXKO/r1PBhdVGzmxpZOtlHOCyBW2kOiTHvFriwGWrwwBjabrm1t1q
 2hhkFQLmZLvAXBMfOn+tLyxjw+UAKOTw00ZBcIzZpmU1ZSuRTWDzi0w7OkSUCkbariE+
 VjnX/4v6o79rONsu2GGrJgYue7qGpmQkrducyV8TFfnIXGGdWnVQrZU9qA5H72ETq5cE
 T0RQ==
X-Gm-Message-State: AOAM533cKFIBicd6zKT6OtRSFNwtseLyW4berOG9mtjpCJu9OE4SRt/W
 lCCOmdRqwyTLV5AwUxVN5PPecKuSVP7vL+USqB5eIGa8EBc4XEhV3ICQw07O
X-Google-Smtp-Source: ABdhPJx5ktlm7Otb2Aj95+k6jt4bEqTeWZcNH4f/pbAM7QAbu2y0VWQINhpwOvHGJnl8HkHbFeTqNLqOgWxldyl2ylw=
X-Received: by 2002:a25:8b04:: with SMTP id i4mr20660724ybl.663.1639192515836; 
 Fri, 10 Dec 2021 19:15:15 -0800 (PST)
MIME-Version: 1.0
References: <20211210061152.29087-1-linmq006@gmail.com>
 <163915440013.3443.3422971101904441012@emeril.freedesktop.org>
In-Reply-To: <163915440013.3443.3422971101904441012@emeril.freedesktop.org>
From: =?UTF-8?B?5p6X5aaZ5YCp?= <linmq006@gmail.com>
Date: Sat, 11 Dec 2021 11:15:04 +0800
Message-ID: <CAH-r-ZEv0zWZgb1rq6e1q722gy_0tK9hkNiwQfkidO2YJo3FYQ@mail.gmail.com>
To: intel-gfx@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="0000000000009ffd5405d2d63fc3"
X-Mailman-Approved-At: Mon, 13 Dec 2021 14:22:49 +0000
Subject: Re: [Intel-gfx] 
	=?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
	=?utf-8?q?/i915/selftests=3A_Fix_inconsistent_object_in_IS=5FERR_a?=
	=?utf-8?q?nd_PTR=5FERR?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--0000000000009ffd5405d2d63fc3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I have no idea why it failed without a detailed log, from my humble
opinion, this bug indeed exists and is easy to understand, I hope someone
could look into it.

Patchwork <patchwork@emeril.freedesktop.org> =E4=BA=8E2021=E5=B9=B412=E6=9C=
=8811=E6=97=A5=E5=91=A8=E5=85=AD 00:40=E5=86=99=E9=81=93=EF=BC=9A

> *Patch Details*
> *Series:* drm/i915/selftests: Fix inconsistent object in IS_ERR and
> PTR_ERR
> *URL:* https://patchwork.freedesktop.org/series/97868/
> *State:* failure
>
> Applying: drm/i915/selftests: Fix inconsistent object in IS_ERR and PTR_E=
RR
> Using index info to reconstruct a base tree...
> M drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
> Falling back to patching base and 3-way merge...
> No changes -- Patch already applied.
>

--0000000000009ffd5405d2d63fc3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have no idea why it failed without a detailed log,=C2=A0=
from my humble opinion, this bug indeed exists and is easy to understand, I=
 hope someone could look into it.</div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">Patchwork &lt;<a href=3D"mailto:patchwork@=
emeril.freedesktop.org">patchwork@emeril.freedesktop.org</a>&gt; =E4=BA=8E2=
021=E5=B9=B412=E6=9C=8811=E6=97=A5=E5=91=A8=E5=85=AD 00:40=E5=86=99=E9=81=
=93=EF=BC=9A<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<u></u>

=20
 =20
 =20
 =20

<div>


<b>Patch Details</b>
<table>
<tbody><tr><td><b>Series:</b></td><td>drm/i915/selftests: Fix inconsistent =
object in IS_ERR and PTR_ERR</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/97868/" target=3D"_blank">https://patchwork.freedesktop.org/series/978=
68/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

</tbody></table>


    <p>Applying: drm/i915/selftests: Fix inconsistent object in IS_ERR and =
PTR_ERR<br>
Using index info to reconstruct a base tree...<br>
M   drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c<br>
Falling back to patching base and 3-way merge...<br>
No changes -- Patch already applied.</p>

</div>

</blockquote></div>

--0000000000009ffd5405d2d63fc3--
