Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB0FF7FB27
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 15:37:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1D1E6EE57;
	Fri,  2 Aug 2019 13:37:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAE866EE57
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Aug 2019 13:37:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17818170-1500050 
 for multiple; Fri, 02 Aug 2019 14:37:25 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Aug 2019 14:37:24 +0100
Message-Id: <20190802133724.1704-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc0
In-Reply-To: <20190802132836.6787-1-chris@chris-wilson.co.uk>
References: <20190802132836.6787-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Flush any deferred RCU cleanup before
 switching off GEM
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

T24gbW9kdWxlIGxvYWQsIGlmIHdlIGZhaWwgdG8gaW5pdGlhbGlzZSBHRU0sIHdlIHdpbGwgdHJ5
IHRvIGtlZXAgdGhlCm1vZHVsZSBhbGl2ZSAoc28gdGhhdCB3ZSBjYW4gYnJpbmcgS01TIHVwIHRv
IGtlZXAgdGhlIHN5c3RlbSB1c2FibGUpLgpIb3dldmVyLCBpZiB3ZSBvdXRyaWdodCBmYWlsIHRv
IGxvYWQgYW5kIGNob29zZSB0byBhYm9ydCB0aGUgbW9kdWxlLCB3ZQpoYXZlIHRvIGZsdXNoIHRo
ZSBHRU0gZGVmZXJyZWQgY2xlYW51cCBiZWZvcmUgcmVwb3J0aW5nIHRoYXQgZmFpbHVyZS4KClNp
Z25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzog
TWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyB8IDQgKysrKwogMSBmaWxlIGNoYW5nZWQsIDQgaW5z
ZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCmluZGV4IGU3NzlkYmEyZTVhMy4uYTlm
M2I2ODJhZmRlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKQEAgLTE2MDEsNiArMTYwMSwxMCBA
QCBpbnQgaTkxNV9nZW1faW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJ
CW11dGV4X3VubG9jaygmZGV2X3ByaXYtPmRybS5zdHJ1Y3RfbXV0ZXgpOwogCX0KIAorCS8qIEZs
dXNoIGFueSBkZWZlcnJlZCBSQ1UgY2xlYW51cCAqLworCXJjdV9iYXJyaWVyKCk7CisJZmx1c2hf
d29ya3F1ZXVlKGRldl9wcml2LT53cSk7CisKIAlpOTE1X2dlbV9kcmFpbl9mcmVlZF9vYmplY3Rz
KGRldl9wcml2KTsKIAlyZXR1cm4gcmV0OwogfQotLSAKMi4yMy4wLnJjMAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
