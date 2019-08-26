Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E6F39CFC4
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 14:44:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3316F89F0B;
	Mon, 26 Aug 2019 12:44:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4089F89F0B
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 12:44:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18266081-1500050 for multiple; Mon, 26 Aug 2019 13:44:40 +0100
MIME-Version: 1.0
To: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190826122102.32400-3-abdiel.janulgue@linux.intel.com>
References: <20190826122102.32400-1-abdiel.janulgue@linux.intel.com>
 <20190826122102.32400-3-abdiel.janulgue@linux.intel.com>
Message-ID: <156682347817.12194.18329958830232116479@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 26 Aug 2019 13:44:38 +0100
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915: Add cpu fault handler for
 mmap_offset
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBBYmRpZWwgSmFudWxndWUgKDIwMTktMDgtMjYgMTM6MjE6MDApCj4gRmF1bHQgaGFu
ZGxlciB0byBoYW5kbGUgbWlzc2luZyBwYWdlcyBmb3Igc2htZW0tYmFja2VkIG9iamVjdHMuIEhh
bmRsZSBhbHNvCj4gbG9naWMgbmVlZGVkIHRvIHJlZmF1bHQgcGFnZXMgZGVwZW5kaW5nIG9uIGZh
dWx0IGhhbmRsZXIgdXNhZ2UuCj4gCj4gU2lnbmVkLW9mZi1ieTogQWJkaWVsIEphbnVsZ3VlIDxh
YmRpZWwuamFudWxndWVAbGludXguaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IE1hdHRoZXcg
QXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KPiBDYzogSm9vbmFzIExhaHRpbmVuIDxqb29u
YXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fZG9tYWluLmMgfCAgIDIgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX21tYW4uYyAgIHwgMTg5ICsrKysrKysrKysrKysrKystLS0tLQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmggfCAgIDIgKy0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyAgICAgICAgICAgIHwgICAyICstCj4gIDQgZmlsZXMg
Y2hhbmdlZCwgMTQ5IGluc2VydGlvbnMoKyksIDQ2IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmMKPiBpbmRleCA5YzU4ZThmYWMxZDku
LjUxN2U3M2MzYWEzMSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fZG9tYWluLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
ZG9tYWluLmMKPiBAQCAtMjU0LDcgKzI1NCw3IEBAIGludCBpOTE1X2dlbV9vYmplY3Rfc2V0X2Nh
Y2hlX2xldmVsKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCj4gICAgICAgICAgICAg
ICAgICAgICAgICAgfQo+ICAKPiAgICAgICAgICAgICAgICAgICAgICAgICBpZiAob2JqLT51c2Vy
ZmF1bHRfY291bnQpCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBfX2k5MTVfZ2Vt
X29iamVjdF9yZWxlYXNlX21tYXAob2JqKTsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIF9faTkxNV9nZW1fb2JqZWN0X3JlbGVhc2VfbW1hcF9ndHQob2JqKTsKPiAgCj4gICAgICAg
ICAgICAgICAgICAgICAgICAgLyoKPiAgICAgICAgICAgICAgICAgICAgICAgICAgKiBBcyB3ZSBu
byBsb25nZXIgbmVlZCBhIGZlbmNlIGZvciBHVFQgYWNjZXNzLAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYwo+IGluZGV4IDg3NjkwYWE2NDgxNC4uZDBhNjUzYTlhNGNj
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jCj4gQEAgLTUs
NiArNSw3IEBACj4gICAqLwo+ICAKPiAgI2luY2x1ZGUgPGxpbnV4L21tYW4uaD4KPiArI2luY2x1
ZGUgPGxpbnV4L3Bmbl90Lmg+Cj4gICNpbmNsdWRlIDxsaW51eC9zaXplcy5oPgo+ICAKPiAgI2lu
Y2x1ZGUgImd0L2ludGVsX2d0LmgiCj4gQEAgLTE5OSw2ICsyMDAsNDUgQEAgY29tcHV0ZV9wYXJ0
aWFsX3ZpZXcoY29uc3Qgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKPiAgICAgICAg
IHJldHVybiB2aWV3Owo+ICB9Cj4gIAo+ICtzdGF0aWMgdm1fZmF1bHRfdCBpOTE1X2Vycm9yX3Rv
X3ZtZl9mYXVsdChpbnQgZXJyLCBzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQo+ICt7Cj4gKyAgICAgICBz
d2l0Y2ggKGVycikgewo+ICsgICAgICAgY2FzZSAtRUlPOgo+ICsgICAgICAgICAgICAgICAvKgo+
ICsgICAgICAgICAgICAgICAgKiBXZSBlYXQgZXJyb3JzIHdoZW4gdGhlIGdwdSBpcyB0ZXJtaW5h
bGx5IHdlZGdlZCB0byBhdm9pZAo+ICsgICAgICAgICAgICAgICAgKiB1c2Vyc3BhY2UgdW5kdWx5
IGNyYXNoaW5nIChnbCBoYXMgbm8gcHJvdmlzaW9ucyBmb3IgbW1hcHMgdG8KPiArICAgICAgICAg
ICAgICAgICogZmFpbCkuIEJ1dCBhbnkgb3RoZXIgLUVJTyBpc24ndCBvdXJzIChlLmcuIHN3YXAg
aW4gZmFpbHVyZSkKPiArICAgICAgICAgICAgICAgICogYW5kIHNvIG5lZWRzIHRvIGJlIHJlcG9y
dGVkLgo+ICsgICAgICAgICAgICAgICAgKi8KPiArICAgICAgICAgICAgICAgaWYgKCFpbnRlbF9n
dF9pc193ZWRnZWQoZ3QpKQo+ICsgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiBWTV9GQVVM
VF9TSUdCVVM7Cj4gKyAgICAgICAgICAgICAgIC8qIGVsc2UsIGZhbGwgdGhyb3VnaCAqLwo+ICsg
ICAgICAgY2FzZSAtRUFHQUlOOgo+ICsgICAgICAgICAgICAgICAvKgo+ICsgICAgICAgICAgICAg
ICAgKiBFQUdBSU4gbWVhbnMgdGhlIGdwdSBpcyBodW5nIGFuZCB3ZSdsbCB3YWl0IGZvciB0aGUg
ZXJyb3IKPiArICAgICAgICAgICAgICAgICogaGFuZGxlciB0byByZXNldCBldmVyeXRoaW5nIHdo
ZW4gcmUtZmF1bHRpbmcgaW4KPiArICAgICAgICAgICAgICAgICogaTkxNV9tdXRleF9sb2NrX2lu
dGVycnVwdGlibGUuCj4gKyAgICAgICAgICAgICAgICAqLwoKVGhlc2UgZXJyb3JzIGRvbid0IGV4
aXN0IGFueW1vcmUgYW5kIHNob3VsZCBub3QgYmUgY2FyZ28tY3VsdGVkIG9udG8KcGF0aHMgdGhh
dCBjb3VsZCBub3QgcG9zc2libHkgZ2VuZXJhdGUgdGhlbS4KLUNocmlzCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
