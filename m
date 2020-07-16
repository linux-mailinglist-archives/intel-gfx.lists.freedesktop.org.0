Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F20221E40
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 10:24:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0894A6E116;
	Thu, 16 Jul 2020 08:24:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6EEE6E116
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 08:24:23 +0000 (UTC)
IronPort-SDR: x89M+wb0+c5c4CVRM/hai/BFfCJ1YMmmzBOHDS/fPRldwR7zWhysFL7HWruPDTYJC6yrLVe122
 WmEE6Qg9vyCQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9683"; a="146851773"
X-IronPort-AV: E=Sophos;i="5.75,358,1589266800"; d="scan'208";a="146851773"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 01:24:23 -0700
IronPort-SDR: 0hZ4iu+b5WUx2qPvSkOpd2TteDRSNqt3v9dx33rRmkjmQ8msAtxW+29ba5JvPKoluspiGjNect
 3J53ZvXsxBHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,358,1589266800"; d="scan'208";a="326451205"
Received: from unknown (HELO linuxpresi1-desktop.iind.intel.com)
 ([10.223.74.152])
 by orsmga007.jf.intel.com with ESMTP; 16 Jul 2020 01:24:21 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jul 2020 14:25:40 +0530
Message-Id: <20200716085540.2211-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display/fbc: Disable fbc by default on
 TGL
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

RmJjIGlzIGNhdXNpbmcgcmFuZG9tIHVuZGVycnVucyBpbiBDSSBleGVjdXRpb24gb24gVEdMIHBs
YXRmb3Jtcy4KRGlzYWJsaW5nIHRoZSBzYW1lIHdoaWxlIHRoZSBwcm9ibGVtIGlzIGJlaW5nIGRl
YnVnZ2VkIGFuZCBhbmFseXplZC4KCkNjOiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYu
bGlzb3Zza2l5QGludGVsLmNvbT4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyB8
IDcgKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCmluZGV4IDNhNGY5ODA3ODhhNi4uMWQ2MzcwYjI5
YjI3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKQEAgLTE0MjAs
NiArMTQyMCwxMyBAQCB2b2lkIGludGVsX2ZiY19oYW5kbGVfZmlmb191bmRlcnJ1bl9pcnEoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogICovCiBzdGF0aWMgaW50IGludGVsX3Nh
bml0aXplX2ZiY19vcHRpb24oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewor
CS8qCisJICogRmJjIGlzIGNhdXNpbmcgcmFuZG9tIHVuZGVycnVucyBpbiBDSSBleGVjdXRpb24g
b24gVEdMIHBsYXRmb3Jtcy4KKwkgKiBEaXNhYmxpbmcgdGhlIHNhbWUgd2hpbGUgdGhlIHByb2Js
ZW0gaXMgYmVpbmcgZGVidWdnZWQgYW5kIGFuYWx5emVkLgorCSAqLworCWlmIChJU19USUdFUkxB
S0UoZGV2X3ByaXYpKQorCQlyZXR1cm4gMDsKKwogCWlmIChkZXZfcHJpdi0+cGFyYW1zLmVuYWJs
ZV9mYmMgPj0gMCkKIAkJcmV0dXJuICEhZGV2X3ByaXYtPnBhcmFtcy5lbmFibGVfZmJjOwogCi0t
IAoyLjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
