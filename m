Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 152AF345B9
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 13:42:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A4EE89192;
	Tue,  4 Jun 2019 11:42:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3356889192
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 11:42:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16787365-1500050 for multiple; Tue, 04 Jun 2019 12:42:42 +0100
MIME-Version: 1.0
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <155964822363.11771.5026851103106534085@jlahtine-desk.ger.corp.intel.com>
References: <20190603171130.3186-1-chris@chris-wilson.co.uk>
 <155964822363.11771.5026851103106534085@jlahtine-desk.ger.corp.intel.com>
Message-ID: <155964855797.4471.2906795031203284174@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 04 Jun 2019 12:42:38 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gtt: Replace struct_mutex
 serialisation for allocation
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
Cc: Matthew Auld <matthew.auld@intel.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKb29uYXMgTGFodGluZW4gKDIwMTktMDYtMDQgMTI6Mzc6MDMpCj4gUXVvdGluZyBD
aHJpcyBXaWxzb24gKDIwMTktMDYtMDMgMjA6MTE6MzApCj4gPiBJbnN0ZWFkIG9mIHJlbHlpbmcg
b24gdGhlIGNhbGxlciBob2xkaW5nIHN0cnVjdF9tdXRleCBhY3Jvc3MgdGhlCj4gPiBhbGxvY2F0
aW9uLCBwdXNoIHRoZSBhbGxvY2F0aW9uIHVuZGVyIGEgdHJlZSBvZiBzcGlubG9ja3Mgc3RvcmVk
IGluc2lkZQo+ID4gdGhlIHBhZ2UgdGFibGVzLiBOb3Qgb25seSBzaG91bGQgdGhpcyBhbGxvdyB1
cyB0byBhdm9pZCBzdHJ1Y3RfbXV0ZXgKPiA+IGhlcmUsIGJ1dCBpdCB3aWxsIGFsbG93IG11bHRp
cGxlIHVzZXJzIHRvIGxvY2sgaW5kZXBlbmRlbnQgcmFuZ2VzIGZvcgo+ID4gY29uY3VycmVudCBh
bGxvY2F0aW9ucywgYW5kIG9wZXJhdGUgaW5kZXBlbmRlbnRseS4gVGhpcyBpcyB2aXRhbCBmb3IK
PiA+IHB1c2hpbmcgdGhlIEdUVCBtYW5pcHVsYXRpb24gaW50byBhIGJhY2tncm91bmQgdGhyZWFk
IHdoZXJlIGRlcGVuZGVuY3kKPiA+IG9uIHN0cnVjdF9tdXRleCBpcyB2ZXJib3RlbiwgYW5kIGZv
ciBhbGxvd2luZyBvdGhlciBjYWxsZXJzIHRvIGF2b2lkCj4gPiBzdHJ1Y3RfbXV0ZXggYWx0b2dl
dGhlci4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Cj4gPiBDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29t
Pgo+ID4gQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAaW50ZWwuY29tPgo+IAo+IDxT
TklQPgo+IAo+ID4gQEAgLTE2ODQsOSArMTc1Miw3IEBAIHN0YXRpYyB2b2lkIGdlbjZfcHBndHRf
Y2xlYXJfcmFuZ2Uoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sCj4gPiAgCj4gPiAgICAg
ICAgICAgICAgICAgbnVtX2VudHJpZXMgLT0gY291bnQ7Cj4gPiAgCj4gPiAtICAgICAgICAgICAg
ICAgR0VNX0JVR19PTihjb3VudCA+IHB0LT51c2VkX3B0ZXMpOwo+IAo+IFRoaXMgc2VlbXMgdG8g
YmUgbG9zdCwgYW5kIGl0J3MgZGVmaW5pdGVseSBhIHZhbGlkIGNoZWNrLCBzdGlsbC4KPiAKPiBX
aXRoIHRoYXQgcmV0YWluZWQsIHRoaXMgaXM6Cj4gCj4gUmV2aWV3ZWQtYnk6IEpvb25hcyBMYWh0
aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KPiAKPiBPcGVyYXRpb25zICpf
cHBndHRfc2V0XyogKyBhdG9taWNfaW5jKHVzZWRfKikgYW5kICpfcHBndHRfc2V0Xyooc2NyYXRj
aCkgKwo+IGF0b21pY19kZWMoKSBhcHBlYXIgcmVwZXRpdGl2ZSwgYnV0IGFzIHRoZXkncmUgZm9y
IGVhY2ggZGlmZmVyZW50IGxldmVsLAo+IGEgaGVscGVyIG1pZ2h0IG9yIG1pZ2h0IG5vdCBtYWtl
IGl0IGNsZWFuZXIuCgpNaWthIGlzIHdvcmtpbmcgb24gcmVmYWN0b3JpbmcgdGhlIGxheWVycywg
c28gSSdtIGhvcGluZyB0aGF0IG1vc3RseQpmYWxscyBvdXQgaW4gdGhlIHdhc2guIE9yIGF0IGxl
YXN0IGJlY29tZXMgZWFzaWVyIHRvIGRvIHNvLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
