Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C4E6BD6E
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 15:40:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D48F6E188;
	Wed, 17 Jul 2019 13:40:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A9236E188
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 13:40:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jul 2019 06:40:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,274,1559545200"; d="scan'208";a="158466188"
Received: from esulliva-mobl.ger.corp.intel.com (HELO [10.251.94.109])
 ([10.251.94.109])
 by orsmga007.jf.intel.com with ESMTP; 17 Jul 2019 06:40:25 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190716124931.5870-1-chris@chris-wilson.co.uk>
 <20190716124931.5870-4-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <c372c95a-9f52-2182-7ac2-05a853149e17@linux.intel.com>
Date: Wed, 17 Jul 2019 14:40:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716124931.5870-4-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915/execlists: Cancel breadcrumb
 on preempting the virtual engine
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

Ck9uIDE2LzA3LzIwMTkgMTM6NDksIENocmlzIFdpbHNvbiB3cm90ZToKPiBBcyB3ZSB1bndpbmQg
dGhlIHJlcXVlc3RzIGZvciBhIHByZWVtcHRpb24gZXZlbnQsIHdlIHJldHVybiBhIHZpcnR1YWwK
PiByZXF1ZXN0IGJhY2sgdG8gaXRzIG9yaWdpbmFsIHZpcnR1YWwgZW5naW5lIChzbyB0aGF0IGl0
IGlzIGF2YWlsYWJsZSBmb3IKPiBleGVjdXRpb24gb24gYW55IG9mIGl0cyBzaWJsaW5ncykuIElu
IHRoZSBwcm9jZXNzLCB0aGlzIG1lYW5zIHRoYXQgaXRzCj4gYnJlYWRjcnVtYiBzaG91bGQgbm8g
bG9uZ2VyIGJlIGFzc29jaWF0ZWQgd2l0aCB0aGUgb3JpZ2luYWwgcGh5c2ljYWwKPiBlbmdpbmUs
IGFuZCBzbyB3ZSBhcmUgZm9yY2VkIHRvIGRlY291cGxlIGl0LiBQcmV2aW91c2x5LCBhcyB0aGUg
cmVxdWVzdAo+IGNvdWxkIG5vdCBjb21wbGV0ZSB3aXRob3V0IG91ciBhd2FyZW5lc3MsIHdlIHdv
dWxkIG1vdmUgaXQgdG8gdGhlIG5leHQKPiByZWFsIGVuZ2luZSB3aXRob3V0IGFueSBkYW5nZXIu
IEhvd2V2ZXIsIHByZWVtcHQtdG8tYnVzeSBhbGxvd2VkIGZvcgo+IHJlcXVlc3RzIHRvIGNvbnRp
bnVlIG9uIHRoZSBIVyBhbmQgY29tcGxldGUgaW4gdGhlIGJhY2tncm91bmQgYXMgd2UKPiB1bndv
dW5kLCB3aGljaCBtZWFudCB0aGF0IHdlIGNvdWxkIGVuZCB1cCByZXRpcmluZyB0aGUgcmVxdWVz
dCBiZWZvcmUKPiBmaXhpbmcgdXAgdGhlIGJyZWFkY3J1bWIgbGluay4KPiAKPiBbNTE2NzkuNTE3
OTQzXSBJTkZPOiB0cnlpbmcgdG8gcmVnaXN0ZXIgbm9uLXN0YXRpYyBrZXkuCj4gWzUxNjc5LjUx
Nzk1Nl0gdGhlIGNvZGUgaXMgZmluZSBidXQgbmVlZHMgbG9ja2RlcCBhbm5vdGF0aW9uLgo+IFs1
MTY3OS41MTc5NjBdIHR1cm5pbmcgb2ZmIHRoZSBsb2NraW5nIGNvcnJlY3RuZXNzIHZhbGlkYXRv
ci4KPiBbNTE2NzkuNTE3OTY2XSBDUFU6IDAgUElEOiAzMjcwIENvbW06IGt3b3JrZXIvdTg6MCBU
YWludGVkOiBHICAgICBVICAgICAgICAgICAgNS4yLjArICM3MTcKPiBbNTE2NzkuNTE3OTcxXSBI
YXJkd2FyZSBuYW1lOiBJbnRlbCBDb3Jwb3JhdGlvbiBOVUM3aTVCTksvTlVDN2k1Qk5CLCBCSU9T
IEJOS0JMMzU3Ljg2QS4wMDUyLjIwMTcuMDkxOC4xMzQ2IDA5LzE4LzIwMTcKPiBbNTE2NzkuNTE4
MDEyXSBXb3JrcXVldWU6IGk5MTUgcmV0aXJlX3dvcmtfaGFuZGxlciBbaTkxNV0KPiBbNTE2Nzku
NTE4MDE3XSBDYWxsIFRyYWNlOgo+IFs1MTY3OS41MTgwMjZdICBkdW1wX3N0YWNrKzB4NjcvMHg5
MAo+IFs1MTY3OS41MTgwMzFdICByZWdpc3Rlcl9sb2NrX2NsYXNzKzB4NTJjLzB4NTQwCj4gWzUx
Njc5LjUxODAzOF0gID8gZmluZF9oZWxkX2xvY2srMHgyZC8weDkwCj4gWzUxNjc5LjUxODA0Ml0g
IF9fbG9ja19hY3F1aXJlKzB4NjgvMHgxODAwCj4gWzUxNjc5LjUxODA0N10gID8gZmluZF9oZWxk
X2xvY2srMHgyZC8weDkwCj4gWzUxNjc5LjUxODA3M10gID8gX19pOTE1X3N3X2ZlbmNlX2NvbXBs
ZXRlKzB4ZmYvMHgxYzAgW2k5MTVdCj4gWzUxNjc5LjUxODA3OV0gIGxvY2tfYWNxdWlyZSsweDkw
LzB4MTcwCj4gWzUxNjc5LjUxODEwNV0gID8gaTkxNV9yZXF1ZXN0X2NhbmNlbF9icmVhZGNydW1i
KzB4MjkvMHgxNjAgW2k5MTVdCj4gWzUxNjc5LjUxODExMl0gIF9yYXdfc3Bpbl9sb2NrKzB4Mjcv
MHg0MAo+IFs1MTY3OS41MTgxMzhdICA/IGk5MTVfcmVxdWVzdF9jYW5jZWxfYnJlYWRjcnVtYisw
eDI5LzB4MTYwIFtpOTE1XQo+IFs1MTY3OS41MTgxNjVdICBpOTE1X3JlcXVlc3RfY2FuY2VsX2Jy
ZWFkY3J1bWIrMHgyOS8weDE2MCBbaTkxNV0KPiBbNTE2NzkuNTE4MTk5XSAgaTkxNV9yZXF1ZXN0
X3JldGlyZSsweDQzZi8weDUzMCBbaTkxNV0KPiBbNTE2NzkuNTE4MjMyXSAgcmV0aXJlX3JlcXVl
c3RzKzB4NGQvMHg2MCBbaTkxNV0KPiBbNTE2NzkuNTE4MjYzXSAgaTkxNV9yZXRpcmVfcmVxdWVz
dHMrMHhkZi8weDFmMCBbaTkxNV0KPiBbNTE2NzkuNTE4Mjk0XSAgcmV0aXJlX3dvcmtfaGFuZGxl
cisweDRjLzB4NjAgW2k5MTVdCj4gWzUxNjc5LjUxODMwMV0gIHByb2Nlc3Nfb25lX3dvcmsrMHgy
MmMvMHg1YzAKPiBbNTE2NzkuNTE4MzA3XSAgd29ya2VyX3RocmVhZCsweDM3LzB4MzkwCj4gWzUx
Njc5LjUxODMxMV0gID8gcHJvY2Vzc19vbmVfd29yaysweDVjMC8weDVjMAo+IFs1MTY3OS41MTgz
MTZdICBrdGhyZWFkKzB4MTE2LzB4MTMwCj4gWzUxNjc5LjUxODMyMF0gID8ga3RocmVhZF9jcmVh
dGVfb25fbm9kZSsweDQwLzB4NDAKPiBbNTE2NzkuNTE4MzI1XSAgcmV0X2Zyb21fZm9yaysweDI0
LzB4MzAKPiBbNTE2NzkuNTIwMTc3XSAtLS0tLS0tLS0tLS1bIGN1dCBoZXJlIF0tLS0tLS0tLS0t
LS0KPiBbNTE2NzkuNTIwMTg5XSBsaXN0X2RlbCBjb3JydXB0aW9uLCBmZmZmODg4ODM2NzVlMmYw
LT5uZXh0IGlzIExJU1RfUE9JU09OMSAoZGVhZDAwMDAwMDAwMDEwMCkKPiAKPiBGaXhlczogMjJi
N2E0MjZiYmUxICgiZHJtL2k5MTUvZXhlY2xpc3RzOiBQcmVlbXB0LXRvLWJ1c3kiKQo+IFNpZ25l
ZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBU
dnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgfCAxMyArKysrKysrKysrKysrCj4gICAxIGZp
bGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2xyYy5jCj4gaW5kZXggNzU3MGE5MjU2MDAxLi4yYWU2Njk1ZjM0MmIgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+IEBAIC00OTIsNiArNDkyLDE5IEBAIF9fdW53aW5kX2lu
Y29tcGxldGVfcmVxdWVzdHMoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ICAgCQkJ
bGlzdF9tb3ZlKCZycS0+c2NoZWQubGluaywgcGwpOwo+ICAgCQkJYWN0aXZlID0gcnE7Cj4gICAJ
CX0gZWxzZSB7Cj4gKwkJCS8qCj4gKwkJCSAqIERlY291cGxlIHRoZSB2aXJ0dWFsIGJyZWFkY3J1
bWIgYmVmb3JlIG1vdmluZyBpdAo+ICsJCQkgKiBiYWNrIHRvIHRoZSB2aXJ0dWFsIGVuZ2luZSAt
LSB3ZSBkb24ndCB3YW50IHRoZQo+ICsJCQkgKiByZXF1ZXN0IHRvIGNvbXBsZXRlIGluIHRoZSBi
YWNrZ3JvdW5kIGFuZCB0cnkKPiArCQkJICogYW5kIGNhbmNlbCB0aGUgYnJlYWRjcnVtYiBvbiB0
aGUgdmlydHVhbCBlbmdpbmUKPiArCQkJICogKGluc3RlYWQgb2YgdGhlIG9sZCBlbmdpbmUgd2hl
cmUgaXQgaXMgbGlua2VkKSEKPiArCQkJICovCj4gKwkJCWlmICh0ZXN0X2JpdChETUFfRkVOQ0Vf
RkxBR19FTkFCTEVfU0lHTkFMX0JJVCwKPiArCQkJCSAgICAgJnJxLT5mZW5jZS5mbGFncykpIHsK
PiArCQkJCXNwaW5fbG9jaygmcnEtPmxvY2spOwo+ICsJCQkJaTkxNV9yZXF1ZXN0X2NhbmNlbF9i
cmVhZGNydW1iKHJxKTsKPiArCQkJCXNwaW5fdW5sb2NrKCZycS0+bG9jayk7Cj4gKwkJCX0KPiAg
IAkJCXJxLT5lbmdpbmUgPSBvd25lcjsKPiAgIAkJCW93bmVyLT5zdWJtaXRfcmVxdWVzdChycSk7
Cj4gICAJCQlhY3RpdmUgPSBOVUxMOwo+IAoKR290IGxvc3QgaW4gdGhlIG1hemUgb2YgRE1BX0ZF
TkNFX0ZMQUdfRU5BQkxFX1NJR05BTF9CSVQgJiAKSTkxNV9GRU5DRV9GTEFHX1NJR05BTCBmbGFn
cyBidXQgZXZlbnR1YWxseSBpdCBsb29rZWQgb2theS4gU2hvdWxkIGdldCAKcmUtYWRkZWQgdG8g
Y29ycmVjdCBlbmdpbmUncyBicmVhZGNydW1iIGxpc3Qgb24gc3VibWl0IHJpZ2h0PwoKUmV2aWV3
ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpSZWdhcmRz
LAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
