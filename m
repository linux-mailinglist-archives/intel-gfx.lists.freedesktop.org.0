Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7666D9B33F
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 17:26:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE8DD6ECC9;
	Fri, 23 Aug 2019 15:26:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDB806ECC9
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 15:26:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Aug 2019 08:26:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,421,1559545200"; d="scan'208";a="263220457"
Received: from kmolchan-mobl1.ccr.corp.intel.com (HELO [10.252.3.177])
 ([10.252.3.177])
 by orsmga001.jf.intel.com with ESMTP; 23 Aug 2019 08:26:17 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190823150302.5719-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <cb9a9a4e-d4b1-daf8-258d-2335a6dd4b16@intel.com>
Date: Fri, 23 Aug 2019 16:26:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190823150302.5719-1-chris@chris-wilson.co.uk>
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

T24gMjMvMDgvMjAxOSAxNjowMywgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IE91ciBmZW5jZSBtYW5h
Z2VtZW50IGlzIGxhenksIHZlcnkgbGF6eS4gSWYgdGhlIHVzZXIgbWFya3MgYW4gb2JqZWN0IGFz
Cj4gdW50aWxlZCwgd2UgZG8gbm90IGltbWVkaWF0ZWx5IGZsdXNoIHRoZSBmZW5jZSBidXQgbWVy
ZWx5IG1hcmsgaXQgYXMKPiBkaXJ0eS4gT24gdGhlIHVzZSB3ZSBoYXZlIHRvIHJlbWVtYmVyIHRv
IGNoZWNrIGFuZCByZW1vdmUgdGhlIGZlbmNlLCBieQo+IHdoaWNoIHRpbWUgd2UgaG9wZSBpdCBp
cyBpZGxlIGFuZCB3ZSBkbyBub3QgaGF2ZSB0byB3YWl0Lgo+IAo+IEJ1Z3ppbGxhOiBodHRwczov
L2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE0NjgKPiBGaXhlczogMWY3
ZmQ0ODRmZmYxICgiZHJtL2k5MTU6IFJlcGxhY2UgaTkxNV92bWFfcHV0X2ZlbmNlKCkiKQo+IFNp
Z25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENj
OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+CgpXZWxsIHRoYXQgc3Vja3Ms
IHNob3VsZCB3ZSBhbHNvIHRyeSB0byBiZSBtb3JlIHNvbGlkIG9uIHRoZSByZWxvYyBwYXRoPwoK
PiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgfCAzMCArKysrKysrKysr
KysrKysrKysrKysrKysrKysrLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwo+IGluZGV4IGViMzFi
NjlhMzE2YS4uNDFiMjhmNmQ4NjIwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCj4gQEAg
LTMyNCw2ICszMjQsMjYgQEAgZ3R0X3VzZXJfcmVhZChzdHJ1Y3QgaW9fbWFwcGluZyAqbWFwcGlu
ZywKPiAgIAlyZXR1cm4gdW53cml0dGVuOwo+ICAgfQo+ICAgCj4gK3N0YXRpYyBpbnQgbGluZWFy
X2dndHRfb2Zmc2V0KHN0cnVjdCBpOTE1X3ZtYSAqdm1hLCB1NjQgKm9mZnNldCkKPiArewo+ICsJ
aW50IHJldDsKPiArCj4gKwlHRU1fQlVHX09OKCFpOTE1X3ZtYV9pc19tYXBfYW5kX2ZlbmNlYWJs
ZSh2bWEpKTsKPiArCj4gKwkvKiBPcGVuLWNvZGVkIGk5MTVfdm1hX3Bpbl9pb21hcCgpICovCj4g
Kwo+ICsJaWYgKHZtYS0+ZmVuY2UpIHsKPiArCQltdXRleF9sb2NrKCZ2bWEtPnZtLT5tdXRleCk7
Cj4gKwkJcmV0ID0gaTkxNV92bWFfcmV2b2tlX2ZlbmNlKHZtYSk7Cj4gKwkJbXV0ZXhfdW5sb2Nr
KCZ2bWEtPnZtLT5tdXRleCk7Cj4gKwkJaWYgKHJldCkKPiArCQkJcmV0dXJuIHJldDsKPiArCX0K
PiArCj4gKwkqb2Zmc2V0ID0gaTkxNV9nZ3R0X29mZnNldCh2bWEpOwo+ICsJcmV0dXJuIDA7Cj4g
K30KPiArCj4gICBzdGF0aWMgaW50Cj4gICBpOTE1X2dlbV9ndHRfcHJlYWQoc3RydWN0IGRybV9p
OTE1X2dlbV9vYmplY3QgKm9iaiwKPiAgIAkJICAgY29uc3Qgc3RydWN0IGRybV9pOTE1X2dlbV9w
cmVhZCAqYXJncykKPiBAQCAtMzUwLDcgKzM3MCwxMCBAQCBpOTE1X2dlbV9ndHRfcHJlYWQoc3Ry
dWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKPiAgIAkJCQkJICAgICAgIFBJTl9OT05CTE9D
SyAvKiBOT1dBUk4gKi8gfAo+ICAgCQkJCQkgICAgICAgUElOX05PRVZJQ1QpOwo+ICAgCWlmICgh
SVNfRVJSKHZtYSkpIHsKPiAtCQlub2RlLnN0YXJ0ID0gaTkxNV9nZ3R0X29mZnNldCh2bWEpOwo+
ICsJCXJldCA9IGxpbmVhcl9nZ3R0X29mZnNldCh2bWEsICZub2RlLnN0YXJ0KTsKPiArCQlpZiAo
cmV0KQo+ICsJCQlnb3RvIG91dF91bnBpbjsKPiArCj4gICAJCW5vZGUuYWxsb2NhdGVkID0gZmFs
c2U7Cgpub2RlLmFsbG9jYXRlZCA9IGZhbHNlIHNob3VsZCBnbyBiZWZvcmUgdGhlIGp1bXAuCgo+
ICAgCX0gZWxzZSB7Cj4gICAJCXJldCA9IGluc2VydF9tYXBwYWJsZV9ub2RlKGdndHQsICZub2Rl
LCBQQUdFX1NJWkUpOwo+IEBAIC01NjAsNyArNTgzLDEwIEBAIGk5MTVfZ2VtX2d0dF9wd3JpdGVf
ZmFzdChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAo+ICAgCQkJCQkgICAgICAgUElO
X05PTkJMT0NLIC8qIE5PV0FSTiAqLyB8Cj4gICAJCQkJCSAgICAgICBQSU5fTk9FVklDVCk7Cj4g
ICAJaWYgKCFJU19FUlIodm1hKSkgewo+IC0JCW5vZGUuc3RhcnQgPSBpOTE1X2dndHRfb2Zmc2V0
KHZtYSk7Cj4gKwkJcmV0ID0gbGluZWFyX2dndHRfb2Zmc2V0KHZtYSwgJm5vZGUuc3RhcnQpOwo+
ICsJCWlmIChyZXQpCj4gKwkJCWdvdG8gb3V0X3VucGluOwo+ICsKPiAgIAkJbm9kZS5hbGxvY2F0
ZWQgPSBmYWxzZTsKPiAgIAl9IGVsc2Ugewo+ICAgCQlyZXQgPSBpbnNlcnRfbWFwcGFibGVfbm9k
ZShnZ3R0LCAmbm9kZSwgUEFHRV9TSVpFKTsKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
