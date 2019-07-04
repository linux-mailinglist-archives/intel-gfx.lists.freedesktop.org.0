Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2AE85FE1A
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 23:24:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3F466E2D0;
	Thu,  4 Jul 2019 21:24:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com
 [IPv6:2607:f8b0:4864:20::e41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E82A6E34E;
 Thu,  4 Jul 2019 21:24:31 +0000 (UTC)
Received: by mail-vs1-xe41.google.com with SMTP id h28so2618800vsl.12;
 Thu, 04 Jul 2019 14:24:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nmyrza+engw/lIBzJZKghpOu2tiFUgp3huvzpF6O64E=;
 b=IRI6u6V+H1lHc1r/IX5hZw0OHTYDKvzSKTF5UkKKDbkDj+aDhyQvDW/KCpFMiwYdts
 2ILA0/V3dGFoOxQQq0aDrT1nW+2we+N0bK0tnd2ZDPzMYvK+lHgQ52aRuC+FuuZly/1i
 uoCPaKoGWeWjCodiW8WTQBpbq0MpkBLJdOEXNycCZckT5Pk6tAlLSS6Hz04u5v70oJBI
 A8IPTjLb+jsRbrvCU0tyJTkMbb7UPJU+VC34J65ktEkCy3R/kiiMQvUjfaMGC8QYLM/5
 KaLvEfK3OW4LSIunSA4fd1QwlbO2X0OKBB60SymJEFASXtWGXaQrHwnP/i2DqjiM/5uq
 5J/w==
X-Gm-Message-State: APjAAAUbnN8F/2G0jNmJCvEJcnt7KAlvj/oRtNDihuMRw84iv4YsJEjX
 v3gfG7SSvkv257srjyxdjbAs+bjo5TqnMIGbuUs=
X-Google-Smtp-Source: APXvYqwIus7cURCnfhs1TdmemMuAThIYmZk65W7NOitjuo3dy4GRH9ChHuPUymcohXOxAWiFK932gxi2h6a/ORy9kBE=
X-Received: by 2002:a67:8042:: with SMTP id b63mr177006vsd.23.1562275470192;
 Thu, 04 Jul 2019 14:24:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190702185826.13674-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190702185826.13674-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 4 Jul 2019 22:24:04 +0100
Message-ID: <CAM0jSHMD+ed4SbGpH+o77s-wepo+MtdP=1=SHcw1tFNW01HGcw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=nmyrza+engw/lIBzJZKghpOu2tiFUgp3huvzpF6O64E=;
 b=WFr42uDMqcWOahIF8z63kfhTDJUtEHDP/Ur6MsDcaiW6oac7U8heqQD5Lo47lRb3lm
 5IUmwCYiSjA6t0c8ax0OVnwCqKEC0kmdnJ6oMTvMuT++Jjf2spWLvIb4rfmBOsPtbO77
 jMytuUeo1VQhaRYwpwjxspt1Ml4eNKR965aaz93tdG/s/Ily6iIKPMdwFwtjLT4Lwlk8
 yvTuLQHo/F7Bmt63USoCsFvRLq1WjzVx9O2DrO9fe6bgmYRUKM84oq9F4GNMe0ThI3cr
 nePfpt/uLZRLlOw5RBJ9yzAXPMCX5d+KUlqHi970IzO6TOOUnEGCYVwYqb7thqQx/NvW
 UjNQ==
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_create: Show
 number of pages cleared
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
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyIEp1bCAyMDE5IGF0IDE5OjU4LCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4gd3JvdGU6Cj4KPiBKdXN0IGEgbGl0dGxlIGJpdCBvZiBmZWVkYmFjayBhdCB0
aGUgZW5kIG9mIGFuIG90aGVyd2lzZSBxdWlldCAyMHMuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KUmV2aWV3ZWQtYnk6IE1hdHRoZXcg
QXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
