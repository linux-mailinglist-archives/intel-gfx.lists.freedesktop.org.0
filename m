Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8678D1144C4
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2019 17:24:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4928E6E988;
	Thu,  5 Dec 2019 16:24:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18CF16E988
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2019 16:24:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Dec 2019 08:24:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,281,1571727600"; d="scan'208";a="201817393"
Received: from aquilante.fi.intel.com (HELO teofilatto.example.org)
 ([10.237.72.158])
 by orsmga007.jf.intel.com with ESMTP; 05 Dec 2019 08:24:42 -0800
From: Andi Shyti <andi.shyti@intel.com>
To: Intel GFX <intel-gfx@lists.freedesktop.org>
Date: Thu,  5 Dec 2019 18:24:28 +0200
Message-Id: <20191205162428.1503-1-andi.shyti@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Replace I915_READ with
 intel_uncore_read
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
Cc: Joonas Lahtinen <joonas.lahtinen@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

R2V0IHJpZCBvZiB0aGUgbGFzdCByZW1haW5pbmcgSTkxNV9SRUFEIGluIGd0LyBhbmQgbWFrZSBn
dC1sYW5kCnRoZSBmaXJzdCBJOTE1X1JFQUQtZnJlZSBoYXBweSBpc2xhbmQuCgpTdWdnZXN0ZWQt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpTaWduZWQtb2ZmLWJ5
OiBBbmRpIFNoeXRpIDxhbmRpLnNoeXRpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyB8IDcgKysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDQg
aW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2VuZ2luZV9jcy5jCmluZGV4IGRmMzM2OWMzZjMzMC4uNGRhNTNhYTNkOGUyIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwpAQCAtMTU1LDYgKzE1NSw3IEBA
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgZW5naW5lX2luZm8gaW50ZWxfZW5naW5lc1tdID0gewogICov
CiB1MzIgaW50ZWxfZW5naW5lX2NvbnRleHRfc2l6ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYsIHU4IGNsYXNzKQogeworCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9ICZk
ZXZfcHJpdi0+dW5jb3JlOwogCXUzMiBjeHRfc2l6ZTsKIAogCUJVSUxEX0JVR19PTihJOTE1X0dU
VF9QQUdFX1NJWkUgIT0gUEFHRV9TSVpFKTsKQEAgLTE3OCwxMSArMTc5LDExIEBAIHUzMiBpbnRl
bF9lbmdpbmVfY29udGV4dF9zaXplKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwg
dTggY2xhc3MpCiAJCQlpZiAoSVNfSEFTV0VMTChkZXZfcHJpdikpCiAJCQkJcmV0dXJuIEhTV19D
WFRfVE9UQUxfU0laRTsKIAotCQkJY3h0X3NpemUgPSBJOTE1X1JFQUQoR0VON19DWFRfU0laRSk7
CisJCQljdHhfc2l6ZSA9IGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgR0VON19DWFRfU0laRSk7
CiAJCQlyZXR1cm4gcm91bmRfdXAoR0VON19DWFRfVE9UQUxfU0laRShjeHRfc2l6ZSkgKiA2NCwK
IAkJCQkJUEFHRV9TSVpFKTsKIAkJY2FzZSA2OgotCQkJY3h0X3NpemUgPSBJOTE1X1JFQUQoQ1hU
X1NJWkUpOworCQkJY3R4X3NpemUgPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIENYVF9TSVpF
KTsKIAkJCXJldHVybiByb3VuZF91cChHRU42X0NYVF9UT1RBTF9TSVpFKGN4dF9zaXplKSAqIDY0
LAogCQkJCQlQQUdFX1NJWkUpOwogCQljYXNlIDU6CkBAIC0xOTcsNyArMTk4LDcgQEAgdTMyIGlu
dGVsX2VuZ2luZV9jb250ZXh0X3NpemUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LCB1OCBjbGFzcykKIAkJCSAqIG1pbmltdW0gYWxsb2NhdGlvbiBhbnl3YXkgc28gaXQgc2hvdWxk
IGFsbCBjb21lCiAJCQkgKiBvdXQgaW4gdGhlIHdhc2guCiAJCQkgKi8KLQkJCWN4dF9zaXplID0g
STkxNV9SRUFEKENYVF9TSVpFKSArIDE7CisJCQljdHhfc2l6ZSA9IGludGVsX3VuY29yZV9yZWFk
KHVuY29yZSwgQ1hUX1NJWkUpICsgMTsKIAkJCURSTV9ERUJVR19EUklWRVIoImdlbiVkIENYVF9T
SVpFID0gJWQgYnl0ZXMgWzB4JTA4eF1cbiIsCiAJCQkJCSBJTlRFTF9HRU4oZGV2X3ByaXYpLAog
CQkJCQkgY3h0X3NpemUgKiA2NCwKLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
