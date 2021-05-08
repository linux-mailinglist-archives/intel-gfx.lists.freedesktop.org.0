Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28733376EBC
	for <lists+intel-gfx@lfdr.de>; Sat,  8 May 2021 04:29:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BE726E82D;
	Sat,  8 May 2021 02:28:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD25E6E833
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 May 2021 02:28:32 +0000 (UTC)
IronPort-SDR: cxlhelmR6L0UDw9g9VX0DiKeEWrKgr91zr/vrbTtsWlRcIpbDVNcmFZmVPhiQANRMpv0lppQhk
 yBLm49HvkMeg==
X-IronPort-AV: E=McAfee;i="6200,9189,9977"; a="284317034"
X-IronPort-AV: E=Sophos;i="5.82,282,1613462400"; d="scan'208";a="284317034"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2021 19:28:30 -0700
IronPort-SDR: OGNamsFvlTyraTiSD/hFPUnS9MEjDpRfuZaOHU8jrfumCDxHkuhpxGzOgHjfhcNk1qFHn5k75H
 jHhgXdHrApZA==
X-IronPort-AV: E=Sophos;i="5.82,282,1613462400"; d="scan'208";a="533910171"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2021 19:28:29 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 May 2021 19:28:16 -0700
Message-Id: <20210508022820.780227-45-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210508022820.780227-1-matthew.d.roper@intel.com>
References: <20210508022820.780227-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 44/48] drm/i915/adl_p: Add IPs stepping
 mapping
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

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpUaGlz
IHdpbGwgYWxsb3cgdXMgdG8gYmV0dGVyIGltcGxlbWVudCB3b3JrYXJvdW5kcy4KCkNjOiBNYXR0
IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBS
b2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSmFu
aSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWF0dCBSb3Bl
ciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5oICAgfCAgOCArKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc3Rl
cC5jIHwgMTIgKysrKysrKysrKystCiAyIGZpbGVzIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAppbmRleCAzZmU1MTRjNWRlMzIu
LmI1NTZlY2NjOWFkMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
aAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCkBAIC0xNTU2LDYgKzE1NTYs
MTQgQEAgSVNfU1VCUExBVEZPUk0oY29uc3Qgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUs
CiAJKElTX0FMREVSTEFLRV9TKF9faTkxNSkgJiYgXAogCSBJU19HVF9TVEVQKF9faTkxNSwgc2lu
Y2UsIHVudGlsKSkKIAorI2RlZmluZSBJU19BRExQX0RJU1BMQVlfU1RFUChfX2k5MTUsIHNpbmNl
LCB1bnRpbCkgXAorCShJU19BTERFUkxBS0VfUChfX2k5MTUpICYmIFwKKwkgSVNfRElTUExBWV9T
VEVQKF9faTkxNSwgc2luY2UsIHVudGlsKSkKKworI2RlZmluZSBJU19BRExQX0dUX1NURVAoX19p
OTE1LCBzaW5jZSwgdW50aWwpIFwKKwkoSVNfQUxERVJMQUtFX1AoX19pOTE1KSAmJiBcCisJIElT
X0dUX1NURVAoX19pOTE1LCBzaW5jZSwgdW50aWwpKQorCiAjZGVmaW5lIElTX0xQKGRldl9wcml2
KQkoSU5URUxfSU5GTyhkZXZfcHJpdiktPmlzX2xwKQogI2RlZmluZSBJU19HRU45X0xQKGRldl9w
cml2KQkoSVNfR0VOKGRldl9wcml2LCA5KSAmJiBJU19MUChkZXZfcHJpdikpCiAjZGVmaW5lIElT
X0dFTjlfQkMoZGV2X3ByaXYpCShJU19HRU4oZGV2X3ByaXYsIDkpICYmICFJU19MUChkZXZfcHJp
dikpCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zdGVwLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zdGVwLmMKaW5kZXggNGQ3MTU0N2E1YjgzLi5iYTk0Nzlh
Njc1MjEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3N0ZXAuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zdGVwLmMKQEAgLTQ3LDYgKzQ3LDEzIEBAIHN0
YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfc3RlcF9pbmZvIGFkbHNfcmV2aWRfc3RlcF90YmxbXSA9
IHsKIAlbMHhDXSA9IHsgLmd0X3N0ZXAgPSBTVEVQX0QwLCAuZGlzcGxheV9zdGVwID0gU1RFUF9D
MCB9LAogfTsKIAorc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9zdGVwX2luZm8gYWRscF9yZXZp
ZF9zdGVwX3RibFtdID0geworCVsweDBdID0geyAuZ3Rfc3RlcCA9IFNURVBfQTAsIC5kaXNwbGF5
X3N0ZXAgPSBTVEVQX0EwIH0sCisJWzB4NF0gPSB7IC5ndF9zdGVwID0gU1RFUF9CMCwgLmRpc3Bs
YXlfc3RlcCA9IFNURVBfQjAgfSwKKwlbMHg4XSA9IHsgLmd0X3N0ZXAgPSBTVEVQX0MwLCAuZGlz
cGxheV9zdGVwID0gU1RFUF9DMCB9LAorCVsweENdID0geyAuZ3Rfc3RlcCA9IFNURVBfQzAsIC5k
aXNwbGF5X3N0ZXAgPSBTVEVQX0QwIH0sCit9OworCiB2b2lkIGludGVsX3N0ZXBfaW5pdChzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIHsKIAljb25zdCBzdHJ1Y3QgaW50ZWxfc3RlcF9p
bmZvICpyZXZpZHMgPSBOVUxMOwpAQCAtNTQsNyArNjEsMTAgQEAgdm9pZCBpbnRlbF9zdGVwX2lu
aXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJaW50IHJldmlkID0gSU5URUxfUkVW
SUQoaTkxNSk7CiAJc3RydWN0IGludGVsX3N0ZXBfaW5mbyBzdGVwID0ge307CiAKLQlpZiAoSVNf
QUxERVJMQUtFX1MoaTkxNSkpIHsKKwlpZiAoSVNfQUxERVJMQUtFX1AoaTkxNSkpIHsKKwkJcmV2
aWRzID0gYWRscF9yZXZpZF9zdGVwX3RibDsKKwkJc2l6ZSA9IEFSUkFZX1NJWkUoYWRscF9yZXZp
ZF9zdGVwX3RibCk7CisJfSBlbHNlIGlmIChJU19BTERFUkxBS0VfUyhpOTE1KSkgewogCQlyZXZp
ZHMgPSBhZGxzX3JldmlkX3N0ZXBfdGJsOwogCQlzaXplID0gQVJSQVlfU0laRShhZGxzX3Jldmlk
X3N0ZXBfdGJsKTsKIAl9IGVsc2UgaWYgKElTX1RHTF9VKGk5MTUpIHx8IElTX1RHTF9ZKGk5MTUp
KSB7Ci0tIAoyLjI1LjQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
