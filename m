Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA8564584
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 13:00:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31A5089F2E;
	Wed, 10 Jul 2019 11:00:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C40ED89F2E
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 11:00:29 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 04:00:29 -0700
X-IronPort-AV: E=Sophos;i="5.63,474,1557212400"; d="scan'208";a="159732704"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com) ([10.7.196.65])
 by orsmga008-auth.jf.intel.com with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Jul 2019 04:00:28 -0700
Date: Wed, 10 Jul 2019 04:01:05 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190710110105.GJ16315@intel.com>
References: <20190709162853.trljxpm6sl7vn3os@ldmartin-desk1>
 <20190709170044.29489-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190709170044.29489-1-lucas.demarchi@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH v3 16/25] drm/i915/tgl: port to ddc pin
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

T24gVHVlLCBKdWwgMDksIDIwMTkgYXQgMTA6MDA6NDRBTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IE1ha2UgdGhlIGljbCBmdW5jdGlvbiBnZW5lcmljIHNvIGl0IGlzIGJhc2VkIG9u
IHBoeSB0eXBlIGFuZCBjYW4gYmUKPiBhcHBsaWVkIHRvIHRnbCBhcyB3ZWxsLgo+IAo+IEkgY2hl
Y2tlZCBpZiB0aGlzIGNvdWxkIG5vdCBhcHBseSB0byBFSEwgYXMgd2VsbCwgYnV0IHVuZm9ydHVu
YXRlbHkKPiB0aGVyZSB0aGUgSFBEIGFuZCBEREMvR01CVVMgcGlucyBmb3IgRERJIEMgYXJlIG1h
cHBlZCB0byBUeXBlQyBQb3J0IDEKPiBldmVuIHRob3VnaCBpdCBkb2Vzbid0IGhhdmUgVEMgcGh5
Lgo+IAo+IHYyOiBkb24ndCBhZGQgYSBzZXBhcmF0ZSBmdW5jdGlvbiBmb3IgVEdMLCBidXQgcmF0
aGVyIHJldXNlIHRoZSBJQ0wgb25lCj4gICAgIChzdWdnZXN0ZWQgYnkgUm9kcmlnbykKPiAKPiBD
YzogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgo+IENjOiBSb2Ry
aWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTHVjYXMg
RGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+CgpUaGFua3MKClJldmlld2VkLWJ5
OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+CgoKPiAtLS0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMgfCAzNCArKysrKy0tLS0tLS0tLS0t
LS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAyNyBkZWxldGlvbnMo
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9o
ZG1pLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYwo+IGluZGV4
IDBlYmVjNjliYmJmYy4uZGZkY2QyNWVkYTAyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9oZG1pLmMKPiBAQCAtMjkzMCwzMyArMjkzMCwxMyBAQCBzdGF0aWMgdTgg
Y25wX3BvcnRfdG9fZGRjX3BpbihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4g
IAo+ICBzdGF0aWMgdTggaWNsX3BvcnRfdG9fZGRjX3BpbihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYsIGVudW0gcG9ydCBwb3J0KQo+ICB7Cj4gLQl1OCBkZGNfcGluOwo+ICsJaWYg
KGludGVsX3BvcnRfaXNfY29tYm9waHkoZGV2X3ByaXYsIHBvcnQpKQo+ICsJCXJldHVybiBHTUJV
U19QSU5fMV9CWFQgKyBwb3J0Owo+ICsJZWxzZSBpZiAoaW50ZWxfcG9ydF9pc190YyhkZXZfcHJp
diwgcG9ydCkpCj4gKwkJcmV0dXJuIEdNQlVTX1BJTl85X1RDMV9JQ1AgKyBpbnRlbF9wb3J0X3Rv
X3RjKGRldl9wcml2LCBwb3J0KTsKPiAgCj4gLQlzd2l0Y2ggKHBvcnQpIHsKPiAtCWNhc2UgUE9S
VF9BOgo+IC0JCWRkY19waW4gPSBHTUJVU19QSU5fMV9CWFQ7Cj4gLQkJYnJlYWs7Cj4gLQljYXNl
IFBPUlRfQjoKPiAtCQlkZGNfcGluID0gR01CVVNfUElOXzJfQlhUOwo+IC0JCWJyZWFrOwo+IC0J
Y2FzZSBQT1JUX0M6Cj4gLQkJZGRjX3BpbiA9IEdNQlVTX1BJTl85X1RDMV9JQ1A7Cj4gLQkJYnJl
YWs7Cj4gLQljYXNlIFBPUlRfRDoKPiAtCQlkZGNfcGluID0gR01CVVNfUElOXzEwX1RDMl9JQ1A7
Cj4gLQkJYnJlYWs7Cj4gLQljYXNlIFBPUlRfRToKPiAtCQlkZGNfcGluID0gR01CVVNfUElOXzEx
X1RDM19JQ1A7Cj4gLQkJYnJlYWs7Cj4gLQljYXNlIFBPUlRfRjoKPiAtCQlkZGNfcGluID0gR01C
VVNfUElOXzEyX1RDNF9JQ1A7Cj4gLQkJYnJlYWs7Cj4gLQlkZWZhdWx0Ogo+IC0JCU1JU1NJTkdf
Q0FTRShwb3J0KTsKPiAtCQlkZGNfcGluID0gR01CVVNfUElOXzJfQlhUOwo+IC0JCWJyZWFrOwo+
IC0JfQo+IC0JcmV0dXJuIGRkY19waW47Cj4gKwlXQVJOKDEsICJVbmtub3duIHBvcnQ6JWNcbiIs
IHBvcnRfbmFtZShwb3J0KSk7Cj4gKwlyZXR1cm4gR01CVVNfUElOXzJfQlhUOwo+ICB9Cj4gIAo+
ICBzdGF0aWMgdTggbWNjX3BvcnRfdG9fZGRjX3BpbihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYsIGVudW0gcG9ydCBwb3J0KQo+IEBAIC0zMDE5LDcgKzI5OTksNyBAQCBzdGF0aWMg
dTggaW50ZWxfaGRtaV9kZGNfcGluKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwK
PiAgCj4gIAlpZiAoSEFTX1BDSF9NQ0MoZGV2X3ByaXYpKQo+ICAJCWRkY19waW4gPSBtY2NfcG9y
dF90b19kZGNfcGluKGRldl9wcml2LCBwb3J0KTsKPiAtCWVsc2UgaWYgKEhBU19QQ0hfSUNQKGRl
dl9wcml2KSkKPiArCWVsc2UgaWYgKEhBU19QQ0hfVEdQKGRldl9wcml2KSB8fCBIQVNfUENIX0lD
UChkZXZfcHJpdikpCj4gIAkJZGRjX3BpbiA9IGljbF9wb3J0X3RvX2RkY19waW4oZGV2X3ByaXYs
IHBvcnQpOwo+ICAJZWxzZSBpZiAoSEFTX1BDSF9DTlAoZGV2X3ByaXYpKQo+ICAJCWRkY19waW4g
PSBjbnBfcG9ydF90b19kZGNfcGluKGRldl9wcml2LCBwb3J0KTsKPiAtLSAKPiAyLjIxLjAKPiAK
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVs
LWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
