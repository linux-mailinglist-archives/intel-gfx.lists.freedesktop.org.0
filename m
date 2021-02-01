Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57FCA30AF60
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 19:33:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FA5E6E869;
	Mon,  1 Feb 2021 18:33:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC00A6E869
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 18:33:49 +0000 (UTC)
IronPort-SDR: K4WVcNt20u0BA2NcpT1olZ0b68wekpkCRTmZXuRASsdkXs344UlTb8dUxj28v9cNDRn7RdXtUD
 Dc8CSS/cuh7Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="159899755"
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="159899755"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 10:33:49 -0800
IronPort-SDR: uJznzSEo+OnozvTzcqgonqDVw5TGgbp5bZBxx3wdxTP1vQzvSfLHvmFVkpnK0mo/F60z4kbBwD
 f0BgtqQFikWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="479193497"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 01 Feb 2021 10:33:47 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 01 Feb 2021 20:33:46 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Feb 2021 20:33:29 +0200
Message-Id: <20210201183343.15292-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210201183343.15292-1-ville.syrjala@linux.intel.com>
References: <20210201183343.15292-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/15] drm/i915: Extract icl_dpclka_cfgcr0_reg()
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
dHJhY3QgdGhlIGNvZGUgdG8gZGV0ZXJtaW5lIHRoZSBEUENMS19DRkdDUiByZWdpc3Rlcgp0byB1
c2UuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMg
fCAyOCArKysrKysrKysrLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRp
b25zKCspLCAxNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGkuYwppbmRleCA1YmM1MDMzYTJkZWEuLmEzYWViMWMyODIxYyAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC0zMTI3LDYgKzMxMjcsMTUgQEAgc3RhdGlj
IHUzMiBpY2xfZHBjbGthX2NmZ2NyMF9jbGtfb2ZmKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiwKIAlyZXR1cm4gMDsKIH0KIAorc3RhdGljIGk5MTVfcmVnX3QgaWNsX2RwY2xrYV9j
ZmdjcjBfcmVnKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAorCQkJCQllbnVtIHBoeSBw
aHkpCit7CisJaWYgKElTX0FMREVSTEFLRV9TKGk5MTUpKQorCQlyZXR1cm4gQURMU19EUENMS0Ff
Q0ZHQ1IocGh5KTsKKwllbHNlCisJCXJldHVybiBJQ0xfRFBDTEtBX0NGR0NSMDsKK30KKwogc3Rh
dGljIHZvaWQgZGcxX21hcF9wbGxzX3RvX3BvcnRzKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNv
ZGVyLAogCQkJCSAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiB7
CkBAIC0zMTY3LDE5ICszMTc2LDE2IEBAIHN0YXRpYyB2b2lkIGljbF9tYXBfcGxsc190b19wb3J0
cyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsKIAlzdHJ1Y3QgaW50ZWxf
c2hhcmVkX2RwbGwgKnBsbCA9IGNydGNfc3RhdGUtPnNoYXJlZF9kcGxsOwogCWVudW0gcGh5IHBo
eSA9IGludGVsX3BvcnRfdG9fcGh5KGRldl9wcml2LCBlbmNvZGVyLT5wb3J0KTsKKwlpOTE1X3Jl
Z190IHJlZyA9IGljbF9kcGNsa2FfY2ZnY3IwX3JlZyhkZXZfcHJpdiwgcGh5KTsKIAl1MzIgdmFs
LCBtYXNrLCBzZWw7Ci0JaTkxNV9yZWdfdCByZWc7CiAKIAlpZiAoSVNfQUxERVJMQUtFX1MoZGV2
X3ByaXYpKSB7Ci0JCXJlZyA9IEFETFNfRFBDTEtBX0NGR0NSKHBoeSk7CiAJCW1hc2sgPSBBRExT
X0RQQ0xLQV9DRkdDUl9ERElfQ0xLX1NFTF9NQVNLKHBoeSk7CiAJCXNlbCA9ICgocGxsLT5pbmZv
LT5pZCkgPDwgQURMU19EUENMS0FfQ0ZHQ1JfRERJX1NISUZUKHBoeSkpOwogCX0gZWxzZSBpZiAo
SVNfUk9DS0VUTEFLRShkZXZfcHJpdikpIHsKLQkJcmVnID0gSUNMX0RQQ0xLQV9DRkdDUjA7CiAJ
CW1hc2sgPSBSS0xfRFBDTEtBX0NGR0NSMF9ERElfQ0xLX1NFTF9NQVNLKHBoeSk7CiAJCXNlbCA9
IFJLTF9EUENMS0FfQ0ZHQ1IwX0RESV9DTEtfU0VMKHBsbC0+aW5mby0+aWQsIHBoeSk7CiAJfSBl
bHNlIHsKLQkJcmVnID0gSUNMX0RQQ0xLQV9DRkdDUjA7CiAJCW1hc2sgPSBJQ0xfRFBDTEtBX0NG
R0NSMF9ERElfQ0xLX1NFTF9NQVNLKHBoeSk7CiAJCXNlbCA9IElDTF9EUENMS0FfQ0ZHQ1IwX0RE
SV9DTEtfU0VMKHBsbC0+aW5mby0+aWQsIHBoeSk7CiAJfQpAQCAtMzIzMCwxNiArMzIzNiwxMSBA
QCBzdGF0aWMgdm9pZCBpY2xfdW5tYXBfcGxsc190b19wb3J0cyhzdHJ1Y3QgaW50ZWxfZW5jb2Rl
ciAqZW5jb2RlcikKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19p
OTE1KGVuY29kZXItPmJhc2UuZGV2KTsKIAllbnVtIHBoeSBwaHkgPSBpbnRlbF9wb3J0X3RvX3Bo
eShkZXZfcHJpdiwgZW5jb2Rlci0+cG9ydCk7CisJaTkxNV9yZWdfdCByZWcgPSBpY2xfZHBjbGth
X2NmZ2NyMF9yZWcoZGV2X3ByaXYsIHBoeSk7CiAJdTMyIHZhbDsKLQlpOTE1X3JlZ190IHJlZzsK
IAogCW11dGV4X2xvY2soJmRldl9wcml2LT5kcGxsLmxvY2spOwogCi0JaWYgKElTX0FMREVSTEFL
RV9TKGRldl9wcml2KSkKLQkJcmVnID0gQURMU19EUENMS0FfQ0ZHQ1IocGh5KTsKLQllbHNlCi0J
CXJlZyA9IElDTF9EUENMS0FfQ0ZHQ1IwOwotCiAJdmFsID0gaW50ZWxfZGVfcmVhZChkZXZfcHJp
diwgcmVnKTsKIAl2YWwgfD0gaWNsX2RwY2xrYV9jZmdjcjBfY2xrX29mZihkZXZfcHJpdiwgcGh5
KTsKIApAQCAtMzI4NSwxNSArMzI4NiwxMCBAQCBzdGF0aWMgdm9pZCBpY2xfc2FuaXRpemVfcG9y
dF9jbGtfb2ZmKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAllbnVtIHBvcnQg
cG9ydDsKIAlib29sIGRkaV9jbGtfb2ZmOwogCXUzMiB2YWw7Ci0JaTkxNV9yZWdfdCByZWc7CiAK
IAlmb3JfZWFjaF9wb3J0X21hc2tlZChwb3J0LCBwb3J0X21hc2spIHsKIAkJZW51bSBwaHkgcGh5
ID0gaW50ZWxfcG9ydF90b19waHkoZGV2X3ByaXYsIHBvcnQpOwotCi0JCWlmIChJU19BTERFUkxB
S0VfUyhkZXZfcHJpdikpCi0JCQlyZWcgPSBBRExTX0RQQ0xLQV9DRkdDUihwaHkpOwotCQllbHNl
Ci0JCQlyZWcgPSBJQ0xfRFBDTEtBX0NGR0NSMDsKKwkJaTkxNV9yZWdfdCByZWcgPSBpY2xfZHBj
bGthX2NmZ2NyMF9yZWcoZGV2X3ByaXYsIHBoeSk7CiAKIAkJdmFsID0gaW50ZWxfZGVfcmVhZChk
ZXZfcHJpdiwgcmVnKTsKIAkJZGRpX2Nsa19vZmYgPSB2YWwgJiBpY2xfZHBjbGthX2NmZ2NyMF9j
bGtfb2ZmKGRldl9wcml2LAotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
