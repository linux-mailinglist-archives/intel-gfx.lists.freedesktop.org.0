Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A52C0FFD92
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 05:44:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5772F89FC3;
	Mon, 18 Nov 2019 04:44:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54FBC89FC3
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 04:44:36 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Nov 2019 20:44:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,319,1569308400"; d="scan'208";a="196006978"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga007.jf.intel.com with ESMTP; 17 Nov 2019 20:44:35 -0800
Date: Sun, 17 Nov 2019 20:47:41 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: Animesh Manna <animesh.manna@intel.com>
Message-ID: <20191118044740.GB1135@intel.com>
References: <20191115152549.23047-1-animesh.manna@intel.com>
 <20191115152549.23047-4-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191115152549.23047-4-animesh.manna@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [RFC 3/7] drm/i915/dp: Preparation for DP phy
 compliance auto test
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
Cc: jani.nikula@intel.com, nidhi1.gupta@intel.com,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBOb3YgMTUsIDIwMTkgYXQgMDg6NTU6NDVQTSArMDUzMCwgQW5pbWVzaCBNYW5uYSB3
cm90ZToKPiBEdXJpbmcgRFAgcGh5IGNvbXBsaWFuY2UgYXV0byB0ZXN0IG1vZGUsIHNpbmsgd2ls
bCByZXF1ZXN0Cj4gY29tYmluYXRpb24gb2YgZGlmZmVyZW50IHRlc3QgcGF0dGVybiB3aXRoIGRp
ZmZlcm50IGxldmVsIG9mCj4gdnN3aW5nLCBwcmUtZW1waGFzaXMuIEZ1bmN0aW9uIGFkZGVkIHRv
IHByZXBhcmUgZm9yIGl0Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1l
c2gubWFubmFAaW50ZWwuY29tPgoKVGhpcyBsb29rcyBnb29kIHRvIG1lLAoKUmV2aWV3ZWQtYnk6
IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+CgpNYW5hc2kKCj4gLS0t
Cj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICAxICsK
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jICAgICAgIHwgMjQgKysr
KysrKysrKysrKysrKysrKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKykKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlw
ZXMuaAo+IGluZGV4IDgzZWEwNDE0OWI3Ny4uYzE3ODY2ZjEyNmM5IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKPiBAQCAt
MTIwNSw2ICsxMjA1LDcgQEAgc3RydWN0IGludGVsX2RwX2NvbXBsaWFuY2VfZGF0YSB7Cj4gIAl1
OCB2aWRlb19wYXR0ZXJuOwo+ICAJdTE2IGhkaXNwbGF5LCB2ZGlzcGxheTsKPiAgCXU4IGJwYzsK
PiArCXN0cnVjdCBkcm1fZHBfcGh5X3Rlc3RfcGFyYW1zIHBoeXRlc3Q7Cj4gIH07Cj4gIAo+ICBz
dHJ1Y3QgaW50ZWxfZHBfY29tcGxpYW5jZSB7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYwo+IGluZGV4IGNjOGUwZDFhNzNhZi4uMzM4ZDM3NDRjNWQ1IDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+IEBAIC00OTM2LDkgKzQ5MzYsMzMg
QEAgc3RhdGljIHU4IGludGVsX2RwX2F1dG90ZXN0X2VkaWQoc3RydWN0IGludGVsX2RwICppbnRl
bF9kcCkKPiAgCXJldHVybiB0ZXN0X3Jlc3VsdDsKPiAgfQo+ICAKPiArc3RhdGljIHU4IGludGVs
X2RwX3ByZXBhcmVfcGh5dGVzdChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQo+ICt7Cj4gKwlz
dHJ1Y3QgZHJtX2RwX3BoeV90ZXN0X3BhcmFtcyAqZGF0YSA9Cj4gKwkJJmludGVsX2RwLT5jb21w
bGlhbmNlLnRlc3RfZGF0YS5waHl0ZXN0Owo+ICsKPiArCWlmICghZHJtX2RwX2dldF9waHlfdGVz
dF9wYXR0ZXJuKCZpbnRlbF9kcC0+YXV4LCBkYXRhKSkgewo+ICsJCURSTV9ERUJVR19LTVMoIkRQ
IFBoeSBUZXN0IHBhdHRlcm4gQVVYIHJlYWQgZmFpbHVyZVxuIik7Cj4gKwkJcmV0dXJuIERQX1RF
U1RfTkFLOwo+ICsJfQo+ICsKPiArCS8qCj4gKwkgKiBsaW5rX21zdCBpcyBzZXQgdG8gZmFsc2Ug
dG8gYXZvaWQgZXhlY3V0aW5nIG1zdCByZWxhdGVkIGNvZGUKPiArCSAqIGR1cmluZyBjb21wbGlh
bmNlIHRlc3RpbmcuCj4gKwkgKi8KPiArCWludGVsX2RwLT5saW5rX21zdCA9IGZhbHNlOwo+ICsK
PiArCXJldHVybiBEUF9URVNUX0FDSzsKPiArfQo+ICsKPiAgc3RhdGljIHU4IGludGVsX2RwX2F1
dG90ZXN0X3BoeV9wYXR0ZXJuKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCj4gIHsKPiAgCXU4
IHRlc3RfcmVzdWx0ID0gRFBfVEVTVF9OQUs7Cj4gKwo+ICsJdGVzdF9yZXN1bHQgPSBpbnRlbF9k
cF9wcmVwYXJlX3BoeXRlc3QoaW50ZWxfZHApOwo+ICsJaWYgKHRlc3RfcmVzdWx0ICE9IERQX1RF
U1RfQUNLKQo+ICsJCURSTV9FUlJPUigiUGh5IHRlc3QgcHJlcGFyYXRpb24gZmFpbGVkXG4iKTsK
PiArCj4gIAlyZXR1cm4gdGVzdF9yZXN1bHQ7Cj4gIH0KPiAgCj4gLS0gCj4gMi4yMi4wCj4gCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
