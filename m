Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7134DA2F835
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 20:09:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0268C10E5F6;
	Mon, 10 Feb 2025 19:09:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=metux.net header.i=info@metux.net header.b="IMg389F9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 778 seconds by postgrey-1.36 at gabe;
 Mon, 10 Feb 2025 19:09:55 UTC
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.75])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DD3410E5F6
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2025 19:09:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=metux.net;
 s=s1-ionos; t=1739214593; x=1739819393; i=info@metux.net;
 bh=EewwVxhctata01xgFfkDCaPLOpShdwVpxx01W2Qezj4=;
 h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:Cc:
 References:From:In-Reply-To:Content-Type:
 Content-Transfer-Encoding:cc:content-transfer-encoding:
 content-type:date:from:message-id:mime-version:reply-to:subject:
 to;
 b=IMg389F9nF5uUDKsgPPg40CTYDrGNT9WYSEQigyRjuJ4JTcpyvxDlovQB3G1PYaP
 tS98T1zYru2ZSWfXuXHLz+npCIf/scpcmXU7NthZPpHF/REjUeYmd5h99nlcyxdij
 TJI0Tfj5rtis1HKzP69rHOhe02tnBfpUFVSGBCZ2bOuyyLRtZ2+72hGl6KG+7ZXo+
 r44l+LnMCjSJ34PBx0Ka48MVDVSV0Sut2m/2xBIzHrhYQKrC/dHulfwDnip5hkSlJ
 NUGonbmX7++TvpQ5ZsvOPDwPwpHvX75QIHkq0axgQD4EFifwjT3IDsQZzYwEpwwM6
 nY26PPq9o3ALySc/SQ==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from [192.168.1.132] ([77.2.63.56]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MVMNF-1tr9aE2ROx-00U8oQ; Mon, 10 Feb 2025 19:56:53 +0100
Message-ID: <32e29c40-b775-4288-9d13-07a6fdd7857f@metux.net>
Date: Mon, 10 Feb 2025 19:58:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: xf86-video-intel is broken and with MRs disables we can't fix it
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Povilas Kanapickas <povilas@radix.lt>
Cc: "xorg-devel@lists.x.org" <xorg-devel@lists.x.org>,
 intel-gfx@lists.freedesktop.org
References: <1e5b5275-d194-4af0-8927-f5b93416a407@radix.lt>
 <Z6Z6My8FcaLaLPu0@intel.com>
Content-Language: tl
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
In-Reply-To: <Z6Z6My8FcaLaLPu0@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:7oaxo1SszmYNm9zbmaAG+fgJrmiGv1bzTXNQmBou8YJCABiJZdY
 X7U8shGe9X5HFGPYZJipZF/zeQYV4MUwWF0fcdFFvZGpOgbIYjIaKHNED1lLR6ofYM+u9Gy
 Rwt1kYM+FHR7hUHNAVK9wBND/lNaW19RVaGxbWypypvKa4HcNzDsUnCBCjsiyge+rsbMaOx
 /5d3gxuSPhYXxJlOrWbJA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:m/Azp+MR8Ls=;u20s1bAFo4h8q9GH08XC9NXueLl
 Q9FJZy3gejsjLAs1Xvj5Fhu8yTFQoWFtkix9hph0PJdukSHrTamXYk/o7/AYaU/zBfYsJXHNk
 DxzAwQAqqDS2Ex0SI2LiCFrcIik4MMQELAvGTl0nJVs2+Pf9GSeGGXccEoaxA1hzvBFBsGEdN
 6YnIB8GGD5jJGDaXdSCSdZjrl+x3EDYhRX0Euc/d0OKyKsAJ6HxOXLxtfJcUBwnFKkedXgKLv
 Bs/Z76yzqGMpK9e6uwAEjOMkR4unXoVtqRhjt0y1gle7hf0hZy6I+rl2T6BrlzTFm2Bkycw9E
 l4WtL+MX2l3iFWWy2Ryvq139WwroX9kxzH9+Jwqb3u8Qr89oxJcmTBitlMsjkonrkfQhZ/r3Y
 9dewo/IdUG80KcBgWkU8enrlVl/F1AYhWcOFXmi3fVaGGOmut+w+JCITDlvpEOZ9FnSvaS4Tl
 +JHRcZ3cA7PT2IbZipJKK1fUIwKUhJgCiIvRfikgQxts9DeFmKJ4br6tRj3AuPV0XFMWpqyUK
 nad16SpawFajeHAPH7GY9a7X6AfpaDc/8tH9WevZEfi2dH+SmJXfvZuIq/1gObBsSnZRbRP06
 rHnKobGGOHMt3sEZRfszbJDL1Udvjk2U8wnoIf4jD5/E1FWCB5gZa+Ydeg2hjViH0WGcSwQZ+
 6x6dGIN6RoBGwYqiExqvw2yZkBw5wvCE4oKA5iO/soWNfX2V5tFreczekeSeOirp0bgT7Wc0m
 SJONUqeD45FCQwmJkvdjEe0C5XXiLEwx9PtY8VvqsfF2qe4jH7aKUfxGIk4DIhWK/GaNq1F3L
 Qw68oXkl6T72soHpDipcQmjst12MWyoaM32x5nbohdCg3+Up8JLGDZS8kfkq5OSETMCxCxRBn
 oH6/fSoOpqq2z3kWdE+FFJEBrd2OH/G/Glmb29N7KJ0Lp/0lGDZnGB+pzj48RFYrsNF1H3Bo8
 ITxD9eQ/tbYTraC4Y16Te67AVgCWoi0PIEr/R5h6cJLfIkf7GPxb5AXgsk8b/OT89e6pH07hn
 93pLrZdkufqqv9t4mbh72vAZDHUqin6/LbLWzTnjf7R69K8JOVZW69Gv4qOBHg8LMxpfZki+w
 ZEoWx3fkdqyKfI+10XHX3roHg9ym0o0hpZ6QXDZm0KeA7PoWOcypwFfd+ppGSNtGgLxX0NYXu
 mkr4ys/SSgnn5tpMcYr2ovm1uuM5yajjmjRt9SzAuhe2e2R5QieXNprZYkcpyOHVVh8JyNmNJ
 BwIysRiGB+TxBhy0pRp90xffxUoKI/95gAR3tEfwH6QK1plGDifrsQf7/8UcfKsR/lYxKtiyo
 Z1wTQEDHlPdDGeNpqxwb70jp9iMxMWDKqzvSqmCkOAobnUv1OnmtKU7bzvJVNiHaj41tyE7I5
 gNKPC1OBtg1ZPo8A==
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

On 07.02.25 22:25, Ville Syrj=C3=A4l=C3=A4 wrote:

Hi,

>> xf86-video-intel driver is currently cannot be compiled with released
>> versions of X server. Simple reproduction steps: create Debian Bookworm
>> container, download module sources and all required dependencies and tr=
y
>> to build.
>
> Builds fine on my Gentoo boxes here. What are the actual issues
> you are seeing?

eg.:
* meson build file is broken (missing Xv deps) - we'll have to add a
   special hack in our pipeline so this driver is built w/ autotools,
   even though meson.build is there
* build breaks on FreeBSD
* using lots of obsolete macros/functions (some need to be reintroduced
   just for this driver to compile)

There're also lots of warnings.

It's also very unfortunate that there haven't been any releases for
over a decade now ... downstreams have to pick random points from
master branch :(

> I've not seen any patches on the list. Care to point them out?

My last attempt must have been many month ago. I had put it aside
(and only using my own branches), since been busy w/ lots of other
things. No idea what went wrong - but let's not start pointing fingers,
instead focus on practical solution :)

IMHO, the most important things we need in short term (for upcoming
xserver release) is:

* merge the fixes from the incubate branch (incl. CI files)
* make an actual release of the driver (distros also desperately
   waiting for it)
* testing on actual HW

In the longer run, I'd highly welcome activating and using MRs,

I know you folks are mostly working on kernel side and so using patch
mails on daily basis (I'm a kernel maintainer, too :p), but for us
(Xorg) this fit well.

> I wouldn't want to deal with mrs for any high volume stuff, but
> since this only gets the occasional fix I guess it could work.

Certainly not high volume :)

OTOH, I can also send you just links to my branches.
Lets start with these:

* Fixes for new Xserver

https://gitlab.freedesktop.org/metux/xf86-video-intel/-/commits/submit/fix=
es-for-xserver

* Code cleanups (not essential - based on fixes-for-xserver)

https://gitlab.freedesktop.org/metux/xf86-video-intel/-/commits/submit/cod=
e-cleanup


thx
=2D-mtx

=2D--
Hinweis: unverschl=C3=BCsselte E-Mails k=C3=B6nnen leicht abgeh=C3=B6rt un=
d manipuliert
werden ! F=C3=BCr eine vertrauliche Kommunikation senden Sie bitte ihren
GPG/PGP-Schl=C3=BCssel zu.
=2D--
Enrico Weigelt, metux IT consult
Free software and Linux embedded engineering
info@metux.net -- +49-151-27565287

