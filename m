Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C7D1465FC
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 19:43:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66AF789A34;
	Fri, 14 Jun 2019 17:43:50 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE7D089A34
 for <Intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 17:43:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16906006-1500050 for multiple; Fri, 14 Jun 2019 18:43:31 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Michal Wajdeczko <michal.wajdeczko@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190614151731.17608-1-tvrtko.ursulin@linux.intel.com>
 <20190614151731.17608-2-tvrtko.ursulin@linux.intel.com>
 <op.z3dw1ssrxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <op.z3dw1ssrxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Message-ID: <156053420952.7796.6822030827876959018@skylake-alporthouse-com>
Date: Fri, 14 Jun 2019 18:43:29 +0100
Subject: Re: [Intel-gfx] [RFC 01/31] drm/i915: Convert intel_vgt_(de)balloon
 to uncore
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA2LTE0IDE4OjE4OjU0KQo+IE9uIEZyaSwg
MTQgSnVuIDIwMTkgMTc6MTc6MDEgKzAyMDAsIFR2cnRrbyBVcnN1bGluICAKPiA8dHZydGtvLnVy
c3VsaW5AbGludXguaW50ZWwuY29tPiB3cm90ZToKPiAKPiA+IEZyb206IFR2cnRrbyBVcnN1bGlu
IDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gPgo+ID4gTW9yZSByZW1vdmFsIG9mIGltcGxp
Y2l0IGRldl9wcml2IGZyb20gdXNpbmcgb2xkIG1taW8gYWNjZXNzb3JzLgo+ID4KPiA+IEZ1cnRo
ZXJtb3JlIHRoZXNlIGNhbGxzIHJlYWxseSBvcGVyYXRlIG9uIGdndHQgc28gaXQgbG9naWNhbGx5
IG1ha2VzICAKPiA+IHNlbnNlCj4gPiBpZiB0aGV5IHRha2UgaXQgYXMgcGFyYW1ldGVyLgo+IAo+
IEhtbSwgSSdtIG5vdCBzdXJlIHRoYXQgd2UgZ29pbmcgaW4gcmlnaHQgZGlyZWN0aW9uIGhlcmUs
IGFzIHRoZXNlCj4gZnVuY3Rpb25zIG1vc3RseSBvcGVyYXRlIG9uIGJsX2luZm8gdGhhdCB0b2Rh
eSBpcyBzZXBhcmF0ZSB0byBnZ3R0LgoKVGhhdCB3YXMgbXkgZmlyc3QgdGhvdWdodCB0b28sIGV4
Y2VwdCB0aGV5IGFyZSBvcGVyYXRpbmcgaW5zaWRlIG9mIGdndHQKaW5pdC9maW5pLgoKPiBNYXli
ZSBiZXR0ZXIgb3B0aW9uIHdvdWxkIGJlIHRvIG1vdmUgcHVyZSBnZ3R0IHJlbGF0ZWQgZnVuY3Rp
b25zCj4gdmd0X2JhbGxvb25fc3BhY2Uvdmd0X2RlYmFsbG9vbl9zcGFjZSB0byBpOTE1X2dlbV9n
Z3R0LmN8aCAoYWZ0ZXIKPiByZW5hbWUpIGFuZCBhbGxvdyB2Z3B1IGZ1bmN0aW9ucyB0byBrZWVw
IGk5MTUgYXMgcGFyYW1ldGVyID8KClByZXN1bWFibHksIHZncHUgd291bGQgbWlncmF0ZSB0byB0
YWtpbmcgaXRzIG93biBvYmplY3QgYXMgd2VsbC4gU3RpbGwKdW5kZWNpZGVkIGhvdyBiZXN0IHRv
IGhhbmRsZSBnZ3R0IGluaXQgcGx1Z2lucy4gTXkgaWRlYWwgd291bGQgYmUgdGhhdAp2Z3B1IGlu
aXQgd2FzIGR5bmFtaWMgYW5kIGJlIHR1bmVkIHRvIHdvcmsgd2l0aCBhbiBleGlzdGluZyBnZ3R0
LCBhbmQKbmV2ZXIgcmVseSBvbiBzdGF0aWMgcGFydGl0aW9uaW5nLgotQ2hyaXMKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
