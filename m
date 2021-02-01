Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 215D630AF61
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 19:33:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79BD16E86A;
	Mon,  1 Feb 2021 18:33:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F22E6E86A
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 18:33:53 +0000 (UTC)
IronPort-SDR: 71NarR9RCPRHcR4uFWwWL9+h7uY/bm0kzPz31n/tGL6hZHtUPzptuVdmlE14z7yuRmkD1J4uFo
 yzLx2Mc1by7A==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="178169430"
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="178169430"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 10:33:52 -0800
IronPort-SDR: AwclibzYmV9TTPrYwwyKKIQpLc3fOIw2C0IZOLCkXK1cWPss8N9G8sGThjFZVl3ICUqSKLAM/e
 GzuF7BygpRRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="371650301"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 01 Feb 2021 10:33:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 01 Feb 2021 20:33:49 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Feb 2021 20:33:30 +0200
Message-Id: <20210201183343.15292-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210201183343.15292-1-ville.syrjala@linux.intel.com>
References: <20210201183343.15292-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/15] drm/i915: Extract
 icl_dpclka_cfgcr0_clk_sel*()
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
dHJhY3Qgc29tZSBoZWxwZXJzIHRvIGNhbGN1bGF0ZSB0aGUgY29ycmVjdCBDTEtfU0VMIHZhbHVl
cwpmb3IgRFBDTEtBX0NGR0NSLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RkaS5jIHwgMzkgKysrKysrKysrKysrKysrLS0tLS0tLS0tCiAxIGZpbGUgY2hh
bmdlZCwgMjUgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5kZXggYTNhZWIxYzI4MjFjLi4yM2ZiYjkwMTNlMDkg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwpAQCAtMzEyNyw2ICsz
MTI3LDI4IEBAIHN0YXRpYyB1MzIgaWNsX2RwY2xrYV9jZmdjcjBfY2xrX29mZihzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJcmV0dXJuIDA7CiB9CiAKK3N0YXRpYyB1MzIgaWNs
X2RwY2xrYV9jZmdjcjBfY2xrX3NlbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
CisJCQkJICAgICBlbnVtIGludGVsX2RwbGxfaWQgaWQsIGVudW0gcGh5IHBoeSkKK3sKKwlpZiAo
SVNfQUxERVJMQUtFX1MoZGV2X3ByaXYpKQorCQlyZXR1cm4gaWQgPDwgQURMU19EUENMS0FfQ0ZH
Q1JfRERJX1NISUZUKHBoeSk7CisJZWxzZSBpZiAoSVNfUk9DS0VUTEFLRShkZXZfcHJpdikpCisJ
CXJldHVybiBSS0xfRFBDTEtBX0NGR0NSMF9ERElfQ0xLX1NFTChpZCwgcGh5KTsKKwllbHNlCisJ
CXJldHVybiBJQ0xfRFBDTEtBX0NGR0NSMF9ERElfQ0xLX1NFTChpZCwgcGh5KTsKK30KKworc3Rh
dGljIHUzMiBpY2xfZHBjbGthX2NmZ2NyMF9jbGtfc2VsX21hc2soc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2LAorCQkJCQkgIGVudW0gcGh5IHBoeSkKK3sKKwlpZiAoSVNfQUxERVJM
QUtFX1MoZGV2X3ByaXYpKQorCQlyZXR1cm4gQURMU19EUENMS0FfQ0ZHQ1JfRERJX0NMS19TRUxf
TUFTSyhwaHkpOworCWVsc2UgaWYgKElTX1JPQ0tFVExBS0UoZGV2X3ByaXYpKQorCQlyZXR1cm4g
UktMX0RQQ0xLQV9DRkdDUjBfRERJX0NMS19TRUxfTUFTSyhwaHkpOworCWVsc2UKKwkJcmV0dXJu
IElDTF9EUENMS0FfQ0ZHQ1IwX0RESV9DTEtfU0VMX01BU0socGh5KTsKK30KKwogc3RhdGljIGk5
MTVfcmVnX3QgaWNsX2RwY2xrYV9jZmdjcjBfcmVnKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1LAogCQkJCQllbnVtIHBoeSBwaHkpCiB7CkBAIC0zMTc3LDE4ICszMTk5LDcgQEAgc3RhdGlj
IHZvaWQgaWNsX21hcF9wbGxzX3RvX3BvcnRzKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVy
LAogCXN0cnVjdCBpbnRlbF9zaGFyZWRfZHBsbCAqcGxsID0gY3J0Y19zdGF0ZS0+c2hhcmVkX2Rw
bGw7CiAJZW51bSBwaHkgcGh5ID0gaW50ZWxfcG9ydF90b19waHkoZGV2X3ByaXYsIGVuY29kZXIt
PnBvcnQpOwogCWk5MTVfcmVnX3QgcmVnID0gaWNsX2RwY2xrYV9jZmdjcjBfcmVnKGRldl9wcml2
LCBwaHkpOwotCXUzMiB2YWwsIG1hc2ssIHNlbDsKLQotCWlmIChJU19BTERFUkxBS0VfUyhkZXZf
cHJpdikpIHsKLQkJbWFzayA9IEFETFNfRFBDTEtBX0NGR0NSX0RESV9DTEtfU0VMX01BU0socGh5
KTsKLQkJc2VsID0gKChwbGwtPmluZm8tPmlkKSA8PCBBRExTX0RQQ0xLQV9DRkdDUl9ERElfU0hJ
RlQocGh5KSk7Ci0JfSBlbHNlIGlmIChJU19ST0NLRVRMQUtFKGRldl9wcml2KSkgewotCQltYXNr
ID0gUktMX0RQQ0xLQV9DRkdDUjBfRERJX0NMS19TRUxfTUFTSyhwaHkpOwotCQlzZWwgPSBSS0xf
RFBDTEtBX0NGR0NSMF9ERElfQ0xLX1NFTChwbGwtPmluZm8tPmlkLCBwaHkpOwotCX0gZWxzZSB7
Ci0JCW1hc2sgPSBJQ0xfRFBDTEtBX0NGR0NSMF9ERElfQ0xLX1NFTF9NQVNLKHBoeSk7Ci0JCXNl
bCA9IElDTF9EUENMS0FfQ0ZHQ1IwX0RESV9DTEtfU0VMKHBsbC0+aW5mby0+aWQsIHBoeSk7Ci0J
fQorCXUzMiB2YWw7CiAKIAltdXRleF9sb2NrKCZkZXZfcHJpdi0+ZHBsbC5sb2NrKTsKIApAQCAt
MzIwNyw4ICszMjE4LDggQEAgc3RhdGljIHZvaWQgaWNsX21hcF9wbGxzX3RvX3BvcnRzKHN0cnVj
dCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCQkgKiAgIENsb2NrIFNlbGVjdCBjaG9vc2VzIHRo
ZSBQTEwgZm9yIGJvdGggRERJQSBhbmQgRERJRCBhbmQKIAkJICogICBkcml2ZXMgcG9ydCBBIGlu
IGFsbCBjYXNlcy4iCiAJCSAqLwotCQl2YWwgJj0gfm1hc2s7Ci0JCXZhbCB8PSBzZWw7CisJCXZh
bCAmPSB+aWNsX2RwY2xrYV9jZmdjcjBfY2xrX3NlbF9tYXNrKGRldl9wcml2LCBwaHkpOworCQl2
YWwgfD0gaWNsX2RwY2xrYV9jZmdjcjBfY2xrX3NlbChkZXZfcHJpdiwgcGxsLT5pbmZvLT5pZCwg
cGh5KTsKIAkJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIHJlZywgdmFsKTsKIAkJaW50ZWxfZGVf
cG9zdGluZ19yZWFkKGRldl9wcml2LCByZWcpOwogCX0KLS0gCjIuMjYuMgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
