Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F97F3C9BF3
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jul 2021 11:35:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBAEE6E7DD;
	Thu, 15 Jul 2021 09:35:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFDCD6E7DD
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jul 2021 09:35:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10045"; a="210560281"
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; d="scan'208";a="210560281"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2021 02:35:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; d="scan'208";a="466508484"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 15 Jul 2021 02:35:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 15 Jul 2021 12:35:32 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Jul 2021 12:35:18 +0300
Message-Id: <20210715093530.31711-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210715093530.31711-1-ville.syrjala@linux.intel.com>
References: <20210715093530.31711-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/13] drm/i915: Set output_types to EDP for
 vlv/chv DPLL forcing
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldo
ZW4gd2UgZW5hYmxlIHRoZSBEUExMIGZvciB0aGUgUFBTIGtpY2ssIGxldCdzIHRlbGwgdGhlIERQ
TEwgY29kZQp3ZSdyZSBkZWFsaW5nIHdpdGggYW4gZURQIG91dHB1dC4gVGhpcyBzaG91bGRuJ3Qg
cmVhbGx5IG1hdHRlciwgYnV0Cml0J3MgbW9yZSBjb25zaXN0ZW50IHdpdGggdGhlIHdheSB0aGUg
RFBMTCBpcyBjb25maWd1cmVkIHdoZW4gd2UncmUKYWN0dWFsbHkgZW5hYmxpbmcgdGhlIGVEUCBw
b3J0IGZvciByZWFsLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwbGwuYyB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGwuYwppbmRleCA4OTYzNWRhOWY2ZjYuLjRl
MGFlMTA5NzBmNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcGxsLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsLmMK
QEAgLTE3NzgsNiArMTc3OCw3IEBAIGludCB2bHZfZm9yY2VfcGxsX29uKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSBwaXBlIHBpcGUsCiAJcGlwZV9jb25maWctPmNwdV90
cmFuc2NvZGVyID0gKGVudW0gdHJhbnNjb2RlcilwaXBlOwogCXBpcGVfY29uZmlnLT5waXhlbF9t
dWx0aXBsaWVyID0gMTsKIAlwaXBlX2NvbmZpZy0+ZHBsbCA9ICpkcGxsOworCXBpcGVfY29uZmln
LT5vdXRwdXRfdHlwZXMgPSBCSVQoSU5URUxfT1VUUFVUX0VEUCk7CiAKIAlpZiAoSVNfQ0hFUlJZ
VklFVyhkZXZfcHJpdikpIHsKIAkJY2h2X2NvbXB1dGVfZHBsbChjcnRjLCBwaXBlX2NvbmZpZyk7
Ci0tIAoyLjMxLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
