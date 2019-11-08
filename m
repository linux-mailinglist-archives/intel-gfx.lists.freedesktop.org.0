Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13228F44D2
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 11:42:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F3476F92D;
	Fri,  8 Nov 2019 10:42:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB46F6F92D
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 10:42:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19126302-1500050 for multiple; Fri, 08 Nov 2019 10:42:34 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191106154810.5843-1-chris@chris-wilson.co.uk>
 <15789d91-2a7d-373e-fefc-a0e5e09e1857@linux.intel.com>
In-Reply-To: <15789d91-2a7d-373e-fefc-a0e5e09e1857@linux.intel.com>
Message-ID: <157320975278.9461.12594003157929445086@skylake-alporthouse-com>
Date: Fri, 08 Nov 2019 10:42:32 +0000
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Handle
 i915_active_fence_set() with the same fence
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMS0wOCAxMDozNzozNykKPiAKPiBPbiAwNi8x
MS8yMDE5IDE1OjQ4LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBJZiB0aGUgY2FsbGVyIHdhbnRz
IHRvIG92ZXJ3cml0ZSB0aGUgY3VycmVudGx5IHRyYWNrZWQgZmVuY2UsIHdpdGgKPiA+IGl0c2Vs
ZiwgYXMgZmFyIGFzIHRoZSB0cmFja2luZyBpcyBjb25jZXJuZWQgaXQgaXMgYSBuby1vcCwgc28g
c2ltcGx5Cj4gPiBhbGxvdyBpdC4KPiAKPiBUaGlzIGlzIG5lZWRlZCBmb3Igc29tZSBvZiB0aGUg
Zm9sbG93aW5nIHBhdGNoZXMgaW4gdGhpcyBzZXJpZXM/CgpUaGUgaW1wbGVtZW50YXRpb24gaXMg
cmVsYXhlZCBpbiBwYXRjaCAzLCB3aGljaCBtZWFucyB3ZSBhbGxvdyB0aGUgdXNlcgp0byB1cGRh
dGUgdGhlIHNhbWUgaTkxNV9yZXF1ZXN0LmZlbmNlIG9uIHRoZSBzYW1lIHRpbWVsaW5lIG11bHRp
cGxlIHRpbWVzLgpXZSBhbHJlYWR5IGFsbG93IHRoZW0gdG8gdXNlIHRoZSBzYW1lIGZlbmNlIG11
bHRpcGxlIHRpbWVzLCBzeW1tZXRyeSBpcwpnb29kPy4uLgotQ2hyaXMKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
