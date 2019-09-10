Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C4B9AE77F
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 12:02:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 354FB6E838;
	Tue, 10 Sep 2019 10:02:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72B6E6E838
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 10:02:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18435983-1500050 for multiple; Tue, 10 Sep 2019 11:02:36 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190910075738.26919-1-chris@chris-wilson.co.uk>
 <87a7bcts4m.fsf@gaia.fi.intel.com>
 <156810839289.30942.17826426340427610628@skylake-alporthouse-com>
 <877e6gtr18.fsf@gaia.fi.intel.com>
In-Reply-To: <877e6gtr18.fsf@gaia.fi.intel.com>
Message-ID: <156810975467.30942.10749734343093687984@skylake-alporthouse-com>
Date: Tue, 10 Sep 2019 11:02:34 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Clear STOP_RING bit on
 reset
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA5LTEwIDEwOjU0OjQzKQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBRdW90aW5nIE1pa2Eg
S3VvcHBhbGEgKDIwMTktMDktMTAgMTA6MzE6MDUpCj4gPj4gQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKPiA+PiAKPiA+PiA+IER1cmluZyByZXNldCwgd2Ug
dHJ5IHRvIGVuc3VyZSBubyBmb3J3YXJkIHByb2dyZXNzIG9mIHRoZSBDUyBwcmlvciB0bwo+ID4+
ID4gdGhlIHJlc2V0IGJ5IHNldHRpbmcgdGhlIFNUT1BfUklORyBiaXQgaW4gUklOR19NSV9NT0RF
LiBTaW5jZSBnZW45LCB0aGlzCj4gPj4gPiByZWdpc3RlciBpcyBjb250ZXh0IHNhdmVkIGFuZCBk
byB3ZSBlbmQgdXAgaW4gdGhlIG9kZCBzaXR1YXRpb24gd2hlcmUgd2UKPiA+PiA+IHNhdmUgdGhl
IFNUT1BfUklORyBiaXQgYW5kIHNvIHRyeSB0byBzdG9wIHRoZSBlbmdpbmUgYWdhaW4gaW1tZWRp
YXRlbHkKPiA+PiA+IHVwb24gcmVzdW1lLiBUaGlzIGlzIHF1aXRlIHVuZXhwZWN0ZWQgYW5kIGNh
dXNlcyB1cyB0byBjb21wbGFpbiBhYm91dCBhbgo+ID4+ID4gZWFybHkgQ1MgY29tcGxldGlvbiBl
dmVudCEKPiA+PiAKPiA+PiBUaGUgY29tcGxldGlvbiBldmVudCBpcyBhIHByb2R1Y3Qgb2YgcmVz
dW1lIHdpdGggYSBzdG9wIHNldD8KPiA+Cj4gPiBBIGNvbXBsZXRpb24gZXZlbnQgaXMgdGhlIHBy
b2R1Y3Qgb2YgU1RPUF9SSU5HLiBXaGV0aGVyIGl0IGlzIHRoZQo+ID4gY29tcGxldGlvbiBldmVu
dCB0aGF0IHdlIGtlZXAgZmFpbGluZyBvbi4uLgo+ID4gIAo+ID4+IElmIG15IG1lbW9yeSBzZXJ2
ZXMgbWUgd2VsbCwgd2UgaGF2ZSBmb3VnaHQgdGhpcyBiZWZvcmUuCj4gPgo+ID4gRXhhY3RseS4g
V2UndmUgcmVkdWNlZCB0aGUgZnJlcXVlbmN5IG9mIHdoZW4gd2UgYXBwbHkgdGhlIFNUT1BfUklO
RywgYnV0Cj4gPiBoYXZlIG5vdCBlbGltaW5hdGVkIGl0Lgo+ID4gIAo+ID4+IEJ1dCBJIGhhdmUg
c3RpbGwgbWlzc2luZyBwaWVjZXMuIFdoeSB3b3VsZCB3ZSBub3Qgd2FudCB0bwo+ID4+IHNldCB0
aGlzIGZvciBhbGwgY29udGV4dHMgcHJpbWVkIGZvciBleGVjdXRpb24/IEluIGdlbjggdG9vLgo+
ID4KPiA+IEl0J3Mgbm90IGluIHRoZSBnZW44IGNvbnRleHQsIGFmYWljdC4gSSBzZWFyY2hlZCB0
aGUgY29udGV4dCBpbWFnZSBmb3IgYW4KPiA+IExSSSB3aXRoIHRoZSBSSU5HX01JX01PREUgcmVn
aXN0ZXI6Cj4gPiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvMzI5OTE5
Lz9zZXJpZXM9NjY0NjgmcmV2PTEKPiA+ICAKPiA+PiBJIG1lYW4sIHF1ZXVpbmcgY29udGV4dCB3
aXRoIGEgcmluZyBzdG9wcGVkIGp1c3QgZG9lc24ndAo+ID4+IHNvdW5kIHJpZ2h0IG9uIGFueSBn
ZW4uCj4gPgo+ID4gV2UgY2xlYXIgdGhlIFNUT1BfUklORyBpbiB0aGUgcmVnaXN0ZXIgb24gcmVz
dW1lIGp1c3QgaW4gY2FzZSwgYW5kIHRoYXQKPiA+IGlzIGJlaW5nIGZsYWdnZWQgb24gSWNlbGFr
ZSAod2hpY2ggSSBwdXQgZG93biB0byB0aGUgcmVzZXQgbm90IGJlaW5nIHZlcnkKPiA+IHRob3Jv
dWdoISkuIFRoZSByZW1haW5pbmcgcXVlc3Rpb24gd2FzIHdoZXRoZXIgd2Ugd2VyZSByZXN0b3Jp
bmcgaXQgZnJvbQo+ID4gdGhlIGNvbnRleHQgaW1hZ2UuCj4gCj4gSG1tIHllYWgsIEkgd2FzIGNv
bmZ1c2VkIG9mIHRoZSBzZXF1ZW5jZSBvZiBzZXR1cC4gV2l0aCB0aGF0IGNsZWFyZWQKPiBhbmQg
d2l0aCB0aGUgY29udGV4dCBzdGF0ZSBiZWluZyB3b3JrZWQgb24sIHBlcmhhcHMgd2UgY2FuIGFk
ZAo+IHNhbml0eSBjaGVja2VycyB0byB0aGUgcXVldWluZyBwYXRoLgoKWWVhaCwgSSB0aGluayB0
aGVyZSdzIGRlZmluaXRlbHkgc29tZSBmdW4gd2UgY2FuIGhhdmUgaGVyZS4gQXQgdGhlIHZlcnkK
bGVhc3QgYSBjaGVjayB0aGF0IENUWF9SSU5HX1NUQVJUID09IHJpbmctPnN0YXJ0IHdvdWxkIGJl
IGEgZ29vZApzYW5pdHljaGVjay4KIAo+IFJldmlld2VkLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWth
Lmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KCkFzIGFsd2F5cywgdGhlIG9ubHkgd2F5IHRvIGJl
IHN1cmUgaWYgdGhpcyBjaGFuZ2VzIHRoZSBtdGJmIGlzIHRvIGxldCBpcwpzb2FrLiBPbmUgZGF5
IEkgbWF5IGJlIGFibGUgdG8gcnVuIG15IG93biBleHRlbmRlZCB0ZXN0aW5nIG9uIGljbCEKLUNo
cmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
