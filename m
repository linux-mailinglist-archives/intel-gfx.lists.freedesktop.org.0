Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED25338F514
	for <lists+intel-gfx@lfdr.de>; Mon, 24 May 2021 23:45:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 123486E976;
	Mon, 24 May 2021 21:44:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 787616E972
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 May 2021 21:44:57 +0000 (UTC)
IronPort-SDR: QuzBElxN+Y0vgDg+xoc9Tg1q5ohIXBGo803uUH7KLV8bulbbGgwDFb95icci6xawrwHVoOedZz
 ror1dtz1Xv4Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9994"; a="181677510"
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="181677510"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 14:44:56 -0700
IronPort-SDR: IBpNOhHYO/ObhPklyztUxNS3Kq3Z5+x00YEhus+c5eFC9tT1LMWyxUcHXmbq9zYe2ZTfyxCFa3
 aJK6rkdCflRA==
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="546513301"
Received: from xxi2-mobl.amr.corp.intel.com (HELO josouza-mobl2.intel.com)
 ([10.254.32.238])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 14:44:55 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 May 2021 14:48:04 -0700
Message-Id: <20210524214805.259692-4-jose.souza@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210524214805.259692-1-jose.souza@intel.com>
References: <20210524214805.259692-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/5] drm/i915/display/adl_p: Allow DC3CO in pipe
 and port B
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

REMzQ08gaXMgYWxsb3dlZCBpbiBhbGwgdGhlIGNvbWJpbmF0aW9ucyBiZXR3ZWVuIHBpcGUgYW5k
IHBvcnQgQSBhbmQgQgpvbiBhbGRlcmxha2UtUC4KCkJTcGVjOiA0OTE5NgpDYzogQW5zaHVtYW4g
R3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4KQ2M6IEd3YW4tZ3llb25nIE11biA8Z3dh
bi1neWVvbmcubXVuQGludGVsLmNvbT4KQ2M6IE1hdHQgQXR3b29kIDxtYXR0aGV3LnMuYXR3b29k
QGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5z
b3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYyB8IDIwICsrKysrKysrKysrKysrKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0
aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYwppbmRleCAyMTY2MjY0NDRjNzYuLmM1NzIxMDg2MjIwNiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCkBAIC02NDYsMTIgKzY0NiwyNiBAQCBzdGF0aWMg
dm9pZCB0Z2xfZGlzYWxsb3dfZGMzY29fb25fcHNyMl9leGl0KHN0cnVjdCBpbnRlbF9kcCAqaW50
ZWxfZHApCiAJdGdsX3BzcjJfZGlzYWJsZV9kYzNjbyhpbnRlbF9kcCk7CiB9CiAKK3N0YXRpYyBi
b29sCitkYzNjb19pc19waXBlX3BvcnRfY29tcGF0aWJsZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwLAorCQkJICAgICAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCit7CisJ
c3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQgPSBkcF90b19kaWdfcG9ydChpbnRl
bF9kcCk7CisJZW51bSBwaXBlIHBpcGUgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPnVhcGku
Y3J0YyktPnBpcGU7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gZHBfdG9f
aTkxNShpbnRlbF9kcCk7CisJZW51bSBwb3J0IHBvcnQgPSBkaWdfcG9ydC0+YmFzZS5wb3J0Owor
CisJaWYgKElTX0FMREVSTEFLRV9QKGRldl9wcml2KSkKKwkJcmV0dXJuIHBpcGUgPD0gUElQRV9C
ICYmIHBvcnQgPD0gUE9SVF9COworCWVsc2UKKwkJcmV0dXJuIHBpcGUgPT0gUElQRV9BICYmIHBv
cnQgPT0gUE9SVF9BOworfQorCiBzdGF0aWMgdm9pZAogdGdsX2RjM2NvX2V4aXRsaW5lX2NvbXB1
dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCiAJCQkJICBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIHsKIAljb25zdCB1MzIgY3J0Y192ZGlzcGxheSA9IGNy
dGNfc3RhdGUtPnVhcGkuYWRqdXN0ZWRfbW9kZS5jcnRjX3ZkaXNwbGF5OwotCXN0cnVjdCBpbnRl
bF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0ID0gZHBfdG9fZGlnX3BvcnQoaW50ZWxfZHApOwogCXN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOwog
CXUzMiBleGl0X3NjYW5saW5lczsKIApAQCAtNjcyLDkgKzY4Niw3IEBAIHRnbF9kYzNjb19leGl0
bGluZV9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCWlmICghKGRl
dl9wcml2LT5kbWMuYWxsb3dlZF9kY19tYXNrICYgRENfU1RBVEVfRU5fREMzQ08pKQogCQlyZXR1
cm47CiAKLQkvKiBCLlNwZWNzOjQ5MTk2IERDM0NPIG9ubHkgd29ya3Mgd2l0aCBwaXBlQSBhbmQg
RERJQS4qLwotCWlmICh0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPnVhcGkuY3J0YyktPnBpcGUg
IT0gUElQRV9BIHx8Ci0JICAgIGRpZ19wb3J0LT5iYXNlLnBvcnQgIT0gUE9SVF9BKQorCWlmICgh
ZGMzY29faXNfcGlwZV9wb3J0X2NvbXBhdGlibGUoaW50ZWxfZHAsIGNydGNfc3RhdGUpKQogCQly
ZXR1cm47CiAKIAkvKgotLSAKMi4zMS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
