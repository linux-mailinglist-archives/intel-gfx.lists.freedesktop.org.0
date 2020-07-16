Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 365852229AA
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 19:21:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CDF36EC9B;
	Thu, 16 Jul 2020 17:21:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87A7C6EC99
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 17:21:41 +0000 (UTC)
IronPort-SDR: SnYYME0mx4fRD9dgfou6Kx4oOEAZAap6+v6P8YYggWOzBwuuiSZHZWzDUeIqNzxFAC0Mahqi90
 W6uT2nrVaWnQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="137572001"
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="137572001"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 10:21:41 -0700
IronPort-SDR: 50q7A41YRC4maeb3LKXiO+bP2kF+OmqEpA8dZBUgcLLyL2kXdwlc4oXlFhCWT3cyCwkNLN4sC9
 vbdH48Ez58xQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="326588174"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 16 Jul 2020 10:21:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Jul 2020 20:21:38 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jul 2020 20:21:03 +0300
Message-Id: <20200716172106.2656-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
References: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/14] drm/i915: Sort CFL PCI IDs
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClNv
cnQgdGhlIENGTCBQQ0kgSURzIG51bWVyaWNhbGx5LiBTb21lIG9yZGVyIHNlZW1zIGJldHRlciB0
aGFuCnJhbmRvbW5lc3MuCgpDYzogQWxleGVpIFBvZHRlbGV6aG5pa292IDxhcG9kdGVsZUBnbWFp
bC5jb20+ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+Ci0tLQogaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaCB8IDQgKystLQogMSBm
aWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oIGIvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaApp
bmRleCAyZDM2Y2JjZTBhYzAuLmM0OGMyYjc2YWE3ZCAxMDA2NDQKLS0tIGEvaW5jbHVkZS9kcm0v
aTkxNV9wY2lpZHMuaAorKysgYi9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oCkBAIC00OTcsOCAr
NDk3LDggQEAKIAlJTlRFTF9WR0FfREVWSUNFKDB4M0U5QywgaW5mbykKIAogI2RlZmluZSBJTlRF
TF9DRkxfSF9HVDJfSURTKGluZm8pIFwKLQlJTlRFTF9WR0FfREVWSUNFKDB4M0U5QiwgaW5mbyks
IC8qIEhhbG8gR1QyICovIFwKLQlJTlRFTF9WR0FfREVWSUNFKDB4M0U5NCwgaW5mbykgIC8qIEhh
bG8gR1QyICovCisJSU5URUxfVkdBX0RFVklDRSgweDNFOTQsIGluZm8pLCAgLyogSGFsbyBHVDIg
Ki8gXAorCUlOVEVMX1ZHQV9ERVZJQ0UoMHgzRTlCLCBpbmZvKSAvKiBIYWxvIEdUMiAqLwogCiAv
KiBDRkwgVSBHVDIgKi8KICNkZWZpbmUgSU5URUxfQ0ZMX1VfR1QyX0lEUyhpbmZvKSBcCi0tIAoy
LjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
