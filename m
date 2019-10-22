Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0AE9E066F
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 16:30:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 427466E827;
	Tue, 22 Oct 2019 14:30:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com
 [IPv6:2607:f8b0:4864:20::e43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EC7D6E827
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 14:30:41 +0000 (UTC)
Received: by mail-vs1-xe43.google.com with SMTP id p13so11472721vso.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 07:30:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kz1lK8i4B3ZU7cqob/U2YcGKX+Dmkyx9GhZlFCCADfI=;
 b=O5IFubKzzrOOMllhTAUF5xaTYXTQAaUTGO1rjme7q7qaiRPD/rBgk4luAJa9NxKY5A
 4vf2Cfqb96UT4llVyCmumQpMW8gT5S+K99C3k2jCKSNpvqALAZZqjleZsdjwhsXxl7Mg
 mUNnRoASn11XAswk6cZcCSPstY/ikSPo4sJ9276Id9+xxoa91v1XixtyUzi6qyOOa/FP
 8cGRN7Hgcz5yf6wz2oKOhH/+Kkbi8kYyeUbv+fr2jTmkeC3CsaXRLA+j6D2XJ3+TN2Th
 R5eljOqM+AHuOX1zlbDyd3c/BYbnb3XsdYWs/aAStTBcp+IvvpI1pnkbayxapbVaFVV6
 XJZw==
X-Gm-Message-State: APjAAAXN9c+9YwglGf2u1+bcQCksf6h3qkLecW53W62Ygyj1EM6+cUkk
 /+kYzSaYFvHlIk7VAmOMvCCOxDtwjadYDN/tPmaPWw==
X-Google-Smtp-Source: APXvYqxBUKzT3j5uoADoResvIcciZd04PnNJimGkL+n+8KiK4cSrhh2TeDc3Wm2c+wxXjo6i0tV4gnhqRgb71VAEuH0=
X-Received: by 2002:a67:f401:: with SMTP id p1mr2098306vsn.178.1571754640071; 
 Tue, 22 Oct 2019 07:30:40 -0700 (PDT)
MIME-Version: 1.0
References: <20191021080226.537-1-chris@chris-wilson.co.uk>
 <20191021080226.537-15-chris@chris-wilson.co.uk>
In-Reply-To: <20191021080226.537-15-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 22 Oct 2019 15:30:13 +0100
Message-ID: <CAM0jSHPom-2SKVrOZ4FCvu8D6upmjTF_dHudkS0gYsLt4fhKTQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=kz1lK8i4B3ZU7cqob/U2YcGKX+Dmkyx9GhZlFCCADfI=;
 b=FM0QCGHzwDkynEC2pNd++6MNbBq8m1NioUgZ6uWXTTG0be+kZQm4A7jM+OKa8/5Qf1
 6ZAyrE/u1WNizkvSCM+4QReVtJffADquBRjYD1xmUbqQWM4yVXIP+eykzNdT7x9lQ03n
 Nm6LvZgOd9iMhUvtQyQjGNplZkImEjyVH8SuwZBs5FAz30UQUD2/rzGCpQgU5wzFvfvF
 2Xc/1qi7UNr70+1f+IsLlGieYHDdW0Sf6uBFSTrZDRMi1IJg509IS8SoSf5sRcDxknfw
 zdn/eQ5+Q+3nHWuUqukLzUvlfMeDtxZojlCmLACiHZi3gsDYQOsg6Hhg//g7ipMYwwiL
 mz+g==
Subject: Re: [Intel-gfx] [PATCH 15/16] drm/i915/gem: Distinguish each object
 type
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
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMSBPY3QgMjAxOSBhdCAwOTowMywgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gU2VwYXJhdGUgZWFjaCBvYmplY3QgY2xhc3MgaW50byBh
IHNlcGFyYXRlIGxvY2sgdHlwZSB0byBhdm9pZCBsb2NrZGVwCj4gY3Jvc3MtY29udGFtaW5hdGlv
biBiZXR3ZWVuIHBhdGhzIChpLmUuIHVzZXJwdHIhKS4KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBNYXR0aGV3IEF1bGQgPG1h
dHRoZXcuYXVsZEBpbnRlbC5jb20+CgpBcyBwZXIgdGhlIGV4cGxhbmF0aW9uIHlvdSBnYXZlIG9u
IElSQywgbWFrZXMgc2Vuc2UuClJldmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVs
ZEBpbnRlbC5jb20+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
