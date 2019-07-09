Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7CF63562
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 14:10:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B27326E056;
	Tue,  9 Jul 2019 12:10:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE40B6E056
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 12:10:32 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 05:10:32 -0700
X-IronPort-AV: E=Sophos;i="5.63,470,1557212400"; d="scan'208";a="176477165"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com) ([10.7.196.65])
 by orsmga002-auth.jf.intel.com with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Jul 2019 05:10:32 -0700
Date: Tue, 9 Jul 2019 05:11:08 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190709121108.GF16315@intel.com>
References: <20190708231629.9296-1-lucas.demarchi@intel.com>
 <20190708231629.9296-17-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190708231629.9296-17-lucas.demarchi@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH v2 16/25] drm/i915/tgl: port to ddc pin
 mapping
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

T24gTW9uLCBKdWwgMDgsIDIwMTkgYXQgMDQ6MTY6MjBQTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IEZyb206IE1haGVzaCBLdW1hciA8bWFoZXNoMS5rdW1hckBpbnRlbC5jb20+Cj4g
Cj4gQ3JlYXRlIGEgaGVscGVyIGZ1bmN0aW9uIHRvIGdldCBkZGMgcGluIGFjY29yZGluZyB0byBw
b3J0IG51bWJlci4KCkNvdWxkIHlvdSBwbGVhc2UgZXhwbGFpbiB3aHkgd2UgY2FuJ3Qgc2ltcGx5
IHJldXNlIHRoZSBpY2wgb25lPwoKSSBjb3VsZG4ndCBmaW5kIGEgbmV3IHRhYmxlIGZvciB0Z2wg
b24gYnNwZWMuLi4KCj4gCj4gQ2M6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGlu
dGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBNYWhlc2ggS3VtYXIgPG1haGVzaDEua3VtYXJAaW50
ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlA
aW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hk
bWkuYyB8IDE2ICsrKysrKysrKysrKysrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlv
bnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2hkbWkuYwo+IGluZGV4IDBlYmVjNjliYmJmYy4uM2IzM2U3NjI2ZDdjIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMKPiBAQCAtMjk4MSw2ICsyOTgx
LDE4IEBAIHN0YXRpYyB1OCBtY2NfcG9ydF90b19kZGNfcGluKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiwgZW51bSBwb3J0IHBvcnQpCj4gIAlyZXR1cm4gZGRjX3BpbjsKPiAgfQo+
ICAKPiArc3RhdGljIHU4IHRncF9wb3J0X3RvX2RkY19waW4oc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2LAo+ICsJCQkgICAgICBlbnVtIHBvcnQgcG9ydCkKPiArewo+ICsJaWYgKGlu
dGVsX3BvcnRfaXNfY29tYm9waHkoZGV2X3ByaXYsIHBvcnQpKQo+ICsJCXJldHVybiBHTUJVU19Q
SU5fMV9CWFQgKyBwb3J0Owo+ICsJZWxzZSBpZiAoaW50ZWxfcG9ydF9pc190YyhkZXZfcHJpdiwg
cG9ydCkpCj4gKwkJcmV0dXJuIEdNQlVTX1BJTl85X1RDMV9JQ1AgKyBpbnRlbF9wb3J0X3RvX3Rj
KGRldl9wcml2LCBwb3J0KTsKCm9rYXksIHRoaXMgc2VlbXMgYmV0dGVyIHRoYW4gdGhlIHRhYmxl
IHdlIGhhdmUgb24gaWNsIGZ1bmMsCmJ1dCBjb3VsZG4ndCB3ZSBqdXN0IGNoYW5nZSB0aGUgaWNs
IG9uZT8KCj4gKwo+ICsJV0FSTigxLCAiVW5rbm93biBwb3J0OiVjXG4iLCBwb3J0X25hbWUocG9y
dCkpOwo+ICsJcmV0dXJuIEdNQlVTX1BJTl8yX0JYVDsKPiArfQo+ICsKPiAgc3RhdGljIHU4IGc0
eF9wb3J0X3RvX2RkY19waW4oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ICAJ
CQkgICAgICBlbnVtIHBvcnQgcG9ydCkKPiAgewo+IEBAIC0zMDE3LDcgKzMwMjksOSBAQCBzdGF0
aWMgdTggaW50ZWxfaGRtaV9kZGNfcGluKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diwKPiAgCQlyZXR1cm4gaW5mby0+YWx0ZXJuYXRlX2RkY19waW47Cj4gIAl9Cj4gIAo+IC0JaWYg
KEhBU19QQ0hfTUNDKGRldl9wcml2KSkKPiArCWlmIChIQVNfUENIX1RHUChkZXZfcHJpdikpCj4g
KwkJZGRjX3BpbiA9IHRncF9wb3J0X3RvX2RkY19waW4oZGV2X3ByaXYsIHBvcnQpOwo+ICsJZWxz
ZSBpZiAoSEFTX1BDSF9NQ0MoZGV2X3ByaXYpKQo+ICAJCWRkY19waW4gPSBtY2NfcG9ydF90b19k
ZGNfcGluKGRldl9wcml2LCBwb3J0KTsKPiAgCWVsc2UgaWYgKEhBU19QQ0hfSUNQKGRldl9wcml2
KSkKPiAgCQlkZGNfcGluID0gaWNsX3BvcnRfdG9fZGRjX3BpbihkZXZfcHJpdiwgcG9ydCk7Cj4g
LS0gCj4gMi4yMS4wCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
