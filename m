Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF14BE5EB6
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Oct 2019 20:48:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84D856E126;
	Sat, 26 Oct 2019 18:48:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 359EE6E126
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Oct 2019 18:48:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18977036-1500050 
 for multiple; Sat, 26 Oct 2019 19:47:54 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 26 Oct 2019 19:47:52 +0100
Message-Id: <20191026184752.6806-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191026183522.6464-1-chris@chris-wilson.co.uk>
References: <20191026183522.6464-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Simply walk back along
 request timeline on reset
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

VGhlIHJlcXVlc3QncyB0aW1lbGluZSB3aWxsIG9ubHkgY29udGFpbiByZXF1ZXN0cyBmcm9tIHRo
aXMgY29udGV4dCwgaW4Kb3JkZXIgb2YgZXhlY3V0aW9uLiBUaGVyZWZvcmUsIHdlIGNhbiBzaW1w
bHkgbG9vayBiYWNrIGFsb25nIHRoaXMKdGltZWxpbmUgdG8gZmluZCB0aGUgY3VycmVudGx5IGV4
ZWN1dGluZyByZXF1ZXN0LgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMg
fCAxMSArKystLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgOCBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCmluZGV4IDE2MzQwNzQwMTM5
ZC4uZWY2ZGM2YWZkMTM1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9scmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwpAQCAtMjUy
LDIyICsyNTIsMTYgQEAgc3RhdGljIHZvaWQgbWFya19laW8oc3RydWN0IGk5MTVfcmVxdWVzdCAq
cnEpCiAKIHN0YXRpYyBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICphY3RpdmVfcmVxdWVzdChzdHJ1Y3Qg
aTkxNV9yZXF1ZXN0ICpycSkKIHsKLQljb25zdCBzdHJ1Y3QgaW50ZWxfY29udGV4dCAqIGNvbnN0
IGNlID0gcnEtPmh3X2NvbnRleHQ7CiAJc3RydWN0IGk5MTVfcmVxdWVzdCAqYWN0aXZlID0gTlVM
TDsKIAlzdHJ1Y3QgbGlzdF9oZWFkICpsaXN0OwogCi0JaWYgKCFpOTE1X3JlcXVlc3RfaXNfYWN0
aXZlKHJxKSkgLyogdW53b3VuZCwgYnV0IGluY29tcGxldGUhICovCi0JCXJldHVybiBycTsKLQog
CXJjdV9yZWFkX2xvY2soKTsKIAlsaXN0ID0gJnJjdV9kZXJlZmVyZW5jZShycS0+dGltZWxpbmUp
LT5yZXF1ZXN0czsKIAlsaXN0X2Zvcl9lYWNoX2VudHJ5X2Zyb21fcmV2ZXJzZShycSwgbGlzdCwg
bGluaykgewogCQlpZiAoaTkxNV9yZXF1ZXN0X2NvbXBsZXRlZChycSkpCiAJCQlicmVhazsKIAot
CQlpZiAocnEtPmh3X2NvbnRleHQgIT0gY2UpCi0JCQlicmVhazsKLQorCQlHRU1fQlVHX09OKCFp
OTE1X3JlcXVlc3RfaXNfYWN0aXZlKHJxKSk7CiAJCWFjdGl2ZSA9IHJxOwogCX0KIAlyY3VfcmVh
ZF91bmxvY2soKTsKQEAgLTMwMDAsNiArMjk5NCw3IEBAIHN0YXRpYyB2b2lkIF9fZXhlY2xpc3Rz
X3Jlc2V0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgYm9vbCBzdGFsbGVkKQogCS8q
IENvbnRleHQgaGFzIHJlcXVlc3RzIHN0aWxsIGluLWZsaWdodDsgaXQgc2hvdWxkIG5vdCBiZSBp
ZGxlISAqLwogCUdFTV9CVUdfT04oaTkxNV9hY3RpdmVfaXNfaWRsZSgmY2UtPmFjdGl2ZSkpOwog
CWNlLT5yaW5nLT5oZWFkID0gaW50ZWxfcmluZ193cmFwKGNlLT5yaW5nLCBycS0+aGVhZCk7CisJ
R0VNX0JVR19PTihjZS0+cmluZy0+aGVhZCA9PSBjZS0+cmluZy0+dGFpbCk7CiAKIAkvKgogCSAq
IElmIHRoaXMgcmVxdWVzdCBoYXNuJ3Qgc3RhcnRlZCB5ZXQsIGUuZy4gaXQgaXMgd2FpdGluZyBv
biBhCkBAIC0zMDQzLDcgKzMwMzgsNyBAQCBzdGF0aWMgdm9pZCBfX2V4ZWNsaXN0c19yZXNldChz
dHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIGJvb2wgc3RhbGxlZCkKIAlyZXN0b3JlX2Rl
ZmF1bHRfc3RhdGUoY2UsIGVuZ2luZSk7CiAKIG91dF9yZXBsYXk6Ci0JR0VNX1RSQUNFKCIlcyBy
ZXBsYXkge2hlYWQ6JTA0eCwgdGFpbDolMDR4XG4iLAorCUdFTV9UUkFDRSgiJXMgcmVwbGF5IHto
ZWFkOiUwNHgsIHRhaWw6JTA0eH1cbiIsCiAJCSAgZW5naW5lLT5uYW1lLCBjZS0+cmluZy0+aGVh
ZCwgY2UtPnJpbmctPnRhaWwpOwogCWludGVsX3JpbmdfdXBkYXRlX3NwYWNlKGNlLT5yaW5nKTsK
IAlfX2V4ZWNsaXN0c19yZXNldF9yZWdfc3RhdGUoY2UsIGVuZ2luZSk7Ci0tIAoyLjI0LjAucmMx
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
