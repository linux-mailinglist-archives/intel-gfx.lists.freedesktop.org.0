Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE9C955627
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 19:46:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEAD06E16D;
	Tue, 25 Jun 2019 17:46:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D84706E1B9
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 17:46:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17021747-1500050 
 for multiple; Tue, 25 Jun 2019 18:45:51 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jun 2019 18:45:47 +0100
Message-Id: <20190625174547.22164-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/guc: Compact init params debug to a
 single line
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

VXNlIGhleF9kdW1wX3RvX2J1ZmZlcigpIHRvIGNvbXByZXNzIHRoZSBwYXJhbWV0ZXIgZGVidWcg
aW50byBhIHNpbmdsZQpsaW5lIGZvciBsZXNzIHZlcmJvc2UgZGVidWcgbG9ncy4KClNpZ25lZC1v
ZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTWljaGFs
IFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfZ3VjLmMgfCA2ICsrKystLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9ndWMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Yy5jCmluZGV4IGM0
MGE2ZWZkZDMzYS4uNDQ3ZjFkZTE1Mjg5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9ndWMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWMuYwpAQCAt
MzY3LDYgKzM2Nyw3IEBAIHN0YXRpYyB1MzIgZ3VjX2N0bF9hZHNfZmxhZ3Moc3RydWN0IGludGVs
X2d1YyAqZ3VjKQogdm9pZCBpbnRlbF9ndWNfaW5pdF9wYXJhbXMoc3RydWN0IGludGVsX2d1YyAq
Z3VjKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGd1Y190b19pOTE1
KGd1Yyk7CisJY2hhciBidWZbR1VDX0NUTF9NQVhfRFdPUkRTICogMTBdOwogCXUzMiBwYXJhbXNb
R1VDX0NUTF9NQVhfRFdPUkRTXTsKIAlpbnQgaTsKIApAQCAtMzc4LDggKzM3OSw5IEBAIHZvaWQg
aW50ZWxfZ3VjX2luaXRfcGFyYW1zKHN0cnVjdCBpbnRlbF9ndWMgKmd1YykKIAlwYXJhbXNbR1VD
X0NUTF9ERUJVR10gPSBndWNfY3RsX2RlYnVnX2ZsYWdzKGd1Yyk7CiAJcGFyYW1zW0dVQ19DVExf
QURTXSA9IGd1Y19jdGxfYWRzX2ZsYWdzKGd1Yyk7CiAKLQlmb3IgKGkgPSAwOyBpIDwgR1VDX0NU
TF9NQVhfRFdPUkRTOyBpKyspCi0JCURSTV9ERUJVR19EUklWRVIoInBhcmFtWyUyZF0gPSAlI3hc
biIsIGksIHBhcmFtc1tpXSk7CisJaGV4X2R1bXBfdG9fYnVmZmVyKHBhcmFtcywgc2l6ZW9mKHBh
cmFtcyksCisJCQkgICAzMiwgNCwgYnVmLCBzaXplb2YoYnVmKSwgZmFsc2UpOworCURSTV9ERUJV
R19EUklWRVIoInBhcmFtc1slc11cbiIsIGJ1Zik7CiAKIAkvKgogCSAqIEFsbCBTT0ZUX1NDUkFU
Q0ggcmVnaXN0ZXJzIGFyZSBpbiBGT1JDRVdBS0VfQkxJVFRFUiBkb21haW4gYW5kCi0tIAoyLjIw
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
