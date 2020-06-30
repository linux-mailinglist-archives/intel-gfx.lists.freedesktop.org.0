Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF8820FFAC
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 23:56:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 378416E4A1;
	Tue, 30 Jun 2020 21:56:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6EC66E4A1
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2020 21:56:20 +0000 (UTC)
IronPort-SDR: n0CPnJzfGUxLIQE8Y9F7/NtjKDJ5DzsdZ5i+O8XSydYvzFG/tk0WmZzgIGrSvR3ATtjhe+aD0O
 FNAoQ26wZZYA==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="134684628"
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="134684628"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 14:56:19 -0700
IronPort-SDR: 14BnTptwvqI6T442Lmsd2A5nn7LY5m38aJ0rPyPzQreNyaYR2HEldL+p9fNdfQ44SUb7PwG3Rr
 +1lHIJ522hXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="386818260"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 30 Jun 2020 14:56:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Jul 2020 00:56:17 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jul 2020 00:55:54 +0300
Message-Id: <20200630215601.28557-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200630215601.28557-1-ville.syrjala@linux.intel.com>
References: <20200630215601.28557-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/12] drm/i915: Add VBT AUX CH H and I
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkFz
IHdpdGggZXZlcnl0aGluZyBlbHNlIFZCVCBjYW4gbm93IHNwZWNpZnkgQVVYIENIIEggb3IgSS4K
ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgICAg
IHwgNiArKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMu
aCB8IDIgKysKIDIgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwppbmRleCAyYmYwYmMwZGVlZTguLjA1ZWI4OGVl
NzNmOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9z
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKQEAgLTI2
NDksNiArMjY0OSwxMiBAQCBlbnVtIGF1eF9jaCBpbnRlbF9iaW9zX3BvcnRfYXV4X2NoKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAljYXNlIERQX0FVWF9HOgogCQlhdXhfY2gg
PSBBVVhfQ0hfRzsKIAkJYnJlYWs7CisJY2FzZSBEUF9BVVhfSDoKKwkJYXV4X2NoID0gQVVYX0NI
X0g7CisJCWJyZWFrOworCWNhc2UgRFBfQVVYX0k6CisJCWF1eF9jaCA9IEFVWF9DSF9JOworCQli
cmVhazsKIAlkZWZhdWx0OgogCQlNSVNTSU5HX0NBU0UoaW5mby0+YWx0ZXJuYXRlX2F1eF9jaGFu
bmVsKTsKIAkJYXV4X2NoID0gQVVYX0NIX0E7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3ZidF9kZWZzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3ZidF9kZWZzLmgKaW5kZXggZTUwMmQ2NTMwMGZhLi5iNWY3YTUyZjc1MWEgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaAor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZidF9kZWZzLmgKQEAgLTMz
NCw2ICszMzQsOCBAQCBlbnVtIHZidF9nbWJ1c19kZGkgewogI2RlZmluZSBEUF9BVVhfRSAweDUw
CiAjZGVmaW5lIERQX0FVWF9GIDB4NjAKICNkZWZpbmUgRFBfQVVYX0cgMHg3MAorI2RlZmluZSBE
UF9BVVhfSCAweDgwCisjZGVmaW5lIERQX0FVWF9JIDB4OTAKIAogI2RlZmluZSBWQlRfRFBfTUFY
X0xJTktfUkFURV9IQlIzCTAKICNkZWZpbmUgVkJUX0RQX01BWF9MSU5LX1JBVEVfSEJSMgkxCi0t
IAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
