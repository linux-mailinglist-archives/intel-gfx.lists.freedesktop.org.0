Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A0E632C2
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 10:15:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36C90896DD;
	Tue,  9 Jul 2019 08:15:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F7FF896DD
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 08:15:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17179858-1500050 for multiple; Tue, 09 Jul 2019 09:15:12 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <a1b98a1b-d08a-75f6-e54b-4dbe0c884b20@intel.com>
References: <20190705074604.16496-1-chris@chris-wilson.co.uk>
 <20190705074604.16496-8-chris@chris-wilson.co.uk>
 <a1b98a1b-d08a-75f6-e54b-4dbe0c884b20@intel.com>
Message-ID: <156266011018.9375.9474541222497448772@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 09 Jul 2019 09:15:10 +0100
Subject: Re: [Intel-gfx] [PATCH 8/8] drm/i915/gt: Use intel_gt as the
 primary object for handling resets
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA3LTA4IDIzOjQ4OjUxKQo+IE9u
IDcvNS8xOSAxMjo0NiBBTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2hhbmdjaGVjay5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfaGFuZ2NoZWNrLmMKPiA+IGluZGV4IDJkOWNjM2NkMWYyNy4u
OGNhYWQxOTY4M2ExIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2Vs
ZnRlc3RfaGFuZ2NoZWNrLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0
ZXN0X2hhbmdjaGVjay5jCj4gCj4gPiBAQCAtNDQyLDcgKzQ0MSw3IEBAIHN0YXRpYyBpbnQgaWd0
X3Jlc2V0X25vcCh2b2lkICphcmcpCj4gPiAgIAo+ID4gICBvdXQ6Cj4gPiAgICAgICBtb2NrX2Zp
bGVfZnJlZShpOTE1LCBmaWxlKTsKPiA+IC0gICAgIGlmIChpOTE1X3Jlc2V0X2ZhaWxlZChpOTE1
KSkKPiA+ICsgICAgIGlmIChpbnRlbF9ndF9pc193ZWRnZWQoJmk5MTUtPmd0KSkKPiAKPiAmaTkx
NS0+Z3QgaXMgdXNlZCA1IHRpbWVzIGluIGlndF9yZXNldF9ub3AoKSwgbWlnaHQgYmUgd29ydGgg
aGF2aW5nIGEgCj4gbG9jYWwgdmFyaWFibGUuCgpPaCwgdGhpcyBpcyBiZWZvcmUgaW50ZWxfZ3Rf
bGl2ZV9zZWxmdGVzdHMoKSA6KQoKSSBjaGFuZ2VkIGl0IHNvIHRoYXQgd2UgcGFzc2VkIGludGVs
X2d0IGFzIHRoZSBhcmcgdG8gdGhlc2Ugc2VsZnRlc3RzLgotQ2hyaXMKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
