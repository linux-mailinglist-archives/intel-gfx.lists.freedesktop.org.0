Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DED337188
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 12:23:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4420F89327;
	Thu,  6 Jun 2019 10:23:09 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4452889327
 for <Intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2019 10:23:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jun 2019 03:23:07 -0700
X-ExtLoop1: 1
Received: from ssirotki-mobl3.ger.corp.intel.com (HELO [10.251.93.246])
 ([10.251.93.246])
 by fmsmga004.fm.intel.com with ESMTP; 06 Jun 2019 03:23:06 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20190606093639.9372-1-tvrtko.ursulin@linux.intel.com>
 <20190606093639.9372-12-tvrtko.ursulin@linux.intel.com>
 <155981528003.19464.10752146616835355170@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <a557c237-a94e-f5a0-032b-6ff25ab9beaa@linux.intel.com>
Date: Thu, 6 Jun 2019 11:23:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <155981528003.19464.10752146616835355170@skylake-alporthouse-com>
Content-Language: en-US
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDA2LzA2LzIwMTkgMTE6MDEsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA2LTA2IDEwOjM2OjI5KQo+PiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pgo+PiBHZW44KyBkb2VzIG5vdCBoYXZlIHN3aXp6
aWxpbmcgc28gZnVuY3Rpb24gd2lsbCBleGl0IG9uIHRoZSB0b3AgbW9zdCBjaGVjay4KPj4KPj4g
QXQgdGhlIHNhbWUgdGltZSBjb252ZXJ0IHRoZSBCVUcgdG8gTUlTU0lOR19DQVNFIGZvciBhIGxp
dHRsZSBtb3JlIGRlYnVnCj4+IGluZm8uCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1
bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtLmMgfCA0ICstLS0KPj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDMgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwo+PiBpbmRl
eCA4ZWVlOWVjZjBhZGYuLjc1MTJjODA0ZDRiNyAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW0uYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dl
bS5jCj4+IEBAIC0xMjE2LDEwICsxMjE2LDggQEAgdm9pZCBpOTE1X2dlbV9pbml0X3N3aXp6bGlu
ZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4+ICAgICAgICAgICAgICAgICAg
STkxNV9XUklURShBUkJfTU9ERSwgX01BU0tFRF9CSVRfRU5BQkxFKEFSQl9NT0RFX1NXSVpaTEVf
U05CKSk7Cj4+ICAgICAgICAgIGVsc2UgaWYgKElTX0dFTihkZXZfcHJpdiwgNykpCj4+ICAgICAg
ICAgICAgICAgICAgSTkxNV9XUklURShBUkJfTU9ERSwgX01BU0tFRF9CSVRfRU5BQkxFKEFSQl9N
T0RFX1NXSVpaTEVfSVZCKSk7Cj4+IC0gICAgICAgZWxzZSBpZiAoSVNfR0VOKGRldl9wcml2LCA4
KSkKPj4gLSAgICAgICAgICAgICAgIEk5MTVfV1JJVEUoR0FNVEFSQk1PREUsIF9NQVNLRURfQklU
X0VOQUJMRShBUkJfTU9ERV9TV0laWkxFX0JEVykpOwo+IAo+IEJ1dCB0aGF0IGlzIHRoZSByZWdp
c3RlciB3ZSB3b3VsZCBuZWVkIHRvIHNldCBpZiB3ZSBjaG9vc2UgdG8gcmVlbmFibGUKPiBzd2l6
emxpbmcgZm9yIHdoYXRldmVyIG15c3RlcmlvdXMgcmVhc29uLgoKT24gR2VuOCBhZnRlciBhbGwg
dGhpcyB0aW1lPyBJIGNhbiBkcm9wIHRoZSBwYXRjaCBpZiB5b3UgdGhpbmsgdGhhdCdzIGEgCnBv
c3NpYmlsaXR5LgoKUmVnYXJkcywKClR2cnRrbwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
