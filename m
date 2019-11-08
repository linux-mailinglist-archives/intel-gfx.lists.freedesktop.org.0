Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93477F4DFC
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 15:23:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D0466F9B5;
	Fri,  8 Nov 2019 14:23:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DA526F9B3
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 14:23:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19129667-1500050 
 for multiple; Fri, 08 Nov 2019 14:22:51 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Nov 2019 14:22:49 +0000
Message-Id: <20191108142250.22709-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191108142250.22709-1-chris@chris-wilson.co.uk>
References: <20191108142250.22709-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 2/3] i915/gem_exec_fence: Allow GPU resets
 during hang checks
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

VGhlIHBhaXIgb2YgKi1oYW5nLWFsbCB3aWxsIGdlbmVyYXRlIHN1ZmZpY2llbnQgaGFuZ3MgZm9y
IHRoZSBrZXJuZWwgdG8KYmFuIHRoZSBjbGllbnQuIFRoaXMgaXMgdW5mb3J0dW5hdGUgYXMgaXQg
bWVhbnMgYWxsIGZ1cnRoZXIgdGVzdHMgYXJlCnNraXBwZWQuIEFzayBuaWNlbHkgbm90IHRvIGJl
IGJhbm5lZC4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgotLS0KIHRlc3RzL2k5MTUvZ2VtX2V4ZWNfZmVuY2UuYyB8IDcgKysrKysrKwogMSBm
aWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2Vt
X2V4ZWNfZmVuY2UuYyBiL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfZmVuY2UuYwppbmRleCBkMmQyNmEy
OGIuLjRlOGJkZDdiMyAxMDA2NDQKLS0tIGEvdGVzdHMvaTkxNS9nZW1fZXhlY19mZW5jZS5jCisr
KyBiL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfZmVuY2UuYwpAQCAtMTUyMiw2ICsxNTIyLDggQEAgaWd0
X21haW4KIAl9CiAKIAlpZ3Rfc3VidGVzdF9ncm91cCB7CisJCWlndF9oYW5nX3QgaGFuZzsKKwog
CQlpZ3RfZml4dHVyZSB7CiAJCQlpZ3RfZm9ya19oYW5nX2RldGVjdG9yKGk5MTUpOwogCQl9CkBA
IC0xNTMzLDEyICsxNTM1LDE3IEBAIGlndF9tYWluCiAKIAkJaWd0X2ZpeHR1cmUgewogCQkJaWd0
X3N0b3BfaGFuZ19kZXRlY3RvcigpOworCQkJaGFuZyA9IGlndF9hbGxvd19oYW5nKGk5MTUsIDAs
IDApOwogCQl9CiAKIAkJaWd0X3N1YnRlc3QoImJ1c3ktaGFuZy1hbGwiKQogCQkJdGVzdF9mZW5j
ZV9idXN5X2FsbChpOTE1LCBIQU5HKTsKIAkJaWd0X3N1YnRlc3QoIndhaXQtaGFuZy1hbGwiKQog
CQkJdGVzdF9mZW5jZV9idXN5X2FsbChpOTE1LCBXQUlUIHwgSEFORyk7CisKKwkJaWd0X2ZpeHR1
cmUgeworCQkJaWd0X2Rpc2FsbG93X2hhbmcoaTkxNSwgaGFuZyk7CisJCX0KIAl9CiAKIAlmb3Ig
KGUgPSBpbnRlbF9leGVjdXRpb25fZW5naW5lczsgZS0+bmFtZTsgZSsrKSB7Ci0tIAoyLjI0LjAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
