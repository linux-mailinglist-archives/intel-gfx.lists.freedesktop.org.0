Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE0DFCAF97
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2019 21:53:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DEE26EA75;
	Thu,  3 Oct 2019 19:53:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B82296EA75
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2019 19:53:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18714730-1500050 for multiple; Thu, 03 Oct 2019 20:53:43 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191003192444.10113-15-matthew.auld@intel.com>
References: <20191003192444.10113-1-matthew.auld@intel.com>
 <20191003192444.10113-15-matthew.auld@intel.com>
Message-ID: <157013242128.12925.17301740650352004336@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 03 Oct 2019 20:53:41 +0100
Subject: Re: [Intel-gfx] [PATCH v2 14/22] drm/i915: define
 HAS_MAPPABLE_APERTURE
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMTAtMDMgMjA6MjQ6MzYpCj4gRnJvbTogRGFuaWVs
ZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiAKPiBU
aGUgZm9sbG93aW5nIHBhdGNoZXMgaW4gdGhlIHNlcmllcyB3aWxsIHVzZSBpdCB0byBhdm9pZCBj
ZXJ0YWluCj4gb3BlcmF0aW9ucyB3aGVuIGFwZXJ0dXJlIGlzIG5vdCBhdmFpbGFibGUgaW4gSFcu
Cj4gCj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJh
b2xvc3B1cmlvQGludGVsLmNvbT4KPiBDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50
ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIHwgMiArKwo+
ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5oCj4gaW5kZXggMmM1Y2IyZmVkYTI3Li43ODI0YTMxZWU0NDggMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmgKPiBAQCAtMjExOSw2ICsyMTE5LDggQEAgSVNfU1VCUExBVEZPUk0oY29uc3Qg
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCj4gICNkZWZpbmUgT1ZFUkxBWV9ORUVEU19Q
SFlTSUNBTChkZXZfcHJpdikgXAo+ICAgICAgICAgICAgICAgICAoSU5URUxfSU5GTyhkZXZfcHJp
diktPmRpc3BsYXkub3ZlcmxheV9uZWVkc19waHlzaWNhbCkKPiAgCj4gKyNkZWZpbmUgSEFTX01B
UFBBQkxFX0FQRVJUVVJFKGRldl9wcml2KSAoZGV2X3ByaXYtPmdndHQubWFwcGFibGVfZW5kID4g
MCkKCkknbSBqdXN0IG5vdCBsaWtpbmcgdHlpbmcgdGhpcyB0byBpOTE1IGFuZCBub3QgZ2d0dC4g
OnwKQWxzbyAoZGV2X3ByaXYpCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
