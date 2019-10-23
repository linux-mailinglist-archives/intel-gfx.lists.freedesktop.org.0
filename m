Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C92FEE1517
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 11:03:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E3786E9F7;
	Wed, 23 Oct 2019 09:03:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A43F06E9F7
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2019 09:03:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2019 02:03:29 -0700
X-IronPort-AV: E=Sophos;i="5.68,220,1569308400"; d="scan'208";a="191771371"
Received: from mdlugoke-mobl1.ger.corp.intel.com (HELO [10.251.81.75])
 ([10.251.81.75])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 23 Oct 2019 02:03:27 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191022223316.12662-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <1d6dd372-ae0b-7b1a-c248-58fcc0d33700@linux.intel.com>
Date: Wed, 23 Oct 2019 10:03:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191022223316.12662-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Release
 ctx->engine_mutex after iteration
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDIyLzEwLzIwMTkgMjM6MzMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBBIGxvY2sgb25jZSB0
YWtlbiBtdXN0IGJlIHJlbGVhc2VkIGFnYWluLgo+IAo+IEZpeGVzOiBjMzFjOWU4MmVlOGEgKCJk
cm0vaTkxNS9zZWxmdGVzdHM6IFRlYWNoIHN3aXRjaF90b19jb250ZXh0KCkgdG8gdXNlIHRoZSBj
b250ZXh0IikKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4K
PiBDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6
IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbS5jIHwgMTAgKysrKysrKy0tLQo+ICAgMSBm
aWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfZ2VtLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW0uYwo+IGluZGV4IDg0ZTdjYTc3OGI3Yi4u
NmQyMjU2N2FkNjIwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0
cy9pOTE1X2dlbS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVf
Z2VtLmMKPiBAQCAtMTksMTggKzE5LDIyIEBAIHN0YXRpYyBpbnQgc3dpdGNoX3RvX2NvbnRleHQo
c3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCkKPiAgIHsKPiAgIAlzdHJ1Y3QgaTkxNV9nZW1f
ZW5naW5lc19pdGVyIGl0Owo+ICAgCXN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZTsKPiArCWludCBl
cnIgPSAwOwo+ICAgCj4gICAJZm9yX2VhY2hfZ2VtX2VuZ2luZShjZSwgaTkxNV9nZW1fY29udGV4
dF9sb2NrX2VuZ2luZXMoY3R4KSwgaXQpIHsKPiAgIAkJc3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7
Cj4gICAKPiAgIAkJcnEgPSBpbnRlbF9jb250ZXh0X2NyZWF0ZV9yZXF1ZXN0KGNlKTsKPiAtCQlp
ZiAoSVNfRVJSKHJxKSkKPiAtCQkJcmV0dXJuIFBUUl9FUlIocnEpOwo+ICsJCWlmIChJU19FUlIo
cnEpKSB7Cj4gKwkJCWVyciA9IFBUUl9FUlIocnEpOwo+ICsJCQlicmVhazsKPiArCQl9Cj4gICAK
PiAgIAkJaTkxNV9yZXF1ZXN0X2FkZChycSk7Cj4gICAJfQo+ICsJaTkxNV9nZW1fY29udGV4dF91
bmxvY2tfZW5naW5lcyhjdHgpOwo+ICAgCj4gLQlyZXR1cm4gMDsKPiArCXJldHVybiBlcnI7Cj4g
ICB9Cj4gICAKPiAgIHN0YXRpYyB2b2lkIHRyYXNoX3N0b2xlbihzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSkKPiAKClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3Vs
aW5AaW50ZWwuY29tPgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
