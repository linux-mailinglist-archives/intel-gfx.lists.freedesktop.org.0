Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 01F023632D1
	for <lists+intel-gfx@lfdr.de>; Sun, 18 Apr 2021 02:19:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADBD36E069;
	Sun, 18 Apr 2021 00:19:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 232236E04E
 for <intel-gfx@lists.freedesktop.org>; Sun, 18 Apr 2021 00:19:10 +0000 (UTC)
IronPort-SDR: 495lngL8vhWokLdRk8XJeLdOmTjawWX9x5IPwX1l4fV0Ff9vf5VGFZDiNTndn/FF82/6Nz+Lqv
 8mPomSHV+mPA==
X-IronPort-AV: E=McAfee;i="6200,9189,9957"; a="182687383"
X-IronPort-AV: E=Sophos;i="5.82,230,1613462400"; d="scan'208";a="182687383"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2021 17:19:09 -0700
IronPort-SDR: dLFrlPSKFxvzfKJmGYPIxWSopCODAnPe5lL/O6PoOVuHat4zGprhEjsiODeCGDXxjXZN283LsI
 yRMjMC9eRBWg==
X-IronPort-AV: E=Sophos;i="5.82,230,1613462400"; d="scan'208";a="426049789"
Received: from xxi2-mobl.amr.corp.intel.com (HELO josouza-mobl2.intel.com)
 ([10.254.36.1])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2021 17:19:09 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 17 Apr 2021 17:21:24 -0700
Message-Id: <20210418002126.87882-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210418002126.87882-1-jose.souza@intel.com>
References: <20210418002126.87882-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/5] drm/i915/display: Drop duplicated code in
 intel_dp_set_infoframes()
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

Tm8gZnVuY3Rpb25hbCBjaGFuZ2VzIGluIGhlcmUuCgpDYzogTWF0dCBBdHdvb2QgPG1hdHRoZXcu
cy5hdHdvb2RAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMgfCAxNyArKysrKystLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5z
ZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcC5jCmluZGV4IDcyYmNjMTBjYWU0Zi4uY2YzODBmOThkNTRjIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCkBAIC0yODY1LDI0ICsyODY1LDE5IEBAIHZvaWQg
aW50ZWxfZHBfc2V0X2luZm9mcmFtZXMoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJ
dTMyIGRpcF9lbmFibGUgPSBWSURFT19ESVBfRU5BQkxFX0FWSV9IU1cgfCBWSURFT19ESVBfRU5B
QkxFX0dDUF9IU1cgfAogCQkJIFZJREVPX0RJUF9FTkFCTEVfVlNfSFNXIHwgVklERU9fRElQX0VO
QUJMRV9HTVBfSFNXIHwKIAkJCSBWSURFT19ESVBfRU5BQkxFX1NQRF9IU1cgfCBWSURFT19ESVBf
RU5BQkxFX0RSTV9HTEs7Ci0JdTMyIHZhbCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIHJlZyk7
CisJdTMyIHZhbCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIHJlZykgJiB+ZGlwX2VuYWJsZTsK
IAogCS8qIFRPRE86IEFkZCBEU0MgY2FzZSAoRElQX0VOQUJMRV9QUFMpICovCiAJLyogV2hlbiBQ
U1IgaXMgZW5hYmxlZCwgdGhpcyByb3V0aW5lIGRvZXNuJ3QgZGlzYWJsZSBWU0MgRElQICovCi0J
aWYgKGNydGNfc3RhdGUtPmhhc19wc3IpCi0JCXZhbCAmPSB+ZGlwX2VuYWJsZTsKLQllbHNlCi0J
CXZhbCAmPSB+KGRpcF9lbmFibGUgfCBWSURFT19ESVBfRU5BQkxFX1ZTQ19IU1cpOwotCi0JaWYg
KCFlbmFibGUpIHsKLQkJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIHJlZywgdmFsKTsKLQkJaW50
ZWxfZGVfcG9zdGluZ19yZWFkKGRldl9wcml2LCByZWcpOwotCQlyZXR1cm47Ci0JfQorCWlmICgh
Y3J0Y19zdGF0ZS0+aGFzX3BzcikKKwkJdmFsICY9IH5WSURFT19ESVBfRU5BQkxFX1ZTQ19IU1c7
CiAKIAlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgcmVnLCB2YWwpOwogCWludGVsX2RlX3Bvc3Rp
bmdfcmVhZChkZXZfcHJpdiwgcmVnKTsKIAorCWlmICghZW5hYmxlKQorCQlyZXR1cm47CisKIAkv
KiBXaGVuIFBTUiBpcyBlbmFibGVkLCBWU0MgU0RQIGlzIGhhbmRsZWQgYnkgUFNSIHJvdXRpbmUg
Ki8KIAlpZiAoIWNydGNfc3RhdGUtPmhhc19wc3IpCiAJCWludGVsX3dyaXRlX2RwX3NkcChlbmNv
ZGVyLCBjcnRjX3N0YXRlLCBEUF9TRFBfVlNDKTsKLS0gCjIuMzEuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
