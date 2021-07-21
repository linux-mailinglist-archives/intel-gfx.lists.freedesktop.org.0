Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E713D19B5
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 00:31:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B94516EB52;
	Wed, 21 Jul 2021 22:30:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B76DB6EB37
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 22:30:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="211528006"
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="211528006"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 15:30:49 -0700
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="658464208"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 15:30:48 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Jul 2021 15:30:39 -0700
Message-Id: <20210721223043.834562-15-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210721223043.834562-1-matthew.d.roper@intel.com>
References: <20210721223043.834562-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 14/18] drm/i915/dg2: Setup display outputs
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

REcyIGhhcyBvdXRwdXRzIG9uIERESSBBLUQgYXR0YWNoZWQgdG8gd2hhdCB0aGUgYnNwZWMgZGlh
Z3JhbSBzaG93cyBhcwoiQ29tYm8gUEhZIEEtRC4iICBOb3RlIHRoYXQgZGVzcGl0ZSBiZWluZyBs
YWJlbGxlZCAiY29tYm8iIHRoZSBQSFlzIG9uCnRoZXNlIG91dHB1dHMgYXJlIFN5bm9wc3lzIFBI
WXMgcmF0aGVyIHRoYW4gdHJhZGl0aW9uYWwgSW50ZWwgY29tYm8gUEhZCnRlY2hub2xvZ3kuCgpD
YzogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgpTaWduZWQtb2Zm
LWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTog
Sm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA3ICsrKysrKy0KIDEgZmls
ZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IGExNjViYjhjYTJmOC4uMmIw
ODJlMTgyN2E4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYwpAQCAtMTEzMzMsNyArMTEzMzMsMTIgQEAgc3RhdGljIHZvaWQgaW50ZWxfc2V0dXBfb3V0
cHV0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJaWYgKCFIQVNfRElTUExB
WShkZXZfcHJpdikpCiAJCXJldHVybjsKIAotCWlmIChJU19BTERFUkxBS0VfUChkZXZfcHJpdikp
IHsKKwlpZiAoSVNfREcyKGRldl9wcml2KSkgeworCQlpbnRlbF9kZGlfaW5pdChkZXZfcHJpdiwg
UE9SVF9BKTsKKwkJaW50ZWxfZGRpX2luaXQoZGV2X3ByaXYsIFBPUlRfQik7CisJCWludGVsX2Rk
aV9pbml0KGRldl9wcml2LCBQT1JUX0MpOworCQlpbnRlbF9kZGlfaW5pdChkZXZfcHJpdiwgUE9S
VF9EX1hFTFBEKTsKKwl9IGVsc2UgaWYgKElTX0FMREVSTEFLRV9QKGRldl9wcml2KSkgewogCQlp
bnRlbF9kZGlfaW5pdChkZXZfcHJpdiwgUE9SVF9BKTsKIAkJaW50ZWxfZGRpX2luaXQoZGV2X3By
aXYsIFBPUlRfQik7CiAJCWludGVsX2RkaV9pbml0KGRldl9wcml2LCBQT1JUX1RDMSk7Ci0tIAoy
LjI1LjQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
