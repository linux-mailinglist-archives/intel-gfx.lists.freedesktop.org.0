Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 839C010FED6
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 14:29:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCBDE898A4;
	Tue,  3 Dec 2019 13:29:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com
 [IPv6:2607:f8b0:4864:20::942])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EBFB898A4
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2019 13:29:55 +0000 (UTC)
Received: by mail-ua1-x942.google.com with SMTP id l38so1326648uad.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Dec 2019 05:29:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=flemaJGsKpUmJe0nk67rIgLdPEF/8YU7tudW9PFtcxs=;
 b=W0e76364ff05ASNC/j7sT3bPzK4eS/2D84SM3JduRqnAM4fdxNIfL2ORdLqnBRof0w
 1dOcUQjjXNX8rCiDiaQm4uvQgVzCuw+AAdcNDB9Uu/zeSRt9xH7cYpQZA7vtDbLc1AJs
 4x342LtJX8zL2dmuM654VXorShrXzIrCmhRXF8KfOJjyaj2biMiqC7DVrftKZHZWEgyZ
 NoZD+xu7jrlZOR4kn9+SyJDUZXPhXQkZ1lQQPp3FdfFy9br5R3Im+EGR+yC5a9pywhVs
 cLg2RR+mP2suT2lwhmy1I726pHDf1iKstolzG91lgyH4aCP+Ucghde0dHVq3FRR3oZWF
 32rA==
X-Gm-Message-State: APjAAAV6dE53gSr2spHPtFEQrpyTTmjffZIX1VksvJHB1PgPu9nFsYwa
 pzqxMQbBbVu/TQxpJoCecLRBL3QWmAWV9Q5Rq7U=
X-Google-Smtp-Source: APXvYqwhZjwIuwFb+6kju7W8zgrZajqBYnejq97ZjrgUuVaTK0Vwh6gG1up94Zwe3eTGe0pIm5BDQVpxnWsVe5M3Tn0=
X-Received: by 2002:ab0:2814:: with SMTP id w20mr3374970uap.95.1575379794482; 
 Tue, 03 Dec 2019 05:29:54 -0800 (PST)
MIME-Version: 1.0
References: <20191203101347.2836057-1-chris@chris-wilson.co.uk>
 <20191203101347.2836057-2-chris@chris-wilson.co.uk>
In-Reply-To: <20191203101347.2836057-2-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 3 Dec 2019 13:29:28 +0000
Message-ID: <CAM0jSHOj=K3hATpo60_8Cw6nB+Cmtu+CLEEuQDjwWmTC=V2e1Q@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=flemaJGsKpUmJe0nk67rIgLdPEF/8YU7tudW9PFtcxs=;
 b=SY1Ati477BXUi6H1aIt7pAnFdJsj9SnL4yAgnZC3Xo2oqvllOYCRxKT1FshsJtqYPs
 w8jKNoH/xjDWIE5jDeHj3IAk1ITcYp7gqmA4yYkyPsFjLl8cCNWcyqhiUY9ZBMF9URMM
 ZmBI01WdCgPnk5yYpiry37Mau692whmaCK243hlWNzgQm4frqH+5InmPWSQe1ncxyUd+
 LSJC4cLhTXpSLjfuejAYX5SQ8VKAWIm2L53ko90syIV3GrqDqvzVPEvUYl/puKufiWzA
 j1FOKLK4ACtDWoGgIWTcI2j3uAk1XtnjujqRiP4cxYKg0ObBmC1FyAyDfZx4obMhv6z1
 8bkw==
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gem: Avoid parking the vma as
 we unbind
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAzIERlYyAyMDE5IGF0IDEwOjEzLCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4gd3JvdGU6Cj4KPiBJbiBvcmRlciB0byBhdm9pZCBrZWVwaW5nIGEgcmVmZXJl
bmNlIG9uIHRoZSBpOTE1X3ZtYSAod2hpY2ggaXMgbG9uZwo+IG92ZXJkdWUhKSB3ZSBoYXZlIHRv
IGNvb3JkaW5hdGUgYWxsIHRoZSBwb3NzaWJsZSBsaWZldGltZXMgYW5kIG9ubHkgdXNlCj4gdGhl
IHZtYSB3aGlsZSB3ZSBrbm93IGl0IGlzIGFsaXZlLiBJbiB0aGlzIGVwaXNvZGUsIHdlIGFyZSBy
ZW1pbmRlZCB0aGF0Cj4gd2hpbGUgaWRsZSwgdGhlIGNsb3NlZCB2bWEgYXJlIGRlc3Ryb3llZC4g
U28gaWYgdGhlIEdUIGlkbGVzIHdoaWxlIHdlIGFyZQo+IHdvcmtpbmcgd2l0aCB0aGUgdm1hLCB0
aGUgdm1hIGl0c2VsZiBiZWNvbWVzIGludmFsaWQuCj4KPiBGaXJzdCBjbGFzcyBpOTE1X3ZtYSBo
ZXJlIHdlIGNvbWUsIGJ1dCBpbiB0aGUgbWVhbnRpbWUga2VlcCBwaWxpbmcgb24KPiB0aGUgc3Ry
YXcuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
