Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A81216E3
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 12:22:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01B73898E4;
	Fri, 17 May 2019 10:22:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA794898E4
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 10:22:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16586744-1500050 
 for multiple; Fri, 17 May 2019 11:22:26 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 May 2019 11:22:23 +0100
Message-Id: <20190517102225.3069-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/gvt: Set return value for
 ppgtt_populate error path
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

Q2F1Z2h0IGJ5IHNtYXRjaDoKZHJpdmVycy9ncHUvZHJtL2k5MTUvL2d2dC9ndHQuYzoxMTA2IHBw
Z3R0X3BvcHVsYXRlX3NwdF9ieV9ndWVzdF9lbnRyeSgpIGVycm9yOiB1bmluaXRpYWxpemVkIHN5
bWJvbCAncmV0Jy4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgpDYzogWmhlbnl1IFdhbmcgPHpoZW55dXdAbGludXguaW50ZWwuY29tPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d2dC9ndHQuYyB8IDQgKysrLQogMSBmaWxlIGNoYW5nZWQs
IDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d2dC9ndHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d2dC9ndHQuYwppbmRl
eCAwOGM3NGU2NTgzNmIuLjI0NGFkMTcyOTc2NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3Z0L2d0dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d2dC9ndHQuYwpAQCAt
MTA3Niw4ICsxMDc2LDEwIEBAIHN0YXRpYyBzdHJ1Y3QgaW50ZWxfdmdwdV9wcGd0dF9zcHQgKnBw
Z3R0X3BvcHVsYXRlX3NwdF9ieV9ndWVzdF9lbnRyeSgKIAl9IGVsc2UgewogCQlpbnQgdHlwZSA9
IGdldF9uZXh0X3B0X3R5cGUod2UtPnR5cGUpOwogCi0JCWlmICghZ3R0X3R5cGVfaXNfcHQodHlw
ZSkpCisJCWlmICghZ3R0X3R5cGVfaXNfcHQodHlwZSkpIHsKKwkJCXJldCA9IC1FSU5WQUw7CiAJ
CQlnb3RvIGVycjsKKwkJfQogCiAJCXNwdCA9IHBwZ3R0X2FsbG9jX3NwdF9nZm4odmdwdSwgdHlw
ZSwgb3BzLT5nZXRfcGZuKHdlKSwgaXBzKTsKIAkJaWYgKElTX0VSUihzcHQpKSB7Ci0tIAoyLjIw
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
