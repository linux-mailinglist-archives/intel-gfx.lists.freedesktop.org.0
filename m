Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 954C82229A3
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 19:21:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F01ED6EC9A;
	Thu, 16 Jul 2020 17:21:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FF746EC99
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 17:21:33 +0000 (UTC)
IronPort-SDR: XdVEJ81uz6NxI0OBwWYRaVsGLaN2fTdnotCI75J8qj91/T4EF5qszD/xaDt5tIQBD936UdZhf4
 H46KTEEbGEQA==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="150832994"
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="150832994"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 10:21:23 -0700
IronPort-SDR: 7U077IaE2DIBw8ItHKgNKjHe31blCYaqehWh7/LHsRaG5cpMTEIrvXBlSFW12rIdTru89PNXcA
 mx/l8zmf/QHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="361102233"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 16 Jul 2020 10:21:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Jul 2020 20:21:20 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jul 2020 20:20:57 +0300
Message-Id: <20200716172106.2656-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
References: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/14] drm/i915: Try to fix the SKL GT3/4 vs.
 GT3e/4e comments
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkJ1
bmNoIG9mIHRoZSBTS0wgU0tVcyBjdXJyZW50bHkgZG9jdW1lbnRlZCBhcyBHVDMvNCBzZWVtIHRv
IGFjdHVhbGx5CmJlIEdUM2UvNGUuIEZpeCB1cCB0aGUgY29tbWVudHMuCgpDYzogQWxleGVpIFBv
ZHRlbGV6aG5pa292IDxhcG9kdGVsZUBnbWFpbC5jb20+ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogaW5jbHVkZS9kcm0v
aTkxNV9wY2lpZHMuaCB8IDEyICsrKysrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0
aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9pOTE1X3Bj
aWlkcy5oIGIvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaAppbmRleCBjOTA2MDg4Y2NmZmUuLjM3
OTJhYjVmMjBmZiAxMDA2NDQKLS0tIGEvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaAorKysgYi9p
bmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oCkBAIC0zNjEsMTkgKzM2MSwxOSBAQAogCiAjZGVmaW5l
IElOVEVMX1NLTF9VTFRfR1QzX0lEUyhpbmZvKSBcCiAJSU5URUxfVkdBX0RFVklDRSgweDE5MjMs
IGluZm8pLCAvKiBVTFQgR1QzICovIFwKLQlJTlRFTF9WR0FfREVWSUNFKDB4MTkyNiwgaW5mbyks
IC8qIFVMVCBHVDMgKi8gXAotCUlOVEVMX1ZHQV9ERVZJQ0UoMHgxOTI3LCBpbmZvKSAgLyogVUxU
IEdUMyAqLworCUlOVEVMX1ZHQV9ERVZJQ0UoMHgxOTI2LCBpbmZvKSwgLyogVUxUIEdUM2UgKi8g
XAorCUlOVEVMX1ZHQV9ERVZJQ0UoMHgxOTI3LCBpbmZvKSAgLyogVUxUIEdUM2UgKi8KIAogI2Rl
ZmluZSBJTlRFTF9TS0xfR1QzX0lEUyhpbmZvKSBcCiAJSU5URUxfU0tMX1VMVF9HVDNfSURTKGlu
Zm8pLCBcCiAJSU5URUxfVkdBX0RFVklDRSgweDE5MkEsIGluZm8pLCAvKiBTUlYgR1QzICovIFwK
LQlJTlRFTF9WR0FfREVWSUNFKDB4MTkyQiwgaW5mbyksIC8qIEhhbG8gR1QzICovIFwKLQlJTlRF
TF9WR0FfREVWSUNFKDB4MTkyRCwgaW5mbykgIC8qIFNSViBHVDMgKi8KKwlJTlRFTF9WR0FfREVW
SUNFKDB4MTkyQiwgaW5mbyksIC8qIEhhbG8gR1QzZSAqLyBcCisJSU5URUxfVkdBX0RFVklDRSgw
eDE5MkQsIGluZm8pICAvKiBTUlYgR1QzZSAqLwogCiAjZGVmaW5lIElOVEVMX1NLTF9HVDRfSURT
KGluZm8pIFwKIAlJTlRFTF9WR0FfREVWSUNFKDB4MTkzMiwgaW5mbyksIC8qIERUIEdUNCAqLyBc
Ci0JSU5URUxfVkdBX0RFVklDRSgweDE5M0IsIGluZm8pLCAvKiBIYWxvIEdUNCAqLyBcCi0JSU5U
RUxfVkdBX0RFVklDRSgweDE5M0QsIGluZm8pLCAvKiBXS1MgR1Q0ICovIFwKKwlJTlRFTF9WR0Ff
REVWSUNFKDB4MTkzQiwgaW5mbyksIC8qIEhhbG8gR1Q0ZSAqLyBcCisJSU5URUxfVkdBX0RFVklD
RSgweDE5M0QsIGluZm8pLCAvKiBXS1MgR1Q0ZSAqLyBcCiAJSU5URUxfVkdBX0RFVklDRSgweDE5
M0EsIGluZm8pICAvKiBTUlYgR1Q0ZSAqLwogCiAjZGVmaW5lIElOVEVMX1NLTF9JRFMoaW5mbykJ
IFwKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
