Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A0454D3CF4
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 12:03:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D43276EC11;
	Fri, 11 Oct 2019 10:03:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EED66EC09
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 10:03:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18801464-1500050 for multiple; Fri, 11 Oct 2019 11:03:21 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191010071434.31195-1-chris@chris-wilson.co.uk>
 <20191010071434.31195-7-chris@chris-wilson.co.uk>
 <e9b171f6-be40-fb86-99e0-3bfe5f69404e@linux.intel.com>
In-Reply-To: <e9b171f6-be40-fb86-99e0-3bfe5f69404e@linux.intel.com>
Message-ID: <157078819822.31572.2072181009668279197@skylake-alporthouse-com>
Date: Fri, 11 Oct 2019 11:03:18 +0100
Subject: Re: [Intel-gfx] [PATCH 07/10] drm/i915/execlists: Cancel banned
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMC0xMSAxMDo0NzoyNikKPiAKPiBPbiAxMC8x
MC8yMDE5IDA4OjE0LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBPbiBjb21wbGV0aW9uIG9mIGEg
YmFubmVkIGNvbnRleHQsIHNjcnViIHRoZSBjb250ZXh0IGltYWdlIHNvIHRoYXQgd2UgZG8KPiAK
PiBzL2NvbXBsZXRpb24vc2NoZWR1bGUgb3V0LyBsaWtlIGluIHRoZSBzdWJqZWN0IGxpbmU/IE90
aGVyd2lzZSBJIAo+IHN0cnVnZ2xlIHRvIHVuZGVyc3RhbmQgaG93IGJhbm5lZCBjb250ZXh0IGlz
IGNvbXBsZXRpbmcuIFByZXN1bWFibHkgaXQgCj4gd2FzIGJhbm5lZCBiZWNhdXNlIGl0IGtlZXBz
IGhhbmdpbmcuCgpPaywgSSBoYWQgdGhlIENTIGNvbXBsZXRpb24gZXZlbnQgaW4gbWluZCwgYnV0
IGk5MTVfcmVxdWVzdF9jb21wbGV0ZWQoKQpkb2VzIG11ZGRsZSB0aGUgd2F0ZXJzLgogCj4gPiBu
b3QgcmVwbGF5IHRoZSBhY3RpdmUgcGF5bG9hZC4gVGhlIGludGVudCBpcyB0aGF0IHdlIHNraXAg
YmFubmVkCj4gPiBwYXlsb2FkcyBvbiByZXF1ZXN0IHN1Ym1pc3Npb24gc28gdGhhdCB0aGUgdGlt
ZWxpbmUgYWR2YW5jZW1lbnQKPiA+IGNvbnRpbnVlcyBvbiBpbiB0aGUgYmFja2dyb3VuZC4gSG93
ZXZlciwgaWYgd2UgYXJlIHJldHVybmluZyB0byBhCj4gPiBwcmVlbXB0ZWQgcmVxdWVzdCwgaTkx
NV9yZXF1ZXN0X3NraXAoKSBpcyBpbmVmZmVjdGl2ZSBhbmQgaW5zdGVhZCB3ZQo+ID4gbmVlZCB0
byBwYXRjaCB1cCB0aGUgY29udGV4dCBpbWFnZSBzbyB0aGF0IGl0IGNvbnRpbnVlcyBmcm9tIHRo
ZSBzdGFydAo+ID4gb2YgdGhlIG5leHQgcmVxdWVzdC4KPiAKPiBCdXQgaWYgdGhlIGNvbnRleHQg
aXMgYmFubmVkIHdoeSBkbyB3ZSB3YW50IHRvIGNvbnRpbnVlIGZyb20gdGhlIHN0YXJ0IAo+IG9m
IHRoZSBuZXh0IHJlcXVlc3Q/IERvbid0IHdlIHdhbnQgdG8gemFwIGFsbCBzdWJtaXR0ZWQgc28g
ZmFyPwoKV2Ugc2NydWIgdGhlIHBheWxvYWQsIGJ1dCB0aGUgcmVxdWVzdCBpdHNlbGYgaXMgc3Rp
bGwgYSB2aXRhbCBwYXJ0IG9mCnRoZSB3ZWIgb2YgZGVwZW5kZW5jaWVzLiBUaGF0IGlzIHdlIHN0
aWxsIGV4ZWN1dGUgdGhlIHNlbWFwaG9yZXMgYW5kCmJyZWFkY3J1bWJzIG9mIHRoZSBjYW5jZWxs
ZWQgcmVxdWVzdHMgdG8gbWFpbnRhaW4gZ2xvYmFsIG9yZGVyaW5nLgotQ2hyaXMKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
