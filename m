Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AFCD8FDF57
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 14:51:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95D6A6E5F9;
	Fri, 15 Nov 2019 13:51:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74A8B6E5F9
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 13:51:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19213379-1500050 for multiple; Fri, 15 Nov 2019 13:51:36 +0000
MIME-Version: 1.0
To: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191115114549.23716-2-abdiel.janulgue@linux.intel.com>
References: <20191115114549.23716-1-abdiel.janulgue@linux.intel.com>
 <20191115114549.23716-2-abdiel.janulgue@linux.intel.com>
Message-ID: <157382589422.11997.1129540577222685173@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 15 Nov 2019 13:51:34 +0000
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Introduce
 DRM_I915_GEM_MMAP_OFFSET
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBBYmRpZWwgSmFudWxndWUgKDIwMTktMTEtMTUgMTE6NDU6NDcpCj4gK2k5MTVfZ2Vt
X21tYXBfb2Zmc2V0X2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGRybV9maWxlICpmaWxlKQo+ICB7Cj4g
LSAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX21tYXBfZ3R0ICphcmdzID0gZGF0YTsKPiArICAg
ICAgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShkZXYpOwo+ICsgICAg
ICAgc3RydWN0IGRybV9pOTE1X2dlbV9tbWFwX29mZnNldCAqYXJncyA9IGRhdGE7Cj4gKyAgICAg
ICBlbnVtIGk5MTVfbW1hcF90eXBlIHR5cGU7Cj4gKwo+ICsgICAgICAgc3dpdGNoIChhcmdzLT5m
bGFncykgewo+ICsgICAgICAgY2FzZSBJOTE1X01NQVBfT0ZGU0VUX0dUVDoKPiArICAgICAgICAg
ICAgICAgaWYgKCFpOTE1X2dndHRfaGFzX2FwZXJ0dXJlKCZpOTE1LT5nZ3R0KSkKPiArICAgICAg
ICAgICAgICAgICAgICAgICByZXR1cm4gLUVOT0RFVjsKPiArICAgICAgICAgICAgICAgdHlwZSA9
IEk5MTVfTU1BUF9UWVBFX0dUVDsKPiArICAgICAgICAgICAgICAgYnJlYWs7Cj4gKwo+ICsgICAg
ICAgY2FzZSBJOTE1X01NQVBfT0ZGU0VUX1dDOgo+ICsgICAgICAgICAgICAgICBpZiAoIWJvb3Rf
Y3B1X2hhcyhYODZfRkVBVFVSRV9QQVQpKQo+ICsgICAgICAgICAgICAgICAgICAgICAgIHJldHVy
biAtRU5PREVWOwo+ICsgICAgICAgICAgICAgICB0eXBlID0gSTkxNV9NTUFQX1RZUEVfV0M7Cj4g
KyAgICAgICAgICAgICAgIGJyZWFrOwo+ICsKPiArICAgICAgIGNhc2UgSTkxNV9NTUFQX09GRlNF
VF9XQjoKPiArICAgICAgICAgICAgICAgdHlwZSA9IEk5MTVfTU1BUF9UWVBFX1dCOwo+ICsgICAg
ICAgICAgICAgICBicmVhazsKPiArCj4gKyAgICAgICBjYXNlIEk5MTVfTU1BUF9PRkZTRVRfVUM6
Cj4gKyAgICAgICAgICAgICAgIGlmICghYm9vdF9jcHVfaGFzKFg4Nl9GRUFUVVJFX1BBVCkpCj4g
KyAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9ERVY7Cj4gKyAgICAgICAgICAgICAg
IHR5cGUgPSBJOTE1X01NQVBfVFlQRV9VQzsKPiArICAgICAgICAgICAgICAgYnJlYWs7Cj4gKwo+
ICsgICAgICAgZGVmYXVsdDoKPiArICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7Cj4gKyAg
ICAgICB9Cj4gIAo+ICAgICAgICAgcmV0dXJuIF9fYXNzaWduX2dlbV9vYmplY3RfbW1hcF9kYXRh
KGZpbGUsIGFyZ3MtPmhhbmRsZSwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBJOTE1X01NQVBfVFlQRV9HVFQsCgpzL1RZUEVfR1RUL3R5cGUvPwotQ2hyaXMK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
