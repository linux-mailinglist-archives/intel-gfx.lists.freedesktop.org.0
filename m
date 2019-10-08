Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55AE4CFEA9
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2019 18:14:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A64EC6E854;
	Tue,  8 Oct 2019 16:14:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37C806E851
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2019 16:14:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Oct 2019 09:14:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,270,1566889200"; d="scan'208";a="199857342"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 08 Oct 2019 09:14:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Oct 2019 19:14:52 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Oct 2019 19:14:37 +0300
Message-Id: <20191008161441.12721-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191008161441.12721-1-ville.syrjala@linux.intel.com>
References: <20191008161441.12721-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/9] drm/i915: Add 10bpc formats with alpha for
 icl+
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCklD
TCsgYWdhaW4gc3VwcG9ydHMgYWxwaGEgYmxlbmRpbmcgd2l0aCAxMGJwYyBwaXhlbCBmb3JtYXRz
LgpFeHBvc2UgdGhlbS4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9zcHJpdGUuYyB8IDYgKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCsp
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMKaW5kZXggNGNk
MDk4MmRjOGEyLi5hYWFiZWFmMTFhZTkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9zcHJpdGUuYwpAQCAtMjEwMyw2ICsyMTAzLDggQEAgc3RhdGljIGNvbnN0IHUzMiBp
Y2xfc2RyX3lfcGxhbmVfZm9ybWF0c1tdID0gewogCURSTV9GT1JNQVRfQUJHUjg4ODgsCiAJRFJN
X0ZPUk1BVF9YUkdCMjEwMTAxMCwKIAlEUk1fRk9STUFUX1hCR1IyMTAxMDEwLAorCURSTV9GT1JN
QVRfQVJHQjIxMDEwMTAsCisJRFJNX0ZPUk1BVF9BQkdSMjEwMTAxMCwKIAlEUk1fRk9STUFUX1lV
WVYsCiAJRFJNX0ZPUk1BVF9ZVllVLAogCURSTV9GT1JNQVRfVVlWWSwKQEAgLTIxMjQsNiArMjEy
Niw4IEBAIHN0YXRpYyBjb25zdCB1MzIgaWNsX3Nkcl91dl9wbGFuZV9mb3JtYXRzW10gPSB7CiAJ
RFJNX0ZPUk1BVF9BQkdSODg4OCwKIAlEUk1fRk9STUFUX1hSR0IyMTAxMDEwLAogCURSTV9GT1JN
QVRfWEJHUjIxMDEwMTAsCisJRFJNX0ZPUk1BVF9BUkdCMjEwMTAxMCwKKwlEUk1fRk9STUFUX0FC
R1IyMTAxMDEwLAogCURSTV9GT1JNQVRfWVVZViwKIAlEUk1fRk9STUFUX1lWWVUsCiAJRFJNX0ZP
Uk1BVF9VWVZZLApAQCAtMjE0OSw2ICsyMTUzLDggQEAgc3RhdGljIGNvbnN0IHUzMiBpY2xfaGRy
X3BsYW5lX2Zvcm1hdHNbXSA9IHsKIAlEUk1fRk9STUFUX0FCR1I4ODg4LAogCURSTV9GT1JNQVRf
WFJHQjIxMDEwMTAsCiAJRFJNX0ZPUk1BVF9YQkdSMjEwMTAxMCwKKwlEUk1fRk9STUFUX0FSR0Iy
MTAxMDEwLAorCURSTV9GT1JNQVRfQUJHUjIxMDEwMTAsCiAJRFJNX0ZPUk1BVF9YUkdCMTYxNjE2
MTZGLAogCURSTV9GT1JNQVRfWEJHUjE2MTYxNjE2RiwKIAlEUk1fRk9STUFUX0FSR0IxNjE2MTYx
NkYsCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
