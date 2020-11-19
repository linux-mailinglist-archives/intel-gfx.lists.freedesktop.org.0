Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6BDF2B9AF2
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Nov 2020 19:54:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 081B86E5D2;
	Thu, 19 Nov 2020 18:54:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8F326E7D1
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Nov 2020 18:54:10 +0000 (UTC)
IronPort-SDR: 6DvUIflloshfWkpplu+ofLN52mMgzmtTOBPivRrWm2V+lhdi6Uxuw/y0IAmgAWSUtw/LNe0aLI
 A164QGXYAgJA==
X-IronPort-AV: E=McAfee;i="6000,8403,9810"; a="171441707"
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="171441707"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 10:54:09 -0800
IronPort-SDR: Iubr1U/NDRGYB/q1MVDvV4tvO6M/4HpwgcuKkfxpLmV/rvIvVMY4/SwStHSF8vRoDmoGNs03em
 6tcvgzWlzsWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="311174064"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 19 Nov 2020 10:54:08 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Nov 2020 20:54:07 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Nov 2020 20:53:50 +0200
Message-Id: <20201119185401.31883-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201119185401.31883-1-ville.syrjala@linux.intel.com>
References: <20201119185401.31883-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/13] drm/i915: Drop pointless dev_priv argument
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCnNr
bF9kZGJfZW50cnlfaW5pdF9mcm9tX2h3KCkgaGFzIG5vIG5lZWQgZm9yIGRldl9wcml2LgoKU2ln
bmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIHwgMTEgKysrKystLS0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3BtLmMKaW5kZXggODQ2NTk3OTE5MDE5Li5iZThlYWNhYzhlNjIgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfcG0uYwpAQCAtNDI3Niw4ICs0Mjc2LDcgQEAgc2tsX2N1cnNvcl9hbGxvY2F0
aW9uKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCXJldHVybiBt
YXgobnVtX2FjdGl2ZSA9PSAxID8gMzIgOiA4LCBtaW5fZGRiX2FsbG9jKTsKIH0KIAotc3RhdGlj
IHZvaWQgc2tsX2RkYl9lbnRyeV9pbml0X2Zyb21faHcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2LAotCQkJCSAgICAgICBzdHJ1Y3Qgc2tsX2RkYl9lbnRyeSAqZW50cnksIHUzMiBy
ZWcpCitzdGF0aWMgdm9pZCBza2xfZGRiX2VudHJ5X2luaXRfZnJvbV9odyhzdHJ1Y3Qgc2tsX2Rk
Yl9lbnRyeSAqZW50cnksIHUzMiByZWcpCiB7CiAKIAllbnRyeS0+c3RhcnQgPSByZWcgJiBEREJf
RU5UUllfTUFTSzsKQEAgLTQzMDAsNyArNDI5OSw3IEBAIHNrbF9kZGJfZ2V0X2h3X3BsYW5lX3N0
YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkvKiBDdXJzb3IgZG9lc24n
dCBzdXBwb3J0IE5WMTIvcGxhbmFyLCBzbyBubyBleHRyYSBjYWxjdWxhdGlvbiBuZWVkZWQgKi8K
IAlpZiAocGxhbmVfaWQgPT0gUExBTkVfQ1VSU09SKSB7CiAJCXZhbCA9IEk5MTVfUkVBRChDVVJf
QlVGX0NGRyhwaXBlKSk7Ci0JCXNrbF9kZGJfZW50cnlfaW5pdF9mcm9tX2h3KGRldl9wcml2LCBk
ZGJfeSwgdmFsKTsKKwkJc2tsX2RkYl9lbnRyeV9pbml0X2Zyb21faHcoZGRiX3ksIHZhbCk7CiAJ
CXJldHVybjsKIAl9CiAKQEAgLTQzMTQsNyArNDMxMyw3IEBAIHNrbF9kZGJfZ2V0X2h3X3BsYW5l
X3N0YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAogCWlmIChJTlRFTF9H
RU4oZGV2X3ByaXYpID49IDExKSB7CiAJCXZhbCA9IEk5MTVfUkVBRChQTEFORV9CVUZfQ0ZHKHBp
cGUsIHBsYW5lX2lkKSk7Ci0JCXNrbF9kZGJfZW50cnlfaW5pdF9mcm9tX2h3KGRldl9wcml2LCBk
ZGJfeSwgdmFsKTsKKwkJc2tsX2RkYl9lbnRyeV9pbml0X2Zyb21faHcoZGRiX3ksIHZhbCk7CiAJ
fSBlbHNlIHsKIAkJdmFsID0gSTkxNV9SRUFEKFBMQU5FX0JVRl9DRkcocGlwZSwgcGxhbmVfaWQp
KTsKIAkJdmFsMiA9IEk5MTVfUkVBRChQTEFORV9OVjEyX0JVRl9DRkcocGlwZSwgcGxhbmVfaWQp
KTsKQEAgLTQzMjMsOCArNDMyMiw4IEBAIHNrbF9kZGJfZ2V0X2h3X3BsYW5lX3N0YXRlKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJICAgIGRybV9mb3JtYXRfaW5mb19pc195
dXZfc2VtaXBsYW5hcihkcm1fZm9ybWF0X2luZm8oZm91cmNjKSkpCiAJCQlzd2FwKHZhbCwgdmFs
Mik7CiAKLQkJc2tsX2RkYl9lbnRyeV9pbml0X2Zyb21faHcoZGV2X3ByaXYsIGRkYl95LCB2YWwp
OwotCQlza2xfZGRiX2VudHJ5X2luaXRfZnJvbV9odyhkZXZfcHJpdiwgZGRiX3V2LCB2YWwyKTsK
KwkJc2tsX2RkYl9lbnRyeV9pbml0X2Zyb21faHcoZGRiX3ksIHZhbCk7CisJCXNrbF9kZGJfZW50
cnlfaW5pdF9mcm9tX2h3KGRkYl91diwgdmFsMik7CiAJfQogfQogCi0tIAoyLjI2LjIKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
