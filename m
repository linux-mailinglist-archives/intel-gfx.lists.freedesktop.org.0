Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F667A2BD
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 10:03:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37A556E43F;
	Tue, 30 Jul 2019 08:03:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B50E6E43D
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 08:03:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 01:03:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,326,1559545200"; d="scan'208";a="176702445"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by orsmga006.jf.intel.com with ESMTP; 30 Jul 2019 01:03:13 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jul 2019 13:06:45 +0530
Message-Id: <20190730073648.5157-4-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
In-Reply-To: <20190730073648.5157-1-vandita.kulkarni@intel.com>
References: <20190730073648.5157-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v2 3/6] drm/i915/tgl/dsi: Do not override TA_SURE
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

RG8gbm90IG92ZXJyaWRlIFRBX1NVUkUgdGltaW5nIHBhcmFtZXRlciB0bwp6ZXJvIGZvciBEU0kg
OFggZnJlcXVlbmN5IDgwME1IeiBvciBiZWxvdyBvbgpUR0wuCgpTaWduZWQtb2ZmLWJ5OiBWYW5k
aXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFVt
YSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pY2xfZHNpLmMgfCAyNiArKysrKysrKysrKysrKy0tLS0tLS0tLS0tLQogMSBm
aWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMKaW5kZXggMzE4NWNiMGJhZTQxLi5jNmNkYTUyOWM1
YmIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jCkBAIC01MzAsMTggKzUz
MCwyMCBAQCBzdGF0aWMgdm9pZCBnZW4xMV9kc2lfc2V0dXBfZHBoeV90aW1pbmdzKHN0cnVjdCBp
bnRlbF9lbmNvZGVyICplbmNvZGVyKQogCSAqIGEgdmFsdWUgJzAnIGluc2lkZSBUQV9QQVJBTV9S
RUdJU1RFUlMgb3RoZXJ3aXNlCiAJICogbGVhdmUgYWxsIGZpZWxkcyBhdCBIVyBkZWZhdWx0IHZh
bHVlcy4KIAkgKi8KLQlpZiAoaW50ZWxfZHNpX2JpdHJhdGUoaW50ZWxfZHNpKSA8PSA4MDAwMDAp
IHsKLQkJZm9yX2VhY2hfZHNpX3BvcnQocG9ydCwgaW50ZWxfZHNpLT5wb3J0cykgewotCQkJdG1w
ID0gSTkxNV9SRUFEKERQSFlfVEFfVElNSU5HX1BBUkFNKHBvcnQpKTsKLQkJCXRtcCAmPSB+VEFf
U1VSRV9NQVNLOwotCQkJdG1wIHw9IFRBX1NVUkVfT1ZFUlJJREUgfCBUQV9TVVJFKDApOwotCQkJ
STkxNV9XUklURShEUEhZX1RBX1RJTUlOR19QQVJBTShwb3J0KSwgdG1wKTsKLQotCQkJLyogc2hh
ZG93IHJlZ2lzdGVyIGluc2lkZSBkaXNwbGF5IGNvcmUgKi8KLQkJCXRtcCA9IEk5MTVfUkVBRChE
U0lfVEFfVElNSU5HX1BBUkFNKHBvcnQpKTsKLQkJCXRtcCAmPSB+VEFfU1VSRV9NQVNLOwotCQkJ
dG1wIHw9IFRBX1NVUkVfT1ZFUlJJREUgfCBUQV9TVVJFKDApOwotCQkJSTkxNV9XUklURShEU0lf
VEFfVElNSU5HX1BBUkFNKHBvcnQpLCB0bXApOworCWlmIChJU19HRU4oZGV2X3ByaXYsIDExKSkg
eworCQlpZiAoaW50ZWxfZHNpX2JpdHJhdGUoaW50ZWxfZHNpKSA8PSA4MDAwMDApIHsKKwkJCWZv
cl9lYWNoX2RzaV9wb3J0KHBvcnQsIGludGVsX2RzaS0+cG9ydHMpIHsKKwkJCQl0bXAgPSBJOTE1
X1JFQUQoRFBIWV9UQV9USU1JTkdfUEFSQU0ocG9ydCkpOworCQkJCXRtcCAmPSB+VEFfU1VSRV9N
QVNLOworCQkJCXRtcCB8PSBUQV9TVVJFX09WRVJSSURFIHwgVEFfU1VSRSgwKTsKKwkJCQlJOTE1
X1dSSVRFKERQSFlfVEFfVElNSU5HX1BBUkFNKHBvcnQpLCB0bXApOworCisJCQkJLyogc2hhZG93
IHJlZ2lzdGVyIGluc2lkZSBkaXNwbGF5IGNvcmUgKi8KKwkJCQl0bXAgPSBJOTE1X1JFQUQoRFNJ
X1RBX1RJTUlOR19QQVJBTShwb3J0KSk7CisJCQkJdG1wICY9IH5UQV9TVVJFX01BU0s7CisJCQkJ
dG1wIHw9IFRBX1NVUkVfT1ZFUlJJREUgfCBUQV9TVVJFKDApOworCQkJCUk5MTVfV1JJVEUoRFNJ
X1RBX1RJTUlOR19QQVJBTShwb3J0KSwgdG1wKTsKKwkJCX0KIAkJfQogCX0KIAotLSAKMi4yMS4w
LjUuZ2FlYjU4MmEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
