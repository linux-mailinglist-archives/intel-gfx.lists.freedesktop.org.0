Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E223DDE5E1
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2019 10:03:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B04989BA9;
	Mon, 21 Oct 2019 08:03:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD3D289B70;
 Mon, 21 Oct 2019 08:03:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18908701-1500050 for multiple; Mon, 21 Oct 2019 09:03:33 +0100
MIME-Version: 1.0
To: Zhenyu Wang <zhenyuw@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191021053724.GB8745@zhen-hp.sh.intel.com>
References: <20191016183902.13614-1-chris@chris-wilson.co.uk>
 <20191016183902.13614-2-chris@chris-wilson.co.uk>
 <20191021053724.GB8745@zhen-hp.sh.intel.com>
Message-ID: <157164501001.24426.17278525357815707355@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 21 Oct 2019 09:03:30 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gvt: Wean gvt off
 dev_priv->engine[]
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
Cc: intel-gfx@lists.freedesktop.org,
 intel-gvt-dev <intel-gvt-dev@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBaaGVueXUgV2FuZyAoMjAxOS0xMC0yMSAwNjozNzoyNCkKPiBPbiAyMDE5LjEwLjE2
IDE5OjM5OjAyICswMTAwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBTdG9wIHRyeWluZyB0byBl
c2NhcGUgb3V0IG9mIHRoZSBndnQgbGF5ZXIgdG8gZmluZCB0aGUgZW5naW5lIHRoYXQgd2UKPiA+
IGluaXRpYWxseSBzZXR1cCBmb3IgdXNlIHdpdGggZ3Z0LiBSZWNvcmQgdGhlIGVuZ2luZXMgZHVy
aW5nIGluaXRpYWxpc2F0aW9uCj4gPiBhbmQgdXNlIHRoZW0gaGVuY2Vmb3J0aC4KPiA+IAo+ID4g
YWRkL3JlbW92ZTogMS80IGdyb3cvc2hyaW5rOiAyMi8yOCB1cC9kb3duOiAzNDEvLTE0MTAgKC0x
MDY5KQo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KPiA+IC0tLQo+IAo+IFRoYW5rcyBmb3IgdGhpcyBjbGVhbnVwISBRdWljayBy
ZXZpZXcgc2VlbXMgZ29vZCB0byBtZSwgYWx0aG91Z2ggaXQKPiBsb29rcyBwcmV0dHkgZmluZSBm
b3IgbWUgb24gcmluZ19pZCByZXBsYWNlbWVudCwgdGhpcyBiaWcgb25lIGFsc28KPiBpbmNsdWRl
cyBvdGhlciBjaGFuZ2VzIGxpa2UgaW5kZW50IGZpeCwgZGVidWdmcyBpdGVtIGNoYW5nZSwgZXRj
Lgo+IENvdWxkIHdlIHNwbGl0IHRoZW0gZm9yIGVhc2llciBtZXJnZT8gQ2FuIGhhdmUgYSBndnQg
ZGV2ZWxvcGVyIHRvCj4gaGVscCBvbiB0aGF0LgoKSnVzdCBtYWtlIGd2dC8gY2hlY2twYXRjaCBj
bGVhbiBzbyB0aGF0IENJIGRvZXNuJ3QgcmVqZWN0IHBhdGNoZXMKYmVjYXVzZSB0aGUgc3Vycm91
bmRpbmcgY29kZSBkb2VzIG5vdCBjb25mb3JtIHRvIGNvZGluZyBzdHlsZS4KLUNocmlzCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
