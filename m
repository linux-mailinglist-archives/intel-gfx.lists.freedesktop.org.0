Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8595010B234
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 16:15:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EF356E303;
	Wed, 27 Nov 2019 15:15:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A41E66E093;
 Wed, 27 Nov 2019 15:15:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19361555-1500050 for multiple; Wed, 27 Nov 2019 15:15:24 +0000
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <3bf4aa73-c9c0-fca5-664e-4fd41e2874f7@linux.intel.com>
References: <20191127145026.3438876-1-chris@chris-wilson.co.uk>
 <3bf4aa73-c9c0-fca5-664e-4fd41e2874f7@linux.intel.com>
Message-ID: <157486771776.18552.5902480514258864541@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 27 Nov 2019 15:15:17 +0000
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_balance: Check chain of
 submit dependencies
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMS0yNyAxNTowODoyNSkKPiAKPiBPbiAyNy8x
MS8yMDE5IDE0OjUwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBDaGVjayB0aGF0IHRoZSBzdWJt
aXQgZmVuY2UgY291cGxlcyBpbnRvIHRoZSBkZXBlbmRlbmN5IGNoYWluIHNvIHRoYXQKPiA+IHRo
ZSBib25kZWQgcGFpciBjYW5ub3Qgb3ZlciB0YWtlIGFueSBvZiB0aGUgZWFybGllciByZXF1ZXN0
cy4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+Cj4gPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNv
bT4KPiA+IC0tLQo+ID4gICB0ZXN0cy9pOTE1L2dlbV9leGVjX2JhbGFuY2VyLmMgfCA4OCArKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCA4OCBp
bnNlcnRpb25zKCspCj4gPiAKPiA+IGRpZmYgLS1naXQgYS90ZXN0cy9pOTE1L2dlbV9leGVjX2Jh
bGFuY2VyLmMgYi90ZXN0cy9pOTE1L2dlbV9leGVjX2JhbGFuY2VyLmMKPiA+IGluZGV4IDg2MDI4
Y2ZkZC4uZmY1YmQwMTM0IDEwMDY0NAo+ID4gLS0tIGEvdGVzdHMvaTkxNS9nZW1fZXhlY19iYWxh
bmNlci5jCj4gPiArKysgYi90ZXN0cy9pOTE1L2dlbV9leGVjX2JhbGFuY2VyLmMKPiA+IEBAIC04
NTUsNiArODU1LDkxIEBAIHN0YXRpYyB2b2lkIGJvbmRlZF9zbGljZShpbnQgaTkxNSkKPiA+ICAg
ICAgIG11bm1hcChzdG9wLCA0MDk2KTsKPiA+ICAgfQo+ID4gICAKPiA+ICtzdGF0aWMgdm9pZCBi
b25kZWRfY2hhaW4oaW50IGk5MTUpCj4gPiArewo+ID4gKyAgICAgc3RydWN0IGRybV9pOTE1X2dl
bV9leGVjX29iamVjdDIgYmF0Y2ggPSB7Cj4gPiArICAgICAgICAgICAgIC5oYW5kbGUgPSBiYXRj
aF9jcmVhdGUoaTkxNSksCj4gPiArICAgICB9Owo+ID4gKyAgICAgdWludDMyX3QgY3R4Owo+ID4g
Kwo+ID4gKyAgICAgLyoKPiA+ICsgICAgICAqIEdpdmVuIGJhdGNoZXMgQSwgQiBhbmQgQicsIHdo
ZXJlIEIgYW5kIEInIGFyZSBhIGJvbmRlZCBwYWlyLCB3aXRoCj4gPiArICAgICAgKiBCJyBkZXBl
bmRpbmcgb24gQiB3aXRoIGEgc3VibWl0IGZlbmNlIGFuZCBCIGRlcGVuZGluZyBvbiBBIGFzCj4g
PiArICAgICAgKiBhbiBvcmRpbmFyeSBmZW5jZTsgcHJvdmUgQicgY2Fubm90IGNvbXBsZXRlIGJl
Zm9yZSBBLgo+ID4gKyAgICAgICovCj4gPiArCj4gPiArICAgICBjdHggPSBnZW1fY29udGV4dF9j
cmVhdGUoaTkxNSk7Cj4gPiArCj4gPiArICAgICBmb3IgKGludCBjbGFzcyA9IDA7IGNsYXNzIDwg
MzI7IGNsYXNzKyspIHsKPiA+ICsgICAgICAgICAgICAgc3RydWN0IGk5MTVfZW5naW5lX2NsYXNz
X2luc3RhbmNlICpzaWJsaW5nczsKPiA+ICsgICAgICAgICAgICAgc3RydWN0IGRybV9pOTE1X2dl
bV9leGVjYnVmZmVyMiBleGVjYnVmID0gewo+ID4gKyAgICAgICAgICAgICAgICAgICAgIC5idWZm
ZXJzX3B0ciA9IHRvX3VzZXJfcG9pbnRlcigmYmF0Y2gpLAo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgIC5idWZmZXJfY291bnQgPSAxLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgIC5yc3ZkMSA9
IGN0eCwKPiA+ICsgICAgICAgICAgICAgfTsKPiA+ICsgICAgICAgICAgICAgdW5zaWduZWQgaW50
IGNvdW50Owo+ID4gKyAgICAgICAgICAgICBpZ3Rfc3Bpbl90ICpzcGluOwo+ID4gKwo+ID4gKyAg
ICAgICAgICAgICBzaWJsaW5ncyA9IGxpc3RfZW5naW5lcyhpOTE1LCAxdSA8PCBjbGFzcywgJmNv
dW50KTsKPiA+ICsgICAgICAgICAgICAgaWYgKCFzaWJsaW5ncykKPiA+ICsgICAgICAgICAgICAg
ICAgICAgICBjb250aW51ZTsKPiA+ICsKPiA+ICsgICAgICAgICAgICAgaWYgKGNvdW50IDwgMikg
ewo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGZyZWUoc2libGluZ3MpOwo+ID4gKyAgICAgICAg
ICAgICAgICAgICAgIGNvbnRpbnVlOwo+ID4gKyAgICAgICAgICAgICB9Cj4gPiArCj4gPiArICAg
ICAgICAgICAgIC8qIEE6IHNwaW4gZm9yZXZlciBvbiBlbmdpbmUgMSAqLwo+ID4gKyAgICAgICAg
ICAgICBzZXRfbG9hZF9iYWxhbmNlcihpOTE1LCBjdHgsIHNpYmxpbmdzLCBjb3VudCwgTlVMTCk7
Cj4gPiArICAgICAgICAgICAgIHNwaW4gPSBpZ3Rfc3Bpbl9uZXcoaTkxNSwKPiA+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAuY3R4ID0gY3R4LAo+ID4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIC5lbmdpbmUgPSAxLAo+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIC5mbGFncyA9IChJR1RfU1BJTl9QT0xMX1JVTiB8Cj4gPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIElHVF9TUElOX0ZFTkNFX09VVCkpOwo+
ID4gKyAgICAgICAgICAgICBpZ3Rfc3Bpbl9idXN5d2FpdF91bnRpbF9zdGFydGVkKHNwaW4pOwo+
ID4gKwo+ID4gKyAgICAgICAgICAgICAvKiBCOiB3YWl0cyBmb3IgQSBvbiBlbmdpbmUgMiAqLwo+
ID4gKyAgICAgICAgICAgICBzZXRfbG9hZF9iYWxhbmNlcihpOTE1LCBjdHgsIHNpYmxpbmdzLCBj
b3VudCwgTlVMTCk7Cj4gPiArICAgICAgICAgICAgIGV4ZWNidWYucnN2ZDIgPSBzcGluLT5vdXRf
ZmVuY2U7Cj4gPiArICAgICAgICAgICAgIGV4ZWNidWYuZmxhZ3MgPSBJOTE1X0VYRUNfRkVOQ0Vf
SU4gfCBJOTE1X0VYRUNfRkVOQ0VfT1VUOwo+ID4gKyAgICAgICAgICAgICBleGVjYnVmLmZsYWdz
IHw9IDI7IC8qIG9wcG9zaXRlIGVuZ2luZSB0byBzcGlubmVyICovCj4gCj4gV2h5IG9yPwoKZXhl
Y2J1Zi5mbGFncyA9IDIgfCBGRU5DRV9JTiB8IEZFTkNFX09VVAoKPiAKPiA+ICsgICAgICAgICAg
ICAgZ2VtX2V4ZWNidWZfd3IoaTkxNSwgJmV4ZWNidWYpOwo+ID4gKwo+ID4gKyAgICAgICAgICAg
ICAvKiBCJzogcnVuIGluIHBhcmFsbGVsIHdpdGggQiBvbiBlbmdpbmUgMSwgaS5lLiBub3QgYmVm
b3JlIEEhICovCj4gPiArICAgICAgICAgICAgIHNldF9sb2FkX2JhbGFuY2VyKGk5MTUsIGN0eCwg
c2libGluZ3MsIGNvdW50LCBOVUxMKTsKPiAKPiBXaHkgYXJlIHlvdSByZXBlYXRpbmcgdGhlIHNh
bWUgc2V0X2xvYWRfYmFsYW5jZXIgY2FsbHM/CgpCZWNhdXNlIHdlIG5lZWQgYSBuZXcgdGltZWxp
bmUgd3J0IHRoZSBzcGlubmVyLgooV2VsbCBCJyBkb2VzLiBJIG9yaWdpbmFsbHkgdHJpZWQgdXNp
bmcgdGhlIHZpcnR1YWwgZW5naW5lIGhlcmUsIGJ1dApzZW1hcGhvcmVzIGFyZSBub3QgZ3VhcmFu
dGVlZCBzbyBpdCB3b3JrcyBiZXR0ZXIgYnkgZm9yY2luZyB0aGUgZW5naW5lCnNlbGVjdGlvbiB0
byB0aGUga25vd24gYmFkIHBhdHRlcm4uKQoKPiA+ICsgICAgICAgICAgICAgZXhlY2J1Zi5mbGFn
cyA9IEk5MTVfRVhFQ19GRU5DRV9TVUJNSVQgfCBJOTE1X0VYRUNfRkVOQ0VfT1VUOwo+ID4gKyAg
ICAgICAgICAgICBleGVjYnVmLmZsYWdzIHw9IDE7IC8qIHNhbWUgZW5naW5lIGFzIHNwaW5uZXIg
Ki8KPiAKPiBFbmdpbmUgMz8gQnV0IHRoZXJlIGFyZSBvbmx5IHR3byBlbmdpbmVzIGluIHRoZSBt
YXAsIHBsdXMgdGhlIHZpcnR1YWwuIAo+IFNvIDAsIDEsIDIgLSBob3cgZG9lcyB0aGlzIHdvcmsg
Zm9yIHlvdT8KCmV4ZWNidWYuZmxhZ3MgPSAxIHwgRkVOQ0VfU1VCTUlUIHwgRkVOQ0VfT1VUOwoK
PiA+ICsgICAgICAgICAgICAgZXhlY2J1Zi5yc3ZkMiA+Pj0gMzI7Cj4gPiArICAgICAgICAgICAg
IGdlbV9leGVjYnVmX3dyKGk5MTUsICZleGVjYnVmKTsKPiA+ICsKPiA+ICsgICAgICAgICAgICAg
LyogV2FpdCBmb3IgYW55IG1hZ2ljIHRpbWVzbGljaW5nIG9yIHByZWVtcHRpb25zLi4uICovCj4g
PiArICAgICAgICAgICAgIGlndF9hc3NlcnRfZXEoc3luY19mZW5jZV93YWl0KGV4ZWNidWYucnN2
ZDIgPj4gMzIsIDEwMDApLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgIC1FVElNRSk7
Cj4gPiArCj4gPiArICAgICAgICAgICAgIGlndF9kZWJ1Z2ZzX2R1bXAoaTkxNSwgImk5MTVfZW5n
aW5lX2luZm8iKTsKPiA+ICsKPiA+ICsgICAgICAgICAgICAgLyoKPiA+ICsgICAgICAgICAgICAg
ICogLi4uIHdoaWNoIHNob3VsZCBub3QgaGF2ZSBoYXBwZW5lZCwgc28gZXZlcnl0aGluZyBpcyBz
dGlsbAo+ID4gKyAgICAgICAgICAgICAgKiB3YWl0aW5nIG9uIHRoZSBzcGlubmVyCj4gPiArICAg
ICAgICAgICAgICAqLwo+ID4gKyAgICAgICAgICAgICBpZ3RfYXNzZXJ0X2VxKHN5bmNfZmVuY2Vf
c3RhdHVzKHNwaW4tPm91dF9mZW5jZSksIDApOwo+ID4gKyAgICAgICAgICAgICBpZ3RfYXNzZXJ0
X2VxKHN5bmNfZmVuY2Vfc3RhdHVzKGV4ZWNidWYucnN2ZDIgJiAweGZmZmZmZmZmKSwgMCk7Cj4g
PiArICAgICAgICAgICAgIGlndF9hc3NlcnRfZXEoc3luY19mZW5jZV9zdGF0dXMoZXhlY2J1Zi5y
c3ZkMiA+PiAzMiksIDApOwo+ID4gKwo+ID4gKyAgICAgICAgICAgICBpZ3Rfc3Bpbl9mcmVlKGk5
MTUsIHNwaW4pOwo+ID4gKyAgICAgICAgICAgICBnZW1fc3luYyhpOTE1LCBiYXRjaC5oYW5kbGUp
Owo+ID4gKwo+ID4gKyAgICAgICAgICAgICBpZ3RfYXNzZXJ0X2VxKHN5bmNfZmVuY2Vfc3RhdHVz
KGV4ZWNidWYucnN2ZDIgJiAweGZmZmZmZmZmKSwgMSk7Cj4gPiArICAgICAgICAgICAgIGlndF9h
c3NlcnRfZXEoc3luY19mZW5jZV9zdGF0dXMoZXhlY2J1Zi5yc3ZkMiA+PiAzMiksIDEpOwo+ID4g
Kwo+ID4gKyAgICAgICAgICAgICBjbG9zZShleGVjYnVmLnJzdmQyKTsKPiA+ICsgICAgICAgICAg
ICAgY2xvc2UoZXhlY2J1Zi5yc3ZkMiA+PiAzMik7Cj4gPiArICAgICB9Cj4gCj4gSG93IGV2aWwg
dG8gbG93ZXIgY3R4IHByaW8gZm9yIEEgb25seT8KCkEgZHJhdy4gWW91IHN3YXAgdGhlIHRpbWVz
bGljaW5nIGNhdGNoIGZvciB0aGUgZXhwbGljaXQgcHJlZW1wdGlvbgpjaGVjay4KLUNocmlzCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
