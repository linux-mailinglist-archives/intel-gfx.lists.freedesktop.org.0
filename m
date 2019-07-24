Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2064872BAD
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 11:47:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D79266E4E1;
	Wed, 24 Jul 2019 09:47:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06EB96E4F9
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2019 09:47:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17560100-1500050 for multiple; Wed, 24 Jul 2019 10:47:47 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190723183842.20372-1-chris@chris-wilson.co.uk>
 <47e0d7f4-71ac-ebb4-41b6-76a71fe59156@linux.intel.com>
 <156396045850.31349.7075365521794770626@skylake-alporthouse-com>
 <156396103953.31349.6435944267611610210@skylake-alporthouse-com>
In-Reply-To: <156396103953.31349.6435944267611610210@skylake-alporthouse-com>
Message-ID: <156396166522.31349.11458519596519696428@skylake-alporthouse-com>
Date: Wed, 24 Jul 2019 10:47:45 +0100
Subject: Re: [Intel-gfx] [PATCH 01/23] drm/i915: Move aliasing_ppgtt
 underneath its i915_ggtt
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDctMjQgMTA6Mzc6MTkpCj4gUXVvdGluZyBDaHJp
cyBXaWxzb24gKDIwMTktMDctMjQgMTA6Mjc6MzgpCj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1bGlu
ICgyMDE5LTA3LTI0IDA5OjU2OjM0KQo+ID4gPiAKPiA+ID4gT24gMjMvMDcvMjAxOSAxOTozOCwg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gPiA+ICtzdGF0aWMgaW50IF9fY29udGV4dF9waW5fcHBn
dHQoc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQo+ID4gPiA+ICAgewo+ID4gPiA+ICAgICAgIHN0
cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtOwo+ID4gPiA+ICAgICAgIGludCBlcnIgPSAwOwo+
ID4gPiA+ICAgCj4gPiA+ID4gLSAgICAgdm0gPSBjdHgtPnZtID86ICZjdHgtPmk5MTUtPm1tLmFs
aWFzaW5nX3BwZ3R0LT52bTsKPiA+ID4gPiArICAgICB2bSA9IHZtX2FsaWFzKGNlKTsKPiA+ID4g
PiAgICAgICBpZiAodm0pCj4gPiA+IAo+ID4gPiBDYW4ndCByZXR1cm4gTlVMTCBpdCBzZWVtcy4g
KFNhbWUgYmVsb3cuKQo+ID4gCj4gPiBBcmUgeW91IHNvIHN1cmU/Cj4gPiAKPiA+IGNlLT5nZW1f
Y29udGV4dC0+dm0gaXMgb25seSAhTlVMTCBpZiB0aGVyZSBpcyBhIGZ1bGwtcHBndHQKPiA+ICZn
Z3R0LT5hbGlhcy0+dm0gaXMgb25seSAhTlVMTCBpZiB0aGVyZSBpcyBhbiBhbGlhc2luZy1wcGd0
dAo+ID4gCj4gPiBUaGVyZSBtYXkgYmUgY29udGV4dHMgd2l0aCBuZWl0aGVyIChnZW40LCBnZW41
KS4KPiAKPiBJdCdzIG5vdCB1bnRpbCB0aGUgbmV4dCBwYXRjaCB3aGVyZSB3ZSBhbHdheXMgc2V0
IGNlLT52bSB3aWxsIGl0IGJlCj4gbm9uLU5VTEwuIFBvaW50IHRha2VuLgoKRXhjZXB0LCB3ZSBw
dXJwb3NlbHkgcmVwbGFjZSB0aGUgaTkxNV9nZ3R0IGNlLT52bSB3aXRoIGl0cyBhbGlhcywgd2hp
Y2gKbWF5IHN0aWxsIGJlIE5VTEwuIChXaGljaCBpcyBmaW5lIGFzIHRoYXQgaXMgcGVybWEtcGlu
bmVkIGFuZCB3ZSBkb24ndApuZWVkIHRvIGZpZGRsZS4pCi1DaHJpcwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
