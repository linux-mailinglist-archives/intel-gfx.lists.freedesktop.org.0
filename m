Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C61287DBB
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Oct 2020 23:16:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBABF6EB26;
	Thu,  8 Oct 2020 21:16:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 453C56EB16
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Oct 2020 21:16:27 +0000 (UTC)
IronPort-SDR: XXodk3/gQzxUalsUiMhDRq1otn1rXoToD1VZ8nqXSll5doVJxFGXCWbs8e7uXqaPxj7RD3BJWz
 AO1M/KrQYt1g==
X-IronPort-AV: E=McAfee;i="6000,8403,9768"; a="152326167"
X-IronPort-AV: E=Sophos;i="5.77,352,1596524400"; d="scan'208";a="152326167"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2020 14:16:25 -0700
IronPort-SDR: /GG0mNx0DJUsrNpJIolGeR6n7+V3CW3HPbukI8Sy8teXMP6QenGf5lQfNbj2KaMOIpphFSFofo
 pQr9g8MIkKAQ==
X-IronPort-AV: E=Sophos;i="5.77,352,1596524400"; d="scan'208";a="355521394"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.55])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2020 14:16:25 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Oct 2020 14:19:30 -0700
Message-Id: <20201008211932.24989-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 1/3] drm/i915/vbt: Fix backlight parsing for
 VBT 234+
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hpbGQgbWluX2JyaWdodG5lc3MgaXMgb2Jzb2xldGUgZnJvbSBWQlQgMjM0KywgaW5zdGVhZCB0
aGUgbmV3Cm1pbl9icmlnaHRuZXNzIGZpZWxkIGluIHRoZSBtYWluIHN0cnVjdHVyZSBzaG91bGQg
YmUgdXNlZC4KClRoaXMgbmV3IGZpZWxkIGlzIDE2IGJpdHMgd2lkZSwgc28gYmFja2xpZ2h0X3By
ZWNpc2lvbl9iaXRzIGlzIG5lZWRlZAp0byBjaGVjayBpZiB2YWx1ZSBuZWVkcyB0byBiZSBzY2Fs
ZWQgZG93biBidXQgaXQgaXMgb25seSBhdmFpbGFibGUgaW4KVkJUIDIzNisgc28gd29ya2luZyBh
cm91bmQgaXQgYnkgdXNpbmcgdGhlIGFsc28gbmV3IGJhY2tsaWdodF9sZXZlbAppbiB0aGUgbWFp
biBzdHJ1Y3QuCgp2MjoKLSBtaXNzZWQgdGhhdCBiYWNrbGlnaHRfZGF0YS0+bGV2ZWwgaXMgYWxz
byBvYnNvbGV0ZQoKdjM6Ci0gcy9iYWNrbGlnaHQvYnJpZ2h0bmVzcyB0byBiZXR0ZXIgbWF0Y2gg
c3BlY2lmaWNhdGlvbgotIHVzaW5nIHUxNiB0byBzcGVjaWZ5IGJyaWdodG5lc3MgbGV2ZWwgaW5z
dGVhZCBvZiBhIHUzMiA6IDE2CgpCU3BlYzogMjAxNDkKUmV2aWV3ZWQtYnk6IE1hdHQgUm9wZXIg
PG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8g
ZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYmlvcy5jICAgICB8IDMwICsrKysrKysrKysrKysrKysrLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaCB8IDEyICsrKysrKy0tCiAy
IGZpbGVzIGNoYW5nZWQsIDM4IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwppbmRleCA1ODA0ZWI5ZmFmMjQuLmI0
ZDk5ZDBiZjY5NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9iaW9zLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMK
QEAgLTQyNSw2ICs0MjUsNyBAQCBwYXJzZV9sZnBfYmFja2xpZ2h0KHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiwKIAljb25zdCBzdHJ1Y3QgYmRiX2xmcF9iYWNrbGlnaHRfZGF0YSAq
YmFja2xpZ2h0X2RhdGE7CiAJY29uc3Qgc3RydWN0IGxmcF9iYWNrbGlnaHRfZGF0YV9lbnRyeSAq
ZW50cnk7CiAJaW50IHBhbmVsX3R5cGUgPSBkZXZfcHJpdi0+dmJ0LnBhbmVsX3R5cGU7CisJdTE2
IGxldmVsOwogCiAJYmFja2xpZ2h0X2RhdGEgPSBmaW5kX3NlY3Rpb24oYmRiLCBCREJfTFZEU19C
QUNLTElHSFQpOwogCWlmICghYmFja2xpZ2h0X2RhdGEpCkBAIC00NTksMTQgKzQ2MCwzOSBAQCBw
YXJzZV9sZnBfYmFja2xpZ2h0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAog
CWRldl9wcml2LT52YnQuYmFja2xpZ2h0LnB3bV9mcmVxX2h6ID0gZW50cnktPnB3bV9mcmVxX2h6
OwogCWRldl9wcml2LT52YnQuYmFja2xpZ2h0LmFjdGl2ZV9sb3dfcHdtID0gZW50cnktPmFjdGl2
ZV9sb3dfcHdtOwotCWRldl9wcml2LT52YnQuYmFja2xpZ2h0Lm1pbl9icmlnaHRuZXNzID0gZW50
cnktPm1pbl9icmlnaHRuZXNzOworCisJaWYgKGJkYi0+dmVyc2lvbiA+PSAyMzQpIHsKKwkJdTE2
IG1pbl9sZXZlbDsKKwkJYm9vbCBzY2FsZTsKKworCQlsZXZlbCA9IGJhY2tsaWdodF9kYXRhLT5i
cmlnaHRuZXNzX2xldmVsW3BhbmVsX3R5cGVdLmxldmVsOworCQltaW5fbGV2ZWwgPSBiYWNrbGln
aHRfZGF0YS0+YnJpZ2h0bmVzc19taW5fbGV2ZWxbcGFuZWxfdHlwZV0ubGV2ZWw7CisKKwkJaWYg
KGJkYi0+dmVyc2lvbiA+PSAyMzYpCisJCQlzY2FsZSA9IGJhY2tsaWdodF9kYXRhLT5icmlnaHRu
ZXNzX3ByZWNpc2lvbl9iaXRzW3BhbmVsX3R5cGVdID09IDE2OworCQllbHNlCisJCQlzY2FsZSA9
IGxldmVsID4gMjU1OworCisJCWlmIChzY2FsZSkKKwkJCW1pbl9sZXZlbCA9IG1pbl9sZXZlbCAv
IDI1NTsKKworCQlpZiAobWluX2xldmVsID4gMjU1KSB7CisJCQlkcm1fd2FybigmZGV2X3ByaXYt
PmRybSwgIkJyaWdodG5lc3MgbWluIGxldmVsID4gMjU1XG4iKTsKKwkJCWxldmVsID0gMjU1Owor
CQl9CisJCWRldl9wcml2LT52YnQuYmFja2xpZ2h0Lm1pbl9icmlnaHRuZXNzID0gbWluX2xldmVs
OworCX0gZWxzZSB7CisJCWxldmVsID0gYmFja2xpZ2h0X2RhdGEtPmxldmVsW3BhbmVsX3R5cGVd
OworCQlkZXZfcHJpdi0+dmJ0LmJhY2tsaWdodC5taW5fYnJpZ2h0bmVzcyA9IGVudHJ5LT5taW5f
YnJpZ2h0bmVzczsKKwl9CisKIAlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwKIAkJICAgICJW
QlQgYmFja2xpZ2h0IFBXTSBtb2R1bGF0aW9uIGZyZXF1ZW5jeSAldSBIeiwgIgogCQkgICAgImFj
dGl2ZSAlcywgbWluIGJyaWdodG5lc3MgJXUsIGxldmVsICV1LCBjb250cm9sbGVyICV1XG4iLAog
CQkgICAgZGV2X3ByaXYtPnZidC5iYWNrbGlnaHQucHdtX2ZyZXFfaHosCiAJCSAgICBkZXZfcHJp
di0+dmJ0LmJhY2tsaWdodC5hY3RpdmVfbG93X3B3bSA/ICJsb3ciIDogImhpZ2giLAogCQkgICAg
ZGV2X3ByaXYtPnZidC5iYWNrbGlnaHQubWluX2JyaWdodG5lc3MsCi0JCSAgICBiYWNrbGlnaHRf
ZGF0YS0+bGV2ZWxbcGFuZWxfdHlwZV0sCisJCSAgICBsZXZlbCwKIAkJICAgIGRldl9wcml2LT52
YnQuYmFja2xpZ2h0LmNvbnRyb2xsZXIpOwogfQogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZidF9kZWZzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3ZidF9kZWZzLmgKaW5kZXggNTRiY2M2YTY5NDdjLi41ZGYyM2UxODQ4YTYg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMu
aAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZidF9kZWZzLmgKQEAg
LTc4Miw3ICs3ODIsNyBAQCBzdHJ1Y3QgbGZwX2JhY2tsaWdodF9kYXRhX2VudHJ5IHsKIAl1OCBh
Y3RpdmVfbG93X3B3bToxOwogCXU4IG9ic29sZXRlMTo1OwogCXUxNiBwd21fZnJlcV9oejsKLQl1
OCBtaW5fYnJpZ2h0bmVzczsKKwl1OCBtaW5fYnJpZ2h0bmVzczsgLyogT2Jzb2xldGUgZnJvbSAy
MzQrICovCiAJdTggb2Jzb2xldGUyOwogCXU4IG9ic29sZXRlMzsKIH0gX19wYWNrZWQ7CkBAIC03
OTIsMTEgKzc5MiwxOSBAQCBzdHJ1Y3QgbGZwX2JhY2tsaWdodF9jb250cm9sX21ldGhvZCB7CiAJ
dTggY29udHJvbGxlcjo0OwogfSBfX3BhY2tlZDsKIAorc3RydWN0IGxmcF9icmlnaHRuZXNzX2xl
dmVsIHsKKwl1MTYgbGV2ZWw7CisJdTE2IHJlc2VydmVkOworfSBfX3BhY2tlZDsKKwogc3RydWN0
IGJkYl9sZnBfYmFja2xpZ2h0X2RhdGEgewogCXU4IGVudHJ5X3NpemU7CiAJc3RydWN0IGxmcF9i
YWNrbGlnaHRfZGF0YV9lbnRyeSBkYXRhWzE2XTsKLQl1OCBsZXZlbFsxNl07CisJdTggbGV2ZWxb
MTZdOyAvKiBPYnNvbGV0ZSBmcm9tIDIzNCsgKi8KIAlzdHJ1Y3QgbGZwX2JhY2tsaWdodF9jb250
cm9sX21ldGhvZCBiYWNrbGlnaHRfY29udHJvbFsxNl07CisJc3RydWN0IGxmcF9icmlnaHRuZXNz
X2xldmVsIGJyaWdodG5lc3NfbGV2ZWxbMTZdOwkJLyogMjM0KyAqLworCXN0cnVjdCBsZnBfYnJp
Z2h0bmVzc19sZXZlbCBicmlnaHRuZXNzX21pbl9sZXZlbFsxNl07CS8qIDIzNCsgKi8KKwl1OCBi
cmlnaHRuZXNzX3ByZWNpc2lvbl9iaXRzWzE2XTsJCQkJCQkvKiAyMzYrICovCiB9IF9fcGFja2Vk
OwogCiAvKgotLSAKMi4yOC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
