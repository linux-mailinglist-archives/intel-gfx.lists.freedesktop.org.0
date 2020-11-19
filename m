Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3747E2B9AF0
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Nov 2020 19:54:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EBAA6E5D1;
	Thu, 19 Nov 2020 18:54:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73CC46E5D1
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Nov 2020 18:54:07 +0000 (UTC)
IronPort-SDR: 59OtQJQKsbqy05KhiBEknMVpl2SDBCtQ+gFJSGXaxWDfWhGdNjWMfsTjWVottiQrjevB619ex9
 jgoMOtyubIbg==
X-IronPort-AV: E=McAfee;i="6000,8403,9810"; a="150612435"
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="150612435"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 10:54:07 -0800
IronPort-SDR: SKo/rTt2W9SAGj7I7YGhKNxTsdnEmgsGbVosAr0/4Yoy8K8ZN4u0o69j2DKuHybDeWsc74Y9il
 tWkLS6Xcc2AA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="431330425"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 19 Nov 2020 10:54:05 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Nov 2020 20:54:04 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Nov 2020 20:53:49 +0200
Message-Id: <20201119185401.31883-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201119185401.31883-1-ville.syrjala@linux.intel.com>
References: <20201119185401.31883-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/13] drm/i915: Drop pointless total_data_rate
 argument
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
bF9kZGJfZ2V0X3BpcGVfYWxsb2NhdGlvbl9saW1pdHMoKSBoYXMgbm8gbmVlZCBmb3IKdGhlIHRv
dGFsIHJlbGF0aXZlIGRhdGEgcmF0ZS4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfcG0uYyB8IDIgLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9wbS5jCmluZGV4IGEyMGI1MDUxZjE4Yy4uODQ2NTk3OTE5MDE5IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3BtLmMKQEAgLTQwODMsNyArNDA4Myw2IEBAIHN0YXRpYyB1OCBza2xfY29t
cHV0ZV9kYnVmX3NsaWNlcyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSwKIHN0YXRpYyBpbnQKIHNrbF9kZGJfZ2V0X3BpcGVfYWxsb2NhdGlvbl9saW1pdHMoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQkJCSAgIGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlLAotCQkJCSAgIGNvbnN0IHU2NCB0b3RhbF9kYXRhX3JhdGUs
CiAJCQkJICAgc3RydWN0IHNrbF9kZGJfZW50cnkgKmFsbG9jLCAvKiBvdXQgKi8KIAkJCQkgICBp
bnQgKm51bV9hY3RpdmUgLyogb3V0ICovKQogewpAQCAtNDg1Niw3ICs0ODU1LDYgQEAgc2tsX2Fs
bG9jYXRlX3BpcGVfZGRiKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAogCQkJc2ts
X2dldF90b3RhbF9yZWxhdGl2ZV9kYXRhX3JhdGUoc3RhdGUsIGNydGMpOwogCiAJcmV0ID0gc2ts
X2RkYl9nZXRfcGlwZV9hbGxvY2F0aW9uX2xpbWl0cyhkZXZfcHJpdiwgY3J0Y19zdGF0ZSwKLQkJ
CQkJCSB0b3RhbF9kYXRhX3JhdGUsCiAJCQkJCQkgYWxsb2MsICZudW1fYWN0aXZlKTsKIAlpZiAo
cmV0KQogCQlyZXR1cm4gcmV0OwotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
