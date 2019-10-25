Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90AC4E4B99
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 14:55:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBA4D6EA12;
	Fri, 25 Oct 2019 12:55:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C3FE89FE3
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 12:55:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2019 05:55:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,228,1569308400"; d="scan'208";a="201801040"
Received: from helsinki.fi.intel.com ([10.237.66.157])
 by orsmga003.jf.intel.com with ESMTP; 25 Oct 2019 05:55:48 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Oct 2019 15:55:29 +0300
Message-Id: <20191025125530.1015447-5-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191025125530.1015447-1-gwan-gyeong.mun@intel.com>
References: <20191025125530.1015447-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 4/5] drm/i915/dp: Stop sending of HDR
 Metadata Infoframe when it is not needed
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

SXQgcHJldmVudHMgc2VuZGluZyBIRFIgTWV0YWRhdGEgSW5mb2ZyYW1lIFNEUCBwYWNrZXQgdG8g
YSByZWNlaXZlciB3aGVuCkhEUiBNZXRhZGF0YSBJbmZvZnJhbWUgU0RQIGlzIG5vdCBuZWVkZWQu
Cgp2MjogTWlub3Igc3R5bGUgZml4CgpTaWduZWQtb2ZmLWJ5OiBHd2FuLWd5ZW9uZyBNdW4gPGd3
YW4tZ3llb25nLm11bkBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jIHwgMTEgKysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRp
b25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jCmluZGV4IGVkNjg0NTQ4NWI0MS4uNWQxNzgxOWQzYTE5IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jCkBAIC00NzUzLDggKzQ3NTMsMTcgQEAgdm9pZCBpbnRlbF9k
cF9oZHJfbWV0YWRhdGFfZW5hYmxlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCiAJCQkJICBj
b25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAkJCQkgIGNvbnN0IHN0
cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICpjb25uX3N0YXRlKQogewotCWlmICghY29ubl9zdGF0
ZS0+aGRyX291dHB1dF9tZXRhZGF0YSkKKwlpZiAoIWNvbm5fc3RhdGUtPmhkcl9vdXRwdXRfbWV0
YWRhdGEpIHsKKwkJc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQgPSBk
cF90b19kaWdfcG9ydChpbnRlbF9kcCk7CisJCXN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVy
ID0gJmludGVsX2RpZ19wb3J0LT5iYXNlOworCisJCWlmIChpbnRlbF9pbmZvZnJhbWVfZW5hYmxl
ZChlbmNvZGVyLCBjcnRjX3N0YXRlLAorCQkJCQkgICAgSERNSV9QQUNLRVRfVFlQRV9HQU1VVF9N
RVRBREFUQSkpCisJCQlpbnRlbF9lbmFibGVfaW5mb2ZyYW1lKGVuY29kZXIsIGZhbHNlLCBjcnRj
X3N0YXRlLAorCQkJCQkgICAgICAgSERNSV9QQUNLRVRfVFlQRV9HQU1VVF9NRVRBREFUQSk7CisK
IAkJcmV0dXJuOworCX0KIAogCWludGVsX2RwX3NldHVwX2hkcl9tZXRhZGF0YV9pbmZvZnJhbWVf
c2RwKGludGVsX2RwLAogCQkJCQkJICBjcnRjX3N0YXRlLAotLSAKMi4yMy4wCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
