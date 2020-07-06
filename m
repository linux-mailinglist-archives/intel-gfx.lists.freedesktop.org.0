Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40C4F215931
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jul 2020 16:11:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93B226E417;
	Mon,  6 Jul 2020 14:11:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93B5A6E417
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2020 14:11:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21729753-1500050 for multiple; Mon, 06 Jul 2020 15:11:04 +0100
MIME-Version: 1.0
In-Reply-To: <159404460220.24180.456718266532897888@build.alporthouse.com>
References: <20200706140125.172844-1-michal@hardline.pl>
 <20200706140125.172844-3-michal@hardline.pl>
 <159404460220.24180.456718266532897888@build.alporthouse.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Michał Winiarski <michal@hardline.pl>, intel-gfx@lists.freedesktop.org
Date: Mon, 06 Jul 2020 15:11:02 +0100
Message-ID: <159404466269.24180.5100087410196439427@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Don't taint when using fault
 injection
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Michał Winiarski <michal.winiarski@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMjAtMDctMDYgMTU6MTA6MDIpCj4gUXVvdGluZyBNaWNo
YcWCIFdpbmlhcnNraSAoMjAyMC0wNy0wNiAxNTowMToyNSkKPiA+IEZyb206IE1pY2hhxYIgV2lu
aWFyc2tpIDxtaWNoYWwud2luaWFyc2tpQGludGVsLmNvbT4KPiA+IAo+ID4gSXQgaXMgbm90IHJl
YWxseSB1bmV4cGVjdGVkIHRvIGhpdCB3ZWRnZSBvbiBpbml0IHRoaXMgd2F5Lgo+ID4gV2UncmUg
YWxyZWFkeSBkb3duZ3JhZGluZyBlcnJvciBwcmludGsgd2hlbiBydW5uaW5nIHdpdGggZmF1bHQg
aW5qZWN0aW9uLAo+ID4gbGV0J3MgdXNlIHRoZSBzYW1lIGFwcHJvYWNoIGZvciBDSSB0YWludGlu
Zy4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogTWljaGHFgiBXaW5pYXJza2kgPG1pY2hhbC53aW5p
YXJza2lAaW50ZWwuY29tPgo+ID4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgo+ID4gQ2M6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwu
Y29tPgo+ID4gQ2M6IFBldHJpIExhdHZhbGEgPHBldHJpLmxhdHZhbGFAaW50ZWwuY29tPgo+ID4g
LS0tCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oIHwgNCArKystCj4gPiAg
MSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ID4gCj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV91dGlscy5oCj4gPiBpbmRleCA4MmZhZGExZTc1NTIuLmQ4NGMyMzU5
Mjk0MiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdXRpbHMuaAo+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oCj4gPiBAQCAtNDM4LDcg
KzQzOCw5IEBAIHN0YXRpYyBpbmxpbmUgY29uc3QgY2hhciAqZW5hYmxlZGRpc2FibGVkKGJvb2wg
dikKPiA+ICAKPiA+ICBzdGF0aWMgaW5saW5lIHZvaWQgX19hZGRfdGFpbnRfZm9yX0NJKHVuc2ln
bmVkIGludCB0YWludCkKPiA+ICB7Cj4gPiAtICAgICAgIGFkZF90YWludCh0YWludCwgTE9DS0RF
UF9TVElMTF9PSyk7Cj4gPiArICAgICAgIC8qIEZhaWx1cmVzIHRoYXQgb2NjdXIgZHVyaW5nIGZh
dWx0IGluamVjdGlvbiB0ZXN0aW5nIGFyZSBleHBlY3RlZCAqLwo+ID4gKyAgICAgICBpZiAoIWk5
MTVfZXJyb3JfaW5qZWN0ZWQoKSkKPiA+ICsgICAgICAgICAgICAgICBhZGRfdGFpbnQodGFpbnQs
IExPQ0tERVBfU1RJTExfT0spOwo+ID4gIH0KPiAKPiBBbmQgSSB0aGluayB0aGlzIGlzIGJldHRl
ciBpbiBhZGRfdGFpbnRfZm9yX0NJKCkuIElmIHdlIGhpdCB0aGUKPiBHRU1fQlVHX09OKCkgd2Ug
c2hvdWxkIGFsd2F5cyBhZGQgdGhlIHRhaW50LCBhcyB0aGF0IHRyYWNlIGR1bXAgaXMgYQo+IG9u
ZS1zaG90IGFmZmFpci4KClNvIGlmIHlvdSBhZ3JlZSwgbWFrZSBhZGRfdGFpbnRfZm9yX0NJIG91
dC1vZi1saW5lIGFuZCBpdCB0aGVyZSwgYW5kIHlvdQpjYW4gaGF2ZSBhIAoKUmV2aWV3ZWQtYnk6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgoKc3RyYWlnaHQgYXdheSA6
KQotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
