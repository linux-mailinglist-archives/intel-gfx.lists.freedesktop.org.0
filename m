Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E89498148
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 19:30:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42A256E375;
	Wed, 21 Aug 2019 17:30:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F3C66E375
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 17:30:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Aug 2019 10:30:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,412,1559545200"; d="scan'208";a="186293317"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 21 Aug 2019 10:30:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 21 Aug 2019 20:30:42 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Aug 2019 20:30:32 +0300
Message-Id: <20190821173033.24123-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190821173033.24123-1-ville.syrjala@linux.intel.com>
References: <20190821173033.24123-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/5] drm/i915:
 s/num_active_crtcs/num_active_pipes/
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClNl
dCBhIGdvb2QgZXhhbXBsZSBhbmQgdGFsayBhYm91dCBwaXBlcyByYXRoZXIgdGhhbiBjcnRjcy4K
ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyB8IDE0ICsrKysrKyst
LS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9wbS5jCmluZGV4IGQ2YmY1YjY0ZGQzMi4uZTg2NTAzMDIzZGFmIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX3BtLmMKQEAgLTE0OTAsNyArMTQ5MCw3IEBAIHN0YXRpYyB2b2lk
IGc0eF9tZXJnZV93bShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCQkgc3Ry
dWN0IGc0eF93bV92YWx1ZXMgKndtKQogewogCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOwotCWlu
dCBudW1fYWN0aXZlX2NydGNzID0gMDsKKwlpbnQgbnVtX2FjdGl2ZV9waXBlcyA9IDA7CiAKIAl3
bS0+Y3hzciA9IHRydWU7CiAJd20tPmhwbGxfZW4gPSB0cnVlOwpAQCAtMTUwOSwxMCArMTUwOSwx
MCBAQCBzdGF0aWMgdm9pZCBnNHhfbWVyZ2Vfd20oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LAogCQlpZiAoIXdtX3N0YXRlLT5mYmNfZW4pCiAJCQl3bS0+ZmJjX2VuID0gZmFsc2U7
CiAKLQkJbnVtX2FjdGl2ZV9jcnRjcysrOworCQludW1fYWN0aXZlX3BpcGVzKys7CiAJfQogCi0J
aWYgKG51bV9hY3RpdmVfY3J0Y3MgIT0gMSkgeworCWlmIChudW1fYWN0aXZlX3BpcGVzICE9IDEp
IHsKIAkJd20tPmN4c3IgPSBmYWxzZTsKIAkJd20tPmhwbGxfZW4gPSBmYWxzZTsKIAkJd20tPmZi
Y19lbiA9IGZhbHNlOwpAQCAtMjA5OCw3ICsyMDk4LDcgQEAgc3RhdGljIHZvaWQgdmx2X21lcmdl
X3dtKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJCSBzdHJ1Y3Qgdmx2X3dt
X3ZhbHVlcyAqd20pCiB7CiAJc3RydWN0IGludGVsX2NydGMgKmNydGM7Ci0JaW50IG51bV9hY3Rp
dmVfY3J0Y3MgPSAwOworCWludCBudW1fYWN0aXZlX3BpcGVzID0gMDsKIAogCXdtLT5sZXZlbCA9
IGRldl9wcml2LT53bS5tYXhfbGV2ZWw7CiAJd20tPmN4c3IgPSB0cnVlOwpAQCAtMjExMiwxNCAr
MjExMiwxNCBAQCBzdGF0aWMgdm9pZCB2bHZfbWVyZ2Vfd20oc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2LAogCQlpZiAoIXdtX3N0YXRlLT5jeHNyKQogCQkJd20tPmN4c3IgPSBmYWxz
ZTsKIAotCQludW1fYWN0aXZlX2NydGNzKys7CisJCW51bV9hY3RpdmVfcGlwZXMrKzsKIAkJd20t
PmxldmVsID0gbWluX3QoaW50LCB3bS0+bGV2ZWwsIHdtX3N0YXRlLT5udW1fbGV2ZWxzIC0gMSk7
CiAJfQogCi0JaWYgKG51bV9hY3RpdmVfY3J0Y3MgIT0gMSkKKwlpZiAobnVtX2FjdGl2ZV9waXBl
cyAhPSAxKQogCQl3bS0+Y3hzciA9IGZhbHNlOwogCi0JaWYgKG51bV9hY3RpdmVfY3J0Y3MgPiAx
KQorCWlmIChudW1fYWN0aXZlX3BpcGVzID4gMSkKIAkJd20tPmxldmVsID0gVkxWX1dNX0xFVkVM
X1BNMjsKIAogCWZvcl9lYWNoX2ludGVsX2NydGMoJmRldl9wcml2LT5kcm0sIGNydGMpIHsKLS0g
CjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
