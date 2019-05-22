Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5CC5262A5
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 12:59:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22EAC89973;
	Wed, 22 May 2019 10:59:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF18089973;
 Wed, 22 May 2019 10:59:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16639137-1500050 for multiple; Wed, 22 May 2019 11:59:52 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <07c9675f-ac62-a6c5-cf3a-ff4266109a83@linux.intel.com>
References: <20190508100958.32637-1-chris@chris-wilson.co.uk>
 <20190508100958.32637-10-chris@chris-wilson.co.uk>
 <4cd81719-4151-c28e-a98a-ff432160289c@linux.intel.com>
 <155794892504.12244.2181516924164471431@skylake-alporthouse-com>
 <07c9675f-ac62-a6c5-cf3a-ff4266109a83@linux.intel.com>
Message-ID: <155852279090.23981.16538709810890555324@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 22 May 2019 11:59:50 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t 10/16] i915/gem_exec_whisper: Fork
 all-engine tests one-per-engine
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0xNiAwOTo1NzowOCkKPiAKPiBPbiAxNS8w
NS8yMDE5IDIwOjM1LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA1LTE0IDEzOjU3OjI2KQo+ID4+Cj4gPj4gT24gMDgvMDUvMjAxOSAxMTowOSwg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+ID4+PiBBZGQgYSBuZXcgbW9kZSBmb3Igc29tZSBtb3JlIHN0
cmVzcywgc3VibWl0IHRoZSBhbGwtZW5naW5lcyB0ZXN0cwo+ID4+PiBzaW11bHRhbmVvdXNseSwg
YSBzdHJlYW0gcGVyIGVuZ2luZS4KPiA+Pj4KPiA+Pj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPj4+IC0tLQo+ID4+PiAgICB0ZXN0cy9p
OTE1L2dlbV9leGVjX3doaXNwZXIuYyB8IDI3ICsrKysrKysrKysrKysrKysrKysrKystLS0tLQo+
ID4+PiAgICAxIGZpbGUgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkK
PiA+Pj4KPiA+Pj4gZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfd2hpc3Blci5jIGIv
dGVzdHMvaTkxNS9nZW1fZXhlY193aGlzcGVyLmMKPiA+Pj4gaW5kZXggZDNlMGIwYmEyLi5kNWFm
YzgxMTkgMTAwNjQ0Cj4gPj4+IC0tLSBhL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfd2hpc3Blci5jCj4g
Pj4+ICsrKyBiL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfd2hpc3Blci5jCj4gPj4+IEBAIC04OCw2ICs4
OCw3IEBAIHN0YXRpYyB2b2lkIHZlcmlmeV9yZWxvYyhpbnQgZmQsIHVpbnQzMl90IGhhbmRsZSwK
PiA+Pj4gICAgI2RlZmluZSBTWU5DIDB4NDAKPiA+Pj4gICAgI2RlZmluZSBQUklPUklUWSAweDgw
Cj4gPj4+ICAgICNkZWZpbmUgUVVFVUVTIDB4MTAwCj4gPj4+ICsjZGVmaW5lIEFMTCAweDIwMAo+
ID4+PiAgICAKPiA+Pj4gICAgc3RydWN0IGhhbmcgewo+ID4+PiAgICAgICAgc3RydWN0IGRybV9p
OTE1X2dlbV9leGVjX29iamVjdDIgb2JqOwo+ID4+PiBAQCAtMTk5LDYgKzIwMCw3IEBAIHN0YXRp
YyB2b2lkIHdoaXNwZXIoaW50IGZkLCB1bnNpZ25lZCBlbmdpbmUsIHVuc2lnbmVkIGZsYWdzKQo+
ID4+PiAgICAgICAgdWludDY0X3Qgb2xkX29mZnNldDsKPiA+Pj4gICAgICAgIGludCBpLCBuLCBs
b2M7Cj4gPj4+ICAgICAgICBpbnQgZGVidWdmczsKPiA+Pj4gKyAgICAgaW50IG5jaGlsZDsKPiA+
Pj4gICAgCj4gPj4+ICAgICAgICBpZiAoZmxhZ3MgJiBQUklPUklUWSkgewo+ID4+PiAgICAgICAg
ICAgICAgICBpZ3RfcmVxdWlyZShnZW1fc2NoZWR1bGVyX2VuYWJsZWQoZmQpKTsKPiA+Pj4gQEAg
LTIxNSw2ICsyMTcsNyBAQCBzdGF0aWMgdm9pZCB3aGlzcGVyKGludCBmZCwgdW5zaWduZWQgZW5n
aW5lLCB1bnNpZ25lZCBmbGFncykKPiA+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IGVuZ2luZXNbbmVuZ2luZSsrXSA9IGVuZ2luZTsKPiA+Pj4gICAgICAgICAgICAgICAgfQo+ID4+
PiAgICAgICAgfSBlbHNlIHsKPiA+Pj4gKyAgICAgICAgICAgICBpZ3RfYXNzZXJ0KCEoZmxhZ3Mg
JiBBTEwpKTsKPiA+Pj4gICAgICAgICAgICAgICAgaWd0X3JlcXVpcmUoZ2VtX2hhc19yaW5nKGZk
LCBlbmdpbmUpKTsKPiA+Pj4gICAgICAgICAgICAgICAgaWd0X3JlcXVpcmUoZ2VtX2Nhbl9zdG9y
ZV9kd29yZChmZCwgZW5naW5lKSk7Cj4gPj4+ICAgICAgICAgICAgICAgIGVuZ2luZXNbbmVuZ2lu
ZSsrXSA9IGVuZ2luZTsKPiA+Pj4gQEAgLTIzMywxMSArMjM2LDIyIEBAIHN0YXRpYyB2b2lkIHdo
aXNwZXIoaW50IGZkLCB1bnNpZ25lZCBlbmdpbmUsIHVuc2lnbmVkIGZsYWdzKQo+ID4+PiAgICAg
ICAgaWYgKGZsYWdzICYgSEFORykKPiA+Pj4gICAgICAgICAgICAgICAgaW5pdF9oYW5nKCZoYW5n
KTsKPiA+Pj4gICAgCj4gPj4+ICsgICAgIG5jaGlsZCA9IDE7Cj4gPj4+ICsgICAgIGlmIChmbGFn
cyAmIEZPUktFRCkKPiA+Pj4gKyAgICAgICAgICAgICBuY2hpbGQgKj0gc3lzY29uZihfU0NfTlBS
T0NFU1NPUlNfT05MTik7Cj4gPj4+ICsgICAgIGlmIChmbGFncyAmIEFMTCkKPiA+Pj4gKyAgICAg
ICAgICAgICBuY2hpbGQgKj0gbmVuZ2luZTsKPiA+Pj4gKwo+ID4+PiAgICAgICAgaW50ZWxfZGV0
ZWN0X2FuZF9jbGVhcl9taXNzZWRfaW50ZXJydXB0cyhmZCk7Cj4gPj4+ICAgICAgICBncHVfcG93
ZXJfcmVhZCgmcG93ZXIsICZzYW1wbGVbMF0pOwo+ID4+PiAtICAgICBpZ3RfZm9yayhjaGlsZCwg
ZmxhZ3MgJiBGT1JLRUQgPyBzeXNjb25mKF9TQ19OUFJPQ0VTU09SU19PTkxOKSA6IDEpICB7Cj4g
Pj4+ICsgICAgIGlndF9mb3JrKGNoaWxkLCBuY2hpbGQpIHsKPiA+Pj4gICAgICAgICAgICAgICAg
dW5zaWduZWQgaW50IHBhc3M7Cj4gPj4+ICAgIAo+ID4+PiArICAgICAgICAgICAgIGlmIChmbGFn
cyAmIEFMTCkgewo+ID4+PiArICAgICAgICAgICAgICAgICAgICAgZW5naW5lc1swXSA9IGVuZ2lu
ZXNbY2hpbGQgJSBuZW5naW5lXTsKPiA+Pgo+ID4+IFJlbHlpbmcgb24gUElEcyBiZWluZyBzZXF1
ZW50aWFsIGZlZWxzIGZyYWdpbGUgYnV0IHN1Z2dlc3RpbmcgcGlwZXMgb3IKPiA+PiBzaGFyZWQg
bWVtb3J5IHdvdWxkIGJlIG92ZXJraWxsLiBIb3cgYWJvdXQgYW5vdGhlciBsb29wOgo+ID4gCj4g
PiBXaGVyZSBhcmUgeW91IGdldHRpbmcgcGlkX3QgZnJvbT8gY2hpbGQgaXMgYW4gaW50ZWdlciBb
MCwgbmNoaWxkKS4KPiAKPiBBZGQgYSBjb3JlIGhlbHBlciB0byBnZXQgaXQ/Cj4gCj4gSSBhbSBj
b21pbmcgZnJvbSBhbiBhbmdsZSB0aGF0IEkgcmVtZW1iZXIgc29tZSB0aW1lIGluIHRoZSBwYXN0
IHRoZXJlIAo+IHdhcyBhIHNlY3VyaXR5IHRoaW5nIHdoaWNoIHJhbmRvbWl6ZWQgcGlkIGFsbG9j
YXRpb24uIFRCSCBJIGFtIG5vdCBzdXJlIAo+IGlmIHRoYXQgc3RpbGwgZXhpc3RzLCBidXQgaWYg
aXQgZG9lcyB0aGVuIGl0IHdvdWxkIG5vdCBiZSBnb29kIGZvciB0aGlzIAo+IHRlc3QuIE1heSBi
ZSBtb290IHBvaW50IHRvIHRoaW5rIHN1Y2ggc2VjdXJpdHkgaGFyZGVuaW5nIG1lYXN1cmVzIHdv
dWxkIAo+IGJlIGFjdGl2ZSBvbiBhIG1hY2hpbmUgcnVubmluZyBJR1QgdGVzdHMuLiBobS4uIG5v
dCBzdXJlLiBCdXQgaXQgaXMgCj4gc3RpbGwgYSBxdWl0ZSBoaWRkZW4gYXNzdW1wdGlvbi4KCkJ1
dCB3ZSBhcmUgbm90IHVzaW5nIHBpZF90IGhlcmUuIEl0IGlzIGp1c3QgYW4gYXJyYXkgb2YgY2hp
bGQgcHJvY2Vzc2VzLAp3aXRoIGVhY2ggY2hpbGQgZ2V0dGluZyBpdHMgb3duIGVuZ2luZSwgdXNp
bmcgdGhlIGNoaWxkIGluZGV4IGFzIGFuCmluZGV4LgotQ2hyaXMKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
