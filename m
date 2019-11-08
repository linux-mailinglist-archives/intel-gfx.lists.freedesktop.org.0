Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B0AF447B
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 11:29:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E93C56F91B;
	Fri,  8 Nov 2019 10:28:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C8156F91B
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 10:28:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19126092-1500050 for multiple; Fri, 08 Nov 2019 10:28:53 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191108085626.32429-1-chris@chris-wilson.co.uk>
 <20191108085626.32429-4-chris@chris-wilson.co.uk>
 <a2f144ed-bbba-473d-c2c2-9e714d945759@linux.intel.com>
In-Reply-To: <a2f144ed-bbba-473d-c2c2-9e714d945759@linux.intel.com>
Message-ID: <157320893248.9461.5728253203834814118@skylake-alporthouse-com>
Date: Fri, 08 Nov 2019 10:28:52 +0000
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/pmu: Only use exclusive mmio
 access for gen7
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMS0wOCAxMDoyMToyMikKPiAKPiBPbiAwOC8x
MS8yMDE5IDA4OjU2LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBPbiBnZW43LCB3ZSBoYXZlIHRv
IGF2b2lkIGNvbmN1cnJlbnQgYWNjZXNzIHRvIHRoZSBzYW1lIG1taW8gY2FjaGVsaW5lLAo+ID4g
YW5kIHNvIGNvb3JkaW5hdGUgYWxsIG1taW8gYWNjZXNzIHdpdGggdGhlIHVuY29yZS0+bG9jay4g
SG93ZXZlciwgZm9yCj4gPiBwbXUsIHdlIHdhbnQgdG8gYXZvaWQgcGVydHVyYmluZyB0aGUgc3lz
dGVtIGFuZCBkaXNhYmxpbmcgaW50ZXJydXB0cwo+ID4gdW5uZWNlc3NhcmlseSwgc28gcmVzdHJp
Y3QgdGhlIHcvYSB0byBnZW43IHdoZXJlIGl0IGlzIHJlcXVpZWQgdG8KPiA+IHByZXZlbnQgbWFj
aGluZSBoYW5ncy4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+Cj4gPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGlu
QGludGVsLmNvbT4KPiA+IC0tLQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5j
IHwgMTEgKysrKysrKysrLS0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcG11LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jCj4gPiBpbmRleCBk
YmRlODBhMzc2Y2IuLjllMTYyNzc4MjI4NCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcG11LmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcG11
LmMKPiA+IEBAIC0yOTIsNiArMjkyLDExIEBAIGFkZF9zYW1wbGUoc3RydWN0IGk5MTVfcG11X3Nh
bXBsZSAqc2FtcGxlLCB1MzIgdmFsKQo+ID4gICAgICAgc2FtcGxlLT5jdXIgKz0gdmFsOwo+ID4g
ICB9Cj4gPiAgIAo+ID4gK3N0YXRpYyBib29sIGV4Y2x1c2l2ZV9tbWlvX2FjY2Vzcyhjb25zdCBz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiA+ICt7Cj4gPiArICAgICByZXR1cm4gSVNf
R0VOKGk5MTUsIDcpOwo+ID4gK30KPiA+ICsKPiA+ICAgc3RhdGljIHZvaWQKPiA+ICAgZW5naW5l
c19zYW1wbGUoc3RydWN0IGludGVsX2d0ICpndCwgdW5zaWduZWQgaW50IHBlcmlvZF9ucykKPiA+
ICAgewo+ID4gQEAgLTMxMSw3ICszMTYsOCBAQCBlbmdpbmVzX3NhbXBsZShzdHJ1Y3QgaW50ZWxf
Z3QgKmd0LCB1bnNpZ25lZCBpbnQgcGVyaW9kX25zKQo+ID4gICAgICAgICAgICAgICBpZiAoIWlu
dGVsX2VuZ2luZV9wbV9nZXRfaWZfYXdha2UoZW5naW5lKSkKPiA+ICAgICAgICAgICAgICAgICAg
ICAgICBjb250aW51ZTsKPiA+ICAgCj4gPiAtICAgICAgICAgICAgIHNwaW5fbG9ja19pcnFzYXZl
KCZlbmdpbmUtPnVuY29yZS0+bG9jaywgZmxhZ3MpOwo+ID4gKyAgICAgICAgICAgICBpZiAoZXhj
bHVzaXZlX21taW9fYWNjZXNzKGk5MTUpKQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIHNwaW5f
bG9ja19pcnFzYXZlKCZlbmdpbmUtPnVuY29yZS0+bG9jaywgZmxhZ3MpOwo+ID4gICAKPiA+ICAg
ICAgICAgICAgICAgdmFsID0gRU5HSU5FX1JFQURfRlcoZW5naW5lLCBSSU5HX0NUTCk7Cj4gPiAg
ICAgICAgICAgICAgIGlmICh2YWwgPT0gMCkgLyogcG93ZXJ3ZWxsIG9mZiA9PiBlbmdpbmUgaWRs
ZSAqLwo+ID4gQEAgLTM0Miw3ICszNDgsOCBAQCBlbmdpbmVzX3NhbXBsZShzdHJ1Y3QgaW50ZWxf
Z3QgKmd0LCB1bnNpZ25lZCBpbnQgcGVyaW9kX25zKQo+ID4gICAgICAgICAgICAgICAgICAgICAg
IGFkZF9zYW1wbGUoJnBtdS0+c2FtcGxlW0k5MTVfU0FNUExFX0JVU1ldLCBwZXJpb2RfbnMpOwo+
ID4gICAKPiA+ICAgc2tpcDoKPiA+IC0gICAgICAgICAgICAgc3Bpbl91bmxvY2tfaXJxcmVzdG9y
ZSgmZW5naW5lLT51bmNvcmUtPmxvY2ssIGZsYWdzKTsKPiA+ICsgICAgICAgICAgICAgaWYgKGV4
Y2x1c2l2ZV9tbWlvX2FjY2VzcyhpOTE1KSkKPiA+ICsgICAgICAgICAgICAgICAgICAgICBzcGlu
X3VubG9ja19pcnFyZXN0b3JlKCZlbmdpbmUtPnVuY29yZS0+bG9jaywgZmxhZ3MpOwo+ID4gICAg
ICAgICAgICAgICBpbnRlbF9lbmdpbmVfcG1fcHV0KGVuZ2luZSk7Cj4gPiAgICAgICB9Cj4gPiAg
IH0KPiA+IAo+IAo+IEZvciBib251cyBwb2ludHMgY2FjaGUgdGhlIGNoZWNrIGluIGEgbG9jYWw/
IE9yIGNhY2hlIHRoZSBsb2NrIGluIGEgCj4gbG9jYWwgZm9yIGV2ZW4gbW9yZSB3aW4sIHNwaW5s
b2NrX3QgKmxvY2sgPSBleGNsdXNpdmVfbW1pb19hY2Nlc3MoLi4pID8gCj4gJi4uIDogTlVMTCA/
CgpJbiB0aGUgYmFjayBvZiBteSBtaW5kLCBJIHdhcyBhc3N1bWluZyB0aGF0IElTX0dFTigpIGdl
dHMgY29tcGlsZWQgb3V0CmZvciBzaW5nbGUgc2t1IGJ1aWxkcy4KCmxvY2sgPSBleGNsdXNpdmVf
bW1pb19hY2Nlc3MoKSAuLi4KCmlmIChsb2NrKQoJc3Bpbl9sb2NrX2lycXNhdmUobG9jaywgZmxh
Z3MpOwouLi4KaWYgKGxvY2spCglzcGluX3VubG9ja19pcnFzYXZlKGxvY2ssIGZsYWdzKTsKCk9r
LgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
