Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D40658E43
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 01:08:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EC5C6E81D;
	Thu, 27 Jun 2019 23:08:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 056BB6E81D
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 23:08:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17050606-1500050 for multiple; Fri, 28 Jun 2019 00:08:23 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190627205633.1143-1-matthew.auld@intel.com>
 <20190627205633.1143-7-matthew.auld@intel.com>
In-Reply-To: <20190627205633.1143-7-matthew.auld@intel.com>
Message-ID: <156167690154.21955.2384365811503556372@skylake-alporthouse-com>
Date: Fri, 28 Jun 2019 00:08:21 +0100
Subject: Re: [Intel-gfx] [PATCH v2 06/37] drm/i915: Add memory region
 information to device_info
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDYtMjcgMjE6NTY6MDIpCj4gRnJvbTogQWJkaWVs
IEphbnVsZ3VlIDxhYmRpZWwuamFudWxndWVAbGludXguaW50ZWwuY29tPgo+IAo+IEV4cG9zZXMg
YXZhaWxhYmxlIHJlZ2lvbnMgZm9yIHRoZSBwbGF0Zm9ybS4gU2hhcmVkIG1lbW9yeSB3aWxsCj4g
YWx3YXlzIGJlIGF2YWlsYWJsZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBBYmRpZWwgSmFudWxndWUg
PGFiZGllbC5qYW51bGd1ZUBsaW51eC5pbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTWF0dGhl
dyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICAgfCAgMiArKwo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3BjaS5jICAgICAgICAgICAgICAgfCAyOSArKysrKysrKysrKysrKy0tLS0tCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmggICAgICB8ICAxICsKPiAg
Li4uL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja19nZW1fZGV2aWNlLmMgIHwgIDIgKysKPiAg
NCBmaWxlcyBjaGFuZ2VkLCAyNiBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQo+IAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuaAo+IGluZGV4IDk3ZDAyYjMyYTIwOC4uODM4YTc5NmQ5YzU1IDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4gQEAgLTIyODgsNiArMjI4OCw4IEBAIElTX1NV
QlBMQVRGT1JNKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+ICAKPiAgI2Rl
ZmluZSBIQVNfSVBDKGRldl9wcml2KSAgICAgICAgICAgICAgIChJTlRFTF9JTkZPKGRldl9wcml2
KS0+ZGlzcGxheS5oYXNfaXBjKQo+ICAKPiArI2RlZmluZSBIQVNfUkVHSU9OKGk5MTUsIGkpIChJ
TlRFTF9JTkZPKGk5MTUpLT5tZW1vcnlfcmVnaW9ucyAmIChpKSkKPiArCj4gIC8qCj4gICAqIEZv
ciBub3csIGFueXRoaW5nIHdpdGggYSBHdUMgcmVxdWlyZXMgdUNvZGUgbG9hZGluZywgYW5kIHRo
ZW4gc3VwcG9ydHMKPiAgICogY29tbWFuZCBzdWJtaXNzaW9uIG9uY2UgbG9hZGVkLiBCdXQgdGhl
c2UgYXJlIGxvZ2ljYWxseSBpbmRlcGVuZGVudAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3BjaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYwo+IGlu
ZGV4IDk0YjU4OGUwYTFkZC4uYzUxMzUzMmI4ZGE3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcGNpLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Bj
aS5jCj4gQEAgLTE0NCw2ICsxNDQsOSBAQAo+ICAjZGVmaW5lIEdFTl9ERUZBVUxUX1BBR0VfU0la
RVMgXAo+ICAgICAgICAgLnBhZ2Vfc2l6ZXMgPSBJOTE1X0dUVF9QQUdFX1NJWkVfNEsKPiAgCj4g
KyNkZWZpbmUgR0VOX0RFRkFVTFRfUkVHSU9OUyBcCj4gKyAgICAgICAubWVtb3J5X3JlZ2lvbnMg
PSBSRUdJT05fU01FTSB8IFJFR0lPTl9TVE9MRU4KCkJ1dCB5b3UgZGlkbid0IGFkZCBhIHN0b2xl
biBtZW1vcnlfcmVnaW9uIGFuZCB1c2UgdGhlIG5ldyBpbnRlcmZhY2UgZm9yCmFsbG9jYXRpbmcg
dGhlIGN1cnJlbnQgc3RvbGVuIG9iamVjdHM/Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
