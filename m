Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A9113B099
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 10:19:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 272BE88FF9;
	Mon, 10 Jun 2019 08:19:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF49688FF9
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 08:19:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jun 2019 01:19:20 -0700
X-ExtLoop1: 1
Received: from jkantykx-mobl.gar.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.249.140.85])
 by fmsmga006.fm.intel.com with ESMTP; 10 Jun 2019 01:19:18 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jun 2019 11:19:14 +0300
Message-Id: <20190610081914.25428-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.21.0.392.gf8f6787159e
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/perf: fix ICL perf register offsets
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

V2UgZ290IHRoZSB3cm9uZyBvZmZzZXRzIChjb3VsZCB0aGV5IGhhdmUgY2hhbmdlZD8pLiBOZXcg
dmFsdWVzIHdlcmUKY29tcHV0ZWQgb2ZmIGFuIGVycm9yIHN0YXRlIGJ5IGxvb2tpbmcgdXAgdGhl
IHJlZ2lzdGVyIG9mZnNldCBpbiB0aGUKY29udGV4dCBpbWFnZSBhcyB3cml0dGVuIGJ5IHRoZSBI
Vy4KClNpZ25lZC1vZmYtYnk6IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGlu
QGludGVsLmNvbT4KRml4ZXM6IDFkZTQwMWMwOGZhODA1ICgiZHJtL2k5MTUvcGVyZjogZW5hYmxl
IHBlcmYgc3VwcG9ydCBvbiBJQ0wiKQotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVy
Zi5jIHwgMTAgKysrKysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMyBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCmluZGV4IDRhNzY3MDg3ZGUyNy4u
NmM4NTE5MWZjNmM5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwpAQCAtMzYxMiw5ICszNjEy
LDEzIEBAIHZvaWQgaTkxNV9wZXJmX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2KQogCQkJZGV2X3ByaXYtPnBlcmYub2Eub3BzLmVuYWJsZV9tZXRyaWNfc2V0ID0gZ2VuOF9l
bmFibGVfbWV0cmljX3NldDsKIAkJCWRldl9wcml2LT5wZXJmLm9hLm9wcy5kaXNhYmxlX21ldHJp
Y19zZXQgPSBnZW4xMF9kaXNhYmxlX21ldHJpY19zZXQ7CiAKLQkJCWRldl9wcml2LT5wZXJmLm9h
LmN0eF9vYWN0eGN0cmxfb2Zmc2V0ID0gMHgxMjg7Ci0JCQlkZXZfcHJpdi0+cGVyZi5vYS5jdHhf
ZmxleGV1MF9vZmZzZXQgPSAweDNkZTsKLQorCQkJaWYgKElTX0dFTihkZXZfcHJpdiwgMTApKSB7
CisJCQkJZGV2X3ByaXYtPnBlcmYub2EuY3R4X29hY3R4Y3RybF9vZmZzZXQgPSAweDEyODsKKwkJ
CQlkZXZfcHJpdi0+cGVyZi5vYS5jdHhfZmxleGV1MF9vZmZzZXQgPSAweDNkZTsKKwkJCX0gZWxz
ZSB7CisJCQkJZGV2X3ByaXYtPnBlcmYub2EuY3R4X29hY3R4Y3RybF9vZmZzZXQgPSAweDEyNDsK
KwkJCQlkZXZfcHJpdi0+cGVyZi5vYS5jdHhfZmxleGV1MF9vZmZzZXQgPSAweDc4ZTsKKwkJCX0K
IAkJCWRldl9wcml2LT5wZXJmLm9hLmdlbjhfdmFsaWRfY3R4X2JpdCA9ICgxPDwxNik7CiAJCX0K
IAl9Ci0tIAoyLjIxLjAuMzkyLmdmOGY2Nzg3MTU5ZQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
