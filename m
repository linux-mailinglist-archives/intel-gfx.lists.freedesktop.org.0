Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B09AD3C61B
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2019 10:41:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F29908910E;
	Tue, 11 Jun 2019 08:41:05 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CE888910E
 for <Intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2019 08:41:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jun 2019 01:41:04 -0700
X-ExtLoop1: 1
Received: from nmanovic-mobl.ccr.corp.intel.com (HELO [10.252.13.223])
 ([10.252.13.223])
 by fmsmga004.fm.intel.com with ESMTP; 11 Jun 2019 01:41:03 -0700
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20190610155419.23723-1-tvrtko.ursulin@linux.intel.com>
 <20190610155419.23723-9-tvrtko.ursulin@linux.intel.com>
 <156018341785.383.14827754445562949685@skylake-alporthouse-com>
 <1b9b317e-915c-5ffe-e904-cf281a84e972@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <d44bae42-9ccb-2135-7787-3f9efde94000@linux.intel.com>
Date: Tue, 11 Jun 2019 09:41:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1b9b317e-915c-5ffe-e904-cf281a84e972@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 08/14] drm/i915: Store backpointer to intel_gt
 in the engine
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

Ck9uIDEwLzA2LzIwMTkgMTk6MTcsIERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gd3JvdGU6Cj4gT24g
Ni8xMC8xOSA5OjE2IEFNLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+IFF1b3RpbmcgVHZydGtvIFVy
c3VsaW4gKDIwMTktMDYtMTAgMTY6NTQ6MTMpCj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmggCj4+PiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oCj4+PiBpbmRleCAwMTIyMzg2NDIzN2EuLjM0M2M0
NDU5ZThhMyAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2Vu
Z2luZV90eXBlcy5oCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdp
bmVfdHlwZXMuaAo+Pj4gQEAgLTM0LDYgKzM0LDcgQEAgc3RydWN0IGRybV9pOTE1X3JlZ190YWJs
ZTsKPj4+IMKgIHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0Owo+Pj4gwqAgc3RydWN0IGk5MTVfcmVx
dWVzdDsKPj4+IMKgIHN0cnVjdCBpOTE1X3NjaGVkX2F0dHI7Cj4+PiArc3RydWN0IGludGVsX2d0
Owo+Pj4gwqAgc3RydWN0IGludGVsX3VuY29yZTsKPj4+IMKgIHR5cGVkZWYgdTggaW50ZWxfZW5n
aW5lX21hc2tfdDsKPj4+IEBAIC0yNjYsNiArMjY3LDcgQEAgc3RydWN0IGludGVsX2VuZ2luZV9l
eGVjbGlzdHMgewo+Pj4gwqAgc3RydWN0IGludGVsX2VuZ2luZV9jcyB7Cj4+PiDCoMKgwqDCoMKg
wqDCoMKgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1Owo+Pj4gK8KgwqDCoMKgwqDCoCBz
dHJ1Y3QgaW50ZWxfZ3QgKmd0Owo+Pgo+PiBJJ2QgcHVzaCBmb3IgZ3QgYXMgYmVpbmcgdGhlIGJh
Y2twb2ludGVyLCBhbmQgaTkxNSBpdHMgZGlzdGFudCBncmFuZAo+PiBwYXJlbnQuIE5vdCBzdXJl
IGhvdyBtdWNoIHBhaW4gdGhhdCB3b3VsZCBicmluZyBqdXN0IGZvciB0aGUgZWxpbWluYXRpb24K
Pj4gb2Ygb25lIG1vcmUgZHJtX2k5MTVfcHJpdmF0ZSwgYnV0IHRoYXQncyBob3cgSSBwaWN0dXJl
IHRoZQo+PiBlbmNhcHN1bGF0aW9uLgoKSXQgZGVwZW5kcyBvbiBvdmVyYWxsIGRpcmVjdGlvbi4g
QXJlIHdlIGdvaW5nIHRvIGdvIHdpdGggaGVscGVycyAKKFhYWF90b19pOTE1KSBvciBub3QuIFdl
bGwgZm9yIHJlbW92aW5nIGVuZ2luZS0+aTkxNSB0aGVyZSB3b3VsZCBiZSAKY2h1cm4gYWxyZWFk
eS4gQnV0IHNhbWUgY2h1cm4gcmVnYXJkbGVzcyBvZiB3aGV0aGVyIHdlIHBpY2sgCmVuZ2luZV90
b19pOTE1IG9yIGVuZ2luZS0+Z3QtPmk5MTUuCgpCdXQgSSBkb24ndCBzZWUgYSBwcm9ibGVtIHdp
dGggaGF2aW5nIGJvdGggaTkxNSBhbmQgZ3QgcG9pbnRlcnMgaW4gdGhlIAplbmdpbmUuIEl0J3Mg
YSBzaG9ydCBjdXQgdG8gYXZvaWQgcG9pbnRlciBjaGFzaW5nIGFuZCB2ZXJib3NpdHkuIE91ciAK
Y29kZSBpcyBmdW5kYW1lbnRhbGx5IHN0aWxsIHZlcnkgZGVwZW5kZW50IG9uIHJ1bnRpbWUgY2hl
Y2tzIGFnYWluc3QgCklOVEVMX0dFTiBhbmQgSU5URUxfSU5GTywgc28gaTkxNSBpcyBwcmV0dHkg
bXVjaCBpbiBuZWVkIGFsbCBvdmVyIHRoZSBwbGFjZS4KCj4gV291bGQgaXQgYmUgd29ydGggbW92
aW5nIHNvbWUgb2YgdGhlIGZsYWdzIGluIHRoZSBkZXZpY2VfaW5mbyBzdHJ1Y3R1cmUgCj4gaW4g
YSBndCBzdWJzdHJ1Y3R1cmUsIGxpa2Ugd2UgZGlkIGZvciBkaXNwbGF5LCBhbmQgZ2V0IGEgcG9p
bnRlciB0byB0aGF0IAo+IGluIGludGVsX2d0PyBXZSBjb3VsZCBzYXZlIHNvbWUganVtcHMgYmFj
ayB0aGF0IHdheSBhbmQgYmUgbW9yZSBjb2hlcmVudCAKPiBpbiB3aGVyZSB3ZSBzdG9yZSB0aGUg
aW5mby4KClNvIGV2ZW4gd2l0aCB0aGlzIHdlIG1heWJlIHJlZHVjZSB0aGUgbmVlZCB0byBjaGFz
ZSBhbGwgdGhlIHdheSB0byBpOTE1IAphIGJpdCwgYnV0IG5vdCBmdWxseS4gVW5sZXNzIHdlIGRl
Y2lkZSB0byBkdXBsaWNhdGUgZ2VuIGluIGludGVsX2d0IGFzIAp3ZWxsLiBXZWxsLi4gbm93IEkg
YW0gc2NhcmVkIHdlIHdpbGwganVzdCBkZWNpZGUgdG8gZG8gdGhhdC4gOkQKClJlZ2FyZHMsCgpU
dnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
