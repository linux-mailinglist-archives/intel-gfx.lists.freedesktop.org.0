Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D3DF85951A
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 09:37:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 403256E88B;
	Fri, 28 Jun 2019 07:37:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F8F56E88B
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2019 07:37:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jun 2019 00:37:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,426,1557212400"; d="scan'208";a="170676387"
Received: from linuxpresi1-desktop.iind.intel.com ([10.223.74.143])
 by FMSMGA003.fm.intel.com with ESMTP; 28 Jun 2019 00:37:06 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jun 2019 13:32:29 +0530
Message-Id: <20190628080230.27492-3-uma.shankar@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190628080230.27492-1-uma.shankar@intel.com>
References: <20190628080230.27492-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v5 2/3] drm/i915/icl: Fix Y pre-offset for Full Range
 YCbCr
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rml4ZWQgWSBQcmUtb2Zmc2V0IGluIGNhc2Ugb2YgRnVsbCBSYW5nZSBZQ2JDci4KCnYyOiBSZWJh
c2UKClJldmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPgpTdWdnZXN0ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYyB8
IDcgKysrKystLQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0
ZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYwppbmRleCAx
Yjc2YTU0YTkxYWQuLjM2OWVhY2NkOGIwNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Nwcml0ZS5jCkBAIC01MTYsOCArNTE2LDExIEBAIGljbF9wcm9ncmFtX2lucHV0
X2NzYyhzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLAogCiAJSTkxNV9XUklURV9GVyhQTEFORV9J
TlBVVF9DU0NfUFJFT0ZGKHBpcGUsIHBsYW5lX2lkLCAwKSwKIAkJICAgICAgUFJFT0ZGX1lVVl9U
T19SR0JfSEkpOwotCUk5MTVfV1JJVEVfRlcoUExBTkVfSU5QVVRfQ1NDX1BSRU9GRihwaXBlLCBw
bGFuZV9pZCwgMSksCi0JCSAgICAgIFBSRU9GRl9ZVVZfVE9fUkdCX01FKTsKKwlpZiAocGxhbmVf
c3RhdGUtPmJhc2UuY29sb3JfcmFuZ2UgPT0gRFJNX0NPTE9SX1lDQkNSX0ZVTExfUkFOR0UpCisJ
CUk5MTVfV1JJVEVfRlcoUExBTkVfSU5QVVRfQ1NDX1BSRU9GRihwaXBlLCBwbGFuZV9pZCwgMSks
IDApOworCWVsc2UKKwkJSTkxNV9XUklURV9GVyhQTEFORV9JTlBVVF9DU0NfUFJFT0ZGKHBpcGUs
IHBsYW5lX2lkLCAxKSwKKwkJCSAgICAgIFBSRU9GRl9ZVVZfVE9fUkdCX01FKTsKIAlJOTE1X1dS
SVRFX0ZXKFBMQU5FX0lOUFVUX0NTQ19QUkVPRkYocGlwZSwgcGxhbmVfaWQsIDIpLAogCQkgICAg
ICBQUkVPRkZfWVVWX1RPX1JHQl9MTyk7CiAJSTkxNV9XUklURV9GVyhQTEFORV9JTlBVVF9DU0Nf
UE9TVE9GRihwaXBlLCBwbGFuZV9pZCwgMCksIDB4MCk7Ci0tIAoyLjIyLjAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
