Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4A0C8C22
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 16:54:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2F0A6E0FB;
	Wed,  2 Oct 2019 14:54:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D15896E0FB
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 14:54:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 07:54:15 -0700
X-IronPort-AV: E=Sophos;i="5.64,574,1559545200"; d="scan'208";a="205356999"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 07:54:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Oct 2019 17:54:05 +0300
Message-Id: <20191002145405.27848-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191002145405.27848-1-jani.nikula@intel.com>
References: <20191002145405.27848-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: use DRM_DEBUG_KMS() instead of
 drm_dbg(DRM_UT_KMS, ...)
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

VW5pZnkgb24gY3VycmVudCBjb21tb24gdXNhZ2UgdG8gYWxsb3cgcmVwdXJwb3NpbmcgZHJtX2Ri
ZygpIGxhdGVyLiBGaXgKbmV3bGluZXMgd2hpbGUgYXQgaXQuCgpTaWduZWQtb2ZmLWJ5OiBKYW5p
IE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgOCArKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQg
aW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDc4MWY2ZWE3Y2NmOS4uMDdjN2I4NGQyODcxIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTI1
NTYsMTAgKzEyNTU2LDEwIEBAIHBpcGVfY29uZmlnX2luZm9mcmFtZV9taXNtYXRjaChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCWlmICgoZHJtX2RlYnVnICYgRFJNX1VUX0tN
UykgPT0gMCkKIAkJCXJldHVybjsKIAotCQlkcm1fZGJnKERSTV9VVF9LTVMsICJmYXN0c2V0IG1p
c21hdGNoIGluICVzIGluZm9mcmFtZSIsIG5hbWUpOwotCQlkcm1fZGJnKERSTV9VVF9LTVMsICJl
eHBlY3RlZDoiKTsKKwkJRFJNX0RFQlVHX0tNUygiZmFzdHNldCBtaXNtYXRjaCBpbiAlcyBpbmZv
ZnJhbWVcbiIsIG5hbWUpOworCQlEUk1fREVCVUdfS01TKCJleHBlY3RlZDpcbiIpOwogCQloZG1p
X2luZm9mcmFtZV9sb2coS0VSTl9ERUJVRywgZGV2X3ByaXYtPmRybS5kZXYsIGEpOwotCQlkcm1f
ZGJnKERSTV9VVF9LTVMsICJmb3VuZCIpOworCQlEUk1fREVCVUdfS01TKCJmb3VuZDpcbiIpOwog
CQloZG1pX2luZm9mcmFtZV9sb2coS0VSTl9ERUJVRywgZGV2X3ByaXYtPmRybS5kZXYsIGIpOwog
CX0gZWxzZSB7CiAJCURSTV9FUlJPUigibWlzbWF0Y2ggaW4gJXMgaW5mb2ZyYW1lXG4iLCBuYW1l
KTsKQEAgLTEyNTgxLDcgKzEyNTgxLDcgQEAgcGlwZV9jb25maWdfbWlzbWF0Y2goYm9vbCBmYXN0
c2V0LCBjb25zdCBjaGFyICpuYW1lLCBjb25zdCBjaGFyICpmb3JtYXQsIC4uLikKIAl2YWYudmEg
PSAmYXJnczsKIAogCWlmIChmYXN0c2V0KQotCQlkcm1fZGJnKERSTV9VVF9LTVMsICJmYXN0c2V0
IG1pc21hdGNoIGluICVzICVwViIsIG5hbWUsICZ2YWYpOworCQlEUk1fREVCVUdfS01TKCJmYXN0
c2V0IG1pc21hdGNoIGluICVzICVwVlxuIiwgbmFtZSwgJnZhZik7CiAJZWxzZQogCQlEUk1fRVJS
T1IoIm1pc21hdGNoIGluICVzICVwVlxuIiwgbmFtZSwgJnZhZik7CiAKLS0gCjIuMjAuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
