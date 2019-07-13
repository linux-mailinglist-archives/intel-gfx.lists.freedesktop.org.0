Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B0567776
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jul 2019 03:10:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2F0F6E3C1;
	Sat, 13 Jul 2019 01:09:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1027D6E3AE
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Jul 2019 01:09:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 18:09:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,484,1557212400"; d="scan'208";a="341850951"
Received: from dhoyan-mobl.amr.corp.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.252.197.100])
 by orsmga005.jf.intel.com with ESMTP; 12 Jul 2019 18:09:46 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Jul 2019 18:09:35 -0700
Message-Id: <20190713010940.17711-18-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190713010940.17711-1-lucas.demarchi@intel.com>
References: <20190713010940.17711-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 17/22] drm/i915/tgl: Implement Wa_1406941453
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
Cc: Michel Thierry <michel.thierry@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KCkVuYWJsZSBT
bWFsbCBQTCBmb3IgcG93ZXIgYmVuZWZpdC4KClNpZ25lZC1vZmYtYnk6IE1pY2hlbCBUaGllcnJ5
IDxtaWNoZWwudGhpZXJyeUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNo
aSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3dvcmthcm91bmRzLmMgfCA1ICsrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oICAgICAgICAgICAgIHwgMyArKysKIDIgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25z
KCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3Vu
ZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKaW5kZXgg
MzQ3YmExNjM0NmQzLi5mMzM2NzMzOWY0NDUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfd29ya2Fyb3VuZHMuYwpAQCAtMTI4NSw2ICsxMjg1LDExIEBAIHJjc19lbmdpbmVfd2Ff
aW5pdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIHN0cnVjdCBpOTE1X3dhX2xpc3Qg
KndhbCkKIAkJd2Ffd3JpdGVfb3Iod2FsLAogCQkJICAgIEdFTjEyX0wzU1FDUkVHMiwKIAkJCSAg
ICBHRU4xMl9MUVNDX0ZMVVNIX0NPSEVSRU5UX0xJTkVTKTsKKworCQkvKiBXYV8xNDA2OTQxNDUz
OnRnbCAqLworCQl3YV9tYXNrZWRfZW4od2FsLAorCQkJICAgICBTQU1QTEVSX01PREUsCisJCQkg
ICAgIFNBTVBMRVJfRU5BQkxFX1NNQUxMX1BMKTsKIAl9CiAKIAlpZiAoSVNfR0VOKGk5MTUsIDEx
KSkgewpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggZDA0OGMzNDllMDdlLi43MTI2MTZmY2Q2
YjMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtOTAwOSw2ICs5MDA5LDkgQEAgZW51bSB7
CiAjZGVmaW5lICAgR0VOOV9ER19NSVJST1JfRklYX0VOQUJMRQkoMSA8PCA1KQogI2RlZmluZSAg
IEdFTjlfQ0NTX1RMQl9QUkVGRVRDSF9FTkFCTEUJKDEgPDwgMykKIAorI2RlZmluZSBTQU1QTEVS
X01PREUJCQlfTU1JTygweGUxOGMpCisjZGVmaW5lICAgU0FNUExFUl9FTkFCTEVfU01BTExfUEwJ
KDEgPDwgMTUpCisKICNkZWZpbmUgR0VOOF9ST1dfQ0hJQ0tFTgkJX01NSU8oMHhlNGYwKQogI2Rl
ZmluZSAgIEZMT1dfQ09OVFJPTF9FTkFCTEUJCSgxIDw8IDE1KQogI2RlZmluZSAgIFBBUlRJQUxf
SU5TVFJVQ1RJT05fU0hPT1RET1dOX0RJU0FCTEUJKDEgPDwgOCkKLS0gCjIuMjEuMAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
