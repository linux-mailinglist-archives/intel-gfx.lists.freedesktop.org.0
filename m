Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F9156C4D
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 16:38:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0B7B6E450;
	Wed, 26 Jun 2019 14:38:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E6E66E45B
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 14:37:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jun 2019 07:37:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,420,1557212400"; d="scan'208";a="183183266"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 26 Jun 2019 07:37:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Jun 2019 17:40:17 +0300
Message-Id: <20190626144020.2155-11-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190626144020.2155-1-jani.nikula@intel.com>
References: <20190626144020.2155-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v2 10/13] drm/i915: make intel_guc_reg.h
 self-contained
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

QWRkIHRoZSBtaW5pbWFsIGluY2x1ZGVzL2RlY2xhcmF0aW9ucyB0byBtYWtlIHRoZSBoZWFkZXIg
c2VsZi1jb250YWluZWQsCmFuZCBlbnN1cmUgaXQgc3RheXMgdGhhdCB3YXkuCgp2MjogYWxzbyBp
bmNsdWRlIGk5MTVfcmVnLmggKE1pY2hhbCkKClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmku
bmlrdWxhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZS5oZWFk
ZXItdGVzdCB8IDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX3JlZy5oICAgICAg
fCA1ICsrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlLmhlYWRlci10ZXN0IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvTWFrZWZpbGUuaGVhZGVyLXRlc3QKaW5kZXggNTgzZmU3NmYyY2RiLi5iYjZhOTIz
NGI3NDkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlLmhlYWRlci10
ZXN0CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlLmhlYWRlci10ZXN0CkBAIC0y
MSw2ICsyMSw3IEBAIGhlYWRlcl90ZXN0IDo9IFwKIAlpbnRlbF9kcnYuaCBcCiAJaW50ZWxfZ3Vj
X2N0LmggXAogCWludGVsX2d1Y19md2lmLmggXAorCWludGVsX2d1Y19yZWcuaCBcCiAJaW50ZWxf
cG0uaCBcCiAJaW50ZWxfcnVudGltZV9wbS5oIFwKIAlpbnRlbF9zaWRlYmFuZC5oIFwKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19yZWcuaCBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2d1Y19yZWcuaAppbmRleCBkOTBiODhmYWRiNWUuLmE1YWI3YmM1NTA0
YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX3JlZy5oCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19yZWcuaApAQCAtMjQsNiArMjQsMTEgQEAK
ICNpZm5kZWYgX0lOVEVMX0dVQ19SRUdfSF8KICNkZWZpbmUgX0lOVEVMX0dVQ19SRUdfSF8KIAor
I2luY2x1ZGUgPGxpbnV4L2NvbXBpbGVyLmg+CisjaW5jbHVkZSA8bGludXgvdHlwZXMuaD4KKwor
I2luY2x1ZGUgImk5MTVfcmVnLmgiCisKIC8qIERlZmluaXRpb25zIG9mIEd1QyBIL1cgcmVnaXN0
ZXJzLCBiaXRzLCBldGMgKi8KIAogI2RlZmluZSBHVUNfU1RBVFVTCQkJX01NSU8oMHhjMDAwKQot
LSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
