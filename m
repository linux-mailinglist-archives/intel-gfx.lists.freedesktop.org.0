Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C58923046
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 11:27:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D25C989312;
	Mon, 20 May 2019 09:27:10 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75EE589312
 for <Intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 09:27:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16612279-1500050 for multiple; Mon, 20 May 2019 10:26:59 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190520082816.32137-1-tvrtko.ursulin@linux.intel.com>
 <20190520082816.32137-2-tvrtko.ursulin@linux.intel.com>
 <155834415626.6928.15785661044414297316@skylake-alporthouse-com>
In-Reply-To: <155834415626.6928.15785661044414297316@skylake-alporthouse-com>
Message-ID: <155834441736.6928.15709409970100072755@skylake-alporthouse-com>
Date: Mon, 20 May 2019 10:26:57 +0100
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDUtMjAgMTA6MjI6MzYpCj4gUXVvdGluZyBUdnJ0
a28gVXJzdWxpbiAoMjAxOS0wNS0yMCAwOToyODoxNikKPiA+IEZyb206IFR2cnRrbyBVcnN1bGlu
IDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gPiAKPiA+IERpc2FibGUgR1BVIGhhbmcgYnkg
ZGVmYXVsdCBvbiB1bnJlY292ZXJhYmxlIEVDQyBjYWNoZSBlcnJvcnMuCj4gCj4gICAgdWludDMy
X3QgbDNjcjsKPiAgICBhbnZfcGFja19zdHJ1Y3QoJmwzY3IsIEdFTlgoTDNDTlRMUkVHKSwKPiAg
ICAgICAgICAgICAgICAgICAgLlNMTUVuYWJsZSA9IGhhc19zbG0sCj4gI2lmIEdFTl9HRU4gPT0g
MTEKPiAgICAvKiBXQV8xNDA2Njk3MTQ5OiBCaXQgOSAiRXJyb3IgRGV0ZWN0aW9uIEJlaGF2aW9y
IENvbnRyb2wiIG11c3QgYmUgc2V0Cj4gICAgICogaW4gTDNDTlRMUkVHIHJlZ2lzdGVyLiBUaGUg
ZGVmYXVsdCBzZXR0aW5nIG9mIHRoZSBiaXQgaXMgbm90IHRoZQo+ICAgICAqIGRlc2lyYWJsZSBi
ZWhhdmlvci4KPiAgICAqLwo+ICAgICAgICAgICAgICAgICAgICAuRXJyb3JEZXRlY3Rpb25CZWhh
dmlvckNvbnRyb2wgPSB0cnVlLAo+ICAgICAgICAgICAgICAgICAgICAuVXNlRnVsbFdheXMgPSB0
cnVlLAo+ICNlbmRpZgo+ICAgICAgICAgICAgICAgICAgICAuVVJCQWxsb2NhdGlvbiA9IGNmZy0+
bltHRU5fTDNQX1VSQl0sCj4gICAgICAgICAgICAgICAgICAgIC5ST0FsbG9jYXRpb24gPSBjZmct
Pm5bR0VOX0wzUF9ST10sCj4gICAgICAgICAgICAgICAgICAgIC5EQ0FsbG9jYXRpb24gPSBjZmct
Pm5bR0VOX0wzUF9EQ10sCj4gICAgICAgICAgICAgICAgICAgIC5BbGxBbGxvY2F0aW9uID0gY2Zn
LT5uW0dFTl9MM1BfQUxMXSk7Cj4gCj4gICAgLyogU2V0IHVwIHRoZSBMMyBwYXJ0aXRpb25pbmcu
ICovCj4gICAgZW1pdF9scmkoJmNtZF9idWZmZXItPmJhdGNoLCBHRU5YKEwzQ05UTFJFR19udW0p
LCBsM2NyKTsKPiAKPiBDb25jdXJzLgo+IAo+ID4gU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3Vs
aW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgfCA2ICsrKysrKwo+ID4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgfCAzICsrKwo+ID4gIDIgZmlsZXMgY2hh
bmdlZCwgOSBpbnNlcnRpb25zKCspCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfd29ya2Fyb3VuZHMuYwo+ID4gaW5kZXggNDQ5NGJjOTE3MDg0Li5kZWE3ZGYwMWUwZGMg
MTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5k
cy5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5j
Cj4gPiBAQCAtNTMyLDYgKzUzMiwxMiBAQCBzdGF0aWMgdm9pZCBpY2xfY3R4X3dvcmthcm91bmRz
X2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ID4gIHsKPiA+ICAgICAgICAg
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBlbmdpbmUtPmk5MTU7Cj4gPiAgICAgICAg
IHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCA9ICZlbmdpbmUtPmN0eF93YV9saXN0Owo+ID4gKyAg
ICAgICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBpOTE1Owo+ID4gKwo+ID4g
KyAgICAgICAvKiBXYURpc2FibGVCYW5rSGFuZ01vZGU6aWNsICovCj4gPiArICAgICAgIHdhX3dy
aXRlKHdhbCwKPiA+ICsgICAgICAgICAgICAgICAgR0VOOF9MM0NOVExSRUcsCj4gPiArICAgICAg
ICAgICAgICAgIEk5MTVfUkVBRChHRU44X0wzQ05UTFJFRykgfCBHRU44X0VSUkRFVEJDVFJMKTsK
PiAKPiBEbyB5b3UgaGF2ZSBhbnkgY2x1ZSBhcyB0byB3aGF0IEhXIGlzIGRvaW5nIHRoYXQgbWVh
bnMgd2UgY2FuJ3Qgc2V0IHRoaXMKPiBpbiBndF93b3JrYWRvdW5kcyBhbmQganVzdCByZWx5IG9u
IGl0IGJlaW5nIHBhcnQgb2YgZGVmYXVsdCBjb250ZXh0Cj4gc3RhdGU/IENvdWxkIGJlIGEgbWFn
aWNhbCBwb3dlciBjb250ZXh0IHJlZ2lzdGVyIHdoaWNoIGRvZXNuJ3QgdGFrZQo+IHVudGlsIHRo
ZSBHUFUgaXMgYWN0aXZlLiBPaywgdGhhdCBzZWVtcyBiZWxpZXZhYmxlLCBqdXN0IHVnbHkgdG8g
aGF2ZSBhCj4gY29udGV4dCByZWdpc3RlciB0aGF0IG5vdCBtYXNrZWQuCj4gCj4gQWNrZWQtYnk6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgoKQW5kIHByb2JhYmx5IHNo
b3VsZCBiZSBjYzpzdGFibGUgaWYgdGhlIHJlY29tbWVuZGF0aW9uIGNoYW5nZSBhbmQgaXQKcHJl
dmVudHMgYSBoYW5nLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
