Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BED934B29
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 16:59:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 682648987C;
	Tue,  4 Jun 2019 14:59:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FCC18982D
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 14:59:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 07:59:24 -0700
X-ExtLoop1: 1
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by orsmga003.jf.intel.com with ESMTP; 04 Jun 2019 07:59:23 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jun 2019 17:58:10 +0300
Message-Id: <20190604145826.16424-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190604145826.16424-1-imre.deak@intel.com>
References: <20190604145826.16424-1-imre.deak@intel.com>
Subject: [Intel-gfx] [PATCH 07/23] drm/i915: Use the correct AUX power
 domain in TypeC TBT-alt mode
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

SW4gdGhlIFR5cGVDIFRCVC1hbHQgcG9ydCBtb2RlIHdlIG11c3QgdXNlIHRoZSBUQlQgQVVYIHBv
d2VyIGRvbWFpbiwKZml4IHRoYXQuCgpDYzogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJl
QGludGVsLmNvbT4KQ2M6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNv
bT4KU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYyB8IDE5ICsrKysrKysrKysrKysrKysr
KysKIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZGlzcGxheS5jCmluZGV4IDI2NDc0Nzg4YjdiMi4uMGU0MjVhNmVlYmYzIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jCkBAIC02NjA5LDYgKzY2MDksMjUgQEAgZW51bSBpbnRl
bF9kaXNwbGF5X3Bvd2VyX2RvbWFpbiBpbnRlbF9wb3J0X3RvX3Bvd2VyX2RvbWFpbihlbnVtIHBv
cnQgcG9ydCkKIGVudW0gaW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW4KIGludGVsX2F1eF9wb3dl
cl9kb21haW4oc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpCiB7CisJc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShkaWdfcG9ydC0+YmFzZS5iYXNl
LmRldik7CisKKwlpZiAoaW50ZWxfcG9ydF9pc190YyhkZXZfcHJpdiwgZGlnX3BvcnQtPmJhc2Uu
cG9ydCkgJiYKKwkgICAgZGlnX3BvcnQtPnRjX21vZGUgPT0gVENfUE9SVF9UQlRfQUxUKSB7CisJ
CXN3aXRjaCAoZGlnX3BvcnQtPmF1eF9jaCkgeworCQljYXNlIEFVWF9DSF9DOgorCQkJcmV0dXJu
IFBPV0VSX0RPTUFJTl9BVVhfVEJUMTsKKwkJY2FzZSBBVVhfQ0hfRDoKKwkJCXJldHVybiBQT1dF
Ul9ET01BSU5fQVVYX1RCVDI7CisJCWNhc2UgQVVYX0NIX0U6CisJCQlyZXR1cm4gUE9XRVJfRE9N
QUlOX0FVWF9UQlQzOworCQljYXNlIEFVWF9DSF9GOgorCQkJcmV0dXJuIFBPV0VSX0RPTUFJTl9B
VVhfVEJUNDsKKwkJZGVmYXVsdDoKKwkJCU1JU1NJTkdfQ0FTRShkaWdfcG9ydC0+YXV4X2NoKTsK
KwkJCXJldHVybiBQT1dFUl9ET01BSU5fQVVYX1RCVDE7CisJCX0KKwl9CisKIAlzd2l0Y2ggKGRp
Z19wb3J0LT5hdXhfY2gpIHsKIAljYXNlIEFVWF9DSF9BOgogCQlyZXR1cm4gUE9XRVJfRE9NQUlO
X0FVWF9BOwotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
