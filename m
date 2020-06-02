Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D7981EB322
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jun 2020 03:49:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62A236E0EE;
	Tue,  2 Jun 2020 01:49:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 111786E0EE
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jun 2020 01:49:20 +0000 (UTC)
IronPort-SDR: K6N+Cdth8XvuLmlWRViCkSlBWe4eHhKTBJEe/N3m4TrFsSD6d0l80oaR0Uw5v3/MOPElxSI1Ld
 zxC8uPtCY9mQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2020 18:49:20 -0700
IronPort-SDR: whpzg5eGQHhoJIHOuqU7I5nf3qLnRbSzDW+TjKj1edjSLEErtVKyBfRRRI24A/XjpbsZFJik5P
 eI2Ki+a4AH9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,462,1583222400"; d="scan'208";a="444499094"
Received: from sgayen-mobl.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.254.69.79])
 by orsmga005.jf.intel.com with ESMTP; 01 Jun 2020 18:49:19 -0700
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Jun 2020 18:49:10 -0700
Message-Id: <20200602014910.13019-1-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Add Wa_1409371443
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

U2V0IEdNQlVTMCBQaW4gUGFpciBTZWxlY3QgdG8gMSBhdCBib290IGFuZCBlYWNoIEZMUiBleGl0
LgpSZXR1cm4gR01CVVMwIFBpbiBQYWlyIFNlbGVjdCB0byAxIGFmdGVyIEdNQlVTIHRyYW5zYWN0
aW9ucyBhcmUgZG9uZS4KCkNjOiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGlu
dGVsLmNvbT4KQ2M6IFBpb3RyIFBpw7Nya293c2tpIDxwaW90ci5waW9ya293c2tpQGludGVsLmNv
bT4KQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+CkNjOiBKb3NlIFNv
dXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQWRpdHlhIFN3YXJ1cCA8
YWRpdHlhLnN3YXJ1cEBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9nbWJ1cy5jIHwgMTYgKysrKysrKysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaCAgICAgICAgICAgIHwgIDIgKysKIDIgZmlsZXMgY2hhbmdlZCwgMTggaW5z
ZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZ21idXMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZ21idXMuYwpp
bmRleCBhOGQxMTliNmI0NWMuLjhkZDVhYTAyNWMzZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9nbWJ1cy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZ21idXMuYwpAQCAtMTM5LDExICsxMzksMTkgQEAgdG9faW50ZWxfZ21i
dXMoc3RydWN0IGkyY19hZGFwdGVyICppMmMpCiAJcmV0dXJuIGNvbnRhaW5lcl9vZihpMmMsIHN0
cnVjdCBpbnRlbF9nbWJ1cywgYWRhcHRlcik7CiB9CiAKK3N0YXRpYyB2b2lkIGdtYnVzMF93YV9y
ZXNldChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCit7CisJaW50ZWxfZGVfd3Jp
dGUoZGV2X3ByaXYsIEdNQlVTMCwgMCB8IEdNQlVTX1BJTl9QQUlSXzEpOworfQorCiB2b2lkCiBp
bnRlbF9nbWJ1c19yZXNldChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7CiAJ
aW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIEdNQlVTMCwgMCk7CiAJaW50ZWxfZGVfd3JpdGUoZGV2
X3ByaXYsIEdNQlVTNCwgMCk7CisJLyogV2FfMTQwOTM3MTQ0MzogdGdsW2EwXSAqLworCWlmIChJ
U19UR0xfUkVWSUQoZGV2X3ByaXYsIFRHTF9SRVZJRF9BMCwgVEdMX1JFVklEX0EwKSkKKwkJZ21i
dXMwX3dhX3Jlc2V0KGRldl9wcml2KTsKIH0KIAogc3RhdGljIHZvaWQgcG52X2dtYnVzX2Nsb2Nr
X2dhdGluZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCkBAIC0yOTksNiArMzA3
LDEwIEBAIGludGVsX2dwaW9fcG9zdF94ZmVyKHN0cnVjdCBpMmNfYWRhcHRlciAqYWRhcHRlcikK
IAogCWlmIChJU19QSU5FVklFVyhkZXZfcHJpdikpCiAJCXBudl9nbWJ1c19jbG9ja19nYXRpbmco
ZGV2X3ByaXYsIHRydWUpOworCisJLyogV2FfMTQwOTM3MTQ0MzogdGdsW2EwXSAqLworCWlmIChJ
U19UR0xfUkVWSUQoZGV2X3ByaXYsIFRHTF9SRVZJRF9BMCwgVEdMX1JFVklEX0EwKSkKKwkJZ21i
dXMwX3dhX3Jlc2V0KGRldl9wcml2KTsKIH0KIAogc3RhdGljIHZvaWQKQEAgLTk1NSw0ICs5Njcs
OCBAQCB2b2lkIGludGVsX2dtYnVzX3RlYXJkb3duKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdikKIAkJYnVzID0gJmRldl9wcml2LT5nbWJ1c1twaW5dOwogCQlpMmNfZGVsX2FkYXB0
ZXIoJmJ1cy0+YWRhcHRlcik7CiAJfQorCisJLyogV2FfMTQwOTM3MTQ0MzogdGdsW2EwXSAqLwor
CWlmIChJU19UR0xfUkVWSUQoZGV2X3ByaXYsIFRHTF9SRVZJRF9BMCwgVEdMX1JFVklEX0EwKSkK
KwkJZ21idXMwX3dhX3Jlc2V0KGRldl9wcml2KTsKIH0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmlu
ZGV4IDU3OGNmZTExY2JiOS4uYTE2NDA0NzZjZWZiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgK
QEAgLTMzMzcsNiArMzMzNyw4IEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBpOTE1X21taW9fcmVnX3Zh
bGlkKGk5MTVfcmVnX3QgcmVnKQogI2RlZmluZSAgIEdNQlVTX1JBVEVfMU1IWgkoMyA8PCA4KSAv
KiByZXNlcnZlZCBvbiBQaW5ldmlldyAqLwogI2RlZmluZSAgIEdNQlVTX0hPTERfRVhUCSgxIDw8
IDcpIC8qIDMwMG5zIGhvbGQgdGltZSwgcnN2ZCBvbiBQaW5ldmlldyAqLwogI2RlZmluZSAgIEdN
QlVTX0JZVEVfQ05UX09WRVJSSURFICgxIDw8IDYpCisjZGVmaW5lICAgR01CVVNfUElOX1BBSVJf
TUFTSwlSRUdfR0VOTUFTSyg0LCAwKQorI2RlZmluZSAgIEdNQlVTX1BJTl9QQUlSXzEJUkVHX0ZJ
RUxEX1BSRVAoR01CVVNfUElOX1BBSVJfTUFTSywgMSkKIAogI2RlZmluZSBHTUJVUzEJCQlfTU1J
TyhkZXZfcHJpdi0+Z3Bpb19tbWlvX2Jhc2UgKyAweDUxMDQpIC8qIGNvbW1hbmQvc3RhdHVzICov
CiAjZGVmaW5lICAgR01CVVNfU1dfQ0xSX0lOVAkoMSA8PCAzMSkKLS0gCjIuMjYuMgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
