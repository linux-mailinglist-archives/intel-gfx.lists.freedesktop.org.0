Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 357AA102AB7
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 18:22:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 930A86E3B7;
	Tue, 19 Nov 2019 17:22:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1D666E3B7
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 17:22:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19261330-1500050 for multiple; Tue, 19 Nov 2019 17:22:30 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191118230254.2615942-1-chris@chris-wilson.co.uk>
 <20191118230254.2615942-16-chris@chris-wilson.co.uk>
 <1c494a5a-f717-caa8-3732-3b5f87344f8a@linux.intel.com>
In-Reply-To: <1c494a5a-f717-caa8-3732-3b5f87344f8a@linux.intel.com>
Message-ID: <157418414788.12093.16700812056007819540@skylake-alporthouse-com>
Date: Tue, 19 Nov 2019 17:22:27 +0000
Subject: Re: [Intel-gfx] [PATCH 15/19] drm/i915/gt: Flush the requests after
 wedging on suspend
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMS0xOSAxNjoxMjoxOCkKPiAKPiBPbiAxOC8x
MS8yMDE5IDIzOjAyLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBSZXRpcmUgYWxsIHJlcXVlc3Rz
IGlmIHdlIHJlc29ydCB0byB3ZWRnZWQgdGhlIGRyaXZlciBvbiBzdXNwZW5kLiBUaGV5Cj4gPiB3
aWxsIG5vdyBiZSBpZGxlLCBzbyB3ZSBtaWdodCBhcyB3ZSBmcmVlIHRoZW0gYmVmb3JlIHNodXR0
aW5nIGRvd24uCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgo+ID4gLS0tCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2d0X3BtLmMgfCAxICsKPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4g
PiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uYwo+ID4gaW5kZXggN2E5MDQ0
YWM0Yjc1Li5mNmI1MTY5ZDYyM2YgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9ndF9wbS5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9ndF9wbS5jCj4gPiBAQCAtMjU2LDYgKzI1Niw3IEBAIHN0YXRpYyB2b2lkIHdhaXRfZm9yX3N1
c3BlbmQoc3RydWN0IGludGVsX2d0ICpndCkKPiA+ICAgICAgICAgICAgICAgICogdGhlIGdwdSBx
dWlldC4KPiA+ICAgICAgICAgICAgICAgICovCj4gPiAgICAgICAgICAgICAgIGludGVsX2d0X3Nl
dF93ZWRnZWQoZ3QpOwo+ID4gKyAgICAgICAgICAgICBpbnRlbF9ndF9yZXRpcmVfcmVxdWVzdHMo
Z3QpOwo+ID4gICAgICAgfQo+ID4gICAKPiA+ICAgICAgIGludGVsX2d0X3BtX3dhaXRfZm9yX2lk
bGUoZ3QpOwo+ID4gCj4gCj4gUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJz
dWxpbkBpbnRlbC5jb20+Cj4gCj4gT3IgZ2l2ZW4gdGhhdCBwYXJraW5nIGlzIG5vdyBzeW5jIGl0
IGNvdWxkIHdvcmsgdG8gbWFrZSAKPiBpbnRlbF9ndF9wYXJrX3JlcXVlc3RzIGZsdXNoIGFuZCB0
aGVuIGludGVsX2d0X3BtX3dhaXRfZm9yX2lkbGUgd291bGQgCj4gaGFuZGxlIGl0LiBCdXQgdGhh
dCB3b3VsZCBrZWVwIHRoZSBHUFUgYWxpdmUgZm9yIHRvbyBsb25nLCBnaXZlbiB0aGF0IAo+IHJl
cXVlc3QgcmV0aXJlIGNhbiBydW4gaW5kZXBlbmRlbnRseS4gU28gcGVyaGFwcyB0aGlzIGlzIGJl
dHRlci4KCkl0J3MgdGhlIHVubGlrZWx5IHBhdGgsIHNvIGZhdm91cnMgdGhlIHNpbXBsZXIgaGFt
bWVyLgoKSXQncyB3aGF0IHdlIHVzZWQgdG8gZG8sIGRyb3BwZWQgYW5kIHRoZW4gZm9yZ290dGVu
IGFzIHRoZSBtdXRleGVzIHdlcmUKbW92ZWQgYXJvdW5kLiBIb3BlZnVsbHksIGl0IHN0aWxsIG1h
a2VzIHNlbnNlIHRvbW9ycm93LgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
