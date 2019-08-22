Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 440AE99569
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 15:48:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 868116EB3E;
	Thu, 22 Aug 2019 13:48:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10E6E6EB36
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2019 13:48:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18227853-1500050 for multiple; Thu, 22 Aug 2019 14:48:05 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190817093902.2171-1-lucas.demarchi@intel.com>
 <20190817093902.2171-27-lucas.demarchi@intel.com>
 <156629741255.1374.17835443088274919959@skylake-alporthouse-com>
 <87r25d2u59.fsf@gaia.fi.intel.com>
In-Reply-To: <87r25d2u59.fsf@gaia.fi.intel.com>
Message-ID: <156648168338.27716.1062270440719084661@skylake-alporthouse-com>
Date: Thu, 22 Aug 2019 14:48:03 +0100
Subject: Re: [Intel-gfx] [PATCH v2 26/40] HACK: drm/i915/tgl: Gen12 render
 context size
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA4LTIyIDE0OjQyOjU4KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBRdW90aW5nIEx1Y2Fz
IERlIE1hcmNoaSAoMjAxOS0wOC0xNyAxMDozODo0OCkKPiA+PiBGcm9tOiBEYW5pZWxlIENlcmFv
bG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+ID4+IAo+ID4+IFJl
LXVzZSBHZW4xMSBjb250ZXh0IHNpemUgZm9yIG5vdy4KPiA+PiAKPiA+PiBbIEx1Y2FzOiBhZGQg
SEFDSyBzaW5jZSB0aGlzIGlzIGEgdGVtcG9yYXJ5IHBhdGNoIHRoYXQgbmVlZHMgdG8gYmUKPiA+
PiAgIGNvbmZpcm1lZDogd2UgbmVlZCB0byBjaGVjayBCU3BlYyA0NjI1NSBhbmQgcmVjb21wdXRl
IF0KPiA+Cj4gPiBXZSBjYW4gZHJvcCB0aGUgSEFDSyBhbmQganVzdCByZWZlciB0byB0aGlzIGFz
IGEgdGVtcG9yYXJ5IHBhdGNoLiBXZQo+ID4gaGF2ZSBzZWxmdGVzdHMgYW5kIHJ1bnRpbWUgdmVy
aWZpY2F0aW9uIHRvIGNhdGNoIGlmIHdlIHVuZGVyIGFsbG9jYXRlLAo+ID4gc28gaWYgb3VyIHRl
c3RpbmcgaXMgY2xlYW4sIGl0J3MgZ29vZCBlbm91Z2ggZm9yIHRoZSB0aW1lIGJlaW5nLgo+IAo+
IEkgdGhpbmsgSSBoYWQgYSBzY3JpcHQgc29tZXdoZXJlIHdoaWNoIGNhbiBjYWxjdWxhdGUgdGhl
Cj4gY29udGV4dCBzaXplIGZyb20gYnNwZWMgKEN1dCBwYXN0ZSkuIE5vIHByb21pc2VzIHRoby4K
PiAKPiBIb3dhYm91dCBtYWtpbmcgYSBzZWxmdGVzdCB0byBmaWd1cmUgb3V0IHRoZSBjb250ZXh0
IHN0YXRlIHNpemU/CgpGb3IgZnVuLCB3ZSBleHBlY3QgdGhlIGNvbnRleHQgc2l6ZSB0byBiZSB2
YXJpYWJsZSBkZXBlbmRlbnQgb24Kd29ya2xvYWQuIEkgdGhvdWdodCBhIHNpbmdsZSBzZWxmdGVz
dCB3b3VsZCBkbyB0aGUgdHJpY2ssIGJ1dCBoYWQgdG8Kc2V0dGxlIGZvciBydW50aW1lIGNoZWNr
aW5nIGp1c3QgaW4gY2FzZSB3ZSBoaXQgYSBjb3JuZXIgY2FzZSB3ZSBkaWRuJ3QKYWNjb3VudCBm
b3IuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
