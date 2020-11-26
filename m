Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92D5A2C5CFE
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 21:30:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B93406EABD;
	Thu, 26 Nov 2020 20:30:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C26B6EABE
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Nov 2020 20:29:57 +0000 (UTC)
IronPort-SDR: t0vHioZaH6RLo94ORp0jnzud4RhN5R7X+wJUiUxxFT7S1YJowfMFWUQnmXDaiO0KHNwLs1dgdO
 kDFA8+VrVEAA==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="171543147"
X-IronPort-AV: E=Sophos;i="5.78,373,1599548400"; d="scan'208";a="171543147"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2020 12:29:57 -0800
IronPort-SDR: B/g4GmCR+aOr2M4PV8dHbzlEUt99v3olb3oVV2e8WVaJvwJ4oRaI63kb9MUWyGbgXiw5MDgU6p
 Enee8VFpOZnA==
X-IronPort-AV: E=Sophos;i="5.78,373,1599548400"; d="scan'208";a="479459532"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2020 12:29:55 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Nov 2020 02:33:08 +0530
Message-Id: <20201126210314.7882-10-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201126210314.7882-1-uma.shankar@intel.com>
References: <20201126210314.7882-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v12 09/15] drm/i915/display: Nuke bogus lspcon check
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
