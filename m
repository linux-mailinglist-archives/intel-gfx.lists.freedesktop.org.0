Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7B714370C
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 16:02:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2471C89AA7;
	Thu, 13 Jun 2019 14:02:15 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DA6289AAE
 for <Intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 14:02:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16889483-1500050 for multiple; Thu, 13 Jun 2019 15:01:26 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190613133539.12620-1-tvrtko.ursulin@linux.intel.com>
 <20190613133539.12620-15-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20190613133539.12620-15-tvrtko.ursulin@linux.intel.com>
Message-ID: <156043448515.17012.17244766025112453860@skylake-alporthouse-com>
Date: Thu, 13 Jun 2019 15:01:25 +0100
Subject: Re: [Intel-gfx] [RFC 14/28] drm/i915: Move intel_engines_resume
 into common init
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xMyAxNDozNToyNSkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IFNpbmNlIHRoaXMgcGFy
dCBzdGlsbCBvcGVyYXRlcyBvbiBpOTE1IGFuZCBub3QgaW50ZWxfZ3QsIG1vdmUgaXQgdG8gdGhl
Cj4gY29tbW9uICh0b3AtbGV2ZWwpIGZ1bmN0aW9uLgoKV2hpbHN0IEkgZG8gYWdyZWUgd2l0aCB0
aGUgc3BsaXR0aW5nLCBJIHdpbGwgbm90ZSB0aGF0CmludGVsX2VuZ2luZXNfcmVzdW1lKCkgb3Bl
cmF0ZXMgd2l0aGluIGd0IDopIFlvdSBqdXN0IGhhdmVuJ3QgbW92ZWQgdGhlCmVuZ2luZSBsaXN0
IG92ZXIgdG8gaW50ZWxfZ3QgeWV0IDopCgo+IFNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGlu
IDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpJdCdzIGFuIGltcHJvdmVtZW50LCBqdXN0IGxl
YXZlcyBtZSB3YW50aW5nIG1vcmUKUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
