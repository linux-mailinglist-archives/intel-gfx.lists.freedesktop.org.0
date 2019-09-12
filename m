Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2776AB0D1C
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 12:43:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 830516ECBD;
	Thu, 12 Sep 2019 10:43:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4A7F6ECBD
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 10:43:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18462474-1500050 for multiple; Thu, 12 Sep 2019 11:43:21 +0100
MIME-Version: 1.0
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190912103014.GH7482@intel.com>
References: <20190911175926.31365-1-chris@chris-wilson.co.uk>
 <20190912103014.GH7482@intel.com>
Message-ID: <156828499881.4926.11732756119773278836@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 12 Sep 2019 11:43:18 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Disable FBC if BIOS reserved
 memory (stolen) is unavailable
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMTktMDktMTIgMTE6MzA6MTQpCj4gT24gV2VkLCBT
ZXAgMTEsIDIwMTkgYXQgMDY6NTk6MjZQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4g
VGhlIEZCQyByZXF1aXJlcyBhIGNvdXBsZSBvZiBjb250aWd1b3VzIGJ1ZmZlcnMsIHdoaWNoIHdl
IGFsbG9jYXRlIGZyb20KPiA+IHN0b2xlbiBtZW1vcnkuIElmIHN0b2xlbiBtZW1vcnkgaXMgdW5h
dmFpbGFibGUsIHdlIGNhbm5vdCBhbGxvY2F0ZSB0aG9zZQo+ID4gYnVmZmVycyBhbmQgc28gY2Fu
bm90IHN1cHBvcnQgRkJDLiBNYXJrIGl0IHNvLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IC0tLQo+ID4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgfCAzICsrKwo+ID4gIDEgZmlsZSBjaGFu
Z2VkLCAzIGluc2VydGlvbnMoKykKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2ZiYy5jCj4gPiBpbmRleCBkYzM0YjIzZTIzMjAuLjMxMTFlY2FlYWJkMCAxMDA2NDQK
PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKPiA+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKPiA+IEBAIC0xMzIw
LDYgKzEzMjAsOSBAQCB2b2lkIGludGVsX2ZiY19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdikKPiA+ICAgICAgIGZiYy0+ZW5hYmxlZCA9IGZhbHNlOwo+ID4gICAgICAgZmJj
LT5hY3RpdmUgPSBmYWxzZTsKPiA+ICAKPiA+ICsgICAgIGlmICghZHJtX21tX2luaXRpYWxpemVk
KCZkZXZfcHJpdi0+bW0uc3RvbGVuKSkKPiA+ICsgICAgICAgICAgICAgbWt3cml0ZV9kZXZpY2Vf
aW5mbyhkZXZfcHJpdiktPmRpc3BsYXkuaGFzX2ZiYyA9IGZhbHNlOwo+ID4gKwo+IAo+IE5vdCBh
IGh1Z2UgZmFuIG9mIHRoaXMgYXBwcm9hY2ggc2luY2UgaXQgbWVhbnMgd2Ugd29uJ3QgZXZlbiBt
YWtlIHN1cmUKPiBGQkMgaXMgdHJ1bHkgZGlzYWJsZWQuIEJ1dCB3ZSBhbHJlYWR5IGRvIHRoaXMg
Zm9yIG90aGVyIHJlYXNvbnMgc28gSQo+IGd1ZXNzIGl0J3MgZmluZS4KCkZ3aXcsIEknbSBleHBl
cmltZW50aW5nIHdpdGggZW5hYmxpbmcgc3RvbGVuICsgaW9tbXUgYW5kIHNvIGZhciBpdApoYXNu
J3QgZGllZC4gU28gaG9wZWZ1bGx5LCB0aGlzIGlzIGp1c3QgYSB0ZW1wb3JhcnkgbWVhbnMgdG8g
c2lsZW5jZSB0aGUKaHVnZSBibG9jayBvZiByZWQgaW4gQ0kuCi1DaHJpcwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
