Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5042123031
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 11:22:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9B0D8924F;
	Mon, 20 May 2019 09:22:52 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 456BF8924F
 for <Intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 09:22:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16612210-1500050 for multiple; Mon, 20 May 2019 10:22:38 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190520082816.32137-1-tvrtko.ursulin@linux.intel.com>
 <20190520082816.32137-2-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20190520082816.32137-2-tvrtko.ursulin@linux.intel.com>
Message-ID: <155834415626.6928.15785661044414297316@skylake-alporthouse-com>
Date: Mon, 20 May 2019 10:22:36 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/icl: Add WaDisableBankHangMode
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0yMCAwOToyODoxNikKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IERpc2FibGUgR1BVIGhh
bmcgYnkgZGVmYXVsdCBvbiB1bnJlY292ZXJhYmxlIEVDQyBjYWNoZSBlcnJvcnMuCgogICB1aW50
MzJfdCBsM2NyOwogICBhbnZfcGFja19zdHJ1Y3QoJmwzY3IsIEdFTlgoTDNDTlRMUkVHKSwKICAg
ICAgICAgICAgICAgICAgIC5TTE1FbmFibGUgPSBoYXNfc2xtLAojaWYgR0VOX0dFTiA9PSAxMQog
ICAvKiBXQV8xNDA2Njk3MTQ5OiBCaXQgOSAiRXJyb3IgRGV0ZWN0aW9uIEJlaGF2aW9yIENvbnRy
b2wiIG11c3QgYmUgc2V0CiAgICAqIGluIEwzQ05UTFJFRyByZWdpc3Rlci4gVGhlIGRlZmF1bHQg
c2V0dGluZyBvZiB0aGUgYml0IGlzIG5vdCB0aGUKICAgICogZGVzaXJhYmxlIGJlaGF2aW9yLgog
ICAqLwogICAgICAgICAgICAgICAgICAgLkVycm9yRGV0ZWN0aW9uQmVoYXZpb3JDb250cm9sID0g
dHJ1ZSwKICAgICAgICAgICAgICAgICAgIC5Vc2VGdWxsV2F5cyA9IHRydWUsCiNlbmRpZgogICAg
ICAgICAgICAgICAgICAgLlVSQkFsbG9jYXRpb24gPSBjZmctPm5bR0VOX0wzUF9VUkJdLAogICAg
ICAgICAgICAgICAgICAgLlJPQWxsb2NhdGlvbiA9IGNmZy0+bltHRU5fTDNQX1JPXSwKICAgICAg
ICAgICAgICAgICAgIC5EQ0FsbG9jYXRpb24gPSBjZmctPm5bR0VOX0wzUF9EQ10sCiAgICAgICAg
ICAgICAgICAgICAuQWxsQWxsb2NhdGlvbiA9IGNmZy0+bltHRU5fTDNQX0FMTF0pOwoKICAgLyog
U2V0IHVwIHRoZSBMMyBwYXJ0aXRpb25pbmcuICovCiAgIGVtaXRfbHJpKCZjbWRfYnVmZmVyLT5i
YXRjaCwgR0VOWChMM0NOVExSRUdfbnVtKSwgbDNjcik7CgpDb25jdXJzLgoKPiBTaWduZWQtb2Zm
LWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IC0tLQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwgNiArKysrKysKPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICB8IDMgKysrCj4gIDIg
ZmlsZXMgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gaW5kZXggNDQ5NGJjOTE3MDg0Li5kZWE3ZGYwMWUw
ZGMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3Vu
ZHMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMK
PiBAQCAtNTMyLDYgKzUzMiwxMiBAQCBzdGF0aWMgdm9pZCBpY2xfY3R4X3dvcmthcm91bmRzX2lu
aXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ICB7Cj4gICAgICAgICBzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGVuZ2luZS0+aTkxNTsKPiAgICAgICAgIHN0cnVjdCBp
OTE1X3dhX2xpc3QgKndhbCA9ICZlbmdpbmUtPmN0eF93YV9saXN0Owo+ICsgICAgICAgc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gaTkxNTsKPiArCj4gKyAgICAgICAvKiBXYURp
c2FibGVCYW5rSGFuZ01vZGU6aWNsICovCj4gKyAgICAgICB3YV93cml0ZSh3YWwsCj4gKyAgICAg
ICAgICAgICAgICBHRU44X0wzQ05UTFJFRywKPiArICAgICAgICAgICAgICAgIEk5MTVfUkVBRChH
RU44X0wzQ05UTFJFRykgfCBHRU44X0VSUkRFVEJDVFJMKTsKCkRvIHlvdSBoYXZlIGFueSBjbHVl
IGFzIHRvIHdoYXQgSFcgaXMgZG9pbmcgdGhhdCBtZWFucyB3ZSBjYW4ndCBzZXQgdGhpcwppbiBn
dF93b3JrYWRvdW5kcyBhbmQganVzdCByZWx5IG9uIGl0IGJlaW5nIHBhcnQgb2YgZGVmYXVsdCBj
b250ZXh0CnN0YXRlPyBDb3VsZCBiZSBhIG1hZ2ljYWwgcG93ZXIgY29udGV4dCByZWdpc3RlciB3
aGljaCBkb2Vzbid0IHRha2UKdW50aWwgdGhlIEdQVSBpcyBhY3RpdmUuIE9rLCB0aGF0IHNlZW1z
IGJlbGlldmFibGUsIGp1c3QgdWdseSB0byBoYXZlIGEKY29udGV4dCByZWdpc3RlciB0aGF0IG5v
dCBtYXNrZWQuCgpBY2tlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
