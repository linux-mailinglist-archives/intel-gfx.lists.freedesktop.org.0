Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD2E10425C
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 18:45:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5139B6E90D;
	Wed, 20 Nov 2019 17:45:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 942BC6E90D
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 17:45:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19275931-1500050 for multiple; Wed, 20 Nov 2019 17:45:48 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Stuart Summers <stuart.summers@intel.com>, intel-gfx@lists.freedesktop.org
References: <20191120173642.70109-1-stuart.summers@intel.com>
In-Reply-To: <20191120173642.70109-1-stuart.summers@intel.com>
Message-ID: <157427194503.13839.17582339985399321176@skylake-alporthouse-com>
Date: Wed, 20 Nov 2019 17:45:45 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Extend reset modparam to domain
 resets
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

UXVvdGluZyBTdHVhcnQgU3VtbWVycyAoMjAxOS0xMS0yMCAxNzozNjo0MikKPiBJbiB0aGUgZXZl
bnQgYSBwbGF0Zm9ybSBkb2VzIG5vdCBwcm9wZXJseSBpbXBsZW1lbnQgcmVzZXQsCj4gZG8gbm90
IGdvIHRocm91Z2ggcmVzZXQgZmxvd3MgZm9yIGVuZ2luZSBkb21haW5zIHRvIGF2b2lkCj4gYW4g
dW5saWtlbHkgc2l0dWF0aW9uIHdoZXJlIHdyaXRlcyBhcmUgYWNjZXB0ZWQgYnV0IHJlZ2lzdGVy
Cj4gdmFsdWVzIGFyZSBuZXZlciBjbGVhcmVkLCBhcyB0aGlzIGNhbiByZXN1bHQgaW4gR1BVIHdl
ZGdlcwo+IGluIHRoZXNlIGNhc2VzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFN0dWFydCBTdW1tZXJz
IDxzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3Jlc2V0LmMgfCAxMyArKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAx
MyBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3Jlc2V0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jCj4g
aW5kZXggMDM4OGY5Mzc1MzY2Li4wNDU0ZTAxZTA2M2MgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3Jlc2V0LmMKPiBAQCAtMjcwLDYgKzI3MCwxMiBAQCBzdGF0aWMgaW50IGdlbjZf
aHdfZG9tYWluX3Jlc2V0KHN0cnVjdCBpbnRlbF9ndCAqZ3QsIHUzMiBod19kb21haW5fbWFzaykK
PiAgICAgICAgIHN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9IGd0LT51bmNvcmU7Cj4gICAg
ICAgICBpbnQgZXJyOwo+ICAKPiArICAgICAgIGlmICghaTkxNV9tb2RwYXJhbXMucmVzZXQpIHsK
PiArICAgICAgICAgICAgICAgRFJNX0RFQlVHX0RSSVZFUigiU2tpcHBpbmcgMHglMDh4IGVuZ2lu
ZXMgcmVzZXRcbiIsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaHdfZG9tYWlu
X21hc2spOwo+ICsgICAgICAgICAgICAgICByZXR1cm4gMDsKCkFuZCBpdCBzaG91bGQgYmUgLUVO
T0RFVi4gRmFjdG9yIHRoYXQgaW50byB5b3VyIHBsYW5zIDopCi1DaHJpcwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
