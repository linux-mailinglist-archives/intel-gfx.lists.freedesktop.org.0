Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08FEADA98A
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 12:00:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6682889C2A;
	Thu, 17 Oct 2019 10:00:35 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E50EF89C2A
 for <Intel-gfx@lists.freedesktop.org>; Thu, 17 Oct 2019 10:00:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18867149-1500050 for multiple; Thu, 17 Oct 2019 11:00:17 +0100
MIME-Version: 1.0
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191017094500.21831-1-tvrtko.ursulin@linux.intel.com>
References: <20191017094500.21831-1-tvrtko.ursulin@linux.intel.com>
Message-ID: <157130641585.9853.17881356443383480033@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 17 Oct 2019 11:00:15 +0100
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Make for_each_engine_masked
 work on intel_gt
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMC0xNyAxMDo0NDo1OSkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IE1lZGl1bSB0ZXJtIGdv
YWwgaXMgdG8gZWxpbWluYXRlIHRoZSBpOTE1LT5lbmdpbmVbXSBhcnJheSBhbmQgdG8gZ2V0IHRo
ZXJlCj4gd2UgaGF2ZSByZWNlbnRseSBpbnRyb2R1Y2VkIGVxdWl2YWxlbnQgYXJyYXkgaW4gaW50
ZWxfZ3QuIE5vdyB3ZSBuZWVkIHRvCj4gbWlncmF0ZSB0aGUgY29kZSBmdXJ0aGVyIHRvd2FyZHMg
dGhpcyBzdGF0ZS4KPiAKPiBUaGlzIG5leHQgc3RlcCBpcyB0byBlbGltaW5hdGUgdXNhZ2Ugb2Yg
aTkxNS0+ZW5naW5lc1tdIGZyb20gdGhlCj4gZm9yX2VhY2hfZW5naW5lX21hc2tlZCBpdGVyYXRv
ci4KPiAKPiBGb3IgdGhpcyB0byB3b3JrIHdlIGFsc28gbmVlZCB0byB1c2UgZW5naW5lLT5pZCBh
cyBpbmRleCB3aGVuIHBvcHVsYXRpbmcKPiB0aGUgZ3QtPmVuZ2luZVtdIGFycmF5IGFuZCBhZGp1
c3QgdGhlIGRlZmF1bHQgZW5naW5lIHNldCBpbmRleGluZyB0byB1c2UKPiBlbmdpbmUtPmxlZ2Fj
eV9pZHggaW5zdGVhZCBvZiBhc3N1bWluZyBndC0+ZW5naW5lc1tdIGluZGV4aW5nLgo+IAo+IHYy
Ogo+ICAqIFBvcHVsYXRlIGd0LT5lbmdpbmVbXSBlYXJsaWVyLgo+IAo+IFNpZ25lZC1vZmYtYnk6
IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gQ2M6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgoKSSBjaGVja2VkIGFsbCB0aGUgbGVnYWN5
X2lkeCB0byBtYWtlIHN1cmUgdGhlcmUgd2Fzbid0IGFueXRoaW5nIG5hc3R5CnRoZXJlLCBhbmQg
aXQgYWxsIGxvb2tlZCBva2F5LgoKU28gb25jZSB3ZSBoYXZlIHRoZSBlYXJseSBmb2libGUgc29y
dGVkIG91dCwKUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
