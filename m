Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AFBE349BDA
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 22:48:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BC3C6EE57;
	Thu, 25 Mar 2021 21:48:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7DF86EE57
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 21:48:26 +0000 (UTC)
IronPort-SDR: M32aebumKT2vjrwgGGa5pIASP3X3yT9KOqIs7f0oxjaUprCgRAshj4EfxwHva1HUqUSzLoNHKl
 +WY7BWXxrrIw==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="171005063"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="171005063"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 14:48:26 -0700
IronPort-SDR: +x8R76idD8S7i7NIcR79e0R3dhaJoyV5TpBNArY7LOWEjafkX6hG5aCbCgwFHwaObI/KsARyAR
 LPs3ZkD80TAg==
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="375235660"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 14:48:25 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Mar 2021 23:47:54 +0200
Message-Id: <20210325214808.2071517-12-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210325214808.2071517-1-imre.deak@intel.com>
References: <20210325214808.2071517-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 11/25] drm/i915/intel_fb: Unexport
 intel_fb_check_stride()
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

QWZ0ZXIgdGhlIHByZXZpb3VzIHBhdGNoIHdlIGNhbiB1bmV4cG9ydCBpbnRlbF9mYl9jaGVja19z
dHJpZGUoKSwgd2hpY2gKaXNuJ3QgbmVlZGVkIGJ5IGludGVsX2Rpc3BsYXkuYy4KClNpZ25lZC1v
ZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYi5jIHwgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9mYi5oIHwgMiAtLQogMiBmaWxlcyBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2ZiLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Zi
LmMKaW5kZXggYjg3MmViMjlmZDBkNy4uOGNjOTNkODlmYzBhYSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZmIuYwpAQCAtODI0LDcgKzgyNCw3IEBAIHZvaWQgaW50ZWxfZmls
bF9mYl9nZ3R0X3ZpZXcoc3RydWN0IGk5MTVfZ2d0dF92aWV3ICp2aWV3LAogCX0KIH0KIAotaW50
IGludGVsX3BsYW5lX2NoZWNrX3N0cmlkZShjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUg
KnBsYW5lX3N0YXRlKQorc3RhdGljIGludCBpbnRlbF9wbGFuZV9jaGVja19zdHJpZGUoY29uc3Qg
c3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkKIHsKIAlzdHJ1Y3QgaW50ZWxf
cGxhbmUgKnBsYW5lID0gdG9faW50ZWxfcGxhbmUocGxhbmVfc3RhdGUtPnVhcGkucGxhbmUpOwog
CWNvbnN0IHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiID0gcGxhbmVfc3RhdGUtPmh3LmZiOwpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYi5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYi5oCmluZGV4IDU5Zjg3MTVlMGJkYWYu
LjA0Mjk0NmY0NTJmMDkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZmIuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiLmgK
QEAgLTI4LDggKzI4LDYgQEAgaW50IG1haW5fdG9fY2NzX3BsYW5lKGNvbnN0IHN0cnVjdCBkcm1f
ZnJhbWVidWZmZXIgKmZiLCBpbnQgbWFpbl9wbGFuZSk7CiBpbnQgc2tsX2Njc190b19tYWluX3Bs
YW5lKGNvbnN0IHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiLCBpbnQgY2NzX3BsYW5lKTsKIGlu
dCBza2xfbWFpbl90b19hdXhfcGxhbmUoY29uc3Qgc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIs
IGludCBtYWluX3BsYW5lKTsKIAotaW50IGludGVsX3BsYW5lX2NoZWNrX3N0cmlkZShjb25zdCBz
dHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKTsKLQogdW5zaWduZWQgaW50IGlu
dGVsX3RpbGVfc2l6ZShjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwog
dW5zaWduZWQgaW50IGludGVsX3RpbGVfaGVpZ2h0KGNvbnN0IHN0cnVjdCBkcm1fZnJhbWVidWZm
ZXIgKmZiLCBpbnQgY29sb3JfcGxhbmUpOwogdW5zaWduZWQgaW50IGludGVsX3RpbGVfcm93X3Np
emUoY29uc3Qgc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIsIGludCBjb2xvcl9wbGFuZSk7Ci0t
IAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
