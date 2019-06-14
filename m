Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC22F463CD
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 18:17:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FA3C899AB;
	Fri, 14 Jun 2019 16:17:11 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3CAB899AB
 for <Intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 16:17:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16904982-1500050 for multiple; Fri, 14 Jun 2019 17:16:44 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190614151731.17608-1-tvrtko.ursulin@linux.intel.com>
 <20190614151731.17608-4-tvrtko.ursulin@linux.intel.com>
 <156052878343.7796.10453369434477175494@skylake-alporthouse-com>
 <156052884815.7796.8362211097564298798@skylake-alporthouse-com>
In-Reply-To: <156052884815.7796.8362211097564298798@skylake-alporthouse-com>
Message-ID: <156052900171.7796.7786713440324003532@skylake-alporthouse-com>
Date: Fri, 14 Jun 2019 17:16:41 +0100
Subject: Re: [Intel-gfx] [RFC 03/31] drm/i915: Move intel_gt initialization
 to a separate file
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDYtMTQgMTc6MTQ6MDgpCj4gUXVvdGluZyBDaHJp
cyBXaWxzb24gKDIwMTktMDYtMTQgMTc6MTM6MDMpCj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1bGlu
ICgyMDE5LTA2LTE0IDE2OjE3OjAzKQo+ID4gPiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtv
LnVyc3VsaW5AaW50ZWwuY29tPgo+ID4gPiAKPiA+ID4gQXMgaXQgd2lsbCBncm93IGluIGEgZm9s
bG93aW5nIHBhdGNoIG1ha2UgYSBuZXcgaG9tZSBmb3IgaXQuCj4gPiA+IAo+ID4gPiB2MjoKPiA+
ID4gICogQ29udmVydCBtb2NrX2dlbV9kZXZpY2UgYXMgd2VsbC4gKENocmlzKQo+ID4gPiAKPiA+
ID4gU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNv
bT4KPiA+ID4gLS0tCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSAgICAgICAg
ICAgICAgICAgICAgfCAgMSArCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9n
dC5jICAgICAgICAgICAgICAgfCAxNSArKysrKysrKysrKysrKysKPiA+ID4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2d0LmggICAgICAgICAgICAgICB8IDE0ICsrKysrKysrKysrKysr
Cj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jICAgICAgICAgICAgICAgICAg
fCAgNiArKy0tLS0KPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9tb2NrX2dl
bV9kZXZpY2UuYyB8ICA1ICsrLS0tCj4gPiA+ICA1IGZpbGVzIGNoYW5nZWQsIDM0IGluc2VydGlv
bnMoKyksIDcgZGVsZXRpb25zKC0pCj4gPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYwo+ID4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmgKPiA+ID4gCj4gPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2Vm
aWxlCj4gPiA+IGluZGV4IGMwYTdiMjk5NDA3Ny4uOGRmMWJmMjg1NWQwIDEwMDY0NAo+ID4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQo+ID4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9NYWtlZmlsZQo+ID4gPiBAQCAtNzMsNiArNzMsNyBAQCBndC15ICs9IFwKPiA+
ID4gICAgICAgICBndC9pbnRlbF9jb250ZXh0Lm8gXAo+ID4gPiAgICAgICAgIGd0L2ludGVsX2Vu
Z2luZV9jcy5vIFwKPiA+ID4gICAgICAgICBndC9pbnRlbF9lbmdpbmVfcG0ubyBcCj4gPiA+ICsg
ICAgICAgZ3QvaW50ZWxfZ3QubyBcCj4gPiA+ICAgICAgICAgZ3QvaW50ZWxfZ3RfcG0ubyBcCj4g
PiA+ICAgICAgICAgZ3QvaW50ZWxfaGFuZ2NoZWNrLm8gXAo+ID4gPiAgICAgICAgIGd0L2ludGVs
X2xyYy5vIFwKPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2d0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jCj4gPiA+IG5ldyBmaWxl
IG1vZGUgMTAwNjQ0Cj4gPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uODA3YzVmNzQ2MTEwCj4gPiA+
IC0tLSAvZGV2L251bGwKPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
Z3QuYwo+ID4gPiBAQCAtMCwwICsxLDE1IEBACj4gPiA+ICsvKgo+ID4gPiArICogU1BEWC1MaWNl
bnNlLUlkZW50aWZpZXI6IE1JVAo+ID4gPiArICoKPiA+ID4gKyAqIENvcHlyaWdodCDCqSAyMDE5
IEludGVsIENvcnBvcmF0aW9uCj4gPiA+ICsgKi8KPiA+ID4gKwo+ID4gPiArI2luY2x1ZGUgImlu
dGVsX2d0LmgiCj4gPiA+ICsKPiA+ID4gK3ZvaWQgaW50ZWxfZ3RfaW5pdChzdHJ1Y3QgaW50ZWxf
Z3QgKmd0KQo+ID4gCj4gPiBQbGVhc2UgdXNlIGludGVsX2d0X2luaXRfZWFybHkoKSB0byBrZWVw
IHRoZSBwaGFzZSBrbm93bi4KPiAKPiAoQW5kIHllcywgSSBrbm93IEkgdmlvbGF0ZWQgbXkgb3du
IHJ1bGUsIGl0J3MgZWFzaWVyIHRvIHNwb3QgaW4gcmV2aWV3Cj4gOikKCk9oLCBhbmQgSSB3b3Vs
ZCBwcm9tb3RlIGl0IHRvIGJlaW5nIGNhbGxlZCBkaXJlY3RseSBieSBpOTE1X2Rydi5jIGFuZApz
dGFydCBwdWxsaW5nIHRoZSBIVyBzZXR1cCBvdXQgZnJvbSB1bmRlciBpOTE1X2dlbS5jLiBJIHdv
dWxkIGFsc28gbGlrZQp0byBwdXNoIGludGVsX2d0X3BtX2luaXQoKSBpbnRvIGludGVsX2d0X2lu
aXQoKSwgYW5kIGRvIHdhbnQgdG8gc3BsaXQKb3V0IGlwcy9ycHMgYW5kIHJjNiBvdXQgb2YgaW50
ZWxfcG0uYyBpbnRvIGd0LwotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
