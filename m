Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81354231DF
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 13:00:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 581E1884B0;
	Mon, 20 May 2019 11:00:05 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2505F884B0;
 Mon, 20 May 2019 11:00:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16613749-1500050 for multiple; Mon, 20 May 2019 11:59:56 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <5fcce814-0534-9435-4219-3900b46fa44d@linux.intel.com>
References: <20190517112526.6738-1-tvrtko.ursulin@linux.intel.com>
 <20190517112526.6738-13-tvrtko.ursulin@linux.intel.com>
 <155812174911.1890.4438273089258312619@skylake-alporthouse-com>
 <5fcce814-0534-9435-4219-3900b46fa44d@linux.intel.com>
Message-ID: <155834999475.6928.18037861860341795901@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 20 May 2019 11:59:54 +0100
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 12/25] gem_wsim: Engine map
 support
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0yMCAxMTo0OToxMykKPiAKPiBPbiAxNy8w
NS8yMDE5IDIwOjM1LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA1LTE3IDEyOjI1OjEzKQo+ID4+ICsgICAgICAgLyoKPiA+PiArICAgICAgICAq
IEVuc3VyZSBWQ1MgaXMgbm90IGFsbG93ZWQgd2l0aCBlbmdpbmUgbWFwIGNvbnRleHRzLgo+ID4+
ICsgICAgICAgICovCj4gPj4gKyAgICAgICBmb3IgKGogPSAwOyBqIDwgd3JrLT5ucl9jdHhzOyBq
ICs9IDIpIHsKPiA+PiArICAgICAgICAgICAgICAgZm9yIChpID0gMCwgdyA9IHdyay0+c3RlcHM7
IGkgPCB3cmstPm5yX3N0ZXBzOyBpKyssIHcrKykgewo+ID4+ICsgICAgICAgICAgICAgICAgICAg
ICAgIGlmICh3LT5jb250ZXh0ICE9IChqIC8gMikpCj4gPj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBjb250aW51ZTsKPiA+PiArCj4gPj4gKyAgICAgICAgICAgICAgICAgICAgICAg
aWYgKHctPnR5cGUgIT0gQkFUQ0gpCj4gPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBjb250aW51ZTsKPiA+PiArCj4gPj4gKyAgICAgICAgICAgICAgICAgICAgICAgaWYgKHdyay0+
Y3R4X2xpc3Rbal0uZW5naW5lX21hcCAmJiB3LT5lbmdpbmUgPT0gVkNTKSB7Cj4gPiAKPiA+IEJ1
dCB3b3VsZG4ndCBWQ1Mgc3RpbGwgYmUgbWVhbmluZyB1c2UgdGhlIGJhbGFuY2VyIGFuZCBub3Qg
YSBzcGVjaWZpYwo+ID4gZW5naW5lPz8/Cj4gPiAKPiA+IEknbSBub3QgdW5kZXJzdGFuZGluZyBo
b3cgeW91IGFyZSB1c2luZyBtYXBzIGluIHRoZSAud3NpbSA6KAo+IAo+IEJhdGNoIHNlbnQgdG8g
VkNTIG1lYW5zIGFueSBWQ1MgaWYgbm90IGEgY29udGV4dCB3aXRoIGEgbWFwLCBidXQgVkNTIAo+
IG1lbnRpb25lZCBpbiB0aGUgbWFwIG5vdyBhdXRvLWV4cGFuZHMgdG8gYWxsIHByZXNlbnQgVkNT
IGluc3RhbmNlcy4KPiAKPiBWQ1MgYXMgZW5naW5lIHNwZWNpZmllciBhdCBleGVjYnVmIHRpbWUg
Y291bGQgYmUgYWxsb3dlZCBpZiBjb2RlIHdvdWxkIAo+IHRoZW4gY2hlY2sgaWYgdGhlcmUgaXMg
YSBsb2FkIGJhbGFuY2VyIGJ1aWx0IG9mIHZjcyBlbmdpbmVzIGluIHRoaXMgY29udGV4dC4KPiAK
PiBCdXQgd2hhdCB1c2UgY2FzZSB5b3UgdGhpbmsgaXMgbm90IGNvdmVyZWQ/Cj4gCj4gV2UgZ290
IGxlZ2FjeSB3c2ltIGZpbGVzIHdoaWNoIGltcGxpY2l0bHkgY3JlYXRlIGEgbWFwIGJ5IGRvaW5n
Ogo+IAo+IDEuVkNTLjEwMDAuMC4wIC0+IHN1Ym1pdCBhIGJhdGNoIHRvIGFueSB2Y3MKPiAKPiBB
bmQgdGhlbiBhZnRlciB0aGlzIHNlcmllcyB5b3UgY2FuIGFsc28gZG86Cj4gCj4gTS4xLlZDUwo+
IEIuMQo+IDEuREVGQVVMVC4xMDAwLjAuMAo+IAo+IFdoaWNoIHdvdWxkIGhhdmUgdGhlIHNhbWUg
ZWZmZWN0Lgo+IAo+IFlvdSB3b3VsZCBzZWVtIHdhbnQ6Cj4gCj4gTS4xLlZDUwo+IEIuMQo+IDEu
VkNTLjEwMDAuMC4wCj4gCj4gPwo+IAo+IEJ1dCBJIGRvbid0IHNlZSB3aGF0IGl0IGdhaW5zPwoK
SSBqdXN0IGhhdmUgYSBwaWN0dXJlIG9mIGEgbWFwIGNvbnNpc3Rpbmcgb2YKCglbUkNTXSA9IHJj
czAsCglbQkNTXSA9IDAsCglbVkNTXSA9ICh2Y3MwLCB2Y3MyKSwKClRoZW4gdGhlIHdvcmtsb2Fk
IHdvdWxkIGJlIGEgc2luZ2xlIGNvbnRleHQsIGZlZWRpbmcgYmF0Y2hlcyB0byBSQ1MgYW5kClZD
Uywgd2hpY2ggYXJlIHRoZW4gbWFwcGVkIHRvIGhhcmR3YXJlIGFuZCBiYWxhbmNlZCBhcyBzdWl0
YWJsZS4gT25lCmNvdWxkIGdvIGV2ZW4gZnVydGhlciB3aXRoIFJDUzAsIFJDUzEgZm9yIGRpZmZl
cmVudCBsb2dpY2FsIHN0YXRlIHdpdGhpbgp0aGUgc2FtZSBjbGllbnQgY29udGV4dCAoZGlmZmVy
ZW50IHBpcGVsaW5lcywgc2FtZSB2bSkuIFRoYXQgaXMgaG93IEkKdGhpbmsgSSB3b3VsZCBkZWNv
bXBvc2UgdGhlIG1lZGlhIHdvcmtsb2FkcyBnaXZlbiBhIGZyZXNoIHN0YXJ0IG9uIHRvcApvZiB0
aGUgbmV3IGFwaSAtLSBhbmQgdGhlbiBwcm9iYWJseSBjdXJzaW5nIHRoZSBsaW1pdHMgb2YgdGhh
dCBhcGkuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
