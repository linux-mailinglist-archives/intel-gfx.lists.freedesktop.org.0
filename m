Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E201B72B
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2019 15:39:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C268489CFA;
	Mon, 13 May 2019 13:39:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3851A89CFA
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 May 2019 13:39:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 May 2019 06:39:13 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 13 May 2019 06:39:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 13 May 2019 16:39:11 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 May 2019 16:39:04 +0300
Message-Id: <20190513133904.20374-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190513133904.20374-1-ville.syrjala@linux.intel.com>
References: <20190513133904.20374-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Add debugs for the C8 vs. legacy
 LUT case
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkxl
YXZlIGEgaGludCBpbiBkbWVzZyB3aGVuIHdlIHJlamVjdCBhIGNvbmZpZ3VyYXRpb24gYXR0ZW1w
dGluZwp0byB1c2UgQzggcGxhbmVzIHdpdGhvdXQgdGhlIGxlZ2FjeSBMVVQgbG9hZGVkLgoKU2ln
bmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5jIHwgNCArKystCiAxIGZp
bGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2NvbG9yLmMKaW5kZXggOTYyZGIxMjM2OTcwLi40NTY0OTkwNGJhNWMgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NvbG9yLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfY29sb3IuYwpAQCAtOTU5LDggKzk1OSwxMCBAQCBzdGF0aWMgaW50IGNo
ZWNrX2x1dHMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiAJCXJl
dHVybiAwOwogCiAJLyogQzggcmVsaWVzIG9uIGl0cyBwYWxldHRlIGJlaW5nIHN0b3JlZCBpbiB0
aGUgbGVnYWN5IExVVCAqLwotCWlmIChjcnRjX3N0YXRlLT5jOF9wbGFuZXMpCisJaWYgKGNydGNf
c3RhdGUtPmM4X3BsYW5lcykgeworCQlEUk1fREVCVUdfS01TKCJDOCBwaXhlbGZvcm1hdCByZXF1
aXJlcyB0aGUgbGVnYWN5IExVVFxuIik7CiAJCXJldHVybiAtRUlOVkFMOworCX0KIAogCWRlZ2Ft
bWFfbGVuZ3RoID0gSU5URUxfSU5GTyhkZXZfcHJpdiktPmNvbG9yLmRlZ2FtbWFfbHV0X3NpemU7
CiAJZ2FtbWFfbGVuZ3RoID0gSU5URUxfSU5GTyhkZXZfcHJpdiktPmNvbG9yLmdhbW1hX2x1dF9z
aXplOwotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
