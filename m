Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BE320FFA9
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 23:56:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F4006E4B1;
	Tue, 30 Jun 2020 21:56:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C94C6E4B1
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2020 21:56:14 +0000 (UTC)
IronPort-SDR: 3nu8VgRd3LzuBZ7DRFllfpV1T57sp7pMlrrKdkdZl5fbqZBySDdI3haCEImdP1fTKMSyJyYWuu
 fBMnedyVvFJg==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="143872423"
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="143872423"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 14:56:14 -0700
IronPort-SDR: wV4hoKoFrfW7PiJdLVN3Kldey5bOKartNtWQWEiWPJhaH81Xo4FaHDzn0ZtVjXtaVWT4JHDjpv
 Whya61qoiewQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="355906708"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 30 Jun 2020 14:56:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Jul 2020 00:56:11 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jul 2020 00:55:52 +0300
Message-Id: <20200630215601.28557-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200630215601.28557-1-ville.syrjala@linux.intel.com>
References: <20200630215601.28557-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/12] drm/i915: Add AUX_CH_{H,
 I} power domain handling
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkFV
WCBDSCBIL0kgbmVlZCB0aGVpciBwb3dlciBkb21haW5zIHRvby4KClNpZ25lZC1vZmYtYnk6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA4ICsrKysrKysrCiAxIGZp
bGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCA2NjVhYTQyODNmYjkuLjg3ODMxZmQ5ZTFlMSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTczMTgs
NiArNzMxOCwxMCBAQCBpbnRlbF9hdXhfcG93ZXJfZG9tYWluKHN0cnVjdCBpbnRlbF9kaWdpdGFs
X3BvcnQgKmRpZ19wb3J0KQogCQkJcmV0dXJuIFBPV0VSX0RPTUFJTl9BVVhfRl9UQlQ7CiAJCWNh
c2UgQVVYX0NIX0c6CiAJCQlyZXR1cm4gUE9XRVJfRE9NQUlOX0FVWF9HX1RCVDsKKwkJY2FzZSBB
VVhfQ0hfSDoKKwkJCXJldHVybiBQT1dFUl9ET01BSU5fQVVYX0hfVEJUOworCQljYXNlIEFVWF9D
SF9JOgorCQkJcmV0dXJuIFBPV0VSX0RPTUFJTl9BVVhfSV9UQlQ7CiAJCWRlZmF1bHQ6CiAJCQlN
SVNTSU5HX0NBU0UoZGlnX3BvcnQtPmF1eF9jaCk7CiAJCQlyZXR1cm4gUE9XRVJfRE9NQUlOX0FV
WF9DX1RCVDsKQEAgLTczNDksNiArNzM1MywxMCBAQCBpbnRlbF9sZWdhY3lfYXV4X3RvX3Bvd2Vy
X2RvbWFpbihlbnVtIGF1eF9jaCBhdXhfY2gpCiAJCXJldHVybiBQT1dFUl9ET01BSU5fQVVYX0Y7
CiAJY2FzZSBBVVhfQ0hfRzoKIAkJcmV0dXJuIFBPV0VSX0RPTUFJTl9BVVhfRzsKKwljYXNlIEFV
WF9DSF9IOgorCQlyZXR1cm4gUE9XRVJfRE9NQUlOX0FVWF9IOworCWNhc2UgQVVYX0NIX0k6CisJ
CXJldHVybiBQT1dFUl9ET01BSU5fQVVYX0k7CiAJZGVmYXVsdDoKIAkJTUlTU0lOR19DQVNFKGF1
eF9jaCk7CiAJCXJldHVybiBQT1dFUl9ET01BSU5fQVVYX0E7Ci0tIAoyLjI2LjIKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
