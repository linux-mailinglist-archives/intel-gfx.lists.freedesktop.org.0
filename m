Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19609D4E72
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Oct 2019 11:09:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E131B6E466;
	Sat, 12 Oct 2019 09:09:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBF406E466
 for <intel-gfx@lists.freedesktop.org>; Sat, 12 Oct 2019 09:09:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18812762-1500050 
 for multiple; Sat, 12 Oct 2019 10:08:56 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 12 Oct 2019 10:08:54 +0100
Message-Id: <20191012090854.18037-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/perf: Prefer using the pinned_ctx for
 emitting delays on config
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

V2hlbiB3ZSBhcmUgd2F0Y2hpbmcgYSBwYXJ0aWN1bGFyIGNvbnRleHQsIHdlIHdhbnQgdGhlIE9B
IGNvbmZpZyB0byBiZQphcHBsaWVkIGlubGluZSB3aXRoIHRoYXQgY29udGV4dCBzdWNoIHRoYXQg
aXQgdGFrZXMgZWZmZWN0IGJlZm9yZSB0aGUKbmV4dCBzdWJtaXNzaW9uLgoKU2lnbmVkLW9mZi1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBMaW9uZWwgTGFu
ZHdlcmxpbiA8bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wZXJmLmMgfCA5ICsrKysrKystLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3BlcmYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCmluZGV4
IDc0ZjUwMTIwYzE1MS4uOTU5YjZjMzQxOTM0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3BlcmYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwpA
QCAtMTkwMyw2ICsxOTAzLDExIEBAIHN0YXRpYyBpbnQgZW1pdF9vYV9jb25maWcoc3RydWN0IGk5
MTVfcGVyZl9zdHJlYW0gKnN0cmVhbSwKIAlyZXR1cm4gZXJyOwogfQogCitzdGF0aWMgc3RydWN0
IGludGVsX2NvbnRleHQgKm9hX2NvbnRleHQoc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0gKnN0cmVh
bSkKK3sKKwlyZXR1cm4gc3RyZWFtLT5waW5uZWRfY3R4ID86IHN0cmVhbS0+ZW5naW5lLT5rZXJu
ZWxfY29udGV4dDsKK30KKwogc3RhdGljIGludCBoc3dfZW5hYmxlX21ldHJpY19zZXQoc3RydWN0
IGk5MTVfcGVyZl9zdHJlYW0gKnN0cmVhbSkKIHsKIAlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNv
cmUgPSBzdHJlYW0tPnVuY29yZTsKQEAgLTE5MjIsNyArMTkyNyw3IEBAIHN0YXRpYyBpbnQgaHN3
X2VuYWJsZV9tZXRyaWNfc2V0KHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0pCiAJaW50
ZWxfdW5jb3JlX3Jtdyh1bmNvcmUsIEdFTjZfVUNHQ1RMMSwKIAkJCSAwLCBHRU42X0NTVU5JVF9D
TE9DS19HQVRFX0RJU0FCTEUpOwogCi0JcmV0dXJuIGVtaXRfb2FfY29uZmlnKHN0cmVhbSwgc3Ry
ZWFtLT5lbmdpbmUtPmtlcm5lbF9jb250ZXh0KTsKKwlyZXR1cm4gZW1pdF9vYV9jb25maWcoc3Ry
ZWFtLCBvYV9jb250ZXh0KHN0cmVhbSkpOwogfQogCiBzdGF0aWMgdm9pZCBoc3dfZGlzYWJsZV9t
ZXRyaWNfc2V0KHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0pCkBAIC0yMjg2LDcgKzIy
OTEsNyBAQCBzdGF0aWMgaW50IGdlbjhfZW5hYmxlX21ldHJpY19zZXQoc3RydWN0IGk5MTVfcGVy
Zl9zdHJlYW0gKnN0cmVhbSkKIAlpZiAocmV0KQogCQlyZXR1cm4gcmV0OwogCi0JcmV0dXJuIGVt
aXRfb2FfY29uZmlnKHN0cmVhbSwgc3RyZWFtLT5lbmdpbmUtPmtlcm5lbF9jb250ZXh0KTsKKwly
ZXR1cm4gZW1pdF9vYV9jb25maWcoc3RyZWFtLCBvYV9jb250ZXh0KHN0cmVhbWEpKTsKIH0KIAog
c3RhdGljIHZvaWQgZ2VuOF9kaXNhYmxlX21ldHJpY19zZXQoc3RydWN0IGk5MTVfcGVyZl9zdHJl
YW0gKnN0cmVhbSkKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
