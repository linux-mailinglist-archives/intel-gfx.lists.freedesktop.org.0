Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C9C2222997
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 19:21:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6F2C6EC95;
	Thu, 16 Jul 2020 17:21:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FF416EC96
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 17:21:20 +0000 (UTC)
IronPort-SDR: gXh3a+i1FqQX2IPh7ovsUBABI+HhrAXyty+Ln17RlO5NAFMFICTsEHeFC1urmT/mIsY7XTz8lh
 60Bhvl5AFJfA==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="234303965"
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="234303965"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 10:21:20 -0700
IronPort-SDR: 5G5ib+tiu4zS0wNVaNIdnD6KevvpS5Ct66MWFYFP+xp72pJwdOLaLkQ7uytudxyEl5GsAmB1Jh
 A23lGiu7WkQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="318496903"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 16 Jul 2020 10:21:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Jul 2020 20:21:17 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jul 2020 20:20:56 +0300
Message-Id: <20200716172106.2656-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
References: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/14] drm/i915: Add SKL GT1.5 PCI IDs
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

RnJvbTogQWxleGVpIFBvZHRlbGV6aG5pa292IDxhcG9kdGVsZUBnbWFpbC5jb20+CgpBZGQgdGhy
ZWUgbmV3IGRldmljZXMgMHgxOTEzLCAweDE5MTUsIGFuZCAweDE5MTcgYWxzbyBrbm93biBhcwpp
U0tMVUxUR1QxNSwgaVNLTFVMWEdUMTUsIGFuZCBpU0tMRFRHVDE1LgoKU2lnbmVkLW9mZi1ieTog
QWxleGVpIFBvZHRlbGV6aG5pa292IDxhcG9kdGVsZUBnbWFpbC5jb20+Clt2c3lyamFsYTogU3Bs
aXQgc2VwYXJhdGUgY2hhbmdlcyBpbnRvIHNlcGFyYXRlIHBhdGNocywKICAgICAgICAgICBTb3J0
IHRoZSBJRHNdClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Ci0tLQogaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaCB8IDkgKysrKysr
LS0tCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmggYi9pbmNsdWRlL2RybS9pOTE1X3Bj
aWlkcy5oCmluZGV4IDlkZjM2OTdmMDc0ZC4uYzkwNjA4OGNjZmZlIDEwMDY0NAotLS0gYS9pbmNs
dWRlL2RybS9pOTE1X3BjaWlkcy5oCisrKyBiL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmgKQEAg
LTMyOSwxNyArMzI5LDIwIEBACiAJSU5URUxfVkdBX0RFVklDRSgweDIyYjMsIGluZm8pCiAKICNk
ZWZpbmUgSU5URUxfU0tMX1VMVF9HVDFfSURTKGluZm8pIFwKLQlJTlRFTF9WR0FfREVWSUNFKDB4
MTkwNiwgaW5mbykgLyogVUxUIEdUMSAqLworCUlOVEVMX1ZHQV9ERVZJQ0UoMHgxOTA2LCBpbmZv
KSwgLyogVUxUIEdUMSAqLyBcCisJSU5URUxfVkdBX0RFVklDRSgweDE5MTMsIGluZm8pICAvKiBV
TFQgR1QxLjUgKi8KIAogI2RlZmluZSBJTlRFTF9TS0xfVUxYX0dUMV9JRFMoaW5mbykgXAotCUlO
VEVMX1ZHQV9ERVZJQ0UoMHgxOTBFLCBpbmZvKSAvKiBVTFggR1QxICovCisJSU5URUxfVkdBX0RF
VklDRSgweDE5MEUsIGluZm8pLCAvKiBVTFggR1QxICovIFwKKwlJTlRFTF9WR0FfREVWSUNFKDB4
MTkxNSwgaW5mbykgIC8qIFVMWCBHVDEuNSAqLwogCiAjZGVmaW5lIElOVEVMX1NLTF9HVDFfSURT
KGluZm8pCVwKIAlJTlRFTF9TS0xfVUxUX0dUMV9JRFMoaW5mbyksIFwKIAlJTlRFTF9TS0xfVUxY
X0dUMV9JRFMoaW5mbyksIFwKIAlJTlRFTF9WR0FfREVWSUNFKDB4MTkwMiwgaW5mbyksIC8qIERU
ICBHVDEgKi8gXAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHgxOTBCLCBpbmZvKSwgLyogSGFsbyBHVDEg
Ki8gXAotCUlOVEVMX1ZHQV9ERVZJQ0UoMHgxOTBBLCBpbmZvKSAvKiBTUlYgR1QxICovCisJSU5U
RUxfVkdBX0RFVklDRSgweDE5MEEsIGluZm8pLCAvKiBTUlYgR1QxICovIFwKKwlJTlRFTF9WR0Ff
REVWSUNFKDB4MTkxNywgaW5mbykgIC8qIERUICBHVDEuNSAqLwogCiAjZGVmaW5lIElOVEVMX1NL
TF9VTFRfR1QyX0lEUyhpbmZvKSBcCiAJSU5URUxfVkdBX0RFVklDRSgweDE5MTYsIGluZm8pLCAv
KiBVTFQgR1QyICovIFwKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
