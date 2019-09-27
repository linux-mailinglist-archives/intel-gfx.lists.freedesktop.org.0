Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B84C0CD3
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 22:49:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16B4B6E23D;
	Fri, 27 Sep 2019 20:49:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FF616E23D
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 20:49:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18644609-1500050 for multiple; Fri, 27 Sep 2019 21:49:07 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190927173409.31175-18-matthew.auld@intel.com>
References: <20190927173409.31175-1-matthew.auld@intel.com>
 <20190927173409.31175-18-matthew.auld@intel.com>
Message-ID: <156961734287.1880.18438163794850987914@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 27 Sep 2019 21:49:02 +0100
Subject: Re: [Intel-gfx] [PATCH 17/22] drm/i915: set num_fence_regs to 0 if
 there is no aperture
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
Cc: daniel.vetter@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDktMjcgMTg6MzQ6MDQpCj4gRnJvbTogRGFuaWVs
ZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiAKPiBX
ZSBjYW4ndCBmZW5jZSBhbnl0aGluZyB3aXRob3V0IGFwZXJ0dXJlLgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5j
b20+Cj4gU2lnbmVkLW9mZi1ieTogU3R1YXJ0IFN1bW1lcnMgPHN0dWFydC5zdW1tZXJzQGludGVs
LmNvbT4KPiBDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgo+IC0tLQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9mZW5jZV9yZWcuYyB8IDYgKysrKy0tCj4g
IDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2ZlbmNlX3JlZy5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZmVuY2VfcmVnLmMKPiBpbmRleCA2MTVhOWY0ZWYz
MGMuLmUxNWU0ZTI0NzU3NiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dlbV9mZW5jZV9yZWcuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2Zl
bmNlX3JlZy5jCj4gQEAgLTgyOCw4ICs4MjgsMTAgQEAgdm9pZCBpOTE1X2dndHRfaW5pdF9mZW5j
ZXMoc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCkKPiAgCj4gICAgICAgICBkZXRlY3RfYml0XzZfc3dp
enpsZShpOTE1KTsKPiAgCj4gLSAgICAgICBpZiAoSU5URUxfR0VOKGk5MTUpID49IDcgJiYKPiAt
ICAgICAgICAgICAhKElTX1ZBTExFWVZJRVcoaTkxNSkgfHwgSVNfQ0hFUlJZVklFVyhpOTE1KSkp
Cj4gKyAgICAgICBpZiAoIUhBU19NQVBQQUJMRV9BUEVSVFVSRShpOTE1KSkKCllvdSBoYXZlIHRo
ZSBhY3R1YWwgaTkxNV9nZ3R0IQotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
