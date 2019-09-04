Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C478A9534
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 23:34:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 688EE89C88;
	Wed,  4 Sep 2019 21:34:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3DE589C84
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2019 21:34:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 14:34:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,468,1559545200"; d="scan'208";a="199121713"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.135])
 by fmsmga001.fm.intel.com with ESMTP; 04 Sep 2019 14:34:31 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Sep 2019 14:34:18 -0700
Message-Id: <20190904213419.27547-6-jose.souza@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190904213419.27547-1-jose.souza@intel.com>
References: <20190904213419.27547-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/6] drm/i915/tgl: disable SAGV temporarily
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

RnJvbTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+CgpTQUdWIGlz
IG5vdCBjdXJyZW50bHkgd29ya2luZyBmb3IgVGlnZXIgTGFrZS4gV2UgYmV0dGVyIGRpc2FibGUg
aXQgdW50aWwKdGhlIGltcGxlbWVudGF0aW9uIGlzIHN0YWJpbGl6ZWQgYW5kIHdlIGNhbiBlbmFi
bGUgaXQuCgpIU0RFUzogMTQwOTU0Mjg5NSAyMjA4MTkxOTA5CgpTaWduZWQtb2ZmLWJ5OiBMdWNh
cyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEpvc8Op
IFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3BtLmMgfCA0ICsrKysKIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlv
bnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwppbmRleCA0ZmE5YmM4M2M4YjQuLjcyOTRmY2Yw
NTMyMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCkBAIC0zNjU0LDYgKzM2NTQsMTAgQEAgc3Rh
dGljIGJvb2wgc2tsX25lZWRzX21lbW9yeV9id193YShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYpCiBzdGF0aWMgYm9vbAogaW50ZWxfaGFzX3NhZ3Yoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KQogeworCS8qIEhBQ0shICovCisJaWYgKElTX0dFTihkZXZfcHJpdiwg
MTIpKQorCQlyZXR1cm4gZmFsc2U7CisKIAlyZXR1cm4gKElTX0dFTjlfQkMoZGV2X3ByaXYpIHx8
IElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTApICYmCiAJCWRldl9wcml2LT5zYWd2X3N0YXR1cyAh
PSBJOTE1X1NBR1ZfTk9UX0NPTlRST0xMRUQ7CiB9Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
