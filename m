Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E93AE3DAE87
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 23:51:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 375986EE82;
	Thu, 29 Jul 2021 21:51:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 126856EE7C
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jul 2021 21:51:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10060"; a="192578356"
X-IronPort-AV: E=Sophos;i="5.84,279,1620716400"; d="scan'208";a="192578356"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 14:51:24 -0700
X-IronPort-AV: E=Sophos;i="5.84,279,1620716400"; d="scan'208";a="664570784"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.59])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 14:51:24 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Jul 2021 14:55:45 -0700
Message-Id: <20210729215545.192606-10-jose.souza@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210729215545.192606-1-jose.souza@intel.com>
References: <20210729215545.192606-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH CI 10/10] drm/i915/display/tgl+: Use PPS index
 from vbt
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGlnZXJsYWtlIGFuZCBuZXdlciBoYXMgdHdvIGluc3RhbmNlcyBvZiBQUFMsIHRvIHN1cHBvcnQg
dXAgdG8gdHdvCmVEUCBwYW5lbHMuCgpSZXZpZXdlZC1ieTogTWF0dCBBdHdvb2QgPG1hdHRoZXcu
cy5hdHdvb2RAaW50ZWwuY29tPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4KQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+ClNp
Z25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHBzLmMgfCAzICsrLQog
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHBzLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bwcy5jCmluZGV4IGY0YzE1YTFmMzFkMTUuLmVlOTJm
NDE2ODM0ZTUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHBzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wcHMuYwpAQCAt
MzY4LDcgKzM2OCw4IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bwc19nZXRfcmVnaXN0ZXJzKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHAsCiAKIAltZW1zZXQocmVncywgMCwgc2l6ZW9mKCpyZWdzKSk7
CiAKLQlpZiAoSVNfR0VNSU5JTEFLRShkZXZfcHJpdikgfHwgSVNfQlJPWFRPTihkZXZfcHJpdikp
CisJaWYgKElTX0dFTUlOSUxBS0UoZGV2X3ByaXYpIHx8IElTX0JST1hUT04oZGV2X3ByaXYpIHx8
CisJICAgIERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMikKIAkJcHBzX2lkeCA9IGJ4dF9wb3dl
cl9zZXF1ZW5jZXJfaWR4KGludGVsX2RwKTsKIAllbHNlIGlmIChJU19WQUxMRVlWSUVXKGRldl9w
cml2KSB8fCBJU19DSEVSUllWSUVXKGRldl9wcml2KSkKIAkJcHBzX2lkeCA9IHZsdl9wb3dlcl9z
ZXF1ZW5jZXJfcGlwZShpbnRlbF9kcCk7Ci0tIAoyLjMyLjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
