Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65FEA652A6
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 09:50:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCF846E152;
	Thu, 11 Jul 2019 07:50:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66CE96E152
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 07:50:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17215694-1500050 for multiple; Thu, 11 Jul 2019 08:50:46 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <633170de-39fa-f2d8-c1b7-3aea7aeb902b@linux.intel.com>
References: <20190711065215.4004-1-chris@chris-wilson.co.uk>
 <20190711065215.4004-3-chris@chris-wilson.co.uk>
 <633170de-39fa-f2d8-c1b7-3aea7aeb902b@linux.intel.com>
Message-ID: <156283144460.12757.4034776600904472050@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 11 Jul 2019 08:50:44 +0100
Subject: Re: [Intel-gfx] [PATCH 03/18] drm/i915: Lock the engine while
 dumping the active request
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
Cc: Alex Shumsky <alexthreed@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0xMSAwODoyMDo1OSkKPiAKPiBPbiAxMS8w
Ny8yMDE5IDA3OjUyLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ3B1X2Vycm9yLmMKPiA+IGluZGV4IDU0ODljZDg3OTMxNS4uZjI5N2E0M2RmMWU5IDEwMDY0
NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYwo+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYwo+ID4gQEAgLTE0NjMsNiAr
MTQ2NCw3IEBAIHN0YXRpYyB2b2lkIGdlbV9yZWNvcmRfcmluZ3Moc3RydWN0IGk5MTVfZ3B1X3N0
YXRlICplcnJvcikKPiA+ICAgCj4gCj4gQXJlbid0IHRoZXJlIGFsbG9jYXRpb25zIGluIHRoaXMg
YmxvY2s/CgpUaGV5IGFyZSBhbHJlYWR5IGF0b21pYyBkdWUgdG8gdGhpcyBiZWluZyBjYWxsZWQg
dW5kZXIgc3RvcF9tYWNoaW5lKCkuCgpOZXh0IHBhdGNoIGdpdmVzIHVwIG9uIHN0b3BfbWFjaGlu
ZSgpLCBleGNsdWRlcyB0aGF0IHdoaWNoIGlzIG5vdCB1bmRlcgpzcGlubG9jaywgYW5kIHJlbGll
cyBvbiB0aGUgZW5naW5lLT5hY3RpdmUubG9jayBmb3IgY2FwdHVyaW5nIHRoZQpyZXF1ZXN0IGFu
ZCBmcmllbmRzLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
