Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06BBCD6434
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 15:38:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4112F6E2F3;
	Mon, 14 Oct 2019 13:38:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A2ED6E499
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 13:38:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18832762-1500050 for multiple; Mon, 14 Oct 2019 14:38:06 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191010071434.31195-1-chris@chris-wilson.co.uk>
 <20191010071434.31195-10-chris@chris-wilson.co.uk>
 <a087c394-da92-e35c-f5c8-f1baefe0342f@linux.intel.com>
 <157080671963.31572.12487101325975352392@skylake-alporthouse-com>
 <b9f4ee95-4f07-f6fe-3569-ff693c5905ad@linux.intel.com>
In-Reply-To: <b9f4ee95-4f07-f6fe-3569-ff693c5905ad@linux.intel.com>
Message-ID: <157106028474.18859.13664898349381835208@skylake-alporthouse-com>
Date: Mon, 14 Oct 2019 14:38:04 +0100
Subject: Re: [Intel-gfx] [PATCH 10/10] drm/i915: Flush idle barriers when
 waiting
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMC0xNCAxNDowODoxMikKPiAKPiBPbiAxMS8x
MC8yMDE5IDE2OjExLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTEwLTExIDE1OjU2OjM1KQo+ID4+Cj4gPj4gT24gMTAvMTAvMjAxOSAwODoxNCwg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+ID4+PiBJZiB3ZSBkbyBmaW5kIG91cnNlbHZlcyB3aXRoIGFu
IGlkbGUgYmFycmllciBpbnNpZGUgb3VyIGFjdGl2ZSB3aGlsZQo+ID4+PiB3YWl0aW5nLCBhdHRl
bXB0IHRvIGZsdXNoIGl0IGJ5IGVtaXR0aW5nIGEgcHVsc2UgdXNpbmcgdGhlIGtlcm5lbAo+ID4+
PiBjb250ZXh0Lgo+ID4+Cj4gPj4gVGhlIHBvaW50IG9mIHRoaXMgb25lIGNvbXBsZXRlbHkgZXNj
YXBlcyBtZSBhdCB0aGUgbW9tZW50LiBJZGxlIGJhcnJpZXJzCj4gPj4gYXJlIGtlcHQgaW4gdGhl
cmUgdG8gYmUgY29uc3VtZWQgYnkgdGhlIGVuZ2luZV9wbSBwYXJraW5nLCBzbyBpZiBhbnkKPiA+
PiByYW5kb20gd2FpdGVyIGZpbmRzIHNvbWUgKHRoZXJlIHdpbGwgYWx3YXlzIGJlIHNvbWUsIGFz
IGxvbmcgYXMgdGhlCj4gPj4gZW5naW5lIGV4ZWN1dGVkIHNvbWUgdXNlciBjb250ZXh0LCByaWdo
dD8pLAo+ID4gCj4gPiBOb3QgYW55IHJhbmRvbSB3YWl0ZXI7IHRoZSB3YWl0ZXIgaGFzIHRvIGJl
IHdhaXRpbmcgb24gYSBjb250ZXh0IHRoYXQKPiA+IHdhcyBhY3RpdmUgYW5kIHNvIHNldHVwIGEg
YmFycmllci4KPiA+IAo+ID4+IHdoeSB3b3VsZCBpdCB3YW50IHRvIGhhbmRsZQo+ID4+IHRoZW0/
IEFnYWluIGp1c3QgdG8gdXNlIHRoZSBvcHBvcnR1bml0eSBmb3Igc29tZSBob3VzZSBrZWVwaW5n
PyBCdXQgd2hhdAo+ID4+IGlmIHRoZSBzeXN0ZW0gaXMgb3RoZXJ3aXNlIHF1aXRlIGJ1c3kgYW5k
IGEgbG93LXByaW9yaXR5IGNsaWVudCBqdXN0Cj4gPj4gaGFwcGVucyB0byB3YW50IHRvIHdhaXQg
b24gc29tZXRoaW5nIHNpbGx5Pwo+ID4gCj4gPiBUaGVyZSdzIG5vIGd1YXJhbnRlZSB0aGF0IGl0
IHdpbGwgZXZlciBiZSBmbHVzaGVkLiBTbyB3aHkgd291bGRuJ3Qgd2UKPiA+IHVzZSBhIGxvdyBw
cmlvcml0eSByZXF1ZXN0IHRvIGdpdmUgYSBzZW1ibGFuY2Ugb2YgZm9yd2FyZCBwcm9ncmVzcyBh
bmQKPiA+IGdpdmUgYSBndWFyYW50ZWUgdGhhdCB0aGUgd2FpdCB3aWxsIGNvbXBsZXRlLgo+ID4g
Cj4gPiBJdCdzIGEgaHlwb3RoZXRpY2FsIHBvaW50LCB0aGVyZSBhcmUgbm8gd2FpdGVycyB0aGF0
IG5lZWQgdG8gd2FpdCB1cG9uCj4gPiB0aGVpciBvd24gYmFycmllcnMgYXQgcHJlc2VudC4gV2Ug
YXJlIGp1c3QgY29tcGxldGluZyB0aGUgcGljdHVyZSBmb3IKPiA+IGlkbGUgYmFycmllciB0cmFj
a2luZy4KPiAKPiBIbSBJIHdhcyBtaXN0YWtlbmx5IHJlbWVtYmVyaW5nIHRoaW5ncyBsaWtlIHJw
Y3MgcmVjb25maWd1cmF0aW9uIHdvdWxkIAo+IHdhaXQgb24gY2UtPmFjdGl2ZSwgYnV0IEkgZm9y
Z290IGFib3V0IHlvdXIgdHJpY2sgd2l0aCBwdXR0aW5nIGtlcm5lbCAKPiBjb250ZXh0IHJlcXVl
c3Qgb24gYW4gdXNlciB0aW1lbGluZS4KPiAKPiBJIGd1ZXNzIGl0IGlzIGZpbmUgdGhlcmUsIGJ1
dCBzaW5jZSwgYW5kIGFzIHlvdSBoYXZlIHNhaWQsIGl0IGlzIAo+IGh5cG90aGV0aWNhbCwgdGhl
biB0aGlzIHBhdGNoIGlzIGRlYWQgY29kZSBhbmQgY2FuIHdhaXQuCgpXaHkgd291bGQgd2UgZXZl
biBib3RoZXIgY2hlY2tpbmcgYWdhaW5zdCB0aGUgcG90ZW50aWFsIGludmFsaWQgcG9pbnRlcgpk
ZXJlZmVyZW5jZSB0aGVuPy4uLiA6LXAKLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
