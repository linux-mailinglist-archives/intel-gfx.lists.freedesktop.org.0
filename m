Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 877942187ED
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 14:45:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D10A56E0DF;
	Wed,  8 Jul 2020 12:45:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF2E06E0DF
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 12:45:11 +0000 (UTC)
IronPort-SDR: 5Hrci1XS+mY4fwC5Dq6KMKiA9SSvewjkA7h94pXqtupqv+DvKDIzGoF3w0H3Dzh2llqyzoWA0X
 y0NG71NuwXRw==
X-IronPort-AV: E=McAfee;i="6000,8403,9675"; a="127865631"
X-IronPort-AV: E=Sophos;i="5.75,327,1589266800"; d="scan'208";a="127865631"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2020 05:45:11 -0700
IronPort-SDR: YseEs4fxdaM8M6LnHGhJV9CWx1PV8Ni3q0SUhc+yfcIfjWCZ/Z1PH7EJv6+iOfZV84ECOt4WVr
 Jyj41Si5DOKw==
X-IronPort-AV: E=Sophos;i="5.75,327,1589266800"; d="scan'208";a="457490722"
Received: from ipeer3-mobl.ger.corp.intel.com (HELO [10.214.241.189])
 ([10.214.241.189])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2020 05:45:09 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200706061926.6687-1-chris@chris-wilson.co.uk>
 <20200706061926.6687-10-chris@chris-wilson.co.uk>
 <427a43a2-c434-6239-5101-87209472def9@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <b4e4871f-6d71-fac5-dcc0-53e8961b2f33@linux.intel.com>
Date: Wed, 8 Jul 2020 13:45:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <427a43a2-c434-6239-5101-87209472def9@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 09/20] drm/i915/gem: Assign context id for
 async work
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

Ck9uIDA4LzA3LzIwMjAgMTM6MjYsIFR2cnRrbyBVcnN1bGluIHdyb3RlOgo+IAo+IE9uIDA2LzA3
LzIwMjAgMDc6MTksIENocmlzIFdpbHNvbiB3cm90ZToKPj4gQWxsb2NhdGUgYSBmZXcgZG1hIGZl
bmNlIGNvbnRleHQgaWQgdGhhdCB3ZSBjYW4gdXNlIHRvIGFzc29jaWF0ZSBhc3luYyAKPj4gd29y
awo+PiBbZm9yIHRoZSBDUFVdIGxhdW5jaGVkIG9uIGJlaGFsZiBvZiB0aGlzIGNvbnRleHQuIEZv
ciBleHRyYSBmdW4sIHdlIGFsbG93Cj4+IGEgY29uZmlndXJhYmxlIGNvbmN1cnJlbmN5IHdpZHRo
Lgo+Pgo+PiBBIGN1cnJlbnQgZXhhbXBsZSB3b3VsZCBiZSB0aGF0IHdlIHNwYXduIGFuIHVuYm91
bmQgd29ya2VyIGZvciBldmVyeQo+PiB1c2VycHRyIGdldF9wYWdlcy4gSW4gdGhlIGZ1dHVyZSwg
d2Ugd2lzaCB0byBjaGFyZ2UgdGhpcyB3b3JrIHRvIHRoZQo+PiBjb250ZXh0IHRoYXQgaW5pdGlh
dGVkIHRoZSBhc3luYyB3b3JrIGFuZCB0byBpbXBvc2UgY29uY3VycmVuY3kgbGltaXRzCj4+IGJh
c2VkIG9uIHRoZSBjb250ZXh0Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KPj4gLS0tCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9jb250ZXh0LmPCoMKgwqDCoMKgwqAgfCA0ICsrKysKPj4gwqAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuaMKgwqDCoMKgwqDCoCB8IDYgKysr
KysrCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0X3R5cGVz
LmggfCA2ICsrKysrKwo+PiDCoCAzIGZpbGVzIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKykKPj4K
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0
LmMgCj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYwo+PiBp
bmRleCA0MTc4NGRmNTFlNTguLmJkNjg3NDYzMjdiMyAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCj4+IEBAIC03MTQsNiArNzE0LDEwIEBAIF9f
Y3JlYXRlX2NvbnRleHQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4+IMKgwqDCoMKg
wqAgY3R4LT5zY2hlZC5wcmlvcml0eSA9IEk5MTVfVVNFUl9QUklPUklUWShJOTE1X1BSSU9SSVRZ
X05PUk1BTCk7Cj4+IMKgwqDCoMKgwqAgbXV0ZXhfaW5pdCgmY3R4LT5tdXRleCk7Cj4+ICvCoMKg
wqAgY3R4LT5hc3luYy53aWR0aCA9IHJvdW5kZG93bl9wb3dfb2ZfdHdvKG51bV9vbmxpbmVfY3B1
cygpKTsKPj4gK8KgwqDCoCBjdHgtPmFzeW5jLmNvbnRleHQgPSBkbWFfZmVuY2VfY29udGV4dF9h
bGxvYyhjdHgtPmFzeW5jLndpZHRoKTsKPj4gK8KgwqDCoCBjdHgtPmFzeW5jLndpZHRoLS07Cj4g
Cj4gSGV5IEkgaGFkIGEgdHJpLWNvcmUgQ1BVIGJhY2sgaW4gdGhlIGRheS4uIDopIFJlYWxseSwg
SSBjYW4gb25seSBhc3N1bWUgCj4geW91IGFyZSBvZGluZyBzb21lIHRyaWNrcyB3aXRoIG1hc2tz
IHdoaWNoIG1heWJlIG9ubHkgd29yayB3aXRoIHBvd2VyIG9mIAo+IDIgbnVtIGNwdXM/IEhhcmQg
dG8gc2F5Li4gcGxlYXNlIGV4cGxhaW4gaW4gYSBjb21tZW50LgoKRG9oIG1pc3NlZCByb3VuZGRv
d25fcG93X29mX3R3by4uCgo+IEkgZG9uJ3QgZXZlbiB1bmRlcnN0YW5kIHdoYXQgdGhlIGNvbnRl
eHQgd2lsbCBiZSBmb3IgeWV0IGFuZCB3aHkgaXQgCj4gbmVlZHMgYSBzZXBhcmF0ZSBjb250ZXh0
IGlkLgo+IAo+PiArCj4+IMKgwqDCoMKgwqAgc3Bpbl9sb2NrX2luaXQoJmN0eC0+c3RhbGUubG9j
ayk7Cj4+IMKgwqDCoMKgwqAgSU5JVF9MSVNUX0hFQUQoJmN0eC0+c3RhbGUuZW5naW5lcyk7Cj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5o
IAo+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmgKPj4gaW5k
ZXggMzcwMmIyZmIyN2FiLi5lMTA0ZmYwYWU3NDAgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmgKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuaAo+PiBAQCAtMTM0LDYgKzEzNCwxMiBAQCBpbnQg
aTkxNV9nZW1fY29udGV4dF9zZXRwYXJhbV9pb2N0bChzdHJ1Y3QgCj4+IGRybV9kZXZpY2UgKmRl
diwgdm9pZCAqZGF0YSwKPj4gwqAgaW50IGk5MTVfZ2VtX2NvbnRleHRfcmVzZXRfc3RhdHNfaW9j
dGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAKPj4gKmRhdGEsCj4+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgZHJtX2ZpbGUgKmZp
bGUpOwo+PiArc3RhdGljIGlubGluZSB1NjQgaTkxNV9nZW1fY29udGV4dF9hc3luY19pZChzdHJ1
Y3QgaTkxNV9nZW1fY29udGV4dCAKPj4gKmN0eCkKPj4gK3sKPj4gK8KgwqDCoCByZXR1cm4gKGN0
eC0+YXN5bmMuY29udGV4dCArCj4+ICvCoMKgwqDCoMKgwqDCoCAoYXRvbWljX2ZldGNoX2luYygm
Y3R4LT5hc3luYy5jdXIpICYgY3R4LT5hc3luYy53aWR0aCkpOwo+PiArfQo+PiArCj4+IMKgIHN0
YXRpYyBpbmxpbmUgc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKgo+PiDCoCBpOTE1X2dlbV9jb250
ZXh0X2dldChzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4KQo+PiDCoCB7Cj4+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dF90eXBlcy5oIAo+
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0X3R5cGVzLmgKPj4g
aW5kZXggYWUxNGNhMjRhMTFmLi41MjU2MWY5ODAwMGYgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0X3R5cGVzLmgKPj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHRfdHlwZXMuaAo+PiBAQCAtODUsNiAr
ODUsMTIgQEAgc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgewo+PiDCoMKgwqDCoMKgIHN0cnVjdCBp
bnRlbF90aW1lbGluZSAqdGltZWxpbmU7Cj4+ICvCoMKgwqAgc3RydWN0IHsKPj4gK8KgwqDCoMKg
wqDCoMKgIHU2NCBjb250ZXh0Owo+PiArwqDCoMKgwqDCoMKgwqAgYXRvbWljX3QgY3VyOwo+IAo+
IFdoYXQgaXMgY3VyPyBJbiB3aGljaCBwYXRjaCBpdCBnZXRzIHVzZWQ/IChDYW4ndCBzZWUgaXQu
KQoKRm91bmQgaXQuIEp1c3QgbW9yZSBleHBsYW5hdGlvbiB3aHkgaXQgaXMgbmVlZGVkIGlzIHJl
cXVpcmVkLgoKUmVnYXJkcywKClR2cnRrbwoKPiAKPj4gK8KgwqDCoMKgwqDCoMKgIHVuc2lnbmVk
IGludCB3aWR0aDsKPj4gK8KgwqDCoCB9IGFzeW5jOwo+PiArCj4+IMKgwqDCoMKgwqAgLyoqCj4+
IMKgwqDCoMKgwqDCoCAqIEB2bTogdW5pcXVlIGFkZHJlc3Mgc3BhY2UgKEdUVCkKPj4gwqDCoMKg
wqDCoMKgICoKPj4KPiAKPiBSZWdhcmRzLAo+IAo+IFR2cnRrbwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
