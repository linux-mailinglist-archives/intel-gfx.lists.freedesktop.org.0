Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA9AC0D1B
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 23:18:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FC3A6E26F;
	Fri, 27 Sep 2019 21:18:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25D9B6E26F
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 21:18:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18644758-1500050 
 for multiple; Fri, 27 Sep 2019 22:17:54 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Sep 2019 22:17:49 +0100
Message-Id: <20190927211749.2181-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190927211749.2181-1-chris@chris-wilson.co.uk>
References: <20190927211749.2181-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/selftests: Provide a mock GPU
 reset routine
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

Rm9yIHRob3NlIG1vY2sgdGVzdHMgdGhhdCBtYXkgd2lzaCB0byBwcmV0ZW5kIHRyaWdnZXJpbmcg
YSBHUFUgcmVzZXQgYW5kCnByb2Nlc3NpbmcgdGhlIGNsZWFudXAuCgpTaWduZWQtb2ZmLWJ5OiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IEFuZGkgU2h5dGkgPGFu
ZGkuc2h5dGlAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jl
c2V0LmMgfCAxMSArKysrKysrKysrLQogMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9yZXNldC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYwppbmRleCBl
YTVjZjNhMjhmYmUuLjc2OTM4ZmEzYTFiOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfcmVzZXQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9y
ZXNldC5jCkBAIC01NDIsNiArNTQyLDEzIEBAIHN0YXRpYyBpbnQgZ2VuOF9yZXNldF9lbmdpbmVz
KHN0cnVjdCBpbnRlbF9ndCAqZ3QsCiAJcmV0dXJuIHJldDsKIH0KIAorc3RhdGljIGludCBtb2Nr
X3Jlc2V0KHN0cnVjdCBpbnRlbF9ndCAqZ3QsCisJCSAgICAgIGludGVsX2VuZ2luZV9tYXNrX3Qg
bWFzaywKKwkJICAgICAgdW5zaWduZWQgaW50IHJldHJ5KQoreworCXJldHVybiAwOworfQorCiB0
eXBlZGVmIGludCAoKnJlc2V0X2Z1bmMpKHN0cnVjdCBpbnRlbF9ndCAqLAogCQkJICBpbnRlbF9l
bmdpbmVfbWFza190IGVuZ2luZV9tYXNrLAogCQkJICB1bnNpZ25lZCBpbnQgcmV0cnkpOwpAQCAt
NTUwLDcgKzU1Nyw5IEBAIHN0YXRpYyByZXNldF9mdW5jIGludGVsX2dldF9ncHVfcmVzZXQoY29u
c3Qgc3RydWN0IGludGVsX2d0ICpndCkKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSA9IGd0LT5pOTE1OwogCi0JaWYgKElOVEVMX0dFTihpOTE1KSA+PSA4KQorCWlmIChpc19tb2Nr
X2d0KGd0KSkKKwkJcmV0dXJuIG1vY2tfcmVzZXQ7CisJZWxzZSBpZiAoSU5URUxfR0VOKGk5MTUp
ID49IDgpCiAJCXJldHVybiBnZW44X3Jlc2V0X2VuZ2luZXM7CiAJZWxzZSBpZiAoSU5URUxfR0VO
KGk5MTUpID49IDYpCiAJCXJldHVybiBnZW42X3Jlc2V0X2VuZ2luZXM7Ci0tIAoyLjIzLjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
