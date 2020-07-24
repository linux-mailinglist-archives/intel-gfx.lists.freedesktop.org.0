Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DC1C22D134
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jul 2020 23:39:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87DE66EA1C;
	Fri, 24 Jul 2020 21:39:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AED6A6EA0B
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jul 2020 21:39:24 +0000 (UTC)
IronPort-SDR: eDmmf7WjE7oCHYV2EooDiTUET9pyHo+Of7lXFOh6pg43aTyw/pcXJg4vQC8981QXHpXiNFiINO
 R9JrOvModuWg==
X-IronPort-AV: E=McAfee;i="6000,8403,9692"; a="149970014"
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="149970014"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 14:39:24 -0700
IronPort-SDR: F5ABJEumb2G75ciRou4xyRMIphfBEJ58peDDuwbsKbESzWNGKAxgy5LKFvLPGRhucaVJXXdQaW
 dbVo+JpfEgvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="329041962"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga007.jf.intel.com with ESMTP; 24 Jul 2020 14:39:23 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jul 2020 14:39:06 -0700
Message-Id: <20200724213918.27424-11-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200724213918.27424-1-lucas.demarchi@intel.com>
References: <20200724213918.27424-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 10/22] drm/i915/dg1: invert HPD pins
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQ2xpbnRvbiBBIFRheWxvciA8Y2xpbnRvbi5hLnRheWxvckBpbnRlbC5jb20+CgpIUEQg
cGlucyBhcmUgaW52ZXJ0ZWQgZm9yIERHMSBwbGF0Zm9ybS4KCkJzcGVjOiA0OTk1NgpDYzogSm9z
w6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CkNjOiBNYXR0IFJvcGVy
IDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBDbGludG9uIEEgVGF5
bG9yIDxjbGludG9uLmEudGF5bG9yQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUg
TWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9pcnEuYyB8IDkgKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oIHwgNCArKysrCiAyIGZpbGVzIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKykKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9pcnEuYwppbmRleCBlOGJkYzUyYzk0YmIuLjkzMzY3MjIxZDIwOCAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2lycS5jCkBAIC0zMTgxLDYgKzMxODEsMTUgQEAgc3RhdGljIHZvaWQganNwX2hw
ZF9pcnFfc2V0dXAoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCiBzdGF0aWMg
dm9pZCBkZzFfaHBkX2lycV9zZXR1cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYp
CiB7CisJdTMyIHZhbDsKKworCXZhbCA9IEk5MTVfUkVBRChTT1VUSF9DSElDS0VOMSk7CisJdmFs
IHw9IChJTlZFUlRfRERJQV9IUEQgfAorCQlJTlZFUlRfRERJQl9IUEQgfAorCQlJTlZFUlRfRERJ
Q19IUEQgfAorCQlJTlZFUlRfRERJRF9IUEQpOworCUk5MTVfV1JJVEUoU09VVEhfQ0hJQ0tFTjEs
IHZhbCk7CisKIAlpY3BfaHBkX2lycV9zZXR1cChkZXZfcHJpdiwKIAkJCSAgU0RFX0RESV9NQVNL
X0RHMSwgMCwKIAkJCSAgREcxX0RESV9IUERfRU5BQkxFX01BU0ssIDApOwpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmgKaW5kZXggOWQwNzU2ZWZlOTE1Li5iYmFhNjQzMzZhZGEgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaApAQCAtODcxNiw2ICs4NzE2LDEwIEBAIGVudW0gewogI2RlZmluZSBTT1VUSF9D
SElDS0VOMQkJX01NSU8oMHhjMjAwMCkKICNkZWZpbmUgIEZESUFfUEhBU0VfU1lOQ19TSElGVF9P
VlIJMTkKICNkZWZpbmUgIEZESUFfUEhBU0VfU1lOQ19TSElGVF9FTgkxOAorI2RlZmluZSAgSU5W
RVJUX0RESURfSFBECQkJKDEgPDwgMTgpCisjZGVmaW5lICBJTlZFUlRfRERJQ19IUEQJCQkoMSA8
PCAxNykKKyNkZWZpbmUgIElOVkVSVF9ERElCX0hQRAkJCSgxIDw8IDE2KQorI2RlZmluZSAgSU5W
RVJUX0RESUFfSFBECQkJKDEgPDwgMTUpCiAjZGVmaW5lICBGRElfUEhBU0VfU1lOQ19PVlIocGlw
ZSkgKDEgPDwgKEZESUFfUEhBU0VfU1lOQ19TSElGVF9PVlIgLSAoKHBpcGUpICogMikpKQogI2Rl
ZmluZSAgRkRJX1BIQVNFX1NZTkNfRU4ocGlwZSkgKDEgPDwgKEZESUFfUEhBU0VfU1lOQ19TSElG
VF9FTiAtICgocGlwZSkgKiAyKSkpCiAjZGVmaW5lICBGRElfQkNfQklGVVJDQVRJT05fU0VMRUNU
CSgxIDw8IDEyKQotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
