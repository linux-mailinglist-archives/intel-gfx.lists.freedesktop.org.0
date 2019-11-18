Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A7B85100194
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 10:44:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 652F589E03;
	Mon, 18 Nov 2019 09:44:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7465F89E03
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 09:44:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19238172-1500050 
 for multiple; Mon, 18 Nov 2019 09:43:42 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Nov 2019 09:43:42 +0000
Message-Id: <20191118094342.2193485-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Add
 intel_gt_driver_late_release for mock device
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

SGF2aW5nIGNhbGxlZCBpbnRlbF9ndF9pbml0X2Vhcmx5KCkgdG8gc2V0dXAgdGhlIG1vY2sgaW50
ZWxfZ3QsIHdlIG5lZWQKdG8gY2FsbCB0aGUgY29ycmVzcG9uZGluZyBpbnRlbF9ndF9kcml2ZXJf
bGF0ZV9yZWxlYXNlKCkgdG8gY2xlYW4gdXAuCgpSZWZlcmVuY2VzOiBkZWEzOTdlODE4YjEgKCJk
cm0vaTkxNS9ndDogRmx1c2ggcmV0aXJlLndvcmsgdGltZXIgb2JqZWN0IG9uIHVubG9hZCIpClJl
ZmVyZW5jZXM6IDI0NjM1YzUxNTJhZiAoImRybS9pOTE1OiBNb3ZlIGludGVsX2d0IGluaXRpYWxp
emF0aW9uIHRvIGEgc2VwYXJhdGUgZmlsZSIpClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1
bGluQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja19n
ZW1fZGV2aWNlLmMgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL21vY2tfZ2VtX2RldmljZS5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL21vY2tfZ2VtX2RldmljZS5jCmluZGV4
IGU1OGIwYmM5Y2RiNi4uZDE0YmE4NDk4ZjU3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9zZWxmdGVzdHMvbW9ja19nZW1fZGV2aWNlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvc2VsZnRlc3RzL21vY2tfZ2VtX2RldmljZS5jCkBAIC03MSw2ICs3MSw3IEBAIHN0YXRpYyB2
b2lkIG1vY2tfZGV2aWNlX3JlbGVhc2Uoc3RydWN0IGRybV9kZXZpY2UgKmRldikKIAltb2NrX2Zp
bmlfZ2d0dCgmaTkxNS0+Z2d0dCk7CiAJZGVzdHJveV93b3JrcXVldWUoaTkxNS0+d3EpOwogCisJ
aW50ZWxfZ3RfZHJpdmVyX2xhdGVfcmVsZWFzZSgmaTkxNS0+Z3QpOwogCWludGVsX21lbW9yeV9y
ZWdpb25zX2RyaXZlcl9yZWxlYXNlKGk5MTUpOwogCiAJZHJtX21vZGVfY29uZmlnX2NsZWFudXAo
Jmk5MTUtPmRybSk7CkBAIC0yMDQsNiArMjA1LDcgQEAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Km1vY2tfZ2VtX2RldmljZSh2b2lkKQogZXJyX3VubG9jazoKIAlkZXN0cm95X3dvcmtxdWV1ZShp
OTE1LT53cSk7CiBlcnJfZHJ2OgorCWludGVsX2d0X2RyaXZlcl9sYXRlX3JlbGVhc2UoJmk5MTUt
Pmd0KTsKIAlpbnRlbF9tZW1vcnlfcmVnaW9uc19kcml2ZXJfcmVsZWFzZShpOTE1KTsKIAlkcm1f
bW9kZV9jb25maWdfY2xlYW51cCgmaTkxNS0+ZHJtKTsKIAlkcm1fZGV2X2ZpbmkoJmk5MTUtPmRy
bSk7Ci0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
