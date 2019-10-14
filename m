Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61114D629F
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 14:34:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACB0B6E22A;
	Mon, 14 Oct 2019 12:34:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE4816E22A
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 12:34:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18831844-1500050 for multiple; Mon, 14 Oct 2019 13:34:37 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191014090757.32111-1-chris@chris-wilson.co.uk>
 <20191014090757.32111-11-chris@chris-wilson.co.uk>
 <8b030734-330f-49e1-cbd0-d7d44c965983@linux.intel.com>
 <157105478333.18859.11636359770694964440@skylake-alporthouse-com>
 <9d2f73a9-745d-7c59-770e-c94fc40e7a1c@linux.intel.com>
In-Reply-To: <9d2f73a9-745d-7c59-770e-c94fc40e7a1c@linux.intel.com>
Message-ID: <157105647576.18859.18048479006793185492@skylake-alporthouse-com>
Date: Mon, 14 Oct 2019 13:34:35 +0100
Subject: Re: [Intel-gfx] [PATCH 11/15] drm/i915/execlists: Cancel banned
 contexts on schedule-out
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMC0xNCAxMzoyNTo1OCkKPiAKPiBPbiAxNC8x
MC8yMDE5IDEzOjA2LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTEwLTE0IDEzOjAwOjAxKQo+ID4+Cj4gPj4gT24gMTQvMTAvMjAxOSAxMDowNywg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+ID4+PiArc3RhdGljIHZvaWQgY2FuY2VsX2FjdGl2ZShzdHJ1
Y3QgaTkxNV9yZXF1ZXN0ICpycSwKPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ID4+PiArewo+ID4+PiArICAgICBzdHJ1Y3QgaW50
ZWxfY29udGV4dCAqIGNvbnN0IGNlID0gcnEtPmh3X2NvbnRleHQ7Cj4gPj4+ICsKPiA+Pj4gKyAg
ICAgLyoKPiA+Pj4gKyAgICAgICogVGhlIGV4ZWN1dGluZyBjb250ZXh0IGhhcyBiZWVuIGNhbmNl
bGxlZC4gRml4dXAgdGhlIGNvbnRleHQgc28gdGhhdAo+ID4+PiArICAgICAgKiBpdCB3aWxsIGJl
IG1hcmtlZCBhcyBpbmNvbXBsZXRlIFstRUlPXSB1cG9uIHJlc3VibWlzc2lvbiBhbmQgbm90Cj4g
Cj4gKHJlYWQgYmVsb3cgZmlyc3QpCj4gCj4gLi4uIGFuZCBub3QgbWlzbGVhZGluZ2x5IHNheSAi
Rml4dXAgdGhlIGNvbnRleHQgc28gdGhhdCBpdCB3aWxsIGJlIAo+IG1hcmtlZCBhcyBpbmNvbXBs
ZXRlIiBiZWNhdXNlIHRoZXJlIGlzIG5vdGhpbmcgaW4gdGhpcyBmdW5jdGlvbiB3aGljaCAKPiBk
b2VzIHRoYXQuIEl0IG1vc3RseSBoYXBwZW5zIGJ5IHRoZSB2aXJ0dWFsIG9mIGNvbnRleHQgYWxy
ZWFkeSBiZWluZyAKPiBtYXJrZWQgYXMgYmFubmVkIHNvbWV3aGVyZSBlbHNlLiBUaGlzIGNvbW1l
bnQgc2hvdWxkIGp1c3QgZXhwbGFpbiB0aGUgCj4gZGVjaXNpb24gdG8gcmV3aW5kIHRoZSByaW5n
LT5oZWFkIGZvciBtb3JlIGRldGVybWluaXNtLiBJdCBjYW4gc3RpbGwgCj4gbWVudGlvbiBjYW5j
ZWxpbmcgb2YgdXNlciBwYXlsb2FkIGFuZCAtRUlPLiBKdXN0IG5lZWRzIHRvIGJlIGNsZWFyIG9m
IAo+IHRoZSBzaW5nbGUgZXh0cmEgdGhpbmcgYWNoaWV2ZWQgaGVyZSBieSB0aGUgaGVhZCByZXdp
bmQgYW5kIGNvbnRleHQgZWRpdC4KCkkgdGhvdWdodCBJIHdhcyBjbGVhcjogInVwb24gcmVzdWJt
aXNzaW9uIi4gU28gdXNlIGEgbW9yZSBhY3RpdmUgdm9pY2UgdG8KcmVkdWNlIGFtYmlndWl0eSwg
Z290Y2hhLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
