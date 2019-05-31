Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E79231220
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2019 18:18:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D75489388;
	Fri, 31 May 2019 16:18:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EC2789388
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2019 16:18:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 May 2019 09:18:42 -0700
X-ExtLoop1: 1
Received: from rosetta.fi.intel.com ([10.237.72.186])
 by orsmga002.jf.intel.com with ESMTP; 31 May 2019 09:18:40 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 9FC31840169; Fri, 31 May 2019 19:18:37 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 May 2019 19:18:36 +0300
Message-Id: <20190531161836.28474-1-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915/gtt: No need to zero the table for
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
dXNlbGVzcyB6ZXJvaW5nIGJlZm9yZS4KCkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KU2lnbmVkLW9mZi1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBs
aW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMg
fCA1ICsrKy0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKaW5kZXggY2E4YTY5ZThiMDk4Li5mMjM3
YWQzMTA0MjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCkBAIC02ODEsNyArNjgx
LDcgQEAgc3RhdGljIHN0cnVjdCBpOTE1X3BhZ2VfZGlyZWN0b3J5ICphbGxvY19wZChzdHJ1Y3Qg
aTkxNV9hZGRyZXNzX3NwYWNlICp2bSkKIHsKIAlzdHJ1Y3QgaTkxNV9wYWdlX2RpcmVjdG9yeSAq
cGQ7CiAKLQlwZCA9IGt6YWxsb2Moc2l6ZW9mKCpwZCksIEk5MTVfR0ZQX0FMTE9XX0ZBSUwpOwor
CXBkID0ga21hbGxvYyhzaXplb2YoKnBkKSwgSTkxNV9HRlBfQUxMT1dfRkFJTCk7CiAJaWYgKHVu
bGlrZWx5KCFwZCkpCiAJCXJldHVybiBFUlJfUFRSKC1FTk9NRU0pOwogCkBAIC03MzgsNyArNzM4
LDcgQEAgYWxsb2NfcGRwKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtKQogCiAJR0VNX0JV
R19PTighaTkxNV92bV9pc180bHZsKHZtKSk7CiAKLQlwZHAgPSBremFsbG9jKHNpemVvZigqcGRw
KSwgR0ZQX0tFUk5FTCk7CisJcGRwID0ga21hbGxvYyhzaXplb2YoKnBkcCksIEdGUF9LRVJORUwp
OwogCWlmICghcGRwKQogCQlyZXR1cm4gRVJSX1BUUigtRU5PTUVNKTsKIApAQCAtNzUwLDYgKzc1
MCw3IEBAIGFsbG9jX3BkcChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSkKIAlpZiAocmV0
KQogCQlnb3RvIGZhaWxfcGFnZV9tOwogCisJcGRwLT51c2VkX3BkcGVzID0gMDsKIAlyZXR1cm4g
cGRwOwogCiBmYWlsX3BhZ2VfbToKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
