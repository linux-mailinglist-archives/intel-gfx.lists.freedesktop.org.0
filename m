Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC2FAD3D78
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 12:34:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24EEA6EBFD;
	Fri, 11 Oct 2019 10:34:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA6226EBFD
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 10:34:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18801929-1500050 
 for multiple; Fri, 11 Oct 2019 11:33:47 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Oct 2019 11:33:45 +0100
Message-Id: <20191011103345.26013-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Only mark incomplete
 requests as -EIO on cancelling
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

T25seSB0aGUgcmVxdWVzdHMgdGhhdCBoYXZlIG5vdCBjb21wbGV0ZWQgZG8gd2Ugd2FudCB0byBj
aGFuZ2UgdGhlCnN0YXR1cyBvZiB0byBzaWduYWwgdGhlIC1FSU8gd2hlbiBjYW5jZWxsaW5nIHRo
ZSBpbmZsaWdodCBzZXQgb2YgcmVxdWVzdHMKdXBvbiB3ZWRnaW5nLgoKUmVwb3J0ZWQtYnk6IFR2
cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogVHZydGtvIFVyc3VsaW4g
PHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9scmMuYyB8IDggKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyks
IDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwppbmRleCBiMDA0
OTljYzc1ODYuLjFmNDc3MjMyOTAyMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfbHJjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMK
QEAgLTI0Nyw4ICsyNDcsMTIgQEAgc3RhdGljIHZvaWQgX19jb250ZXh0X3Bpbl9yZWxlYXNlKHN0
cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKIAogc3RhdGljIHZvaWQgbWFya19laW8oc3RydWN0IGk5
MTVfcmVxdWVzdCAqcnEpCiB7Ci0JaWYgKCFpOTE1X3JlcXVlc3Rfc2lnbmFsZWQocnEpKQotCQlk
bWFfZmVuY2Vfc2V0X2Vycm9yKCZycS0+ZmVuY2UsIC1FSU8pOworCWlmIChpOTE1X3JlcXVlc3Rf
Y29tcGxldGVkKHJxKSkKKwkJcmV0dXJuOworCisJR0VNX0JVR19PTihpOTE1X3JlcXVlc3Rfc2ln
bmFsZWQocnEpKTsKKworCWRtYV9mZW5jZV9zZXRfZXJyb3IoJnJxLT5mZW5jZSwgLUVJTyk7CiAJ
aTkxNV9yZXF1ZXN0X21hcmtfY29tcGxldGUocnEpOwogfQogCi0tIAoyLjIzLjAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
