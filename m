Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FEC4CAF6D
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2019 21:40:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99EA16EA6D;
	Thu,  3 Oct 2019 19:40:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2822C6EA6D
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2019 19:40:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18714613-1500050 for multiple; Thu, 03 Oct 2019 20:40:29 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191003192444.10113-5-matthew.auld@intel.com>
References: <20191003192444.10113-1-matthew.auld@intel.com>
 <20191003192444.10113-5-matthew.auld@intel.com>
Message-ID: <157013162654.12787.4236534563799717031@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 03 Oct 2019 20:40:26 +0100
Subject: Re: [Intel-gfx] [PATCH v2 04/22] drm/i915/region: support volatile
 objects
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMTAtMDMgMjA6MjQ6MjYpCj4gIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdF9vcHMgZmFrZV9vcHMgPSB7Cj4gQEAgLTEzMSw2
ICsxMjgsOCBAQCBmYWtlX2RtYV9vYmplY3Qoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUs
IHU2NCBzaXplKQo+ICAgICAgICAgZHJtX2dlbV9wcml2YXRlX29iamVjdF9pbml0KCZpOTE1LT5k
cm0sICZvYmotPmJhc2UsIHNpemUpOwo+ICAgICAgICAgaTkxNV9nZW1fb2JqZWN0X2luaXQob2Jq
LCAmZmFrZV9vcHMpOwo+ICAKPiArICAgICAgIG9iai0+ZmxhZ3MgPSBJOTE1X0JPX0FMTE9DX1ZP
TEFUSUxFOwoKCW9iai0+ZmxhZ3MgfD0gSTkxNV9CT19BTExPQ19WT0xBVElMRQoKZXZlbiBkdXJp
bmcgZWFybHkgaW5pdCwgdGhlbiB3ZSB3aWxsIG5vdCBiZSBjYXVnaHQgb3V0IGlmIHdlIGFkZCBh
bgplYXJsaWVyIGZsYWcuCgoJaTkxNV9nZW1fb2JqZWN0X3NldF92b2xhdGlsZSgpCglpOTE1X2dl
bV9vYmplY3RfaXNfdm9sYXRpbGUoKQpoZWxwZXJzPwotQ2hyaXMKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
