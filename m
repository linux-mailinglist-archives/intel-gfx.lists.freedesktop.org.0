Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2660C89984
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 11:11:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2566A89DED;
	Mon, 12 Aug 2019 09:11:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A2536E2DA
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 09:10:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17966148-1500050 
 for multiple; Mon, 12 Aug 2019 10:10:47 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Aug 2019 10:10:43 +0100
Message-Id: <20190812091045.29587-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190812091045.29587-1-chris@chris-wilson.co.uk>
References: <20190812091045.29587-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/8] drm/i915/guc: Keep the engine awake until
 the tasklet is idle
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

Rm9yIHRoZSBndWMsIHdlIG5lZWQgdG8ga2VlcCB0aGUgZW5naW5lIGF3YWtlIChhbmQgbm90IHBh
cmtlZCkgYW5kIG5vdApqdXN0IHRoZSBndC4gSWYgd2UgbGV0IHRoZSBlbmdpbmUgcGFyaywgd2Ug
ZGlzYWJsZSB0aGUgaXJxIGFuZCBzdG9wCnByb2Nlc3NpbmcgdGhlIHRhc2tsZXQsIGxlYXZpbmcg
c3RhdGUgb3V0c3RhbmRpbmcgaW5zaWRlIHRoZSB0YXNrbGV0LgoKVGhlIGRvd25zaWRlIGlzLCBv
ZiBjb3Vyc2UsIHdlIG5vdyBoYXZlIHRvIHdhaXQgdW50aWwgdGhlIHRhc2tsZXQgaXMgcnVuCmJl
Zm9yZSB3ZSBjb25zaWRlciB0aGUgZW5naW5lIGlkbGUuCgpSZXBvcnRlZC1ieTogRGFuaWVsZSBD
ZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KU2lnbmVkLW9m
Zi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBEYW5pZWxl
IENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19zdWJtaXNzaW9uLmMgfCA5ICsrKyst
LS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfc3VibWlzc2lv
bi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX3N1Ym1pc3Npb24uYwpp
bmRleCA1YmY4MzgyMjNjZjkuLjUyZWRmZThkMWM2MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX3N1Ym1pc3Npb24uYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5jCkBAIC01MzQsOSArNTM0LDEwIEBA
IHN0YXRpYyBpbmxpbmUgaW50IHJxX3ByaW8oY29uc3Qgc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEp
CiAKIHN0YXRpYyBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpzY2hlZHVsZV9pbihzdHJ1Y3QgaTkxNV9y
ZXF1ZXN0ICpycSwgaW50IGlkeCkKIHsKKwlHRU1fQlVHX09OKCFpbnRlbF9lbmdpbmVfcG1faXNf
YXdha2UocnEtPmVuZ2luZSkpOwogCXRyYWNlX2k5MTVfcmVxdWVzdF9pbihycSwgaWR4KTsKIAot
CWludGVsX2d0X3BtX2dldChycS0+ZW5naW5lLT5ndCk7CisJaW50ZWxfZW5naW5lX3BtX2dldChy
cS0+ZW5naW5lKTsKIAlyZXR1cm4gaTkxNV9yZXF1ZXN0X2dldChycSk7CiB9CiAKQEAgLTU0NCw3
ICs1NDUsNyBAQCBzdGF0aWMgdm9pZCBzY2hlZHVsZV9vdXQoc3RydWN0IGk5MTVfcmVxdWVzdCAq
cnEpCiB7CiAJdHJhY2VfaTkxNV9yZXF1ZXN0X291dChycSk7CiAKLQlpbnRlbF9ndF9wbV9wdXQo
cnEtPmVuZ2luZS0+Z3QpOworCWludGVsX2VuZ2luZV9wbV9wdXQocnEtPmVuZ2luZSk7CiAJaTkx
NV9yZXF1ZXN0X3B1dChycSk7CiB9CiAKQEAgLTYxMCw4ICs2MTEsNiBAQCBzdGF0aWMgdm9pZCBn
dWNfc3VibWlzc2lvbl90YXNrbGV0KHVuc2lnbmVkIGxvbmcgZGF0YSkKIAlzdHJ1Y3QgaTkxNV9y
ZXF1ZXN0ICoqcG9ydCwgKnJxOwogCXVuc2lnbmVkIGxvbmcgZmxhZ3M7CiAKLQlzcGluX2xvY2tf
aXJxc2F2ZSgmZW5naW5lLT5hY3RpdmUubG9jaywgZmxhZ3MpOwotCiAJZm9yIChwb3J0ID0gZXhl
Y2xpc3RzLT5pbmZsaWdodDsgKHJxID0gKnBvcnQpOyBwb3J0KyspIHsKIAkJaWYgKCFpOTE1X3Jl
cXVlc3RfY29tcGxldGVkKHJxKSkKIAkJCWJyZWFrOwpAQCAtNjI0LDggKzYyMyw4IEBAIHN0YXRp
YyB2b2lkIGd1Y19zdWJtaXNzaW9uX3Rhc2tsZXQodW5zaWduZWQgbG9uZyBkYXRhKQogCQltZW1t
b3ZlKGV4ZWNsaXN0cy0+aW5mbGlnaHQsIHBvcnQsIHJlbSAqIHNpemVvZigqcG9ydCkpOwogCX0K
IAorCXNwaW5fbG9ja19pcnFzYXZlKCZlbmdpbmUtPmFjdGl2ZS5sb2NrLCBmbGFncyk7CiAJX19n
dWNfZGVxdWV1ZShlbmdpbmUpOwotCiAJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmZW5naW5lLT5h
Y3RpdmUubG9jaywgZmxhZ3MpOwogfQogCi0tIAoyLjIzLjAucmMxCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
