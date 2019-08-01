Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 913197DEB7
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 17:23:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05F2B6E6DC;
	Thu,  1 Aug 2019 15:23:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA79F6E6DC
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 15:23:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17791872-1500050 for multiple; Thu, 01 Aug 2019 16:23:44 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190801121533.14057-1-chris@chris-wilson.co.uk>
 <20190801122002.24248-1-chris@chris-wilson.co.uk>
 <8ed53b04-9dae-3430-9b4f-7ce233101218@linux.intel.com>
 <156467034056.6045.9270718607329366656@skylake-alporthouse-com>
 <01573c3d-a73e-8370-20dd-8eebd9435387@linux.intel.com>
In-Reply-To: <01573c3d-a73e-8370-20dd-8eebd9435387@linux.intel.com>
Message-ID: <156467302209.6045.16092181780490369686@skylake-alporthouse-com>
Date: Thu, 01 Aug 2019 16:23:42 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pmu: Atomically acquire the gt_pm
 wakeref
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wOC0wMSAxNTo1NToyOSkKPiAKPiBPbiAwMS8w
OC8yMDE5IDE1OjM5LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA4LTAxIDE1OjIxOjE3KQo+ID4+IEkgZ3Vlc3MgSSdsbCBiZSByZWJhc2luZyBt
aW5lLCBhdCBzb21lIHBvaW50LiA6KQo+ID4gCj4gPiBJIGFudGljaXBhdGVkIHlvdSBtZXJnaW5n
IGl0IGF0IHNvbWUgcG9pbnQuCj4gCj4gVGhpcyBwYXRjaCB0byBteSBzZXJpZXMgb3Igd2hhdD8K
CllvdXIgc2VyaWVzIHRvIHVwZGF0ZSB0aGUgbG9jYWxzLCB0aG9zZSBmaXJzdCBwYXRjaGVzIHNo
b3VsZCBiZQpub24tY29udHJvdmVyc2lhbC4gVGhlIGZpeHVwIGlzIHRyaXZpYWwgZWl0aGVyIHdh
eS4KIAo+ID4gSGFkIGEgdGhvdWdodCwgYW5kIHdlIGRvbid0IG5lZWQgZ3RfcG0gZm9yIHRoZSBl
bmdpbmUgc2FtcGxpbmcsIGJ1dAo+ID4gcmF0aGVyIGludGVsX2VuZ2luZV9wbV9nZXRfaWZfYXdh
a2UuCj4gCj4gSSB0aG91Z2h0IGFib3V0IGl0LCBidXQgc2luY2Ugd2UgaXRlcmF0ZSBhbGwgZW5n
aW5lcyBkaWQgbm90IHNlZSBhIHJlYWwgCj4gYmVuZWZpdC4gV291bGRuJ3QgaGFybSBlaXRoZXIs
IG9ubHkgc29tZSBtb3JlIENQVSBjeWNsZXMgaW4gdGhlIGxvb3AsIHNvIAo+IHVwIHRvIHlvdS4K
CkJ1dCBhbHNvIGxpa2VseSB0byBzYXZlIHNvbWUgd29yayBvbiBsYXJnZXIgZGV2aWNlcyBpZiB0
aGV5IGFyZSBtb3N0bHkKaWRsZSwgd2hpY2ggSSBob3BlIHRoZXkgdHlwaWNhbGx5IGFyZS4KLUNo
cmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
