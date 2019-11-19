Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EEAEA102816
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 16:28:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67EC46E95D;
	Tue, 19 Nov 2019 15:27:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 560026E95D
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 15:27:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19259757-1500050 for multiple; Tue, 19 Nov 2019 15:27:51 +0000
MIME-Version: 1.0
To: Andi Shyti <andi.shyti@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191119152459.GA1163@intel.intel>
References: <20191119100929.2628356-1-chris@chris-wilson.co.uk>
 <20191119100929.2628356-17-chris@chris-wilson.co.uk>
 <20191119152459.GA1163@intel.intel>
Message-ID: <157417726850.12093.16341920751011366797@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 19 Nov 2019 15:27:48 +0000
Subject: Re: [Intel-gfx] [PATCH 17/17] drm/i915/selftests: Exercise rc6
 handling
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBBbmRpIFNoeXRpICgyMDE5LTExLTE5IDE1OjI0OjU5KQo+IEhpIENocmlzLAo+IAo+
IE9uIFR1ZSwgTm92IDE5LCAyMDE5IGF0IDEwOjA5OjI5QU0gKzAwMDAsIENocmlzIFdpbHNvbiB3
cm90ZToKPiA+IFJlYWRpbmcgZnJvbSBDVFhfSU5GTyB1cHNldHMgcmM2LCByZXF1aXJpbmcgdXMg
dG8gZGV0ZWN0IGFuZCBwcmV2ZW50Cj4gPiBwb3NzaWJsZSByYzYgY29udGV4dCBjb3JydXB0aW9u
LiBQb2tlIGF0IHRoZSBiZWFyIQo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IENjOiBJbXJlIERlYWsgPGltcmUuZGVha0Bp
bnRlbC5jb20+Cj4gPiBDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRl
bC5jb20+Cj4gCj4gaXQgbG9va3MgZ29vZCwKPiAKPiBSZXZpZXdlZC1ieTogQW5kaSBTaHl0aSA8
YW5kaS5zaHl0aUBpbnRlbC5jb20+Cj4gVGVzdGVkLWJ5OiBBbmRpIFNoeXRpIDxhbmRpLnNoeXRp
QGludGVsLmNvbT4KPiAKPiBqdXN0IGEgcXVlc3Rpb24sIHRob3VnaAo+IAo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2d0X3BtLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9ndF9wbS5jCj4gPiBpbmRleCBkMTc1MmYxNTcwMmEuLjFk
NWJmOTNkMTI1OCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0
ZXN0X2d0X3BtLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2d0
X3BtLmMKPiA+IEBAIC02LDYgKzYsNyBAQAo+ID4gICAqLwo+ID4gIAo+ID4gICNpbmNsdWRlICJz
ZWxmdGVzdF9sbGMuaCIKPiA+ICsjaW5jbHVkZSAic2VsZnRlc3RfcmM2LmgiCj4gPiAgCj4gPiAg
c3RhdGljIGludCBsaXZlX2d0X3Jlc3VtZSh2b2lkICphcmcpCj4gPiAgewo+ID4gQEAgLTU4LDMg
KzU5LDE1IEBAIGludCBpbnRlbF9ndF9wbV9saXZlX3NlbGZ0ZXN0cyhzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSkKPiA+ICAKPiA+ICAgICAgIHJldHVybiBpbnRlbF9ndF9saXZlX3N1YnRl
c3RzKHRlc3RzLCAmaTkxNS0+Z3QpOwo+ID4gIH0KPiA+ICsKPiA+ICtpbnQgaW50ZWxfZ3RfcG1f
bGF0ZV9zZWxmdGVzdHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gPiArewo+ID4g
KyAgICAgc3RhdGljIGNvbnN0IHN0cnVjdCBpOTE1X3N1YnRlc3QgdGVzdHNbXSA9IHsKPiA+ICsg
ICAgICAgICAgICAgU1VCVEVTVChsaXZlX3JjNl9jdHgpLAo+ID4gKyAgICAgfTsKPiA+ICsKPiA+
ICsgICAgIGlmIChpbnRlbF9ndF9pc193ZWRnZWQoJmk5MTUtPmd0KSkKPiA+ICsgICAgICAgICAg
ICAgcmV0dXJuIDA7Cj4gPiArCj4gPiArICAgICByZXR1cm4gaW50ZWxfZ3RfbGl2ZV9zdWJ0ZXN0
cyh0ZXN0cywgJmk5MTUtPmd0KTsKPiA+ICt9Cj4gCj4gYXJlIHlvdSB0aGlua2luZyBvZiBtYWtp
bmcgdGhpcyBmaWxlIGEgaHViIGZvciBhbGwgcG93ZXIKPiBtYW5hZ2VtZW50IHNlbGZ0ZXN0cz8g
d291bGRuJ3QgaXQgYmUgbW9yZSBuZWF0IGlmIHJjNiwgcnBzIGFuZAo+IG90aGVycyBoYXZlIHRo
ZWlyIG93biBzZWxmdGVzdHMgZGVjbGFyZWQgaW5kZXBlbmRlbnRseSwKPiBjb25zaWRlcmluZyB0
aGF0IHdlIG1pZ2h0IHdhbnQgdG8gYWRkIG1vcmUgb2YgdGhlbT8KClRoZSBodWIgaXMgb3ZlciBh
dCBpbnRlbF9ndF9wbV9zZWxmdGVzdHMgOikKCkkgc3RhcnRlZCBieSBhZGRpbmcgdGhpcyBvbmUg
dGhlcmUsIGV4Y2VwdCB0aGF0IHRoaXMgZGVsaWJlcmF0ZWx5IGJyZWFrcwp0aGUgc3lzdGVtIGFu
ZCBzbyBzaG91bGQgYmUgcnVuIGF0IHRoZSBlbmQgb2YgQ0kgYW5kIHJlYm9vdGVkCmFmdGVyd2Fy
ZHMuCgo+IAo+ID4gK3N0YXRpYyBjb25zdCB1MzIgKl9fbGl2ZV9yYzZfY3R4KHN0cnVjdCBpbnRl
bF9jb250ZXh0ICpjZSkKPiA+ICt7Cj4gPiArICAgICBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsK
PiA+ICsgICAgIHUzMiBjb25zdCAqcmVzdWx0Owo+IAo+ICdjb25zdCcgaGVyZT8geW91IGxpa2Ug
cmVja2xlc3MgbGlmZSEgOikKClNoYW1lIG9uIG1lLgotQ2hyaXMKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
