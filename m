Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 91BA62CF1BD
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 17:16:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA4F389E03;
	Fri,  4 Dec 2020 16:16:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB15E89E03
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Dec 2020 16:16:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23216919-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Dec 2020 16:16:02 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Dec 2020 16:16:01 +0000
Message-Id: <20201204161601.20897-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915: Disable outputs during unregister
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U3dpdGNoIG9mZiB0aGUgc2Nhbm91dCBkdXJpbmcgZHJpdmVyIHVucmVnaXN0ZXIsIHNvIHdlIGNh
biBzaHV0ZG93biB0aGUKSFcgaW1tZWRpYXRlbHkgZm9yIHVuYmluZC4KCnYyOiBSZW1vdmUgdGhl
IG9sZCBzaHV0ZG93biBmcm9tIHJlbW92ZSwgaXQgc2hvdWxkIG5vdyBiZSByZWR1bmRhbnQuCgpT
aWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KUmV2
aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyB8IDMgKy0tCiAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmMKaW5kZXggMzIwODU2YjY2NWExLi41NzA4ZTExZDkxN2IgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuYwpAQCAtNzM4LDYgKzczOCw3IEBAIHN0YXRpYyB2b2lkIGk5MTVfZHJpdmVyX3VucmVnaXN0
ZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCSAqIGV2ZW50cy4KIAkgKi8K
IAlkcm1fa21zX2hlbHBlcl9wb2xsX2ZpbmkoJmRldl9wcml2LT5kcm0pOworCWRybV9hdG9taWNf
aGVscGVyX3NodXRkb3duKCZkZXZfcHJpdi0+ZHJtKTsKIAogCWludGVsX2d0X2RyaXZlcl91bnJl
Z2lzdGVyKCZkZXZfcHJpdi0+Z3QpOwogCWFjcGlfdmlkZW9fdW5yZWdpc3RlcigpOwpAQCAtOTQw
LDggKzk0MSw2IEBAIHZvaWQgaTkxNV9kcml2ZXJfcmVtb3ZlKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1KQogCiAJaTkxNV9nZW1fc3VzcGVuZChpOTE1KTsKIAotCWRybV9hdG9taWNfaGVs
cGVyX3NodXRkb3duKCZpOTE1LT5kcm0pOwotCiAJaW50ZWxfZ3Z0X2RyaXZlcl9yZW1vdmUoaTkx
NSk7CiAKIAlpbnRlbF9tb2Rlc2V0X2RyaXZlcl9yZW1vdmUoaTkxNSk7Ci0tIAoyLjIwLjEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
