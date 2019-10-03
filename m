Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3597CAF3F
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2019 21:29:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DF3E6EA65;
	Thu,  3 Oct 2019 19:29:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 399646EA65
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2019 19:29:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18714530-1500050 for multiple; Thu, 03 Oct 2019 20:29:19 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191003192444.10113-2-matthew.auld@intel.com>
References: <20191003192444.10113-1-matthew.auld@intel.com>
 <20191003192444.10113-2-matthew.auld@intel.com>
Message-ID: <157013095648.8916.6201985150129328589@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 03 Oct 2019 20:29:16 +0100
Subject: Re: [Intel-gfx] [PATCH v2 01/22] drm/i915/stolen: make the object
 creation interface consistent
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMTAtMDMgMjA6MjQ6MjMpCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JjNi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfcmM2LmMKPiBpbmRleCBkNjE2N2RkNTkyZTkuLmRjZjE4OWYyNjYyNCAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yYzYuYwo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JjNi5jCj4gQEAgLTI5OSw3ICsyOTksNyBAQCBz
dGF0aWMgaW50IHZsdl9yYzZfaW5pdChzdHJ1Y3QgaW50ZWxfcmM2ICpyYzYpCj4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHBjYnJfb2Zmc2V0LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJOTE1X0dUVF9PRkZTRVRfTk9ORSwKPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgcGN0eF9zaXplKTsKPiAtICAgICAgICAgICAgICAgaWYgKCFwY3R4KQo+ICsg
ICAgICAgICAgICAgICBpZiAoSVNfRVJSKHBjdHgpKQo+ICAgICAgICAgICAgICAgICAgICAgICAg
IHJldHVybiAtRU5PTUVNOwo+ICAKPiAgICAgICAgICAgICAgICAgZ290byBvdXQ7Cj4gQEAgLTMx
Niw3ICszMTYsNyBAQCBzdGF0aWMgaW50IHZsdl9yYzZfaW5pdChzdHJ1Y3QgaW50ZWxfcmM2ICpy
YzYpCj4gICAgICAgICAgKiBtZW1vcnksIG9yIGFueSBvdGhlciByZWxldmFudCByYW5nZXMuCj4g
ICAgICAgICAgKi8KPiAgICAgICAgIHBjdHggPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3N0b2xl
bihpOTE1LCBwY3R4X3NpemUpOwo+IC0gICAgICAgaWYgKCFwY3R4KSB7Cj4gKyAgICAgICBpZiAo
SVNfRVJSKHBjdHgpKSB7Cj4gICAgICAgICAgICAgICAgIERSTV9ERUJVRygibm90IGVub3VnaCBz
dG9sZW4gc3BhY2UgZm9yIFBDVFgsIGRpc2FibGluZ1xuIik7Cj4gICAgICAgICAgICAgICAgIHJl
dHVybiAtRU5PTUVNOwoKWW91IG1pZ2h0IGFzIHdlbGwgbWFrZSB1c2Ugb2YgdGhlIGFjdHVhbCBl
cnJvciBub3cgdGhhdCB5b3Uga25vdyBpdC4KCldpdGggdGhhdCBtaW5vciB0d2VhaywKUmV2aWV3
ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
