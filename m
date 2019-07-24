Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F56734BC
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 19:12:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADA976E605;
	Wed, 24 Jul 2019 17:12:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6396A6E5F9
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2019 17:12:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jul 2019 10:12:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,303,1559545200"; d="scan'208";a="171556930"
Received: from jssummer-desk.ra.intel.com ([10.54.134.159])
 by fmsmga007.fm.intel.com with ESMTP; 24 Jul 2019 10:12:21 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Jul 2019 10:12:17 -0700
Message-Id: <20190724171220.22986-7-stuart.summers@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
In-Reply-To: <20190724171220.22986-1-stuart.summers@intel.com>
References: <20190724171220.22986-1-stuart.summers@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/9] drm/i915: Add function to determine if a
 slice has a subslice
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

QWRkIGEgbmV3IGZ1bmN0aW9uIHRvIGRldGVybWluZSB3aGV0aGVyIGEgcGFydGljdWxhciBzbGlj
ZQpoYXMgYSBnaXZlbiBzdWJzbGljZS4KClNpZ25lZC1vZmYtYnk6IFN0dWFydCBTdW1tZXJzIDxz
dHVhcnQuc3VtbWVyc0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfc3NldS5oICAgICB8IDEwICsrKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2RldmljZV9pbmZvLmMgfCAgOSArKysrLS0tLS0KIDIgZmlsZXMgY2hhbmdlZCwgMTQgaW5zZXJ0
aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9zc2V1LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1LmgK
aW5kZXggMjI2MWQ0ZTdkOThiLi4wZWNjMWMzNWE3YTEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX3NzZXUuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9zc2V1LmgKQEAgLTY2LDYgKzY2LDE2IEBAIGludGVsX3NzZXVfZnJvbV9kZXZpY2VfaW5m
byhjb25zdCBzdHJ1Y3Qgc3NldV9kZXZfaW5mbyAqc3NldSkKIAlyZXR1cm4gdmFsdWU7CiB9CiAK
K3N0YXRpYyBpbmxpbmUgYm9vbAoraW50ZWxfc3NldV9oYXNfc3Vic2xpY2UoY29uc3Qgc3RydWN0
IHNzZXVfZGV2X2luZm8gKnNzZXUsIGludCBzbGljZSwKKwkJCWludCBzdWJzbGljZSkKK3sKKwl1
OCBtYXNrID0gc3NldS0+c3Vic2xpY2VfbWFza1tzbGljZSAqIHNzZXUtPnNzX3N0cmlkZSArCisJ
CQkJICAgICAgc3Vic2xpY2UgLyBCSVRTX1BFUl9CWVRFXTsKKworCXJldHVybiBtYXNrICYgQklU
KHN1YnNsaWNlICUgQklUU19QRVJfQllURSk7Cit9CisKIHZvaWQgaW50ZWxfc3NldV9zZXRfaW5m
byhzdHJ1Y3Qgc3NldV9kZXZfaW5mbyAqc3NldSwgdTggbWF4X3NsaWNlcywKIAkJCSB1OCBtYXhf
c3Vic2xpY2VzLCB1OCBtYXhfZXVzX3Blcl9zdWJzbGljZSk7CiAKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9kZXZpY2VfaW5mby5jCmluZGV4IDIyYjU5ZmRiMzFmYy4uNzIzYjFmZGU1ZmM0IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMKQEAgLTIxMCwxMCArMjEw
LDkgQEAgc3RhdGljIHZvaWQgZ2VuMTFfc3NldV9pbmZvX2luaXQoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KQogCQkJaW50ZWxfc3NldV9zZXRfc3Vic2xpY2VzKHNzZXUsIHMsIChz
c19lbiA+PiBzc19pZHgpICYKIAkJCQkJCQkgIHNzX2VuX21hc2spOwogCi0JCQlmb3IgKHNzID0g
MDsgc3MgPCBzc2V1LT5tYXhfc3Vic2xpY2VzOyBzcysrKSB7Ci0JCQkJaWYgKHNzZXUtPnN1YnNs
aWNlX21hc2tbc10gJiBCSVQoc3MpKQorCQkJZm9yIChzcyA9IDA7IHNzIDwgc3NldS0+bWF4X3N1
YnNsaWNlczsgc3MrKykKKwkJCQlpZiAoaW50ZWxfc3NldV9oYXNfc3Vic2xpY2Uoc3NldSwgcywg
c3MpKQogCQkJCQlzc2V1X3NldF9ldXMoc3NldSwgcywgc3MsIGV1X2VuKTsKLQkJCX0KIAkJfQog
CX0KIAlzc2V1LT5ldV9wZXJfc3Vic2xpY2UgPSBod2VpZ2h0OChldV9lbik7CkBAIC0zOTksNyAr
Mzk4LDcgQEAgc3RhdGljIHZvaWQgZ2VuOV9zc2V1X2luZm9faW5pdChzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYpCiAJCQlpbnQgZXVfcGVyX3NzOwogCQkJdTggZXVfZGlzYWJsZWRf
bWFzazsKIAotCQkJaWYgKCEoc3NldS0+c3Vic2xpY2VfbWFza1tzXSAmIEJJVChzcykpKQorCQkJ
aWYgKCFpbnRlbF9zc2V1X2hhc19zdWJzbGljZShzc2V1LCBzLCBzcykpCiAJCQkJLyogc2tpcCBk
aXNhYmxlZCBzdWJzbGljZSAqLwogCQkJCWNvbnRpbnVlOwogCkBAIC01MDUsNyArNTA0LDcgQEAg
c3RhdGljIHZvaWQgYnJvYWR3ZWxsX3NzZXVfaW5mb19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdikKIAkJCXU4IGV1X2Rpc2FibGVkX21hc2s7CiAJCQl1MzIgbl9kaXNhYmxl
ZDsKIAotCQkJaWYgKCEoc3NldS0+c3Vic2xpY2VfbWFza1tzXSAmIEJJVChzcykpKQorCQkJaWYg
KCFpbnRlbF9zc2V1X2hhc19zdWJzbGljZShzc2V1LCBzLCBzcykpCiAJCQkJLyogc2tpcCBkaXNh
YmxlZCBzdWJzbGljZSAqLwogCQkJCWNvbnRpbnVlOwogCi0tIAoyLjIxLjAuNS5nYWViNTgyYTk4
MwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
