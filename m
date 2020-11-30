Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72AB22C8ED2
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 21:14:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2A556E834;
	Mon, 30 Nov 2020 20:14:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A50D6E834
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 20:14:26 +0000 (UTC)
IronPort-SDR: YwQusBWveL389Z3Nz86ZfUOXE8Y0yLeMMtoB98oYa/78K/DhUc8CAd9VHPvfY153XyBXvG1csD
 Xxx8uh/LXm1Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="190892959"
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="190892959"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 12:14:17 -0800
IronPort-SDR: Lqu50GvqOCBAOZvWFpS7z19/puk72/9Z7S+Bo/5OlurmU1qB5e0//34aEYITUUbkcua5D8X4Xj
 W3dwtV9Xtrug==
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="372472344"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 12:14:16 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Dec 2020 02:17:32 +0530
Message-Id: <20201130204738.2443-10-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201130204738.2443-1-uma.shankar@intel.com>
References: <20201130204738.2443-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v14 09/15] drm/i915/display: Nuke bogus lspcon check
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

RHJvcHBlZCBhIGlycmVsZXZhbnQgbHNwY29uIGNoZWNrIGZyb20gaW50ZWxfaGRtaV9hZGRfcHJv
cGVydGllcwpmdW5jdGlvbi4KClN1Z2dlc3RlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogVW1hIFNoYW5rYXIgPHVtYS5z
aGFua2FyQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9oZG1pLmMgfCAxMSArLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspLCAxMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2hkbWkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
aGRtaS5jCmluZGV4IDBkY2Y2Y2Q1YTI1My4uODhjMTUzNDA3YTdkIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYwpAQCAtMjk1MCwyMSArMjk1MCwxMiBAQCBzdGF0
aWMgdm9pZAogaW50ZWxfaGRtaV9hZGRfcHJvcGVydGllcyhzdHJ1Y3QgaW50ZWxfaGRtaSAqaW50
ZWxfaGRtaSwgc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvcikKIHsKIAlzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNvbm5lY3Rvci0+ZGV2KTsKLQlzdHJ1
Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCA9Ci0JCQkJaGRtaV90b19kaWdfcG9ydChp
bnRlbF9oZG1pKTsKIAogCWludGVsX2F0dGFjaF9mb3JjZV9hdWRpb19wcm9wZXJ0eShjb25uZWN0
b3IpOwogCWludGVsX2F0dGFjaF9icm9hZGNhc3RfcmdiX3Byb3BlcnR5KGNvbm5lY3Rvcik7CiAJ
aW50ZWxfYXR0YWNoX2FzcGVjdF9yYXRpb19wcm9wZXJ0eShjb25uZWN0b3IpOwogCi0JLyoKLQkg
KiBBdHRhY2ggQ29sb3JzcGFjZSBwcm9wZXJ0eSBmb3IgTm9uIExTUENPTiBiYXNlZCBkZXZpY2UK
LQkgKiBUb0RvOiBUaGlzIG5lZWRzIHRvIGJlIGV4dGVuZGVkIGZvciBMU1BDT04gaW1wbGVtZW50
YXRpb24KLQkgKiBhcyB3ZWxsLiBXaWxsIGJlIGltcGxlbWVudGVkIHNlcGFyYXRlbHkuCi0JICov
Ci0JaWYgKCFkaWdfcG9ydC0+bHNwY29uLmFjdGl2ZSkKLQkJaW50ZWxfYXR0YWNoX2hkbWlfY29s
b3JzcGFjZV9wcm9wZXJ0eShjb25uZWN0b3IpOwotCisJaW50ZWxfYXR0YWNoX2hkbWlfY29sb3Jz
cGFjZV9wcm9wZXJ0eShjb25uZWN0b3IpOwogCWRybV9jb25uZWN0b3JfYXR0YWNoX2NvbnRlbnRf
dHlwZV9wcm9wZXJ0eShjb25uZWN0b3IpOwogCiAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0g
MTAgfHwgSVNfR0VNSU5JTEFLRShkZXZfcHJpdikpCi0tIAoyLjI2LjIKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
