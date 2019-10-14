Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77540D637E
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 15:13:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6785B89C6A;
	Mon, 14 Oct 2019 13:13:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 390AC89C6A
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 13:13:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18832337-1500050 for multiple; Mon, 14 Oct 2019 14:13:25 +0100
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
 <157105647576.18859.18048479006793185492@skylake-alporthouse-com>
In-Reply-To: <157105647576.18859.18048479006793185492@skylake-alporthouse-com>
Message-ID: <157105880297.18859.7992408403808576383@skylake-alporthouse-com>
Date: Mon, 14 Oct 2019 14:13:23 +0100
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTAtMTQgMTM6MzQ6MzUpCj4gUXVvdGluZyBUdnJ0
a28gVXJzdWxpbiAoMjAxOS0xMC0xNCAxMzoyNTo1OCkKPiA+IAo+ID4gT24gMTQvMTAvMjAxOSAx
MzowNiwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gPiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgy
MDE5LTEwLTE0IDEzOjAwOjAxKQo+ID4gPj4KPiA+ID4+IE9uIDE0LzEwLzIwMTkgMTA6MDcsIENo
cmlzIFdpbHNvbiB3cm90ZToKPiA+ID4+PiArc3RhdGljIHZvaWQgY2FuY2VsX2FjdGl2ZShzdHJ1
Y3QgaTkxNV9yZXF1ZXN0ICpycSwKPiA+ID4+PiArICAgICAgICAgICAgICAgICAgICAgICBzdHJ1
Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4gPiA+Pj4gK3sKPiA+ID4+PiArICAgICBzdHJ1
Y3QgaW50ZWxfY29udGV4dCAqIGNvbnN0IGNlID0gcnEtPmh3X2NvbnRleHQ7Cj4gPiA+Pj4gKwo+
ID4gPj4+ICsgICAgIC8qCj4gPiA+Pj4gKyAgICAgICogVGhlIGV4ZWN1dGluZyBjb250ZXh0IGhh
cyBiZWVuIGNhbmNlbGxlZC4gRml4dXAgdGhlIGNvbnRleHQgc28gdGhhdAo+ID4gPj4+ICsgICAg
ICAqIGl0IHdpbGwgYmUgbWFya2VkIGFzIGluY29tcGxldGUgWy1FSU9dIHVwb24gcmVzdWJtaXNz
aW9uIGFuZCBub3QKPiA+IAo+ID4gKHJlYWQgYmVsb3cgZmlyc3QpCj4gPiAKPiA+IC4uLiBhbmQg
bm90IG1pc2xlYWRpbmdseSBzYXkgIkZpeHVwIHRoZSBjb250ZXh0IHNvIHRoYXQgaXQgd2lsbCBi
ZSAKPiA+IG1hcmtlZCBhcyBpbmNvbXBsZXRlIiBiZWNhdXNlIHRoZXJlIGlzIG5vdGhpbmcgaW4g
dGhpcyBmdW5jdGlvbiB3aGljaCAKPiA+IGRvZXMgdGhhdC4gSXQgbW9zdGx5IGhhcHBlbnMgYnkg
dGhlIHZpcnR1YWwgb2YgY29udGV4dCBhbHJlYWR5IGJlaW5nIAo+ID4gbWFya2VkIGFzIGJhbm5l
ZCBzb21ld2hlcmUgZWxzZS4gVGhpcyBjb21tZW50IHNob3VsZCBqdXN0IGV4cGxhaW4gdGhlIAo+
ID4gZGVjaXNpb24gdG8gcmV3aW5kIHRoZSByaW5nLT5oZWFkIGZvciBtb3JlIGRldGVybWluaXNt
LiBJdCBjYW4gc3RpbGwgCj4gPiBtZW50aW9uIGNhbmNlbGluZyBvZiB1c2VyIHBheWxvYWQgYW5k
IC1FSU8uIEp1c3QgbmVlZHMgdG8gYmUgY2xlYXIgb2YgCj4gPiB0aGUgc2luZ2xlIGV4dHJhIHRo
aW5nIGFjaGlldmVkIGhlcmUgYnkgdGhlIGhlYWQgcmV3aW5kIGFuZCBjb250ZXh0IGVkaXQuCj4g
Cj4gSSB0aG91Z2h0IEkgd2FzIGNsZWFyOiAidXBvbiByZXN1Ym1pc3Npb24iLiBTbyB1c2UgYSBt
b3JlIGFjdGl2ZSB2b2ljZSB0bwo+IHJlZHVjZSBhbWJpZ3VpdHksIGdvdGNoYS4KCiAgICAgICAg
LyoKICAgICAgICAgKiBUaGUgZXhlY3V0aW5nIGNvbnRleHQgaGFzIGJlZW4gY2FuY2VsbGVkLiBX
ZSB3YW50IHRvIHByZXZlbnQKICAgICAgICAgKiBmdXJ0aGVyIGV4ZWN1dGlvbiBhbG9uZyB0aGlz
IGNvbnRleHQgYW5kIHByb3BhZ2F0ZSB0aGUgZXJyb3Igb24KICAgICAgICAgKiB0byBhbnl0aGlu
ZyBkZXBlbmRpbmcgb24gaXRzIHJlc3VsdHMuCiAgICAgICAgICoKICAgICAgICAgKiBJbiBfX2k5
MTVfcmVxdWVzdF9zdWJtaXQoKSwgd2UgYXBwbHkgdGhlIC1FSU8gYW5kIHJlbW92ZSB0aGUKICAg
ICAgICAgKiByZXF1ZXN0cyBwYXlsb2FkIGZvciBhbnkgYmFubmVkIHJlcXVlc3RzLiBCdXQgZmly
c3QsIHdlIG11c3QKICAgICAgICAgKiByZXdpbmQgdGhlIGNvbnRleHQgYmFjayB0byB0aGUgc3Rh
cnQgb2YgdGhlIGluY29tcGxldGUgcmVxdWVzdCBzbwogICAgICAgICAqIHRoYXQgd2UgZG9uJ3Qg
anVtcCBiYWNrIGludG8gdGhlIG1pZGRsZSBvZiB0aGUgYmF0Y2guCiAgICAgICAgICoKICAgICAg
ICAgKiBXZSBwcmVzZXJ2ZSB0aGUgYnJlYWRjcnVtYnMgYW5kIHNlbWFwaG9yZXMgb2YgdGhlIGlu
Y29tcGxldGUKICAgICAgICAgKiByZXF1ZXN0cyBzbyB0aGF0IGludGVyLXRpbWVsaW5lIGRlcGVu
ZGVuY2llcyAoaS5lIG90aGVyIHRpbWVsaW5lcykKICAgICAgICAgKiByZW1haW4gY29ycmVjdGx5
IG9yZGVyZWQuCiAgICAgICAgICovCgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
