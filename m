Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26530C8979
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 15:18:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE3906E10E;
	Wed,  2 Oct 2019 13:18:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E32B86E0EF
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 13:18:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 06:18:22 -0700
X-IronPort-AV: E=Sophos;i="5.64,574,1559545200"; d="scan'208";a="190939905"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 06:18:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Oct 2019 16:18:00 +0300
Message-Id: <20191002131800.21054-4-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191002131800.21054-1-jani.nikula@intel.com>
References: <20191002131800.21054-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: move gmbus setup down to
 intel_modeset_init()
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UGFpciB0aGUgZ21idXMgc2V0dXAgYW5kIHRlYXJkb3duIGluIHRoZSBzYW1lIGxheWVyLiBUaGlz
IGFsc28gZml4ZXMgdGhlCmRvdWJsZSBnbWJ1cyB0ZWFyZG93biBvbiB0aGUgaTkxNV9kcml2ZXJf
bW9kZXNldF9wcm9iZSgpIGVycm9yIHBhdGguCgpNb3ZlIHRoZSBnbWJ1cyBzZXR1cCBhIGJpdCBs
YXRlciBpbiB0aGUgc2VxdWVuY2UgdG8gbWFrZSB0aGUgZm9sbG93LXVwCnJlZmFjdG9yaW5nIGVh
c2llciwgYW5kIHRvIHBpbnBvaW50IGFueSB1bmV4cGVjdGVkIGNvbnNlcXVlbmNlcyBvZiB0aGlz
CmNoYW5nZSByaWdodCBoZXJlLCBpbnN0ZWFkIG9mIHRoZSBsYXRlciByZWZhY3RvcmluZy4KClNp
Z25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAyICsrCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jICAgICAgICAgICAgICB8IDQgLS0tLQogMiBmaWxlcyBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCBkOTljNTllOTc1NjguLjJhNzU1
NGUzYjk2ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKQEAgLTE2MjMzLDYgKzE2MjMzLDggQEAgaW50IGludGVsX21vZGVzZXRfaW5pdChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAogCWludGVsX3BhbmVsX3Nhbml0aXplX3NzYyhpOTE1
KTsKIAorCWludGVsX2dtYnVzX3NldHVwKGk5MTUpOworCiAJRFJNX0RFQlVHX0tNUygiJWQgZGlz
cGxheSBwaXBlJXMgYXZhaWxhYmxlLlxuIiwKIAkJICAgICAgSU5URUxfTlVNX1BJUEVTKGk5MTUp
LAogCQkgICAgICBJTlRFTF9OVU1fUElQRVMoaTkxNSkgPiAxID8gInMiIDogIiIpOwpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmMKaW5kZXggNzUwM2UxNmFhZGVmLi45MTM2MjY4MmY0ODkgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuYwpAQCAtNTMsNyArNTMsNiBAQAogI2luY2x1ZGUgImRpc3BsYXkvaW50
ZWxfZGlzcGxheV90eXBlcy5oIgogI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfZHAuaCIKICNpbmNs
dWRlICJkaXNwbGF5L2ludGVsX2ZiZGV2LmgiCi0jaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9nbWJ1
cy5oIgogI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfaG90cGx1Zy5oIgogI2luY2x1ZGUgImRpc3Bs
YXkvaW50ZWxfb3ZlcmxheS5oIgogI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfcGlwZV9jcmMuaCIK
QEAgLTMwMSw4ICszMDAsNiBAQCBzdGF0aWMgaW50IGk5MTVfZHJpdmVyX21vZGVzZXRfcHJvYmUo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJaWYgKHJldCkKIAkJZ290byBjbGVhbnVw
X2NzcjsKIAotCWludGVsX2dtYnVzX3NldHVwKGk5MTUpOwotCiAJLyogSW1wb3J0YW50OiBUaGUg
b3V0cHV0IHNldHVwIGZ1bmN0aW9ucyBjYWxsZWQgYnkgbW9kZXNldF9pbml0IG5lZWQKIAkgKiB3
b3JraW5nIGlycXMgZm9yIGUuZy4gZ21idXMgYW5kIGRwIGF1eCB0cmFuc2ZlcnMuICovCiAJcmV0
ID0gaW50ZWxfbW9kZXNldF9pbml0KGk5MTUpOwpAQCAtMzM3LDcgKzMzNCw2IEBAIHN0YXRpYyBp
bnQgaTkxNV9kcml2ZXJfbW9kZXNldF9wcm9iZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSkKIAlpbnRlbF9tb2Rlc2V0X2RyaXZlcl9yZW1vdmUoaTkxNSk7CiBjbGVhbnVwX2lycToKIAlp
bnRlbF9pcnFfdW5pbnN0YWxsKGk5MTUpOwotCWludGVsX2dtYnVzX3RlYXJkb3duKGk5MTUpOwog
Y2xlYW51cF9jc3I6CiAJaW50ZWxfY3NyX3Vjb2RlX2ZpbmkoaTkxNSk7CiAJaW50ZWxfcG93ZXJf
ZG9tYWluc19kcml2ZXJfcmVtb3ZlKGk5MTUpOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
