Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 578321D63BC
	for <lists+intel-gfx@lfdr.de>; Sat, 16 May 2020 21:10:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DF4E6E220;
	Sat, 16 May 2020 19:10:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0DC56E220
 for <intel-gfx@lists.freedesktop.org>; Sat, 16 May 2020 19:10:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21216699-1500050 
 for multiple; Sat, 16 May 2020 20:09:42 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 16 May 2020 20:09:40 +0100
Message-Id: <20200516190940.12675-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: Return error from dbuf
 allocation failure
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYzo1OTIwIHNrbF9kZGJfYWRkX2FmZmVjdGVk
X3BpcGVzKCkgZXJyb3I6IHVuaW5pdGlhbGl6ZWQgc3ltYm9sICdyZXQnLgoKRml4ZXM6IDNjZjQz
Y2RjNjNmYiAoImRybS9pOTE1OiBJbnRyb2R1Y2UgcHJvcGVyIGRidWYgc3RhdGUiKQpTaWduZWQt
b2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IFN0YW5p
c2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPgpDYzogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9wbS5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKaW5kZXggYTIxZTM2ZWQx
YTc3Li43NjJhNTE4NGZjNjkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwpAQCAtNTkxNyw3ICs1
OTE3LDcgQEAgc2tsX2RkYl9hZGRfYWZmZWN0ZWRfcGlwZXMoc3RydWN0IGludGVsX2F0b21pY19z
dGF0ZSAqc3RhdGUpCiAKIAkJbmV3X2RidWZfc3RhdGUgPSBpbnRlbF9hdG9taWNfZ2V0X2RidWZf
c3RhdGUoc3RhdGUpOwogCQlpZiAoSVNfRVJSKG5ld19kYnVmX3N0YXRlKSkKLQkJCXJldHVybiBy
ZXQ7CisJCQlyZXR1cm4gUFRSX0VSUihuZXdfZGJ1Zl9zdGF0ZSk7CiAKIAkJb2xkX2RidWZfc3Rh
dGUgPSBpbnRlbF9hdG9taWNfZ2V0X29sZF9kYnVmX3N0YXRlKHN0YXRlKTsKIAotLSAKMi4yMC4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
