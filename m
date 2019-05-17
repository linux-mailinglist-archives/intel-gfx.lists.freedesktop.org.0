Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CDAE21C43
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 19:14:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0117189895;
	Fri, 17 May 2019 17:14:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00B2289895
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 17:14:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16592599-1500050 for multiple; Fri, 17 May 2019 18:14:03 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <op.z1x10tx6xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
References: <20190517162227.6436-1-michal.wajdeczko@intel.com>
 <20190517162227.6436-6-michal.wajdeczko@intel.com>
 <155811069162.826.12709617970282077850@skylake-alporthouse-com>
 <op.z1x10tx6xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Message-ID: <155811324114.1890.9192023953163702697@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 17 May 2019 18:14:01 +0100
Subject: Re: [Intel-gfx] [PATCH 5/7] drm/i915/uc: Skip reset preparation if
 GuC is already dead
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA1LTE3IDE4OjExOjA3KQo+IE9uIEZyaSwg
MTcgTWF5IDIwMTkgMTg6MzE6MzEgKzAyMDAsIENocmlzIFdpbHNvbiAgCj4gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4gd3JvdGU6Cj4gCj4gPiBRdW90aW5nIE1pY2hhbCBXYWpkZWN6a28gKDIw
MTktMDUtMTcgMTc6MjI6MjUpCj4gPj4gV2UgbWF5IHNraXAgcmVzZXQgcHJlcGFyYXRpb24gc3Rl
cHMgaWYgR3VDIGlzIGFscmVhZHkgc2FuaXRpemVkLgo+ID4+Cj4gPj4gU2lnbmVkLW9mZi1ieTog
TWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Cj4gPj4gQ2M6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4+IENjOiBEYW5pZWxlIENl
cmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+ID4+IC0tLQo+
ID4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91Yy5jIHwgMyArKysKPiA+PiAgMSBmaWxl
IGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQo+ID4+Cj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX3VjLmMgIAo+ID4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfdWMuYwo+ID4+IGluZGV4IDg2ZWRmYTVhZDcyZS4uMzZjNTNhNDI5MjdjIDEwMDY0NAo+ID4+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VjLmMKPiA+PiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF91Yy5jCj4gPj4gQEAgLTQ5OSw2ICs0OTksOSBAQCB2b2lkIGlu
dGVsX3VjX3Jlc2V0X3ByZXBhcmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgIAo+ID4+ICppOTE1
KQo+ID4+ICAgICAgICAgaWYgKCFVU0VTX0dVQyhpOTE1KSkKPiA+PiAgICAgICAgICAgICAgICAg
cmV0dXJuOwo+ID4+Cj4gPj4gKyAgICAgICBpZiAoIWludGVsX2d1Y19pc19hbGl2ZShndWMpKQo+
ID4+ICsgICAgICAgICAgICAgICByZXR1cm47Cj4gPgo+ID4gRG9lcyBpdCBub3QgcmVwbGFjZSAi
aWYgKCFVU0VTX0dVQyhpOTE1KSkiPwo+IAo+IFllcyBpdCBjYW4sIGFzIHdlIHdpbGwgbmV2ZXIg
ZmV0Y2gvdXBsb2FkIGZ3IGlmIHdlIGRvbid0IHBsYW4gdG8gdXNlIGl0IDspCj4gCj4gQnR3LCBJ
J20gdGhpbmtpbmcgb2YgcmVuYW1pbmcgaW50ZWxfZ3VjX2lzX2FsaXZlIHRvIGludGVsX2d1Y19p
c19sb2FkZWQKPiBvciBpbnRlbF9ndWNfaXNfc3RhcnRlZCB0byBiZXR0ZXIgZGVzY3JpYmUgd2hh
dCB0aGlzIGZ1bmN0aW9uIGlzIHJlcG9ydGluZywKPiBhcyBvbmUgY2FuIHRoaW5rIHRoYXQgaW50
ZWxfZ3VjX2lzX2FsaXZlIGlzIGFjdHVhbGx5IGNoZWNraW5nIHRoYXQgR3VDIGZ3Cj4gaXMgcmVz
cG9uc2l2ZSwgd2hpY2ggaW4gZ2VuZXJhbCBtaWdodCBub3QgYmUgdGhlIHNhbWUgYXMgImxvYWRl
ZCIKCkVpdGhlciBzZWVtcyByZWFzb25hYmxlLCB0aG91Z2ggdGhlcmUgbWlnaHQgYmUgZ29vZCBy
ZWFzb24gdG8gaGF2ZSBib3RoCjopCgppbnRlbF9ndWNfaXNfbG9hZGVkCmludGVsX2d1Y19oYXNf
c3RhcnRlZCAvIGludGVsX2d1Y19pc19hY3RpdmUKLWNocmlzCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
