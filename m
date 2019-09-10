Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 673E3AF23A
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 22:18:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87C4F6E993;
	Tue, 10 Sep 2019 20:18:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa44.google.com (mail-vk1-xa44.google.com
 [IPv6:2607:f8b0:4864:20::a44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E02866E993
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 20:18:11 +0000 (UTC)
Received: by mail-vk1-xa44.google.com with SMTP id t136so3852053vkt.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 13:18:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=b3p0SQSpVJCqQqw3SR/+E6kZ1JumaGWZJcvlqPpwcaA=;
 b=E0ZRgdnU2NJUDMl2bZqJn7Nrbcv/Cp5ffhXQvdtzvCPV+SPVmSvmPiZuhaf7M7X7QW
 4QYVJhyEIwo4pCrvwSKIyVqc1xfSoFtryGZWyLhwwnWdmpu7/LIfXVxpxv40YjjrL8Ok
 HghHovQQQSdLltdvaf7Gka/BB8GvYoS6BDExF+VSPAW53DwhDrkoEwGHi904PuJFqDbq
 JzQI1+ReKCIULvRnjV53DuV8dvxRpBCgJKsyUs3KVohffiZjAT2C6tkgQKZDsNWG9iHf
 tIuMEQvLNSwBzTMWlOj1DaXw1DfzWWzaF/92mvG6GkYoyOxYbnadLV9U3eHD0/bPtuMZ
 D9pA==
X-Gm-Message-State: APjAAAUYECfxnb6F8k+iz0dWCYlcmdixHPW6U/LSGINrlTBK6X1XQLIC
 TakmOIp/zitE0wJfywO6159bYzDnF4UbzQki8uk=
X-Google-Smtp-Source: APXvYqzu0W/N+KYyq2Bz/+354Q4vMYmgccJ2X8xZfQefGYF4B15zPnu7RIYMkicWx46z8bbOcqIMpU4oejT6mIZQRNM=
X-Received: by 2002:a1f:1187:: with SMTP id 129mr7462236vkr.76.1568146690957; 
 Tue, 10 Sep 2019 13:18:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190902040303.14195-1-chris@chris-wilson.co.uk>
 <20190902040303.14195-11-chris@chris-wilson.co.uk>
In-Reply-To: <20190902040303.14195-11-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 10 Sep 2019 21:17:45 +0100
Message-ID: <CAM0jSHO3Oh02RQ_PMZibPs3H9m=KjcvA353Gtu-2M-hyv1-_gQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=b3p0SQSpVJCqQqw3SR/+E6kZ1JumaGWZJcvlqPpwcaA=;
 b=g2U+n5CZr1uiREeBrHXYDALgYTwN8QTXHRav/T+lzloUMrV4czDuYrH/Ka/JrA9G2c
 PGIy16kgbwZ0vAJmvF5R/QHodrT0i55KlXaDgKUioQ7iDHDwbcd3RpYc2j4qUOG1QCh8
 32g1OmAw4FVFlBUd5ZTIPa207yFlYBhaEpUtwPjUcR8A3xatdYqxVrCIdcPXkbeeVBNs
 q6rfNpNFnvbtcW+5dfFdjSo7M4VFDhdqKx2vJJy48McOaH7x2fGmvoSohztacrvYtiRX
 xGXVLbCJ9JIu287xF6kjF4rJP71WgfXWBYOP6AC7WnWeVPJzHxW+USEzWw+k9e0tqYhT
 oMUg==
Subject: Re: [Intel-gfx] [PATCH 11/21] drm/i915/gtt: Make sure the gen6
 ppgtt is bound before first use
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

T24gTW9uLCAyIFNlcCAyMDE5IGF0IDA1OjAzLCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4gd3JvdGU6Cj4KPiBBcyB3ZSByZW1vdmUgdGhlIHN0cnVjdF9tdXRleCBwcm90
ZWN0aW9uIGZyb20gYXJvdW5kIHRoZSB2bWEgcGlubmluZywKPiBjb3VudGVycyBuZWVkIHRvIGJl
IGF0b21pYyBhbmQgYXdhcmUgdGhhdCB0aGVyZSBtYXkgYmUgbXVsdGlwbGUgdGhyZWFkcwo+IHNp
bXVsdGFuZW91c2x5IGFjdGl2ZS4KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgpSZXZpZXdlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3
LmF1bGRAaW50ZWwuY29tPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
