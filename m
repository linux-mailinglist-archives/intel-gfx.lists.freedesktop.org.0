Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA595E5DD
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 15:58:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF5CA899BE;
	Wed,  3 Jul 2019 13:58:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FBDA899BE
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 13:58:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17115755-1500050 
 for multiple; Wed, 03 Jul 2019 14:58:10 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Jul 2019 14:58:04 +0100
Message-Id: <20190703135805.7310-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Dump w/a lists on all engines
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

V2Ugc3RvcmUgc2VwYXJhdGUgd2FfbGlzdCBvbiBldmVyeSBlbmdpbmUsIHNvIGJlIHN1cmUgdG8g
aW5jbHVkZSBhbGwKd2hlbiBkdW1waW5nIHRoZSBjdXJyZW50IHNldCB2aWEgZGVidWdmcy4KClNp
Z25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzog
VHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyB8IDI4ICsrKysrKysrKysrKysrKysrKysrKy0tLS0t
LS0KIDEgZmlsZSBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKaW5kZXggNjM0MGNlYzczM2QyLi5mYThmZjI3MDRi
NmUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCkBAIC0yOTYwLDE0ICsyOTYwLDI4
IEBAIHN0YXRpYyBpbnQgaTkxNV9zaGFyZWRfZHBsbHNfaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0s
IHZvaWQgKnVudXNlZCkKIHN0YXRpYyBpbnQgaTkxNV93YV9yZWdpc3RlcnMoc3RydWN0IHNlcV9m
aWxlICptLCB2b2lkICp1bnVzZWQpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUg
PSBub2RlX3RvX2k5MTUobS0+cHJpdmF0ZSk7Ci0JY29uc3Qgc3RydWN0IGk5MTVfd2FfbGlzdCAq
d2FsID0gJmk5MTUtPmVuZ2luZVtSQ1MwXS0+Y3R4X3dhX2xpc3Q7Ci0Jc3RydWN0IGk5MTVfd2Eg
KndhOwotCXVuc2lnbmVkIGludCBpOworCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZTsK
KwllbnVtIGludGVsX2VuZ2luZV9pZCBpZDsKIAotCXNlcV9wcmludGYobSwgIldvcmthcm91bmRz
IGFwcGxpZWQ6ICV1XG4iLCB3YWwtPmNvdW50KTsKLQlmb3IgKGkgPSAwLCB3YSA9IHdhbC0+bGlz
dDsgaSA8IHdhbC0+Y291bnQ7IGkrKywgd2ErKykKLQkJc2VxX3ByaW50ZihtLCAiMHglWDogMHgl
MDhYLCBtYXNrOiAweCUwOFhcbiIsCi0JCQkgICBpOTE1X21taW9fcmVnX29mZnNldCh3YS0+cmVn
KSwgd2EtPnZhbCwgd2EtPm1hc2spOworCWZvcl9lYWNoX2VuZ2luZShlbmdpbmUsIGk5MTUsIGlk
KSB7CisJCWNvbnN0IHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCA9ICZlbmdpbmUtPmN0eF93YV9s
aXN0OworCQljb25zdCBzdHJ1Y3QgaTkxNV93YSAqd2E7CisJCXVuc2lnbmVkIGludCBjb3VudDsK
KworCQljb3VudCA9IHdhbC0+Y291bnQ7CisJCWlmICghY291bnQpCisJCQljb250aW51ZTsKKwor
CQlzZXFfcHJpbnRmKG0sICIlczogV29ya2Fyb3VuZHMgYXBwbGllZDogJXVcbiIsCisJCQkgICBl
bmdpbmUtPm5hbWUsIGNvdW50KTsKKworCQlmb3IgKHdhID0gd2FsLT5saXN0OyBjb3VudC0tOyB3
YSsrKQorCQkJc2VxX3ByaW50ZihtLCAiMHglWDogMHglMDhYLCBtYXNrOiAweCUwOFhcbiIsCisJ
CQkJICAgaTkxNV9tbWlvX3JlZ19vZmZzZXQod2EtPnJlZyksCisJCQkJICAgd2EtPnZhbCwgd2Et
Pm1hc2spOworCisJCXNlcV9wcmludGYobSwgIlxuIik7CisJfQogCiAJcmV0dXJuIDA7CiB9Ci0t
IAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
