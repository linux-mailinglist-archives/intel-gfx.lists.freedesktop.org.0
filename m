Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41FAFE28A
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2019 14:27:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8044289327;
	Mon, 29 Apr 2019 12:27:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84A6B89327
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2019 12:27:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Apr 2019 05:27:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,409,1549958400"; d="scan'208";a="168934686"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 29 Apr 2019 05:27:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Apr 2019 15:29:20 +0300
Message-Id: <15b8dea022bd80198f91c59f8ad793ebd8fc04f0.1556540889.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1556540889.git.jani.nikula@intel.com>
References: <cover.1556540889.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 02/21] drm/i915: make intel_bios.h self-contained
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

SnVzdCBhIHR5cGVzIGluY2x1ZGUgcmVxdWlyZWQuCgpTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3Vs
YSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2Vm
aWxlLmhlYWRlci10ZXN0IHwgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9iaW9zLmgg
ICAgICAgICB8IDIgKysKIDIgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUuaGVhZGVyLXRlc3QgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9NYWtlZmlsZS5oZWFkZXItdGVzdAppbmRleCA5YWNlNWU3Li4xZDk1NGIg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlLmhlYWRlci10ZXN0Cisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlLmhlYWRlci10ZXN0CkBAIC0xNCw2ICsx
NCw3IEBAIGhlYWRlcl90ZXN0IDo9IFwKIAlpOTE1X3RpbWVsaW5lX3R5cGVzLmggXAogCWludGVs
X2F0b21pY19wbGFuZS5oIFwKIAlpbnRlbF9hdWRpby5oIFwKKwlpbnRlbF9iaW9zLmggXAogCWlu
dGVsX2NkY2xrLmggXAogCWludGVsX2NvbG9yLmggXAogCWludGVsX2Nvbm5lY3Rvci5oIFwKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Jpb3MuaCBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2Jpb3MuaAppbmRleCA3ZTM1NDUuLmNmODcxYSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfYmlvcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2Jpb3MuaApAQCAtMzAsNiArMzAsOCBAQAogI2lmbmRlZiBfSU5URUxfQklPU19I
XwogI2RlZmluZSBfSU5URUxfQklPU19IXwogCisjaW5jbHVkZSA8bGludXgvdHlwZXMuaD4KKwog
ZW51bSBpbnRlbF9iYWNrbGlnaHRfdHlwZSB7CiAJSU5URUxfQkFDS0xJR0hUX1BNSUMsCiAJSU5U
RUxfQkFDS0xJR0hUX0xQU1MsCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
