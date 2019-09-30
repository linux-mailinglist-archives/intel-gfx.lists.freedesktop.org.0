Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C498C1FE0
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2019 13:17:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 096186E398;
	Mon, 30 Sep 2019 11:17:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65BDC6E398
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2019 11:17:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18665724-1500050 for multiple; Mon, 30 Sep 2019 12:17:46 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <51720124-9c90-04c4-2bff-4e067fba7ebb@linux.intel.com>
References: <20190927163400.22767-1-chris@chris-wilson.co.uk>
 <20190928082546.3473-1-chris@chris-wilson.co.uk>
 <51720124-9c90-04c4-2bff-4e067fba7ebb@linux.intel.com>
Message-ID: <156984225982.1880.15060055639771073589@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 30 Sep 2019 12:17:39 +0100
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/userptr: Never allow userptr
 into the mappable GGTT
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wOS0zMCAxMTozMzoyMikKPiAKPiBPbiAyOC8w
OS8yMDE5IDA5OjI1LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBEYW5pZWwgVmV0dGVyIHVuY292
ZXJlZCBhIG5hc3R5IGN5Y2xlIGluIHVzaW5nIHRoZSBtbXUtbm90aWZpZXJzIHRvCj4gPiBpbnZh
bGlkYXRlIHVzZXJwdHIgb2JqZWN0cyB3aGljaCBhbHNvIGhhcHBlbiB0byBiZSBwdWxsZWQgaW50
byBHR1RUCj4gPiBtbWFwcy4gVGhhdCBpcyB3aGVuIHdlIHVuYmluZCB0aGUgdXNlcnB0ciBvYmpl
Y3QgKG9uIG1tdSBpbnZhbGlkYXRpb24pLAo+ID4gd2UgcmV2b2tlIGFsbCBDUFUgbW1hcHMsIHdo
aWNoIG1heSB0aGVuIHJlY3Vyc2UgaW50byBtbXUgaW52YWxpZGF0aW9uLgo+IAo+IE9uIHRoZSBz
YW1lIG9iamVjdD8gSW52YWxpZGF0ZSBvbiB1c2VycHRyIGJ1aWx0IGZyb20gc29tZSBtbWFwX2d0
dCBhcmVhLCAKPiBvciBzdGFuZGFyZCB1c2VycHRyIG9iamVjdCBtbWFwcGVkIHZpYSBndHQ/IE9y
IG9uZSB1c2VycHRyIG9iamVjdCBidWlsdCAKPiBmcm9tIGEgbW1hcF9ndHQgb2YgYW5vdGhlciB1
c2VycHRyIG9iamVjdD8KCll1cCwgdGhpbmsgb2YgdGhlIG11bHRpcGxlIHBhcnRpYWwgbW1hcHMg
d2UgaGF2ZSBvbiB0aGUgc2FtZSBvYmplY3QuIElmCndlIGludmFsaWRhdGUgdGhlIG1tYXBfb2Zm
c2V0LCB3ZSBtYXkgaGl0IHRoZSBzYW1lIG9iamVjdCBhZ2FpbiBpbgptbXUtaW52YWxpZGF0ZS4g
QXMgZmFyIGFzIG15IHVuZGVyc3RhbmRpbmcgZ29lcywgdGhlcmUgaXMgbm90aGluZyBpbgp0aGUg
bXVubWFwL2ludmFsaWRhdGUgdGhhdCBwcmV2ZW50cyB0aGlzLiBBbHRob3VnaCwgaGF2aW5nIHRo
ZSBzYW1lCnBhZ2VzIG1hcHBlZCBpbnRvIGRpZmZlcmVudCBwcm9jZXNzIGlzIG5vdCB1bnVzdWFs
LCBzbyB5b3Ugd291bGQgdGhpbmsKd2UgYXJlIG5vdCBhbG9uZSBpbiBoYXZpbmcgZGV2aWNlIHBh
Z2VzIGluIG11bHRpcGxlIG1hcHBpbmdzPyBUaGVyZQptaWdodCBiZSBzb21ldGhpbmcgbW9yZSBh
dCBwbGF5IGhlcmUsIGJ1dCBEYW5pZWwncyBsb2NrZGVwIHBhdGNoIGlzCnN0cmFpZ2h0Zm9yd2Fy
ZDogbm8gcmVjdXJzaW9uIGFsbG93ZWQgaW4gbW11LWludmFsaWRhdGUuCgo+IFdpbGwgYW55dGhp
bmcgY2hhbmdlIGhlcmUgYWZ0ZXIgdGhlIHN0cnVjdCBtdXRleCByZW1vdmFsIHNlcmllcz8gQUZB
SVIgCj4geW91IHJlbW92ZSBzdHJ1Y3QgbXV0ZXggZnJvbSB1c2VycHRyIGludmFsaWRhdGlvbiB0
aGVyZS4KCk5vLiBUaGlzLCBhaXVpLCBpcyBwdXJlbHkgYW4gaXNzdWUgd2hlcmUgd2UgdHJpZ2dl
ciBhbiBtbXUtaW52YWxpZGF0ZQpmcm9tIGluc2lkZSB0aGUgbW11X2ludmFsaWRhdGVfcmFuZ2Vf
c3RhcnQuCiAKW3NuaXBdCgo+IEkgcmVtZW1iZXIgaW4gdGhlIGRpc3RhbnQgcGFzdCB3ZSBkaXNj
dXNzZWQgd2hldGhlciBvciBub3QgdG8gYWxsb3cgCj4gdGhpcy4gSXQgaXMgaW5kZWVkIGEgcXVp
dGUgcGVydmVyc2Ugc2V0dXAgc28gSSBhbSBva2F5IHdpdGggZGlzYWxsb3dpbmcgaXQuCj4gCj4g
UmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4g
Cj4gUmVnYXJkcywKPiAKPiBUdnJ0a28KPiAKPiBQLlMuIEkgZXhwZWN0IHRoZXJlIHdpbGwgYmUg
c29tZSBJR1RzIHRvIGJlIGFkanVzdGVkIGFzIHdlbGwuCgpZdXAuIFRoaXMgd2FzIHRvIHN0YXJ0
IHRoZSBiYWxsIHJvbGxpbmcgYXMgY29tZSByYzEgd2Ugd2lsbCBoYXZlIHNvbWUKZmlyZS1maWdo
dGluZyB0byBkby4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
