Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70DF3719A4
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 15:44:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE1D46E29E;
	Tue, 23 Jul 2019 13:44:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A13AB6E29E
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2019 13:44:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 06:44:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,299,1559545200"; d="scan'208";a="368376002"
Received: from jsartini-mobl.ger.corp.intel.com (HELO [10.252.0.141])
 ([10.252.0.141])
 by fmsmga005.fm.intel.com with ESMTP; 23 Jul 2019 06:44:40 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190718070024.21781-1-chris@chris-wilson.co.uk>
 <20190718070024.21781-3-chris@chris-wilson.co.uk>
 <6c8ae9af-0a23-5f62-9740-6dc7e9b9ed42@linux.intel.com>
 <156381289355.31349.2085005736634640131@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <c9981100-2479-0066-ee8f-f16cf9dfa80d@linux.intel.com>
Date: Tue, 23 Jul 2019 14:44:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156381289355.31349.2085005736634640131@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 03/20] drm/i915/gt: Provde a local
 intel_context.vm
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

Ck9uIDIyLzA3LzIwMTkgMTc6MjgsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA3LTIyIDEzOjMzOjE0KQo+Pgo+PiBPbiAxOC8wNy8yMDE5IDA4OjAw
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBAQCAtMTExMyw5ICsxMTIxLDggQEAgc3RhdGljIGlu
dCBzZXRfcHBndHQoc3RydWN0IGRybV9pOTE1X2ZpbGVfcHJpdmF0ZSAqZmlsZV9wcml2LAo+Pj4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNldF9wcGd0dF9iYXJyaWVyLAo+Pj4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG9sZCk7Cj4+PiAgICAgICAgaWYgKGVy
cikgewo+Pj4gLSAgICAgICAgICAgICBjdHgtPnZtID0gb2xkOwo+Pj4gLSAgICAgICAgICAgICBj
dHgtPmRlc2NfdGVtcGxhdGUgPSBkZWZhdWx0X2Rlc2NfdGVtcGxhdGUoY3R4LT5pOTE1LCBvbGQp
Owo+Pj4gLSAgICAgICAgICAgICBpOTE1X3ZtX3B1dCh2bSk7Cj4+PiArICAgICAgICAgICAgIGk5
MTVfdm1fcHV0KF9fc2V0X3BwZ3R0KGN0eCwgb2xkKSk7Cj4+PiArICAgICAgICAgICAgIGk5MTVf
dm1fcHV0KG9sZCk7Cj4+Cj4+IFNob3VsZG4ndCB0aGlzIHN0aWxsIGJlIGk5MTVfdm1fb3V0KHZt
KSwgZm9yIHRoZSBleHRyYSB2bSByZWZlcmVuY2UgdGhlCj4+IGZ1bmN0aW9uIGRpZCBmdXJ0aGVy
IHVwPwo+IAo+IF9fc2V0X3BwZ3R0KCkgcmV0dXJucyB0aGUgdm0sIHNvIHRoaXMgaXMKPiAJaTkx
NV92bV9wdXQodm0pOwo+IAlpOTE1X3ZtX3B1dChvbGQpOyAvKiBzaW5jZSB3ZSBqdXN0IGFjcXVp
cmVkIGEgcmVmIHRvIG9sZCBhZ2FpbiAqLwoKZ2V0KG9sZCksIHB1dCh2bSksIHB1dChvbGQpIC0g
b2theSwgeW91IHNlZW0gdG8gYmUgcmlnaHQgaW5kZWVkLgoKRml4IGEgdHlwbyBpbiBzdWJqZWN0
IGFuZDoKClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwu
Y29tPgoKUmVnYXJkcywKClR2cnRrbwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
