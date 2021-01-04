Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E672E9EF0
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Jan 2021 21:39:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A90B8936C;
	Mon,  4 Jan 2021 20:39:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70A568936C
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Jan 2021 20:39:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23500471-1500050 
 for multiple; Mon, 04 Jan 2021 20:39:05 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Jan 2021 20:39:05 +0000
Message-Id: <20210104203905.19248-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Disable RPM wakeref assertions during
 driver shutdown
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXMgd2l0aCB0aGUgcmVndWxhciBzdXNwZW5kIHBhdGhzLCBhbHNvIGRpc2FibGUgdGhlIHdha2Vy
ZWYgYXNzZXJ0aW9ucwphcyB3ZSBkaXNhYmxlIHRoZSBkcml2ZXIgZHVyaW5nIHNodXRkb3duLgoK
UmVwb3J0ZWQtYnk6IEhhbnMgZGUgR29lZGUgPGhkZWdvZWRlQHJlZGhhdC5jb20+CkNsb3Nlczog
aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy8yODk5CkZp
eGVzOiBmZTBmMWUzYmZkZmUgKCJkcm0vaTkxNTogU2h1dCBkb3duIGRpc3BsYXlzIGdyYWNlZnVs
bHkgb24gcmVib290IikKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+CkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPgpDYzogSGFucyBkZSBHb2VkZSA8aGRlZ29lZGVAcmVkaGF0LmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIHwgNCArKysrCiAxIGZpbGUgY2hhbmdlZCwgNCBp
bnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKaW5kZXggMjQ5Zjc2NTk5M2Y3Li42
NDNhODk5YjNiNDQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwpAQCAtMTA0Niw2ICsxMDQ2LDgg
QEAgc3RhdGljIHZvaWQgaW50ZWxfc2h1dGRvd25fZW5jb2RlcnMoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KQogCiB2b2lkIGk5MTVfZHJpdmVyX3NodXRkb3duKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1KQogeworCWRpc2FibGVfcnBtX3dha2VyZWZfYXNzZXJ0cygmaTkx
NS0+cnVudGltZV9wbSk7CisKIAlpOTE1X2dlbV9zdXNwZW5kKGk5MTUpOwogCiAJZHJtX2ttc19o
ZWxwZXJfcG9sbF9kaXNhYmxlKCZpOTE1LT5kcm0pOwpAQCAtMTA1OSw2ICsxMDYxLDggQEAgdm9p
ZCBpOTE1X2RyaXZlcl9zaHV0ZG93bihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAog
CWludGVsX3N1c3BlbmRfZW5jb2RlcnMoaTkxNSk7CiAJaW50ZWxfc2h1dGRvd25fZW5jb2RlcnMo
aTkxNSk7CisKKwllbmFibGVfcnBtX3dha2VyZWZfYXNzZXJ0cygmaTkxNS0+cnVudGltZV9wbSk7
CiB9CiAKIHN0YXRpYyBib29sIHN1c3BlbmRfdG9faWRsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYpCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
