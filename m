Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F11E7985D2
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 22:43:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D0B188E37;
	Wed, 21 Aug 2019 20:43:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa43.google.com (mail-vk1-xa43.google.com
 [IPv6:2607:f8b0:4864:20::a43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EABA988E37
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 20:43:13 +0000 (UTC)
Received: by mail-vk1-xa43.google.com with SMTP id z67so916312vkd.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 13:43:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=j6KJb98rkNg47hXBfl+uEqh0HQOMvGk0/hlnYawoIhI=;
 b=Hwf8Dv/DwFtHq+fl5sH9z5b3/YCg/zNXLDHTotwi8f4sbHjQzQ8FLYAoqR5j15OHtn
 i2UGle6kGf/CLQClfLXWPDQ/BL8IBTp/ZAMcb0zwK9muvyyl8dd+CFTaM8k1dMixVI+T
 3BxfmiUz/ArTqVBevRTni4peA6ffEiJY+AGGceup125+yglSkSD5jE4G4daEkRG33tZX
 lB/sO2qnF09NDB4Z4/ymiQFe0agWnWn/HaI4wmBsvrYGIc3hYBxyPNvh5MZVOMYwuI+f
 diDZqtuqbGccCWTaTQAMZ0/IlJgeUB7p8QqHNWGTwiXmh3N/3nHiqqiiC7mqFNALZMqq
 JbUw==
X-Gm-Message-State: APjAAAU74c5zXyo9KPVJ/XGpCvmXArILXkxnYaG5C2Fz09eJW/0Bigdc
 NtCDBAVVyMwIBae6POEBtmvyHbHfwAxlIWS4i8JdGQ==
X-Google-Smtp-Source: APXvYqzLFrSWQIG94/LhpgNYpr/sXRAxJi0IVRb5triiv+AwBfm66OMfAAXcNjUsYEdmtV13nRYCoyejhgeF19tvCf4=
X-Received: by 2002:a1f:f48f:: with SMTP id s137mr13712991vkh.10.1566420192871; 
 Wed, 21 Aug 2019 13:43:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190821155728.2839-1-chris@chris-wilson.co.uk>
 <20190821155728.2839-3-chris@chris-wilson.co.uk>
In-Reply-To: <20190821155728.2839-3-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 21 Aug 2019 21:42:46 +0100
Message-ID: <CAM0jSHN8G3EDrb7dH3sLVjn_OByA3YnJtZbB2-fEm_nYqmYZYA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=j6KJb98rkNg47hXBfl+uEqh0HQOMvGk0/hlnYawoIhI=;
 b=bF/827qfTbaTkWJhL6P29v6akPCdO4wpYkP9bVHuI+m3b43Em/znWZSnGgnGioeYDI
 YBjSOcpINorMDVpfrXNeu4nIpzguDUpfYXLKxAso5PPZp4sQVRpgMfs5r/fK+uZDpkIu
 WWqLq9bV4GSR9jPf10m8lvi+CpaFU7PWHCzbq5nSC1SRN5t3EvEWOoY/ynlYlMx4zyQx
 xq/YumdJXHl3OrGPW/G20zTlDFEX58lzGAgV++RTQX/+Ppk/YjjS80UytUX5Wh2K2Lwq
 qzg8at3FIlsNVV/kBjgZkmybNu7UU2rJx2PnoMmw8zjVSDoXJdX0cSw63gurpADSVjSv
 N7Cw==
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915: Track ggtt fence reservations
 under its own mutex
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

T24gV2VkLCAyMSBBdWcgMjAxOSBhdCAxNjo1OCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gV2UgY2FuIHJlZHVjZSB0aGUgbG9ja2luZyBmb3IgZmVu
Y2UgcmVnaXN0ZXJzIGZyb20gdGhlIGRldi0+c3RydWN0X211dGV4Cj4gdG8gYSBsb2NhbCBtdXRl
eC4gV2UgY291bGQgaW50cm9kdWNlIGEgbXV0ZXggZm9yIHRoZSBzb2xlIHB1cnBvc2Ugb2YKPiB0
cmFja2luZyB0aGUgZmVuY2UgYWNxdWlzaXRpb24sIGV4Y2VwdCB0aGVyZSBpcyBhIGxpdHRsZSBi
aXQgb2Ygb3ZlcmxhcAo+IHdpdGggdGhlIGZhdWx0IHRyYWNraW5nLCBzbyB1c2UgdGhlIGk5MTVf
Z2d0dC5tdXRleCBhcyBpdCBjb3ZlcnMgYm90aC4KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBNaWthIEt1b3BwYWxhIDxtaWth
Lmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0
dGhldy5hdWxkQGludGVsLmNvbT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
