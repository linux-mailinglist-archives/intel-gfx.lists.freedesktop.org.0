Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89BA937121
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 12:01:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4F5C8941D;
	Thu,  6 Jun 2019 10:01:27 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 274B6892D6
 for <Intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2019 10:01:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16811228-1500050 for multiple; Thu, 06 Jun 2019 11:01:22 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190606093639.9372-1-tvrtko.ursulin@linux.intel.com>
 <20190606093639.9372-12-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20190606093639.9372-12-tvrtko.ursulin@linux.intel.com>
Message-ID: <155981528003.19464.10752146616835355170@skylake-alporthouse-com>
Date: Thu, 06 Jun 2019 11:01:20 +0100
Subject: Re: [Intel-gfx] [PATCH 11/21] drm/i915: Remove impossible path from
 i915_gem_init_swizzling
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0wNiAxMDozNjoyOSkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IEdlbjgrIGRvZXMgbm90
IGhhdmUgc3dpenppbGluZyBzbyBmdW5jdGlvbiB3aWxsIGV4aXQgb24gdGhlIHRvcCBtb3N0IGNo
ZWNrLgo+IAo+IEF0IHRoZSBzYW1lIHRpbWUgY29udmVydCB0aGUgQlVHIHRvIE1JU1NJTkdfQ0FT
RSBmb3IgYSBsaXR0bGUgbW9yZSBkZWJ1Zwo+IGluZm8uCj4gCj4gU2lnbmVkLW9mZi1ieTogVHZy
dGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9nZW0uYyB8IDQgKy0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCj4gaW5k
ZXggOGVlZTllY2YwYWRmLi43NTEyYzgwNGQ0YjcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW0uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2Vt
LmMKPiBAQCAtMTIxNiwxMCArMTIxNiw4IEBAIHZvaWQgaTkxNV9nZW1faW5pdF9zd2l6emxpbmco
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICAgICAgICAgICAgICAgICBJOTE1
X1dSSVRFKEFSQl9NT0RFLCBfTUFTS0VEX0JJVF9FTkFCTEUoQVJCX01PREVfU1dJWlpMRV9TTkIp
KTsKPiAgICAgICAgIGVsc2UgaWYgKElTX0dFTihkZXZfcHJpdiwgNykpCj4gICAgICAgICAgICAg
ICAgIEk5MTVfV1JJVEUoQVJCX01PREUsIF9NQVNLRURfQklUX0VOQUJMRShBUkJfTU9ERV9TV0la
WkxFX0lWQikpOwo+IC0gICAgICAgZWxzZSBpZiAoSVNfR0VOKGRldl9wcml2LCA4KSkKPiAtICAg
ICAgICAgICAgICAgSTkxNV9XUklURShHQU1UQVJCTU9ERSwgX01BU0tFRF9CSVRfRU5BQkxFKEFS
Ql9NT0RFX1NXSVpaTEVfQkRXKSk7CgpCdXQgdGhhdCBpcyB0aGUgcmVnaXN0ZXIgd2Ugd291bGQg
bmVlZCB0byBzZXQgaWYgd2UgY2hvb3NlIHRvIHJlZW5hYmxlCnN3aXp6bGluZyBmb3Igd2hhdGV2
ZXIgbXlzdGVyaW91cyByZWFzb24uCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
