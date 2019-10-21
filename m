Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1171EDF806
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 00:34:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6BBA6E2C0;
	Mon, 21 Oct 2019 22:34:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BECE86E2C0
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Oct 2019 22:34:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Oct 2019 15:34:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,325,1566889200"; d="scan'208";a="196946291"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.135])
 by fmsmga007.fm.intel.com with ESMTP; 21 Oct 2019 15:34:13 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Oct 2019 15:34:08 -0700
Message-Id: <20191021223408.87344-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tc: Clear DKL_TX_PMD_LANE_SUS before
 program voltage swing
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBzZXF1ZW5jZSB3YXMgcmVjZW50bHkgYWRkZWQgdG8gZml4IGludGVybmFsIEhXIHNlcXVl
bmNlcyB0bwpyZXNldCBUQyBwb3J0cy4KCkhTREVTOiAxNTA3Mjg3NjE0CkhTREVTOiAxNDAxMDA3
MTQ0NwpCU3BlYzogNDkyOTIKQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50
ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXph
QGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5j
IHwgMiArKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICB8IDYgKysr
KysrCiAyIGZpbGVzIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RkaS5jCmluZGV4IDliYTc5NGNiOWI0Zi4uNzRjZmRkOGRmZWM0IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKQEAgLTI4MzgsNiArMjgz
OCw4IEBAIHRnbF9ka2xfcGh5X2RkaV92c3dpbmdfc2VxdWVuY2Uoc3RydWN0IGludGVsX2VuY29k
ZXIgKmVuY29kZXIsIGludCBsaW5rX2Nsb2NrLAogCWZvciAobG4gPSAwOyBsbiA8IDI7IGxuKysp
IHsKIAkJSTkxNV9XUklURShISVBfSU5ERVhfUkVHKHRjX3BvcnQpLCBISVBfSU5ERVhfVkFMKHRj
X3BvcnQsIGxuKSk7CiAKKwkJSTkxNV9XUklURShES0xfVFhfUE1EX0xBTkVfU1VTKHRjX3BvcnQp
LCAwKTsKKwogCQkvKiBBbGwgdGhlIHJlZ2lzdGVycyBhcmUgUk1XICovCiAJCXZhbCA9IEk5MTVf
UkVBRChES0xfVFhfRFBDTlRMMCh0Y19wb3J0KSk7CiAJCXZhbCAmPSB+ZHBjbnRfbWFzazsKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IDg1NWRiODg4NTE2Yy4uNzY3ODkxYzAzMzJiIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTEwMjQ5LDYgKzEwMjQ5LDEyIEBAIGVudW0gc2tsX3Bv
d2VyX2dhdGUgewogCQkJCQkJICAgICBfREtMX1BIWTJfQkFTRSkgKyBcCiAJCQkJCQkgICAgIF9E
S0xfVFhfRldfQ0FMSUIpCiAKKyNkZWZpbmUgX0RLTF9UWF9QTURfTEFORV9TVVMJCQkJMHhEMDAK
KyNkZWZpbmUgREtMX1RYX1BNRF9MQU5FX1NVUyh0Y19wb3J0KSBfTU1JTyhfUE9SVCh0Y19wb3J0
LCBcCisJCQkJCQkJICBfREtMX1BIWTFfQkFTRSwgXAorCQkJCQkJCSAgX0RLTF9QSFkyX0JBU0Up
ICsgXAorCQkJCQkJCSAgX0RLTF9UWF9QTURfTEFORV9TVVMpCisKICNkZWZpbmUgX0RLTF9UWF9E
VzE3CQkJCQkweERDNAogI2RlZmluZSBES0xfVFhfRFcxNyh0Y19wb3J0KSBfTU1JTyhfUE9SVCh0
Y19wb3J0LCBcCiAJCQkJCQkgICAgIF9ES0xfUEhZMV9CQVNFLCBcCi0tIAoyLjIzLjAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
