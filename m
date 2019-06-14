Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2A846074
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 16:17:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C87289950;
	Fri, 14 Jun 2019 14:17:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20FF189950
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 14:17:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16903302-1500050 for multiple; Fri, 14 Jun 2019 15:17:25 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190614071023.17929-1-chris@chris-wilson.co.uk>
 <20190614071023.17929-3-chris@chris-wilson.co.uk>
 <87pnng8dhb.fsf@gaia.fi.intel.com>
In-Reply-To: <87pnng8dhb.fsf@gaia.fi.intel.com>
Message-ID: <156052184329.30578.4859105056411453018@skylake-alporthouse-com>
Date: Fri, 14 Jun 2019 15:17:23 +0100
Subject: Re: [Intel-gfx] [PATCH 02/39] drm/i915: Refine i915_reset.lock_map
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA2LTE0IDE1OjEwOjA4KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlcXVlc3QuYwo+ID4gaW5kZXggMWNiYzNlZjRmYzI3Li41MzExMjg2NTc4YjcgMTAwNjQ0
Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYwo+ID4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKPiA+IEBAIC0xNDQ0LDcgKzE0NDQs
MTUgQEAgbG9uZyBpOTE1X3JlcXVlc3Rfd2FpdChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwKPiA+
ICAgICAgICAgICAgICAgcmV0dXJuIC1FVElNRTsKPiA+ICAKPiA+ICAgICAgIHRyYWNlX2k5MTVf
cmVxdWVzdF93YWl0X2JlZ2luKHJxLCBmbGFncyk7Cj4gPiAtICAgICBsb2NrX21hcF9hY3F1aXJl
KCZycS0+aTkxNS0+Z3QucmVzZXRfbG9ja21hcCk7Cj4gPiArCj4gPiArICAgICAvKgo+ID4gKyAg
ICAgICogV2UgbXVzdCBuZXZlciB3YWl0IG9uIHRoZSBHUFUgd2hpbGUgaG9sZGluZyBhIGxvY2sg
YXMgd2UKPiA+ICsgICAgICAqIG1heSBuZWVkIHRvIHBlcmZvcm0gYSBHUFUgcmVzZXQuIFNvIHdo
aWxlIHdlIGRvbid0IG5lZWQgdG8KPiA+ICsgICAgICAqIHNlcmlhbGlzZSB3YWl0L3Jlc2V0IHdp
dGggYW4gZXhwbGljaXQgbG9jaywgd2UgZG8gd2FudAo+ID4gKyAgICAgICogbG9ja2RlcCB0byBk
ZXRlY3QgcG90ZW50aWFsIGRlcGVuZGVuY3kgY3ljbGVzLgo+ID4gKyAgICAgICovCj4gPiArICAg
ICBtdXRleF9hY3F1aXJlKCZycS0+aTkxNS0+Z3B1X2Vycm9yLndlZGdlX211dGV4LmRlcF9tYXAs
Cj4gPiArICAgICAgICAgICAgICAgICAgIDAsIDAsIF9USElTX0lQXyk7Cj4gCj4gU2VlbXMgdG8g
dHJhbnNsYXRlIHRvIGV4Y2x1c2l2ZSBsb2NrIHdpdGggZnVsbCBjaGVja2luZy4KPiAKPiBUaGVy
ZSB3YXMgb2Zjb3Vyc2UgYSBzbGlnaHQgcG9zc2liaWx0eSB0aGF0IHByZXZpb3VzIHJldmlld2Vy
IGRpZAo+IHJlYWQgYWxsIHRoZSBsb2NrZGVwLmguIExvb2tlZCBhdCB0aGUgd2VkZ2UgbXV0ZXgg
YW5kIGNvbm5lY3RlZAo+IHRoZSBkb3RzLiBXZWxsLCBpdCBpcyBvYnZpb3VzIG5vdy4KCkhhaCwg
SSBoYWQgZm9yZ290dGVuIGFsbCBhYm91dCB3ZWRnZV9tdXRleCA6LXAKCkhvcGVmdWxseSwgdGhp
cyBrZWVwcyBvdXIgcmVzZXQgaGFuZGxpbmcgcm9idXN0LiBGaXJzdCBJIGhhdmUgdG8gZml4IHRo
ZQptaXN0YWtlcyBJJ3ZlIHJlY2VudGx5IG1hZGUuLi4KCkkganVzdCBuZWVkIHRvIGZpbmQgYSBy
ZXZpZXdlciBmb3Igc3RydWN0X211dGV4IHJlbW92YWwgOikKLUNocmlzCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
