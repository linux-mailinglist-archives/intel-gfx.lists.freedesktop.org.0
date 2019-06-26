Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA995703A
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 20:03:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF9676E4CD;
	Wed, 26 Jun 2019 18:03:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 081DC6E4C1
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 18:03:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jun 2019 11:03:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,420,1557212400"; d="scan'208";a="188733644"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 26 Jun 2019 11:03:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Jun 2019 21:03:46 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Jun 2019 21:03:40 +0300
Message-Id: <20190626180344.26314-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190626180344.26314-1-ville.syrjala@linux.intel.com>
References: <20190626180344.26314-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/5] drm/i915: Add gen8_de_pipe_fault_mask()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClJl
ZHVjZSB0aGUgY2x1dHRlciBhIGJpdCBieSBpbnRyb2R1Y2luZyBnZW44X2RlX3BpcGVfZmF1bHRf
bWFzaygpLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgfCAxNSArKysr
KysrKystLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKaW5kZXggMWI4M2Q2ZTJhZTY5Li40YjJjYjYxMzFm
NTEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwpAQCAtMjgyNSw2ICsyODI1LDE0IEBAIHN0YXRp
YyB1MzIgZ2VuOF9kZV9wb3J0X2F1eF9tYXNrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdikKIAlyZXR1cm4gbWFzazsKIH0KIAorc3RhdGljIHUzMiBnZW44X2RlX3BpcGVfZmF1bHRf
bWFzayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCit7CisJaWYgKElOVEVMX0dF
TihkZXZfcHJpdikgPj0gOSkKKwkJcmV0dXJuIEdFTjlfREVfUElQRV9JUlFfRkFVTFRfRVJST1JT
OworCWVsc2UKKwkJcmV0dXJuIEdFTjhfREVfUElQRV9JUlFfRkFVTFRfRVJST1JTOworfQorCiBz
dGF0aWMgaXJxcmV0dXJuX3QKIGdlbjhfZGVfaXJxX2hhbmRsZXIoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2LCB1MzIgbWFzdGVyX2N0bCkKIHsKQEAgLTI5MzcsMTIgKzI5NDUsNyBA
QCBnZW44X2RlX2lycV9oYW5kbGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwg
dTMyIG1hc3Rlcl9jdGwpCiAJCWlmIChpaXIgJiBHRU44X1BJUEVfRklGT19VTkRFUlJVTikKIAkJ
CWludGVsX2NwdV9maWZvX3VuZGVycnVuX2lycV9oYW5kbGVyKGRldl9wcml2LCBwaXBlKTsKIAot
CQlmYXVsdF9lcnJvcnMgPSBpaXI7Ci0JCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDkpCi0J
CQlmYXVsdF9lcnJvcnMgJj0gR0VOOV9ERV9QSVBFX0lSUV9GQVVMVF9FUlJPUlM7Ci0JCWVsc2UK
LQkJCWZhdWx0X2Vycm9ycyAmPSBHRU44X0RFX1BJUEVfSVJRX0ZBVUxUX0VSUk9SUzsKLQorCQlm
YXVsdF9lcnJvcnMgPSBpaXIgJiBnZW44X2RlX3BpcGVfZmF1bHRfbWFzayhkZXZfcHJpdik7CiAJ
CWlmIChmYXVsdF9lcnJvcnMpCiAJCQlEUk1fRVJST1IoIkZhdWx0IGVycm9ycyBvbiBwaXBlICVj
OiAweCUwOHhcbiIsCiAJCQkJICBwaXBlX25hbWUocGlwZSksCi0tIAoyLjIxLjAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
