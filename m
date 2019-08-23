Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEBC89B34E
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 17:29:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C9E56ECCA;
	Fri, 23 Aug 2019 15:29:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24F486ECCA
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 15:29:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Aug 2019 08:29:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,421,1559545200"; d="scan'208";a="263221002"
Received: from kmolchan-mobl1.ccr.corp.intel.com (HELO [10.252.3.177])
 ([10.252.3.177])
 by orsmga001.jf.intel.com with ESMTP; 23 Aug 2019 08:28:59 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190823150302.5719-1-chris@chris-wilson.co.uk>
 <cb9a9a4e-d4b1-daf8-258d-2335a6dd4b16@intel.com>
Message-ID: <eb7a7a60-6110-733b-5aa4-2c13d4d29b7d@intel.com>
Date: Fri, 23 Aug 2019 16:28:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <cb9a9a4e-d4b1-daf8-258d-2335a6dd4b16@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Flush the existing fence before
 GGTT read/write
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

T24gMjMvMDgvMjAxOSAxNjoyNiwgTWF0dGhldyBBdWxkIHdyb3RlOgo+IE9uIDIzLzA4LzIwMTkg
MTY6MDMsIENocmlzIFdpbHNvbiB3cm90ZToKPj4gT3VyIGZlbmNlIG1hbmFnZW1lbnQgaXMgbGF6
eSwgdmVyeSBsYXp5LiBJZiB0aGUgdXNlciBtYXJrcyBhbiBvYmplY3QgYXMKPj4gdW50aWxlZCwg
d2UgZG8gbm90IGltbWVkaWF0ZWx5IGZsdXNoIHRoZSBmZW5jZSBidXQgbWVyZWx5IG1hcmsgaXQg
YXMKPj4gZGlydHkuIE9uIHRoZSB1c2Ugd2UgaGF2ZSB0byByZW1lbWJlciB0byBjaGVjayBhbmQg
cmVtb3ZlIHRoZSBmZW5jZSwgYnkKPj4gd2hpY2ggdGltZSB3ZSBob3BlIGl0IGlzIGlkbGUgYW5k
IHdlIGRvIG5vdCBoYXZlIHRvIHdhaXQuCj4+Cj4+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJl
ZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE0NjgKPj4gRml4ZXM6IDFmN2ZkNDg0ZmZm
MSAoImRybS9pOTE1OiBSZXBsYWNlIGk5MTVfdm1hX3B1dF9mZW5jZSgpIikKPj4gU2lnbmVkLW9m
Zi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4+IENjOiBNYXR0
aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gCj4gV2VsbCB0aGF0IHN1Y2tzLCBz
aG91bGQgd2UgYWxzbyB0cnkgdG8gYmUgbW9yZSBzb2xpZCBvbiB0aGUgcmVsb2MgcGF0aD8KCkFs
c28gbm90IHJlYWxseSBhIGJsb2NrZXIgc28sClJldmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1h
dHRoZXcuYXVsZEBpbnRlbC5jb20+Cgo+IAo+PiAtLS0KPj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW0uYyB8IDMwICsrKysrKysrKysrKysrKysrKysrKysrKysrKystLQo+PiDCoCAx
IGZpbGUgY2hhbmdlZCwgMjggaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPj4KPj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgCj4+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9nZW0uYwo+PiBpbmRleCBlYjMxYjY5YTMxNmEuLjQxYjI4ZjZkODYy
MCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwo+PiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCj4+IEBAIC0zMjQsNiArMzI0LDI2IEBA
IGd0dF91c2VyX3JlYWQoc3RydWN0IGlvX21hcHBpbmcgKm1hcHBpbmcsCj4+IMKgwqDCoMKgwqAg
cmV0dXJuIHVud3JpdHRlbjsKPj4gwqAgfQo+PiArc3RhdGljIGludCBsaW5lYXJfZ2d0dF9vZmZz
ZXQoc3RydWN0IGk5MTVfdm1hICp2bWEsIHU2NCAqb2Zmc2V0KQo+PiArewo+PiArwqDCoMKgIGlu
dCByZXQ7Cj4+ICsKPj4gK8KgwqDCoCBHRU1fQlVHX09OKCFpOTE1X3ZtYV9pc19tYXBfYW5kX2Zl
bmNlYWJsZSh2bWEpKTsKPj4gKwo+PiArwqDCoMKgIC8qIE9wZW4tY29kZWQgaTkxNV92bWFfcGlu
X2lvbWFwKCkgKi8KPj4gKwo+PiArwqDCoMKgIGlmICh2bWEtPmZlbmNlKSB7Cj4+ICvCoMKgwqDC
oMKgwqDCoCBtdXRleF9sb2NrKCZ2bWEtPnZtLT5tdXRleCk7Cj4+ICvCoMKgwqDCoMKgwqDCoCBy
ZXQgPSBpOTE1X3ZtYV9yZXZva2VfZmVuY2Uodm1hKTsKPj4gK8KgwqDCoMKgwqDCoMKgIG11dGV4
X3VubG9jaygmdm1hLT52bS0+bXV0ZXgpOwo+PiArwqDCoMKgwqDCoMKgwqAgaWYgKHJldCkKPj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIHJldDsKPj4gK8KgwqDCoCB9Cj4+ICsKPj4g
K8KgwqDCoCAqb2Zmc2V0ID0gaTkxNV9nZ3R0X29mZnNldCh2bWEpOwo+PiArwqDCoMKgIHJldHVy
biAwOwo+PiArfQo+PiArCj4+IMKgIHN0YXRpYyBpbnQKPj4gwqAgaTkxNV9nZW1fZ3R0X3ByZWFk
KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX3ByZWFkICphcmdzKQo+PiBAQCAtMzUwLDcg
KzM3MCwxMCBAQCBpOTE1X2dlbV9ndHRfcHJlYWQoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Qg
Km9iaiwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgUElOX05PTkJMT0NLIC8qIE5PV0FSTiAqLyB8Cj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFBJTl9OT0VWSUNUKTsKPj4g
wqDCoMKgwqDCoCBpZiAoIUlTX0VSUih2bWEpKSB7Cj4+IC3CoMKgwqDCoMKgwqDCoCBub2RlLnN0
YXJ0ID0gaTkxNV9nZ3R0X29mZnNldCh2bWEpOwo+PiArwqDCoMKgwqDCoMKgwqAgcmV0ID0gbGlu
ZWFyX2dndHRfb2Zmc2V0KHZtYSwgJm5vZGUuc3RhcnQpOwo+PiArwqDCoMKgwqDCoMKgwqAgaWYg
KHJldCkKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ290byBvdXRfdW5waW47Cj4+ICsKPj4g
wqDCoMKgwqDCoMKgwqDCoMKgIG5vZGUuYWxsb2NhdGVkID0gZmFsc2U7Cj4gCj4gbm9kZS5hbGxv
Y2F0ZWQgPSBmYWxzZSBzaG91bGQgZ28gYmVmb3JlIHRoZSBqdW1wLgo+IAo+PiDCoMKgwqDCoMKg
IH0gZWxzZSB7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXQgPSBpbnNlcnRfbWFwcGFibGVfbm9k
ZShnZ3R0LCAmbm9kZSwgUEFHRV9TSVpFKTsKPj4gQEAgLTU2MCw3ICs1ODMsMTAgQEAgaTkxNV9n
ZW1fZ3R0X3B3cml0ZV9mYXN0KHN0cnVjdCAKPj4gZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAo+
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBQSU5fTk9OQkxPQ0sgLyogTk9XQVJOICovIHwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgUElOX05PRVZJQ1QpOwo+PiDCoMKgwqDC
oMKgIGlmICghSVNfRVJSKHZtYSkpIHsKPj4gLcKgwqDCoMKgwqDCoMKgIG5vZGUuc3RhcnQgPSBp
OTE1X2dndHRfb2Zmc2V0KHZtYSk7Cj4+ICvCoMKgwqDCoMKgwqDCoCByZXQgPSBsaW5lYXJfZ2d0
dF9vZmZzZXQodm1hLCAmbm9kZS5zdGFydCk7Cj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAocmV0KQo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIG91dF91bnBpbjsKPj4gKwo+PiDCoMKgwqDC
oMKgwqDCoMKgwqAgbm9kZS5hbGxvY2F0ZWQgPSBmYWxzZTsKPj4gwqDCoMKgwqDCoCB9IGVsc2Ug
ewo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0ID0gaW5zZXJ0X21hcHBhYmxlX25vZGUoZ2d0dCwg
Jm5vZGUsIFBBR0VfU0laRSk7Cj4+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
