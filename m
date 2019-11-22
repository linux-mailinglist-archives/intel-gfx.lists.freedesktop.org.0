Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94519107391
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 14:46:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C89E56E30D;
	Fri, 22 Nov 2019 13:46:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 136196E30D
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Nov 2019 13:46:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Nov 2019 05:46:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,229,1571727600"; d="scan'208";a="205403608"
Received: from zeliteleevi.tm.intel.com ([10.237.55.130])
 by fmsmga008.fm.intel.com with ESMTP; 22 Nov 2019 05:46:30 -0800
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
To: intel-gfx@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com
Date: Fri, 22 Nov 2019 15:46:03 +0200
Message-Id: <20191122134603.11496-2-kai.vehmanen@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191122134603.11496-1-kai.vehmanen@linux.intel.com>
References: <20191122134603.11496-1-kai.vehmanen@linux.intel.com>
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/dp: fix DP infoframe init for
 PORT_A on gen12+
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U3RhcnRpbmcgd2l0aCBnZW4xMiwgUE9SVF9BIGNhbiBiZSBhbHNvIGNvbm5lY3RlZCB0byBEUAp0
cmFuc2NvZGVyLiBVcGRhdGUgY29kZSBpbiBpbnRlbF9kcF9pbml0KCkgdG8gdGFrZSB0aGlzCmlu
dG8gYWNjb3VudC4KClNpZ25lZC1vZmYtYnk6IEthaSBWZWhtYW5lbiA8a2FpLnZlaG1hbmVuQGxp
bnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
LmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKaW5kZXggYzUwY2Y4MDliNDRj
Li41ZDRhOWU4MzM0MmEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMK
QEAgLTc1OTYsNyArNzU5Niw3IEBAIGJvb2wgaW50ZWxfZHBfaW5pdChzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsCiAKIAlpbnRlbF9kaWdfcG9ydC0+aHBkX3B1bHNlID0gaW50ZWxf
ZHBfaHBkX3B1bHNlOwogCi0JaWYgKHBvcnQgIT0gUE9SVF9BKQorCWlmIChwb3J0ICE9IFBPUlRf
QSB8fCBJTlRFTF9HRU4oZGV2X3ByaXYpID49ICAxMikKIAkJaW50ZWxfaW5mb2ZyYW1lX2luaXQo
aW50ZWxfZGlnX3BvcnQpOwogCiAJaW50ZWxfZGlnX3BvcnQtPmF1eF9jaCA9IGludGVsX2Jpb3Nf
cG9ydF9hdXhfY2goZGV2X3ByaXYsIHBvcnQpOwotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
