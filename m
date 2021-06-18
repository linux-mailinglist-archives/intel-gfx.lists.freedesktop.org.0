Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43EE53AD026
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jun 2021 18:14:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC34F6EA3E;
	Fri, 18 Jun 2021 16:14:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A00BC6EA3D
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Jun 2021 16:14:35 +0000 (UTC)
IronPort-SDR: cD43W3fNs7NtMtTyY9DJDpeDBmS9ryhNSmBsYcs7HM7YFPB/LiH7UpWxooGvmi3fP18Id/qIsN
 UxrTg6/m+qoA==
X-IronPort-AV: E=McAfee;i="6200,9189,10019"; a="206617771"
X-IronPort-AV: E=Sophos;i="5.83,284,1616482800"; d="scan'208";a="206617771"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2021 09:14:19 -0700
IronPort-SDR: Sdhxp4bR/k5FaRJCtkNhd8nEC1o5PTtxOt9ykt7zA8miTW3pj4QBqGWV5L3HUfKZxPxfYiA9X+
 p18K6cPzF0yA==
X-IronPort-AV: E=Sophos;i="5.83,284,1616482800"; d="scan'208";a="453195523"
Received: from murphyke-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.237.184])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2021 09:14:17 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Jun 2021 17:13:14 +0100
Message-Id: <20210618161314.723418-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210618161314.723418-1-matthew.auld@intel.com>
References: <20210618161314.723418-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/dg1: Double memory bandwidth
 available
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQ2xpbnQgVGF5bG9yIDxjbGludG9uLmEudGF5bG9yQGludGVsLmNvbT4KClVzZSBNQ0hC
QVIgR2Vhcl90eXBlIGluZm9ybWF0aW9uIHRvIGNvbXB1dGUgbWVtb3J5IGJhbmR3aWR0aCBhdmFp
bGFibGUKZHVyaW5nIE1DSEJBUiBjYWxjdWxhdGlvbnMuCgpUZXN0ZWQtYnk6IFN3YXRpIFNoYXJt
YSA8c3dhdGkyLnNoYXJtYUBpbnRlbC5jb20+CkNjOiBTd2F0aSBTaGFybWEgPHN3YXRpMi5zaGFy
bWFAaW50ZWwuY29tPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQ2xpbnQgVGF5bG9yIDxjbGludG9uLmEudGF5bG9yQGlu
dGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMgfCA4ICsrKysr
KysrCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9idy5jCmluZGV4IGYzZDhmZjRlZTBkYi4uMzhiZjI0YzQzN2Q4IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jCkBAIC00MSw2ICs0MSw5IEBAIHN0
cnVjdCBpbnRlbF9xZ3ZfaW5mbyB7CiAjZGVmaW5lICBERzFfRFJBTV9UX1JQX01BU0sgKDB4N0Yg
PDwgMCkKICNkZWZpbmUgIERHMV9EUkFNX1RfUlBfU0hJRlQgMAogCisjZGVmaW5lICBJQ0xfR0VB
Ul9UWVBFX01BU0sgKDB4MDEgPDwgMTYpCisjZGVmaW5lICBJQ0xfR0VBUl9UWVBFX1NISUZUIDE2
CisKIHN0YXRpYyBpbnQgZGcxX21jaGJhcl9yZWFkX3Fndl9wb2ludF9pbmZvKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJCQkJICBzdHJ1Y3QgaW50ZWxfcWd2X3BvaW50ICpz
cCwKIAkJCQkJICBpbnQgcG9pbnQpCkBAIC01NSw2ICs1OCwxMSBAQCBzdGF0aWMgaW50IGRnMV9t
Y2hiYXJfcmVhZF9xZ3ZfcG9pbnRfaW5mbyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsCiAJZWxzZQogCQlkY2xrX3JlZmVyZW5jZSA9IDg7IC8qIDggKiAxNi42NjYgTUh6ID0gMTMz
IE1IeiAqLwogCXNwLT5kY2xrID0gZGNsa19yYXRpbyAqIGRjbGtfcmVmZXJlbmNlOworCisJdmFs
ID0gaW50ZWxfdW5jb3JlX3JlYWQoJmRldl9wcml2LT51bmNvcmUsIFNLTF9NQ19CSU9TX0RBVEFf
MF8wXzBfTUNIQkFSX1BDVSk7CisJaWYgKCh2YWwgJiBJQ0xfR0VBUl9UWVBFX01BU0spID4+IElD
TF9HRUFSX1RZUEVfU0hJRlQpCisJCXNwLT5kY2xrICo9IDI7CisKIAlpZiAoc3AtPmRjbGsgPT0g
MCkKIAkJcmV0dXJuIC1FSU5WQUw7CiAKLS0gCjIuMjYuMwoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
