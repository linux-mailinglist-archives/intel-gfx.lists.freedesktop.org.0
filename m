Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25DF2F24A
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 10:56:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 336E289135;
	Tue, 30 Apr 2019 08:55:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BF8588E53
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 08:55:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 01:55:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,413,1549958400"; d="scan'208";a="169231185"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 30 Apr 2019 01:55:54 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Stuart Summers <stuart.summers@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190429155135.6468-2-stuart.summers@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190429155135.6468-1-stuart.summers@intel.com>
 <20190429155135.6468-2-stuart.summers@intel.com>
Date: Tue, 30 Apr 2019 11:58:08 +0300
Message-ID: <87h8afrhsv.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915: Use local variable for SSEU
 info in GETPARAM ioctl
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

T24gTW9uLCAyOSBBcHIgMjAxOSwgU3R1YXJ0IFN1bW1lcnMgPHN0dWFydC5zdW1tZXJzQGludGVs
LmNvbT4gd3JvdGU6Cj4gSW4gdGhlIEdFVFBBUkFNIGlvY3RsIGhhbmRsZXIsIHVzZSBhIGxvY2Fs
IHZhcmlhYmxlIHRvIGNvbnNvbGlkYXRlCj4gdXNhZ2Ugb2YgU1NFVSBydW50aW1lIGluZm8uCj4K
PiBDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVs
LmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBTdHVhcnQgU3VtbWVycyA8c3R1YXJ0LnN1bW1lcnNAaW50
ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIHwgMTEgKysr
KysrLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMo
LSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwo+IGluZGV4IGFhY2M4ZGQ2ZWNmZC4uYjZjZTc1
ODBkNDE0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCj4gQEAgLTMyMSw2ICszMjEsNyBA
QCBzdGF0aWMgaW50IGk5MTVfZ2V0cGFyYW1faW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwg
dm9pZCAqZGF0YSwKPiAgewo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0g
dG9faTkxNShkZXYpOwo+ICAJc3RydWN0IHBjaV9kZXYgKnBkZXYgPSBkZXZfcHJpdi0+ZHJtLnBk
ZXY7Cj4gKwlzdHJ1Y3Qgc3NldV9kZXZfaW5mbyAqc3NldSA9ICZSVU5USU1FX0lORk8oZGV2X3By
aXYpLT5zc2V1OwoKY29uc3Q/Cgo+ICAJZHJtX2k5MTVfZ2V0cGFyYW1fdCAqcGFyYW0gPSBkYXRh
Owo+ICAJaW50IHZhbHVlOwo+ICAKPiBAQCAtMzc0LDEyICszNzUsMTIgQEAgc3RhdGljIGludCBp
OTE1X2dldHBhcmFtX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCj4g
IAkJdmFsdWUgPSBpOTE1X2NtZF9wYXJzZXJfZ2V0X3ZlcnNpb24oZGV2X3ByaXYpOwo+ICAJCWJy
ZWFrOwo+ICAJY2FzZSBJOTE1X1BBUkFNX1NVQlNMSUNFX1RPVEFMOgo+IC0JCXZhbHVlID0gc3Nl
dV9zdWJzbGljZV90b3RhbCgmUlVOVElNRV9JTkZPKGRldl9wcml2KS0+c3NldSk7Cj4gKwkJdmFs
dWUgPSBzc2V1X3N1YnNsaWNlX3RvdGFsKHNzZXUpOwo+ICAJCWlmICghdmFsdWUpCj4gIAkJCXJl
dHVybiAtRU5PREVWOwo+ICAJCWJyZWFrOwo+ICAJY2FzZSBJOTE1X1BBUkFNX0VVX1RPVEFMOgo+
IC0JCXZhbHVlID0gUlVOVElNRV9JTkZPKGRldl9wcml2KS0+c3NldS5ldV90b3RhbDsKPiArCQl2
YWx1ZSA9IHNzZXUtPmV1X3RvdGFsOwo+ICAJCWlmICghdmFsdWUpCj4gIAkJCXJldHVybiAtRU5P
REVWOwo+ICAJCWJyZWFrOwo+IEBAIC0zOTYsNyArMzk3LDcgQEAgc3RhdGljIGludCBpOTE1X2dl
dHBhcmFtX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCj4gIAkJdmFs
dWUgPSBIQVNfUE9PTEVEX0VVKGRldl9wcml2KTsKPiAgCQlicmVhazsKPiAgCWNhc2UgSTkxNV9Q
QVJBTV9NSU5fRVVfSU5fUE9PTDoKPiAtCQl2YWx1ZSA9IFJVTlRJTUVfSU5GTyhkZXZfcHJpdikt
PnNzZXUubWluX2V1X2luX3Bvb2w7Cj4gKwkJdmFsdWUgPSBzc2V1LT5taW5fZXVfaW5fcG9vbDsK
PiAgCQlicmVhazsKPiAgCWNhc2UgSTkxNV9QQVJBTV9IVUNfU1RBVFVTOgo+ICAJCXZhbHVlID0g
aW50ZWxfaHVjX2NoZWNrX3N0YXR1cygmZGV2X3ByaXYtPmh1Yyk7Cj4gQEAgLTQ0NiwxMiArNDQ3
LDEyIEBAIHN0YXRpYyBpbnQgaTkxNV9nZXRwYXJhbV9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAq
ZGV2LCB2b2lkICpkYXRhLAo+ICAJCXZhbHVlID0gaW50ZWxfZW5naW5lc19oYXNfY29udGV4dF9p
c29sYXRpb24oZGV2X3ByaXYpOwo+ICAJCWJyZWFrOwo+ICAJY2FzZSBJOTE1X1BBUkFNX1NMSUNF
X01BU0s6Cj4gLQkJdmFsdWUgPSBSVU5USU1FX0lORk8oZGV2X3ByaXYpLT5zc2V1LnNsaWNlX21h
c2s7Cj4gKwkJdmFsdWUgPSBzc2V1LT5zbGljZV9tYXNrOwo+ICAJCWlmICghdmFsdWUpCj4gIAkJ
CXJldHVybiAtRU5PREVWOwo+ICAJCWJyZWFrOwo+ICAJY2FzZSBJOTE1X1BBUkFNX1NVQlNMSUNF
X01BU0s6Cj4gLQkJdmFsdWUgPSBSVU5USU1FX0lORk8oZGV2X3ByaXYpLT5zc2V1LnN1YnNsaWNl
X21hc2tbMF07Cj4gKwkJdmFsdWUgPSBzc2V1LT5zdWJzbGljZV9tYXNrWzBdOwo+ICAJCWlmICgh
dmFsdWUpCj4gIAkJCXJldHVybiAtRU5PREVWOwo+ICAJCWJyZWFrOwoKLS0gCkphbmkgTmlrdWxh
LCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
