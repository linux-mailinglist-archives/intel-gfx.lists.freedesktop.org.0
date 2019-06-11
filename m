Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C55F83D407
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2019 19:27:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 046C7891F2;
	Tue, 11 Jun 2019 17:27:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8E8D891D2
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2019 17:27:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jun 2019 10:27:35 -0700
X-ExtLoop1: 1
Received: from rosetta.fi.intel.com ([10.237.72.186])
 by orsmga004.jf.intel.com with ESMTP; 11 Jun 2019 10:27:34 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 27B8B84016A; Tue, 11 Jun 2019 20:27:33 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Jun 2019 20:27:23 +0300
Message-Id: <20190611172731.19174-1-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH 1/9] drm/i915/gtt: No need to zero the table for
 page dirs
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2Ugc2V0IHRoZW0gdG8gc2NyYXRjaCByaWdodCBhZnRlciBhbGxvY2F0aW9uIHNvIHByZXZlbnQK
dXNlbGVzcyB6ZXJvaW5nIGJlZm9yZS4KCnYyOiBhdG9taWNfdAoKQ2M6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpTaWduZWQtb2ZmLWJ5OiBNaWthIEt1b3BwYWxhIDxt
aWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2VtX2d0dC5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0
dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKaW5kZXggZTcwNjc1YmZi
NTFkLi4wN2Y4NmQ0NzRmYTIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2VtX2d0dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCkBAIC02
ODcsNyArNjg3LDcgQEAgc3RhdGljIHN0cnVjdCBpOTE1X3BhZ2VfZGlyZWN0b3J5ICphbGxvY19w
ZChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSkKIHsKIAlzdHJ1Y3QgaTkxNV9wYWdlX2Rp
cmVjdG9yeSAqcGQ7CiAKLQlwZCA9IGt6YWxsb2Moc2l6ZW9mKCpwZCksIEk5MTVfR0ZQX0FMTE9X
X0ZBSUwpOworCXBkID0ga21hbGxvYyhzaXplb2YoKnBkKSwgSTkxNV9HRlBfQUxMT1dfRkFJTCk7
CiAJaWYgKHVubGlrZWx5KCFwZCkpCiAJCXJldHVybiBFUlJfUFRSKC1FTk9NRU0pOwogCkBAIC03
NDcsNyArNzQ3LDcgQEAgYWxsb2NfcGRwKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtKQog
CiAJR0VNX0JVR19PTighaTkxNV92bV9pc180bHZsKHZtKSk7CiAKLQlwZHAgPSBremFsbG9jKHNp
emVvZigqcGRwKSwgR0ZQX0tFUk5FTCk7CisJcGRwID0ga21hbGxvYyhzaXplb2YoKnBkcCksIEdG
UF9LRVJORUwpOwogCWlmICghcGRwKQogCQlyZXR1cm4gRVJSX1BUUigtRU5PTUVNKTsKIAotLSAK
Mi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
