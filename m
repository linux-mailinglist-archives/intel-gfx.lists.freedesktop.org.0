Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C212E7A2C0
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 10:03:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A5906E446;
	Tue, 30 Jul 2019 08:03:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71DDF6E442
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 08:03:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 01:03:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,326,1559545200"; d="scan'208";a="176702459"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by orsmga006.jf.intel.com with ESMTP; 30 Jul 2019 01:03:17 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jul 2019 13:06:47 +0530
Message-Id: <20190730073648.5157-6-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
In-Reply-To: <20190730073648.5157-1-vandita.kulkarni@intel.com>
References: <20190730073648.5157-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v2 5/6] drm/i915/tgl: Add mipi dsi support for TGL
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TW9zdCBvZiB0aGUgZnVuY3Rpb25zIGFuZCBtaXBpIGRzaSBzZXF1ZW5jZSByZW1haW5zCnNhbWUg
YXMgb2YgSUNMIGZvciBUR0wuIEhlbmNlIGV4dGVuZGluZyB0aGUgc3VwcG9ydAp0byBUR0wuCgpT
aWduZWQtb2ZmLWJ5OiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDEg
KwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCA5ZTRlZTI5ZmQwZmMuLjcxYWU2MmU5NDc2
NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAg
LTE1MzE5LDYgKzE1MzE5LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfc2V0dXBfb3V0cHV0cyhzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJCWludGVsX2RkaV9pbml0KGRldl9wcml2
LCBQT1JUX0EpOwogCQlpbnRlbF9kZGlfaW5pdChkZXZfcHJpdiwgUE9SVF9CKTsKIAkJaW50ZWxf
ZGRpX2luaXQoZGV2X3ByaXYsIFBPUlRfQyk7CisJCWljbF9kc2lfaW5pdChkZXZfcHJpdik7CiAJ
fSBlbHNlIGlmIChJU19FTEtIQVJUTEFLRShkZXZfcHJpdikpIHsKIAkJaW50ZWxfZGRpX2luaXQo
ZGV2X3ByaXYsIFBPUlRfQSk7CiAJCWludGVsX2RkaV9pbml0KGRldl9wcml2LCBQT1JUX0IpOwot
LSAKMi4yMS4wLjUuZ2FlYjU4MmEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
