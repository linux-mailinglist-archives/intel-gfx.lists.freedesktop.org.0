Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9AC73D91C2
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jul 2021 17:22:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 279936E060;
	Wed, 28 Jul 2021 15:22:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68DE16E060
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jul 2021 15:22:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10059"; a="209574934"
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="209574934"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 08:22:30 -0700
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="566908792"
Received: from uokonkwo-mobl.amr.corp.intel.com (HELO msatwood-mobl)
 ([10.255.229.128])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 08:22:30 -0700
Date: Wed, 28 Jul 2021 08:22:16 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: =?utf-8?B?Sm9zw6k=?= Roberto de Souza <jose.souza@intel.com>;,
 intel-gfx@lists.freedesktop.org
Message-ID: <20210728152216.GC21818@msatwood-mobl>
References: <20210722054338.12891-1-jose.souza@intel.com>
 <20210722054338.12891-9-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210722054338.12891-9-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH 09/10] drm/i915/bios: Only use opregion
 panel index for display ver 8 and older
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

T24gV2VkLCBKdWwgMjEsIDIwMjEgYXQgMTA6NDM6MzdQTSAtMDcwMCwgSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSB3cm90ZToKPiBPbiBuZXdlciBwbGF0Zm9ybSB0aGlzIG9wcmVnaW9uIGNhbGwgYWx3
YXlzIGZhaWxzLCBhbHNvIGl0IGRvIG5vdAo+IHN1cHBvcnQgbXVsdGlwbGUgcGFuZWxzIHNvIGRy
b3BwaW5nIGl0Lgo+IAo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPgo+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+IFNp
Z25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29t
PgpSZXZpZXdlZC1ieTogTWF0dCBBdHdvb2QgPG1hdHRoZXcucy5hdHdvb2RAaW50ZWwuY29tPgo+
IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyB8IDE5ICsr
KysrKystLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMTIg
ZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYmlvcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9z
LmMKPiBpbmRleCBkMWFkNmQ2MjVlNTIxLi42Yzg0ODM4NGEyYWRhIDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKPiBAQCAtMTkyNCw3ICsxOTI0LDcgQEAg
c3RhdGljIHZvaWQgcGFyc2VfaW50ZWdyYXRlZF9wYW5lbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSwKPiAgewo+ICAJY29uc3Qgc3RydWN0IHZidF9oZWFkZXIgKnZidCA9IGk5MTUtPm9w
cmVnaW9uLnZidDsKPiAgCWNvbnN0IHN0cnVjdCBiZGJfaGVhZGVyICpiZGI7Cj4gLQlpbnQgbGZw
X2luc3QgPSAwLCBwYW5lbF9pbmRleCwgb3ByZWdpb25fcGFuZWxfaW5kZXg7Cj4gKwlpbnQgbGZw
X2luc3QgPSAwLCBwYW5lbF9pbmRleDsKPiAgCj4gIAlpZiAoZGV2ZGF0YS0+Y2hpbGQuaGFuZGxl
ID09IEhBTkRMRV9MRlBfMSkKPiAgCQlsZnBfaW5zdCA9IDE7Cj4gQEAgLTE5MzcsMTcgKzE5Mzcs
MTIgQEAgc3RhdGljIHZvaWQgcGFyc2VfaW50ZWdyYXRlZF9wYW5lbChzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSwKPiAgCWJkYiA9IGdldF9iZGJfaGVhZGVyKHZidCk7Cj4gIAlwYW5lbF9p
bmRleCA9IGdldF9sZnBfcGFuZWxfaW5kZXgoaTkxNSwgYmRiLCBsZnBfaW5zdCk7Cj4gIAo+IC0J
b3ByZWdpb25fcGFuZWxfaW5kZXggPSBpbnRlbF9vcHJlZ2lvbl9nZXRfcGFuZWxfdHlwZShpOTE1
KTsKPiAtCS8qCj4gLQkgKiBUT0RPOiB0aGUgY3VycmVudCBpbXBsZW1lbnRhdGlvbiBhbHdheXMg
dXNlIHRoZSBwYW5lbCBpbmRleCBmcm9tCj4gLQkgKiBvcHJlZ2lvbiBpZiBhdmFpbGFibGUgZHVl
IHRvIGlzc3VlcyB3aXRoIG9sZCBwbGF0Zm9ybXMuCj4gLQkgKiBCdXQgdGhpcyBkbyBub3Qgc3Vw
cG9ydHMgdHdvIHBhbmVscyBhbmQgaW4gU0tMIG9yIG5ld2VyIEkgbmV2ZXIgc2F3IGEKPiAtCSAq
IHN5c3RlbSB3ZXJlIHRoaXMgY2FsbCByZXR1cm5zIGEgdmFsaWQgdmFsdWUuCj4gLQkgKiBTbyB3
aWxsIGNoYW5nZSB0aGlzIHRvIG9ubHkgdXNlIG9wcmVnaW9uIHVwIHRvIEJEVyBpbiBhIHNlcGFy
YXRlZAo+IC0JICogY29tbWl0Lgo+IC0JICovCj4gLQlpZiAob3ByZWdpb25fcGFuZWxfaW5kZXgg
Pj0gMCkKPiAtCQlwYW5lbF9pbmRleCA9IG9wcmVnaW9uX3BhbmVsX2luZGV4Owo+ICsJaWYgKERJ
U1BMQVlfVkVSKGk5MTUpIDwgOSkgewo+ICsJCWludCBvcHJlZ2lvbl9wYW5lbF9pbmRleCA9IGlu
dGVsX29wcmVnaW9uX2dldF9wYW5lbF90eXBlKGk5MTUpOwo+ICsKPiArCQlpZiAob3ByZWdpb25f
cGFuZWxfaW5kZXggPj0gMCkKPiArCQkJb3ByZWdpb25fcGFuZWxfaW5kZXggPSBwYW5lbF9pbmRl
eDsKPiArCX0KPiAgCj4gIAlpZiAocGFuZWxfaW5kZXggPT0gLTEpCj4gIAkJcmV0dXJuOwo+IC0t
IAo+IDIuMzIuMAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
