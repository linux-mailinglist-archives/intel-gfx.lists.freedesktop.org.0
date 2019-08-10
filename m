Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C024D88A2E
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Aug 2019 11:03:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11DAF89B27;
	Sat, 10 Aug 2019 09:03:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C6B489B27
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Aug 2019 09:03:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17951199-1500050 
 for multiple; Sat, 10 Aug 2019 10:03:31 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 10 Aug 2019 10:03:29 +0100
Message-Id: <20190810090329.6966-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190810090329.6966-1-chris@chris-wilson.co.uk>
References: <20190810090329.6966-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Verify the engine setup after
 recording the defaults
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

Q2hlY2sgdGhhdCB0aGUgZW5naW5lIHcvYSBwZXJzaXN0IGFmdGVyIHdlIHBlcmZvcm1lZCBhIGNv
bnRleHQgc3dpdGNoCmFuZCByZWNvcmQgdGhvc2Ugdy9hIGludG8gdGhlIGRlZmF1bHQgY29udGV4
dCBzdGF0ZS4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgpDYzogQW5kaSBTaHl0aSA8YW5kaS5zaHl0aUBpbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwppbmRleCA2
ZmYwMWE0MDQzNDYuLmFmZjk4ODVlNDQzZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCkBAIC0x
NDg2LDExICsxNDg2LDExIEBAIGludCBpOTE1X2dlbV9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdikKIAkgKi8KIAlpbnRlbF9pbml0X2Nsb2NrX2dhdGluZyhkZXZfcHJpdik7
CiAKLQlyZXQgPSBpbnRlbF9lbmdpbmVzX3ZlcmlmeV93b3JrYXJvdW5kcyhkZXZfcHJpdik7CisJ
cmV0ID0gX19pbnRlbF9lbmdpbmVzX3JlY29yZF9kZWZhdWx0cyhkZXZfcHJpdik7CiAJaWYgKHJl
dCkKIAkJZ290byBlcnJfZ3Q7CiAKLQlyZXQgPSBfX2ludGVsX2VuZ2luZXNfcmVjb3JkX2RlZmF1
bHRzKGRldl9wcml2KTsKKwlyZXQgPSBpbnRlbF9lbmdpbmVzX3ZlcmlmeV93b3JrYXJvdW5kcyhk
ZXZfcHJpdik7CiAJaWYgKHJldCkKIAkJZ290byBlcnJfZ3Q7CiAKLS0gCjIuMjMuMC5yYzEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
