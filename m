Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D0230AF64
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 19:34:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D345D6E8CF;
	Mon,  1 Feb 2021 18:34:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D78E46E8CF
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 18:34:00 +0000 (UTC)
IronPort-SDR: kbxDst9kjlK7GRcESYivsnwpOGAZj89xZRPcqdU95wxJ/ZzRJoZ99vpXLOHS4ehC3Ja/5guTnd
 tglxJRb7i/Vg==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="180875603"
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="180875603"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 10:34:00 -0800
IronPort-SDR: C5RDMFgcfpYHA7qCgITuU3uES2+McJmb28G8gjNkHnyBNx4/ZPk4TuIt3luj80Yi2iSrS0DUXh
 kVjvXe9CXbbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="358700696"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 01 Feb 2021 10:33:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 01 Feb 2021 20:33:58 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Feb 2021 20:33:33 +0200
Message-Id: <20210201183343.15292-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210201183343.15292-1-ville.syrjala@linux.intel.com>
References: <20210201183343.15292-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/15] drm/i915: Extract skl_ddi_{enable,
 disable}_clock()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkV4
dHJhY3QgdGhlIERESSBjbG9jayByb3V0aW5nIGNsb2RlIGZvciBza2wvZGVyaXZhdGl2ZXMKaW50
byB0aGUgbmV3IGVuY29kZXIgdmZ1bmNzLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgNTMgKysrKysrKysrKysrKysrKystLS0tLS0tCiAxIGZp
bGUgY2hhbmdlZCwgMzggaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5kZXggYjQ2ZDdiZTE5OTZiLi5jNTBiMjBm
NWIzYjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRp
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwpAQCAtMzQy
MiwxNyArMzQyMiw2IEBAIHN0YXRpYyB2b2lkIGludGVsX2RkaV9jbGtfc2VsZWN0KHN0cnVjdCBp
bnRlbF9lbmNvZGVyICplbmNvZGVyLAogCQl2YWwgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBE
UENMS0FfQ0ZHQ1IwKTsKIAkJdmFsICY9IH5EUENMS0FfQ0ZHQ1IwX0RESV9DTEtfT0ZGKHBvcnQp
OwogCQlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgRFBDTEtBX0NGR0NSMCwgdmFsKTsKLQl9IGVs
c2UgaWYgKElTX0dFTjlfQkMoZGV2X3ByaXYpKSB7Ci0JCS8qIERESSAtPiBQTEwgbWFwcGluZyAg
Ki8KLQkJdmFsID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgRFBMTF9DVFJMMik7Ci0KLQkJdmFs
ICY9IH4oRFBMTF9DVFJMMl9ERElfQ0xLX09GRihwb3J0KSB8Ci0JCQkgRFBMTF9DVFJMMl9ERElf
Q0xLX1NFTF9NQVNLKHBvcnQpKTsKLQkJdmFsIHw9IChEUExMX0NUUkwyX0RESV9DTEtfU0VMKHBs
bC0+aW5mby0+aWQsIHBvcnQpIHwKLQkJCURQTExfQ1RSTDJfRERJX1NFTF9PVkVSUklERShwb3J0
KSk7Ci0KLQkJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIERQTExfQ1RSTDIsIHZhbCk7Ci0KIAl9
CiAKIAltdXRleF91bmxvY2soJmRldl9wcml2LT5kcGxsLmxvY2spOwpAQCAtMzQ1MiwxMiArMzQ0
MSw0MyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfY2xrX2Rpc2FibGUoc3RydWN0IGludGVsX2Vu
Y29kZXIgKmVuY29kZXIpCiAJfSBlbHNlIGlmIChJU19DQU5OT05MQUtFKGRldl9wcml2KSkgewog
CQlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgRFBDTEtBX0NGR0NSMCwKIAkJCSAgICAgICBpbnRl
bF9kZV9yZWFkKGRldl9wcml2LCBEUENMS0FfQ0ZHQ1IwKSB8IERQQ0xLQV9DRkdDUjBfRERJX0NM
S19PRkYocG9ydCkpOwotCX0gZWxzZSBpZiAoSVNfR0VOOV9CQyhkZXZfcHJpdikpIHsKLQkJaW50
ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIERQTExfQ1RSTDIsCi0JCQkgICAgICAgaW50ZWxfZGVfcmVh
ZChkZXZfcHJpdiwgRFBMTF9DVFJMMikgfCBEUExMX0NUUkwyX0RESV9DTEtfT0ZGKHBvcnQpKTsK
IAl9CiB9CiAKK3N0YXRpYyB2b2lkIHNrbF9kZGlfZW5hYmxlX2Nsb2NrKHN0cnVjdCBpbnRlbF9l
bmNvZGVyICplbmNvZGVyLAorCQkJCSBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSkKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1
KGVuY29kZXItPmJhc2UuZGV2KTsKKwljb25zdCBzdHJ1Y3QgaW50ZWxfc2hhcmVkX2RwbGwgKnBs
bCA9IGNydGNfc3RhdGUtPnNoYXJlZF9kcGxsOworCWVudW0gcG9ydCBwb3J0ID0gZW5jb2Rlci0+
cG9ydDsKKwl1MzIgdmFsOworCisJaWYgKGRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCAhcGxs
KSkKKwkJcmV0dXJuOworCisJbXV0ZXhfbG9jaygmZGV2X3ByaXYtPmRwbGwubG9jayk7CisKKwl2
YWwgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBEUExMX0NUUkwyKTsKKworCXZhbCAmPSB+KERQ
TExfQ1RSTDJfRERJX0NMS19PRkYocG9ydCkgfAorCQkgRFBMTF9DVFJMMl9ERElfQ0xLX1NFTF9N
QVNLKHBvcnQpKTsKKwl2YWwgfD0gKERQTExfQ1RSTDJfRERJX0NMS19TRUwocGxsLT5pbmZvLT5p
ZCwgcG9ydCkgfAorCQlEUExMX0NUUkwyX0RESV9TRUxfT1ZFUlJJREUocG9ydCkpOworCisJaW50
ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIERQTExfQ1RSTDIsIHZhbCk7CisKKwltdXRleF91bmxvY2so
JmRldl9wcml2LT5kcGxsLmxvY2spOworfQorCitzdGF0aWMgdm9pZCBza2xfZGRpX2Rpc2FibGVf
Y2xvY2soc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpCit7CisJc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7CisJZW51bSBw
b3J0IHBvcnQgPSBlbmNvZGVyLT5wb3J0OworCisJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIERQ
TExfQ1RSTDIsCisJCSAgICAgICBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBEUExMX0NUUkwyKSB8
IERQTExfQ1RSTDJfRERJX0NMS19PRkYocG9ydCkpOworfQorCiBzdGF0aWMgdm9pZCBoc3dfZGRp
X2VuYWJsZV9jbG9jayhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAkJCQkgY29uc3Qg
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiB7CkBAIC01NjI1LDcgKzU2NDUs
MTAgQEAgdm9pZCBpbnRlbF9kZGlfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsIGVudW0gcG9ydCBwb3J0KQogCWVuY29kZXItPmNsb25lYWJsZSA9IDA7CiAJZW5jb2Rlci0+
cGlwZV9tYXNrID0gfjA7CiAKLQlpZiAoSVNfQlJPQURXRUxMKGRldl9wcml2KSB8fCBJU19IQVNX
RUxMKGRldl9wcml2KSkgeworCWlmIChJU19HRU45X0JDKGRldl9wcml2KSkgeworCQllbmNvZGVy
LT5lbmFibGVfY2xvY2sgPSBza2xfZGRpX2VuYWJsZV9jbG9jazsKKwkJZW5jb2Rlci0+ZGlzYWJs
ZV9jbG9jayA9IHNrbF9kZGlfZGlzYWJsZV9jbG9jazsKKwl9IGVsc2UgaWYgKElTX0JST0FEV0VM
TChkZXZfcHJpdikgfHwgSVNfSEFTV0VMTChkZXZfcHJpdikpIHsKIAkJZW5jb2Rlci0+ZW5hYmxl
X2Nsb2NrID0gaHN3X2RkaV9lbmFibGVfY2xvY2s7CiAJCWVuY29kZXItPmRpc2FibGVfY2xvY2sg
PSBoc3dfZGRpX2Rpc2FibGVfY2xvY2s7CiAJfQotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
