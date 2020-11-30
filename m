Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D302C8ED3
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 21:14:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B32966E837;
	Mon, 30 Nov 2020 20:14:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6355B6E834
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 20:14:25 +0000 (UTC)
IronPort-SDR: JfoZzSo+3rVi7a3g330+jrdkKP2bHY0HzJ6sePv4HBErbRSkKZ+/WBD4qfDR0h4n0hENfpp5zu
 zlhU+KcXMeUQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="190892941"
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="190892941"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 12:14:12 -0800
IronPort-SDR: a2D20T5YHrt+Yald68T3aKfYKasCxKf6EbkszcQfvsqrMBCsuxbYBi0R7yJhsyis0Xu9WA0fe8
 yPnrFYsADoqA==
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="372472330"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 12:14:11 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Dec 2020 02:17:29 +0530
Message-Id: <20201130204738.2443-7-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201130204738.2443-1-uma.shankar@intel.com>
References: <20201130204738.2443-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v14 06/15] drm/i915/display: Attach content type
 property for LSPCON
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

Q29udGVudCB0eXBlIGlzIHN1cHBvcnRlZCBvbiBIRE1JIHNpbmsgZGV2aWNlcy4gQXR0YWNoZWQg
dGhlCnByb3BlcnR5IGZvciB0aGUgc2FtZSBmb3IgTFNQQ09OIGJhc2VkIGRldmljZXMuCgp2Mjog
QWRkZWQgdGhlIGNvbnRlbnQgdHlwZSBwcm9ncmFtbWluZyB3aGVuIHdlIGFyZSBhdHRhY2hpbmcK
dGhlIHByb3BlcnR5IHRvIGNvbm5lY3RvciwgYXMgc3VnZ2VzdGVkIGJ5IFZpbGxlLgoKdjM6IE5l
ZWQgdG8gYXR0YWNoIGNvbnRlbnQgdHlwZSBvbiBpbnRlbF9kcF9hZGRfcHJvcGVydGllcwphcyBj
cmVhdGluZyBvZiBuZXcgcHJvcGVydGllcyBpcyBub3QgcG9zc2libGUgYXQgbGF0ZV9yZWdpc3Rl
ci4KClNpZ25lZC1vZmYtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+ClJl
dmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyAgICAgfCAzICsr
KwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sc3Bjb24uYyB8IDIgKysKIDIg
ZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jCmluZGV4IDVhYWEwNmQ3MzYwOS4uNjlkZTE2M2JlNzc2IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCkBAIC03MTk1LDYgKzcxOTUsOSBAQCBpbnRl
bF9kcF9hZGRfcHJvcGVydGllcyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLCBzdHJ1Y3QgZHJt
X2Nvbm5lY3RvciAqY29ubmVjdAogCiAJaW50ZWxfYXR0YWNoX2NvbG9yc3BhY2VfcHJvcGVydHko
Y29ubmVjdG9yKTsKIAorCWlmIChpbnRlbF9iaW9zX2lzX2xzcGNvbl9wcmVzZW50KGRldl9wcml2
LCBwb3J0KSkKKwkJZHJtX2Nvbm5lY3Rvcl9hdHRhY2hfY29udGVudF90eXBlX3Byb3BlcnR5KGNv
bm5lY3Rvcik7CisKIAlpZiAoSVNfR0VNSU5JTEFLRShkZXZfcHJpdikgfHwgSU5URUxfR0VOKGRl
dl9wcml2KSA+PSAxMSkKIAkJZHJtX29iamVjdF9hdHRhY2hfcHJvcGVydHkoJmNvbm5lY3Rvci0+
YmFzZSwKIAkJCQkJICAgY29ubmVjdG9yLT5kZXYtPm1vZGVfY29uZmlnLmhkcl9vdXRwdXRfbWV0
YWRhdGFfcHJvcGVydHksCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2xzcGNvbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sc3Bj
b24uYwppbmRleCA5NTUyZGZjNTVlMjAuLjBhNGMwNWQ2NzEwOCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sc3Bjb24uYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2xzcGNvbi5jCkBAIC01MzksNiArNTM5LDggQEAgdm9pZCBs
c3Bjb25fc2V0X2luZm9mcmFtZXMoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJCWZy
YW1lLmF2aS55Y2NfcXVhbnRpemF0aW9uX3JhbmdlID0gSERNSV9ZQ0NfUVVBTlRJWkFUSU9OX1JB
TkdFX0xJTUlURUQ7CiAJfQogCisJZHJtX2hkbWlfYXZpX2luZm9mcmFtZV9jb250ZW50X3R5cGUo
JmZyYW1lLmF2aSwgY29ubl9zdGF0ZSk7CisKIAlyZXQgPSBoZG1pX2luZm9mcmFtZV9wYWNrKCZm
cmFtZSwgYnVmLCBzaXplb2YoYnVmKSk7CiAJaWYgKHJldCA8IDApIHsKIAkJRFJNX0VSUk9SKCJG
YWlsZWQgdG8gcGFjayBBVkkgSUZcbiIpOwotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
