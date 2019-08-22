Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2AF99753
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 16:51:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87FA46EB70;
	Thu, 22 Aug 2019 14:51:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 950D86EB70
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2019 14:51:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18228689-1500050 for multiple; Thu, 22 Aug 2019 15:51:34 +0100
MIME-Version: 1.0
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87tva92unq.fsf@gaia.fi.intel.com>
References: <20190817093902.2171-1-lucas.demarchi@intel.com>
 <20190817093902.2171-24-lucas.demarchi@intel.com>
 <87tva92unq.fsf@gaia.fi.intel.com>
Message-ID: <156648549157.27716.8395090509291167626@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 22 Aug 2019 15:51:31 +0100
Subject: Re: [Intel-gfx] [PATCH v2 23/40] drm/i915/tgl: Register state
 context definition for Gen12
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
Cc: Michel Thierry <michel.thierry@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA4LTIyIDE0OjMxOjUzKQo+IEx1Y2FzIERlIE1h
cmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPiB3cml0ZXM6Cj4gPiArc3RhdGljIHZvaWQg
Z2VuOF9pbml0X3JlZ19zdGF0ZSh1MzIgKnJlZ3MsCj4gPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsCj4gPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCj4gPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgaW50ZWxfcmluZyAqcmluZykKPiA+ICt7Cj4gPiAr
ICAgICBzdHJ1Y3QgaTkxNV9wcGd0dCAqcHBndHQgPSBpOTE1X3ZtX3RvX3BwZ3R0KGNlLT52bSk7
Cj4gPiArICAgICBib29sIHJjcyA9IGVuZ2luZS0+Y2xhc3MgPT0gUkVOREVSX0NMQVNTOwo+ID4g
KyAgICAgdTMyIGJhc2UgPSBlbmdpbmUtPm1taW9fYmFzZTsKPiA+ICsKPiA+ICsgICAgIHJlZ3Nb
Q1RYX0xSSV9IRUFERVJfMF0gPSBNSV9MT0FEX1JFR0lTVEVSX0lNTShyY3MgPyAxNCA6IDExKSB8
Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgTUlfTFJJX0ZPUkNFX1BPU1RFRDsK
PiAKPiBJdCBjb3VsZCBiZSBiZXR0ZXIgdGhhdCB0aGUgaW1tIGJhdGNoIHNpemUgd291bGQgYmUg
Y29udGFpbmVkCj4gaW4gdGhlIGFjdHVhbCBoZWxwZXIgd2hpY2ggZG9lcyBpdC4gQnV0IGFzIHRo
aXMgd291bGQgY2hhbmdlCj4gdGhlIGltbSBzaXplcywgbGV0J3Mgbm90IGdvIHRoZXJlLCBhdGxl
YXN0IG5vdCB5ZXQgdW50aWwKPiBldmVyeXRoaW5nIGlzIGdyZWVuIG9uIENJLgo+IAo+IEJ1dCB0
aGUgY29uZnVzaW9uIEkgaGF2ZSBpcyB3aXRoIHRoZSB2aXJ0dWFsIGVuZ2luZXMuCj4gQWNjb3Jk
aW5nIHRvIGNvbW1lbnRzIHRoZSB2aXJ0dWFsIGVuZ2luZSByZWcgc3RhdGUgc2V0dXAKPiBoYXMg
dG8gbWltaWMgdGhlIGV4ZWNsaXN0IG9uZSBleGFjdGx5LiBXaXRoIHRoaXMKPiBnZW4xMi9nZW44
IHNwbGl0LCB3ZSBicmVhayB0aGUgc3ltbWV0cnkuIERvIHdlCj4gbmVlZCBzYW1lIHNwbGl0IGlu
IHRoZXJlPwoKSWYgdGhlIGxheW91dCBvZiB0aGUgY29udGV4dCBpbWFnZSBjaGFuZ2VzLCB5ZXMg
d2UgZG8gYXMgd2UganVzdCB1cGRhdGUKdGhlIHJlZ2lzdGVyIG9mZnNldHMgaW4gc2l0dS4KLUNo
cmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
