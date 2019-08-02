Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C5280203
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 22:51:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A47CA6E5C7;
	Fri,  2 Aug 2019 20:51:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AA216E4B0
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Aug 2019 20:51:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Aug 2019 13:51:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,339,1559545200"; d="scan'208";a="175021809"
Received: from jssummer-desk.jf.intel.com ([10.165.21.197])
 by fmsmga007.fm.intel.com with ESMTP; 02 Aug 2019 13:51:35 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Aug 2019 13:51:31 -0700
Message-Id: <20190802205134.303-8-stuart.summers@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
In-Reply-To: <20190802205134.303-1-stuart.summers@intel.com>
References: <20190802205134.303-1-stuart.summers@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/10] drm/i915: Add function to determine if a
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
NS9pbnRlbF9kZXZpY2VfaW5mby5jCmluZGV4IDJlY2YyZTUwY2VlZC4uNjZmZTY4ODc1ZDFiIDEw
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
