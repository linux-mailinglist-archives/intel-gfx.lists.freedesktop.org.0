Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10720BF5F6
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 17:32:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D3616ED82;
	Thu, 26 Sep 2019 15:32:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from Galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12E446ED82
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 15:32:55 +0000 (UTC)
Received: from bigeasy by Galois.linutronix.de with local (Exim 4.80)
 (envelope-from <bigeasy@linutronix.de>)
 id 1iDVlE-0002Kk-ET; Thu, 26 Sep 2019 17:32:52 +0200
Date: Thu, 26 Sep 2019 17:32:52 +0200
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190926153252.r5spqenjqvkhiixe@linutronix.de>
References: <20190926142538.9386-1-chris@chris-wilson.co.uk>
 <20190926151308.cl4iokerchlarfya@linutronix.de>
 <156951149939.26462.704766411515323977@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156951149939.26462.704766411515323977@skylake-alporthouse-com>
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Delegate our irq handler to a
 thread
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
Cc: Clark Williams <williams@redhat.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAxOS0wOS0yNiAxNjoyNDo1OSBbKzAxMDBdLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9pcnEuYwo+ID4gPiBpbmRleCBiYzgzZjA5NDA2NWEuLmYzZGY3NzE0
YTNmMyAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwo+
ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCj4gPiA+IEBAIC00NDkx
LDggKzQ0OTEsOCBAQCBpbnQgaW50ZWxfaXJxX2luc3RhbGwoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2KQo+ID4gPiAgCj4gPiA+ICAgICAgIGludGVsX2lycV9yZXNldChkZXZfcHJp
dik7Cj4gPiA+ICAKPiA+ID4gLSAgICAgcmV0ID0gcmVxdWVzdF9pcnEoaXJxLCBpbnRlbF9pcnFf
aGFuZGxlcihkZXZfcHJpdiksCj4gPiA+IC0gICAgICAgICAgICAgICAgICAgICAgIElSUUZfU0hB
UkVELCBEUklWRVJfTkFNRSwgZGV2X3ByaXYpOwo+ID4gPiArICAgICByZXQgPSByZXF1ZXN0X3Ro
cmVhZGVkX2lycShpcnEsIE5VTEwsIGludGVsX2lycV9oYW5kbGVyKGRldl9wcml2KSwKPiA+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgSVJRRl9TSEFSRUQsIERSSVZFUl9OQU1F
LCBkZXZfcHJpdik7Cj4gPiAKPiA+IEkgdGhpbmsgeW91IHNob3VsZCBhZGQgSVJRRl9PTkVTSE9U
LiBPdGhlcndpc2UgYSBMRVZFTCBpbnRlcnJ1cHQgd2lsbAo+ID4ga2VlcCBpbnRlcnJ1cHRpbmcg
dGhlIENQVSBhbmQgeW91IG5ldmVyIG1hbmFnZSB0byBzd2l0Y2ggdG8gdGhlIHRocmVhZC4KPiAK
PiBUaGUgaW50ZXJydXB0cyBvbmx5IGtlZXAgY29taW5nIGlmIHdlIGZlZWQgdGhlIEdQVSwgYW5k
IHdlIG9ubHkgZmVlZCB0aGUKPiBHUFUgaWYgd2Ugc2VydmljZSB0aGUgaW50ZXJydXB0LiBUaGF0
IHNob3VsZCBwcm92aWRlIGEgbmF0dXJhbAo+IHF1aWVzY2VuY2UgOikKCkluIElSUS1jb250ZXh0
IHlvdXIgcHJpbWFyeSBoYW5kbGVyIGdldHMgaW52b2tlZCB3aGljaCB3YWtlcyB0aGUgdGhyZWFk
Cih3aGF0IGV2ZXIgaW50ZWxfaXJxX2hhbmRsZXIoKSByZXR1cm5zKS4gVGhlbiB5b3UgbGVhdmUg
dGhlIElSUSBjb250ZXh0CmFuZCBzaG91bGQgc3dpdGNoIHRvIHlvdXIgSVJRLWhhbmRsZXIuIFRo
aXMgd2lsbCBuZXZlciBoYXBwZW4gYmVjYXVzZQp0aGUgSVJRIGxpbmUgcmVtYWlucyBhc3NlcnRl
ZCBhbmQgQ1BVIGVuZHMgdXAgaW4gdGhlIHByaW1hcnkgaGFuZGxlcgphZ2Fpbi4KQW4gRURHRSB0
eXBlZCBJUlEgd291bGRuJ3Qgbm90aWNlIGEgZGlmZmVyZW5jZS4gQnV0IGEgTElORSB0eXBlZCBJ
UlEKd2lsbCByZW1haW4gYXNzZXJ0ZWQgdW50aWwgdGhlIGhhcmR3YXJlIGRlLWFzc2VydHMgdGhl
IGludGVycnVwdCBhZ2Fpbi4KU2luY2UgeW91IG5ldmVyIHJlYWNoIHlvdXIgdGhyZWFkIGhhbmRs
ZXIsIEkgZG9uJ3Qgc2VlIGhvdyB0aGlzIGNhbgpoYXBwZW4uCgo+IC1DaHJpcwoKU2ViYXN0aWFu
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
