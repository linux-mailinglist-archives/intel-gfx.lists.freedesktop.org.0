Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D93D2F86C
	for <lists+intel-gfx@lfdr.de>; Thu, 30 May 2019 10:19:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BD966E130;
	Thu, 30 May 2019 08:19:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A7F16E130
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 May 2019 08:19:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16730665-1500050 for multiple; Thu, 30 May 2019 09:19:11 +0100
MIME-Version: 1.0
To: Dan Carpenter <dan.carpenter@oracle.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190530081301.GA8766@mwanda>
References: <20190530081301.GA8766@mwanda>
Message-ID: <155920434864.2224.16627071309177707761@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 30 May 2019 09:19:08 +0100
Subject: Re: [Intel-gfx] [bug report] drm/i915: Trim struct_mutex hold
 duration for i915_gem_free_objects
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

UXVvdGluZyBEYW4gQ2FycGVudGVyICgyMDE5LTA1LTMwIDA5OjEzOjAxKQo+IEhlbGxvIENocmlz
IFdpbHNvbiwKPiAKPiBUaGUgcGF0Y2ggY2M3MzFmNWEzYjFmOiAiZHJtL2k5MTU6IFRyaW0gc3Ry
dWN0X211dGV4IGhvbGQgZHVyYXRpb24KPiBmb3IgaTkxNV9nZW1fZnJlZV9vYmplY3RzIiBmcm9t
IE9jdCAxMywgMjAxNywgbGVhZHMgdG8gdGhlIGZvbGxvd2luZwo+IHN0YXRpYyBjaGVja2VyIHdh
cm5pbmc6Cj4gCj4gICAgICAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2Jq
ZWN0LmM6MTk1IF9faTkxNV9nZW1fZnJlZV9vYmplY3RzKCkKPiAgICAgICAgIGVycm9yOiB3ZSBw
cmV2aW91c2x5IGFzc3VtZWQgJ29iaicgY291bGQgYmUgbnVsbCAoc2VlIGxpbmUgMTk1KQo+IAo+
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYwo+ICAgIDE4OCAgc3Rh
dGljIHZvaWQgX19pOTE1X2dlbV9mcmVlX29iamVjdHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUsCj4gICAgMTg5ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1
Y3QgbGxpc3Rfbm9kZSAqZnJlZWQpCj4gICAgMTkwICB7Cj4gICAgMTkxICAgICAgICAgIHN0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosICpvbjsKPiAgICAxOTIgICAgICAgICAgaW50ZWxf
d2FrZXJlZl90IHdha2VyZWY7Cj4gICAgMTkzICAKPiAgICAxOTQgICAgICAgICAgd2FrZXJlZiA9
IGludGVsX3J1bnRpbWVfcG1fZ2V0KGk5MTUpOwo+ICAgIDE5NSAgICAgICAgICBsbGlzdF9mb3Jf
ZWFjaF9lbnRyeV9zYWZlKG9iaiwgb24sIGZyZWVkLCBmcmVlZCkgewo+ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXl4KPiAmb24tPmZyZWVkIGlzIGEgcG9p
bnRlciB0byB0aGUgbmV4dCBpdGVtIGluIHRoZSBsaXN0PwoKSG1tLiBJIHdhcyBsb29raW5nIGF0
IGxsaXN0X2Zvcl9lYWNoX3NhZmUgd2hlcmUgdGhlIG5leHQgcG9pbnRlciB3b3VsZCBiZQpOVUxM
LiBCdXQgZm9yIF9lbnRyeSwgaXQgd2lsbCBpbmRlZWQgYmUgb2Zmc2V0LgotQ2hyaXMKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
