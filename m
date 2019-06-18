Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 969784AEC7
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 01:38:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E16156E270;
	Tue, 18 Jun 2019 23:38:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8B316E270
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 23:37:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 16:37:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,390,1557212400"; d="scan'208";a="161889981"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga007.fm.intel.com with ESMTP; 18 Jun 2019 16:37:59 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190617180935.505-1-daniele.ceraolospurio@intel.com>
 <20190617180935.505-6-daniele.ceraolospurio@intel.com>
 <550f7eb9-7021-4dd2-2f8f-90f95bcec715@linux.intel.com>
 <2f8d35a3-7c47-9a02-7bbb-5b4d72ccfbe1@intel.com>
 <156090018238.6388.4975670636065726873@skylake-alporthouse-com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <137a8fa6-4a03-56f3-475a-e45c6d920698@intel.com>
Date: Tue, 18 Jun 2019 16:37:47 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <156090018238.6388.4975670636065726873@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915: dynamically allocate
 forcewake domains
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

CgpPbiA2LzE4LzE5IDQ6MjMgUE0sIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIERhbmll
bGUgQ2VyYW9sbyBTcHVyaW8gKDIwMTktMDYtMTkgMDA6MDY6MzkpCj4+Cj4+Cj4+IE9uIDYvMTgv
MTkgMjoyMyBBTSwgVHZydGtvIFVyc3VsaW4gd3JvdGU6Cj4+Pgo+Pj4gT24gMTcvMDYvMjAxOSAx
OTowOSwgRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyB3cm90ZToKPj4+PiAtc3RhdGljIHZvaWQgaW50
ZWxfdW5jb3JlX2Z3X2RvbWFpbnNfaW5pdChzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUpCj4+
Pj4gK3N0YXRpYyBpbnQgaW50ZWxfdW5jb3JlX2Z3X2RvbWFpbnNfaW5pdChzdHJ1Y3QgaW50ZWxf
dW5jb3JlICp1bmNvcmUpCj4+Pj4gIMKgIHsKPj4+PiAgwqDCoMKgwqDCoCBzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSA9IHVuY29yZS0+aTkxNTsKPj4+PiArwqDCoMKgIGludCByZXQ7Cj4+
Pj4gIMKgwqDCoMKgwqAgR0VNX0JVR19PTighaW50ZWxfdW5jb3JlX2hhc19mb3JjZXdha2UodW5j
b3JlKSk7Cj4+Pj4gKyNkZWZpbmUgX19md19kb21haW5faW5pdChpZF9fLCBzZXRfXywgYWNrX18p
IFwKPj4+PiArwqDCoMKgIHJldCA9IGZ3X2RvbWFpbl9pbml0KHVuY29yZSwgKGlkX18pLCAoc2V0
X18pLCAoYWNrX18pKTsgXAo+Pj4+ICvCoMKgwqAgaWYgKHJldCkgXAo+Pj4+ICvCoMKgwqDCoMKg
wqDCoCBnb3RvIG91dF9jbGVhbjsKPj4+Cj4+PiBIaWRkZW4gY29udHJvbCBmbG93IGlzIHNsaWdo
dGx5IG9iamVjdGlvbmFibGUgYnV0IEkgZG9uJ3Qgb2ZmZXIgYW55IG5pY2UKPj4+IGFsdGVybmF0
aXZlcyBzbyBJIGd1ZXNzIHdpbGwgaGF2ZSB0byBwYXNzLiBPciBtYXliZSBhY2N1bXVsYXRlIHRo
ZSBlcnJvcgo+Pj4gKGVyciB8PSBmd19kb21haW5faW5pdCguLikpIGFzIHlvdSBnbyBhbmQgdGhl
biBjbGVhbnVwIGF0IHRoZSBlbmQgaWYgYW55Cj4+PiBmYWlsZWQ/Cj4+Cj4+IEknZCBwcmVmZXIg
dG8gYXZvaWQgYWNjdW11bGF0aW5nIHRoZSBlcnJvciBzaW5jZSBpdCdkIGp1c3QgY2F1c2UgdXMg
dG8KPj4gaGF2aW5nIHRvIHVucm9sbCBtb3JlIGRvbWFpbnMgd2hlbiB3ZSBjb3VsZCd2ZSBzdG9w
cGVkIGVhcmx5Lgo+Pgo+Pj4KPj4+IE9uIHRoZSBvdGhlciBoYW5kIHRoZSBpZGVhIHNsaWdodGx5
IGNvbmZsaWN0cyB3aXRoIG15IG90aGVyIHN1Z2dlc3Rpb24KPj4+IHRvIHJlbmFtZSBleGlzdGlu
ZyBmd19kb21haW5faW5pdCB0byBfX2Z3X2RvbWFpbl9pbml0IGFuZCBjYWxsIHRoZSBtYWNybwo+
Pj4gZndfZG9tYWluX2luaXQgYW5kIGF2b2lkIGFsbCB0aGUgY2h1cm4gYmVsb3cuCj4+Pgo+Pgo+
PiBJJ2xsIHBpY2sgdGhpcyBzdWdnZXN0aW9uIGFtb25nIHRoZSAyLCB1bmxlc3MgdGhlcmUgaXMg
YW5vdGhlcgo+PiBzdWdnZXN0aW9uIG9uIGhvdyB0byBhdm9pZCB0aGUgaGlkZGVuIGdvdG8uCj4g
Cj4gQmUgY2FyZWZ1bCwgb3IgeW91J2xsIGdpdmUgVHZydGtvIHRoZSBjaGFuY2UgdG8gc3VnZ2Vz
dCB0YWJsZSBkcml2ZW4KPiBzZXR1cC4gTWF5YmU/Cj4gLUNocmlzCj4gCgpJIGRpZCBjb25zaWRl
ciB1c2luZyBhIHRhYmxlIG15c2VsZiwgYnV0IHRoZSBkaWZmZXJlbmNlcyBiZXR3ZWVuIHRoZSAK
ZG9tYWlucyBhcmUgbm90IGVhc3kgdG8gcHV0IGluIGEgdGFibGUgc2luY2Ugc29tZSBvZiB0aGVt
IGFyZSBwZXItZ2VuIAphbmQgb3RoZXIgcGVyLXBsYXRmb3JtLiBXZSBjb3VsZCBjb21iaW5lIGEg
dGFibGUgd2l0aCBpbmZvcm1hdGlvbiBpbiB0aGUgCmRldmljZV9pbmZvIHN0cnVjdCBsaWtlIHdl
IGRvIGZvciB0aGUgZW5naW5lcywgYnV0IHRoYXQgZmVsdCBhIGJpdCBsaWtlIApvdmVya2lsbCB0
byBtZS4KCkRhbmllbGUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
