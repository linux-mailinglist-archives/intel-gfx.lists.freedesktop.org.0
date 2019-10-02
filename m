Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66597C8C21
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 16:54:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADF716E0DB;
	Wed,  2 Oct 2019 14:54:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 880656E0DB
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 14:54:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 07:54:09 -0700
X-IronPort-AV: E=Sophos;i="5.64,574,1559545200"; d="scan'208";a="221426518"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 07:54:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Oct 2019 17:54:04 +0300
Message-Id: <20191002145405.27848-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: use DRM_ERROR() instead of
 drm_err()
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

VW5pZnkgb24gY3VycmVudCBjb21tb24gdXNhZ2UgdG8gYWxsb3cgcmVwdXJwb3NpbmcgZHJtX2Vy
cigpIGxhdGVyLiBGaXgKbmV3bGluZXMgd2hpbGUgYXQgaXQuCgpTaWduZWQtb2ZmLWJ5OiBKYW5p
IE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgOCArKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQg
aW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IGQ5OWM1OWU5NzU2OC4uNzgxZjZlYTdjY2Y5IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTI1
NjIsMTAgKzEyNTYyLDEwIEBAIHBpcGVfY29uZmlnX2luZm9mcmFtZV9taXNtYXRjaChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCWRybV9kYmcoRFJNX1VUX0tNUywgImZvdW5k
Iik7CiAJCWhkbWlfaW5mb2ZyYW1lX2xvZyhLRVJOX0RFQlVHLCBkZXZfcHJpdi0+ZHJtLmRldiwg
Yik7CiAJfSBlbHNlIHsKLQkJZHJtX2VycigibWlzbWF0Y2ggaW4gJXMgaW5mb2ZyYW1lIiwgbmFt
ZSk7Ci0JCWRybV9lcnIoImV4cGVjdGVkOiIpOworCQlEUk1fRVJST1IoIm1pc21hdGNoIGluICVz
IGluZm9mcmFtZVxuIiwgbmFtZSk7CisJCURSTV9FUlJPUigiZXhwZWN0ZWQ6XG4iKTsKIAkJaGRt
aV9pbmZvZnJhbWVfbG9nKEtFUk5fRVJSLCBkZXZfcHJpdi0+ZHJtLmRldiwgYSk7Ci0JCWRybV9l
cnIoImZvdW5kIik7CisJCURSTV9FUlJPUigiZm91bmQ6XG4iKTsKIAkJaGRtaV9pbmZvZnJhbWVf
bG9nKEtFUk5fRVJSLCBkZXZfcHJpdi0+ZHJtLmRldiwgYik7CiAJfQogfQpAQCAtMTI1ODMsNyAr
MTI1ODMsNyBAQCBwaXBlX2NvbmZpZ19taXNtYXRjaChib29sIGZhc3RzZXQsIGNvbnN0IGNoYXIg
Km5hbWUsIGNvbnN0IGNoYXIgKmZvcm1hdCwgLi4uKQogCWlmIChmYXN0c2V0KQogCQlkcm1fZGJn
KERSTV9VVF9LTVMsICJmYXN0c2V0IG1pc21hdGNoIGluICVzICVwViIsIG5hbWUsICZ2YWYpOwog
CWVsc2UKLQkJZHJtX2VycigibWlzbWF0Y2ggaW4gJXMgJXBWIiwgbmFtZSwgJnZhZik7CisJCURS
TV9FUlJPUigibWlzbWF0Y2ggaW4gJXMgJXBWXG4iLCBuYW1lLCAmdmFmKTsKIAogCXZhX2VuZChh
cmdzKTsKIH0KLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
