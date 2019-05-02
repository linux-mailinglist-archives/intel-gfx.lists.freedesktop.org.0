Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B9E411BFD
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 17:00:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1551889581;
	Thu,  2 May 2019 15:00:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD2C6896BF
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 15:00:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 08:00:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,422,1549958400"; d="scan'208";a="169963614"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 02 May 2019 08:00:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 May 2019 18:02:36 +0300
Message-Id: <72de677e844220d8522a836aae206c278ea45284.1556809195.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1556809195.git.jani.nikula@intel.com>
References: <cover.1556809195.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 02/13] drm/i915/dsi: move operation mode types
 to intel_dsi.h
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

UmVkdWNlIGNsdXR0ZXIgZnJvbSBpbnRlbF9kcnYuaCB3aXRoIHRoZSBtaW5pbWFsIGNoYW5nZS4K
ClNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJ2LmggfCAzIC0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZHNpLmggfCAzICsrKwogMiBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMo
KyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcnYuaAppbmRleCBhYjExYzMu
LjI1YTVmYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJ2LmgKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJ2LmgKQEAgLTE4NCw5ICsxODQsNiBAQCBl
bnVtIGludGVsX291dHB1dF90eXBlIHsKIAlJTlRFTF9PVVRQVVRfRFBfTVNUID0gMTEsCiB9Owog
Ci0jZGVmaW5lIElOVEVMX0RTSV9WSURFT19NT0RFCTAKLSNkZWZpbmUgSU5URUxfRFNJX0NPTU1B
TkRfTU9ERQkxCi0KIHN0cnVjdCBpbnRlbF9mcmFtZWJ1ZmZlciB7CiAJc3RydWN0IGRybV9mcmFt
ZWJ1ZmZlciBiYXNlOwogCXN0cnVjdCBpbnRlbF9yb3RhdGlvbl9pbmZvIHJvdF9pbmZvOwpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHNpLmggYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9kc2kuaAppbmRleCAxZDFlNmIuLmY5YjkwMDYgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RzaS5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2RzaS5oCkBAIC0yOCw2ICsyOCw5IEBACiAjaW5jbHVkZSA8ZHJtL2RybV9taXBpX2Rz
aS5oPgogI2luY2x1ZGUgImludGVsX2Rydi5oIgogCisjZGVmaW5lIElOVEVMX0RTSV9WSURFT19N
T0RFCTAKKyNkZWZpbmUgSU5URUxfRFNJX0NPTU1BTkRfTU9ERQkxCisKIC8qIER1YWwgTGluayBz
dXBwb3J0ICovCiAjZGVmaW5lIERTSV9EVUFMX0xJTktfTk9ORQkJMAogI2RlZmluZSBEU0lfRFVB
TF9MSU5LX0ZST05UX0JBQ0sJMQotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
