Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88BC910478B
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 01:31:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B52DA6EAA5;
	Thu, 21 Nov 2019 00:31:44 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F6286EAA5
 for <Intel-GFX@lists.freedesktop.org>; Thu, 21 Nov 2019 00:31:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 16:31:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,223,1571727600"; d="scan'208";a="407007149"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga005.fm.intel.com with ESMTP; 20 Nov 2019 16:31:42 -0800
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Wed, 20 Nov 2019 16:31:42 -0800
Message-Id: <20191121003142.34924-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Subject: [Intel-gfx] [PATCH] drm/i915: Add Gen/GT info to GPU error state
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogSm9obiBIYXJyaXNvbiA8Sm9obi5DLkhhcnJpc29uQEludGVsLmNvbT4KCkFkZGVkIGdl
biAmIEdUIGluZm8gdG8gdGhlIGVycm9yIGNhcHR1cmUuCgpTaWduZWQtb2ZmLWJ5OiBKb2huIEhh
cnJpc29uIDxqb2huLmMuaGFycmlzb25AaW50ZWwuY29tPgpDQzogTWF0dGhldyBCcm9zdCA8bWF0
dGhldy5icm9zdEBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVf
ZXJyb3IuYyB8IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYwppbmRleCA3MTE4ZWNiN2YxNDQuLjRjOTI4OTJkMDVm
YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jCkBAIC02OTMsNiArNjkzLDgg
QEAgc3RhdGljIHZvaWQgX19lcnJfcHJpbnRfdG9fc2dsKHN0cnVjdCBkcm1faTkxNV9lcnJvcl9z
dGF0ZV9idWYgKm0sCiAJZXJyX3ByaW50ZihtLCAiU3VicGxhdGZvcm06IDB4JXhcbiIsCiAJCSAg
IGludGVsX3N1YnBsYXRmb3JtKCZlcnJvci0+cnVudGltZV9pbmZvLAogCQkJCSAgICAgZXJyb3It
PmRldmljZV9pbmZvLnBsYXRmb3JtKSk7CisJZXJyX3ByaW50ZihtLCAiR2VuOiAlZFxuIiwgZXJy
b3ItPmRldmljZV9pbmZvLmdlbik7CisJZXJyX3ByaW50ZihtLCAiR1Q6ICVkXG4iLCBlcnJvci0+
ZGV2aWNlX2luZm8uZ3QpOwogCWVycl9wcmludF9wY2lpZChtLCBtLT5pOTE1KTsKIAogCWVycl9w
cmludGYobSwgIklPTU1VIGVuYWJsZWQ/OiAlZFxuIiwgZXJyb3ItPmlvbW11KTsKLS0gCjIuMjEu
MC41LmdhZWI1ODJhOTgzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
