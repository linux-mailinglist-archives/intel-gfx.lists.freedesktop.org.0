Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2516DC0CE4
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 22:51:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61DA06E241;
	Fri, 27 Sep 2019 20:51:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 952846E241
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 20:51:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18644623-1500050 for multiple; Fri, 27 Sep 2019 21:51:13 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190927173409.31175-19-matthew.auld@intel.com>
References: <20190927173409.31175-1-matthew.auld@intel.com>
 <20190927173409.31175-19-matthew.auld@intel.com>
Message-ID: <156961746953.1880.12952436820187719140@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 27 Sep 2019 21:51:09 +0100
Subject: Re: [Intel-gfx] [PATCH 18/22] drm/i915/selftests: check for missing
 aperture
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDktMjcgMTg6MzQ6MDUpCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfZ2VtLmMKPiBpbmRleCAzNzU5MzgzMWI1MzkuLjQ5NTE5
NTdhNGQ4ZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkx
NV9nZW0uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbS5j
Cj4gQEAgLTQyLDYgKzQyLDkgQEAgc3RhdGljIHZvaWQgdHJhc2hfc3RvbGVuKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1KQo+ICAgICAgICAgdW5zaWduZWQgbG9uZyBwYWdlOwo+ICAgICAg
ICAgdTMyIHBybmcgPSAweDEyMzQ1Njc4Owo+ICAKPiArICAgICAgIGlmICghSEFTX01BUFBBQkxF
X0FQRVJUVVJFKGk5MTUpKQo+ICsgICAgICAgICAgICAgICByZXR1cm47CgpUaGF0J3MgYSBiaXQg
b2YgYSBuYXN0eSBsb3NzIGluIGNvdmVyYWdlLiBOb3RlIHdlIG5lZWQgdG8gZXh0ZW5kIHRoaXMK
dGVzdCB0byB0cmFzaCBsbWVtIGFzIHdlbGwuIElkZWFzPyAoUG9zc2libHkgdXNpbmcgdGhlIEdQ
VSB0byB0cmFzaApldmVyeXRoaW5nIGJ1dCBpdHNlbGY/KQotQ2hyaXMKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
