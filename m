Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA109207F2C
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 00:09:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B572C6E08E;
	Wed, 24 Jun 2020 22:09:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53B686E054
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jun 2020 22:09:46 +0000 (UTC)
IronPort-SDR: 1Pf9pBy2cK1/rMArOLzJkKlKRj5k6rqYoW5vng6PrwBULJ99Iod+tua+TUZwLFVWhleY/EFIWY
 AR0ZcttLAJJw==
X-IronPort-AV: E=McAfee;i="6000,8403,9662"; a="142135085"
X-IronPort-AV: E=Sophos;i="5.75,276,1589266800"; d="scan'208";a="142135085"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2020 15:09:45 -0700
IronPort-SDR: 2r12sbS2OSj9EKoa6jG61as3ut8+RGjfYerrd9jbL84SsHEkvADoFCeVdmV69hlMKyJhtYwk2K
 xl2+oGZx3XnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,276,1589266800"; d="scan'208";a="293689053"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga002.jf.intel.com with ESMTP; 24 Jun 2020 15:09:45 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Jun 2020 15:11:08 -0700
Message-Id: <20200624221108.10038-2-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200624221108.10038-1-manasi.d.navare@intel.com>
References: <20200624221108.10038-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 2/2] drm/i915/dp: Helper to check for DDI BUF
 status to get active
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

QmFzZWQgb24gdGhlIHBsYXRmb3JtLCBCc3BlYyBleHBlY3RzIHVzIHRvIHdhaXQgb3IgcG9sbCB3
aXRoCnRpbWVvdXQgZm9yIERESSBCVUYgSURMRSBiaXQgdG8gYmUgc2V0IHRvIDAgKG5vbiBpZGxl
KSBvciBnZXQgYWN0aXZlCmFmdGVyIGVuYWJsaW5nIERESV9CVUZfQ1RMLgoKdjM6CiogQWRkIGEg
bmV3IGZ1bmN0aW9uIF9hY3RpdmUgZm9yIERESSBCVUYgQ1RMIHRvIGJlIG5vbiBpZGxlIChWaWxs
ZSkKdjI6CiogQmFzZWQgb24gcGxhdGZvcm0sIGZpeGVkIGRlbGF5IG9yIHBvbGwgKFZpbGxlKQoq
IFVzZSBhIGhlbHBlciB0byBkbyB0aGlzIChJbXJlLCBWaWxsZSkKCkNjOiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogSW1yZSBEZWFrIDxpbXJlLmRl
YWtAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZh
cmVAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRp
LmMgfCAxNiArKysrKysrKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5j
CmluZGV4IDdkNWM4YWI4OGZjNC4uZmY2YjFlOWQxYjRlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpLmMKQEAgLTExOTUsNiArMTE5NSwyMCBAQCBzdGF0aWMgdm9pZCBp
bnRlbF93YWl0X2RkaV9idWZfaWRsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
CiAJCQlwb3J0X25hbWUocG9ydCkpOwogfQogCitzdGF0aWMgdm9pZCBpbnRlbF93YWl0X2RkaV9i
dWZfYWN0aXZlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKKwkJCQkgICAgICBl
bnVtIHBvcnQgcG9ydCkKK3sKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA8PSA5KSB7CisJCXVz
bGVlcF9yYW5nZSg2MDAsIDEwMDApOworCQlyZXR1cm47CisJfQorCisJaWYgKHdhaXRfZm9yX3Vz
KCEoaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgRERJX0JVRl9DVEwocG9ydCkpICYKKwkJCSAgRERJ
X0JVRl9JU19JRExFKSwgNjAwKSkKKwkJZHJtX2VycigmZGV2X3ByaXYtPmRybSwgIlRpbWVvdXQg
d2FpdGluZyBmb3IgRERJIEJVRiAlYyB0byBnZXQgYWN0aXZlXG4iLAorCQkJcG9ydF9uYW1lKHBv
cnQpKTsKK30KKwogc3RhdGljIHUzMiBoc3dfcGxsX3RvX2RkaV9wbGxfc2VsKGNvbnN0IHN0cnVj
dCBpbnRlbF9zaGFyZWRfZHBsbCAqcGxsKQogewogCXN3aXRjaCAocGxsLT5pbmZvLT5pZCkgewpA
QCAtNDAyMCw3ICs0MDM0LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfZGRpX3ByZXBhcmVfbGlua19y
ZXRyYWluKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCiAJaW50ZWxfZGVfd3JpdGUoZGV2X3By
aXYsIERESV9CVUZfQ1RMKHBvcnQpLCBpbnRlbF9kcC0+RFApOwogCWludGVsX2RlX3Bvc3Rpbmdf
cmVhZChkZXZfcHJpdiwgRERJX0JVRl9DVEwocG9ydCkpOwogCi0JdWRlbGF5KDYwMCk7CisJaW50
ZWxfd2FpdF9kZGlfYnVmX2FjdGl2ZShkZXZfcHJpdiwgcG9ydCk7CiB9CiAKIHN0YXRpYyB2b2lk
IGludGVsX2RkaV9zZXRfbGlua190cmFpbihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAotLSAK
Mi4xOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
