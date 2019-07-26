Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 500E075BD2
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 02:02:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8C626E840;
	Fri, 26 Jul 2019 00:02:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4BB86E839
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 00:02:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 17:02:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,308,1559545200"; d="scan'208";a="189491195"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.9.40])
 by fmsmga001.fm.intel.com with ESMTP; 25 Jul 2019 17:02:32 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Jul 2019 17:02:26 -0700
Message-Id: <20190726000226.26914-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190726000226.26914-1-lucas.demarchi@intel.com>
References: <20190726000226.26914-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/tgl: Implement Wa_1406941453
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
aSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogU3R1YXJ0IFN1bW1lcnMg
PHN0dWFydC5zdW1tZXJzQGludGVsLmNvbT4KTGluazogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRl
c2t0b3Aub3JnL3BhdGNoL21zZ2lkLzIwMTkwNzEzMDEwOTQwLjE3NzExLTE4LWx1Y2FzLmRlbWFy
Y2hpQGludGVsLmNvbQotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91
bmRzLmMgfCA1ICsrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAg
ICAgIHwgMyArKysKIDIgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKaW5kZXggMzIzNWVmMzU1ZGZkLi44
MzBjY2Q0MTZhMjkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dv
cmthcm91bmRzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3Vu
ZHMuYwpAQCAtMTI3OSw2ICsxMjc5LDExIEBAIHJjc19lbmdpbmVfd2FfaW5pdChzdHJ1Y3QgaW50
ZWxfZW5naW5lX2NzICplbmdpbmUsIHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkKIAkJd2Ffd3Jp
dGVfb3Iod2FsLAogCQkJICAgIEdFTjEyX0wzU1FDUkVHMiwKIAkJCSAgICBHRU4xMl9MUVNDX0ZM
VVNIX0NPSEVSRU5UX0xJTkVTKTsKKworCQkvKiBXYV8xNDA2OTQxNDUzOnRnbCAqLworCQl3YV9t
YXNrZWRfZW4od2FsLAorCQkJICAgICBTQU1QTEVSX01PREUsCisJCQkgICAgIFNBTVBMRVJfRU5B
QkxFX1NNQUxMX1BMKTsKIAl9CiAKIAlpZiAoSVNfR0VOKGk5MTUsIDExKSkgewpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmgKaW5kZXggZmJiYjg5ZjZjYTJmLi43MWVmYjM3ZjU0YTMgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaApAQCAtODk2NSw2ICs4OTY1LDkgQEAgZW51bSB7CiAjZGVmaW5lICAgR0VO
OV9ER19NSVJST1JfRklYX0VOQUJMRQkoMSA8PCA1KQogI2RlZmluZSAgIEdFTjlfQ0NTX1RMQl9Q
UkVGRVRDSF9FTkFCTEUJKDEgPDwgMykKIAorI2RlZmluZSBTQU1QTEVSX01PREUJCQlfTU1JTygw
eGUxOGMpCisjZGVmaW5lICAgU0FNUExFUl9FTkFCTEVfU01BTExfUEwJKDEgPDwgMTUpCisKICNk
ZWZpbmUgR0VOOF9ST1dfQ0hJQ0tFTgkJX01NSU8oMHhlNGYwKQogI2RlZmluZSAgIEZMT1dfQ09O
VFJPTF9FTkFCTEUJCSgxIDw8IDE1KQogI2RlZmluZSAgIFBBUlRJQUxfSU5TVFJVQ1RJT05fU0hP
T1RET1dOX0RJU0FCTEUJKDEgPDwgOCkKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
