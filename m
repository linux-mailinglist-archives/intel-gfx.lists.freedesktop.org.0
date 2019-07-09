Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 014B563563
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 14:12:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CED446E05D;
	Tue,  9 Jul 2019 12:12:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F9006E05D
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 12:12:29 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 05:12:29 -0700
X-IronPort-AV: E=Sophos;i="5.63,470,1557212400"; d="scan'208";a="156154807"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com) ([10.7.196.65])
 by orsmga007-auth.jf.intel.com with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Jul 2019 05:12:29 -0700
Date: Tue, 9 Jul 2019 05:13:05 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190709121305.GG16315@intel.com>
References: <20190708231629.9296-1-lucas.demarchi@intel.com>
 <20190708231629.9296-22-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190708231629.9296-22-lucas.demarchi@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH v2 21/25] drm/i915/tgl: apply Display WA
 #1178 to fix type C dongles
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBKdWwgMDgsIDIwMTkgYXQgMDQ6MTY6MjVQTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IEFkZCBwb3J0IEMgdG8gd29ya2Fyb3VuZCB0byBjb3ZlciBUaWdlciBMYWtlLgo+
IAo+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+CgpSZXZpZXdlZC1i
eTogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgoKPiBTaWduZWQtb2ZmLWJ5
OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KPiAtLS0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgfCAxMSArKysr
KysrKy0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICAg
ICAgICB8ICA0ICsrKy0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCA0IGRl
bGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV9wb3dlci5jCj4gaW5kZXggNDU1ZjlhYWIxODhkLi5iZTNkNGQxZWVjZTIgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bv
d2VyLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
cG93ZXIuYwo+IEBAIC00NTMsNiArNDUzLDcgQEAgaWNsX2NvbWJvX3BoeV9hdXhfcG93ZXJfd2Vs
bF9lbmFibGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ICAJaW50IHB3X2lk
eCA9IHBvd2VyX3dlbGwtPmRlc2MtPmhzdy5pZHg7Cj4gIAllbnVtIHBvcnQgcG9ydCA9IElDTF9B
VVhfUFdfVE9fUE9SVChwd19pZHgpOwo+ICAJdTMyIHZhbDsKPiArCWludCB3YV9pZHhfbWF4Owo+
ICAKPiAgCXZhbCA9IEk5MTVfUkVBRChyZWdzLT5kcml2ZXIpOwo+ICAJSTkxNV9XUklURShyZWdz
LT5kcml2ZXIsIHZhbCB8IEhTV19QV1JfV0VMTF9DVExfUkVRKHB3X2lkeCkpOwo+IEBAIC00NjIs
OSArNDYzLDEzIEBAIGljbF9jb21ib19waHlfYXV4X3Bvd2VyX3dlbGxfZW5hYmxlKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiAgCj4gIAloc3dfd2FpdF9mb3JfcG93ZXJfd2Vs
bF9lbmFibGUoZGV2X3ByaXYsIHBvd2VyX3dlbGwpOwo+ICAKPiAtCS8qIERpc3BsYXkgV0EgIzEx
Nzg6IGljbCAqLwo+IC0JaWYgKElTX0lDRUxBS0UoZGV2X3ByaXYpICYmCj4gLQkgICAgcHdfaWR4
ID49IElDTF9QV19DVExfSURYX0FVWF9BICYmIHB3X2lkeCA8PSBJQ0xfUFdfQ1RMX0lEWF9BVVhf
QiAmJgo+ICsJLyogRGlzcGxheSBXQSAjMTE3ODogaWNsLCB0Z2wgKi8KPiArCWlmIChJU19USUdF
UkxBS0UoZGV2X3ByaXYpKQo+ICsJCXdhX2lkeF9tYXggPSBJQ0xfUFdfQ1RMX0lEWF9BVVhfQzsK
PiArCWVsc2UKPiArCQl3YV9pZHhfbWF4ID0gSUNMX1BXX0NUTF9JRFhfQVVYX0I7Cj4gKwo+ICsJ
aWYgKHB3X2lkeCA+PSBJQ0xfUFdfQ1RMX0lEWF9BVVhfQSAmJiBwd19pZHggPD0gd2FfaWR4X21h
eCAmJgo+ICAJICAgICFpbnRlbF9iaW9zX2lzX3BvcnRfZWRwKGRldl9wcml2LCBwb3J0KSkgewo+
ICAJCXZhbCA9IEk5MTVfUkVBRChJQ0xfQVVYX0FOQU9WUkQxKHB3X2lkeCkpOwo+ICAJCXZhbCB8
PSBJQ0xfQVVYX0FOQU9WUkQxX0VOQUJMRSB8IElDTF9BVVhfQU5BT1ZSRDFfTERPX0JZUEFTUzsK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiBpbmRleCBjY2ZiOTVlMmFhMDMuLmZiY2M3OTgxYzhj
NCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+IEBAIC05MjQ2LDkgKzkyNDYsMTEgQEAg
ZW51bSBza2xfcG93ZXJfZ2F0ZSB7Cj4gICNkZWZpbmUgX0lDTF9BVVhfUkVHX0lEWChwd19pZHgp
CSgocHdfaWR4KSAtIElDTF9QV19DVExfSURYX0FVWF9BKQo+ICAjZGVmaW5lIF9JQ0xfQVVYX0FO
QU9WUkQxX0EJCTB4MTYyMzk4Cj4gICNkZWZpbmUgX0lDTF9BVVhfQU5BT1ZSRDFfQgkJMHg2QzM5
OAo+ICsjZGVmaW5lIF9UR0xfQVVYX0FOQU9WUkQxX0MJCTB4MTYwMzk4Cj4gICNkZWZpbmUgSUNM
X0FVWF9BTkFPVlJEMShwd19pZHgpCV9NTUlPKF9QSUNLKF9JQ0xfQVVYX1JFR19JRFgocHdfaWR4
KSwgXAo+ICAJCQkJCQkgICAgX0lDTF9BVVhfQU5BT1ZSRDFfQSwgXAo+IC0JCQkJCQkgICAgX0lD
TF9BVVhfQU5BT1ZSRDFfQikpCj4gKwkJCQkJCSAgICBfSUNMX0FVWF9BTkFPVlJEMV9CLCBcCj4g
KwkJCQkJCSAgICBfVEdMX0FVWF9BTkFPVlJEMV9DKSkKPiAgI2RlZmluZSAgIElDTF9BVVhfQU5B
T1ZSRDFfTERPX0JZUEFTUwkoMSA8PCA3KQo+ICAjZGVmaW5lICAgSUNMX0FVWF9BTkFPVlJEMV9F
TkFCTEUJKDEgPDwgMCkKPiAgCj4gLS0gCj4gMi4yMS4wCj4gCj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4g
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
