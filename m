Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A7F1FDA6E
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 02:43:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 762406E38A;
	Thu, 18 Jun 2020 00:42:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 728BE6E223
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jun 2020 00:42:53 +0000 (UTC)
IronPort-SDR: hH4Ly4HZf25uU+o/pz3JBpid8s0ZoZkqbUgH+s0slFyDCzHyrw7ql3Mf0+NWDHlBo76UryT4xy
 RkgqFmmfWJfA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2020 17:42:53 -0700
IronPort-SDR: wJ8G4yskJqlRiVVHdWYj9xEn/MLR2AermE6IYAYnemlbybYLAazZ3DE3snbsktwIyFJaV0XejQ
 WbZc3X05ZH9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,524,1583222400"; d="scan'208";a="477011893"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by fmsmga006.fm.intel.com with ESMTP; 17 Jun 2020 17:42:52 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jun 2020 17:42:29 -0700
Message-Id: <20200618004240.16263-22-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200618004240.16263-1-lucas.demarchi@intel.com>
References: <20200618004240.16263-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 21/32] drm/i915/dg1: invert HPD pins
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

RnJvbTogQ2xpbnRvbiBBIFRheWxvciA8Y2xpbnRvbi5hLnRheWxvckBpbnRlbC5jb20+CgpIUEQg
cGlucyBhcmUgaW52ZXJ0ZWQgZm9yIERHMSBwbGF0Zm9ybS4KCkJzcGVjOiA0OTk1NgpDYzogSm9z
w6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CkNjOiBNYXR0IFJvcGVy
IDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBDbGludG9uIEEgVGF5
bG9yIDxjbGludG9uLmEudGF5bG9yQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUg
TWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9pcnEuYyB8IDQgKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCB8
IDQgKysrKwogMiBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9pcnEuYwppbmRleCAzNzA3ZjkyMzExNzFmLi40ZmQ2NjdiYzg4YzJlIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfaXJxLmMKQEAgLTMxODMsNiArMzE4MywxMCBAQCBzdGF0aWMgdm9pZCBqc3BfaHBkX2ly
cV9zZXR1cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAKIHN0YXRpYyB2b2lk
IGRnMV9ocGRfaXJxX3NldHVwKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHsK
KwlpbnRlbF9kZV9ybXcoZGV2X3ByaXYsIFNPVVRIX0NISUNLRU4xLCAwLAorCQkgICAgIElOVkVS
VF9ERElBX0hQRCB8IElOVkVSVF9ERElCX0hQRCB8CisJCSAgICAgSU5WRVJUX0RESUNfSFBEIHwg
SU5WRVJUX0RESURfSFBEKTsKKwogCWljcF9ocGRfaXJxX3NldHVwKGRldl9wcml2LAogCQkJICBT
REVfRERJX01BU0tfREcxLCAwLAogCQkJICBERzFfRERJX0hQRF9FTkFCTEVfTUFTSywgMCk7CmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCAxM2E5ODlmNWU4ZGQzLi4zZjlhMTBkZDViZTI3IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTg2MzUsNiArODYzNSwxMCBAQCBlbnVtIHsKICNk
ZWZpbmUgU09VVEhfQ0hJQ0tFTjEJCV9NTUlPKDB4YzIwMDApCiAjZGVmaW5lICBGRElBX1BIQVNF
X1NZTkNfU0hJRlRfT1ZSCTE5CiAjZGVmaW5lICBGRElBX1BIQVNFX1NZTkNfU0hJRlRfRU4JMTgK
KyNkZWZpbmUgIElOVkVSVF9ERElEX0hQRAkJKDEgPDwgMTgpCisjZGVmaW5lICBJTlZFUlRfRERJ
Q19IUEQJCSgxIDw8IDE3KQorI2RlZmluZSAgSU5WRVJUX0RESUJfSFBECQkoMSA8PCAxNikKKyNk
ZWZpbmUgIElOVkVSVF9ERElBX0hQRAkJKDEgPDwgMTUpCiAjZGVmaW5lICBGRElfUEhBU0VfU1lO
Q19PVlIocGlwZSkgKDEgPDwgKEZESUFfUEhBU0VfU1lOQ19TSElGVF9PVlIgLSAoKHBpcGUpICog
MikpKQogI2RlZmluZSAgRkRJX1BIQVNFX1NZTkNfRU4ocGlwZSkgKDEgPDwgKEZESUFfUEhBU0Vf
U1lOQ19TSElGVF9FTiAtICgocGlwZSkgKiAyKSkpCiAjZGVmaW5lICBGRElfQkNfQklGVVJDQVRJ
T05fU0VMRUNUCSgxIDw8IDEyKQotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
