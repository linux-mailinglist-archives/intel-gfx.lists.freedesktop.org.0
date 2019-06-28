Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01ECD5942C
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 08:28:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2ECA26E87E;
	Fri, 28 Jun 2019 06:28:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8C086E87E
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2019 06:28:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 23:28:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,426,1557212400"; d="scan'208";a="164974998"
Received: from linuxpresi1-desktop.iind.intel.com ([10.223.74.143])
 by orsmga003.jf.intel.com with ESMTP; 27 Jun 2019 23:28:43 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jun 2019 12:23:58 +0530
Message-Id: <20190628065359.10375-3-uma.shankar@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190628065359.10375-1-uma.shankar@intel.com>
References: <20190628065359.10375-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v4 2/3] drm/i915/icl: Fix Y pre-offset for Full Range
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
ZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYwppbmRleCAy
OTg2MWNmNjQ0YTQuLmFiZDg5YmRmOGM1ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
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
