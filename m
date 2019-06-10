Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 663B83B960
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 18:26:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 766F188E35;
	Mon, 10 Jun 2019 16:26:20 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAE2888E35
 for <Intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 16:26:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16854786-1500050 for multiple; Mon, 10 Jun 2019 17:26:09 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190610155419.23723-1-tvrtko.ursulin@linux.intel.com>
 <20190610155419.23723-2-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20190610155419.23723-2-tvrtko.ursulin@linux.intel.com>
Message-ID: <156018396827.383.2511334145043612082@skylake-alporthouse-com>
Date: Mon, 10 Jun 2019 17:26:08 +0100
Subject: Re: [Intel-gfx] [RFC 01/14] drm/i915: Make
 i915_check_and_clear_faults take uncore
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xMCAxNjo1NDowNikKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IENvbnRpbnVpbmcgdGhl
IGNvbnZlcnNpb24gYW5kIGVsaW1pbmF0aW9uIG9mIGltcGxpY2l0IGRldl9wcml2Lgo+IAo+IFNp
Z25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4g
U3VnZ2VzdGVkLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+Cj4gLS0t
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jIHwgIDIgKy0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYyAgICAgfCAyOCArKysrKysrKysr
KystLS0tLS0tLS0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5oICAg
ICB8ICAyICstCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgICAgICAgICAgIHwg
IDIgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgICAgICAgfCAgNCAr
Ky0tCj4gIDUgZmlsZXMgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKSwgMTggZGVsZXRpb25zKC0p
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9j
cy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKPiBpbmRleCBj
MGQ5ODZkYjVhNzUuLmEwNDZlOGRjY2M5NiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2VuZ2luZV9jcy5jCj4gQEAgLTQ1Myw3ICs0NTMsNyBAQCBpbnQgaW50ZWxfZW5naW5l
c19pbml0X21taW8oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gIAo+ICAgICAgICAg
UlVOVElNRV9JTkZPKGk5MTUpLT5udW1fZW5naW5lcyA9IGh3ZWlnaHQzMihtYXNrKTsKPiAgCj4g
LSAgICAgICBpOTE1X2NoZWNrX2FuZF9jbGVhcl9mYXVsdHMoaTkxNSk7Cj4gKyAgICAgICBpOTE1
X2NoZWNrX2FuZF9jbGVhcl9mYXVsdHMoJmk5MTUtPnVuY29yZSk7CgpUaGlzIG5hbWUgaXMgc3Rp
bGwgc2V0dGluZyBvZmYgcmVkIGZsYWdzIGZvciBtZSwgYnV0IEkgaGF2ZSB0byBjb25mZXNzCnRo
YXQgc3RhcmluZyBhdCBpdCwgcGFzc2luZyB1bmNvcmUgZG9lcyBtYWtlIHNlbnNlLgoKSSBqdXN0
IHdpc2ggd2UgaGF2ZSBwZXItZW5naW5lcyBmYXVsdHMgZXZlcnl3aGVyZSBhbmQgdGhpcyBjb3Vs
ZCBiZQpyZWR1Y2VkIHRvIHBhc3NpbmcgZW5naW5lLgoKSG1tLCB0aGlzIEkgZ3Vlc3Mgd2Ugd2ls
bCBqdXN0IGhhdmUgdG8gcmV2aXNpdCBpbiB0aGUgbmVhciBmdXR1cmUgYXMgd2UKbWF5IGdldCB0
aGUgb3Bwb3J0dW5pdHkgdG8gcHV0IHRoZXNlIHJlZ3MgdW5kZXIgbW9yZSBzY3J1dGlueS4KCj4g
IAo+ICAgICAgICAgaW50ZWxfc2V0dXBfZW5naW5lX2NhcGFiaWxpdGllcyhpOTE1KTsKPiAgCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jCj4gaW5kZXggNjBkMjQxMTBhZjgwLi4x
MzQ3MTkxNjU1OWIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
cmVzZXQuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKPiBA
QCAtMTE2NiwxMCArMTE2NiwxMCBAQCBzdGF0aWMgdm9pZCBnZW44X2NsZWFyX2VuZ2luZV9lcnJv
cl9yZWdpc3RlcihzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4gICAgICAgICBHRU42
X1JJTkdfRkFVTFRfUkVHX1BPU1RJTkdfUkVBRChlbmdpbmUpOwo+ICB9Cj4gIAo+IC1zdGF0aWMg
dm9pZCBjbGVhcl9lcnJvcl9yZWdpc3RlcnMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUs
Cj4gK3N0YXRpYyB2b2lkIGNsZWFyX2Vycm9yX3JlZ2lzdGVycyhzdHJ1Y3QgaW50ZWxfdW5jb3Jl
ICp1bmNvcmUsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGludGVsX2VuZ2lu
ZV9tYXNrX3QgZW5naW5lX21hc2spCj4gIHsKPiAtICAgICAgIHN0cnVjdCBpbnRlbF91bmNvcmUg
KnVuY29yZSA9ICZpOTE1LT51bmNvcmU7Cj4gKyAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSA9IHVuY29yZV90b19pOTE1KHVuY29yZSk7CgpHcnIsIEkgc2hvdWxkIGhhdmUgb2Jq
ZWN0ZWQgdG8gdW5jb3JlX3RvX2k5MTUoKSBsb3VkbHkgZnJvbSB0aGUKYmVnaW5uaW5nCgpXaGF0
J3MgZG9uZSBpcyBkb25lLApSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
