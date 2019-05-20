Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C2922FA4
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 11:04:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8129288EB4;
	Mon, 20 May 2019 09:04:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-f65.google.com (mail-vs1-f65.google.com
 [209.85.217.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AB9688EB4;
 Mon, 20 May 2019 09:04:37 +0000 (UTC)
Received: by mail-vs1-f65.google.com with SMTP id l20so8461145vsp.3;
 Mon, 20 May 2019 02:04:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5PAbs8C7MfUj+AVLTb1TSwGH3gvMGuk7/i/KIBisyLk=;
 b=F/vgKLiyn7bQNqwOFe0Yh6p49eA2+BWn6je2JVj0BxcB2IUQb3GtcnKL+MyQgfwRIm
 1SweQ+GrPSPdHQi+cSwgKJdSnq6majl24q7Vy1zJR8eCvME8V/YyQaZOMMIYOX/MquPG
 vnvz7XdIKkebgqQT63eeueBD1KQPXYyk0s4cn2kNcI45213XdiirtMT9g9LJcWfcaJBb
 BGaUOLAdSRa1D4bxfmjiv+1kujFU9WbafL0L6vXCDYc8LnE6vHk3cwh85b0bUmVV6ZgE
 FvXGbIyiq/QIxjRN/7xAbsYjfaGoUkDOOuAyiB2N2JpoDjby1KZ2YXcIuvEN1/d8ZYGF
 lz2w==
X-Gm-Message-State: APjAAAWjwzqTLbv/8HSYCveiGpgj64myRC06FqVOAJOmLC3SsXfRttZH
 DI9QXlHNxC/kUqyYQzLP01e86Py235opuTo0qeFsunSm
X-Google-Smtp-Source: APXvYqwAa/pzv5JhQ33nlEbDmGsUYUBL2mLFKEWcG/eGbBs4BbpWZisM249gNJP8P2wpfwrzM7QCZz6idyRHk5VKUhs=
X-Received: by 2002:a67:f589:: with SMTP id i9mr2975411vso.152.1558343076612; 
 Mon, 20 May 2019 02:04:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190520082216.26273-1-daniel.vetter@ffwll.ch>
 <20190520082216.26273-12-daniel.vetter@ffwll.ch>
In-Reply-To: <20190520082216.26273-12-daniel.vetter@ffwll.ch>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 20 May 2019 11:04:25 +0200
Message-ID: <CAMuHMdV==Vd-W3BuLTykgcSyokSF=TKCP0yD1fD8aHG6styrJw@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 11/33] fbdev/sh_mobile: remove
 sh_mobile_lcdc_display_notify
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBNYXkgMjAsIDIwMTkgYXQgMTA6MjUgQU0gRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZl
dHRlckBmZndsbC5jaD4gd3JvdGU6Cj4gSXQncyBkZWFkIGNvZGUsIGFuZCByZW1vdmluZyBpdCBh
dm9pZHMgbWUgaGF2aW5nIHRvIHVuZGVyc3RhbmQKPiB3aGF0IGl0J3MgZG9pbmcgd2l0aCBsb2Nr
X2ZiX2luZm8uCj4KPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVy
QGZmd2xsLmNoPgoKUmV2aWV3ZWQtYnk6IEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2VlcnQrcmVuZXNh
c0BnbGlkZXIuYmU+CgpHcntvZXRqZSxlZXRpbmd9cywKCiAgICAgICAgICAgICAgICAgICAgICAg
IEdlZXJ0CgotLSAKR2VlcnQgVXl0dGVyaG9ldmVuIC0tIFRoZXJlJ3MgbG90cyBvZiBMaW51eCBi
ZXlvbmQgaWEzMiAtLSBnZWVydEBsaW51eC1tNjhrLm9yZwoKSW4gcGVyc29uYWwgY29udmVyc2F0
aW9ucyB3aXRoIHRlY2huaWNhbCBwZW9wbGUsIEkgY2FsbCBteXNlbGYgYSBoYWNrZXIuIEJ1dAp3
aGVuIEknbSB0YWxraW5nIHRvIGpvdXJuYWxpc3RzIEkganVzdCBzYXkgInByb2dyYW1tZXIiIG9y
IHNvbWV0aGluZyBsaWtlIHRoYXQuCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLS0g
TGludXMgVG9ydmFsZHMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
