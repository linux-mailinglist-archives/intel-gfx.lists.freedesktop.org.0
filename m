Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FA94461E5
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 17:00:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F423899DE;
	Fri, 14 Jun 2019 15:00:32 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55C3C899DE
 for <Intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 15:00:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 08:00:31 -0700
X-ExtLoop1: 1
Received: from yyosef-mobl.ger.corp.intel.com (HELO [10.252.23.42])
 ([10.252.23.42])
 by orsmga003.jf.intel.com with ESMTP; 14 Jun 2019 08:00:29 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20190613133539.12620-1-tvrtko.ursulin@linux.intel.com>
 <20190613133539.12620-14-tvrtko.ursulin@linux.intel.com>
 <156043435196.17012.16772763488516296630@skylake-alporthouse-com>
 <62e74c65-c538-a22f-5ff7-65c54552e54a@linux.intel.com>
 <156044344691.17012.1072853064881943621@skylake-alporthouse-com>
 <183c59a5-bebd-bc25-4f91-6b6d710e27c1@linux.intel.com>
 <156050530367.12188.15371004279540290930@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <bd86a02a-078d-b6fd-c5ce-e7eb177c9b56@linux.intel.com>
Date: Fri, 14 Jun 2019 16:00:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <156050530367.12188.15371004279540290930@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 13/28] drm/i915: Convert i915_gem_init_hw to
 intel_gt
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

Ck9uIDE0LzA2LzIwMTkgMTA6NDEsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA2LTE0IDEwOjM0OjA2KQo+Pgo+PiBPbiAxMy8wNi8yMDE5IDE3OjMw
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA2
LTEzIDE3OjExOjQzKQo+Pj4+Cj4+Pj4gT24gMTMvMDYvMjAxOSAxNDo1OSwgQ2hyaXMgV2lsc29u
IHdyb3RlOgo+Pj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA2LTEzIDE0OjM1OjI0
KQo+Pj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCj4+Pj4+PiBpbmRleCBlNTRjZDMwNTM0ZGMu
LmI2ZjQ1MGU3ODJlNyAxMDA2NDQKPj4+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2VtLmMKPj4+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKPj4+
Pj4+IEBAIC0xMjM0LDI4ICsxMjM0LDMyIEBAIHN0YXRpYyB2b2lkIGluaXRfdW51c2VkX3Jpbmdz
KHN0cnVjdCBpbnRlbF9ndCAqZ3QpCj4+Pj4+PiAgICAgICAgICAgIH0KPj4+Pj4+ICAgICB9Cj4+
Pj4+PiAgICAgCj4+Pj4+PiAtaW50IGk5MTVfZ2VtX2luaXRfaHcoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KQo+Pj4+Pj4gK3N0YXRpYyBpbnQgaW5pdF9odyhzdHJ1Y3QgaW50ZWxf
Z3QgKmd0KQo+Pj4+Pj4gICAgIHsKPj4+Pj4+ICsgICAgICAgc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUgPSBndC0+aTkxNTsKPj4+Pj4+ICsgICAgICAgc3RydWN0IGludGVsX3VuY29yZSAq
dW5jb3JlID0gZ3QtPnVuY29yZTsKPj4+Pj4+ICAgICAgICAgICAgaW50IHJldDsKPj4+Pj4+ICAg
ICAKPj4+Pj4+IC0gICAgICAgZGV2X3ByaXYtPmd0Lmxhc3RfaW5pdF90aW1lID0ga3RpbWVfZ2V0
KCk7Cj4+Pj4+PiArICAgICAgIGd0LT5sYXN0X2luaXRfdGltZSA9IGt0aW1lX2dldCgpOwo+Pj4+
Pj4gICAgIAo+Pj4+Pj4gICAgICAgICAgICAvKiBEb3VibGUgbGF5ZXIgc2VjdXJpdHkgYmxhbmtl
dCwgc2VlIGk5MTVfZ2VtX2luaXQoKSAqLwo+Pj4+Pj4gLSAgICAgICBpbnRlbF91bmNvcmVfZm9y
Y2V3YWtlX2dldCgmZGV2X3ByaXYtPnVuY29yZSwgRk9SQ0VXQUtFX0FMTCk7Cj4+Pj4+PiArICAg
ICAgIGludGVsX3VuY29yZV9mb3JjZXdha2VfZ2V0KHVuY29yZSwgRk9SQ0VXQUtFX0FMTCk7Cj4+
Pj4+PiAgICAgCj4+Pj4+PiAtICAgICAgIGlmIChIQVNfRURSQU0oZGV2X3ByaXYpICYmIElOVEVM
X0dFTihkZXZfcHJpdikgPCA5KQo+Pj4+Pj4gLSAgICAgICAgICAgICAgIEk5MTVfV1JJVEUoSFNX
X0lESUNSLCBJOTE1X1JFQUQoSFNXX0lESUNSKSB8IElESUhBU0hNU0soMHhmKSk7Cj4+Pj4+PiAr
ICAgICAgIGlmIChIQVNfRURSQU0oaTkxNSkgJiYgSU5URUxfR0VOKGk5MTUpIDwgOSkKPj4+Pj4+
ICsgICAgICAgICAgICAgICBpbnRlbF91bmNvcmVfcm13KHVuY29yZSwgSFNXX0lESUNSLCAwLCBJ
RElIQVNITVNLKDB4ZikpOwo+Pj4+Pj4gICAgIAo+Pj4+Pj4gLSAgICAgICBpZiAoSVNfSEFTV0VM
TChkZXZfcHJpdikpCj4+Pj4+PiAtICAgICAgICAgICAgICAgSTkxNV9XUklURShNSV9QUkVESUNB
VEVfUkVTVUxUXzIsIElTX0hTV19HVDMoZGV2X3ByaXYpID8KPj4+Pj4+IC0gICAgICAgICAgICAg
ICAgICAgICAgICAgIExPV0VSX1NMSUNFX0VOQUJMRUQgOiBMT1dFUl9TTElDRV9ESVNBQkxFRCk7
Cj4+Pj4+PiArICAgICAgIGlmIChJU19IQVNXRUxMKGk5MTUpKQo+Pj4+Pj4gKyAgICAgICAgICAg
ICAgIGludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsCj4+Pj4+PiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIE1JX1BSRURJQ0FURV9SRVNVTFRfMiwKPj4+Pj4+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgSVNfSFNXX0dUMyhpOTE1KSA/Cj4+Pj4+PiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIExPV0VSX1NMSUNFX0VOQUJMRUQgOiBMT1dFUl9T
TElDRV9ESVNBQkxFRCk7Cj4+Pj4+PiAgICAgCj4+Pj4+PiAgICAgICAgICAgIC8qIEFwcGx5IHRo
ZSBHVCB3b3JrYXJvdW5kcy4uLiAqLwo+Pj4+Pj4gLSAgICAgICBpbnRlbF9ndF9hcHBseV93b3Jr
YXJvdW5kcygmZGV2X3ByaXYtPmd0KTsKPj4+Pj4+ICsgICAgICAgaW50ZWxfZ3RfYXBwbHlfd29y
a2Fyb3VuZHMoZ3QpOwo+Pj4+Pgo+Pj4+PiBXb3VsZCBpdCBiZSB3b3J0aCBtb3ZpbmcgdGhlIGFi
b3ZlIG1taW8gaW50byB3b3JrYXJvdW5kcz8gV2hpbHN0IHlvdSBhcmUKPj4+Pj4gZG9pbmcgc29t
ZSBzcHJpbmcgY2xlYW5pbmcgOikKPj4+Pgo+Pj4+IFRvIEdUIHdvcmthcm91bmRzPyBBcmUgdGhl
IGFib3ZlIHR3byB3b3JrYXJvdW5kcz8gRG8gdGhleSBoYXZlIGFuCj4+Pj4gb2ZmaWNpYWwgZGVz
aWduYXRpb24/Cj4+Pgo+Pj4gVG8gaW50ZWxfZ3Rfd29ya2Fyb3VuZHNfYXBwbHksIEknbSBzdXJl
IHlvdSBjYW4gZmluZCBzb21ldGhpbmcgOykKPj4KPj4gSGF2aW5nIGxvb2tlZCB1cCB0aGUgZG9j
cyBmb3IgSFNXX0lEQ1IgYW5kIE1JX1BSRURJQ0FURV9SRVNVTFRfMiwKPj4gbmVpdGhlciBvZiB0
aGUgcHJvZ3JhbW1pbmcgbG9va3MgbGlrZSB3b3JrYXJvdW5kcyBidXQgbm9ybWFsIGRldmljZSBp
bml0Cj4+IHRvIG1lLiBBcyBzdWNoIEkgZG9uJ3Qgc2VlIGhvdyBpdCB3b3VsZCBiZSBhcHByb3By
aWF0ZSB0byBtb3ZlIHRoZW0gaW50bwo+PiB3b3JrYXJvdW5kcy4KPiAKPiBXaGVyZSB0aGV5IGFy
ZSBpcyBkZWZpbml0ZWx5IG5vdCB3aGVyZSB0aGV5IHNob3VsZCBiZS4gSSdtIHN1cmUgSSd2ZQo+
IGNvbXBsYWluZWQgYWJvdXQgdGhpcyBzaW5jZSB0aGV5IHdlcmUgcHV0IHRoZXJlLiBBbmQgbm9y
bWFsIGRldmljZSBpbml0ID09Cj4gd29ya2Fyb3VuZHMsIGRvZXMgaXQgbm90PyBJdCBpcyBqdXN0
IGEgbGlzdCBvZiByZWdpc3RlcnMgdGhhdCBuZWVkIHRvIGJlCj4gcHJvZ3JhbW1lZCB0byBkZWZh
dWx0IHZhbHVlcywgd2hlcmUgdGhvc2UgZGVmYXVsdCB2YWx1ZXMgd2VyZSBkZWNpZGVkCj4gdXBv
biBhZnRlciB0aGUgZmFjdC4KCldlbGwgd2UgY291bGQgYXJndWUuLiA6KSBJIHNlZSBzdHVmZiBp
biBpbnRlbF93b3JrYXJvdW5kcyBhcyBoYXZpbmcgCldhWFhYWCBuYW1lcywgZ2l2ZSBvciB0YWtl
LiBTbyBJIHByZWZlciB0byBsZWF2ZSB0aGlzIGhlcmUgZm9yIG5vdy4KClJlZ2FyZHMsCgpUdnJ0
a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
