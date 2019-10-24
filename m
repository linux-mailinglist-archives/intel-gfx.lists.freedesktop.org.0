Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0FA2E33A8
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 15:14:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDFF06E3EF;
	Thu, 24 Oct 2019 13:14:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B7F66E3F0
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 13:13:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18949966-1500050 
 for multiple; Thu, 24 Oct 2019 14:13:46 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Oct 2019 14:13:42 +0100
Message-Id: <20191024131343.16194-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc0
In-Reply-To: <20191024131343.16194-1-chris@chris-wilson.co.uk>
References: <20191024131343.16194-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 4/5] drm/i915: Drop GEM context reference while
 pinned
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

T3N0ZW5zaWJseSwgYXMgZmFyIHJlY29yZGVkIGF0IGxlYXN0LCB3ZSB0YWtlIGEgcmVmZXJlbmNl
IHRvIG91ciBHRU0KY29udGV4dCBwYXJlbnQgdG8ga2VlcCB0aGUgcHBndHQgYWxpdmUgYXMgbG9u
ZyBhcyB3ZSBhcmUgcGlubmVkLiBOb3cKdGhhdCB0aGUgY29udGV4dCBob2xkcyBhIHJlZmVyZW5j
ZSB0byB0aGUgcHBndHQgaXRzZWxmLCB3ZSBzaG91bGQgbm8KbG9uZ2VyIG5lZWQgdGhlIGJhY2sg
cmVmZXJlbmNlLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5jIHwg
MyAtLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2NvbnRleHQuYwppbmRleCA3MDc1ZDAzZjUwOGYuLjdiMDRhM2NhMTliZCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHQuYwpAQCAtNzIsOCArNzIsNiBAQCBp
bnQgX19pbnRlbF9jb250ZXh0X2RvX3BpbihzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpCiAJCQkg
IGNlLT5lbmdpbmUtPm5hbWUsIGNlLT50aW1lbGluZS0+ZmVuY2VfY29udGV4dCwKIAkJCSAgY2Ut
PnJpbmctPmhlYWQsIGNlLT5yaW5nLT50YWlsKTsKIAotCQlpOTE1X2dlbV9jb250ZXh0X2dldChj
ZS0+Z2VtX2NvbnRleHQpOyAvKiBmb3IgY3R4LT5wcGd0dCAqLwotCiAJCXNtcF9tYl9fYmVmb3Jl
X2F0b21pYygpOyAvKiBmbHVzaCBwaW4gYmVmb3JlIGl0IGlzIHZpc2libGUgKi8KIAl9CiAKQEAg
LTEwMyw3ICsxMDEsNiBAQCB2b2lkIGludGVsX2NvbnRleHRfdW5waW4oc3RydWN0IGludGVsX2Nv
bnRleHQgKmNlKQogCiAJCWNlLT5vcHMtPnVucGluKGNlKTsKIAotCQlpOTE1X2dlbV9jb250ZXh0
X3B1dChjZS0+Z2VtX2NvbnRleHQpOwogCQlpbnRlbF9jb250ZXh0X2FjdGl2ZV9yZWxlYXNlKGNl
KTsKIAl9CiAKLS0gCjIuMjQuMC5yYzAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
