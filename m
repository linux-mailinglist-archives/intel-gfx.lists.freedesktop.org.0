Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 171AE10F2D7
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2019 23:25:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 277C66E359;
	Mon,  2 Dec 2019 22:25:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B31006E222
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2019 22:25:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Dec 2019 14:25:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,270,1571727600"; d="scan'208";a="360972485"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.98.40.52])
 by orsmga004.jf.intel.com with ESMTP; 02 Dec 2019 14:25:18 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Dec 2019 14:25:13 -0800
Message-Id: <20191202222513.337777-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191202222513.337777-1-jose.souza@intel.com>
References: <20191202222513.337777-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH CI 3/3] drm/i915/display/mst: Move DPMS_OFF call
 to post_disable
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
PgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyAg
ICB8IDE0ICsrKysrKystLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwX21zdC5jIHwgIDEgLQogMiBmaWxlcyBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDggZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5kZXgg
MGNlMDZhOTRhMjdlLi5lYmNjNzMwMjcwNmIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kZGkuYwpAQCAtMzgwMSwxNCArMzgwMSwxNCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9k
ZGlfcG9zdF9kaXNhYmxlX2RwKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCQkJCQkg
IElOVEVMX09VVFBVVF9EUF9NU1QpOwogCWVudW0gcGh5IHBoeSA9IGludGVsX3BvcnRfdG9fcGh5
KGRldl9wcml2LCBlbmNvZGVyLT5wb3J0KTsKIAotCWlmICghaXNfbXN0KSB7Ci0JCS8qCi0JCSAq
IFBvd2VyIGRvd24gc2luayBiZWZvcmUgZGlzYWJsaW5nIHRoZSBwb3J0LCBvdGhlcndpc2Ugd2Ug
ZW5kCi0JCSAqIHVwIGdldHRpbmcgaW50ZXJydXB0cyBmcm9tIHRoZSBzaW5rIG9uIGRldGVjdGlu
ZyBsaW5rIGxvc3MuCi0JCSAqLwotCQlpbnRlbF9kcF9zaW5rX2RwbXMoaW50ZWxfZHAsIERSTV9N
T0RFX0RQTVNfT0ZGKTsKKwkvKgorCSAqIFBvd2VyIGRvd24gc2luayBiZWZvcmUgZGlzYWJsaW5n
IHRoZSBwb3J0LCBvdGhlcndpc2Ugd2UgZW5kCisJICogdXAgZ2V0dGluZyBpbnRlcnJ1cHRzIGZy
b20gdGhlIHNpbmsgb24gZGV0ZWN0aW5nIGxpbmsgbG9zcy4KKwkgKi8KKwlpbnRlbF9kcF9zaW5r
X2RwbXMoaW50ZWxfZHAsIERSTV9NT0RFX0RQTVNfT0ZGKTsKKworCWlmICghaXNfbXN0KQogCQlp
bnRlbF9kZGlfZGlzYWJsZV9waXBlX2Nsb2NrKG9sZF9jcnRjX3N0YXRlKTsKLQl9CiAKIAlpbnRl
bF9kaXNhYmxlX2RkaV9idWYoZW5jb2Rlciwgb2xkX2NydGNfc3RhdGUpOwogCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYwppbmRleCBmOGEzNTAzNTkzNDYuLmEx
ZTRmNDE5N2E2NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcF9tc3QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21z
dC5jCkBAIC0yNTYsNyArMjU2LDYgQEAgc3RhdGljIHZvaWQgaW50ZWxfbXN0X3Bvc3RfZGlzYWJs
ZV9kcChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAogCWludGVsX21zdC0+Y29ubmVj
dG9yID0gTlVMTDsKIAlpZiAoaW50ZWxfZHAtPmFjdGl2ZV9tc3RfbGlua3MgPT0gMCkgewotCQlp
bnRlbF9kcF9zaW5rX2RwbXMoaW50ZWxfZHAsIERSTV9NT0RFX0RQTVNfT0ZGKTsKIAkJaW50ZWxf
ZGlnX3BvcnQtPmJhc2UucG9zdF9kaXNhYmxlKCZpbnRlbF9kaWdfcG9ydC0+YmFzZSwKIAkJCQkJ
CSAgb2xkX2NydGNfc3RhdGUsIE5VTEwpOwogCX0KLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
