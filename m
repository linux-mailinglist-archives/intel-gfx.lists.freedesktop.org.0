Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58ADF4F11F
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Jun 2019 01:23:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 290E56E939;
	Fri, 21 Jun 2019 23:23:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF0DE6E939
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jun 2019 23:23:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jun 2019 16:23:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,402,1557212400"; d="scan'208";a="182201301"
Received: from cataylo2-ubuntu18-10.jf.intel.com (HELO [10.7.199.54])
 ([10.7.199.54])
 by fmsmga001.fm.intel.com with ESMTP; 21 Jun 2019 16:23:51 -0700
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190621020132.1164-1-matthew.d.roper@intel.com>
 <20190621020132.1164-2-matthew.d.roper@intel.com>
From: Clinton Taylor <Clinton.A.Taylor@intel.com>
Message-ID: <00945fd7-2606-07d4-c4b5-7165a03cfe7e@intel.com>
Date: Fri, 21 Jun 2019 15:23:59 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190621020132.1164-2-matthew.d.roper@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/icl: Drop port parameter to
 icl_get_combo_buf_trans()
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TG9naWNhbCwgc2luY2UgaXRzIG5vdCBiZWluZyB1c2VkLgoKUmV2aWV3ZWQtYnk6IENsaW50IFRh
eWxvciA8Q2xpbnRvbi5BLlRheWxvckBpbnRlbC5jb20+CgotQ2xpbnQKCgpPbiA2LzIwLzE5IDc6
MDEgUE0sIE1hdHQgUm9wZXIgd3JvdGU6Cj4gVGhlIHBvcnQgcGFyYW1ldGVyIGhhc24ndCBiZWVu
IHVzZWQgc2luY2UgdGhlIGxhc3QgYnNwZWMgcGh5IHByb2dyYW1taW5nCj4gdXBkYXRlLiAgRHJv
cCBpdCB0byBtYWtlIHNvbWUgdXBjb21pbmcgY2hhbmdlcyBzaW1wbGVyLgo+Cj4gUmVmZXJlbmNl
czogOTY1OWMxYWY0NTFhICgiZHJtL2k5MTUvaWNsOiBjb21ibyBwb3J0IHZzd2luZyBwcm9ncmFt
bWluZyBjaGFuZ2VzIHBlciBCU1BFQyIpCj4gQ2M6IENsaW50IFRheWxvciA8Y2xpbnRvbi5hLnRh
eWxvckBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJv
cGVyQGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMgfCAxMiArKysrKystLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlv
bnMoKyksIDYgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMKPiBpbmRleCA3OTI1YTE3NmY5MDAuLjU5MzgwNmQ0NGFkNCAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwo+IEBAIC04NDYsOCArODQ2LDggQEAg
Y25sX2dldF9idWZfdHJhbnNfZWRwKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwg
aW50ICpuX2VudHJpZXMpCj4gICB9Cj4gICAKPiAgIHN0YXRpYyBjb25zdCBzdHJ1Y3QgY25sX2Rk
aV9idWZfdHJhbnMgKgo+IC1pY2xfZ2V0X2NvbWJvX2J1Zl90cmFucyhzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcG9ydCBwb3J0LAo+IC0JCQlpbnQgdHlwZSwgaW50IHJh
dGUsIGludCAqbl9lbnRyaWVzKQo+ICtpY2xfZ2V0X2NvbWJvX2J1Zl90cmFucyhzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGludCB0eXBlLCBpbnQgcmF0ZSwKPiArCQkJaW50ICpu
X2VudHJpZXMpCj4gICB7Cj4gICAJaWYgKHR5cGUgPT0gSU5URUxfT1VUUFVUX0hETUkpIHsKPiAg
IAkJKm5fZW50cmllcyA9IEFSUkFZX1NJWkUoaWNsX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25z
X2hkbWkpOwo+IEBAIC04NzIsNyArODcyLDcgQEAgc3RhdGljIGludCBpbnRlbF9kZGlfaGRtaV9s
ZXZlbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcG9ydCBwb3IKPiAg
IAo+ICAgCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKSB7Cj4gICAJCWlmIChpbnRlbF9w
b3J0X2lzX2NvbWJvcGh5KGRldl9wcml2LCBwb3J0KSkKPiAtCQkJaWNsX2dldF9jb21ib19idWZf
dHJhbnMoZGV2X3ByaXYsIHBvcnQsIElOVEVMX09VVFBVVF9IRE1JLAo+ICsJCQlpY2xfZ2V0X2Nv
bWJvX2J1Zl90cmFucyhkZXZfcHJpdiwgSU5URUxfT1VUUFVUX0hETUksCj4gICAJCQkJCQkwLCAm
bl9lbnRyaWVzKTsKPiAgIAkJZWxzZQo+ICAgCQkJbl9lbnRyaWVzID0gQVJSQVlfU0laRShpY2xf
bWdfcGh5X2RkaV90cmFuc2xhdGlvbnMpOwo+IEBAIC0yMjMxLDcgKzIyMzEsNyBAQCB1OCBpbnRl
bF9kZGlfZHBfdm9sdGFnZV9tYXgoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpCj4gICAK
PiAgIAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkgewo+ICAgCQlpZiAoaW50ZWxfcG9y
dF9pc19jb21ib3BoeShkZXZfcHJpdiwgcG9ydCkpCj4gLQkJCWljbF9nZXRfY29tYm9fYnVmX3Ry
YW5zKGRldl9wcml2LCBwb3J0LCBlbmNvZGVyLT50eXBlLAo+ICsJCQlpY2xfZ2V0X2NvbWJvX2J1
Zl90cmFucyhkZXZfcHJpdiwgZW5jb2Rlci0+dHlwZSwKPiAgIAkJCQkJCWludGVsX2RwLT5saW5r
X3JhdGUsICZuX2VudHJpZXMpOwo+ICAgCQllbHNlCj4gICAJCQluX2VudHJpZXMgPSBBUlJBWV9T
SVpFKGljbF9tZ19waHlfZGRpX3RyYW5zbGF0aW9ucyk7Cj4gQEAgLTI0MjAsOCArMjQyMCw4IEBA
IHN0YXRpYyB2b2lkIGljbF9kZGlfY29tYm9fdnN3aW5nX3Byb2dyYW0oc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2LAo+ICAgCXUzMiBuX2VudHJpZXMsIHZhbDsKPiAgIAlpbnQgbG47
Cj4gICAKPiAtCWRkaV90cmFuc2xhdGlvbnMgPSBpY2xfZ2V0X2NvbWJvX2J1Zl90cmFucyhkZXZf
cHJpdiwgcG9ydCwgdHlwZSwKPiAtCQkJCQkJICAgcmF0ZSwgJm5fZW50cmllcyk7Cj4gKwlkZGlf
dHJhbnNsYXRpb25zID0gaWNsX2dldF9jb21ib19idWZfdHJhbnMoZGV2X3ByaXYsIHR5cGUsIHJh
dGUsCj4gKwkJCQkJCSAgICZuX2VudHJpZXMpOwo+ICAgCWlmICghZGRpX3RyYW5zbGF0aW9ucykK
PiAgIAkJcmV0dXJuOwo+ICAgCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
