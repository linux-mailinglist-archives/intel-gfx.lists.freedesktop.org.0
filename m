Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C773DF8A2
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 01:27:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBAB989A32;
	Mon, 21 Oct 2019 23:27:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83EC589A32
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Oct 2019 23:27:08 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Oct 2019 16:27:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,325,1566889200"; d="scan'208";a="200591292"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga003.jf.intel.com with ESMTP; 21 Oct 2019 16:27:07 -0700
Date: Mon, 21 Oct 2019 16:29:24 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Animesh Manna <animesh.manna@intel.com>
Message-ID: <20191021232924.GC29989@intel.com>
References: <20191003150653.15881-1-animesh.manna@intel.com>
 <20191003150653.15881-4-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191003150653.15881-4-animesh.manna@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [RFC 3/6] drm/i915/dp: Preparation for DP phy
 compliance auto test.
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBPY3QgMDMsIDIwMTkgYXQgMDg6MzY6NTBQTSArMDUzMCwgQW5pbWVzaCBNYW5uYSB3
cm90ZToKPiBEdXJpbmcgRFAgcGh5IGNvbXBsaWFuY2UgYXV0byB0ZXN0IG1vZGUsIHNpbmsgd2ls
bCByZXF1ZXN0Cj4gY29tYmluYXRpb24gb2YgZGlmZmVyZW50IHRlc3QgcGF0dGVybiB3aXRoIGRp
ZmZlcm50IGxldmVsIG9mCj4gdnN3aW5nLCBwcmUtZW1waGFzaXMuIEZ1bmN0aW9uIGFkZGVkIHRv
IHByZXBhcmUgZm9yIGl0Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1l
c2gubWFubmFAaW50ZWwuY29tPgoKVGhpcyBwYXRjaCBsb29rcyBnb29kIHRvIG1lLCBjb3VsZCB5
b3UgYWRkIGEgY29tbWVudCBmb3Igd2h5CmxpbmtfbXN0IGlzIHNldCB0byBmYWxzZT8KCk1hbmFz
aQoKPiAtLS0KPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oICAg
IHwgIDEgKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgICAgICAg
fCAyOSArKysrKysrKysrKysrKysrKysrCj4gIDIgZmlsZXMgY2hhbmdlZCwgMzAgaW5zZXJ0aW9u
cygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV90eXBlcy5oCj4gaW5kZXggOTc2NjY5ZjAxYThjLi41ZDZkNDRmYTI1OTQgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMu
aAo+IEBAIC0xMTQyLDYgKzExNDIsNyBAQCBzdHJ1Y3QgaW50ZWxfZHBfY29tcGxpYW5jZV9kYXRh
IHsKPiAgCXU4IHZpZGVvX3BhdHRlcm47Cj4gIAl1MTYgaGRpc3BsYXksIHZkaXNwbGF5Owo+ICAJ
dTggYnBjOwo+ICsJc3RydWN0IGRybV9kcF9waHlfdGVzdF9wYXJhbXMgcGh5dGVzdDsKPiAgfTsK
PiAgCj4gIHN0cnVjdCBpbnRlbF9kcF9jb21wbGlhbmNlIHsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jCj4gaW5kZXggN2QzM2UyMGRmYzg3Li5hMTkxNDFmYzY3MmUgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gQEAgLTQ3MzgsOSAr
NDczOCwzOCBAQCBzdGF0aWMgdTggaW50ZWxfZHBfYXV0b3Rlc3RfZWRpZChzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwKQo+ICAJcmV0dXJuIHRlc3RfcmVzdWx0Owo+ICB9Cj4gIAo+ICtzdGF0aWMg
dTggaW50ZWxfZHBfcHJlcGFyZV9waHl0ZXN0KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCj4g
K3sKPiArCXN0cnVjdCBkcm1fZHBfcGh5X3Rlc3RfcGFyYW1zICpkYXRhID0KPiArCQkmaW50ZWxf
ZHAtPmNvbXBsaWFuY2UudGVzdF9kYXRhLnBoeXRlc3Q7Cj4gKwl1OCBsaW5rX3N0YXR1c1tEUF9M
SU5LX1NUQVRVU19TSVpFXTsKPiArCj4gKwlpZiAoIWRybV9kcF9nZXRfcGh5X3Rlc3RfcGF0dGVy
bigmaW50ZWxfZHAtPmF1eCwgZGF0YSkpIHsKPiArCQlEUk1fREVCVUdfS01TKCJEUCBQaHkgVGVz
dCBwYXR0ZXJuIEFVWCByZWFkIGZhaWx1cmVcbiIpOwo+ICsJCXJldHVybiBEUF9URVNUX05BSzsK
PiArCX0KPiArCj4gKwlpZiAoIWludGVsX2RwX2dldF9saW5rX3N0YXR1cyhpbnRlbF9kcCwgbGlu
a19zdGF0dXMpKSB7Cj4gKwkJRFJNX0RFQlVHX0tNUygiZmFpbGVkIHRvIGdldCBsaW5rIHN0YXR1
c1xuIik7Cj4gKwkJcmV0dXJuIERQX1RFU1RfTkFLOwo+ICsJfQo+ICsKPiArCWludGVsX2RwLT5s
aW5rX21zdCA9IGZhbHNlOwo+ICsKPiArCS8qIHJldHJpZXZlIHZzd2luZyAmIHByZS1lbXBoYXNp
cyBzZXR0aW5nICovCj4gKwlpbnRlbF9nZXRfYWRqdXN0X3RyYWluKGludGVsX2RwLCBsaW5rX3N0
YXR1cyk7Cj4gKwo+ICsJcmV0dXJuIERQX1RFU1RfQUNLOwo+ICt9Cj4gKwo+ICBzdGF0aWMgdTgg
aW50ZWxfZHBfYXV0b3Rlc3RfcGh5X3BhdHRlcm4oc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkK
PiAgewo+ICAJdTggdGVzdF9yZXN1bHQgPSBEUF9URVNUX05BSzsKPiArCj4gKwl0ZXN0X3Jlc3Vs
dCA9IGludGVsX2RwX3ByZXBhcmVfcGh5dGVzdChpbnRlbF9kcCk7Cj4gKwlpZiAodGVzdF9yZXN1
bHQgIT0gRFBfVEVTVF9BQ0spCj4gKwkJRFJNX0VSUk9SKCJQaHkgdGVzdCBwcmVwYXJhdGlvbiBm
YWlsZWRcbiIpOwo+ICsKPiAgCXJldHVybiB0ZXN0X3Jlc3VsdDsKPiAgfQo+ICAKPiAtLSAKPiAy
LjIyLjAKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
