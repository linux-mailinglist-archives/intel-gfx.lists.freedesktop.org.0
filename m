Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C910D7C1A
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 18:40:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A2EA6E86B;
	Tue, 15 Oct 2019 16:40:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56FC589191
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 16:40:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 09:40:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,300,1566889200"; d="scan'208";a="279240735"
Received: from unknown (HELO ldmartin-desk1.intel.com) ([10.24.11.83])
 by orsmga001.jf.intel.com with ESMTP; 15 Oct 2019 09:40:38 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 09:40:25 -0700
Message-Id: <20191015164029.18431-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191015164029.18431-1-lucas.demarchi@intel.com>
References: <20191015164029.18431-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 v2 1/5] drm/i915: simplify setting of
 ddi_io_power_domain
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

SW5zdGVhZCBvZiB0aGUgZXZlciBncm93aW5nIHN3aXRjaCwganVzdCBjb21wdXRlIHRoZSBkZGkg
aW8gcG93ZXIgZG9tYWluCmJhc2VkIG9uIHRoZSBwb3J0IG51bWJlci4KClNpZ25lZC1vZmYtYnk6
IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTog
Sm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ckxpbms6IGh0dHBz
Oi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC9tc2dpZC8yMDE5MTAxMTAxMDkwNy4x
MDMzMDktMi1sdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgNDMgKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZp
bGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA0MCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwppbmRleCA2YzEzMTVjN2JjZGUuLmIyNzc2ZjYw
NDRhZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGku
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC00NzUw
LDQ2ICs0NzUwLDkgQEAgdm9pZCBpbnRlbF9kZGlfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYsIGVudW0gcG9ydCBwb3J0KQogCQlpbnRlbF9lbmNvZGVyLT51cGRhdGVfY29t
cGxldGUgPSBpbnRlbF9kZGlfdXBkYXRlX2NvbXBsZXRlOwogCX0KIAotCXN3aXRjaCAocG9ydCkg
ewotCWNhc2UgUE9SVF9BOgotCQlpbnRlbF9kaWdfcG9ydC0+ZGRpX2lvX3Bvd2VyX2RvbWFpbiA9
Ci0JCQlQT1dFUl9ET01BSU5fUE9SVF9ERElfQV9JTzsKLQkJYnJlYWs7Ci0JY2FzZSBQT1JUX0I6
Ci0JCWludGVsX2RpZ19wb3J0LT5kZGlfaW9fcG93ZXJfZG9tYWluID0KLQkJCVBPV0VSX0RPTUFJ
Tl9QT1JUX0RESV9CX0lPOwotCQlicmVhazsKLQljYXNlIFBPUlRfQzoKLQkJaW50ZWxfZGlnX3Bv
cnQtPmRkaV9pb19wb3dlcl9kb21haW4gPQotCQkJUE9XRVJfRE9NQUlOX1BPUlRfRERJX0NfSU87
Ci0JCWJyZWFrOwotCWNhc2UgUE9SVF9EOgotCQlpbnRlbF9kaWdfcG9ydC0+ZGRpX2lvX3Bvd2Vy
X2RvbWFpbiA9Ci0JCQlQT1dFUl9ET01BSU5fUE9SVF9ERElfRF9JTzsKLQkJYnJlYWs7Ci0JY2Fz
ZSBQT1JUX0U6Ci0JCWludGVsX2RpZ19wb3J0LT5kZGlfaW9fcG93ZXJfZG9tYWluID0KLQkJCVBP
V0VSX0RPTUFJTl9QT1JUX0RESV9FX0lPOwotCQlicmVhazsKLQljYXNlIFBPUlRfRjoKLQkJaW50
ZWxfZGlnX3BvcnQtPmRkaV9pb19wb3dlcl9kb21haW4gPQotCQkJUE9XRVJfRE9NQUlOX1BPUlRf
RERJX0ZfSU87Ci0JCWJyZWFrOwotCWNhc2UgUE9SVF9HOgotCQlpbnRlbF9kaWdfcG9ydC0+ZGRp
X2lvX3Bvd2VyX2RvbWFpbiA9Ci0JCQlQT1dFUl9ET01BSU5fUE9SVF9ERElfR19JTzsKLQkJYnJl
YWs7Ci0JY2FzZSBQT1JUX0g6Ci0JCWludGVsX2RpZ19wb3J0LT5kZGlfaW9fcG93ZXJfZG9tYWlu
ID0KLQkJCVBPV0VSX0RPTUFJTl9QT1JUX0RESV9IX0lPOwotCQlicmVhazsKLQljYXNlIFBPUlRf
SToKLQkJaW50ZWxfZGlnX3BvcnQtPmRkaV9pb19wb3dlcl9kb21haW4gPQotCQkJUE9XRVJfRE9N
QUlOX1BPUlRfRERJX0lfSU87Ci0JCWJyZWFrOwotCWRlZmF1bHQ6Ci0JCU1JU1NJTkdfQ0FTRShw
b3J0KTsKLQl9CisJV0FSTl9PTihwb3J0ID4gUE9SVF9JKTsKKwlpbnRlbF9kaWdfcG9ydC0+ZGRp
X2lvX3Bvd2VyX2RvbWFpbiA9IFBPV0VSX0RPTUFJTl9QT1JUX0RESV9BX0lPICsKKwkJCQkJICAg
ICAgcG9ydCAtIFBPUlRfQTsKIAogCWlmIChpbml0X2RwKSB7CiAJCWlmICghaW50ZWxfZGRpX2lu
aXRfZHBfY29ubmVjdG9yKGludGVsX2RpZ19wb3J0KSkKLS0gCjIuMjMuMAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
