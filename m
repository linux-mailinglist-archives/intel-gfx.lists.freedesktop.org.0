Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE0EB10A63
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2019 17:59:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7674589229;
	Wed,  1 May 2019 15:59:07 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 873D189229
 for <Intel-gfx@lists.freedesktop.org>; Wed,  1 May 2019 15:59:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16418696-1500050 for multiple; Wed, 01 May 2019 16:58:45 +0100
MIME-Version: 1.0
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <a97b774d-a0bf-0fe2-6313-d62e397c948f@linux.intel.com>
References: <20190501105228.24579-1-tvrtko.ursulin@linux.intel.com>
 <155670901723.1850.2548827998858751831@skylake-alporthouse-com>
 <c38e129b-c2ed-75b9-b390-c3ff9f611344@linux.intel.com>
 <155671171631.1850.5975035049997807924@skylake-alporthouse-com>
 <a97b774d-a0bf-0fe2-6313-d62e397c948f@linux.intel.com>
Message-ID: <155672632459.1850.4821984616007913694@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 01 May 2019 16:58:44 +0100
Subject: Re: [Intel-gfx] [PATCH v11] drm/i915: Engine discovery query
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0wMSAxNjo1MToyOCkKPiAKPiBPbiAwMS8w
NS8yMDE5IDEyOjU1LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA1LTAxIDEyOjQ1OjM2KQo+ID4+IEhtbS4uIHByb2JhYmx5IG1hbnVhbCBjaGVj
ayBmb3Igbm8gaG9sZXMgX2FuZF8gYWxpZ25tZW50IGlzIGdvb2QgZW5vdWdoCj4gPj4gZm9yIHVB
UEkgc2luY2Ugb25jZSBpdCdzIGluIGl0J3MgaW4uIFdpbGwgdHJpcGxlLWNoZWNrLgo+ID4gCj4g
PiBZZWFoLCB3ZSBhY3R1YWxseSBuZWVkIHNvbWV0aGluZyBtb3JlIGxpa2UKPiA+IG9mZnNldG9m
ZW5kKHByZXZpb3VzX2ZpZWxkKSA9PSBvZmZzZXRvZihuZXh0X2ZpZWxkKQo+ID4gCj4gPiBCVUlM
RF9CVUdfT04oY2hlY2tfdXNlcl9zdHJ1Y3QoaW5mbywgcHJldmlvdXNfZmllbGQsIG5leHRfZmll
bGQpKSA/Cj4gCj4gSG93IHdvdWxkIHlvdSBsb2dpc3RpY2FsbHkgZG8gaXQ/IExpc3QgYWxsIHN0
cnVjdCBtZW1iZXJzIGZvciBlYWNoIHVhcGkgCj4gc3RydWN0IHlvdSB3YW50IHRvIGNoZWNrPwo+
IAo+IE1heWJlIGEgdmFyaWFkaWMgbWFjcm8gbGlrZToKPiAKPiBDSEVDS19VU0VSX1NUUlVDVF9G
VU5DVElPTih0eXBlLCBtZW1iZXIwLCAuLi4gbWVtYmVyTik7Cj4gCj4gV2hpY2ggZXhwYW5kcyB0
byBhIGRlZGljYXRlZCBmdW5jdGlvbiB0byBjaGVjayB0aGlzIHR5cGUsIHVzaW5nIAo+IHZhX3N0
YXJ0L3ZhX2VuZCB0byBpdGVyYXRlIGFsbCBtZW1iZXJzIGNoZWNraW5nIGZvciBob2xlcy4gU28g
c29tZXdoZXJlIAo+IGluIGNvZGUgd2Ugd291bGQgYWxzbyBuZWVkOgo+IAo+IENIRUNLX1VTRVJf
U1RSVUNUKHR5cGUpOwo+IAo+IFdoaWNoIHdvdWxkIGNhbGwgdGhlIGZ1bmN0aW9uLiBCdXQgdGhh
dHMgbm90IGJ1aWxkIHRpbWUuLiBDb3VsZCBiZSB1bmRlciAKPiBkZWJ1ZyBhbmQgc2VsZnRlc3Rz
IEkgZ3Vlc3MuIENvdWxkIGV2ZW4gYmUgSUdUIGluIHRoaXMgY2FzZS4KPiAKPiBCdXQgSSBhbSBu
b3QgdG8ga2VlbiBpbiBsaXN0aW5nIGVhY2ggc3RydWN0IG1lbWJlciB3aXRoIGEgCj4gcHJldi9u
ZXh0X2ZpZWxkIEJVSUxEX0JVR19PTi4KPiAKPiBQZXJoYXBzIElHVCBpcyBpbmRlZWQgYSBiZXR0
ZXIgcGxhY2UgdG8gc3RhcnQgdGVzdGluZyBmb3IgdGhpcy4gU2luY2Ugd2UgCj4gYW55d2F5IHJl
cXVpcmUgZWFjaCBuZXcgdUFQSSB0byBoYXZlIGdvb2QgSUdUIGNvdmVyYWdlLgoKRGVmaW5pdGVs
eSBkb24ndCBsaWtlIHRoZSBpZGVhIG9mIGRvaW5nIGl0IG1hbnVhbGx5LCBJIGNvdWxkIGhhdmUg
anVzdAphYm91dCBhY2NlcHRlZCBpdCBpZiB3ZSBjb3VsZCBoYXZlIHJvbGxlZCBpdCBpbnRvIGEg
Z2V0X3VzZXIgd3JhcHBlci4KCldlIHNob3VsZCBqdXN0IGdvIGFubm95IEphbmkgdG8gd2hpcCB1
cCBzb21lIE1ha2VmaWxlIG1hZ2ljIHRvIGNhbGwKcGFob2xlIGFuZCBjaGVjayB0aGUgc3RydWN0
cyBkZWZpbmVkIGluIHVhcGkuaAotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
