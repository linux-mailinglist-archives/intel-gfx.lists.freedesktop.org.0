Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D01782DEE
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 10:40:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9C226E330;
	Tue,  6 Aug 2019 08:40:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 885056E330
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2019 08:40:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17901101-1500050 for multiple; Tue, 06 Aug 2019 09:40:31 +0100
MIME-Version: 1.0
To: Andi Shyti <andi.shyti@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190806083549.GB30053@intel.intel>
References: <20190805221956.17277-1-chris@chris-wilson.co.uk>
 <20190806083549.GB30053@intel.intel>
Message-ID: <156508082973.30510.3059488482248558033@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 06 Aug 2019 09:40:29 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Cancel persistent contexts if
 !hangcheck
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBBbmRpIFNoeXRpICgyMDE5LTA4LTA2IDA5OjM1OjQ5KQo+IEhpIENocmlzLAo+IAo+
ID4gK3N0YXRpYyB2b2lkIGtpbGxfY29udGV4dChzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4
KQo+ID4gK3sKPiA+ICsgICAgIHN0cnVjdCBpOTE1X2dlbV9lbmdpbmVzX2l0ZXIgaXQ7Cj4gPiAr
ICAgICBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7Cj4gPiArICAgICBpbnRlbF9lbmdp
bmVfbWFza190IHRtcCwgYWN0aXZlOwo+ID4gKyAgICAgc3RydWN0IGludGVsX2NvbnRleHQgKmNl
Owo+ID4gKwo+ID4gKyAgICAgaWYgKGk5MTVfZ2VtX2NvbnRleHRfaXNfYmFubmVkKGN0eCkpCj4g
PiArICAgICAgICAgICAgIHJldHVybjsKPiAKPiBqdXN0IGEgcXVlc3Rpb24sIGlmIGEgY29udGV4
dCBpcyAiYmFubmVkIiwgZG9uJ3Qgd2Ugd2FudCB0byBjaGVjawo+IG9uIHRoZSByZXF1ZXN0cyBh
bnl3YXk/CgpJZiB0aGUgY29udGV4dCBpcyBhbHJlYWR5IGJhbm5lZCwgaXQgbWVhbnMgdGhlIHJl
cXVlc3Qgd2lsbCBiZSBiYW5uZWQgb24Kc3VibWlzc2lvbiBhbmQgdGhlIHByZXZpb3VzbHkgYWN0
aXZlIHJlcXVlc3Qgd2FzIGZvdW5kIGd1aWx0eSBhbmQgdGhyb3duCmF3YXkuCgo+ID4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2hlYXJ0YmVhdC5jCj4gCj4gaGVh
cnRiZWF0PyBJIGxpa2UgaXQgOikKPiAKPiBSZXZpZXdlZC1ieTogQW5kaSBTaHl0aSA8YW5kaS5z
aHl0aUBpbnRlbC5jb20+CgpPb29wcywgc2hvdWxkIGhhdmUgZmxhZ2dlZCB0aGlzIGFzIGEgdmVy
eSBtdWNoIFJGQy4gSXQncyBzdGlsbAppbmNvbXBsZXRlIChuYW1lbHkgZXZpY3RpbmcgYWN0aXZl
IHJlcXVlc3RzIG5lZWRzIHNvbWUgYmFja2VuZCBzdXBwb3J0KS4KQW5kIEkndmUgeWV0IHRvIHRo
cm93IGl0IGFnYWluc3QgdGhlIHdhbGwgdG8gc2VlIGlmIGl0IHN0aWNrcy4KLUNocmlzCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
