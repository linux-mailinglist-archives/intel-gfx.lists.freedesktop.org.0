Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E3682436CC
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 15:42:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6B7C89AAD;
	Thu, 13 Jun 2019 13:42:10 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B832689A9F
 for <Intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 13:42:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16889257-1500050 for multiple; Thu, 13 Jun 2019 14:42:00 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190613133539.12620-1-tvrtko.ursulin@linux.intel.com>
 <20190613133539.12620-2-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20190613133539.12620-2-tvrtko.ursulin@linux.intel.com>
Message-ID: <156043331899.27443.10072578361328708243@skylake-alporthouse-com>
Date: Thu, 13 Jun 2019 14:41:59 +0100
Subject: Re: [Intel-gfx] [RFC 01/28] drm/i915: Convert intel_vgt_(de)balloon
 to uncore
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xMyAxNDozNToxMikKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IE1vcmUgcmVtb3ZhbCBv
ZiBpbXBsaWNpdCBkZXZfcHJpdiBmcm9tIHVzaW5nIG9sZCBtbWlvIGFjY2Vzc29ycy4KPiAKPiBG
dXJ0aGVybW9yZSB0aGVzZSBjYWxscyByZWFsbHkgb3BlcmF0ZSBvbiBnZ3R0IHNvIGl0IGxvZ2lj
YWxseSBtYWtlcyBzZW5zZQo+IGlmIHRoZXkgdGFrZSBpdCBhcyBwYXJhbWV0ZXIuCgpZZWFoLCBJ
IGhhZCBleHBlY3RlZCB0aGVtIHRvIHRha2UgYSB2Z3B1LCBidXQgdGhlc2UgYXJlIGZ1bmN0aW9u
cyB0aGF0CnN0ZWFsIGZyb20gdGhlIGdsb2JhbCBHVFQuCj4gCj4gU2lnbmVkLW9mZi1ieTogVHZy
dGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgfCAgNCArKy0tCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfdmdwdS5jICAgIHwgMjQgKysrKysrKysrKysrKystLS0tLS0tLS0tCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfdmdwdS5oICAgIHwgIDQgKystLQo+ICAzIGZpbGVzIGNoYW5n
ZWQsIDE4IGluc2VydGlvbnMoKyksIDE0IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtX2d0dC5jCj4gaW5kZXggN2JlNzIzODhiMDUyLi45MGQ5NjY5ZmYzMTMgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+IEBAIC0yODU5LDcgKzI4NTksNyBAQCBp
bnQgaTkxNV9nZW1faW5pdF9nZ3R0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikK
PiAgICAgICAgIGdndHQtPnBpbl9iaWFzID0gbWF4X3QodTMyLCBJOTE1X0dUVF9QQUdFX1NJWkUs
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGludGVsX3dvcGNtX2d1Y19zaXplKCZk
ZXZfcHJpdi0+d29wY20pKTsKPiAgCj4gLSAgICAgICByZXQgPSBpbnRlbF92Z3RfYmFsbG9vbihk
ZXZfcHJpdik7Cj4gKyAgICAgICByZXQgPSBpbnRlbF92Z3RfYmFsbG9vbihnZ3R0KTsKPiAgICAg
ICAgIGlmIChyZXQpCj4gICAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gIAo+IEBAIC0yOTMw
LDcgKzI5MzAsNyBAQCB2b2lkIGk5MTVfZ2d0dF9jbGVhbnVwX2h3KHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdikKPiAgICAgICAgIGdndHRfcmVsZWFzZV9ndWNfdG9wKGdndHQpOwo+
ICAKPiAgICAgICAgIGlmIChkcm1fbW1faW5pdGlhbGl6ZWQoJmdndHQtPnZtLm1tKSkgewo+IC0g
ICAgICAgICAgICAgICBpbnRlbF92Z3RfZGViYWxsb29uKGRldl9wcml2KTsKPiArICAgICAgICAg
ICAgICAgaW50ZWxfdmd0X2RlYmFsbG9vbihnZ3R0KTsKCkFzIG5vdGVkIGVsc2V3aGVyZSwgdGhl
IGluaXQvZmluaSBzZXF1ZW5jZSBoZXJlIGlzIHNrZXdpZmYuCgpSZXZpZXdlZC1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
