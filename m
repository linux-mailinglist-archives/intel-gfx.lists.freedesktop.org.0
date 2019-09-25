Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE3FBE371
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 19:39:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 890A76EC06;
	Wed, 25 Sep 2019 17:39:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 962B96EC06
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 17:39:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Sep 2019 10:39:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,548,1559545200"; d="scan'208";a="273036556"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.135])
 by orsmga001.jf.intel.com with ESMTP; 25 Sep 2019 10:39:31 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Sep 2019 10:39:32 -0700
Message-Id: <20190925173932.21560-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Don't skip debug messages when dp
 link config fails
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

SWYgd2UgZG9uJ3QgaGF2ZSBlbm91Z2ggbGluayBiYW5kd2lkdGggdG8gc3VwcG9ydCB0aGUgcmVx
dWVzdGVkIG1vZGUsIHdlCmJhaWwgb3V0IG9mIGludGVsX2RwX2NvbXB1dGVfbGlua19jb25maWco
KSBlYXJseSBiZWZvcmUgdGhlIHBvaW50IGl0CnByaW50cyB0aGUgaGVscGZ1bCBkZWJ1ZyBtZXNz
YWdlcyBjb250YWluaW5nIHRoZSBhdmFpbGFibGUvbmVjZXNzYXJ5CmxpbmsgYmFuZHdpZHRoLiAg
U2luY2UgZmFpbHVyZXMgYXJlIHdoZW4gdGhlc2UgbWVzc2FnZXMgYXJlIG1vc3QgdXNlZnVsLAps
ZXQgdGhlIGZ1bmN0aW9uIHByb2NlZWQgd2l0aCBwcmludGluZyB0aG9zZSBvdXQgYW5kIHRoZW4g
anVzdCByZXR1cm4KdGhlIHByb3BlciBlcnJvciBjb2RlIGF0IHRoZSBlbmQuCgpDYzogTWFuYXNp
IE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWF0dCBS
b3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMgfCA3ICsrLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2Vy
dGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcC5jCmluZGV4IGUzOGRiNzI3OGNmMi4uNGExZjFkMDI5OGMyIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCkBAIC0yMDgzLDEyICsyMDgzLDkgQEAgaW50ZWxfZHBf
Y29tcHV0ZV9saW5rX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAogCS8q
IGVuYWJsZSBjb21wcmVzc2lvbiBpZiB0aGUgbW9kZSBkb2Vzbid0IGZpdCBhdmFpbGFibGUgQlcg
Ki8KIAlEUk1fREVCVUdfS01TKCJGb3JjZSBEU0MgZW4gPSAlZFxuIiwgaW50ZWxfZHAtPmZvcmNl
X2RzY19lbik7Ci0JaWYgKHJldCB8fCBpbnRlbF9kcC0+Zm9yY2VfZHNjX2VuKSB7CisJaWYgKHJl
dCB8fCBpbnRlbF9kcC0+Zm9yY2VfZHNjX2VuKQogCQlyZXQgPSBpbnRlbF9kcF9kc2NfY29tcHV0
ZV9jb25maWcoaW50ZWxfZHAsIHBpcGVfY29uZmlnLAogCQkJCQkJICBjb25uX3N0YXRlLCAmbGlt
aXRzKTsKLQkJaWYgKHJldCA8IDApCi0JCQlyZXR1cm4gcmV0OwotCX0KIAogCWlmIChwaXBlX2Nv
bmZpZy0+ZHNjX3BhcmFtcy5jb21wcmVzc2lvbl9lbmFibGUpIHsKIAkJRFJNX0RFQlVHX0tNUygi
RFAgbGFuZSBjb3VudCAlZCBjbG9jayAlZCBJbnB1dCBicHAgJWQgQ29tcHJlc3NlZCBicHAgJWRc
biIsCkBAIC0yMTEyLDcgKzIxMDksNyBAQCBpbnRlbF9kcF9jb21wdXRlX2xpbmtfY29uZmlnKHN0
cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCQkJICAgICAgaW50ZWxfZHBfbWF4X2RhdGFf
cmF0ZShwaXBlX2NvbmZpZy0+cG9ydF9jbG9jaywKIAkJCQkJCSAgICAgcGlwZV9jb25maWctPmxh
bmVfY291bnQpKTsKIAl9Ci0JcmV0dXJuIDA7CisJcmV0dXJuIHJldDsKIH0KIAogc3RhdGljIGlu
dAotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
