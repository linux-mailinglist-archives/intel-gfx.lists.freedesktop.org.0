Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2048EF48
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 17:26:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD1F86E9E6;
	Thu, 15 Aug 2019 15:26:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E05826E9E6
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 15:26:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18153371-1500050 for multiple; Thu, 15 Aug 2019 16:26:09 +0100
MIME-Version: 1.0
To: Daniel Vetter <daniel@ffwll.ch>,
 Matthew Auld <matthew.william.auld@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <CAM0jSHOXWzhLa4rjf68yuLHdU5x1duEbtL+uzhWDg0dQg+XWiQ@mail.gmail.com>
References: <20190627205633.1143-1-matthew.auld@intel.com>
 <20190627205633.1143-4-matthew.auld@intel.com>
 <20190730162605.GC7444@phenom.ffwll.local>
 <CAM0jSHOXWzhLa4rjf68yuLHdU5x1duEbtL+uzhWDg0dQg+XWiQ@mail.gmail.com>
Message-ID: <156588276737.11610.17180695255869862937@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 15 Aug 2019 16:26:07 +0100
Subject: Re: [Intel-gfx] [PATCH v2 03/37] drm/i915/region: support basic
 eviction
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDgtMTUgMTE6NDg6MDQpCj4gT24gVHVlLCAzMCBK
dWwgMjAxOSBhdCAxNzoyNiwgRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPiB3cm90ZToK
PiA+Cj4gPiBPbiBUaHUsIEp1biAyNywgMjAxOSBhdCAwOTo1NTo1OVBNICswMTAwLCBNYXR0aGV3
IEF1bGQgd3JvdGU6Cj4gPiA+IFN1cHBvcnQgYmFzaWMgZXZpY3Rpb24gZm9yIHJlZ2lvbnMuCj4g
PiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVs
LmNvbT4KPiA+ID4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4Lmlu
dGVsLmNvbT4KPiA+ID4gQ2M6IEFiZGllbCBKYW51bGd1ZSA8YWJkaWVsLmphbnVsZ3VlQGxpbnV4
LmludGVsLmNvbT4KPiA+Cj4gPiBTbyBmcm9tIGEgdmVyeSBoaWdoIGxldmVsIHRoaXMgbG9va3Mg
bGlrZSBpdCB3YXMgbGFyZ2VseSBtb2RlbGxlZCBhZnRlcgo+ID4gaTkxNV9nZW1fc2hyaW5rLmMg
YW5kIG5vdCBpOTE1X2dlbV9ldmljdC5jIChvdXIgb3RoZXIgIm1ha2Ugcm9vbSwgd2UncmUKPiA+
IHJ1bm5pbmcgb3V0IG9mIHN0dWZmIiBjb2RlKS4gQW55IHNwZWNpZmljIHJlYXNvbnM/Cj4gCj4g
SUlSQyBJIHRoaW5rIGl0IHdhcyBvcmlnaW5hbGx5IGJhc2VkIG9uIHRoZSBwYXRjaGVzIHRoYXQg
ZXhwb3NlZAo+IHN0b2xlbi1tZW1vcnkgdG8gdXNlcnNwYWNlIGZyb20gYSBmZXcgeWVhcnMgYWdv
Lgo+IAo+ID4KPiA+IEkgdGhpbmsgaTkxNV9nZW1fZXZpY3QgaXMgYSBsb3QgY2xvc2VyIG1hdGNo
IGZvciB3aGF0IHdlIHdhbnQgZm9yIHZyYW0gKGl0Cj4gPiBzdGFydGVkIG91dCB0byBtYW5hZ2Ug
c2V2ZXJlbHkgbGltaXR0ZWQgR1RUIG9uIGdlbjIvMy80KSBhZnRlciBhbGwuIFdpdGgKPiA+IHRo
ZSBjb21wbGljYXRpb24gdGhhdCB3ZSdsbCBoYXZlIHRvIG1hbmFnZSBwaHlzaWNhbCBtZW1vcnkg
d2l0aCBtdWx0aXBsZQo+ID4gdmlydHVhbCBtYXBwaW5ncyBvZiBpdCBvbiB0b3AsIHNvIHVuZm9y
dHVuYXRlbHkgd2UgY2FuJ3QganVzdCByZXVzZSB0aGUKPiA+IGxvY2tpbmcgcGF0dGVyIENocmlz
IGhhcyBjb21lIHVwIHdpdGggaW4gaGlzIHN0cnVjdF9tdXRleC1yZW1vdmFsIGJyYW5jaC4KPiA+
IEJ1dCBhdCBsZWFzdCBjb25jZXB0dWFsbHkgaXQgc2hvdWxkIGJlIGEgbG90IGNsb3Nlci4KPiAK
PiBXaGVuIHlvdSBzYXkgbWFrZSBpdCBtb3JlIGxpa2UgaTkxNV9nZW1fZXZpY3QsIHdoYXQgZG9l
cyB0aGF0IG1lYW4/Cj4gQXJlIHlvdSB0YWxraW5nIGFib3V0IHRoZSBldmljdGlvbiByb3N0ZXIg
c3R1ZmYsIG9yIHRoZQo+IHBsYWNlbWVudC9sb2NraW5nIG9mIHRoZSBldmljdGlvbiBsb2dpYywg
d2l0aCBpdCBiZWluZyBkZWVwIGRvd24gaW4KPiBnZXRfcGFnZXM/CgpUaGUgYmlnZ2VzdCBkaWZm
ZXJlbmNlIHdvdWxkIGJlIHRoZSBsYWNrIG9mIHJlZ2lvbiBjb2FsZXNjaW5nOyB0aGUKZXZpY3Rp
b24gY29kZSBvbmx5IHRyaWVzIHRvIGZyZWUgd2hhdCB3b3VsZCByZXN1bHQgaW4gYSBzdWNjZXNz
ZnVsCmFsbG9jYXRpb24uIFdpdGggdGhlIG9yZGVyIGJlaW5nIHB1dCBpbnRvIHRoZSBzY2FubmVy
IHNvbWV3aGF0IHJlbGV2YW50LAppbiBwcmFjdGljZSwgZnJhZ21lbnRhdGlvbiBlZmZlY3RzIGNh
dXNlIHRoZSByYW5nZSBzZWFyY2ggdG8gYmUgc29tZXdoYXQKc2xvdyBhbmQgd2UgbXVjaCBwcmVm
ZXIgdGhlIHJhbmRvbSByZXBsYWNlbWVudCAtLSB3aGlsZSBoYXJtZnVsLCBpdCBpcwpub3QgYmlh
c2VkIGFzIHRvIHdobyBpdCBoYXJtcywgYW5kIHNvIGlzIGNvbnNpc3RlbnQgb3ZlcmhlYWQuIEhv
d2V2ZXIsCnNpbmNlIHlvdSBkb24ndCBuZWVkIHRvIGZpbmQgYSBzbG90IGluc2lkZSBhIHNtYWxs
IHJhbmdlIHdpdGhpbiBhIGZldwptaWxsaW9uIG9iamVjdHMsIEkgd291bGQgZXhwZWN0IExSVSBv
ciBldmVuIE1SVSAocmVjZW50bHkgdXNlZCBvYmplY3RzCmluIGdhbWVzIHRlbmQgdG8gYmUgbW9y
ZSBlcGhlbWVyYWwgYW5kIHNvIG1hZGUgZ29vZCBldmljdGlvbiB0YXJnZXRzLCBhdApsZWFzdCBh
Y2NvcmRpbmcgdG8gSm9obiBDYXJtYWNrIGJhY2sgaW4gdGhlIGRheSkgdG8gcmVxdWlyZSBmZXdl
ciBtYWpvcgpmYXVsdHMuCmh0dHBzOi8vZ2l0aHViLmNvbS9FU1dBVC9qb2huLWNhcm1hY2stcGxh
bi1hcmNoaXZlL2Jsb2IvbWFzdGVyL2J5X2RheS9qb2huY19wbGFuXzIwMDAwMzA3LnR4dAoKWW91
IHdvdWxkIG5lZWQgYSB2ZXJ5IHNpbWlsYXIgc2Nhbm5lciB0byBrZWVwIGEgam91cm5hbCBvZiB0
aGUgcG90ZW50aWFsCmZyZWVzIGZyb20gd2hpY2ggdG8gdHJhY2sgdGhlIGNvYWxlc2NpbmcgKHNs
aWdodGx5IG1vcmUgY29tcGxpY2F0ZWQgZHVlCnRvIHRoZSBkaXNqb2ludCBuYXR1cmUgb2YgdGhl
IGJ1ZGR5IG1lcmdlcykuIE9uZSBzdXNwZWN0cyB0aGF0IGFkZGluZwp0aGUgc2Nhbm5lciB3b3Vs
ZCBzaGFwZSB0aGUgYnVkZHlfbm9kZXMgbW9yZSB0b3dhcmRzIGRybV9tbV9ub2Rlcy4KClRoaXMg
aXMgYWxzbyBhIGNhc2Ugd2hlcmUgcmVhbCB3b3JsZCB0ZXN0aW5nIG9mIGEgdGhyYXNoaW5nIGxv
YWQgYmVhdHMKc2ltdWxhdGlvbi4gIFNvIGp1c3QgbWFrZSBzdXJlIHRoZSBldmljdGlvbiBkb2Vz
bid0IHN0YWxsIHRoZSBlbnRpcmUgR1BVCmFuZCBzdWJtaXNzaW9uIHBpcGVsaW5lIGFuZCB5b3Ug
d2lsbCBiZSBmb3JnaXZlbiBtb3N0IHRyYW5zZ3Jlc3Npb25zLgotQ2hyaXMKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
