Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D7BED17D4
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 20:54:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6E3E6EA41;
	Wed,  9 Oct 2019 18:54:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb31.google.com (mail-yb1-xb31.google.com
 [IPv6:2607:f8b0:4864:20::b31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 292E06EA3F
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2019 18:54:13 +0000 (UTC)
Received: by mail-yb1-xb31.google.com with SMTP id y204so1076417yby.10
 for <intel-gfx@lists.freedesktop.org>; Wed, 09 Oct 2019 11:54:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=234m6zC3AdUe4qXtaVmo03AVqPeRmgF4qJdWKKGU8KE=;
 b=amLDGxui+5C/sonICRzoU8TeOeQzrlMJ7GRuWe9Fcofesa25bItObsVqC+bVEWDOGw
 ooDksy4rVp0O7WNgQz361je0er0glvkWSD6U3DYpEdagGPiuBJYZ62KmIjnkSiOTcqwi
 54yd/2tT30+uxciS4eg904kxvpntHSuc/p7xY4cb0DcX0bcr6e30k1neCx0ldA79IPDW
 ePZ/BsP+LmttBOznHXH110mj7r1j8LdpBm/mlRtOW5DRR9H7oEN1VTz+/Deh0F7PH3WV
 V2DvFt8BRp/B7l5Uz0kK/p6puFDrJhs2teDnZRMXIvduQZA8zCAUrlZ39s0+4afYS+6x
 czhA==
X-Gm-Message-State: APjAAAW+8fd8EvvrC5SzjXFewatOrSStmbdOT05M/6QVEP51xK4Vaw1e
 t06am62gjpTbSR9AHeCVfcbgNvjx3FI=
X-Google-Smtp-Source: APXvYqy7kPaiuWxWF8VueR4u/zDPKxF46XP1IgpQhU9NLzcOVFZczBiEY+5i093RbMcnaiF3UvLVIA==
X-Received: by 2002:a25:d70f:: with SMTP id o15mr3383235ybg.43.1570647252088; 
 Wed, 09 Oct 2019 11:54:12 -0700 (PDT)
Received: from mail-yw1-f50.google.com (mail-yw1-f50.google.com.
 [209.85.161.50])
 by smtp.gmail.com with ESMTPSA id p128sm788260ywp.80.2019.10.09.11.54.11
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 09 Oct 2019 11:54:11 -0700 (PDT)
Received: by mail-yw1-f50.google.com with SMTP id l64so1082652ywe.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 09 Oct 2019 11:54:11 -0700 (PDT)
X-Received: by 2002:a81:7a55:: with SMTP id v82mr3924036ywc.36.1570647250669; 
 Wed, 09 Oct 2019 11:54:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190822065917.18988-1-chris@chris-wilson.co.uk>
 <156647232345.11829.12799168742587793498@jlahtine-desk.ger.corp.intel.com>
 <156647264559.20466.5531617090699173011@skylake-alporthouse-com>
In-Reply-To: <156647264559.20466.5531617090699173011@skylake-alporthouse-com>
From: Sean Paul <seanpaul@chromium.org>
Date: Wed, 9 Oct 2019 14:53:31 -0400
X-Gmail-Original-Message-ID: <CAOw6vbKE32aewT7agF9hjWzf_sLYXQsAF3pnLZJbUN4io+vVUA@mail.gmail.com>
Message-ID: <CAOw6vbKE32aewT7agF9hjWzf_sLYXQsAF3pnLZJbUN4io+vVUA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=234m6zC3AdUe4qXtaVmo03AVqPeRmgF4qJdWKKGU8KE=;
 b=SVbYSGkswvw2gH2gb7WcyZcKt4qERmNwT+Rdseo/PCj+M2xs4E5+IOu3m4gWhdfdme
 WvX8vq7d6sGKp6iBkm2EC91vKExtWJGvGDQF0NdqcBUt/3R76PLB9p8gFHanS4mHoZzp
 F8EoDZPIydA56laLDb18xeLjfC49O6aFEl4Io=
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Kill the undead
 i915_gem_batch_pool.c
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

T24gVGh1LCBBdWcgMjIsIDIwMTkgYXQgNzoxNyBBTSBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4gd3JvdGU6Cj4KPiBRdW90aW5nIEpvb25hcyBMYWh0aW5lbiAoMjAxOS0w
OC0yMiAxMjoxMjowMykKPiA+IFF1b3RpbmcgQ2hyaXMgV2lsc29uICgyMDE5LTA4LTIyIDA5OjU5
OjE3KQo+ID4gPiBZb3UgaGF2ZSB0byBjdXQgaXQgb2ZmIGF0IHRoZSBuZWNrLCBvdGhlcndpc2Ug
aXQganVzdCByZWFwcGVhcnMgaW4gdGhlCj4gPiA+IG5leHQgbWVyZ2UsIGxpa2UgY29tbWl0IDNm
ODY2MDI2ZjBjZSAoIk1lcmdlIGRybS9kcm0tbmV4dAo+ID4gPiBpbnRvIGRybS1pbnRlbC1uZXh0
LXF1ZXVlZCIpCj4gPiA+Cj4gPiA+IFJlZmVyZW5jZXM6IDNmODY2MDI2ZjBjZSAoIk1lcmdlIGRy
bS9kcm0tbmV4dCBpbnRvIGRybS1pbnRlbC1uZXh0LXF1ZXVlZCIpCj4gPiA+IFNpZ25lZC1vZmYt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gPiBDYzogUm9k
cmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+ID4KPiA+IEFja2VkLWJ5OiBKb29u
YXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Cj4KPiBBbmQgb25j
ZSBtb3JlIHRoZSBuYWlscyBoYXZlIGJlZW4gcHV0IGJhY2sgaW4gdGhlIGNvZmZpbi4KCk1vbnRo
cyBsYXRlciwgYSBoYW5kIHJlYWNoZXMgb3V0IGZyb20gdGhlIGdyYXZlIGFuZCBzYXlzOgoKRXJy
b3I6IENhbm5vdCBvcGVuIGZpbGUgLi4vZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fYmF0
Y2hfcG9vbC5jCkVycm9yOiBDYW5ub3Qgb3BlbiBmaWxlIC4uL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtX2JhdGNoX3Bvb2wuYwpFcnJvcjogQ2Fubm90IG9wZW4gZmlsZSAuLi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9iYXRjaF9wb29sLmMKCih3YXJuaW5ncyBmcm9tIGk5MTUu
cnN0IGh0bWxkb2NzIGJ1aWxkKQoKU2VhbgoKCgo+IC1DaHJpcwo+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+
IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
