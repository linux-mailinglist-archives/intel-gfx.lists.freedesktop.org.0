Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5239B27893E
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Sep 2020 15:17:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6E096ECF2;
	Fri, 25 Sep 2020 13:17:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA41C6ECF3
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Sep 2020 13:17:24 +0000 (UTC)
IronPort-SDR: 0pXkaNsrk2rILtLNUMdcpD9+tJQuBpRa8okBPp+2cwWBlv5XBPASihQwZHb2BkKY5YwMLbgZ86
 3EpjBlydyOBg==
X-IronPort-AV: E=McAfee;i="6000,8403,9754"; a="161610392"
X-IronPort-AV: E=Sophos;i="5.77,302,1596524400"; d="scan'208";a="161610392"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2020 06:17:23 -0700
IronPort-SDR: 0NaiH4TkGXf05O9UtfxdcdlWzPvh0Rw+qo66HFYQMZjYx1p8WmIcizYQBz+GMsmrGi9v3/CXTb
 cVNOfCZ5mTEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,302,1596524400"; d="scan'208";a="292664400"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 25 Sep 2020 06:17:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Sep 2020 16:17:20 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Sep 2020 16:16:55 +0300
Message-Id: <20200925131656.10022-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200925131656.10022-1-ville.syrjala@linux.intel.com>
References: <20200925131656.10022-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 8/9] drm/i915: Polish bdw_read_lut_10() a bit
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClNp
bmNlIGJkd19yZWFkX2x1dF8xMCgpIHVzZXMgdGhlIGF1dG8taW5jcmVtZW50IG1vZGUgd2UgbXVz
dApoYXZlIGFuIGVxdWFsIG51bWJlciBvZiBlbnRyaWVzIGluIHRoZSBzb2Z0d2FyZSBMVVQgYW5k
IHRoZQpoYXJkd2FyZSBMVVQuIFdBUk4gaWYgdGhhdCBpcyBub3QgdGhlIGNhc2UuCgpSZXZpZXdl
ZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMgfCA3ICsrKysrLS0KIDEgZmls
ZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jCmluZGV4IDI2MGJiYmQ1YmJmMi4uMjkwZDE4
NzFlZjU3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nv
bG9yLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jCkBA
IC0xOTI5LDEyICsxOTI5LDE1IEBAIHN0YXRpYyBzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2IgKmJk
d19yZWFkX2x1dF8xMChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIHsKIAlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKIAlpbnQgaSwg
aHdfbHV0X3NpemUgPSBpdmJfbHV0XzEwX3NpemUocHJlY19pbmRleCk7CisJaW50IGx1dF9zaXpl
ID0gSU5URUxfSU5GTyhkZXZfcHJpdiktPmNvbG9yLmdhbW1hX2x1dF9zaXplOwogCWVudW0gcGlw
ZSBwaXBlID0gY3J0Yy0+cGlwZTsKIAlzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2IgKmJsb2I7CiAJ
c3RydWN0IGRybV9jb2xvcl9sdXQgKmx1dDsKIAorCWRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJt
LCBsdXRfc2l6ZSAhPSBod19sdXRfc2l6ZSk7CisKIAlibG9iID0gZHJtX3Byb3BlcnR5X2NyZWF0
ZV9ibG9iKCZkZXZfcHJpdi0+ZHJtLAotCQkJCQlzaXplb2Yoc3RydWN0IGRybV9jb2xvcl9sdXQp
ICogaHdfbHV0X3NpemUsCisJCQkJCXNpemVvZihzdHJ1Y3QgZHJtX2NvbG9yX2x1dCkgKiBsdXRf
c2l6ZSwKIAkJCQkJTlVMTCk7CiAJaWYgKElTX0VSUihibG9iKSkKIAkJcmV0dXJuIE5VTEw7CkBA
IC0xOTQ0LDcgKzE5NDcsNyBAQCBzdGF0aWMgc3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iICpiZHdf
cmVhZF9sdXRfMTAoc3RydWN0IGludGVsX2NydGMgKmNydGMsCiAJaW50ZWxfZGVfd3JpdGUoZGV2
X3ByaXYsIFBSRUNfUEFMX0lOREVYKHBpcGUpLAogCQkgICAgICAgcHJlY19pbmRleCB8IFBBTF9Q
UkVDX0FVVE9fSU5DUkVNRU5UKTsKIAotCWZvciAoaSA9IDA7IGkgPCBod19sdXRfc2l6ZTsgaSsr
KSB7CisJZm9yIChpID0gMDsgaSA8IGx1dF9zaXplOyBpKyspIHsKIAkJdTMyIHZhbCA9IGludGVs
X2RlX3JlYWQoZGV2X3ByaXYsIFBSRUNfUEFMX0RBVEEocGlwZSkpOwogCiAJCWlsa19sdXRfMTBf
cGFjaygmbHV0W2ldLCB2YWwpOwotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
