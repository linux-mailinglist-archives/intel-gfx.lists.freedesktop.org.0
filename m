Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C94ABDBE
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2019 18:30:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0041F89DB8;
	Fri,  6 Sep 2019 16:30:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B4C689DB8
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2019 16:30:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18401217-1500050 for multiple; Fri, 06 Sep 2019 17:29:44 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <919a6fab-e70e-44ec-3011-39909978f799@intel.com>
References: <20190906122314.2146-1-mika.kuoppala@linux.intel.com>
 <20190906122314.2146-2-mika.kuoppala@linux.intel.com>
 <919a6fab-e70e-44ec-3011-39909978f799@intel.com>
Message-ID: <156778738196.2967.16397551561553785585@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 06 Sep 2019 17:29:41 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/tgl: Register state context
 definition for Gen12
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
Cc: Michel Thierry <michel.thierry@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA5LTA2IDE2OjQyOjUwKQo+IAo+
IE9uIDkvNi8xOSA1OjIzIEFNLCBNaWthIEt1b3BwYWxhIHdyb3RlOgo+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2xyYy5jCj4gPiBAQCAtODA4LDggKzgwOCwxMSBAQCBzdGF0aWMgdm9pZCB2
aXJ0dWFsX3VwZGF0ZV9yZWdpc3Rlcl9vZmZzZXRzKHUzMiAqcmVncywKPiA+ICAgewo+ID4gICAg
ICAgdTMyIGJhc2UgPSBlbmdpbmUtPm1taW9fYmFzZTsKPiA+ICAgCj4gPiArICAgICBHRU1fV0FS
Tl9PTihlbmdpbmUtPmNsYXNzID09IENPUFlfRU5HSU5FX0NMQVNTKTsKPiAKPiBDb3VsZCB1c2Ug
YSBjb21tZW50IHVwIGhlcmUgdG8gZXhwbGFpbiB3aHksIHNvbWV0aGluZyBsaWtlOgo+IAo+IC8q
IEhXIGRvZXNuJ3Qgbm90IHN1cHBvcnQgcmVsYXRpdmUgTU1JTyBvbiBDT1BZX0VOR0lORSBhbmQg
d2UgZG9uJ3QKPiBpbXBsZW1lbnQgb2Zmc2V0IHJlbWFwIGZvciBhbGwgZ2VucyBpbiBTVyBiZWNh
dXNlIHRoZXJlIGlzIG9ubHkgMQo+IGluc3RhbmNlICovCgpXaGF0J3MgdGhlIHBvaW50IG9mIHRo
ZSBjaGVjayBhbnl3YXk/IElmIHRoZSBMUkkgYXJlIG5vdCB1c2luZwpyZWxhdGl2ZSBhZGRyZXNz
aW5nLCB3ZSBuZWVkIHRvIGZpeHVwIHRoZSBvZmZzZXRzLiBBaXVpLCBpdCBzaG91bGQganVzdApi
ZSBHRU1fQlVHX09OKGludGVsX2VuZ2luZV9oYXNfcmVsYXRpdmVfbW1pbyhlbmdpbmUpKS4gVGhh
dCB3ZSBoYXZlIG9ubHkKYSBzaW5nbGUgaW5zdGFuY2UgaW4gYSBwYXJ0aWN1bGFyIGNsYXNzIGp1
c3QgbWVhbnMgd2UgbmV2ZXIgZXZlbiBjYWxsCnRoZSB1cGRhdGUgZnVuY3Rpb24gY3VycmVudGx5
LgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
