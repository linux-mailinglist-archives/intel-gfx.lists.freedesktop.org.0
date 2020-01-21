Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B508D1442D4
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 18:11:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6B016EDD0;
	Tue, 21 Jan 2020 17:11:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE18A6EDCF
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2020 17:11:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 09:11:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,346,1574150400"; d="scan'208";a="307259226"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 21 Jan 2020 09:11:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 21 Jan 2020 19:11:18 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Jan 2020 19:10:55 +0200
Message-Id: <20200121171100.4370-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200121171100.4370-1-ville.syrjala@linux.intel.com>
References: <20200121171100.4370-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/11] drm/i915: Mark ns2501 as LVDS without a
 fixed mode
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCm5z
MjUwMSBoYXMgYSBidWlsdGluIHNjYWxlciBzbyBpdCBkb2Vzbid0IG5lZWQgYSBmaXhlZCBtb2Rl
LCBidXQKbGV0J3Mgc3RpbGwgbWFyayBpdCBhcyBMVkRTIGluc3RlYWQgb2YgVE1EUy9EVkkgdG8g
bWFrZSBsaWZlIGxlc3MKY29uZnVzaW5nLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2R2by5jIHwgMTMgKysrKysrKystLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDggaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2R2by5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kdm8uYwppbmRleCA4NmEzMzdjOWQ4NWQuLjBkNDcxOWRhZWM4ZSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kdm8uYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2R2by5jCkBAIC00NCw2ICs0NCw3IEBACiAj
ZGVmaW5lIElOVEVMX0RWT19DSElQX0xWRFMJMQogI2RlZmluZSBJTlRFTF9EVk9fQ0hJUF9UTURT
CTIKICNkZWZpbmUgSU5URUxfRFZPX0NISVBfVFZPVVQJNAorI2RlZmluZSBJTlRFTF9EVk9fQ0hJ
UF9MVkRTX05PX0ZJWEVECTUKIAogI2RlZmluZSBTSUwxNjRfQUREUgkweDM4CiAjZGVmaW5lIENI
N3h4eF9BRERSCTB4NzYKQEAgLTEwMSwxMyArMTAyLDEzIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
aW50ZWxfZHZvX2RldmljZSBpbnRlbF9kdm9fZGV2aWNlc1tdID0gewogCQkuZGV2X29wcyA9ICZj
aDcwMTdfb3BzLAogCX0sCiAJewotCSAgICAgICAgLnR5cGUgPSBJTlRFTF9EVk9fQ0hJUF9UTURT
LAorCQkudHlwZSA9IElOVEVMX0RWT19DSElQX0xWRFNfTk9fRklYRUQsCiAJCS5uYW1lID0gIm5z
MjUwMSIsCiAJCS5kdm9fcmVnID0gRFZPQiwKIAkJLmR2b19zcmNkaW1fcmVnID0gRFZPQl9TUkNE
SU0sCiAJCS5zbGF2ZV9hZGRyID0gTlMyNTAxX0FERFIsCiAJCS5kZXZfb3BzID0gJm5zMjUwMV9v
cHMsCi0gICAgICAgfQorCX0sCiB9OwogCiBzdHJ1Y3QgaW50ZWxfZHZvIHsKQEAgLTUwNywxNyAr
NTA4LDE5IEBAIHZvaWQgaW50ZWxfZHZvX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2KQogCQlpbnRlbF9lbmNvZGVyLT5wb3J0ID0gcG9ydDsKIAkJaW50ZWxfZW5jb2Rlci0+
cGlwZV9tYXNrID0gfjA7CiAKLQkJc3dpdGNoIChkdm8tPnR5cGUpIHsKLQkJY2FzZSBJTlRFTF9E
Vk9fQ0hJUF9UTURTOgorCQlpZiAoZHZvLT50eXBlICE9IElOVEVMX0RWT19DSElQX0xWRFMpCiAJ
CQlpbnRlbF9lbmNvZGVyLT5jbG9uZWFibGUgPSAoMSA8PCBJTlRFTF9PVVRQVVRfQU5BTE9HKSB8
CiAJCQkJKDEgPDwgSU5URUxfT1VUUFVUX0RWTyk7CisKKwkJc3dpdGNoIChkdm8tPnR5cGUpIHsK
KwkJY2FzZSBJTlRFTF9EVk9fQ0hJUF9UTURTOgogCQkJZHJtX2Nvbm5lY3Rvcl9pbml0KCZkZXZf
cHJpdi0+ZHJtLCBjb25uZWN0b3IsCiAJCQkJCSAgICZpbnRlbF9kdm9fY29ubmVjdG9yX2Z1bmNz
LAogCQkJCQkgICBEUk1fTU9ERV9DT05ORUNUT1JfRFZJSSk7CiAJCQllbmNvZGVyX3R5cGUgPSBE
Uk1fTU9ERV9FTkNPREVSX1RNRFM7CiAJCQlicmVhazsKKwkJY2FzZSBJTlRFTF9EVk9fQ0hJUF9M
VkRTX05PX0ZJWEVEOgogCQljYXNlIElOVEVMX0RWT19DSElQX0xWRFM6Ci0JCQlpbnRlbF9lbmNv
ZGVyLT5jbG9uZWFibGUgPSAwOwogCQkJZHJtX2Nvbm5lY3Rvcl9pbml0KCZkZXZfcHJpdi0+ZHJt
LCBjb25uZWN0b3IsCiAJCQkJCSAgICZpbnRlbF9kdm9fY29ubmVjdG9yX2Z1bmNzLAogCQkJCQkg
ICBEUk1fTU9ERV9DT05ORUNUT1JfTFZEUyk7Ci0tIAoyLjI0LjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
