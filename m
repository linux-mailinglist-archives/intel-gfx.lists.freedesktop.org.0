Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FCBFF5FAB
	for <lists+intel-gfx@lfdr.de>; Sat,  9 Nov 2019 16:10:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E7196E356;
	Sat,  9 Nov 2019 15:10:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 583076E356;
 Sat,  9 Nov 2019 15:10:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19141126-1500050 
 for multiple; Sat, 09 Nov 2019 15:10:04 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  9 Nov 2019 15:10:02 +0000
Message-Id: <20191109151002.20767-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_blits: Use common igt_fls()
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

aWd0X2F1eC5oIGFscmVhZHkgcHJvdmlkZXMgdGhlIG9wdGltYWwgaWd0X2ZscygpLCBzbyB1c2Ug
dGhhdCBpbgpwcmVmZXJlbmNlIHRvIG9wZW4gY29kaW5nIHRoZSBicnV0ZSBmb3JjZSB2ZXJzaW9u
LgoKUmVwb3J0ZWQtYnk6IFN0dWFydCBTdW1tZXJzIDxzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb20+
ClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpD
YzogU3R1YXJ0IFN1bW1lcnMgPHN0dWFydC5zdW1tZXJzQGludGVsLmNvbT4KLS0tCiB0ZXN0cy9p
OTE1L2dlbV9ibGl0cy5jIHwgMTIgKy0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDExIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX2Js
aXRzLmMgYi90ZXN0cy9pOTE1L2dlbV9ibGl0cy5jCmluZGV4IGUwMzQ2YTdjNy4uZjljYjEyYmI4
IDEwMDY0NAotLS0gYS90ZXN0cy9pOTE1L2dlbV9ibGl0cy5jCisrKyBiL3Rlc3RzL2k5MTUvZ2Vt
X2JsaXRzLmMKQEAgLTU3LDE2ICs1Nyw2IEBAIGVudW0gbW9kZSB7CiAJV0MsCiB9OwogCi1zdGF0
aWMgaW50IGZscyh1aW50NjRfdCB4KQotewotCWludCB0OwotCi0JZm9yICh0ID0gMDsgeCA+PiB0
OyB0KyspCi0JCTsKLQotCXJldHVybiB0OwotfQotCiBzdGF0aWMgdW5zaWduZWQgaW50CiBnZXRf
dGlsaW5nX3N0cmlkZShjb25zdCBzdHJ1Y3QgZGV2aWNlICpkZXZpY2UsCiAJCSAgdW5zaWduZWQg
aW50IHdpZHRoLCB1bnNpZ25lZCBpbnQgdGlsaW5nKQpAQCAtODEsNyArNzEsNyBAQCBnZXRfdGls
aW5nX3N0cmlkZShjb25zdCBzdHJ1Y3QgZGV2aWNlICpkZXZpY2UsCiAJCWVsc2UKIAkJCXN0cmlk
ZSA9IEFMSUdOKHN0cmlkZSwgMTI4KTsKIAkJaWYgKGRldmljZS0+Z2VuIDwgNCkKLQkJCXN0cmlk
ZSA9IDEgPDwgZmxzKHN0cmlkZSAtIDEpOworCQkJc3RyaWRlID0gMSA8PCBpZ3RfZmxzKHN0cmlk
ZSAtIDEpOwogCX0gZWxzZSB7CiAJCWlmIChkZXZpY2UtPmdlbiA+PSA4KQogCQkJc3RyaWRlID0g
QUxJR04oc3RyaWRlLCA2NCk7Ci0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
