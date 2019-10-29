Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF4AE7DCA
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 02:10:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEB946E047;
	Tue, 29 Oct 2019 01:10:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34FE46E047
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 01:10:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 18:10:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,242,1569308400"; d="scan'208";a="205331747"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.135])
 by FMSMGA003.fm.intel.com with ESMTP; 28 Oct 2019 18:10:16 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Oct 2019 18:10:14 -0700
Message-Id: <20191029011014.286885-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/dp: Do not switch aux to TBT mode for
 non-TC ports
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

Tm9uLVRDIHBvcnRzIGFsd2F5cyBoYXZlIHRjX21vZGUgPT0gVENfUE9SVF9UQlRfQUxUIHNvIGl0
IHdhcwpzd2l0Y2hpbmcgYXV4IHRvIFRDIG1vZGUgZm9yIGFsbCBjb21iby1waHkgcG9ydHMsIGhh
cHBpbHkgdGhpcyBkaWQKbm90IGNhdXNlZCBhbnkgaXNzdWUgYnV0IGlzIGJldHRlciBmb2xsb3cg
QlNwZWMuCkFsc28gdGhpcyBpcyByZXNlcnZlZCBiaXQgYmVmb3JlIElDTC4KCkZpeGVzOiA2ZjIx
MWVkNDM0MzggKCJkcm0vaTkxNS9pY2w6IFNldCBUQlQgSU8gaW4gQXV4IHRyYW5zYWN0aW9uIikK
Q2M6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kg
Um9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgNiArKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA1
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMKaW5kZXggODY5ODllYzI1YmM2Li4zNzk2MjMzOTczMDEgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKQEAgLTEyOTEsNiArMTI5MSw5IEBAIHN0YXRp
YyB1MzIgc2tsX2dldF9hdXhfc2VuZF9jdGwoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIAkJ
CQl1MzIgdW51c2VkKQogewogCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19w
b3J0ID0gZHBfdG9fZGlnX3BvcnQoaW50ZWxfZHApOworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1ID0KKwkJCXRvX2k5MTUoaW50ZWxfZGlnX3BvcnQtPmJhc2UuYmFzZS5kZXYpOworCWVu
dW0gcGh5IHBoeSA9IGludGVsX3BvcnRfdG9fcGh5KGk5MTUsIGludGVsX2RpZ19wb3J0LT5iYXNl
LnBvcnQpOwogCXUzMiByZXQ7CiAKIAlyZXQgPSBEUF9BVVhfQ0hfQ1RMX1NFTkRfQlVTWSB8CkBA
IC0xMzAzLDcgKzEzMDYsOCBAQCBzdGF0aWMgdTMyIHNrbF9nZXRfYXV4X3NlbmRfY3RsKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHAsCiAJICAgICAgRFBfQVVYX0NIX0NUTF9GV19TWU5DX1BVTFNF
X1NLTCgzMikgfAogCSAgICAgIERQX0FVWF9DSF9DVExfU1lOQ19QVUxTRV9TS0woMzIpOwogCi0J
aWYgKGludGVsX2RpZ19wb3J0LT50Y19tb2RlID09IFRDX1BPUlRfVEJUX0FMVCkKKwlpZiAoaW50
ZWxfcGh5X2lzX3RjKGk5MTUsIHBoeSkgJiYKKwkgICAgaW50ZWxfZGlnX3BvcnQtPnRjX21vZGUg
PT0gVENfUE9SVF9UQlRfQUxUKQogCQlyZXQgfD0gRFBfQVVYX0NIX0NUTF9UQlRfSU87CiAKIAly
ZXR1cm4gcmV0OwotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
