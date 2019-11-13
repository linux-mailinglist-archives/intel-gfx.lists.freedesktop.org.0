Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FCB7FB92B
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2019 20:51:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4376B6EE43;
	Wed, 13 Nov 2019 19:51:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com
 [IPv6:2607:f8b0:4864:20::e43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6098E6EE42;
 Wed, 13 Nov 2019 19:51:09 +0000 (UTC)
Received: by mail-vs1-xe43.google.com with SMTP id y23so2208601vso.1;
 Wed, 13 Nov 2019 11:51:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=36nW73NcxyFb76kKJMIUR28OZBNkyZZv7lN0L4UJkas=;
 b=jDK2xepWn2B1xeBCPl54yx8cjT4koJutwP37rSt34ugFM2kQKXpHzC6wrH8tPUIj2i
 O2kAZwKKCiUw7JMAOvs0srVGgVC+XmQ1t8607p/UKQ2U4nRRuebSxcIz5bKqdUOao0kX
 TZyDw4aRNZbDcsI2Id0aIvTKuoEnCzsu++TQz6J7gZUZLshUtCd11iRDSKvUh7HBFypG
 RHHJUdOhrqqa71lu2U/hlpm/Rpj1z6IBWKzFHmEWkK3n/NxAyYOepexdLtWSVSS49dBu
 WfGEAUmViM4uk61/ZcMPY0bvd66BIJGTYlZYEjcCmcWojOs0MNUhmFTqJQfoiTHe1b4g
 WRDA==
X-Gm-Message-State: APjAAAXNkjoR7J1eYe4MDBKrWvILvnHd1Kh51HHeaCMd9KB9HM8JvOuL
 EkAYbcNrdaa+UHHydvCv3uY53jKz+OabwN7v7b4=
X-Google-Smtp-Source: APXvYqwJDFWv2qf2Ym8GoyZdgghYKyKcWUVAkYO6o8HtUFustajd37Ly5kUyTMUIaecMvHNV+rxoofFLgHCVK7QkZ0Y=
X-Received: by 2002:a05:6102:36d:: with SMTP id
 f13mr3353006vsa.34.1573674668266; 
 Wed, 13 Nov 2019 11:51:08 -0800 (PST)
MIME-Version: 1.0
References: <20191113135505.11426-1-chris@chris-wilson.co.uk>
 <20191113140447.11664-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191113140447.11664-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 13 Nov 2019 19:50:41 +0000
Message-ID: <CAM0jSHON+0bpsTFhL-DDvkC3Mj=YgcZ1KRc=qDe40VztJAi2Sw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=36nW73NcxyFb76kKJMIUR28OZBNkyZZv7lN0L4UJkas=;
 b=D976pe5tG171NYuC/53wLZ7BP/K0C3YgbaIhMmOibISNh3RIcGsO2CRWz85BQBIm0X
 Bq4zaspnPeg3uDHjuT7MLu48NMrWZ7EKQEZCU/gS9z6Bkt+SaDs6gNPn3X3L4gJYEctH
 b+f45OAEdYegmBLdfTHoAawHxy+cKmUguE3hF4RbNeeubGSXff2AdOV2+5Qf8HzGN4nK
 qoPIiRlP9vyWqD5G/alvDKFMZmjnbsVv+3ysR5SYRuW26QRupUGmKdJKYOIfLoehahC5
 YIAi7zVkGXmeT6p/MAFZaKr8JAb3KK1akGnrWfBob9LMsAq7jg1Zv2RzDjfPW4gLKYOU
 vqmg==
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_create: Check for
 cache bypass around zeroed pages
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
Cc: igt-dev@lists.freedesktop.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAxMyBOb3YgMjAxOSBhdCAxNDowNSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gQ2hlY2sgdGhhdCBldmVuIGlmIHVzZXJzcGFjZSB0cmll
cyB0byBzbmVhayBhcm91bmQgdGhlIENQVSBjYWNoZXMgb2YgaXRzCj4gemVyb2VkIHBhZ2VzLCBp
dCBzZWVzIG5vdGhpbmcgYnV0IHplcm9lcy4KPgo+IFN1Z2dlc3RlZC1ieTogSm9vbmFzIExhaHRp
bmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBKb29uYXMgTGFodGlu
ZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IE1hdHRoZXcgQXVsZCA8
bWF0dGhldy5hdWxkQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhl
dy5hdWxkQGludGVsLmNvbT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
