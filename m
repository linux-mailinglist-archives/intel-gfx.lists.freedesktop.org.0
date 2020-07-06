Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C07AF21592B
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jul 2020 16:10:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 175A56E413;
	Mon,  6 Jul 2020 14:10:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 138436E413
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2020 14:10:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21729738-1500050 for multiple; Mon, 06 Jul 2020 15:10:04 +0100
MIME-Version: 1.0
In-Reply-To: <20200706140125.172844-3-michal@hardline.pl>
References: <20200706140125.172844-1-michal@hardline.pl>
 <20200706140125.172844-3-michal@hardline.pl>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Michał Winiarski <michal@hardline.pl>, intel-gfx@lists.freedesktop.org
Date: Mon, 06 Jul 2020 15:10:02 +0100
Message-ID: <159404460220.24180.456718266532897888@build.alporthouse.com>
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

UXVvdGluZyBNaWNoYcWCIFdpbmlhcnNraSAoMjAyMC0wNy0wNiAxNTowMToyNSkKPiBGcm9tOiBN
aWNoYcWCIFdpbmlhcnNraSA8bWljaGFsLndpbmlhcnNraUBpbnRlbC5jb20+Cj4gCj4gSXQgaXMg
bm90IHJlYWxseSB1bmV4cGVjdGVkIHRvIGhpdCB3ZWRnZSBvbiBpbml0IHRoaXMgd2F5Lgo+IFdl
J3JlIGFscmVhZHkgZG93bmdyYWRpbmcgZXJyb3IgcHJpbnRrIHdoZW4gcnVubmluZyB3aXRoIGZh
dWx0IGluamVjdGlvbiwKPiBsZXQncyB1c2UgdGhlIHNhbWUgYXBwcm9hY2ggZm9yIENJIHRhaW50
aW5nLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1pY2hhxYIgV2luaWFyc2tpIDxtaWNoYWwud2luaWFy
c2tpQGludGVsLmNvbT4KPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+Cj4gQ2M6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+
IENjOiBQZXRyaSBMYXR2YWxhIDxwZXRyaS5sYXR2YWxhQGludGVsLmNvbT4KPiAtLS0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oIHwgNCArKystCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91
dGlscy5oCj4gaW5kZXggODJmYWRhMWU3NTUyLi5kODRjMjM1OTI5NDIgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV91dGlscy5oCj4gQEAgLTQzOCw3ICs0MzgsOSBAQCBzdGF0aWMgaW5saW5lIGNv
bnN0IGNoYXIgKmVuYWJsZWRkaXNhYmxlZChib29sIHYpCj4gIAo+ICBzdGF0aWMgaW5saW5lIHZv
aWQgX19hZGRfdGFpbnRfZm9yX0NJKHVuc2lnbmVkIGludCB0YWludCkKPiAgewo+IC0gICAgICAg
YWRkX3RhaW50KHRhaW50LCBMT0NLREVQX1NUSUxMX09LKTsKPiArICAgICAgIC8qIEZhaWx1cmVz
IHRoYXQgb2NjdXIgZHVyaW5nIGZhdWx0IGluamVjdGlvbiB0ZXN0aW5nIGFyZSBleHBlY3RlZCAq
Lwo+ICsgICAgICAgaWYgKCFpOTE1X2Vycm9yX2luamVjdGVkKCkpCj4gKyAgICAgICAgICAgICAg
IGFkZF90YWludCh0YWludCwgTE9DS0RFUF9TVElMTF9PSyk7Cj4gIH0KCkFuZCBJIHRoaW5rIHRo
aXMgaXMgYmV0dGVyIGluIGFkZF90YWludF9mb3JfQ0koKS4gSWYgd2UgaGl0IHRoZQpHRU1fQlVH
X09OKCkgd2Ugc2hvdWxkIGFsd2F5cyBhZGQgdGhlIHRhaW50LCBhcyB0aGF0IHRyYWNlIGR1bXAg
aXMgYQpvbmUtc2hvdCBhZmZhaXIuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
