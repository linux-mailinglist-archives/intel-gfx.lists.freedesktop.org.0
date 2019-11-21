Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC82104F50
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 10:33:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8ABB86EC3C;
	Thu, 21 Nov 2019 09:33:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7426F6EC3C
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Nov 2019 09:33:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19282562-1500050 
 for multiple; Thu, 21 Nov 2019 09:33:29 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Nov 2019 09:33:26 +0000
Message-Id: <20191121093326.134774-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Hold request reference while
 waiting for w/a verification
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

QXMgd2Ugd2FpdCB1cG9uIGEgcmVxdWVzdCwgd2UgbXVzdCBiZSBob2xkaW5nIGEgcmVmZXJlbmNl
IHRvIGl0LCBhbmQgYmUKd2FyeSB0aGF0IGk5MTVfcmVxdWVzdF9hZGQoKSBjb25zdW1lcyB0aGUg
cGFzc2VkIGluIHJlZmVyZW5jZS4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgpDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5j
IHwgNyArKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91
bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCmluZGV4
IDM5OWFjYWUyZjMzZi4uMjI2YmQ0Y2NjYjQ4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3dvcmthcm91bmRzLmMKQEAgLTE1OTIsMTYgKzE1OTIsMTcgQEAgc3RhdGljIGludCBl
bmdpbmVfd2FfbGlzdF92ZXJpZnkoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLAogCWlmIChlcnIp
CiAJCWdvdG8gZXJyX3ZtYTsKIAorCWk5MTVfcmVxdWVzdF9nZXQocnEpOwogCWk5MTVfcmVxdWVz
dF9hZGQocnEpOwogCWlmIChpOTE1X3JlcXVlc3Rfd2FpdChycSwgMCwgSFogLyA1KSA8IDApIHsK
IAkJZXJyID0gLUVUSU1FOwotCQlnb3RvIGVycl92bWE7CisJCWdvdG8gZXJyX3JxOwogCX0KIAog
CXJlc3VsdHMgPSBpOTE1X2dlbV9vYmplY3RfcGluX21hcCh2bWEtPm9iaiwgSTkxNV9NQVBfV0Ip
OwogCWlmIChJU19FUlIocmVzdWx0cykpIHsKIAkJZXJyID0gUFRSX0VSUihyZXN1bHRzKTsKLQkJ
Z290byBlcnJfdm1hOworCQlnb3RvIGVycl9ycTsKIAl9CiAKIAllcnIgPSAwOwpAQCAtMTYxNSw2
ICsxNjE2LDggQEAgc3RhdGljIGludCBlbmdpbmVfd2FfbGlzdF92ZXJpZnkoc3RydWN0IGludGVs
X2NvbnRleHQgKmNlLAogCiAJaTkxNV9nZW1fb2JqZWN0X3VucGluX21hcCh2bWEtPm9iaik7CiAK
K2Vycl9ycToKKwlpOTE1X3JlcXVlc3RfcHV0KHJxKTsKIGVycl92bWE6CiAJaTkxNV92bWFfdW5w
aW4odm1hKTsKIAlpOTE1X3ZtYV9wdXQodm1hKTsKLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
