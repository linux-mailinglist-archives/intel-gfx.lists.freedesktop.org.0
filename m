Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E22778C5B
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2019 15:11:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB5E789F0B;
	Mon, 29 Jul 2019 13:11:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E733389F0B
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2019 13:11:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17700343-1500050 for multiple; Mon, 29 Jul 2019 14:11:23 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190726084613.22129-1-chris@chris-wilson.co.uk>
 <20190726084613.22129-5-chris@chris-wilson.co.uk>
 <0ef595f7-ffc9-0e0c-4027-04006038e2a9@linux.intel.com>
In-Reply-To: <0ef595f7-ffc9-0e0c-4027-04006038e2a9@linux.intel.com>
Message-ID: <156440588052.6373.6525576082288715873@skylake-alporthouse-com>
Date: Mon, 29 Jul 2019 14:11:20 +0100
Subject: Re: [Intel-gfx] [PATCH 05/27] drm/i915/gem: Make caps.scheduler
 static
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0yOSAxMzo1NDoyNykKPiAKPiBPbiAyNi8w
Ny8yMDE5IDA5OjQ1LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBXZSBkbyBub3Qgbm90aWZ5IHVz
ZXJzcGFjZSB3aGVuIHRoZSBzY2hlZHVsZXIgY2FwYWJpbGl0aWVzIGFyZSBjaGFuZ2VkCj4gPiAo
ZHVlIHRvIHdlZGdpbmcgdGhlIGRyaXZlcikgYW5kIGFzIHN1Y2ggdXNlcnNwYWNlIHdpbGwgZXhw
ZWN0IHRoZSBjYXBzCj4gPiB0byBiZSBzdGF0aWMgYW5kIHVuY2hhbmdpbmcuIE1ha2UgaXQgc28s
IGFuZCBzbyB3ZSBvbmx5IG5lZWQgdG8gY29tcHV0ZQo+ID4gb3VyIGNhcHMgb25jZSBkdXJpbmcg
ZHJpdmVyIHJlZ2lzdHJhdGlvbi4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRr
by51cnN1bGluQGxpbnV4LmludGVsLmNvbT4KPiA+IC0tLQo+ID4gICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fc2hyaW5rZXIuYyAgICAgICB8ICA2ICsrKy0tLQo+ID4gICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21tYW4uYyB8ICA0ICsrLS0K
PiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYyAgICAgICAgICAgICAg
fCAgNSArLS0tLQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jICAgICAgICAg
ICAgICAgICAgICB8ICA0ICsrLS0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
aCAgICAgICAgICAgICAgICAgICAgfCAgNiArKysrLS0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW0uYyAgICAgICAgICAgICAgICAgICAgfCAxMyArKysrKysrKysrKy0tCj4gPiAg
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jICAgICAgICAgICAgICAgIHwgIDIg
LS0KPiA+ICAgNyBmaWxlcyBjaGFuZ2VkLCAyMyBpbnNlcnRpb25zKCspLCAxNyBkZWxldGlvbnMo
LSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9zaHJpbmtlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3Nocmlua2Vy
LmMKPiA+IGluZGV4IDNmNGM2YmRjYzNjMy4uYjE4NmJiNWJmYjQ0IDEwMDY0NAo+ID4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3Nocmlua2VyLmMKPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zaHJpbmtlci5jCj4gPiBAQCAtNDYwLDEy
ICs0NjAsMTIgQEAgaTkxNV9nZW1fc2hyaW5rZXJfdm1hcChzdHJ1Y3Qgbm90aWZpZXJfYmxvY2sg
Km5iLCB1bnNpZ25lZCBsb25nIGV2ZW50LCB2b2lkICpwdHIKPiA+ICAgfQo+ID4gICAKPiA+ICAg
LyoqCj4gPiAtICogaTkxNV9nZW1fc2hyaW5rZXJfcmVnaXN0ZXIgLSBSZWdpc3RlciB0aGUgaTkx
NSBzaHJpbmtlcgo+ID4gKyAqIGk5MTVfZ2VtX2RyaXZlcl9yZWdpc3Rlcl9fc2hyaW5rZXIgLSBS
ZWdpc3RlciB0aGUgaTkxNSBzaHJpbmtlcgo+IAo+IEkgYW0gbm90IHN1cmUgb2YgdGhpcyBuYW1p
bmcgY2hhbmdlLiBJZiB0aGUgaW1wbGVtZW50YXRpb24gbGl2ZWQgaW4gR0VNIAo+IGl0IHdvdWxk
IG1ha2Ugc2Vuc2UgKG9uZSBtb3JlIHN0ZXAgaW4gR0VNIGRyaXZlciByZWdpc3RyYXRpb24pLCBi
dXQgCj4gc2luY2UgdGhlIGNvZGUgbGl2ZXMgaW4gaTkxNV9nZW1fc2hyaW5rZXIuYyB0aGVuIHRo
ZSBleGlzdGluZyBuYW1lIAo+IHNvdW5kcyBva2F5IHRvIG1lLgoKImRyaXZlcl9yZWdpc3RlciIg
aXMgdGhlIG5hbWluZyBjb252ZW50aW9uIHdlIG5vdyBoYXZlIGZvciB0aGlzIHBoYXNlLgpJdCBv
cGVyYXRlcyBvbiB0aGUgaTkxNV9nZW0gImRldmljZSIgYXMgcGFydCBvZiB0aGUgR0VNIGluZnJh
c3RydWN0dXJlLgoKPiAKPiA+ICAgICogQGk5MTU6IGk5MTUgZGV2aWNlCj4gPiAgICAqCj4gPiAg
ICAqIFRoaXMgZnVuY3Rpb24gcmVnaXN0ZXJzIGFuZCBzZXRzIHVwIHRoZSBpOTE1IHNocmlua2Vy
IGFuZCBPT00gaGFuZGxlci4KPiA+ICAgICovCj4gPiAtdm9pZCBpOTE1X2dlbV9zaHJpbmtlcl9y
ZWdpc3RlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiA+ICt2b2lkIGk5MTVfZ2Vt
X2RyaXZlcl9yZWdpc3Rlcl9fc2hyaW5rZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUp
Cj4gPiAgIHsKPiA+ICAgICAgIGk5MTUtPm1tLnNocmlua2VyLnNjYW5fb2JqZWN0cyA9IGk5MTVf
Z2VtX3Nocmlua2VyX3NjYW47Cj4gPiAgICAgICBpOTE1LT5tbS5zaHJpbmtlci5jb3VudF9vYmpl
Y3RzID0gaTkxNV9nZW1fc2hyaW5rZXJfY291bnQ7Cj4gPiBAQCAtNDg2LDcgKzQ4Niw3IEBAIHZv
aWQgaTkxNV9nZW1fc2hyaW5rZXJfcmVnaXN0ZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUpCj4gPiAgICAqCj4gPiAgICAqIFRoaXMgZnVuY3Rpb24gdW5yZWdpc3RlcnMgdGhlIGk5MTUg
c2hyaW5rZXIgYW5kIE9PTSBoYW5kbGVyLgo+ID4gICAgKi8KPiA+IC12b2lkIGk5MTVfZ2VtX3No
cmlua2VyX3VucmVnaXN0ZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gPiArdm9p
ZCBpOTE1X2dlbV9kcml2ZXJfdW5yZWdpc3Rlcl9fc2hyaW5rZXIoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUpCj4gPiAgIHsKPiA+ICAgICAgIFdBUk5fT04odW5yZWdpc3Rlcl92bWFwX3B1
cmdlX25vdGlmaWVyKCZpOTE1LT5tbS52bWFwX25vdGlmaWVyKSk7Cj4gPiAgICAgICBXQVJOX09O
KHVucmVnaXN0ZXJfb29tX25vdGlmaWVyKCZpOTE1LT5tbS5vb21fbm90aWZpZXIpKTsKPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21t
YW4uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fbW1hbi5j
Cj4gPiBpbmRleCAwMTg1N2MxMmYxMmYuLjUwYWE3ZTk1MTI0ZCAxMDA2NDQKPiA+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fbW1hbi5jCj4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21tYW4uYwo+ID4g
QEAgLTM4Miw3ICszODIsNyBAQCBzdGF0aWMgYm9vbCBhc3NlcnRfbW1hcF9vZmZzZXQoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCj4gPiAgIAo+ID4gICBzdGF0aWMgdm9pZCBkaXNhYmxl
X3JldGlyZV93b3JrZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gPiAgIHsKPiA+
IC0gICAgIGk5MTVfZ2VtX3Nocmlua2VyX3VucmVnaXN0ZXIoaTkxNSk7Cj4gPiArICAgICBpOTE1
X2dlbV9kcml2ZXJfdW5yZWdpc3Rlcl9fc2hyaW5rZXIoaTkxNSk7Cj4gPiAgIAo+ID4gICAgICAg
aW50ZWxfZ3RfcG1fZ2V0KCZpOTE1LT5ndCk7Cj4gPiAgIAo+ID4gQEAgLTM5OCw3ICszOTgsNyBA
QCBzdGF0aWMgdm9pZCByZXN0b3JlX3JldGlyZV93b3JrZXIoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUpCj4gPiAgICAgICBpZ3RfZmx1c2hfdGVzdChpOTE1LCBJOTE1X1dBSVRfTE9DS0VE
KTsKPiA+ICAgICAgIG11dGV4X3VubG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7Cj4gPiAg
IAo+ID4gLSAgICAgaTkxNV9nZW1fc2hyaW5rZXJfcmVnaXN0ZXIoaTkxNSk7Cj4gPiArICAgICBp
OTE1X2dlbV9kcml2ZXJfcmVnaXN0ZXJfX3Nocmlua2VyKGk5MTUpOwo+ID4gICB9Cj4gPiAgIAo+
ID4gICBzdGF0aWMgdm9pZCBtbWFwX29mZnNldF9sb2NrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1KQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jl
c2V0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jCj4gPiBpbmRleCAw
Y2I0NTc1MzhlNjIuLmM5MzdmYTgwY2MzZSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3Jlc2V0LmMKPiA+IEBAIC03NTcsMTEgKzc1Nyw4IEBAIHN0YXRpYyB2b2lkIF9faW50
ZWxfZ3Rfc2V0X3dlZGdlZChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQo+ID4gICAgICAgaWYgKCFJTlRF
TF9JTkZPKGd0LT5pOTE1KS0+Z3B1X3Jlc2V0X2Nsb2JiZXJzX2Rpc3BsYXkpCj4gPiAgICAgICAg
ICAgICAgIF9faW50ZWxfZ3RfcmVzZXQoZ3QsIEFMTF9FTkdJTkVTKTsKPiA+ICAgCj4gPiAtICAg
ICBmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCBndC0+aTkxNSwgaWQpIHsKPiA+ICsgICAgIGZvcl9l
YWNoX2VuZ2luZShlbmdpbmUsIGd0LT5pOTE1LCBpZCkKPiA+ICAgICAgICAgICAgICAgZW5naW5l
LT5zdWJtaXRfcmVxdWVzdCA9IG5vcF9zdWJtaXRfcmVxdWVzdDsKPiA+IC0gICAgICAgICAgICAg
ZW5naW5lLT5zY2hlZHVsZSA9IE5VTEw7Cj4gPiAtICAgICB9Cj4gPiAtICAgICBndC0+aTkxNS0+
Y2Fwcy5zY2hlZHVsZXIgPSAwOwo+IAo+IFNjaGVkdWxlciBjYXBzIGlzIG9uZSB0aGluZyBidXQg
ZW5naW5lLT5zY2hlZHVsZSBzZWVtcyBsaWtlIGEgZGlmZmVyZW50IAo+IG9uZS4gRmVlbHMgbGlr
ZSB0aGVzZSBzaG91bGQgYmUgc2VwYXJhdGUgcGF0Y2hlcyBhbmQgdGhlbiB0aGUgc2Vjb25kIG9u
ZSAKPiB3b3VsZCBuZWVkIHRvIGV4cGxhaW4gd2h5IHdlIGRvbid0IG5lZWQgZW5naW5lLT5zY2hl
ZHVsZSB0byBiZSBOVUxMIGFueSAKPiBtb3JlLgoKV2h5IGRvIHlvdSB0aGluayB0aGV5IGFyZSB1
bnJlbGF0ZWQ/Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
