Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FAA716EC2D
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 18:11:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4CDD6EB48;
	Tue, 25 Feb 2020 17:11:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 733536EB48
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2020 17:11:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Feb 2020 09:11:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,484,1574150400"; d="scan'208";a="284724856"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 25 Feb 2020 09:11:35 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 25 Feb 2020 19:11:34 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Feb 2020 19:11:08 +0200
Message-Id: <20200225171125.28885-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200225171125.28885-1-ville.syrjala@linux.intel.com>
References: <20200225171125.28885-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 03/20] drm/i915: Add missing commas to dbuf
 tables
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBwcmVmZXJyZWQgc3R5bGUgaXMgdG8gc3ByaW5rbGUgY29tbWFzIGFmdGVyIGVhY2ggYXJyYXkg
YW5kCnN0cnVjdHVyZSBpbml0aWFsaXphdGlvbiwgd2hldGhlciBvciBub3QgaXQgaGFwcGVucyB0
byBiZSB0aGUKbGFzdCBlbGVtZW50L21lbWJlciAob25seSBleGNlcHRpb24gYmVpbmcgc2VudGlu
ZWwgZW50cmllcyB3aGljaApuZXZlciBoYXZlIGFueXRoaW5nIGFmdGVyIHRoZW0pLiBUaGlzIGxl
YWRzIHRvIG11Y2ggcHJldHRpZXIKZGlmZnMgaWYvd2hlbiBuZXcgZWxlbWVudHMvbWVtYmVycyBn
ZXQgYWRkZWQgdG8gdGhlIGVuZCBvZiB0aGUKaW5pdGlhbGl6YXRpb24uIFdlJ3JlIG5vdCBib3Vu
ZCBieSBzb21lIGFuY2llbnQgc2lsbHkgbWFuZGF0ZQp0byBvbWl0IHRoZSBmaW5hbCBjb21tYS4K
CkNjOiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4K
U2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIHwgODggKysrKysrKysr
KysrKysrKy0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNDQgaW5zZXJ0aW9ucygr
KSwgNDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKaW5kZXggNTlmYzQ2MWJj
NDU0Li5hYmViNGIxOTA3MWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwpAQCAtNDE4NCw0OSAr
NDE4NCw0OSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRidWZfc2xpY2VfY29uZl9lbnRyeSBpY2xf
YWxsb3dlZF9kYnVmc1tdID0KIAl7CiAJCS5hY3RpdmVfcGlwZXMgPSBCSVQoUElQRV9BKSwKIAkJ
LmRidWZfbWFzayA9IHsKLQkJCVtQSVBFX0FdID0gQklUKERCVUZfUzEpCi0JCX0KKwkJCVtQSVBF
X0FdID0gQklUKERCVUZfUzEpLAorCQl9LAogCX0sCiAJewogCQkuYWN0aXZlX3BpcGVzID0gQklU
KFBJUEVfQiksCiAJCS5kYnVmX21hc2sgPSB7Ci0JCQlbUElQRV9CXSA9IEJJVChEQlVGX1MxKQot
CQl9CisJCQlbUElQRV9CXSA9IEJJVChEQlVGX1MxKSwKKwkJfSwKIAl9LAogCXsKIAkJLmFjdGl2
ZV9waXBlcyA9IEJJVChQSVBFX0EpIHwgQklUKFBJUEVfQiksCiAJCS5kYnVmX21hc2sgPSB7CiAJ
CQlbUElQRV9BXSA9IEJJVChEQlVGX1MxKSwKLQkJCVtQSVBFX0JdID0gQklUKERCVUZfUzIpCi0J
CX0KKwkJCVtQSVBFX0JdID0gQklUKERCVUZfUzIpLAorCQl9LAogCX0sCiAJewogCQkuYWN0aXZl
X3BpcGVzID0gQklUKFBJUEVfQyksCiAJCS5kYnVmX21hc2sgPSB7Ci0JCQlbUElQRV9DXSA9IEJJ
VChEQlVGX1MyKQotCQl9CisJCQlbUElQRV9DXSA9IEJJVChEQlVGX1MyKSwKKwkJfSwKIAl9LAog
CXsKIAkJLmFjdGl2ZV9waXBlcyA9IEJJVChQSVBFX0EpIHwgQklUKFBJUEVfQyksCiAJCS5kYnVm
X21hc2sgPSB7CiAJCQlbUElQRV9BXSA9IEJJVChEQlVGX1MxKSwKLQkJCVtQSVBFX0NdID0gQklU
KERCVUZfUzIpCi0JCX0KKwkJCVtQSVBFX0NdID0gQklUKERCVUZfUzIpLAorCQl9LAogCX0sCiAJ
ewogCQkuYWN0aXZlX3BpcGVzID0gQklUKFBJUEVfQikgfCBCSVQoUElQRV9DKSwKIAkJLmRidWZf
bWFzayA9IHsKIAkJCVtQSVBFX0JdID0gQklUKERCVUZfUzEpLAotCQkJW1BJUEVfQ10gPSBCSVQo
REJVRl9TMikKLQkJfQorCQkJW1BJUEVfQ10gPSBCSVQoREJVRl9TMiksCisJCX0sCiAJfSwKIAl7
CiAJCS5hY3RpdmVfcGlwZXMgPSBCSVQoUElQRV9BKSB8IEJJVChQSVBFX0IpIHwgQklUKFBJUEVf
QyksCiAJCS5kYnVmX21hc2sgPSB7CiAJCQlbUElQRV9BXSA9IEJJVChEQlVGX1MxKSwKIAkJCVtQ
SVBFX0JdID0gQklUKERCVUZfUzEpLAotCQkJW1BJUEVfQ10gPSBCSVQoREJVRl9TMikKLQkJfQor
CQkJW1BJUEVfQ10gPSBCSVQoREJVRl9TMiksCisJCX0sCiAJfSwKIH07CiAKQEAgLTQyNDYsMTAw
ICs0MjQ2LDEwMCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRidWZfc2xpY2VfY29uZl9lbnRyeSB0
Z2xfYWxsb3dlZF9kYnVmc1tdID0KIAl7CiAJCS5hY3RpdmVfcGlwZXMgPSBCSVQoUElQRV9BKSwK
IAkJLmRidWZfbWFzayA9IHsKLQkJCVtQSVBFX0FdID0gQklUKERCVUZfUzEpIHwgQklUKERCVUZf
UzIpCi0JCX0KKwkJCVtQSVBFX0FdID0gQklUKERCVUZfUzEpIHwgQklUKERCVUZfUzIpLAorCQl9
LAogCX0sCiAJewogCQkuYWN0aXZlX3BpcGVzID0gQklUKFBJUEVfQiksCiAJCS5kYnVmX21hc2sg
PSB7Ci0JCQlbUElQRV9CXSA9IEJJVChEQlVGX1MxKSB8IEJJVChEQlVGX1MyKQotCQl9CisJCQlb
UElQRV9CXSA9IEJJVChEQlVGX1MxKSB8IEJJVChEQlVGX1MyKSwKKwkJfSwKIAl9LAogCXsKIAkJ
LmFjdGl2ZV9waXBlcyA9IEJJVChQSVBFX0EpIHwgQklUKFBJUEVfQiksCiAJCS5kYnVmX21hc2sg
PSB7CiAJCQlbUElQRV9BXSA9IEJJVChEQlVGX1MyKSwKLQkJCVtQSVBFX0JdID0gQklUKERCVUZf
UzEpCi0JCX0KKwkJCVtQSVBFX0JdID0gQklUKERCVUZfUzEpLAorCQl9LAogCX0sCiAJewogCQku
YWN0aXZlX3BpcGVzID0gQklUKFBJUEVfQyksCiAJCS5kYnVmX21hc2sgPSB7Ci0JCQlbUElQRV9D
XSA9IEJJVChEQlVGX1MyKSB8IEJJVChEQlVGX1MxKQotCQl9CisJCQlbUElQRV9DXSA9IEJJVChE
QlVGX1MyKSB8IEJJVChEQlVGX1MxKSwKKwkJfSwKIAl9LAogCXsKIAkJLmFjdGl2ZV9waXBlcyA9
IEJJVChQSVBFX0EpIHwgQklUKFBJUEVfQyksCiAJCS5kYnVmX21hc2sgPSB7CiAJCQlbUElQRV9B
XSA9IEJJVChEQlVGX1MxKSwKLQkJCVtQSVBFX0NdID0gQklUKERCVUZfUzIpCi0JCX0KKwkJCVtQ
SVBFX0NdID0gQklUKERCVUZfUzIpLAorCQl9LAogCX0sCiAJewogCQkuYWN0aXZlX3BpcGVzID0g
QklUKFBJUEVfQikgfCBCSVQoUElQRV9DKSwKIAkJLmRidWZfbWFzayA9IHsKIAkJCVtQSVBFX0Jd
ID0gQklUKERCVUZfUzEpLAotCQkJW1BJUEVfQ10gPSBCSVQoREJVRl9TMikKLQkJfQorCQkJW1BJ
UEVfQ10gPSBCSVQoREJVRl9TMiksCisJCX0sCiAJfSwKIAl7CiAJCS5hY3RpdmVfcGlwZXMgPSBC
SVQoUElQRV9BKSB8IEJJVChQSVBFX0IpIHwgQklUKFBJUEVfQyksCiAJCS5kYnVmX21hc2sgPSB7
CiAJCQlbUElQRV9BXSA9IEJJVChEQlVGX1MxKSwKIAkJCVtQSVBFX0JdID0gQklUKERCVUZfUzEp
LAotCQkJW1BJUEVfQ10gPSBCSVQoREJVRl9TMikKLQkJfQorCQkJW1BJUEVfQ10gPSBCSVQoREJV
Rl9TMiksCisJCX0sCiAJfSwKIAl7CiAJCS5hY3RpdmVfcGlwZXMgPSBCSVQoUElQRV9EKSwKIAkJ
LmRidWZfbWFzayA9IHsKLQkJCVtQSVBFX0RdID0gQklUKERCVUZfUzIpIHwgQklUKERCVUZfUzEp
Ci0JCX0KKwkJCVtQSVBFX0RdID0gQklUKERCVUZfUzIpIHwgQklUKERCVUZfUzEpLAorCQl9LAog
CX0sCiAJewogCQkuYWN0aXZlX3BpcGVzID0gQklUKFBJUEVfQSkgfCBCSVQoUElQRV9EKSwKIAkJ
LmRidWZfbWFzayA9IHsKIAkJCVtQSVBFX0FdID0gQklUKERCVUZfUzEpLAotCQkJW1BJUEVfRF0g
PSBCSVQoREJVRl9TMikKLQkJfQorCQkJW1BJUEVfRF0gPSBCSVQoREJVRl9TMiksCisJCX0sCiAJ
fSwKIAl7CiAJCS5hY3RpdmVfcGlwZXMgPSBCSVQoUElQRV9CKSB8IEJJVChQSVBFX0QpLAogCQku
ZGJ1Zl9tYXNrID0gewogCQkJW1BJUEVfQl0gPSBCSVQoREJVRl9TMSksCi0JCQlbUElQRV9EXSA9
IEJJVChEQlVGX1MyKQotCQl9CisJCQlbUElQRV9EXSA9IEJJVChEQlVGX1MyKSwKKwkJfSwKIAl9
LAogCXsKIAkJLmFjdGl2ZV9waXBlcyA9IEJJVChQSVBFX0EpIHwgQklUKFBJUEVfQikgfCBCSVQo
UElQRV9EKSwKIAkJLmRidWZfbWFzayA9IHsKIAkJCVtQSVBFX0FdID0gQklUKERCVUZfUzEpLAog
CQkJW1BJUEVfQl0gPSBCSVQoREJVRl9TMSksCi0JCQlbUElQRV9EXSA9IEJJVChEQlVGX1MyKQot
CQl9CisJCQlbUElQRV9EXSA9IEJJVChEQlVGX1MyKSwKKwkJfSwKIAl9LAogCXsKIAkJLmFjdGl2
ZV9waXBlcyA9IEJJVChQSVBFX0MpIHwgQklUKFBJUEVfRCksCiAJCS5kYnVmX21hc2sgPSB7CiAJ
CQlbUElQRV9DXSA9IEJJVChEQlVGX1MxKSwKLQkJCVtQSVBFX0RdID0gQklUKERCVUZfUzIpCi0J
CX0KKwkJCVtQSVBFX0RdID0gQklUKERCVUZfUzIpLAorCQl9LAogCX0sCiAJewogCQkuYWN0aXZl
X3BpcGVzID0gQklUKFBJUEVfQSkgfCBCSVQoUElQRV9DKSB8IEJJVChQSVBFX0QpLAogCQkuZGJ1
Zl9tYXNrID0gewogCQkJW1BJUEVfQV0gPSBCSVQoREJVRl9TMSksCiAJCQlbUElQRV9DXSA9IEJJ
VChEQlVGX1MyKSwKLQkJCVtQSVBFX0RdID0gQklUKERCVUZfUzIpCi0JCX0KKwkJCVtQSVBFX0Rd
ID0gQklUKERCVUZfUzIpLAorCQl9LAogCX0sCiAJewogCQkuYWN0aXZlX3BpcGVzID0gQklUKFBJ
UEVfQikgfCBCSVQoUElQRV9DKSB8IEJJVChQSVBFX0QpLAogCQkuZGJ1Zl9tYXNrID0gewogCQkJ
W1BJUEVfQl0gPSBCSVQoREJVRl9TMSksCiAJCQlbUElQRV9DXSA9IEJJVChEQlVGX1MyKSwKLQkJ
CVtQSVBFX0RdID0gQklUKERCVUZfUzIpCi0JCX0KKwkJCVtQSVBFX0RdID0gQklUKERCVUZfUzIp
LAorCQl9LAogCX0sCiAJewogCQkuYWN0aXZlX3BpcGVzID0gQklUKFBJUEVfQSkgfCBCSVQoUElQ
RV9CKSB8IEJJVChQSVBFX0MpIHwgQklUKFBJUEVfRCksCkBAIC00MzQ3LDggKzQzNDcsOCBAQCBz
dGF0aWMgY29uc3Qgc3RydWN0IGRidWZfc2xpY2VfY29uZl9lbnRyeSB0Z2xfYWxsb3dlZF9kYnVm
c1tdID0KIAkJCVtQSVBFX0FdID0gQklUKERCVUZfUzEpLAogCQkJW1BJUEVfQl0gPSBCSVQoREJV
Rl9TMSksCiAJCQlbUElQRV9DXSA9IEJJVChEQlVGX1MyKSwKLQkJCVtQSVBFX0RdID0gQklUKERC
VUZfUzIpCi0JCX0KKwkJCVtQSVBFX0RdID0gQklUKERCVUZfUzIpLAorCQl9LAogCX0sCiB9Owog
Ci0tIAoyLjI0LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
