Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1E3117115
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2019 17:03:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0188D6E4D2;
	Mon,  9 Dec 2019 16:03:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2F0E6E4D2
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2019 16:03:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Dec 2019 08:03:19 -0800
X-IronPort-AV: E=Sophos;i="5.69,296,1571727600"; d="scan'208";a="264285446"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Dec 2019 08:03:17 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Dec 2019 18:02:05 +0200
Message-Id: <4286f7a2c0c4e4df74ad8cf278701157254c3e7a.1575907078.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1575907078.git.jani.nikula@intel.com>
References: <cover.1575907078.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v4 12/15] drm/i915/dsi: use compressed pixel
 format with DSC
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2hlbiBjb21wcmVzc2lvbiBpcyBlbmFibGVkLCBjb25maWd1cmUgdGhlIERTSSB0cmFuc2NvZGVy
IHRvIHVzZQpjb21wcmVzc2VkIGZvcm1hdC4KClN1Z2dlc3RlZC1ieTogVmFuZGl0YSBLdWxrYXJu
aSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+CkNjOiBWYW5kaXRhIEt1bGthcm5pIDx2YW5k
aXRhLmt1bGthcm5pQGludGVsLmNvbT4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRh
Lmt1bGthcm5pQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlr
dWxhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2ku
YyB8IDM2ICsrKysrKysrKysrKysrLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjAgaW5z
ZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pY2xfZHNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lj
bF9kc2kuYwppbmRleCA1MTQ5YTI4YTg3NGIuLjQ2MDc1OTkxMzcwOCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pY2xfZHNpLmMKQEAgLTY4MiwyMiArNjgyLDI2IEBAIGdlbjExX2RzaV9j
b25maWd1cmVfdHJhbnNjb2RlcihzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAogCQkv
KiBzZWxlY3QgcGl4ZWwgZm9ybWF0ICovCiAJCXRtcCAmPSB+UElYX0ZNVF9NQVNLOwotCQlzd2l0
Y2ggKGludGVsX2RzaS0+cGl4ZWxfZm9ybWF0KSB7Ci0JCWRlZmF1bHQ6Ci0JCQlNSVNTSU5HX0NB
U0UoaW50ZWxfZHNpLT5waXhlbF9mb3JtYXQpOwotCQkJLyogZmFsbHRocm91Z2ggKi8KLQkJY2Fz
ZSBNSVBJX0RTSV9GTVRfUkdCNTY1OgotCQkJdG1wIHw9IFBJWF9GTVRfUkdCNTY1OwotCQkJYnJl
YWs7Ci0JCWNhc2UgTUlQSV9EU0lfRk1UX1JHQjY2Nl9QQUNLRUQ6Ci0JCQl0bXAgfD0gUElYX0ZN
VF9SR0I2NjZfUEFDS0VEOwotCQkJYnJlYWs7Ci0JCWNhc2UgTUlQSV9EU0lfRk1UX1JHQjY2NjoK
LQkJCXRtcCB8PSBQSVhfRk1UX1JHQjY2Nl9MT09TRTsKLQkJCWJyZWFrOwotCQljYXNlIE1JUElf
RFNJX0ZNVF9SR0I4ODg6Ci0JCQl0bXAgfD0gUElYX0ZNVF9SR0I4ODg7Ci0JCQlicmVhazsKKwkJ
aWYgKHBpcGVfY29uZmlnLT5kc2MuY29tcHJlc3Npb25fZW5hYmxlKSB7CisJCQl0bXAgfD0gUElY
X0ZNVF9DT01QUkVTU0VEOworCQl9IGVsc2UgeworCQkJc3dpdGNoIChpbnRlbF9kc2ktPnBpeGVs
X2Zvcm1hdCkgeworCQkJZGVmYXVsdDoKKwkJCQlNSVNTSU5HX0NBU0UoaW50ZWxfZHNpLT5waXhl
bF9mb3JtYXQpOworCQkJCS8qIGZhbGx0aHJvdWdoICovCisJCQljYXNlIE1JUElfRFNJX0ZNVF9S
R0I1NjU6CisJCQkJdG1wIHw9IFBJWF9GTVRfUkdCNTY1OworCQkJCWJyZWFrOworCQkJY2FzZSBN
SVBJX0RTSV9GTVRfUkdCNjY2X1BBQ0tFRDoKKwkJCQl0bXAgfD0gUElYX0ZNVF9SR0I2NjZfUEFD
S0VEOworCQkJCWJyZWFrOworCQkJY2FzZSBNSVBJX0RTSV9GTVRfUkdCNjY2OgorCQkJCXRtcCB8
PSBQSVhfRk1UX1JHQjY2Nl9MT09TRTsKKwkJCQlicmVhazsKKwkJCWNhc2UgTUlQSV9EU0lfRk1U
X1JHQjg4ODoKKwkJCQl0bXAgfD0gUElYX0ZNVF9SR0I4ODg7CisJCQkJYnJlYWs7CisJCQl9CiAJ
CX0KIAogCQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikgewotLSAKMi4yMC4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
