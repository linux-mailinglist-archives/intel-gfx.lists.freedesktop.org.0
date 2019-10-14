Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47AFAD5ED6
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 11:29:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5E646E203;
	Mon, 14 Oct 2019 09:28:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 759336E203
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 09:28:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18829004-1500050 for multiple; Mon, 14 Oct 2019 10:28:56 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191013193115.16844-1-chris@chris-wilson.co.uk>
 <15bcf769-999a-20bc-6884-af74c731b6b7@linux.intel.com>
 <157104527935.18859.15288695469053949608@skylake-alporthouse-com>
In-Reply-To: <157104527935.18859.15288695469053949608@skylake-alporthouse-com>
Message-ID: <157104533390.18859.11553622986226230475@skylake-alporthouse-com>
Date: Mon, 14 Oct 2019 10:28:53 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Assert tasklet is
 locked for process_csb()
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTAtMTQgMTA6Mjc6NTkpCj4gUXVvdGluZyBUdnJ0
a28gVXJzdWxpbiAoMjAxOS0xMC0xNCAxMDoyNTowNCkKPiA+IAo+ID4gT24gMTMvMTAvMjAxOSAy
MDozMSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gPiBXZSByZWx5IG9uIG9ubHkgdGhlIHRhc2ts
ZXQgYmVpbmcgYWxsb3dlZCB0byBjYWxsIGludG8gcHJvY2Vzc19jc2IoKSwgc28KPiA+ID4gYXNz
ZXJ0IHRoYXQgaXMgbG9ja2VkIHdoZW4gd2UgZG8uIEFzIHRoZSB0YXNrbGV0IHVzZXMgYSBzaW1w
bGUgYml0bG9jaywKPiA+ID4gdGhlcmUgaXMgbm8gc3Ryb25nIGxvY2tkZXAgY2hlY2tpbmcgc28g
d2UgbXVzdCBtYWtlIGRvIHdpdGggYSBwbGFpbgo+ID4gPiBhc3NlcnRpb24gdGhhdCB0aGUgdGFz
a2xldCBpcyBydW5uaW5nIGFuZCBhc3N1bWUgdGhhdCB3ZSBhcmUgdGhlCj4gPiA+IHRhc2tsZXQh
Cj4gPiA+IAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KPiA+ID4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRl
bC5jb20+Cj4gPiA+IC0tLQo+ID4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xy
Yy5jIHwgMSArCj4gPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uaCAgICAgfCA1
ICsrKysrCj4gPiA+ICAgMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKPiA+ID4gCj4g
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gPiA+IGluZGV4IDhiZTllNjlkNTcx
OC4uYWIyMDQzMzE4MmQxIDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9scmMuYwo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9s
cmMuYwo+ID4gPiBAQCAtMTk4NCw2ICsxOTg0LDcgQEAgc3RhdGljIHZvaWQgcHJvY2Vzc19jc2Io
c3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ID4gPiAgICAgICB1OCBoZWFkLCB0YWls
Owo+ID4gPiAgIAo+ID4gPiAgICAgICBHRU1fQlVHX09OKFVTRVNfR1VDX1NVQk1JU1NJT04oZW5n
aW5lLT5pOTE1KSk7Cj4gPiA+ICsgICAgIEdFTV9CVUdfT04oIXRhc2tsZXRfaXNfbG9ja2VkKCZl
eGVjbGlzdHMtPnRhc2tsZXQpKTsKPiA+IAo+ID4gSSBzZWUgc29tZSByZXNldCBwYXRocyBjYWxs
aW5nIHByb2Nlc3NfY3NiIHdoaWNoIGxvb2tzIGxpa2UgYSBwcm9ibGVtIAo+ID4gZm9yIHRoaXMg
YXNzZXJ0Lgo+IAo+IE9oLCBubyBpdCdzIG5vdCA6KQo+IAo+IGV4ZWNsaXN0c19yZXNldCgpIGlz
IHN1cnJvdW5kZWQgYnkgcmVzZXRfcHJlcGFyZSBhbmQgcmVzZXRfZmluaXNoIHdobwo+IGFyZSBy
ZXNwb25zaWJsZSBmb3IgZGlzYWJsaW5nIHRoZSB0YXNrbGV0IGFuZCBzZXJpYWxpc2luZyB3aXRo
IGRpcmVjdAo+IHN1Ym1pc3Npb24gYXJvdW5kIHRoZSByZXNldC4KClNhbWUgYmVpbmcgdHJ1ZSBm
b3IgY2FuY2VsX3JlcXVlc3RzLCBvbiB3ZWRnaW5nIHdlIGhhdmUgdG8gZGlzYWJsZSB0aGUKdGFz
a2xldCBiZWZvcmUgdGFraW5nIGNvbnRyb2wgb2YgdGhlIHN0YXRlLgotQ2hyaXMKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
