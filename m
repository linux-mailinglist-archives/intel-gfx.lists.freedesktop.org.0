Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E7A28A889
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 22:42:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6ADFB6E5E3;
	Mon, 12 Aug 2019 20:42:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69E006E5DE
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 20:42:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17974506-1500050 for multiple; Mon, 12 Aug 2019 21:42:12 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <fea59a24-656f-4bd3-77d4-8e00f17b84af@intel.com>
References: <20190812091045.29587-1-chris@chris-wilson.co.uk>
 <20190812091045.29587-6-chris@chris-wilson.co.uk>
 <156560667015.2301.4966068073571425460@skylake-alporthouse-com>
 <fea59a24-656f-4bd3-77d4-8e00f17b84af@intel.com>
Message-ID: <156564253025.2301.2227120141494534706@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 12 Aug 2019 21:42:10 +0100
Subject: Re: [Intel-gfx] [PATCH 6/8] drm/i915/guc: Keep the engine awake
 until the tasklet is idle
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA4LTEyIDIxOjM4OjM5KQo+IAo+
IAo+IE9uIDgvMTIvMTkgMzo0NCBBTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gUXVvdGluZyBD
aHJpcyBXaWxzb24gKDIwMTktMDgtMTIgMTA6MTA6NDMpCj4gPj4gRm9yIHRoZSBndWMsIHdlIG5l
ZWQgdG8ga2VlcCB0aGUgZW5naW5lIGF3YWtlIChhbmQgbm90IHBhcmtlZCkgYW5kIG5vdAo+ID4+
IGp1c3QgdGhlIGd0LiBJZiB3ZSBsZXQgdGhlIGVuZ2luZSBwYXJrLCB3ZSBkaXNhYmxlIHRoZSBp
cnEgYW5kIHN0b3AKPiA+PiBwcm9jZXNzaW5nIHRoZSB0YXNrbGV0LCBsZWF2aW5nIHN0YXRlIG91
dHN0YW5kaW5nIGluc2lkZSB0aGUgdGFza2xldC4KPiA+Pgo+ID4+IFRoZSBkb3duc2lkZSBpcywg
b2YgY291cnNlLCB3ZSBub3cgaGF2ZSB0byB3YWl0IHVudGlsIHRoZSB0YXNrbGV0IGlzIHJ1bgo+
ID4+IGJlZm9yZSB3ZSBjb25zaWRlciB0aGUgZW5naW5lIGlkbGUuCj4gPiAKPiA+IEZ3aXcsIGJl
Y2F1c2Ugb2YgdGhpcyBJIHRoaW5rIGl0IG1heSBiZSBwcmVmZXJhYmxlIHRvIGtlZXAgdG8gdXNp
bmcgR1QKPiA+IHBtIGZvciB0aGUgdGFza2xldDsgYW5kIGFwcGx5IERhbmllbGUncyBwYXRjaCB0
byBrZWVwCj4gPiBORUVEU19CUkVBRENSVU1CX1RBU0tMRVQgc2V0ICh3aGljaCBpcyB0aGUgcmln
aHQgdGhpbmcgdG8gZG8gYW55d2F5IG5vdwo+ID4gdGhhdCB3ZSBzdG9wIHN3aXRjaGluZyBiZXR3
ZWVuIHN1Ym1pc3Npb24gbW9kZXMpLgo+ID4gLUNocmlzCj4gPiAKPiAKPiBHaXZlbiB0aGF0IHRo
ZSBHdUMgc3VibWlzc2lvbiBjb2RlIGlzIGFib3V0IHRvIHVuZGVyZ28gYSByZXdvcmsgSSAKPiBi
ZWxpZXZlIGl0J2QgYmUgYmV0dGVyIHRvIGtlZXAgdGhlIGZpeCBjb250YWluZWQgdG8gdGhlIEd1
QyBzaWRlIG9mIAo+IHRoaW5ncyBmb3Igbm93IGFuZCBhdm9pZCBpbXBhY3RpbmcgdGhlIG1vcmUg
Z2VuZXJhbCByZXF1ZXN0IHBhdGhzIChpLmUuIAo+IHBhdGNoIDQgaW4gdGhpcyBzZXJpZXMsIHVu
bGVzcyB5b3Ugc3RpbGwgd2FudCB0aGF0IGZvciBvdGhlciByZWFzb25zKS4gCj4gSSdsbCBjbGVh
biB1cCBhbmQgc2VuZCB0aGUgb3RoZXIgcGF0Y2guCgpPaCwgd2UgbmVlZCB0aGF0IGFueXdheSA6
KQpodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTEzNzgKCkFu
ZCBpdCBhY3R1YWxseSBjbGFyaWZpZWQgc29tZSBvZiB0aGUgaGVhcnRiZWF0IGNvZGUsIHNvIGl0
J3MgYW4KZXZlbnR1YWwgd2luLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
