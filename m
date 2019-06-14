Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47426463B9
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 18:14:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDFDA8931E;
	Fri, 14 Jun 2019 16:14:44 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 681E58931E
 for <Intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 16:14:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16904936-1500050 for multiple; Fri, 14 Jun 2019 17:14:10 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190614151731.17608-1-tvrtko.ursulin@linux.intel.com>
 <20190614151731.17608-4-tvrtko.ursulin@linux.intel.com>
 <156052878343.7796.10453369434477175494@skylake-alporthouse-com>
In-Reply-To: <156052878343.7796.10453369434477175494@skylake-alporthouse-com>
Message-ID: <156052884815.7796.8362211097564298798@skylake-alporthouse-com>
Date: Fri, 14 Jun 2019 17:14:08 +0100
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDYtMTQgMTc6MTM6MDMpCj4gUXVvdGluZyBUdnJ0
a28gVXJzdWxpbiAoMjAxOS0wNi0xNCAxNjoxNzowMykKPiA+IEZyb206IFR2cnRrbyBVcnN1bGlu
IDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gPiAKPiA+IEFzIGl0IHdpbGwgZ3JvdyBpbiBh
IGZvbGxvd2luZyBwYXRjaCBtYWtlIGEgbmV3IGhvbWUgZm9yIGl0Lgo+ID4gCj4gPiB2MjoKPiA+
ICAqIENvbnZlcnQgbW9ja19nZW1fZGV2aWNlIGFzIHdlbGwuIChDaHJpcykKPiA+IAo+ID4gU2ln
bmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiA+
IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlICAgICAgICAgICAgICAgICAg
ICB8ICAxICsKPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jICAgICAgICAg
ICAgICAgfCAxNSArKysrKysrKysrKysrKysKPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9ndC5oICAgICAgICAgICAgICAgfCAxNCArKysrKysrKysrKysrKwo+ID4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgICAgICAgICAgICAgICAgICB8ICA2ICsrLS0tLQo+ID4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9tb2NrX2dlbV9kZXZpY2UuYyB8ICA1ICsr
LS0tCj4gPiAgNSBmaWxlcyBjaGFuZ2VkLCAzNCBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygt
KQo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9n
dC5jCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2d0LmgKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxl
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUKPiA+IGluZGV4IGMwYTdiMjk5NDA3Ny4u
OGRmMWJmMjg1NWQwIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZp
bGUKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCj4gPiBAQCAtNzMsNiAr
NzMsNyBAQCBndC15ICs9IFwKPiA+ICAgICAgICAgZ3QvaW50ZWxfY29udGV4dC5vIFwKPiA+ICAg
ICAgICAgZ3QvaW50ZWxfZW5naW5lX2NzLm8gXAo+ID4gICAgICAgICBndC9pbnRlbF9lbmdpbmVf
cG0ubyBcCj4gPiArICAgICAgIGd0L2ludGVsX2d0Lm8gXAo+ID4gICAgICAgICBndC9pbnRlbF9n
dF9wbS5vIFwKPiA+ICAgICAgICAgZ3QvaW50ZWxfaGFuZ2NoZWNrLm8gXAo+ID4gICAgICAgICBn
dC9pbnRlbF9scmMubyBcCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZ3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmMKPiA+IG5ldyBm
aWxlIG1vZGUgMTAwNjQ0Cj4gPiBpbmRleCAwMDAwMDAwMDAwMDAuLjgwN2M1Zjc0NjExMAo+ID4g
LS0tIC9kZXYvbnVsbAo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3Qu
Ywo+ID4gQEAgLTAsMCArMSwxNSBAQAo+ID4gKy8qCj4gPiArICogU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IE1JVAo+ID4gKyAqCj4gPiArICogQ29weXJpZ2h0IMKpIDIwMTkgSW50ZWwgQ29ycG9y
YXRpb24KPiA+ICsgKi8KPiA+ICsKPiA+ICsjaW5jbHVkZSAiaW50ZWxfZ3QuaCIKPiA+ICsKPiA+
ICt2b2lkIGludGVsX2d0X2luaXQoc3RydWN0IGludGVsX2d0ICpndCkKPiAKPiBQbGVhc2UgdXNl
IGludGVsX2d0X2luaXRfZWFybHkoKSB0byBrZWVwIHRoZSBwaGFzZSBrbm93bi4KCihBbmQgeWVz
LCBJIGtub3cgSSB2aW9sYXRlZCBteSBvd24gcnVsZSwgaXQncyBlYXNpZXIgdG8gc3BvdCBpbiBy
ZXZpZXcKOikKLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
