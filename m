Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81EA3DF84A
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 00:55:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B30F6E2D5;
	Mon, 21 Oct 2019 22:55:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F5D66E2D5
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Oct 2019 22:55:15 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Oct 2019 15:55:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,325,1566889200"; d="scan'208";a="209485087"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga002.jf.intel.com with ESMTP; 21 Oct 2019 15:55:14 -0700
Date: Mon, 21 Oct 2019 15:57:31 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Animesh Manna <animesh.manna@intel.com>
Message-ID: <20191021225731.GA29989@intel.com>
References: <20191003150653.15881-1-animesh.manna@intel.com>
 <20191003150653.15881-3-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191003150653.15881-3-animesh.manna@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [RFC 2/6] drm/i915/dp: Move vswing/pre-emphasis
 adjustment calculation
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

T24gVGh1LCBPY3QgMDMsIDIwMTkgYXQgMDg6MzY6NDlQTSArMDUzMCwgQW5pbWVzaCBNYW5uYSB3
cm90ZToKPiB2c3dpbmcvcHJlLWVtcGhhc2lzIGFkanVzdG1lbnQgY2FsY3VsYXRpb24gaXMgbmVl
ZGVkIGluIHByb2Nlc3NpbmcKPiBvZiBhdXRvIHBoeSBjb21wbGlhbmNlIHJlcXVlc3Qgb3RoZXIg
dGhhbiBsaW5rIHRyYWluaW5nLCBzbyBtb3ZlZAo+IHRoZSBzYW1lIGZ1bmN0aW9uIGluIGludGVs
X2RwLmMuCj4gCj4gTm8gZnVuY3Rpb25hbCBjaGFuZ2UuCgpZb3UgY291bGQganVzdCBtYWtlIGl0
IGEgbm9uIHN0YXRpYyBmdW5jdGlvbiBpbnN0ZWFkIG9mIG1vdmluZyB0byBpbnRlbF9kcC5jCgpN
YW5hc2kKCj4gCj4gU2lnbmVkLW9mZi1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBp
bnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
YyAgICAgICB8IDMyICsrKysrKysrKysrKysrKysrKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5oICAgICAgIHwgIDMgKysKPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHBfbGlua190cmFpbmluZy5jIHwgMzIgLS0tLS0tLS0tLS0tLS0tLS0tLQo+ICAzIGZp
bGVzIGNoYW5nZWQsIDM1IGluc2VydGlvbnMoKyksIDMyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPiBpbmRleCAxYWEzOWU5MmYwZGYuLjdk
MzNlMjBkZmM4NyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMK
PiBAQCAtNDAyNiw2ICs0MDI2LDM4IEBAIGl2Yl9jcHVfZWRwX3NpZ25hbF9sZXZlbHModTggdHJh
aW5fc2V0KQo+ICAJfQo+ICB9Cj4gIAo+ICt2b2lkCj4gK2ludGVsX2dldF9hZGp1c3RfdHJhaW4o
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKPiArCQkgICAgICAgY29uc3QgdTggKmxpbmtfc3Rh
dHVzKQo+ICt7Cj4gKwl1OCB2ID0gMDsKPiArCXU4IHAgPSAwOwo+ICsJaW50IGxhbmU7Cj4gKwl1
OCB2b2x0YWdlX21heDsKPiArCXU4IHByZWVtcGhfbWF4Owo+ICsKPiArCWZvciAobGFuZSA9IDA7
IGxhbmUgPCBpbnRlbF9kcC0+bGFuZV9jb3VudDsgbGFuZSsrKSB7Cj4gKwkJdTggdGhpc192ID0g
ZHJtX2RwX2dldF9hZGp1c3RfcmVxdWVzdF92b2x0YWdlKGxpbmtfc3RhdHVzLCBsYW5lKTsKPiAr
CQl1OCB0aGlzX3AgPSBkcm1fZHBfZ2V0X2FkanVzdF9yZXF1ZXN0X3ByZV9lbXBoYXNpcyhsaW5r
X3N0YXR1cywgbGFuZSk7Cj4gKwo+ICsJCWlmICh0aGlzX3YgPiB2KQo+ICsJCQl2ID0gdGhpc192
Owo+ICsJCWlmICh0aGlzX3AgPiBwKQo+ICsJCQlwID0gdGhpc19wOwo+ICsJfQo+ICsKPiArCXZv
bHRhZ2VfbWF4ID0gaW50ZWxfZHBfdm9sdGFnZV9tYXgoaW50ZWxfZHApOwo+ICsJaWYgKHYgPj0g
dm9sdGFnZV9tYXgpCj4gKwkJdiA9IHZvbHRhZ2VfbWF4IHwgRFBfVFJBSU5fTUFYX1NXSU5HX1JF
QUNIRUQ7Cj4gKwo+ICsJcHJlZW1waF9tYXggPSBpbnRlbF9kcF9wcmVfZW1waGFzaXNfbWF4KGlu
dGVsX2RwLCB2KTsKPiArCWlmIChwID49IHByZWVtcGhfbWF4KQo+ICsJCXAgPSBwcmVlbXBoX21h
eCB8IERQX1RSQUlOX01BWF9QUkVfRU1QSEFTSVNfUkVBQ0hFRDsKPiArCj4gKwlmb3IgKGxhbmUg
PSAwOyBsYW5lIDwgNDsgbGFuZSsrKQo+ICsJCWludGVsX2RwLT50cmFpbl9zZXRbbGFuZV0gPSB2
IHwgcDsKPiArfQo+ICsKPiAgdm9pZAo+ICBpbnRlbF9kcF9zZXRfc2lnbmFsX2xldmVscyhzdHJ1
Y3QgaW50ZWxfZHAgKmludGVsX2RwKQo+ICB7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuaAo+IGluZGV4IGExOTRiNWI2ZGEwNS4uOGY4MzMzYWZkNDNkIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaAo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaAo+IEBAIC05MSw2ICs5MSw5IEBAIHZv
aWQKPiAgaW50ZWxfZHBfcHJvZ3JhbV9saW5rX3RyYWluaW5nX3BhdHRlcm4oc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCwKPiAgCQkJCSAgICAgICB1OCBkcF90cmFpbl9wYXQpOwo+ICB2b2lkCj4g
K2ludGVsX2dldF9hZGp1c3RfdHJhaW4oc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKPiArCQkg
ICAgICAgY29uc3QgdTggKmxpbmtfc3RhdHVzKTsKPiArdm9pZAo+ICBpbnRlbF9kcF9zZXRfc2ln
bmFsX2xldmVscyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsKPiAgdm9pZCBpbnRlbF9kcF9z
ZXRfaWRsZV9saW5rX3RyYWluKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApOwo+ICB1OAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJh
aW5pbmcuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190cmFp
bmluZy5jCj4gaW5kZXggMmExMTMwZGQxYWQwLi4xZTM4NTg0ZTdkNTYgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcu
Ywo+IEBAIC0zNCwzOCArMzQsNiBAQCBpbnRlbF9kcF9kdW1wX2xpbmtfc3RhdHVzKGNvbnN0IHU4
IGxpbmtfc3RhdHVzW0RQX0xJTktfU1RBVFVTX1NJWkVdKQo+ICAJCSAgICAgIGxpbmtfc3RhdHVz
WzNdLCBsaW5rX3N0YXR1c1s0XSwgbGlua19zdGF0dXNbNV0pOwo+ICB9Cj4gIAo+IC1zdGF0aWMg
dm9pZAo+IC1pbnRlbF9nZXRfYWRqdXN0X3RyYWluKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAs
Cj4gLQkJICAgICAgIGNvbnN0IHU4IGxpbmtfc3RhdHVzW0RQX0xJTktfU1RBVFVTX1NJWkVdKQo+
IC17Cj4gLQl1OCB2ID0gMDsKPiAtCXU4IHAgPSAwOwo+IC0JaW50IGxhbmU7Cj4gLQl1OCB2b2x0
YWdlX21heDsKPiAtCXU4IHByZWVtcGhfbWF4Owo+IC0KPiAtCWZvciAobGFuZSA9IDA7IGxhbmUg
PCBpbnRlbF9kcC0+bGFuZV9jb3VudDsgbGFuZSsrKSB7Cj4gLQkJdTggdGhpc192ID0gZHJtX2Rw
X2dldF9hZGp1c3RfcmVxdWVzdF92b2x0YWdlKGxpbmtfc3RhdHVzLCBsYW5lKTsKPiAtCQl1OCB0
aGlzX3AgPSBkcm1fZHBfZ2V0X2FkanVzdF9yZXF1ZXN0X3ByZV9lbXBoYXNpcyhsaW5rX3N0YXR1
cywgbGFuZSk7Cj4gLQo+IC0JCWlmICh0aGlzX3YgPiB2KQo+IC0JCQl2ID0gdGhpc192Owo+IC0J
CWlmICh0aGlzX3AgPiBwKQo+IC0JCQlwID0gdGhpc19wOwo+IC0JfQo+IC0KPiAtCXZvbHRhZ2Vf
bWF4ID0gaW50ZWxfZHBfdm9sdGFnZV9tYXgoaW50ZWxfZHApOwo+IC0JaWYgKHYgPj0gdm9sdGFn
ZV9tYXgpCj4gLQkJdiA9IHZvbHRhZ2VfbWF4IHwgRFBfVFJBSU5fTUFYX1NXSU5HX1JFQUNIRUQ7
Cj4gLQo+IC0JcHJlZW1waF9tYXggPSBpbnRlbF9kcF9wcmVfZW1waGFzaXNfbWF4KGludGVsX2Rw
LCB2KTsKPiAtCWlmIChwID49IHByZWVtcGhfbWF4KQo+IC0JCXAgPSBwcmVlbXBoX21heCB8IERQ
X1RSQUlOX01BWF9QUkVfRU1QSEFTSVNfUkVBQ0hFRDsKPiAtCj4gLQlmb3IgKGxhbmUgPSAwOyBs
YW5lIDwgNDsgbGFuZSsrKQo+IC0JCWludGVsX2RwLT50cmFpbl9zZXRbbGFuZV0gPSB2IHwgcDsK
PiAtfQo+IC0KPiAgc3RhdGljIGJvb2wKPiAgaW50ZWxfZHBfc2V0X2xpbmtfdHJhaW4oc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCwKPiAgCQkJdTggZHBfdHJhaW5fcGF0KQo+IC0tIAo+IDIuMjIu
MAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
