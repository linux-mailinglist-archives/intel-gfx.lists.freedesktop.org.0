Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A76D5FE3
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 12:18:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97D976E23D;
	Mon, 14 Oct 2019 10:17:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B0B06E23D
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 10:17:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Oct 2019 03:17:58 -0700
X-IronPort-AV: E=Sophos;i="5.67,295,1566889200"; d="scan'208";a="185451477"
Received: from dwiesing-mobl.ger.corp.intel.com (HELO [10.252.31.172])
 ([10.252.31.172])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 14 Oct 2019 03:17:56 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191014090757.32111-1-chris@chris-wilson.co.uk>
 <20191014090757.32111-8-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <d9c8c17e-393a-fbff-4689-58cfe6f54cf1@linux.intel.com>
Date: Mon, 14 Oct 2019 11:17:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191014090757.32111-8-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 08/15] drm/i915: Expose engine properties
 via sysfs
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

Ck9uIDE0LzEwLzIwMTkgMTA6MDcsIENocmlzIFdpbHNvbiB3cm90ZToKPiBQcmVsaW1pbmFyeSBz
dHViIHRvIGFkZCBlbmdpbmVzIHVuZGVybmVhdGggL3N5cy9jbGFzcy9kcm0vY2FyZE4vLCBzbwo+
IHRoYXQgd2UgY2FuIGV4cG9zZSBwcm9wZXJ0aWVzIG9uIGVhY2ggZW5naW5lIHRvIHRoZSBzeXNh
ZG1pbi4KPiAKPiBUbyBzdGFydCB3aXRoIHdlIGhhdmUgYmFzaWMgYW5hbG9ndWVzIG9mIHRoZSBp
OTE1X3F1ZXJ5IGlvY3RsIHNvIHRoYXQgd2UKPiBjYW4gcHJldHR5IHByaW50IGVuZ2luZSBkaXNj
b3ZlcnkgZnJvbSB0aGUgc2hlbGwsIGFuZCBmbGVzaCBvdXQgdGhlCj4gZGlyZWN0b3J5IHN0cnVj
dHVyZS4gTGF0ZXIgd2Ugd2lsbCBhZGQgd3JpdGVhYmxlIHN5c2FkbWluIHByb3BlcnRpZXMgc3Vj
aAo+IGFzIHBlci1lbmdpbmUgdGltZW91dCBjb250cm9scy4KPiAKPiBBbiBleGFtcGxlIHRyZWUg
b2YgdGhlIGVuZ2luZSBwcm9wZXJ0aWVzIG9uIEJyYXN3ZWxsOgo+ICAgICAgL3N5cy9jbGFzcy9k
cm0vY2FyZDAKPiAgICAgIOKUlOKUgOKUgCBlbmdpbmUKPiAgICAgICDCoMKgIOKUnOKUgOKUgCBi
Y3MwCj4gICAgICAgwqDCoCDilILCoMKgIOKUnOKUgOKUgCBjYXBhYmlsaXRpZXMKPiAgICAgICDC
oMKgIOKUgsKgwqAg4pSc4pSA4pSAIGNsYXNzCj4gICAgICAgwqDCoCDilILCoMKgIOKUnOKUgOKU
gCBpbnN0YW5jZQo+ICAgICAgIMKgwqAg4pSCwqDCoCDilJzilIDilIAga25vd25fY2FwYWJpbGl0
aWVzCj4gICAgICAgwqDCoCDilILCoMKgIOKUlOKUgOKUgCBuYW1lCj4gICAgICAgwqDCoCDilJzi
lIDilIAgcmNzMAo+ICAgICAgIMKgwqAg4pSCwqDCoCDilJzilIDilIAgY2FwYWJpbGl0aWVzCj4g
ICAgICAgwqDCoCDilILCoMKgIOKUnOKUgOKUgCBjbGFzcwo+ICAgICAgIMKgwqAg4pSCwqDCoCDi
lJzilIDilIAgaW5zdGFuY2UKPiAgICAgICDCoMKgIOKUgsKgwqAg4pSc4pSA4pSAIGtub3duX2Nh
cGFiaWxpdGllcwo+ICAgICAgIMKgwqAg4pSCwqDCoCDilJTilIDilIAgbmFtZQo+ICAgICAgIMKg
wqAg4pSc4pSA4pSAIHZjczAKPiAgICAgICDCoMKgIOKUgsKgwqAg4pSc4pSA4pSAIGNhcGFiaWxp
dGllcwo+ICAgICAgIMKgwqAg4pSCwqDCoCDilJzilIDilIAgY2xhc3MKPiAgICAgICDCoMKgIOKU
gsKgwqAg4pSc4pSA4pSAIGluc3RhbmNlCj4gICAgICAgwqDCoCDilILCoMKgIOKUnOKUgOKUgCBr
bm93bl9jYXBhYmlsaXRpZXMKPiAgICAgICDCoMKgIOKUgsKgwqAg4pSU4pSA4pSAIG5hbWUKPiAg
ICAgICDCoMKgIOKUlOKUgOKUgCB2ZWNzMAo+ICAgICAgIMKgwqAgIMKgwqAg4pSc4pSA4pSAIGNh
cGFiaWxpdGllcwo+ICAgICAgIMKgwqAgICAgIOKUnOKUgOKUgCBjbGFzcwo+ICAgICAgIMKgwqAg
ICAgIOKUnOKUgOKUgCBpbnN0YW5jZQo+ICAgICAgIMKgwqAgIMKgwqAg4pSc4pSA4pSAIGtub3du
X2NhcGFiaWxpdGllcwo+ICAgICAgIMKgwqAgICAgIOKUlOKUgOKUgCBuYW1lCj4gCj4gdjI6IElu
Y2x1ZGUgc3RyaW5naWZpZWQgY2FwYWJpbGl0aWVzCj4gdjM6IEluY2x1ZGUgYWxsIGtub3duIGNh
cGFiaWxpdGllcyBmb3IgZnV0dXJlcHJvb2ZpbmcuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8
am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2
cnRrby51cnN1bGluQGludGVsLmNvbT4KPiBDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFu
aWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdv
LnZpdmlAaW50ZWwuY29tPgo+IEFja2VkLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBp
bnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSAgICAgICAg
ICAgICAgICB8ICAgMyArLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5l
X3N5c2ZzLmMgfCAyMjMgKysrKysrKysrKysrKysrKysrKwo+ICAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZW5naW5lX3N5c2ZzLmggfCAgMTQgKysKPiAgIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfc3lzZnMuYyAgICAgICAgICAgIHwgICAzICsKPiAgIDQgZmlsZXMgY2hhbmdlZCwg
MjQyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfc3lzZnMuYwo+ICAgY3JlYXRlIG1v
ZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9zeXNmcy5oCj4g
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvTWFrZWZpbGUKPiBpbmRleCBlNzkxZDkzMjNiNTEuLmNkOWExMGJhMjUxNiAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCj4gQEAgLTc4LDggKzc4LDkgQEAgZ3QteSArPSBcCj4g
ICAJZ3QvaW50ZWxfYnJlYWRjcnVtYnMubyBcCj4gICAJZ3QvaW50ZWxfY29udGV4dC5vIFwKPiAg
IAlndC9pbnRlbF9lbmdpbmVfY3MubyBcCj4gLQlndC9pbnRlbF9lbmdpbmVfcG9vbC5vIFwKPiAg
IAlndC9pbnRlbF9lbmdpbmVfcG0ubyBcCj4gKwlndC9pbnRlbF9lbmdpbmVfcG9vbC5vIFwKPiAr
CWd0L2ludGVsX2VuZ2luZV9zeXNmcy5vIFwKPiAgIAlndC9pbnRlbF9lbmdpbmVfdXNlci5vIFwK
PiAgIAlndC9pbnRlbF9ndC5vIFwKPiAgIAlndC9pbnRlbF9ndF9pcnEubyBcCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9zeXNmcy5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3N5c2ZzLmMKPiBuZXcgZmlsZSBtb2RlIDEw
MDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uNGU0MDNhMWIwNjlhCj4gLS0tIC9kZXYvbnVsbAo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9zeXNmcy5jCj4gQEAg
LTAsMCArMSwyMjMgQEAKPiArLyoKPiArICogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAo+
ICsgKgo+ICsgKiBDb3B5cmlnaHQgwqkgMjAxOSBJbnRlbCBDb3Jwb3JhdGlvbgo+ICsgKi8KPiAr
Cj4gKyNpbmNsdWRlIDxsaW51eC9rb2JqZWN0Lmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9zeXNmcy5o
Pgo+ICsKPiArI2luY2x1ZGUgImk5MTVfZHJ2LmgiCj4gKyNpbmNsdWRlICJpbnRlbF9lbmdpbmUu
aCIKPiArI2luY2x1ZGUgImludGVsX2VuZ2luZV9zeXNmcy5oIgo+ICsKPiArc3RydWN0IGtvYmpf
ZW5naW5lIHsKPiArCXN0cnVjdCBrb2JqZWN0IGJhc2U7Cj4gKwlzdHJ1Y3QgaW50ZWxfZW5naW5l
X2NzICplbmdpbmU7Cj4gK307Cj4gKwo+ICtzdGF0aWMgc3RydWN0IGludGVsX2VuZ2luZV9jcyAq
a29ial90b19lbmdpbmUoc3RydWN0IGtvYmplY3QgKmtvYmopCj4gK3sKPiArCXJldHVybiBjb250
YWluZXJfb2Yoa29iaiwgc3RydWN0IGtvYmpfZW5naW5lLCBiYXNlKS0+ZW5naW5lOwo+ICt9Cj4g
Kwo+ICtzdGF0aWMgc3NpemVfdAo+ICtuYW1lX3Nob3coc3RydWN0IGtvYmplY3QgKmtvYmosIHN0
cnVjdCBrb2JqX2F0dHJpYnV0ZSAqYXR0ciwgY2hhciAqYnVmKQo+ICt7Cj4gKwlyZXR1cm4gc3By
aW50ZihidWYsICIlc1xuIiwga29ial90b19lbmdpbmUoa29iaiktPm5hbWUpOwo+ICt9Cj4gKwo+
ICtzdGF0aWMgc3RydWN0IGtvYmpfYXR0cmlidXRlIG5hbWVfYXR0ciA9Cj4gK19fQVRUUihuYW1l
LCAwNDQ0LCBuYW1lX3Nob3csIE5VTEwpOwo+ICsKPiArc3RhdGljIHNzaXplX3QKPiArY2xhc3Nf
c2hvdyhzdHJ1Y3Qga29iamVjdCAqa29iaiwgc3RydWN0IGtvYmpfYXR0cmlidXRlICphdHRyLCBj
aGFyICpidWYpCj4gK3sKPiArCXJldHVybiBzcHJpbnRmKGJ1ZiwgIiVkXG4iLCBrb2JqX3RvX2Vu
Z2luZShrb2JqKS0+dWFiaV9jbGFzcyk7Cj4gK30KPiArCj4gK3N0YXRpYyBzdHJ1Y3Qga29ial9h
dHRyaWJ1dGUgY2xhc3NfYXR0ciA9Cj4gK19fQVRUUihjbGFzcywgMDQ0NCwgY2xhc3Nfc2hvdywg
TlVMTCk7Cj4gKwo+ICtzdGF0aWMgc3NpemVfdAo+ICtpbnN0X3Nob3coc3RydWN0IGtvYmplY3Qg
KmtvYmosIHN0cnVjdCBrb2JqX2F0dHJpYnV0ZSAqYXR0ciwgY2hhciAqYnVmKQo+ICt7Cj4gKwly
ZXR1cm4gc3ByaW50ZihidWYsICIlZFxuIiwga29ial90b19lbmdpbmUoa29iaiktPnVhYmlfaW5z
dGFuY2UpOwo+ICt9Cj4gKwo+ICtzdGF0aWMgc3RydWN0IGtvYmpfYXR0cmlidXRlIGluc3RfYXR0
ciA9Cj4gK19fQVRUUihpbnN0YW5jZSwgMDQ0NCwgaW5zdF9zaG93LCBOVUxMKTsKPiArCj4gK3N0
YXRpYyBjb25zdCBjaGFyICogY29uc3QgdmNzX2NhcHNbXSA9IHsKPiArCVtpbG9nMihJOTE1X1ZJ
REVPX0NMQVNTX0NBUEFCSUxJVFlfSEVWQyldID0gImhldmMiLAo+ICsJW2lsb2cyKEk5MTVfVklE
RU9fQU5EX0VOSEFOQ0VfQ0xBU1NfQ0FQQUJJTElUWV9TRkMpXSA9ICJzZmMiLAo+ICt9Owo+ICtz
dGF0aWMgY29uc3QgY2hhciAqIGNvbnN0IHZlY3NfY2Fwc1tdID0gewo+ICsJW2lsb2cyKEk5MTVf
VklERU9fQU5EX0VOSEFOQ0VfQ0xBU1NfQ0FQQUJJTElUWV9TRkMpXSA9ICJzZmMiLAo+ICt9Owo+
ICsKPiArc3RhdGljIHNzaXplX3QgcmVwcl90cmltKGNoYXIgKmJ1Ziwgc3NpemVfdCBsZW4pCj4g
K3sKPiArCS8qIFRyaW0gb2ZmIHRoZSB0cmFpbGluZyBzcGFjZSBhbmQgcmVwbGFjZSB3aXRoIGEg
bmV3bGluZSAqLwo+ICsJaWYgKGxlbiA+IFBBR0VfU0laRSkKPiArCQlsZW4gPSBQQUdFX1NJWkU7
Cj4gKwlpZiAobGVuID4gMCkKPiArCQlidWZbbGVuIC0gMV0gPSAnXG4nOwo+ICsKPiArCXJldHVy
biBsZW47Cj4gK30KPiArCj4gK3N0YXRpYyBzc2l6ZV90Cj4gK2NhcHNfc2hvdyhzdHJ1Y3Qga29i
amVjdCAqa29iaiwgc3RydWN0IGtvYmpfYXR0cmlidXRlICphdHRyLCBjaGFyICpidWYpCj4gK3sK
PiArCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSA9IGtvYmpfdG9fZW5naW5lKGtvYmop
Owo+ICsJY29uc3QgY2hhciAqIGNvbnN0ICpyZXByOwo+ICsJaW50IG51bV9yZXByLCBuOwo+ICsJ
c3NpemVfdCBsZW47Cj4gKwo+ICsJc3dpdGNoIChlbmdpbmUtPmNsYXNzKSB7Cj4gKwljYXNlIFZJ
REVPX0RFQ09ERV9DTEFTUzoKPiArCQlyZXByID0gdmNzX2NhcHM7Cj4gKwkJbnVtX3JlcHIgPSBB
UlJBWV9TSVpFKHZjc19jYXBzKTsKPiArCQlicmVhazsKPiArCj4gKwljYXNlIFZJREVPX0VOSEFO
Q0VNRU5UX0NMQVNTOgo+ICsJCXJlcHIgPSB2ZWNzX2NhcHM7Cj4gKwkJbnVtX3JlcHIgPSBBUlJB
WV9TSVpFKHZlY3NfY2Fwcyk7Cj4gKwkJYnJlYWs7Cj4gKwo+ICsJZGVmYXVsdDoKPiArCQlyZXBy
ID0gTlVMTDsKPiArCQludW1fcmVwciA9IDA7Cj4gKwkJYnJlYWs7Cj4gKwl9Cj4gKwo+ICsJbGVu
ID0gMDsKPiArCWZvcl9lYWNoX3NldF9iaXQobiwKPiArCQkJICh1bnNpZ25lZCBsb25nICopJmVu
Z2luZS0+dWFiaV9jYXBhYmlsaXRpZXMsCj4gKwkJCSBCSVRTX1BFUl9UWVBFKHR5cGVvZihlbmdp
bmUtPnVhYmlfY2FwYWJpbGl0aWVzKSkpIHsKPiArCQlpZiAoR0VNX1dBUk5fT04obiA+PSBudW1f
cmVwciB8fCAhcmVwcltuXSkpCj4gKwkJCWxlbiArPSBzbnByaW50ZihidWYgKyBsZW4sIFBBR0Vf
U0laRSAtIGxlbiwKPiArCQkJCQkiWyV4XSAiLCBuKTsKPiArCQllbHNlCj4gKwkJCWxlbiArPSBz
bnByaW50ZihidWYgKyBsZW4sIFBBR0VfU0laRSAtIGxlbiwKPiArCQkJCQkiJXMgIiwgcmVwcltu
XSk7Cj4gKwkJaWYgKEdFTV9XQVJOX09OKGxlbiA+PSBQQUdFX1NJWkUpKQo+ICsJCQlicmVhazsK
PiArCX0KPiArCXJldHVybiByZXByX3RyaW0oYnVmLCBsZW4pOwo+ICt9Cj4gKwo+ICtzdGF0aWMg
c3RydWN0IGtvYmpfYXR0cmlidXRlIGNhcHNfYXR0ciA9Cj4gK19fQVRUUihjYXBhYmlsaXRpZXMs
IDA0NDQsIGNhcHNfc2hvdywgTlVMTCk7Cj4gKwo+ICtzdGF0aWMgc3NpemVfdAo+ICthbGxfY2Fw
c19zaG93KHN0cnVjdCBrb2JqZWN0ICprb2JqLCBzdHJ1Y3Qga29ial9hdHRyaWJ1dGUgKmF0dHIs
IGNoYXIgKmJ1ZikKPiArewo+ICsJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lID0ga29i
al90b19lbmdpbmUoa29iaik7Cj4gKwljb25zdCBjaGFyICogY29uc3QgKnJlcHI7Cj4gKwlpbnQg
bnVtX3JlcHIsIG47Cj4gKwlzc2l6ZV90IGxlbjsKPiArCj4gKwlzd2l0Y2ggKGVuZ2luZS0+Y2xh
c3MpIHsKPiArCWNhc2UgVklERU9fREVDT0RFX0NMQVNTOgo+ICsJCXJlcHIgPSB2Y3NfY2FwczsK
PiArCQludW1fcmVwciA9IEFSUkFZX1NJWkUodmNzX2NhcHMpOwo+ICsJCWJyZWFrOwo+ICsKPiAr
CWNhc2UgVklERU9fRU5IQU5DRU1FTlRfQ0xBU1M6Cj4gKwkJcmVwciA9IHZlY3NfY2FwczsKPiAr
CQludW1fcmVwciA9IEFSUkFZX1NJWkUodmVjc19jYXBzKTsKPiArCQlicmVhazsKPiArCj4gKwlk
ZWZhdWx0Ogo+ICsJCXJlcHIgPSBOVUxMOwo+ICsJCW51bV9yZXByID0gMDsKPiArCQlicmVhazsK
PiArCX0KPiArCj4gKwlsZW4gPSAwOwo+ICsJZm9yIChuID0gMDsgbiA8IG51bV9yZXByOyBuKysp
IHsKPiArCQlpZiAoIXJlcHJbbl0pCj4gKwkJCWNvbnRpbnVlOwo+ICsKPiArCQlsZW4gKz0gc25w
cmludGYoYnVmICsgbGVuLCBQQUdFX1NJWkUgLSBsZW4sICIlcyAiLCByZXByW25dKTsKPiArCQlp
ZiAoR0VNX1dBUk5fT04obGVuID49IFBBR0VfU0laRSkpCj4gKwkJCWJyZWFrOwo+ICsJfQo+ICsJ
cmV0dXJuIHJlcHJfdHJpbShidWYsIGxlbik7Cj4gK30KCldvdWxkIGl0IGJlIHdvcnRoIGNvbnNv
bGlkYXRpbmcgbGlrZToKCl9fY2Fwc19zaG93KGVuZ2luZSwgYnVmLCBsZW4sIG1hc2ssIHdhcm5f
dW5rbm93bikKewouLi4KCXN3aXRjaChlbmdpbmUtPmNsYXNzLi4uCi4uLgoJZm9yX2VhY2hfc2V0
X2JpdCguLi5tYXNrLi4uKSB7CgkJaWYgKG4gPj0gcmVwciB8fCAhcmVwcltuXSkgewoJCQlpZiAo
d2Fybl91bmtub3duKQoJCQkJR0VNX1dBUk5fT04oLi4uKTsKCQkJZWxzZQoJCQkJbGVuICs9IHNu
cHJpbmYuLi4KCQl9IGVsc2UgewoJCQlsZW4gKz0gc25wcmludGYuLi4KCQl9Cgl9Ci4uLgp9Cgpj
YXBzX3Nob3coKQp7Ci4uLgoJbGVuID0gX19jYXBzX3Nob3coZW5naW5lLCBidWYsIGxlbiwgZW5n
aW5lLT51YWJpX2NhcGFiaWxpdGllcywgdHJ1ZSk7Ci4uLgp9CgphbGxfY2Fwc19zaG93KCkKewou
Li4KCWxlbiA9IF9fY2Fwc19zaG93KGVuZ2luZSwgYnVmLCBsZW4sIH4wLCBmYWxzZSk7Ci4uLgp9
CgpSZWdhcmRzLAoKVHZydGtvCgo+ICsKPiArc3RhdGljIHN0cnVjdCBrb2JqX2F0dHJpYnV0ZSBh
bGxfY2Fwc19hdHRyID0KPiArX19BVFRSKGtub3duX2NhcGFiaWxpdGllcywgMDQ0NCwgYWxsX2Nh
cHNfc2hvdywgTlVMTCk7Cj4gKwo+ICtzdGF0aWMgdm9pZCBrb2JqX2VuZ2luZV9yZWxlYXNlKHN0
cnVjdCBrb2JqZWN0ICprb2JqKQo+ICt7Cj4gKwlrZnJlZShrb2JqKTsKPiArfQo+ICsKPiArc3Rh
dGljIHN0cnVjdCBrb2JqX3R5cGUga29ial9lbmdpbmVfdHlwZSA9IHsKPiArCS5yZWxlYXNlID0g
a29ial9lbmdpbmVfcmVsZWFzZSwKPiArCS5zeXNmc19vcHMgPSAma29ial9zeXNmc19vcHMKPiAr
fTsKPiArCj4gK3N0YXRpYyBzdHJ1Y3Qga29iamVjdCAqCj4gK2tvYmpfZW5naW5lKHN0cnVjdCBr
b2JqZWN0ICpkaXIsIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPiArewo+ICsJc3Ry
dWN0IGtvYmpfZW5naW5lICprZTsKPiArCj4gKwlrZSA9IGt6YWxsb2Moc2l6ZW9mKCprZSksIEdG
UF9LRVJORUwpOwo+ICsJaWYgKCFrZSkKPiArCQlyZXR1cm4gTlVMTDsKPiArCj4gKwlrb2JqZWN0
X2luaXQoJmtlLT5iYXNlLCAma29ial9lbmdpbmVfdHlwZSk7Cj4gKwlrZS0+ZW5naW5lID0gZW5n
aW5lOwo+ICsKPiArCWlmIChrb2JqZWN0X2FkZCgma2UtPmJhc2UsIGRpciwgIiVzIiwgZW5naW5l
LT5uYW1lKSkgewo+ICsJCWtvYmplY3RfcHV0KCZrZS0+YmFzZSk7Cj4gKwkJcmV0dXJuIE5VTEw7
Cj4gKwl9Cj4gKwo+ICsJLyogeGZlciBvd25lcnNoaXAgdG8gc3lzZnMgdHJlZSAqLwo+ICsJcmV0
dXJuICZrZS0+YmFzZTsKPiArfQo+ICsKPiArdm9pZCBpbnRlbF9lbmdpbmVzX2FkZF9zeXNmcyhz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiArewo+ICsJc3RhdGljIGNvbnN0IHN0cnVj
dCBhdHRyaWJ1dGUgKmZpbGVzW10gPSB7Cj4gKwkJJm5hbWVfYXR0ci5hdHRyLAo+ICsJCSZjbGFz
c19hdHRyLmF0dHIsCj4gKwkJJmluc3RfYXR0ci5hdHRyLAo+ICsJCSZjYXBzX2F0dHIuYXR0ciwK
PiArCQkmYWxsX2NhcHNfYXR0ci5hdHRyLAo+ICsJCU5VTEwKPiArCX07Cj4gKwo+ICsJc3RydWN0
IGRldmljZSAqa2RldiA9IGk5MTUtPmRybS5wcmltYXJ5LT5rZGV2Owo+ICsJc3RydWN0IGludGVs
X2VuZ2luZV9jcyAqZW5naW5lOwo+ICsJc3RydWN0IGtvYmplY3QgKmRpcjsKPiArCj4gKwlkaXIg
PSBrb2JqZWN0X2NyZWF0ZV9hbmRfYWRkKCJlbmdpbmUiLCAma2Rldi0+a29iaik7Cj4gKwlpZiAo
IWRpcikKPiArCQlyZXR1cm47Cj4gKwo+ICsJZm9yX2VhY2hfdWFiaV9lbmdpbmUoZW5naW5lLCBp
OTE1KSB7Cj4gKwkJc3RydWN0IGtvYmplY3QgKmtvYmo7Cj4gKwo+ICsJCWtvYmogPSBrb2JqX2Vu
Z2luZShkaXIsIGVuZ2luZSk7Cj4gKwkJaWYgKCFrb2JqKQo+ICsJCQlnb3RvIGVycl9lbmdpbmU7
Cj4gKwo+ICsJCWlmIChzeXNmc19jcmVhdGVfZmlsZXMoa29iaiwgZmlsZXMpKQo+ICsJCQlnb3Rv
IGVycl9vYmplY3Q7Cj4gKwo+ICsJCWlmICgwKSB7Cj4gK2Vycl9vYmplY3Q6Cj4gKwkJCWtvYmpl
Y3RfcHV0KGtvYmopOwo+ICtlcnJfZW5naW5lOgo+ICsJCQlkZXZfZXJyKGtkZXYsICJGYWlsZWQg
dG8gYWRkIHN5c2ZzIGVuZ2luZSAnJXMnXG4iLAo+ICsJCQkJZW5naW5lLT5uYW1lKTsKPiArCQkJ
YnJlYWs7Cj4gKwkJfQo+ICsJfQo+ICt9Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2VuZ2luZV9zeXNmcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZW5naW5lX3N5c2ZzLmgKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAw
MDAwMC4uZWY0NGE3NDViNzBhCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2VuZ2luZV9zeXNmcy5oCj4gQEAgLTAsMCArMSwxNCBAQAo+ICsvKgo+
ICsgKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCj4gKyAqCj4gKyAqIENvcHlyaWdodCDC
qSAyMDE5IEludGVsIENvcnBvcmF0aW9uCj4gKyAqLwo+ICsKPiArI2lmbmRlZiBJTlRFTF9FTkdJ
TkVfU1lTRlNfSAo+ICsjZGVmaW5lIElOVEVMX0VOR0lORV9TWVNGU19ICj4gKwo+ICtzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZTsKPiArCj4gK3ZvaWQgaW50ZWxfZW5naW5lc19hZGRfc3lzZnMoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwo+ICsKPiArI2VuZGlmIC8qIElOVEVMX0VOR0lO
RV9TWVNGU19IICovCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3lz
ZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3lzZnMuYwo+IGluZGV4IGJmMDM5Yjhi
YTU5My4uN2I2NjVmNjlmMzAxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfc3lzZnMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3lzZnMuYwo+IEBA
IC0zMCw2ICszMCw3IEBACj4gICAjaW5jbHVkZSA8bGludXgvc3RhdC5oPgo+ICAgI2luY2x1ZGUg
PGxpbnV4L3N5c2ZzLmg+Cj4gICAKPiArI2luY2x1ZGUgImd0L2ludGVsX2VuZ2luZV9zeXNmcy5o
Igo+ICAgI2luY2x1ZGUgImd0L2ludGVsX3JjNi5oIgo+ICAgCj4gICAjaW5jbHVkZSAiaTkxNV9k
cnYuaCIKPiBAQCAtNjE2LDYgKzYxNyw4IEBAIHZvaWQgaTkxNV9zZXR1cF9zeXNmcyhzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gICAJCURSTV9FUlJPUigiUlBTIHN5c2ZzIHNl
dHVwIGZhaWxlZFxuIik7Cj4gICAKPiAgIAlpOTE1X3NldHVwX2Vycm9yX2NhcHR1cmUoa2Rldik7
Cj4gKwo+ICsJaW50ZWxfZW5naW5lc19hZGRfc3lzZnMoZGV2X3ByaXYpOwo+ICAgfQo+ICAgCj4g
ICB2b2lkIGk5MTVfdGVhcmRvd25fc3lzZnMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2KQo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
