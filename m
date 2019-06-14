Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D44458FA
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 11:41:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22B858933C;
	Fri, 14 Jun 2019 09:41:54 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A73478933C
 for <Intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 09:41:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16899784-1500050 for multiple; Fri, 14 Jun 2019 10:41:46 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190613133539.12620-1-tvrtko.ursulin@linux.intel.com>
 <20190613133539.12620-14-tvrtko.ursulin@linux.intel.com>
 <156043435196.17012.16772763488516296630@skylake-alporthouse-com>
 <62e74c65-c538-a22f-5ff7-65c54552e54a@linux.intel.com>
 <156044344691.17012.1072853064881943621@skylake-alporthouse-com>
 <183c59a5-bebd-bc25-4f91-6b6d710e27c1@linux.intel.com>
In-Reply-To: <183c59a5-bebd-bc25-4f91-6b6d710e27c1@linux.intel.com>
Message-ID: <156050530367.12188.15371004279540290930@skylake-alporthouse-com>
Date: Fri, 14 Jun 2019 10:41:43 +0100
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xNCAxMDozNDowNikKPiAKPiBPbiAxMy8w
Ni8yMDE5IDE3OjMwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA2LTEzIDE3OjExOjQzKQo+ID4+Cj4gPj4gT24gMTMvMDYvMjAxOSAxNDo1OSwg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+ID4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA2
LTEzIDE0OjM1OjI0KQo+ID4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCj4gPj4+PiBpbmRleCBl
NTRjZDMwNTM0ZGMuLmI2ZjQ1MGU3ODJlNyAxMDA2NDQKPiA+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtLmMKPiA+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2VtLmMKPiA+Pj4+IEBAIC0xMjM0LDI4ICsxMjM0LDMyIEBAIHN0YXRpYyB2b2lkIGluaXRf
dW51c2VkX3JpbmdzKHN0cnVjdCBpbnRlbF9ndCAqZ3QpCj4gPj4+PiAgICAgICAgICAgfQo+ID4+
Pj4gICAgfQo+ID4+Pj4gICAgCj4gPj4+PiAtaW50IGk5MTVfZ2VtX2luaXRfaHcoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ID4+Pj4gK3N0YXRpYyBpbnQgaW5pdF9odyhzdHJ1
Y3QgaW50ZWxfZ3QgKmd0KQo+ID4+Pj4gICAgewo+ID4+Pj4gKyAgICAgICBzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSA9IGd0LT5pOTE1Owo+ID4+Pj4gKyAgICAgICBzdHJ1Y3QgaW50ZWxf
dW5jb3JlICp1bmNvcmUgPSBndC0+dW5jb3JlOwo+ID4+Pj4gICAgICAgICAgIGludCByZXQ7Cj4g
Pj4+PiAgICAKPiA+Pj4+IC0gICAgICAgZGV2X3ByaXYtPmd0Lmxhc3RfaW5pdF90aW1lID0ga3Rp
bWVfZ2V0KCk7Cj4gPj4+PiArICAgICAgIGd0LT5sYXN0X2luaXRfdGltZSA9IGt0aW1lX2dldCgp
Owo+ID4+Pj4gICAgCj4gPj4+PiAgICAgICAgICAgLyogRG91YmxlIGxheWVyIHNlY3VyaXR5IGJs
YW5rZXQsIHNlZSBpOTE1X2dlbV9pbml0KCkgKi8KPiA+Pj4+IC0gICAgICAgaW50ZWxfdW5jb3Jl
X2ZvcmNld2FrZV9nZXQoJmRldl9wcml2LT51bmNvcmUsIEZPUkNFV0FLRV9BTEwpOwo+ID4+Pj4g
KyAgICAgICBpbnRlbF91bmNvcmVfZm9yY2V3YWtlX2dldCh1bmNvcmUsIEZPUkNFV0FLRV9BTEwp
Owo+ID4+Pj4gICAgCj4gPj4+PiAtICAgICAgIGlmIChIQVNfRURSQU0oZGV2X3ByaXYpICYmIElO
VEVMX0dFTihkZXZfcHJpdikgPCA5KQo+ID4+Pj4gLSAgICAgICAgICAgICAgIEk5MTVfV1JJVEUo
SFNXX0lESUNSLCBJOTE1X1JFQUQoSFNXX0lESUNSKSB8IElESUhBU0hNU0soMHhmKSk7Cj4gPj4+
PiArICAgICAgIGlmIChIQVNfRURSQU0oaTkxNSkgJiYgSU5URUxfR0VOKGk5MTUpIDwgOSkKPiA+
Pj4+ICsgICAgICAgICAgICAgICBpbnRlbF91bmNvcmVfcm13KHVuY29yZSwgSFNXX0lESUNSLCAw
LCBJRElIQVNITVNLKDB4ZikpOwo+ID4+Pj4gICAgCj4gPj4+PiAtICAgICAgIGlmIChJU19IQVNX
RUxMKGRldl9wcml2KSkKPiA+Pj4+IC0gICAgICAgICAgICAgICBJOTE1X1dSSVRFKE1JX1BSRURJ
Q0FURV9SRVNVTFRfMiwgSVNfSFNXX0dUMyhkZXZfcHJpdikgPwo+ID4+Pj4gLSAgICAgICAgICAg
ICAgICAgICAgICAgICAgTE9XRVJfU0xJQ0VfRU5BQkxFRCA6IExPV0VSX1NMSUNFX0RJU0FCTEVE
KTsKPiA+Pj4+ICsgICAgICAgaWYgKElTX0hBU1dFTEwoaTkxNSkpCj4gPj4+PiArICAgICAgICAg
ICAgICAgaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwKPiA+Pj4+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgTUlfUFJFRElDQVRFX1JFU1VMVF8yLAo+ID4+Pj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBJU19IU1dfR1QzKGk5MTUpID8KPiA+Pj4+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgTE9XRVJfU0xJQ0VfRU5BQkxFRCA6IExPV0VS
X1NMSUNFX0RJU0FCTEVEKTsKPiA+Pj4+ICAgIAo+ID4+Pj4gICAgICAgICAgIC8qIEFwcGx5IHRo
ZSBHVCB3b3JrYXJvdW5kcy4uLiAqLwo+ID4+Pj4gLSAgICAgICBpbnRlbF9ndF9hcHBseV93b3Jr
YXJvdW5kcygmZGV2X3ByaXYtPmd0KTsKPiA+Pj4+ICsgICAgICAgaW50ZWxfZ3RfYXBwbHlfd29y
a2Fyb3VuZHMoZ3QpOwo+ID4+Pgo+ID4+PiBXb3VsZCBpdCBiZSB3b3J0aCBtb3ZpbmcgdGhlIGFi
b3ZlIG1taW8gaW50byB3b3JrYXJvdW5kcz8gV2hpbHN0IHlvdSBhcmUKPiA+Pj4gZG9pbmcgc29t
ZSBzcHJpbmcgY2xlYW5pbmcgOikKPiA+Pgo+ID4+IFRvIEdUIHdvcmthcm91bmRzPyBBcmUgdGhl
IGFib3ZlIHR3byB3b3JrYXJvdW5kcz8gRG8gdGhleSBoYXZlIGFuCj4gPj4gb2ZmaWNpYWwgZGVz
aWduYXRpb24/Cj4gPiAKPiA+IFRvIGludGVsX2d0X3dvcmthcm91bmRzX2FwcGx5LCBJJ20gc3Vy
ZSB5b3UgY2FuIGZpbmQgc29tZXRoaW5nIDspCj4gCj4gSGF2aW5nIGxvb2tlZCB1cCB0aGUgZG9j
cyBmb3IgSFNXX0lEQ1IgYW5kIE1JX1BSRURJQ0FURV9SRVNVTFRfMiwgCj4gbmVpdGhlciBvZiB0
aGUgcHJvZ3JhbW1pbmcgbG9va3MgbGlrZSB3b3JrYXJvdW5kcyBidXQgbm9ybWFsIGRldmljZSBp
bml0IAo+IHRvIG1lLiBBcyBzdWNoIEkgZG9uJ3Qgc2VlIGhvdyBpdCB3b3VsZCBiZSBhcHByb3By
aWF0ZSB0byBtb3ZlIHRoZW0gaW50byAKPiB3b3JrYXJvdW5kcy4KCldoZXJlIHRoZXkgYXJlIGlz
IGRlZmluaXRlbHkgbm90IHdoZXJlIHRoZXkgc2hvdWxkIGJlLiBJJ20gc3VyZSBJJ3ZlCmNvbXBs
YWluZWQgYWJvdXQgdGhpcyBzaW5jZSB0aGV5IHdlcmUgcHV0IHRoZXJlLiBBbmQgbm9ybWFsIGRl
dmljZSBpbml0ID09Cndvcmthcm91bmRzLCBkb2VzIGl0IG5vdD8gSXQgaXMganVzdCBhIGxpc3Qg
b2YgcmVnaXN0ZXJzIHRoYXQgbmVlZCB0byBiZQpwcm9ncmFtbWVkIHRvIGRlZmF1bHQgdmFsdWVz
LCB3aGVyZSB0aG9zZSBkZWZhdWx0IHZhbHVlcyB3ZXJlIGRlY2lkZWQKdXBvbiBhZnRlciB0aGUg
ZmFjdC4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
