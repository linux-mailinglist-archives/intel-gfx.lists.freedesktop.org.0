Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B4596C54
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 00:33:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C3856E89B;
	Tue, 20 Aug 2019 22:33:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D0E06E89B
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 22:33:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 15:33:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,410,1559545200"; d="scan'208";a="353755989"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.135])
 by orsmga005.jf.intel.com with ESMTP; 20 Aug 2019 15:33:27 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Aug 2019 15:33:24 -0700
Message-Id: <20190820223325.27490-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20190820223325.27490-1-jose.souza@intel.com>
References: <20190820223325.27490-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v8 2/3] drm/i915: Add transcoder restriction to
 PSR2
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWNjb3JkaW5nIHRvIFBTUjJfQ1RMIGRlZmluaXRpb24gaW4gQlNwZWMgdGhlcmUgaXMgb25seSBv
bmUgaW5zdGFuY2UKb2YgUFNSMl9DVEwuIFBsYXRmb3JtcyBnZW4gPCAxMiB3aXRoIEVEUCB0cmFu
c2NvZGVyIG9ubHkgc3VwcG9ydCBQU1IyCm9uIFRSQU5TQ09ERVJfRURQIHdoaWxlIG9uIFRHTCBQ
U1IyIGlzIG9ubHkgc3VwcG9ydGVkIGJ5ClRSQU5TQ09ERVJfQS4KClNpbmNlIEJEVyBQU1IgaXMg
YWxsb3dlZCBvbiBhbnkgcG9ydCwgYnV0IHdlIG5lZWQgdG8gcmVzdHJpY3QgYnkKdHJhbnNjb2Rl
ci4KCnY4OiBSZW5hbWVkIF9wc3IyX3N1cHBvcnRlZF9pbl90cmFucygpIHRvIHBzcjJfc3VwcG9y
dGVkKCkgKEx1Y2FzKQoKQlNwZWM6IDc3MTMKQlNwZWM6IDIwNTg0CkNjOiBEaGluYWthcmFuIFBh
bmRpeWFuIDxkaGluYWthcmFuLnBhbmRpeWFuQGludGVsLmNvbT4KQ2M6IFJvZHJpZ28gVml2aSA8
cm9kcmlnby52aXZpQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVj
YXMuZGVtYXJjaGlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNv
dXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hp
IDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYyB8IDE1ICsrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDE1
IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwpp
bmRleCA3NzIzMmY2YmNhMTcuLjFkYWZlMzI2ZWRkYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jCkBAIC01MzQsNiArNTM0LDE1IEBAIHN0YXRpYyB2b2lkIGhzd19h
Y3RpdmF0ZV9wc3IyKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCiAJSTkxNV9XUklURShFRFBf
UFNSMl9DVEwoZGV2X3ByaXYtPnBzci50cmFuc2NvZGVyKSwgdmFsKTsKIH0KIAorc3RhdGljIGJv
b2wKK3BzcjJfc3VwcG9ydGVkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgZW51
bSB0cmFuc2NvZGVyIHRyYW5zKQoreworCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKQor
CQlyZXR1cm4gdHJhbnMgPT0gVFJBTlNDT0RFUl9BOworCWVsc2UKKwkJcmV0dXJuIHRyYW5zID09
IFRSQU5TQ09ERVJfRURQOworfQorCiBzdGF0aWMgYm9vbCBpbnRlbF9wc3IyX2NvbmZpZ192YWxp
ZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCQkJCSAgICBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqY3J0Y19zdGF0ZSkKIHsKQEAgLTU0NSw2ICs1NTQsMTIgQEAgc3RhdGljIGJvb2wgaW50
ZWxfcHNyMl9jb25maWdfdmFsaWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIAlpZiAoIWRl
dl9wcml2LT5wc3Iuc2lua19wc3IyX3N1cHBvcnQpCiAJCXJldHVybiBmYWxzZTsKIAorCWlmICgh
cHNyMl9zdXBwb3J0ZWQoZGV2X3ByaXYsIGNydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyKSkgewor
CQlEUk1fREVCVUdfS01TKCJQU1IyIG5vdCBzdXBwb3J0ZWQgaW4gdHJhbnNjb2RlciAlc1xuIiwK
KwkJCSAgICAgIHRyYW5zY29kZXJfbmFtZShjcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2RlcikpOwor
CQlyZXR1cm4gZmFsc2U7CisJfQorCiAJLyoKIAkgKiBEU0MgYW5kIFBTUjIgY2Fubm90IGJlIGVu
YWJsZWQgc2ltdWx0YW5lb3VzbHkuIElmIGEgcmVxdWVzdGVkCiAJICogcmVzb2x1dGlvbiByZXF1
aXJlcyBEU0MgdG8gYmUgZW5hYmxlZCwgcHJpb3JpdHkgaXMgZ2l2ZW4gdG8gRFNDCi0tIAoyLjIy
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
