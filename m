Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2797E1129D8
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2019 12:06:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B9BD6E8B3;
	Wed,  4 Dec 2019 11:06:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DF096E8B3
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Dec 2019 11:06:23 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Dec 2019 03:06:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,277,1571727600"; d="scan'208";a="385714964"
Received: from aquilante.fi.intel.com (HELO intel.intel) ([10.237.72.158])
 by orsmga005.jf.intel.com with ESMTP; 04 Dec 2019 03:06:21 -0800
Date: Wed, 4 Dec 2019 13:06:19 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191204110619.GA2018@intel.intel>
References: <20191204103014.1800-1-andi.shyti@intel.com>
 <157545662134.9581.16726619588312132709@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157545662134.9581.16726619588312132709@skylake-alporthouse-com>
User-Agent: Mutt/1.12.2 (2019-09-21)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/rps: Add frequency translation
 helpers
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgQ2hyaXMsCgo+ID4gQEAgLTE2MzMsMjEgKzE2MzMsMTEgQEAgc3RhdGljIGludCBpOTE1X3Jw
c19ib29zdF9pbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqZGF0YSkKPiA+ICB7Cj4gPiAg
ICAgICAgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IG5vZGVfdG9faTkxNSht
LT5wcml2YXRlKTsKPiA+ICAgICAgICAgc3RydWN0IGludGVsX3JwcyAqcnBzID0gJmRldl9wcml2
LT5ndC5ycHM7Cj4gPiAtICAgICAgIHUzMiBhY3RfZnJlcSA9IHJwcy0+Y3VyX2ZyZXE7Cj4gPiAr
ICAgICAgIHUzMiBhY3RfZnJlcTsKPiA+ICAgICAgICAgaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7
Cj4gPiAgCj4gPiAtICAgICAgIHdpdGhfaW50ZWxfcnVudGltZV9wbV9pZl9pbl91c2UoJmRldl9w
cml2LT5ydW50aW1lX3BtLCB3YWtlcmVmKSB7Cj4gPiAtICAgICAgICAgICAgICAgaWYgKElTX1ZB
TExFWVZJRVcoZGV2X3ByaXYpIHx8IElTX0NIRVJSWVZJRVcoZGV2X3ByaXYpKSB7Cj4gPiAtICAg
ICAgICAgICAgICAgICAgICAgICB2bHZfcHVuaXRfZ2V0KGRldl9wcml2KTsKPiA+IC0gICAgICAg
ICAgICAgICAgICAgICAgIGFjdF9mcmVxID0gdmx2X3B1bml0X3JlYWQoZGV2X3ByaXYsCj4gPiAt
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFBVTklUX1JF
R19HUFVfRlJFUV9TVFMpOwo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgdmx2X3B1bml0X3B1
dChkZXZfcHJpdik7Cj4gPiAtICAgICAgICAgICAgICAgICAgICAgICBhY3RfZnJlcSA9IChhY3Rf
ZnJlcSA+PiA4KSAmIDB4ZmY7Cj4gPiAtICAgICAgICAgICAgICAgfSBlbHNlIHsKPiA+IC0gICAg
ICAgICAgICAgICAgICAgICAgIGFjdF9mcmVxID0gaW50ZWxfZ2V0X2NhZ2YocnBzLAo+ID4gLSAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJOTE1X1JFQUQo
R0VONl9SUFNUQVQxKSk7Cj4gPiAtICAgICAgICAgICAgICAgfQo+ID4gLSAgICAgICB9Cj4gPiAr
ICAgICAgIHdpdGhfaW50ZWxfcnVudGltZV9wbV9pZl9pbl91c2UoJmRldl9wcml2LT5ydW50aW1l
X3BtLCB3YWtlcmVmKQo+ID4gKyAgICAgICAgICAgICAgIGFjdF9mcmVxID0gaW50ZWxfY2FnZl9m
cmVxX3JlYWQocnBzKTsKPiA+ICAKPiA+ICAgICAgICAgc2VxX3ByaW50ZihtLCAiUlBTIGVuYWJs
ZWQ/ICVkXG4iLCBycHMtPmVuYWJsZWQpOwo+ID4gICAgICAgICBzZXFfcHJpbnRmKG0sICJHUFUg
YnVzeT8gJXNcbiIsIHllc25vKGRldl9wcml2LT5ndC5hd2FrZSkpOwo+ID4gQEAgLTE2NTUsOCAr
MTY0NSw3IEBAIHN0YXRpYyBpbnQgaTkxNV9ycHNfYm9vc3RfaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUg
Km0sIHZvaWQgKmRhdGEpCj4gPiAgICAgICAgICAgICAgICAgICAgYXRvbWljX3JlYWQoJnJwcy0+
bnVtX3dhaXRlcnMpKTsKPiA+ICAgICAgICAgc2VxX3ByaW50ZihtLCAiSW50ZXJhY3RpdmU/ICVk
XG4iLCBSRUFEX09OQ0UocnBzLT5wb3dlci5pbnRlcmFjdGl2ZSkpOwo+ID4gICAgICAgICBzZXFf
cHJpbnRmKG0sICJGcmVxdWVuY3kgcmVxdWVzdGVkICVkLCBhY3R1YWwgJWRcbiIsCj4gPiAtICAg
ICAgICAgICAgICAgICAgaW50ZWxfZ3B1X2ZyZXEocnBzLCBycHMtPmN1cl9mcmVxKSwKPiA+IC0g
ICAgICAgICAgICAgICAgICBpbnRlbF9ncHVfZnJlcShycHMsIGFjdF9mcmVxKSk7Cj4gPiArICAg
ICAgICAgICAgICAgICAgaW50ZWxfZ3B1X2ZyZXEocnBzLCBycHMtPmN1cl9mcmVxKSwgYWN0X2Zy
ZXEpOwo+ID4gICAgICAgICBzZXFfcHJpbnRmKG0sICIgIG1pbiBoYXJkOiVkLCBzb2Z0OiVkOyBt
YXggc29mdDolZCwgaGFyZDolZFxuIiwKPiA+ICAgICAgICAgICAgICAgICAgICBpbnRlbF9ncHVf
ZnJlcShycHMsIHJwcy0+bWluX2ZyZXEpLAo+ID4gICAgICAgICAgICAgICAgICAgIGludGVsX2dw
dV9mcmVxKHJwcywgcnBzLT5taW5fZnJlcV9zb2Z0bGltaXQpLAo+IAo+IEdvb2Qgc3RhcnQsIGJ1
dCB0aGlzIG5lZWRzIHRvIGJlIHJwcy1jZW50cmljLCBwbGVhc2UgY291bGQgeW91IHB1bGwgaXQK
PiB1bmRlciBpbnRlbF9ycHMuYyBhcyBpbnRlbF9ycHNfc2hvdyAob3IgX2R1bXAsIG9yIF9wcmlu
dCksIHRha2luZyBhCj4gc3RydWN0IGRybV9wcmludGVyIHRvIGRpcmVjdCB0aGUgb3V0cHV0LgoK
eWVzLCBvZiBjb3Vyc2UhIFRoZXJlIGFyZSBzdGlsbCBmZXcgcnBzIGxlZnRvdmVycyBhcm91bmQg
OikKClRoYW5rcywKQW5kaQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
