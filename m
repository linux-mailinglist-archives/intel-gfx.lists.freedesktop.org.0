Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2A3CF5BD
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2019 11:12:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 596B86E2A5;
	Tue,  8 Oct 2019 09:12:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E10996E2A5
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2019 09:12:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18761022-1500050 for multiple; Tue, 08 Oct 2019 10:12:00 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191004170452.15410-6-matthew.auld@intel.com>
References: <20191004170452.15410-1-matthew.auld@intel.com>
 <20191004170452.15410-6-matthew.auld@intel.com>
Message-ID: <157052591867.5063.5857566324028823327@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 08 Oct 2019 10:11:58 +0100
Subject: Re: [Intel-gfx] [PATCH v3 05/21] drm/i915: Add memory region
 information to device_info
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMTAtMDQgMTg6MDQ6MzYpCj4gRnJvbTogQWJkaWVs
IEphbnVsZ3VlIDxhYmRpZWwuamFudWxndWVAbGludXguaW50ZWwuY29tPgo+IAo+IEV4cG9zZXMg
YXZhaWxhYmxlIHJlZ2lvbnMgZm9yIHRoZSBwbGF0Zm9ybS4gU2hhcmVkIG1lbW9yeSB3aWxsCj4g
YWx3YXlzIGJlIGF2YWlsYWJsZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBBYmRpZWwgSmFudWxndWUg
PGFiZGllbC5qYW51bGd1ZUBsaW51eC5pbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTWF0dGhl
dyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5oICAgICAgICAgIHwgMiArKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9kZXZpY2VfaW5mby5oIHwgMiArKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9u
cygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+IGluZGV4IGRjYmM2ZTYzOTRmYy4uYjdi
ZTQ2ZmFlZjJkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4gQEAgLTIxMjksNiArMjEy
OSw4IEBAIElTX1NVQlBMQVRGT1JNKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
LAo+ICAKPiAgI2RlZmluZSBIQVNfSVBDKGRldl9wcml2KSAgICAgICAgICAgICAgIChJTlRFTF9J
TkZPKGRldl9wcml2KS0+ZGlzcGxheS5oYXNfaXBjKQo+ICAKPiArI2RlZmluZSBIQVNfUkVHSU9O
KGk5MTUsIGkpIChJTlRFTF9JTkZPKGk5MTUpLT5tZW1vcnlfcmVnaW9ucyAmIChpKSkKCkhBU19S
RUdJT04oKSBpcyB2ZXJ5IHVuY2xlYXIuCgpIQVNfTUVNT1JZX1JFR0lPTigpID8KLUNocmlzCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
