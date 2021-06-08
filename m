Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9552839F317
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 11:57:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AAF76EB9A;
	Tue,  8 Jun 2021 09:57:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51F506EB9A;
 Tue,  8 Jun 2021 09:57:24 +0000 (UTC)
IronPort-SDR: dpJ8iqeMshQfBrFeQorWkY34Ah3TuyiaIOMfh17lgWC0nEFB5dBpL6O3ewpNsxGbWfLd2AKrqt
 IjNsS6DMGstA==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="184497863"
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="184497863"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 02:57:23 -0700
IronPort-SDR: /hdK1PNlNI5g+cP3Eyv8o4vvczEYtQFVh+GWXZtkXDbYrmHjC/ZNijYJqVbEkiDQVqWH3M6B48
 gi7y7js4ZCMw==
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="485157306"
Received: from mrahim1x-mobl.gar.corp.intel.com (HELO [10.215.170.251])
 ([10.215.170.251])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 02:57:20 -0700
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210602093636.167070-1-matthew.auld@intel.com>
 <3af30ebb-a46b-2b21-57b0-988b2400ac08@linux.intel.com>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <f009f03e-ec03-e180-ac25-fff2e0ceb856@intel.com>
Date: Tue, 8 Jun 2021 10:57:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <3af30ebb-a46b-2b21-57b0-988b2400ac08@linux.intel.com>
Content-Language: en-GB
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem/mman: only allow WC for lmem
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, dri-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMDIvMDYvMjAyMSAxMzowMCwgVGhvbWFzIEhlbGxzdHLDtm0gd3JvdGU6Cj4gSGksCj4gCj4g
T24gNi8yLzIxIDExOjM2IEFNLCBNYXR0aGV3IEF1bGQgd3JvdGU6Cj4+IEZvciBkZ2Z4IHdoZXJl
IHdlIG5vdyBoYXZlIGxtZW0gYW5kIHR0bSwgd2UgY2FuIG9ubHkgc3VwcG9ydCBzaW5nbGUgbW1h
cAo+PiBtb2RlIGZvciB0aGUgbGlmZXRpbWUgb2YgdGhlIG9iamVjdCwgYW5kIGZvciBsbWVtIG9i
amVjdHMgdGhpcyBzaG91bGQgYmUKPj4gV0MsIHNvIHJlamVjdCBhbGwgb3RoZXIgbWFwcGluZyBt
b2RlcyBmb3IgbW1hcF9vZmZzZXQsIGluY2x1ZGluZyBpZiB0aGUKPj4gb2JqZWN0IGNhbiBiZSBw
bGFjZWQgaW4gYm90aCBzbWVtIGFuZCBsbWVtLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBNYXR0aGV3
IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4+IENjOiBUaG9tYXMgSGVsbHN0csO2bSA8
dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+Cj4+IENjOiBNYWFydGVuIExhbmtob3Jz
dCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+PiBDYzogRGFuaWVsIFZldHRl
ciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KPj4gLS0tCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9tbWFuLmPCoMKgIHzCoCA0ICsrKysKPj4gwqAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jIHwgMjIgKysrKysrKysrKysrKysrKysrKysr
Kwo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmggfMKgIDQg
KysrKwo+PiDCoCAzIGZpbGVzIGNoYW5nZWQsIDMwIGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMgCj4+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYwo+PiBpbmRleCBmZDFjOTcxNGY4
ZDguLjMyZjg4ZjIzNjc3MSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX21tYW4uYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fbW1hbi5jCj4+IEBAIC02ODksNiArNjg5LDEwIEBAIF9fYXNzaWduX21tYXBfb2Zmc2V0KHN0
cnVjdCBkcm1fZmlsZSAqZmlsZSwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGdvdG8gb3V0Owo+PiDC
oMKgwqDCoMKgIH0KPj4gK8KgwqDCoCBpZiAobW1hcF90eXBlICE9IEk5MTVfTU1BUF9UWVBFX1dD
ICYmCj4+ICvCoMKgwqDCoMKgwqDCoCBpOTE1X2dlbV9vYmplY3RfcGxhY2VtZW50c19jb250YWlu
X3R5cGUob2JqLCAKPj4gSU5URUxfTUVNT1JZX0xPQ0FMKSkKPj4gK8KgwqDCoMKgwqDCoMKgIHJl
dHVybiAtRU5PREVWOwo+PiArCj4gCj4gSSB0aGluayB3ZSB3aWxsIGFsc28gaGF2ZSB0aGUgcmVz
dHJpY3Rpb24gdGhhdCBhbnkgb3RoZXIgb2JqZWN0cyBvbiBER0ZYIAo+IGNhbiBvbmx5IGJlIG1h
cHBlZCBjYWNoZWQ/IEF0IGxlYXN0IHRoYXQncyB3aGF0IHRoZSBUVE0gY29kZSBpcyAKPiBpbXBs
ZW1lbnRpbmcgY3VycmVudGx5LgoKWWVhaCwgd2l0aCB0aGlzIHBhdGNoIHRoZSBjYWNoaW5nIG1v
ZGUgc2hvdWxkIG5vdyBhdCBsZWFzdCBiZSBjb25zaXN0ZW50IApmb3IgbG1lbSBvYmplY3RzLCBm
b3Igc21lbSB3ZSBzdGlsbCBuZWVkIG1vcmUgcGF0Y2hlcy4KCj4gCj4gCj4+IMKgwqDCoMKgwqAg
bW1vID0gbW1hcF9vZmZzZXRfYXR0YWNoKG9iaiwgbW1hcF90eXBlLCBmaWxlKTsKPj4gwqDCoMKg
wqDCoCBpZiAoSVNfRVJSKG1tbykpIHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGVyciA9IFBUUl9F
UlIobW1vKTsKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9vYmplY3QuYyAKPj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0
LmMKPj4gaW5kZXggMmJlNjEwOWQwMDkzLi5kNGIwZGE4ZWQ5NjkgMTAwNjQ0Cj4+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYwo+PiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMKPj4gQEAgLTQwMyw2ICs0MDMsMjgg
QEAgaW50IGk5MTVfZ2VtX29iamVjdF9yZWFkX2Zyb21fcGFnZShzdHJ1Y3QgCj4+IGRybV9pOTE1
X2dlbV9vYmplY3QgKm9iaiwgdTY0IG9mZnNldCwKPj4gwqDCoMKgwqDCoCByZXR1cm4gMDsKPj4g
wqAgfQo+PiArLyoqCj4+ICsgKiBpOTE1X2dlbV9vYmplY3RfcGxhY2VtZW50c19jb250YWluX3R5
cGUgLSBDaGVjayB3aGV0aGVyIHRoZSBvYmplY3QgCj4+IGNhbiBiZQo+PiArICogcGxhY2VkIGF0
IGNlcnRhaW4gbWVtb3J5IHR5cGUKPj4gKyAqIEBvYmo6IFBvaW50ZXIgdG8gdGhlIG9iamVjdAo+
PiArICogQHR5cGU6IFRoZSBtZW1vcnkgdHlwZSB0byBjaGVjawo+PiArICoKPj4gKyAqIFJldHVy
bjogVHJ1ZSBpZiB0aGUgb2JqZWN0IGNhbiBiZSBwbGFjZWQgaW4gQHR5cGUuIEZhbHNlIG90aGVy
d2lzZS4KPj4gKyAqLwo+PiArYm9vbCBpOTE1X2dlbV9vYmplY3RfcGxhY2VtZW50c19jb250YWlu
X3R5cGUoc3RydWN0IAo+PiBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCj4+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZW51bSBpbnRlbF9tZW1vcnlf
dHlwZSB0eXBlKQo+PiArewo+PiArwqDCoMKgIHVuc2lnbmVkIGludCBpOwo+PiArCj4+ICvCoMKg
wqAgLyogVE9ETzogY29uc2lkZXIgbWF5YmUgc3RvcmluZyBhcyBhIG1hc2sgd2hlbiBkb2luZyAK
Pj4gZ2VtX2NyZWF0ZV9leHQgKi8KPj4gK8KgwqDCoCBmb3IgKGkgPSAwOyBpIDwgb2JqLT5tbS5u
X3BsYWNlbWVudHM7IGkrKykgewo+PiArwqDCoMKgwqDCoMKgwqAgaWYgKG9iai0+bW0ucGxhY2Vt
ZW50c1tpXS0+dHlwZSA9PSB0eXBlKQo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4g
dHJ1ZTsKPj4gK8KgwqDCoCB9Cj4+ICsKPj4gK8KgwqDCoCByZXR1cm4gZmFsc2U7Cj4+ICt9Cj4+
ICsKPiAKPiBEbyB3ZSBuZWVkIHNvbWV0aGluZyBmb3IgdGhlIGluLWtlcm5lbCBtYXBwaW5ncyBh
cyB3ZWxsPyBPciBqdXN0IHJldHVybiAKPiBhIG1hcHBpbmcgd2l0aCB0aGUgb25seSBhbGxvd2Vk
IGNhY2hpbmcgbW9kZT8KCkZvciBsbWVtIGV2ZXJ5dGhpbmcgc2hvdWxkIGFscmVhZHkgYmUgV0Mg
Zm9yIGluLWtlcm5lbCBtYXBwaW5ncy4gRm9yIApldmVyeXRoaW5nIGVsc2Ugd2hpY2ggdXNlcyBw
aW5fbWFwKCkgd2Ugd2lsbCBuZWVkIHRvIGRlZmF1bHQgdG8gY2FjaGVkLiAKSSBndWVzcyBqdXN0
IGFkZCBhIGRpZmZlcmVudCBoZWxwZXIgZm9yIHRoaXM/IFdlIHNob3VsZCBwcm9iYWJseSBhbHNv
IAphZGp1c3QgdGhlIG9iai0+Y2FjaGVfbGV2ZWwgZm9yIGRnMS4KCj4gCj4gL1Rob21hcwo+IAo+
IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
