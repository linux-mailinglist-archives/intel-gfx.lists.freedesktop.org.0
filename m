Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25DB2108D01
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2019 12:30:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11CC389DE3;
	Mon, 25 Nov 2019 11:30:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 190FC89DE3
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2019 11:30:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19328501-1500050 for multiple; Mon, 25 Nov 2019 11:30:45 +0000
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>,
 Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <877e3op6t2.fsf@intel.com>
References: <20191121175850.19844-1-michal.wajdeczko@intel.com>
 <877e3op6t2.fsf@intel.com>
Message-ID: <157468143933.7880.12910063805528763907@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 25 Nov 2019 11:30:39 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ggtt: Move ballooning support to
 i915_ggtt
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

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0xMS0yNSAxMDo1MTo1MykKPiBPbiBUaHUsIDIxIE5v
diAyMDE5LCBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4gd3Jv
dGU6Cj4gPiBUb2RheSBWR1QgaW1wbGVtZW50cyBHR1RUIGJhbGxvb25pbmcgb24gaXRzIG93biwg
dXNpbmcgc29tZSBwcml2YXRlCj4gPiBzdGF0aWMgc3RydWN0dXJlIHRvIGhvbGQgaW5mbyBhYm91
dCByZXNlcnZlZCBHR1RUIG5vZGVzIGFuZCB0aGVuCj4gPiBtYW51YWxseSB1cGRhdGUgdm0ucmVz
ZXJ2ZWQgc2l6ZSBvd25lZCBieSBpOTE1X2dndHQuCj4gPgo+ID4gQXMgaTkxNV9nZ3R0IGFscmVh
ZHkgbWFuYWdlcyBzb21lIGN1c3RvbSByZXNlcnZlZCBub2RlcyAobGlrZSB1Y19mdykKPiA+IG1v
dmUgVkdUIGJhbGxvb25pbmcgc3VwcG9ydCB0byBpOTE1X2dndHQgYW5kIG1ha2UgaXQgbW9yZSBn
ZW5lcmljCj4gPiBmb3IgcG9zc2libGUgZnV0dXJlIHJldXNlIGluIG90aGVyIHNjZW5hcmlvcy4K
PiA+Cj4gPiBBcyBhIGJvbnVzIHdlIGNhbiBkcm9wIGFub3RoZXIgcGxhY2UgaW4gZHJpdmVyIHRo
YXQgdXNlcyBzdGF0aWMgZGF0YS4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2FqZGVj
emtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KPiA+IENjOiBYaW9uZyBaaGFuZyA8eGlv
bmcueS56aGFuZ0BpbnRlbC5jb20+Cj4gPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Cj4gPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4K
PiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIHwgNDcgKysr
KysrKysrKysrKysrKysrKwo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5o
IHwgMTggKysrKysrKysKPiAKPiBNYXliZSBub3QgcGFydCBvZiB0aGlzIHBhdGNoLCBidXQgc2hv
dWxkIHdlIHN0YXJ0IG1vdmluZyB0aGlzIHN0dWZmIG91dAo+IG9mIHRoZSB0b3AgbGV2ZWwgaW5z
dGVhZCBvZiBhZGRtaW5nIG1vcmU/CgpJdCdzIG9uIG15IHRvZG8gbGlzdCB0byBzcGxpdCB0aGlz
IGJldHdlZW4gdGhlIEhXIHBhZ2V0YWJsZSBtYW5hZ2VtZW50IGFuZApHRU0gYW5kIG90aGVyIGlu
dGVyZmFjZXMgb24gdG9wLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
