Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C2E617C5
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2019 00:15:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4492899F0;
	Sun,  7 Jul 2019 22:15:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B5A2899F0
 for <intel-gfx@lists.freedesktop.org>; Sun,  7 Jul 2019 22:15:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17164067-1500050 
 for multiple; Sun, 07 Jul 2019 23:15:26 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  7 Jul 2019 23:15:21 +0100
Message-Id: <20190707221521.31929-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Explicitly track active fw_domain
 timers
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

U3RvcCBndWVzc2luZyBvdmVyIHdoZXRoZXIgd2UgaGF2ZSBhbiBleHRyYSB3YWtlcmVmIGhlbGQg
YnkgdGhlIGRlbGF5ZWQKZncgcHV0LCBhbmQgdHJhY2sgaXQgZXhwbGljaXRseSBmb3IgdGhlIHNh
a2Ugb2YgZGVidWcuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmMgfCAxMyArKysrKystLS0t
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuaCB8ICAxICsKIDIgZmlsZXMg
Y2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VuY29yZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfdW5jb3JlLmMKaW5kZXggNWYwMzY3ZmQzMjAwLi43NjhmZWUzYzU5YWEgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VuY29yZS5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3VuY29yZS5jCkBAIC03OCw2ICs3OCw4IEBAIGZ3X2RvbWFpbl9yZXNl
dChjb25zdCBzdHJ1Y3QgaW50ZWxfdW5jb3JlX2ZvcmNld2FrZV9kb21haW4gKmQpCiBzdGF0aWMg
aW5saW5lIHZvaWQKIGZ3X2RvbWFpbl9hcm1fdGltZXIoc3RydWN0IGludGVsX3VuY29yZV9mb3Jj
ZXdha2VfZG9tYWluICpkKQogeworCUdFTV9CVUdfT04oZC0+dW5jb3JlLT5md19kb21haW5zX3Rp
bWVyICYgZC0+bWFzayk7CisJZC0+dW5jb3JlLT5md19kb21haW5zX3RpbWVyIHw9IGQtPm1hc2s7
CiAJZC0+d2FrZV9jb3VudCsrOwogCWhydGltZXJfc3RhcnRfcmFuZ2VfbnMoJmQtPnRpbWVyLAog
CQkJICAgICAgIE5TRUNfUEVSX01TRUMsCkBAIC0zNTMsOSArMzU1LDggQEAgaW50ZWxfdW5jb3Jl
X2Z3X3JlbGVhc2VfdGltZXIoc3RydWN0IGhydGltZXIgKnRpbWVyKQogCQlyZXR1cm4gSFJUSU1F
Ul9SRVNUQVJUOwogCiAJc3Bpbl9sb2NrX2lycXNhdmUoJnVuY29yZS0+bG9jaywgaXJxZmxhZ3Mp
OwotCWlmIChXQVJOX09OKGRvbWFpbi0+d2FrZV9jb3VudCA9PSAwKSkKLQkJZG9tYWluLT53YWtl
X2NvdW50Kys7CiAKKwl1bmNvcmUtPmZ3X2RvbWFpbnNfdGltZXIgJj0gfmRvbWFpbi0+bWFzazsK
IAlpZiAoLS1kb21haW4tPndha2VfY291bnQgPT0gMCkKIAkJdW5jb3JlLT5mdW5jcy5mb3JjZV93
YWtlX3B1dCh1bmNvcmUsIGRvbWFpbi0+bWFzayk7CiAKQEAgLTY3Myw4ICs2NzQsNyBAQCBzdGF0
aWMgdm9pZCBfX2ludGVsX3VuY29yZV9mb3JjZXdha2VfcHV0KHN0cnVjdCBpbnRlbF91bmNvcmUg
KnVuY29yZSwKIAlmd19kb21haW5zICY9IHVuY29yZS0+ZndfZG9tYWluczsKIAogCWZvcl9lYWNo
X2Z3X2RvbWFpbl9tYXNrZWQoZG9tYWluLCBmd19kb21haW5zLCB1bmNvcmUsIHRtcCkgewotCQlp
ZiAoV0FSTl9PTihkb21haW4tPndha2VfY291bnQgPT0gMCkpCi0JCQljb250aW51ZTsKKwkJR0VN
X0JVR19PTighZG9tYWluLT53YWtlX2NvdW50KTsKIAogCQlpZiAoLS1kb21haW4tPndha2VfY291
bnQpIHsKIAkJCWRvbWFpbi0+YWN0aXZlID0gdHJ1ZTsKQEAgLTc2NCw3ICs3NjQsNyBAQCB2b2lk
IGFzc2VydF9mb3JjZXdha2VzX2FjdGl2ZShzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUsCiAJ
CXVuc2lnbmVkIGludCBhY3R1YWwgPSBSRUFEX09OQ0UoZG9tYWluLT53YWtlX2NvdW50KTsKIAkJ
dW5zaWduZWQgaW50IGV4cGVjdCA9IDE7CiAKLQkJaWYgKGhydGltZXJfYWN0aXZlKCZkb21haW4t
PnRpbWVyKSAmJiBSRUFEX09OQ0UoZG9tYWluLT5hY3RpdmUpKQorCQlpZiAodW5jb3JlLT5md19k
b21haW5zX3RpbWVyICYgZG9tYWluLT5tYXNrKQogCQkJZXhwZWN0Kys7IC8qIHBlbmRpbmcgYXV0
b21hdGljIHJlbGVhc2UgKi8KIAogCQlpZiAoV0FSTihhY3R1YWwgPCBleHBlY3QsCkBAIC0xMTYw
LDggKzExNjAsNyBAQCBzdGF0aWMgbm9pbmxpbmUgdm9pZCBfX19mb3JjZV93YWtlX2F1dG8oc3Ry
dWN0IGludGVsX3VuY29yZSAqdW5jb3JlLAogc3RhdGljIGlubGluZSB2b2lkIF9fZm9yY2Vfd2Fr
ZV9hdXRvKHN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSwKIAkJCQkgICAgIGVudW0gZm9yY2V3
YWtlX2RvbWFpbnMgZndfZG9tYWlucykKIHsKLQlpZiAoV0FSTl9PTighZndfZG9tYWlucykpCi0J
CXJldHVybjsKKwlHRU1fQlVHX09OKCFmd19kb21haW5zKTsKIAogCS8qIFR1cm4gb24gYWxsIHJl
cXVlc3RlZCBidXQgaW5hY3RpdmUgc3VwcG9ydGVkIGZvcmNld2FrZSBkb21haW5zLiAqLwogCWZ3
X2RvbWFpbnMgJj0gdW5jb3JlLT5md19kb21haW5zOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNv
cmUuaAppbmRleCA3MTA4NDc1ZDliMjQuLjJmNmZmYTMwOTY2OSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfdW5jb3JlLmgKQEAgLTEyMyw2ICsxMjMsNyBAQCBzdHJ1Y3QgaW50ZWxfdW5jb3JlIHsK
IAogCWVudW0gZm9yY2V3YWtlX2RvbWFpbnMgZndfZG9tYWluczsKIAllbnVtIGZvcmNld2FrZV9k
b21haW5zIGZ3X2RvbWFpbnNfYWN0aXZlOworCWVudW0gZm9yY2V3YWtlX2RvbWFpbnMgZndfZG9t
YWluc190aW1lcjsKIAllbnVtIGZvcmNld2FrZV9kb21haW5zIGZ3X2RvbWFpbnNfc2F2ZWQ7IC8q
IHVzZXIgZG9tYWlucyBzYXZlZCBmb3IgUzMgKi8KIAogCXN0cnVjdCBpbnRlbF91bmNvcmVfZm9y
Y2V3YWtlX2RvbWFpbiB7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
