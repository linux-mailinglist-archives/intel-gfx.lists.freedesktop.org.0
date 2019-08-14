Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 088B98D434
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2019 15:06:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68E0F6E5CC;
	Wed, 14 Aug 2019 13:06:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97B2E6E1F4
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2019 13:06:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18090226-1500050 for multiple; Wed, 14 Aug 2019 14:06:25 +0100
MIME-Version: 1.0
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190814124933.19056-2-daniel.vetter@ffwll.ch>
References: <20190814124933.19056-1-daniel.vetter@ffwll.ch>
 <20190814124933.19056-2-daniel.vetter@ffwll.ch>
Message-ID: <156578798373.2301.6366404568527437077@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 14 Aug 2019 14:06:23 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] RFC: drm/i915: Switch obj->mm.lock
 lockdep annotations on its head
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBEYW5pZWwgVmV0dGVyICgyMDE5LTA4LTE0IDEzOjQ5OjMzKQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmggYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmgKPiBpbmRleCBkNDc0
YzZhYzQxMDAuLjFlYTNjM2M5NmE1YSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmgKPiBAQCAtMTU3LDcgKzE1NywxNSBAQCBzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCB7Cj4gICAgICAgICB1bnNpZ25lZCBpbnQgcGluX2dsb2Jh
bDsKPiAgCj4gICAgICAgICBzdHJ1Y3Qgewo+IC0gICAgICAgICAgICAgICBzdHJ1Y3QgbXV0ZXgg
bG9jazsgLyogcHJvdGVjdHMgdGhlIHBhZ2VzIGFuZCB0aGVpciB1c2UgKi8KPiArICAgICAgICAg
ICAgICAgLyoKPiArICAgICAgICAgICAgICAgICogUHJvdGVjdHMgdGhlIHBhZ2VzIGFuZCB0aGVp
ciB1c2UuCj4gKyAgICAgICAgICAgICAgICAqCj4gKyAgICAgICAgICAgICAgICAqIElNUE9SVEFO
VDogSXQgaXMgbm90IGFsbG93ZWQgdG8gYWxsb2NhdGUgbWVtb3J5IHdoaWxlIGhvbGRpbmcKPiAr
ICAgICAgICAgICAgICAgICogdGhpcyBsb2NrLCBiZWNhdXNlIHRoZSBzaHJpbmtlciBtaWdodCBy
ZWN1cnNlIG9uIGl0LCBleGNlcHQKPiArICAgICAgICAgICAgICAgICogd2hlbiB0aGVyZSBhcmUg
bm8gcGFnZXMgYWxsb2NhdGVkIHlldCBhbmQgdGhlIG9iamVjdCBpc24ndAo+ICsgICAgICAgICAg
ICAgICAgKiB2aXNpYmxlIG9uIGFueSBMUlUuCgpJdCdzIG5vdCBtZWFudCB0byBiZSBwdWJsaWMg
ZnJlZS1mb3ItbG9jaywganVzdCB0byBndWFyZCB0aGUgdHJhbnNpdGlvbgpiZXR3ZWVuIDA8LT4x
LiBJbnNpZGUgdGhhdCB0cmFuc2l0aW9uIHdlIGRvIHBhZ2UgYWxsb2NhdGlvbnMuCgpFdmVyeW9u
ZSBlbHNlIHRha2VzIGEgcGluLgoKPiArICAgICAgICAgICAgICAgICovCj4gKyAgICAgICAgICAg
ICAgIHN0cnVjdCBtdXRleCBsb2NrOwo+ICAgICAgICAgICAgICAgICBhdG9taWNfdCBwYWdlc19w
aW5fY291bnQ7Cj4gIAo+ICAgICAgICAgICAgICAgICBzdHJ1Y3Qgc2dfdGFibGUgKnBhZ2VzOwo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcGFnZXMuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wYWdlcy5jCj4gaW5kZXggMThmMGNl
MDEzNWMxLi4zYjdlYzZlNmVhOGIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX3BhZ2VzLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fcGFnZXMuYwo+IEBAIC0xMDEsNyArMTAxLDcgQEAgaW50IF9faTkxNV9nZW1fb2JqZWN0
X2dldF9wYWdlcyhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQoKRndpdywgd2UgaGF2
ZSB1c2UgY2FzZXMgKGFuZCBwZW9wbGUgYXNraW5nIHdoZXJlIGFyZSB0aG9zZSBwYXRjaGVzKSBm
b3IKbmVzdGVkIGFsbG9jYXRpb25zLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
