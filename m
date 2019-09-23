Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E344BBBE48
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2019 00:07:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81A0289FA7;
	Mon, 23 Sep 2019 22:07:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EB3A89FA7
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 22:07:40 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id l11so15639520wrx.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 15:07:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=T74K0Dz6vRkUwH7ajuPNyogvo0S/OkX3XN/kPWLhyn0=;
 b=IpySWoLICZwxbnVo+n+aLyfbPvP52HflocT9Oz1w6zEWgdC2tjOZSMe7WSuntRkDkz
 tlKCXzRbR8U1IZC+Fx6aSllFV5yHCGKyD5yCaRI7mzVtGAlEF71JR9pgrstW4F9Yj5Mh
 35QZAKzpNREPN23fsHo9tIQVZ+GQDV/vWOS4PiUssmRq0wB0uzc8l9tIf0MmqI68c/Kx
 sazWqMek5yFnbfi2WedJjHuvRoZcaliEEA83qHS2YD96N8UIaJ8au6WuzDA3hODAkJbS
 Cc5nrxR42xkqL6VXZlRNCKfGtt384m0xco47seNjC7siNG6saT5mlUgWF0Dv0d32yrlC
 ObgA==
X-Gm-Message-State: APjAAAVvbjVhoQSGJNLKUq70TrcIbAYg6kqvxGikEyMIgehMTbkWq09A
 v90/yu4A+XO9A7ARzHeN+kTOFF7Yu2w8CPurZlE=
X-Google-Smtp-Source: APXvYqx5WlLANp+nwJikit4K1iufhjqKMuMDwLCndp8jYQn4um2NKjWzJlwrKCUtSMxH4fvR3oDgsJb7zE/lUFddoZs=
X-Received: by 2002:a5d:4350:: with SMTP id u16mr1087766wrr.289.1569276459009; 
 Mon, 23 Sep 2019 15:07:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190923195513.207536-1-jose.souza@intel.com>
 <20190923195513.207536-9-jose.souza@intel.com>
In-Reply-To: <20190923195513.207536-9-jose.souza@intel.com>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Mon, 23 Sep 2019 15:07:26 -0700
Message-ID: <CAKi4VA+4HWgrkMoqxnEZ-ytBWr8_+X0frUVe9Rhs9-tFBWkePA@mail.gmail.com>
To: =?UTF-8?Q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=T74K0Dz6vRkUwH7ajuPNyogvo0S/OkX3XN/kPWLhyn0=;
 b=g/SdRPeYmpSuLZiK/6/QL5qAGDdsl1swnLav1TiPImVzdVviWjnDjPO+186S4iQpcW
 HXozyCHDFgULsQKLtqW4nx9WfCYptTuDaLpt6uXK4M74jbhCf39vrFsxncmUeRflbVIX
 MkomWYuN/NmsXJV9Ne2KsYiAXc+VXQD2cbAJWaElm2Zw6Cvndv8Q/yvgaIe2IC6docse
 +3D9PdZPhccXfrtPXAHT2pUxbLnpd7YaKH6ek/oT0rrmSQNNCveYLqM8Ur48HPBILN5x
 MZ98QJ55N3rNXs/lyfGGcbbJcWnL1joFsDJJXDFECQhrXxmvEdn4uQNDyWcq8Bi8IROE
 a+sw==
Subject: Re: [Intel-gfx] [PATCH v3 8/9] drm/i915/tgl: Return the mg/dkl pll
 as DDI clock for new TC ports
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBTZXAgMjMsIDIwMTkgYXQgMTI6NTUgUE0gSm9zw6kgUm9iZXJ0byBkZSBTb3V6YQo8
am9zZS5zb3V6YUBpbnRlbC5jb20+IHdyb3RlOgo+Cj4gVEdMIGFkZGVkIDIgbW9yZSBUQyBwb3J0
cyB0aGF0IGN1cnJlbnRseSBhcmUgbm90IGJlaW5nIGhhbmRsZWQgYnkKPiBpY2xfcGxsX3RvX2Rk
aV9jbGtfc2VsKCksIHNvIGFkZGluZyB0aG9zZS4KPgo+IENjOiBMdWNhcyBEZSBNYXJjaGkgPGx1
Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KPiBDYzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwu
Y29tPgo+IFJlcG9ydGVkLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+Cj4gU2ln
bmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+
CgpJIGRvbid0IHRoaW5rIHdlIHVzZSB0aGVtLCBidXQgZm9yIGNvbXBsZXRlbmVzcyBzZWVtIG9r
IChzbyB3ZSBkb24ndAprZWVwIHRoaW5raW5nIHdoeSB3ZSBkaWRuJ3QKYWRkIGl0IHRvIG1hdGNo
IHRoZSBzcGVjKS4uLiBtYXliZSBmdXR1cmUgc2t1J3MgbWFrZSB1c2Ugb2YgdGhlbSwgc28KYmV0
dGVyIG1hdGNoIHRoZSBzcGVjOgoKUmV2aWV3ZWQtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMu
ZGVtYXJjaGlAaW50ZWwuY29tPgoKTHVjYXMgRGUgTWFyY2hpCgo+IC0tLQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgMiArKwo+ICAxIGZpbGUgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRp
LmMKPiBpbmRleCA5Mzg2Mzk2NzU1MjkuLmU1MGY0OTJiMzEwMCAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwo+IEBAIC0xMDc2LDYgKzEwNzYsOCBAQCBzdGF0
aWMgdTMyIGljbF9wbGxfdG9fZGRpX2Nsa19zZWwoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29k
ZXIsCj4gICAgICAgICBjYXNlIERQTExfSURfSUNMX01HUExMMjoKPiAgICAgICAgIGNhc2UgRFBM
TF9JRF9JQ0xfTUdQTEwzOgo+ICAgICAgICAgY2FzZSBEUExMX0lEX0lDTF9NR1BMTDQ6Cj4gKyAg
ICAgICBjYXNlIERQTExfSURfVEdMX01HUExMNToKPiArICAgICAgIGNhc2UgRFBMTF9JRF9UR0xf
TUdQTEw2Ogo+ICAgICAgICAgICAgICAgICByZXR1cm4gRERJX0NMS19TRUxfTUc7Cj4gICAgICAg
ICB9Cj4gIH0KPiAtLQo+IDIuMjMuMAo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4CgoKCi0tIApMdWNhcyBEZSBNYXJjaGkKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
