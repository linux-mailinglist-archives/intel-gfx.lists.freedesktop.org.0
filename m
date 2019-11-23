Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2855107C34
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Nov 2019 01:55:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E4E26F5A0;
	Sat, 23 Nov 2019 00:55:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29BE76F598
 for <intel-gfx@lists.freedesktop.org>; Sat, 23 Nov 2019 00:55:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Nov 2019 16:55:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,231,1571727600"; d="scan'208";a="219644001"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.98.40.73])
 by orsmga002.jf.intel.com with ESMTP; 22 Nov 2019 16:55:02 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Nov 2019 16:54:57 -0800
Message-Id: <20191123005459.155383-5-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191123005459.155383-1-jose.souza@intel.com>
References: <20191123005459.155383-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/7] drm/i915/display/mst: Move DPMS_OFF call to
 post_disable
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

TW92aW5nIGp1c3QgdG8gc2ltcGxpZnkgaGFuZGxpbmcgYXMgdGhlcmUgaXMgbm8gY2hhbmdlIGlu
IGJlaGF2aW9yLgoKQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29t
PgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jICAgIHwg
MTQgKysrKysrKy0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBf
bXN0LmMgfCAgMSAtCiAyIGZpbGVzIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rk
aS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwppbmRleCA3ZDNh
NmUzYzdmNTcuLmNmY2FhN2M4MTU3NSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RkaS5jCkBAIC0zODA3LDE0ICszODA3LDE0IEBAIHN0YXRpYyB2b2lkIGludGVsX2RkaV9w
b3N0X2Rpc2FibGVfZHAoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJCQkJCSAgSU5U
RUxfT1VUUFVUX0RQX01TVCk7CiAJZW51bSBwaHkgcGh5ID0gaW50ZWxfcG9ydF90b19waHkoZGV2
X3ByaXYsIGVuY29kZXItPnBvcnQpOwogCi0JaWYgKCFpc19tc3QpIHsKLQkJLyoKLQkJICogUG93
ZXIgZG93biBzaW5rIGJlZm9yZSBkaXNhYmxpbmcgdGhlIHBvcnQsIG90aGVyd2lzZSB3ZSBlbmQK
LQkJICogdXAgZ2V0dGluZyBpbnRlcnJ1cHRzIGZyb20gdGhlIHNpbmsgb24gZGV0ZWN0aW5nIGxp
bmsgbG9zcy4KLQkJICovCi0JCWludGVsX2RwX3NpbmtfZHBtcyhpbnRlbF9kcCwgRFJNX01PREVf
RFBNU19PRkYpOworCS8qCisJICogUG93ZXIgZG93biBzaW5rIGJlZm9yZSBkaXNhYmxpbmcgdGhl
IHBvcnQsIG90aGVyd2lzZSB3ZSBlbmQKKwkgKiB1cCBnZXR0aW5nIGludGVycnVwdHMgZnJvbSB0
aGUgc2luayBvbiBkZXRlY3RpbmcgbGluayBsb3NzLgorCSAqLworCWludGVsX2RwX3NpbmtfZHBt
cyhpbnRlbF9kcCwgRFJNX01PREVfRFBNU19PRkYpOworCisJaWYgKCFpc19tc3QpCiAJCWludGVs
X2RkaV9kaXNhYmxlX3BpcGVfY2xvY2sob2xkX2NydGNfc3RhdGUpOwotCX0KIAogCWludGVsX2Rp
c2FibGVfZGRpX2J1ZihlbmNvZGVyLCBvbGRfY3J0Y19zdGF0ZSk7CiAKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jCmluZGV4IDk3MzFjM2MxZDNmMi4uOTQ1NDk4
NDg2NTNhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
X21zdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMK
QEAgLTM5MCw3ICszOTAsNiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9tc3RfcG9zdF9kaXNhYmxlX2Rw
KHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCiAJaW50ZWxfbXN0LT5jb25uZWN0b3Ig
PSBOVUxMOwogCWlmIChpbnRlbF9kcC0+YWN0aXZlX21zdF9saW5rcyA9PSAwKSB7Ci0JCWludGVs
X2RwX3NpbmtfZHBtcyhpbnRlbF9kcCwgRFJNX01PREVfRFBNU19PRkYpOwogCQlpbnRlbF9kaWdf
cG9ydC0+YmFzZS5wb3N0X2Rpc2FibGUoJmludGVsX2RpZ19wb3J0LT5iYXNlLAogCQkJCQkJICBv
bGRfY3J0Y19zdGF0ZSwgTlVMTCk7CiAJCWludGVsX2RwLT5tc3RfbWFzdGVyX3RyYW5zY29kZXIg
PSBJTlZBTElEX1RSQU5TQ09ERVI7Ci0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
