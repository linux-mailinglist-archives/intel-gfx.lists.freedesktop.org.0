Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C439B6FE7
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 02:07:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A59F28BD5A;
	Thu, 19 Sep 2019 00:07:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B94F73FB7
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 00:07:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Sep 2019 17:07:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,522,1559545200"; d="scan'208";a="189426759"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.135])
 by orsmga003.jf.intel.com with ESMTP; 18 Sep 2019 17:07:32 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Sep 2019 17:07:23 -0700
Message-Id: <20190919000726.267988-11-jose.souza@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190919000726.267988-1-jose.souza@intel.com>
References: <20190919000726.267988-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 10/13] drm/i915/tgl: Check the UC health of
 tc controllers after power on
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

TmV3IHN0ZXAgYWRkZWQgZm9yIFRHTCwgcmVxdWlyZWQgZm9yIHVzIHRvIGNoZWNrIHRoZSBUQwpt
aWNyb2NvbnRyb2xsZXIgaGVhbHRoIGFmdGVyIHBvd2VyIG9uIFRDIGF1eC4KCkJTcGVjOiA0OTI5
NAoKU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bv
d2VyLmMgfCAxMyArKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygr
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV9wb3dlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bv
d2VyLmMKaW5kZXggY2U4OGEyNzIyOWVmLi5mMTE4NmJjMjM1NDIgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCkBAIC01NjIsNiAr
NTYyLDggQEAgc3RhdGljIHZvaWQgaWNsX3RjX3BvcnRfYXNzZXJ0X3JlZl9oZWxkKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAogI2VuZGlmCiAKKyNkZWZpbmUgVEdMX0FVWF9Q
V19UT19UQ19QT1JUKHB3X2lkeCkJKChwd19pZHgpIC0gVEdMX1BXX0NUTF9JRFhfQVVYX1RDMSkK
Kwogc3RhdGljIHZvaWQKIGljbF90Y19waHlfYXV4X3Bvd2VyX3dlbGxfZW5hYmxlKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJCQkgc3RydWN0IGk5MTVfcG93ZXJfd2VsbCAq
cG93ZXJfd2VsbCkKQEAgLTU3OCw2ICs1ODAsMTcgQEAgaWNsX3RjX3BoeV9hdXhfcG93ZXJfd2Vs
bF9lbmFibGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCUk5MTVfV1JJVEUo
RFBfQVVYX0NIX0NUTChhdXhfY2gpLCB2YWwpOwogCiAJaHN3X3Bvd2VyX3dlbGxfZW5hYmxlKGRl
dl9wcml2LCBwb3dlcl93ZWxsKTsKKworCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyICYm
ICFwb3dlcl93ZWxsLT5kZXNjLT5oc3cuaXNfdGNfdGJ0KSB7CisJCWVudW0gdGNfcG9ydCB0Y19w
b3J0OworCisJCXRjX3BvcnQgPSBUR0xfQVVYX1BXX1RPX1RDX1BPUlQocG93ZXJfd2VsbC0+ZGVz
Yy0+aHN3LmlkeCk7CisJCUk5MTVfV1JJVEUoSElQX0lOREVYX1JFRyh0Y19wb3J0KSwgSElQX0lO
REVYX1ZBTCh0Y19wb3J0LCAweDIpKTsKKworCQlpZiAoaW50ZWxfZGVfd2FpdF9mb3Jfc2V0KGRl
dl9wcml2LCBES0xfQ01OX1VDX0RXXzI3KHRjX3BvcnQpLAorCQkJCQkgIERLTF9DTU5fVUNfRFcy
N19VQ19IRUFMVEgsIDEpKQorCQkJRFJNX1dBUk4oIlRpbWVvdXQgd2FpdGluZyBUQyB1QyBoZWFs
dGhcbiIpOworCX0KIH0KIAogc3RhdGljIHZvaWQKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
