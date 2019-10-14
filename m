Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F61D690F
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 20:04:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4317A6E595;
	Mon, 14 Oct 2019 18:04:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A3FE6E595
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 18:04:25 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Oct 2019 11:04:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,296,1566889200"; d="scan'208";a="198367480"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.11.83])
 by orsmga003.jf.intel.com with ESMTP; 14 Oct 2019 11:04:24 -0700
Date: Mon, 14 Oct 2019 11:04:24 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Message-ID: <20191014180424.hm5t2pwj55rf5ar2@ldmartin-desk1>
References: <20191011010907.103309-1-lucas.demarchi@intel.com>
 <20191011010907.103309-3-lucas.demarchi@intel.com>
 <20191011114812.GJ1208@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011114812.GJ1208@intel.com>
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915: cleanup unused returns on
 DP-MST
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBPY3QgMTEsIDIwMTkgYXQgMDI6NDg6MTJQTSArMDMwMCwgVmlsbGUgU3lyasOkbMOk
IHdyb3RlOgo+T24gVGh1LCBPY3QgMTAsIDIwMTkgYXQgMDY6MDk6MDJQTSAtMDcwMCwgTHVjYXMg
RGUgTWFyY2hpIHdyb3RlOgo+PiBUaG9zZSBpbml0IGZ1bmN0aW9ucyBtYXJrIHRoZWlyIHN1Y2Nl
c3MgaW4gdGhlIGludGVsX2RpZ19wb3J0Cj4+IHN0cnVjdCwgdGhlIHJldHVybiB2YWx1ZXMgYXJl
IG5vdCByZWFsbHkgdXNlZC4KPj4KPj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxs
dWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4+IC0tLQo+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcF9tc3QuYyB8IDExICsrKysrLS0tLS0tCj4+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5oIHwgIDIgKy0KPj4gIDIgZmlsZXMgY2hhbmdl
ZCwgNiBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKPj4gaW5kZXggMjIwM2JlMjhlYTAxLi5jMmJi
YmExZWZmYzEgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHBfbXN0LmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cF9tc3QuYwo+PiBAQCAtNjM0LDcgKzYzNCw3IEBAIGludGVsX2RwX2NyZWF0ZV9mYWtlX21zdF9l
bmNvZGVyKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0LCBlbnVtCj4+
Cj4+ICB9Cj4+Cj4+IC1zdGF0aWMgYm9vbAo+PiArc3RhdGljIHZvaWQKPj4gIGludGVsX2RwX2Ny
ZWF0ZV9mYWtlX21zdF9lbmNvZGVycyhzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICppbnRlbF9k
aWdfcG9ydCkKPj4gIHsKPj4gIAlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gJmludGVsX2Rp
Z19wb3J0LT5kcDsKPj4gQEAgLTY0Myw3ICs2NDMsNiBAQCBpbnRlbF9kcF9jcmVhdGVfZmFrZV9t
c3RfZW5jb2RlcnMoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQpCj4+
Cj4+ICAJZm9yX2VhY2hfcGlwZShkZXZfcHJpdiwgcGlwZSkKPj4gIAkJaW50ZWxfZHAtPm1zdF9l
bmNvZGVyc1twaXBlXSA9IGludGVsX2RwX2NyZWF0ZV9mYWtlX21zdF9lbmNvZGVyKGludGVsX2Rp
Z19wb3J0LCBwaXBlKTsKPj4gLQlyZXR1cm4gdHJ1ZTsKPj4gIH0KPj4KPj4gIGludAo+PiBAQCAt
NjUyLDE0ICs2NTEsMTMgQEAgaW50ZWxfZHBfbXN0X2VuY29kZXJfYWN0aXZlX2xpbmtzKHN0cnVj
dCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0KQo+PiAgCXJldHVybiBpbnRlbF9k
aWdfcG9ydC0+ZHAuYWN0aXZlX21zdF9saW5rczsKPj4gIH0KPj4KPj4gLWludAo+PiArdm9pZAo+
PiAgaW50ZWxfZHBfbXN0X2VuY29kZXJfaW5pdChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpp
bnRlbF9kaWdfcG9ydCwgaW50IGNvbm5fYmFzZV9pZCkKPj4gIHsKPj4gIAlzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwID0gJmludGVsX2RpZ19wb3J0LT5kcDsKPj4gIAlzdHJ1Y3QgZHJtX2Rldmlj
ZSAqZGV2ID0gaW50ZWxfZGlnX3BvcnQtPmJhc2UuYmFzZS5kZXY7Cj4+ICAJaW50IHJldDsKPj4K
Pj4gLQlpbnRlbF9kcC0+Y2FuX21zdCA9IHRydWU7Cj4+ICAJaW50ZWxfZHAtPm1zdF9tZ3IuY2Jz
ID0gJm1zdF9jYnM7Cj4+Cj4+ICAJLyogY3JlYXRlIGVuY29kZXJzICovCj4+IEBAIC02NjgsOSAr
NjY2LDEwIEBAIGludGVsX2RwX21zdF9lbmNvZGVyX2luaXQoc3RydWN0IGludGVsX2RpZ2l0YWxf
cG9ydCAqaW50ZWxfZGlnX3BvcnQsIGludCBjb25uX2JhCj4+ICAJCQkJCSAgICZpbnRlbF9kcC0+
YXV4LCAxNiwgMywgY29ubl9iYXNlX2lkKTsKPj4gIAlpZiAocmV0KSB7Cj4+ICAJCWludGVsX2Rw
LT5jYW5fbXN0ID0gZmFsc2U7Cj4+IC0JCXJldHVybiByZXQ7Cj4+ICsJCXJldHVybjsKPj4gIAl9
Cj4+IC0JcmV0dXJuIDA7Cj4KPkkgZG9uJ3QgcmVhbGx5IGxpa2UgdGhlIHNpbGVudCBmYWlsdXJl
IG1vZGUuIE1heWJlIHdlIHNob3VsZCBqdXN0IGZhaWwKPnRoZSBlbnRpcmUgY29ubmVjdG9yIGlu
aXQgd2hlbiB0aGlzIGhhcHBlbnM/Cgpvay4gRm9yIG5vdyBJIHdpbGwganVzdCBkcm9wIHRoaXMg
cGF0Y2guCgpMdWNhcyBEZSBNYXJjaGkKCj4KPj4gKwo+PiArCWludGVsX2RwLT5jYW5fbXN0ID0g
dHJ1ZTsKPj4gIH0KPj4KPj4gIHZvaWQKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwX21zdC5oCj4+IGluZGV4IGY2NjBhZDgwZGIwNC4uZjI0NzhjMTdhOGZkIDEwMDY0
NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5oCj4+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmgKPj4gQEAg
LTgsNyArOCw3IEBACj4+Cj4+ICBzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0Owo+Pgo+PiAtaW50
IGludGVsX2RwX21zdF9lbmNvZGVyX2luaXQoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50
ZWxfZGlnX3BvcnQsIGludCBjb25uX2lkKTsKPj4gK3ZvaWQgaW50ZWxfZHBfbXN0X2VuY29kZXJf
aW5pdChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICppbnRlbF9kaWdfcG9ydCwgaW50IGNvbm5f
aWQpOwo+PiAgdm9pZCBpbnRlbF9kcF9tc3RfZW5jb2Rlcl9jbGVhbnVwKHN0cnVjdCBpbnRlbF9k
aWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0KTsKPj4gIGludCBpbnRlbF9kcF9tc3RfZW5jb2Rl
cl9hY3RpdmVfbGlua3Moc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQp
Owo+Pgo+PiAtLQo+PiAyLjIzLjAKPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+PiBJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cj4KPi0tIAo+VmlsbGUgU3lyasOkbMOkCj5JbnRlbApf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
