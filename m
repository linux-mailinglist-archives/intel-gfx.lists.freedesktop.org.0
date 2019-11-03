Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F77ED2C5
	for <lists+intel-gfx@lfdr.de>; Sun,  3 Nov 2019 10:51:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC1CD6E04A;
	Sun,  3 Nov 2019 09:51:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20AC36E04A
 for <intel-gfx@lists.freedesktop.org>; Sun,  3 Nov 2019 09:51:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19063525-1500050 
 for multiple; Sun, 03 Nov 2019 09:51:45 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  3 Nov 2019 09:51:45 +0000
Message-Id: <20191103095145.13243-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Drop false assertion on
 user_forcewake
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

VGhlIGNvdW50ZXIgaXMgcmVtb3ZlZCBmcm9tIHRoZSBwbSB3YWtlcmVmIGNvdW50LCBidXQgaXQg
cmVtYWlucyBpbnRhY3QKc28gdGhhdCB3ZSBjYW4gcmVzdG9yZSBpdCB1cG9uIHJlc3VtZS4gRXJn
byBpbnNpZGUgc3VzcGVuZCwgaXQgbWF5IGhhdmUKYSB2YWx1ZS4KClNpZ25lZC1vZmYtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2d0X3BtLmMgfCAxIC0KIDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9u
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmMKaW5kZXggNjM3NDc0NGJiNjVl
Li4wNjBhMjdkOWFmMzQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2d0X3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uYwpAQCAt
MjUxLDcgKzI1MSw2IEBAIHN0YXRpYyB2b2lkIHdhaXRfZm9yX3N1c3BlbmQoc3RydWN0IGludGVs
X2d0ICpndCkKIAkJaW50ZWxfZ3Rfc2V0X3dlZGdlZChndCk7CiAJfQogCi0JR0VNX0JVR19PTihh
dG9taWNfcmVhZCgmZ3QtPnVzZXJfd2FrZXJlZikpOwogCWludGVsX2d0X3BtX3dhaXRfZm9yX2lk
bGUoZ3QpOwogfQogCi0tIAoyLjI0LjAucmMyCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
