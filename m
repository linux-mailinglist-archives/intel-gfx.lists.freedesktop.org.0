Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F311AB6167
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2019 12:27:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4474D6EE2A;
	Wed, 18 Sep 2019 10:27:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A26CA6EE2A
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2019 10:27:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Sep 2019 03:27:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,520,1559545200"; d="scan'208";a="199006520"
Received: from leonidf-mobl.ger.corp.intel.com (HELO [10.252.3.171])
 ([10.252.3.171])
 by orsmga002.jf.intel.com with ESMTP; 18 Sep 2019 03:26:58 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190918092303.23078-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <a429e1fc-2956-070a-c870-c06c2697f2aa@linux.intel.com>
Date: Wed, 18 Sep 2019 11:26:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190918092303.23078-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Expose engine properties via sysfs
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

Ck9uIDE4LzA5LzIwMTkgMTA6MjMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBQcmVsaW1pbmFyeSBz
dHViIHRvIGFkZCBlbmdpbmVzIHVuZGVybmVhdGggL3N5cy9jbGFzcy9kcm0vY2FyZE4vLCBzbwo+
IHRoYXQgd2UgY2FuIGV4cG9zZSBwcm9wZXJ0aWVzIG9uIGVhY2ggZW5naW5lIHRvIHRoZSBzeXNh
ZG1pbi4KCkRvIHdlIGFsc28gZW52aXNhZ2UgYSBuZWVkIGZvciB0aGVzZSBmdXR1cmUgdGhpbmdz
IHdlJ2xsIGV4cG9zZSB0byBiZSAKcGVyLWNvbnRleHQtZW5naW5lIGFuZCBub3QganVzdCBwZXIg
cGh5c2ljYWwgZW5naW5lPwoKPiAKPiBUbyBzdGFydCB3aXRoIHdlIGhhdmUgYmFzaWMgYW5hbG9n
dWVzIG9mIHRoZSBpOTE1X3F1ZXJ5IGlvY3RsIHNvIHRoYXQgd2UKPiBjYW4gcHJldHR5IHByaW50
IGVuZ2luZSBkaXNjb3ZlcnkgZnJvbSB0aGUgc2hlbGwsIGFuZCBmbGVzaCBvdXQgdGhlCj4gZGly
ZWN0b3J5IHN0cnVjdHVyZS4gTGF0ZXIgd2Ugd2lsbCBhZGQgd3JpdGVhYmxlIHN5c2FkbWluIHBy
b3BlcnRpZXMgc3VjaAo+IGFzIHBlci1lbmdpbmUgdGltZW91dCBjb250cm9scy4KCkl0IHdvdWxk
IGJlIGdvb2QgdG8gc2hvdyBhbiBleGFtcGxlIG9mIHRoZSBsYXlvdXQgaW4gY29tbWl0IHRleHQu
Cgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
Pgo+IENjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+
Cj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gQ2M6IERh
bmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4g
Q2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlICAgICAgICAgICAgICAgIHwgICAzICstCj4gICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfc3lzZnMuYyB8IDExMyArKysrKysrKysr
KysrKysrKysrCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfc3lzZnMu
aCB8ICAxNCArKysKPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3lzZnMuYyAgICAgICAg
ICAgIHwgICA0ICsKPiAgIDQgZmlsZXMgY2hhbmdlZCwgMTMzIGluc2VydGlvbnMoKyksIDEgZGVs
ZXRpb24oLSkKPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9lbmdpbmVfc3lzZnMuYwo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2VuZ2luZV9zeXNmcy5oCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L01ha2VmaWxlIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUKPiBp
bmRleCA2NThiOTMwZDM0YTguLmJiZWEwZDRkYWRkNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9NYWtlZmlsZQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxl
Cj4gQEAgLTc2LDggKzc2LDkgQEAgZ3QteSArPSBcCj4gICAJZ3QvaW50ZWxfYnJlYWRjcnVtYnMu
byBcCj4gICAJZ3QvaW50ZWxfY29udGV4dC5vIFwKPiAgIAlndC9pbnRlbF9lbmdpbmVfY3MubyBc
Cj4gLQlndC9pbnRlbF9lbmdpbmVfcG9vbC5vIFwKPiAgIAlndC9pbnRlbF9lbmdpbmVfcG0ubyBc
Cj4gKwlndC9pbnRlbF9lbmdpbmVfcG9vbC5vIFwKPiArCWd0L2ludGVsX2VuZ2luZV9zeXNmcy5v
IFwKPiAgIAlndC9pbnRlbF9lbmdpbmVfdXNlci5vIFwKPiAgIAlndC9pbnRlbF9ndC5vIFwKPiAg
IAlndC9pbnRlbF9ndF9pcnEubyBcCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2VuZ2luZV9zeXNmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
ZW5naW5lX3N5c2ZzLmMKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAw
MC4uNTFiNGIzZjJhODA4Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2VuZ2luZV9zeXNmcy5jCj4gQEAgLTAsMCArMSwxMTMgQEAKPiArLyoKPiAr
ICogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAo+ICsgKgo+ICsgKiBDb3B5cmlnaHQgwqkg
MjAxOSBJbnRlbCBDb3Jwb3JhdGlvbgo+ICsgKi8KPiArCj4gKyNpbmNsdWRlIDxsaW51eC9rb2Jq
ZWN0Lmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9zeXNmcy5oPgo+ICsKPiArI2luY2x1ZGUgImk5MTVf
ZHJ2LmgiCj4gKyNpbmNsdWRlICJpbnRlbF9lbmdpbmUuaCIKPiArI2luY2x1ZGUgImludGVsX2Vu
Z2luZV9zeXNmcy5oIgo+ICsKPiArc3RydWN0IGtvYmpfZW5naW5lIHsKPiArCXN0cnVjdCBrb2Jq
ZWN0IGJhc2U7Cj4gKwlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7Cj4gK307Cj4gKwo+
ICtzdGF0aWMgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqa29ial90b19lbmdpbmUoc3RydWN0IGtv
YmplY3QgKmtvYmopCj4gK3sKPiArCXJldHVybiBjb250YWluZXJfb2Yoa29iaiwgc3RydWN0IGtv
YmpfZW5naW5lLCBiYXNlKS0+ZW5naW5lOwo+ICt9Cj4gKwo+ICtzdGF0aWMgc3NpemVfdAo+ICtu
YW1lX3Nob3coc3RydWN0IGtvYmplY3QgKmtvYmosIHN0cnVjdCBrb2JqX2F0dHJpYnV0ZSAqYXR0
ciwgY2hhciAqYnVmKQo+ICt7Cj4gKwlyZXR1cm4gc3ByaW50ZihidWYsICIlc1xuIiwga29ial90
b19lbmdpbmUoa29iaiktPm5hbWUpOwoKTmFtZSBjb250YWlucyBvdXIgaW50ZXJuYWwgaW5zdGFu
Y2UgbnVtYmVyIHdoaWNoIEkgdGhpbmsgd2UgZG9uJ3Qgd2FudCAKdG8gZXhwb3J0LgoKT24gdGhl
IG90aGVyIGhhbmQgd2UgY291bGQgdGhpbmsgb2YgZG1lc2cgYXMgdXNlciB2aXNpYmxlIHNvIGNv
dWxkIApjb25zaWRlciB0d2Vha2luZyBlbmdpbmUtPm5hbWUgdG8gYmUgYnVpbHQgZnJvbSB1YWJp
IGNvbXBvbmVudHMuCgo+ICt9Cj4gKwo+ICtzdGF0aWMgc3NpemVfdAo+ICtjbGFzc19zaG93KHN0
cnVjdCBrb2JqZWN0ICprb2JqLCBzdHJ1Y3Qga29ial9hdHRyaWJ1dGUgKmF0dHIsIGNoYXIgKmJ1
ZikKPiArewo+ICsJcmV0dXJuIHNwcmludGYoYnVmLCAiJWRcbiIsIGtvYmpfdG9fZW5naW5lKGtv
YmopLT51YWJpX2NsYXNzKTsKPiArfQo+ICsKPiArc3RhdGljIHNzaXplX3QKPiAraW5zdF9zaG93
KHN0cnVjdCBrb2JqZWN0ICprb2JqLCBzdHJ1Y3Qga29ial9hdHRyaWJ1dGUgKmF0dHIsIGNoYXIg
KmJ1ZikKPiArewo+ICsJcmV0dXJuIHNwcmludGYoYnVmLCAiJWRcbiIsIGtvYmpfdG9fZW5naW5l
KGtvYmopLT51YWJpX2luc3RhbmNlKTsKPiArfQo+ICsKPiArc3RhdGljIHNzaXplX3QKPiArbW1p
b19zaG93KHN0cnVjdCBrb2JqZWN0ICprb2JqLCBzdHJ1Y3Qga29ial9hdHRyaWJ1dGUgKmF0dHIs
IGNoYXIgKmJ1ZikKPiArewo+ICsJcmV0dXJuIHNwcmludGYoYnVmLCAiMHgleFxuIiwga29ial90
b19lbmdpbmUoa29iaiktPm1taW9fYmFzZSk7Cj4gK30KCk5pY2UgdHJ5IDspIGJ1dCBJIHN1Z2dl
c3QgeW91IGxlYXZlIGFkZGluZyBtbWlvIGZvciBhIHNlcGFyYXRlIHBhdGNoLgoKPiArCj4gK3N0
YXRpYyBzdHJ1Y3Qga29ial9hdHRyaWJ1dGUgbmFtZV9hdHRyID0gX19BVFRSKG5hbWUsIDA0NDQs
IG5hbWVfc2hvdywgTlVMTCk7Cj4gK3N0YXRpYyBzdHJ1Y3Qga29ial9hdHRyaWJ1dGUgY2xhc3Nf
YXR0ciA9IF9fQVRUUihjbGFzcywgMDQ0NCwgY2xhc3Nfc2hvdywgTlVMTCk7Cj4gK3N0YXRpYyBz
dHJ1Y3Qga29ial9hdHRyaWJ1dGUgaW5zdF9hdHRyID0gX19BVFRSKGluc3RhbmNlLCAwNDQ0LCBp
bnN0X3Nob3csIE5VTEwpOwo+ICtzdGF0aWMgc3RydWN0IGtvYmpfYXR0cmlidXRlIG1taW9fYXR0
ciA9IF9fQVRUUihpbnN0YW5jZSwgMDQ0NCwgbW1pb19zaG93LCBOVUxMKTsKPiArCj4gK3N0YXRp
YyB2b2lkIGtvYmpfZW5naW5lX3JlbGVhc2Uoc3RydWN0IGtvYmplY3QgKmtvYmopCj4gK3sKPiAr
CWtmcmVlKGtvYmopOwo+ICt9Cj4gKwo+ICtzdGF0aWMgc3RydWN0IGtvYmpfdHlwZSBrb2JqX2Vu
Z2luZV90eXBlID0gewo+ICsJLnJlbGVhc2UgPSBrb2JqX2VuZ2luZV9yZWxlYXNlLAo+ICsJLnN5
c2ZzX29wcyA9ICZrb2JqX3N5c2ZzX29wcwo+ICt9Owo+ICsKPiArc3RhdGljIHN0cnVjdCBrb2Jq
ZWN0ICoKPiAra29ial9lbmdpbmUoc3RydWN0IGtvYmplY3QgKmRpciwgc3RydWN0IGludGVsX2Vu
Z2luZV9jcyAqZW5naW5lKQo+ICt7Cj4gKwlzdHJ1Y3Qga29ial9lbmdpbmUgKmtlOwo+ICsKPiAr
CWtlID0ga3phbGxvYyhzaXplb2YoKmtlKSwgR0ZQX0tFUk5FTCk7Cj4gKwlpZiAoIWtlKQo+ICsJ
CXJldHVybiBOVUxMOwoKQ291bGQgZW1iZWQga29iaiBpbnRvIHRoZSBlbmdpbmU/Cgo+ICsKPiAr
CWtvYmplY3RfaW5pdCgma2UtPmJhc2UsICZrb2JqX2VuZ2luZV90eXBlKTsKPiArCWtlLT5lbmdp
bmUgPSBlbmdpbmU7Cj4gKwo+ICsJaWYgKGtvYmplY3RfYWRkKCZrZS0+YmFzZSwgZGlyLCAiJXMi
LCBlbmdpbmUtPm5hbWUpKSB7Cj4gKwkJa29iamVjdF9wdXQoJmtlLT5iYXNlKTsKPiArCQlyZXR1
cm4gTlVMTDsKPiArCX0KPiArCj4gKwlyZXR1cm4gJmtlLT5iYXNlOwo+ICt9Cj4gKwo+ICt2b2lk
IGludGVsX2VuZ2luZXNfYWRkX3N5c2ZzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+
ICt7Cj4gKwlzdGF0aWMgY29uc3Qgc3RydWN0IGF0dHJpYnV0ZSAqZmlsZXNbXSA9IHsKPiArCQkm
bmFtZV9hdHRyLmF0dHIsCj4gKwkJJmNsYXNzX2F0dHIuYXR0ciwKPiArCQkmaW5zdF9hdHRyLmF0
dHIsCj4gKwkJJm1taW9fYXR0ci5hdHRyLAo+ICsJfTsKPiArCj4gKwlzdHJ1Y3QgZGV2aWNlICpr
ZGV2ID0gaTkxNS0+ZHJtLnByaW1hcnktPmtkZXY7Cj4gKwlzdHJ1Y3QgaW50ZWxfZW5naW5lX2Nz
ICplbmdpbmU7Cj4gKwlzdHJ1Y3Qga29iamVjdCAqZGlyOwo+ICsKPiArCWRpciA9IGtvYmplY3Rf
Y3JlYXRlX2FuZF9hZGQoImVuZ2luZSIsICZrZGV2LT5rb2JqKTsKPiArCWlmICghZGlyKQo+ICsJ
CXJldHVybjsKPiArCj4gKwlmb3JfZWFjaF91YWJpX2VuZ2luZShlbmdpbmUsIGk5MTUpIHsKPiAr
CQlzdHJ1Y3Qga29iamVjdCAqa29iajsKPiArCj4gKwkJa29iaiA9IGtvYmpfZW5naW5lKGRpciwg
ZW5naW5lKTsKPiArCQlpZiAoIWtvYmopCj4gKwkJCWNvbnRpbnVlOwoKQ291bGQgYmUgY29uc2lz
dGVudCBhbmQgbG9nIGFuIGVycm9yIGluIHRoaXMgY2FzZSBhcyB3ZWxsLgoKPiArCj4gKwkJaWYg
KHN5c2ZzX2NyZWF0ZV9maWxlcyhrb2JqLCBmaWxlcykpIHsKPiArCQkJZGV2X2VycihrZGV2LCAi
RmFpbGVkIHRvIGFkZCBzeXNmcyBlbmdpbmUgJyVzJ1xuIiwKPiArCQkJCWVuZ2luZS0+bmFtZSk7
Cj4gKwkJCWJyZWFrOwoKTGVha3Mga29iai4KCj4gKwkJfQo+ICsJfQo+ICt9Cj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9zeXNmcy5oIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3N5c2ZzLmgKPiBuZXcgZmlsZSBtb2RlIDEw
MDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uZWY0NGE3NDViNzBhCj4gLS0tIC9kZXYvbnVsbAo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9zeXNmcy5oCj4gQEAg
LTAsMCArMSwxNCBAQAo+ICsvKgo+ICsgKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCj4g
KyAqCj4gKyAqIENvcHlyaWdodCDCqSAyMDE5IEludGVsIENvcnBvcmF0aW9uCj4gKyAqLwo+ICsK
PiArI2lmbmRlZiBJTlRFTF9FTkdJTkVfU1lTRlNfSAo+ICsjZGVmaW5lIElOVEVMX0VOR0lORV9T
WVNGU19ICj4gKwo+ICtzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZTsKPiArCj4gK3ZvaWQgaW50ZWxf
ZW5naW5lc19hZGRfc3lzZnMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwo+ICsKPiAr
I2VuZGlmIC8qIElOVEVMX0VOR0lORV9TWVNGU19IICovCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfc3lzZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3lz
ZnMuYwo+IGluZGV4IGQ4YTNiMTgwYzA4NC4uNmI4OGQ5MzQ5MjdhIDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3lzZnMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfc3lzZnMuYwo+IEBAIC0zMCw2ICszMCw4IEBACj4gICAjaW5jbHVkZSA8bGludXgv
c3RhdC5oPgo+ICAgI2luY2x1ZGUgPGxpbnV4L3N5c2ZzLmg+Cj4gICAKPiArI2luY2x1ZGUgImd0
L2ludGVsX2VuZ2luZV9zeXNmcy5oIgo+ICsKPiAgICNpbmNsdWRlICJpOTE1X2Rydi5oIgo+ICAg
I2luY2x1ZGUgImk5MTVfc3lzZnMuaCIKPiAgICNpbmNsdWRlICJpbnRlbF9wbS5oIgo+IEBAIC02
MTgsNiArNjIwLDggQEAgdm9pZCBpOTE1X3NldHVwX3N5c2ZzKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdikKPiAgIAkJRFJNX0VSUk9SKCJSUFMgc3lzZnMgc2V0dXAgZmFpbGVkXG4i
KTsKPiAgIAo+ICAgCWk5MTVfc2V0dXBfZXJyb3JfY2FwdHVyZShrZGV2KTsKPiArCj4gKwlpbnRl
bF9lbmdpbmVzX2FkZF9zeXNmcyhkZXZfcHJpdik7CgpPciBndD8KCj4gICB9Cj4gICAKPiAgIHZv
aWQgaTkxNV90ZWFyZG93bl9zeXNmcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYp
Cj4gCgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
