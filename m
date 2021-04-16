Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22788362662
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Apr 2021 19:10:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78B1D6EC88;
	Fri, 16 Apr 2021 17:10:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B7036EC88
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Apr 2021 17:10:30 +0000 (UTC)
IronPort-SDR: F9dOb8O3+OXa2WETGqrKo9m09Cu2VkI4EcPtYiSWxIlilCkjbqOd9h33LgKPzkqBQyYm36tyjQ
 kE+W5QDrS3qg==
X-IronPort-AV: E=McAfee;i="6200,9189,9956"; a="215609219"
X-IronPort-AV: E=Sophos;i="5.82,226,1613462400"; d="scan'208";a="215609219"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2021 10:10:29 -0700
IronPort-SDR: t/iZuxG1ezhWPaGtTRINM39kx5Dr+IUHgtGW3d8v0JU4ywISIzG324nq6f+qQlGdDT/Fh93E6B
 Gr03QLu52rPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,226,1613462400"; d="scan'208";a="522764596"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 16 Apr 2021 10:10:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 16 Apr 2021 20:10:24 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Apr 2021 20:10:07 +0300
Message-Id: <20210416171011.19012-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210416171011.19012-1-ville.syrjala@linux.intel.com>
References: <20210416171011.19012-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/8] drm/i915: Use intel_dbuf_slice_size()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClVz
ZSBpbnRlbF9kYnVmX3NsaWNlX3NpemUoKSBpbnN0ZWFkIG9mIGhhbmQgcm9sbGluZyBpdC4KQWxz
byBjbGVhbiB1cCBzb21lIG9mIHRoZSB0eXBlcy4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfcG0uYyB8IDkgKysrLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRp
b25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCmluZGV4IDg4ZWI1
NDI0MWI5Zi4uMzhlMmJhNDViZmQ4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKQEAgLTQwNjYs
MTIgKzQwNjYsOSBAQCBza2xfZGRiX2VudHJ5X2Zvcl9zbGljZXMoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2LCB1OCBzbGljZV9tYXNrLAogdTMyIHNrbF9kZGJfZGJ1Zl9zbGljZV9t
YXNrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJCSAgICBjb25zdCBzdHJ1
Y3Qgc2tsX2RkYl9lbnRyeSAqZW50cnkpCiB7Ci0JdTMyIHNsaWNlX21hc2sgPSAwOwotCXUxNiBk
ZGJfc2l6ZSA9IGludGVsX2RidWZfc2l6ZShkZXZfcHJpdik7Ci0JaW50IG51bV9zbGljZXMgPSBp
bnRlbF9kYnVmX251bV9zbGljZXMoZGV2X3ByaXYpOwotCXUxNiBzbGljZV9zaXplID0gZGRiX3Np
emUgLyBudW1fc2xpY2VzOwotCXUxNiBzdGFydF9zbGljZTsKLQl1MTYgZW5kX3NsaWNlOworCWlu
dCBzbGljZV9zaXplID0gaW50ZWxfZGJ1Zl9zbGljZV9zaXplKGRldl9wcml2KTsKKwllbnVtIGRi
dWZfc2xpY2Ugc3RhcnRfc2xpY2UsIGVuZF9zbGljZTsKKwl1OCBzbGljZV9tYXNrID0gMDsKIAog
CWlmICghc2tsX2RkYl9lbnRyeV9zaXplKGVudHJ5KSkKIAkJcmV0dXJuIDA7Ci0tIAoyLjI2LjMK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
