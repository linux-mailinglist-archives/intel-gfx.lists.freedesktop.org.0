Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77147100BB0
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 19:45:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6FAE6E79C;
	Mon, 18 Nov 2019 18:45:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 897016E79C
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 18:45:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Nov 2019 10:45:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,321,1569308400"; d="scan'208";a="380745913"
Received: from amanna-mobl.gar.corp.intel.com (HELO [10.66.118.148])
 ([10.66.118.148])
 by orsmga005.jf.intel.com with ESMTP; 18 Nov 2019 10:45:25 -0800
To: Manasi Navare <manasi.d.navare@intel.com>
References: <20191115152549.23047-1-animesh.manna@intel.com>
 <20191115152549.23047-5-animesh.manna@intel.com>
 <20191118045845.GC1135@intel.com> <20191118050612.GE1135@intel.com>
From: Animesh Manna <animesh.manna@intel.com>
Message-ID: <adae5f6e-c735-df15-0fc1-bcd530f07bdb@intel.com>
Date: Tue, 19 Nov 2019 00:15:24 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <20191118050612.GE1135@intel.com>
Subject: Re: [Intel-gfx] [RFC 4/7] drm/i915/dp: Notify testapp using uevent
 and debugfs entry
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiAxMS8xOC8yMDE5IDEwOjM2IEFNLCBNYW5hc2kgTmF2YXJlIHdyb3RlOgo+IE9uIFN1biwg
Tm92IDE3LCAyMDE5IGF0IDA4OjU4OjQ1UE0gLTA4MDAsIE1hbmFzaSBOYXZhcmUgd3JvdGU6Cj4+
IE9uIEZyaSwgTm92IDE1LCAyMDE5IGF0IDA4OjU1OjQ2UE0gKzA1MzAsIEFuaW1lc2ggTWFubmEg
d3JvdGU6Cj4+PiBUbyBhbGlnbiB3aXRoIGxpbmsgY29tcGxpYW5jZSBkZXNpZ24gZXhpc3Rpbmcg
aW50ZWxfZHBfY29tcGxpYW5jZQo+Pj4gdG9vbCB3aWxsIGJlIHVzZWQgdG8gZ2V0IHRoZSBwaHkg
cmVxdWVzdCBpbiB1c2Vyc3BhY2UgdGhyb3VnaCB1ZXZlbnQuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1i
eTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+Cj4+IEkgd291bGQgcHJl
ZmVyIHNwbGl0dGluZyB0aGlzIHBhdGNoIHNpbmNlIHNlbmRpbmcgYSB1ZXZlbnQgaXMgbW9yZSBy
ZWxhdGVkCj4+IHRvIHRoZSBQSFkgdGVzdCBwcmVwIGhhbmRsaW5nIGFuZCBkZWJ1Z2ZzIGhhbmRs
aW5nIGNhbiBhbGwgYmUgaW4gYSBzZXBhcmF0ZQo+PiBwYXRjaC4KPj4gSSBwcmVmZXIgdGhpcyBi
ZWNhdXNlIGRlYnVnZnMgbm9kZXMgbWlnaHQgbmVlZCB0byBjaGFuZ2UgaW4gdGhlIGZ1dHVyZSBi
YXNlZAo+PiBvbiBtb3JlIHJlcXVpcmVtZW50cyBvciB0ZXN0aW5nIGZlZWRiYWNrIHNvIGl0cyBi
ZXR0ZXIgZm9yIHRoYXQgdG8gYmUgaW4gc2VwYXJhdGUKPj4gcGF0Y2guCj4+Cj4+IHlvdSBjb3Vs
ZCBhZGQgdGhlIGhvdHBsdWcgZXZlbnQgc2VuZGluZyBwYXJ0IHRvIHRoZSBwcmVwIHBhdGNoICgz
LzcpIGFuZCBtZW50aW9uIHRoYXQKPj4gaW4gdGhlIGNvbW1pdCBtZXNzYWdlCgpTdXJlLgo+Pgo+
PiBEZWJ1Z2ZzIHBhcnQgbG9va3MgZ29vZCB0byBtZS4gSGF2ZSB5b3UgdGVzdGVkIHRoZSBkZWJ1
Z2ZzIG5vZGVzIGFuZCB2YWxpZGF0ZWQgaWYgdGhpcwo+PiBpbmZvcm1hdGlvbiBpcyBiZWluZyB3
cml0dGVuIGluIHRoZSBjb3JyZWN0IGZvcm0/CgpUZXN0ZWQgdGhlIHRlc3QtdHlwZSBlbnRyeSwg
cGxhbm5pbmcgdG8gYWRkIGEgbmV3bGluZSBjaGFyLCBvdGhlcndpc2UgCndvcmtpbmcuCgo+Pgo+
PiBBZnRlciB0aGUgc3BsaXQgYW5kIHZhbGlkYXRpb24gb2YgZGVidWdzIG5vZGVzOgo+Pgo+PiBB
Y2tlZC1ieTogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KClRoYW5r
cy4KPj4KPj4gTWFuYXNpCj4+Cj4+PiAtLS0KPj4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5jIHwgIDYgKysrKy0tCj4+PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZGVidWdmcy5jICAgICB8IDEwICsrKysrKysrKysKPj4+ICAgMiBmaWxlcyBjaGFuZ2VkLCAx
NCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMKPj4+IGluZGV4IDMzOGQzNzQ0YzVkNS4uYTJiODYwY2YzYjkz
IDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
Cj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPj4+IEBA
IC01Mjg4LDggKzUyODgsMTAgQEAgaW50ZWxfZHBfc2hvcnRfcHVsc2Uoc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCkKPj4+ICAgCj4+PiAgIAlpbnRlbF9wc3Jfc2hvcnRfcHVsc2UoaW50ZWxfZHAp
Owo+Pj4gICAKPj4+IC0JaWYgKGludGVsX2RwLT5jb21wbGlhbmNlLnRlc3RfdHlwZSA9PSBEUF9U
RVNUX0xJTktfVFJBSU5JTkcpIHsKPj4+IC0JCURSTV9ERUJVR19LTVMoIkxpbmsgVHJhaW5pbmcg
Q29tcGxpYW5jZSBUZXN0IHJlcXVlc3RlZFxuIik7Cj4+PiArCWlmIChpbnRlbF9kcC0+Y29tcGxp
YW5jZS50ZXN0X3R5cGUgPT0gRFBfVEVTVF9MSU5LX1RSQUlOSU5HIHx8Cj4+PiArCSAgICBpbnRl
bF9kcC0+Y29tcGxpYW5jZS50ZXN0X3R5cGUgPT0KPj4+ICsJICAgIERQX1RFU1RfTElOS19QSFlf
VEVTVF9QQVRURVJOKSB7Cj4+PiArCQlEUk1fREVCVUdfS01TKCJDb21wbGlhbmNlIFRlc3QgcmVx
dWVzdGVkXG4iKTsKPiBPbmUgbW9yZSBjaGFuZ2UgSSB0aGluayBoZXJlIHdvdWxkIGJlIGdvb2Qg
SU1PIGZvciBkZWJ1Z2dpbmcgaXMgdGhhdAo+IHlvdSBzaG91bGQgcHJpbnQgdGVzdF90eXBlIGlu
IERFQlVHX0tNUwoKU3VyZS4KClJlZ2FyZHMsCkFuaW1lc2gKPgo+IE1hbmFzaQo+Cj4+PiAgIAkJ
LyogU2VuZCBhIEhvdHBsdWcgVWV2ZW50IHRvIHVzZXJzcGFjZSB0byBzdGFydCBtb2Rlc2V0ICov
Cj4+PiAgIAkJZHJtX2ttc19oZWxwZXJfaG90cGx1Z19ldmVudCgmZGV2X3ByaXYtPmRybSk7Cj4+
PiAgIAl9Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2Zz
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwo+Pj4gaW5kZXggY2FiNjMy
NzkxZjczLi5lOGIxYThjMTAxNWEgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2RlYnVnZnMuYwo+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1
Z2ZzLmMKPj4+IEBAIC0zMjEyLDYgKzMyMTIsMTYgQEAgc3RhdGljIGludCBpOTE1X2Rpc3BsYXlw
b3J0X3Rlc3RfZGF0YV9zaG93KHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqZGF0YSkKPj4+ICAg
CQkJCQkgICBpbnRlbF9kcC0+Y29tcGxpYW5jZS50ZXN0X2RhdGEudmRpc3BsYXkpOwo+Pj4gICAJ
CQkJc2VxX3ByaW50ZihtLCAiYnBjOiAldVxuIiwKPj4+ICAgCQkJCQkgICBpbnRlbF9kcC0+Y29t
cGxpYW5jZS50ZXN0X2RhdGEuYnBjKTsKPj4+ICsJCQl9IGVsc2UgaWYgKGludGVsX2RwLT5jb21w
bGlhbmNlLnRlc3RfdHlwZSA9PQo+Pj4gKwkJCQkgICBEUF9URVNUX0xJTktfUEhZX1RFU1RfUEFU
VEVSTikgewo+Pj4gKwkJCQlzZXFfcHJpbnRmKG0sICJwYXR0ZXJuOiAlZFxuIiwKPj4+ICsJCQkJ
CSAgIGludGVsX2RwLT5jb21wbGlhbmNlLnRlc3RfZGF0YS5waHl0ZXN0LnBoeV9wYXR0ZXJuKTsK
Pj4+ICsJCQkJc2VxX3ByaW50ZihtLCAiTnVtYmVyIG9mIGxhbmVzOiAlZFxuIiwKPj4+ICsJCQkJ
CSAgIGludGVsX2RwLT5jb21wbGlhbmNlLnRlc3RfZGF0YS5waHl0ZXN0Lm51bV9sYW5lcyk7Cj4+
PiArCQkJCXNlcV9wcmludGYobSwgIkxpbmsgUmF0ZTogJWRcbiIsCj4+PiArCQkJCQkgICBpbnRl
bF9kcC0+Y29tcGxpYW5jZS50ZXN0X2RhdGEucGh5dGVzdC5saW5rX3JhdGUpOwo+Pj4gKwkJCQlz
ZXFfcHJpbnRmKG0sICJsZXZlbDogJTAyeFxuIiwKPj4+ICsJCQkJCSAgIGludGVsX2RwLT50cmFp
bl9zZXRbMF0pOwo+Pj4gICAJCQl9Cj4+PiAgIAkJfSBlbHNlCj4+PiAgIAkJCXNlcV9wdXRzKG0s
ICIwIik7Cj4+PiAtLSAKPj4+IDIuMjIuMAo+Pj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+PiBJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
