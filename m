Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17B5ABDE09
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 14:25:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41DAF6E02A;
	Wed, 25 Sep 2019 12:25:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACE606E02A
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 12:25:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18611563-1500050 
 for multiple; Wed, 25 Sep 2019 13:25:15 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Sep 2019 13:25:10 +0100
Message-Id: <20190925122510.27330-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Swap rps disable for rc6 disable
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

U3RpbGwgc2VhcmNoaW5nIHRvIHRoZSBzd2VldHNwb3QgdG8gbGVhdmUgQ0kgYWxpdmUgYXMgd2Ug
ZmlndXJlIG91dCB0aGUKcm9vdCBjYXVzZS4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFs
YUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYyB8
IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3BjaS5jCmluZGV4IGVhNTNkZmUyZmJhMC4uZTBiMzc2ZWU0MGZmIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcGNpLmMKQEAgLTgwNyw3ICs4MDcsNyBAQCBzdGF0aWMgY29uc3Qgc3Ry
dWN0IGludGVsX2RldmljZV9pbmZvIGludGVsX3RpZ2VybGFrZV8xMl9pbmZvID0gewogCS5kaXNw
bGF5Lmhhc19tb2R1bGFyX2ZpYSA9IDEsCiAJLmVuZ2luZV9tYXNrID0KIAkJQklUKFJDUzApIHwg
QklUKEJDUzApIHwgQklUKFZFQ1MwKSB8IEJJVChWQ1MwKSB8IEJJVChWQ1MyKSwKLQkuaGFzX3Jw
cyA9IGZhbHNlLCAvKiBYWFggZGlzYWJsZWQgZm9yIGRlYnVnZ2luZyAqLworCS5oYXNfcmM2ID0g
ZmFsc2UsIC8qIFhYWCBkaXNhYmxlZCBmb3IgZGVidWdnaW5nICovCiB9OwogCiAjdW5kZWYgR0VO
Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
