Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A1838CA39
	for <lists+intel-gfx@lfdr.de>; Fri, 21 May 2021 17:33:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C02EC6F3D8;
	Fri, 21 May 2021 15:33:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09FD86EDA1;
 Fri, 21 May 2021 15:33:22 +0000 (UTC)
IronPort-SDR: QfhUVtw6p9WBlMHYUoInLD66TMdkawaaHtk0BTbvxr0wR/FHgpboraNAvx/3jqy5wqQmf/alLq
 xzAvfxCBA+fA==
X-IronPort-AV: E=McAfee;i="6200,9189,9990"; a="265415722"
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="265415722"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2021 08:33:21 -0700
IronPort-SDR: FVM8KAiRZ/YMbi9YST1FBuZVKnZOds1jTectzHRrXkJNY2ZxAOSxIJlw4yBkyC36xPuAWthx6n
 5b7nW4W733SA==
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="441125461"
Received: from imarinmo-mobl1.ger.corp.intel.com (HELO
 thellst-mobl1.intel.com) ([10.249.254.34])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2021 08:33:19 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 21 May 2021 17:32:49 +0200
Message-Id: <20210521153253.518037-9-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210521153253.518037-1-thomas.hellstrom@linux.intel.com>
References: <20210521153253.518037-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 08/12] drm/ttm: Use drm_memcpy_from_wc_dbm
 for TTM bo moves
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VXNlIGZhc3Qgd2MgbWVtY3B5IGZvciByZWFkaW5nIG91dCBvZiB3YyBtZW1vcnkgZm9yIFRUTSBi
byBtb3Zlcy4KCkNjOiBEYXZlIEFpcmxpZSA8YWlybGllZEBnbWFpbC5jb20+CkNjOiBDaHJpc3Rp
YW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+CkNjOiBEYW5pZWwgVmV0dGVyIDxk
YW5pZWwudmV0dGVyQGZmd2xsLmNoPgpTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8
dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3R0
bS90dG1fYm9fdXRpbC5jIHwgOSArKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlv
bnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0
bV9ib191dGlsLmMgYi9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9ib191dGlsLmMKaW5kZXggOTEy
Y2JlOGU2MGEyLi40YTdkM2Q2NzJmOWEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS90dG0v
dHRtX2JvX3V0aWwuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9ib191dGlsLmMKQEAg
LTMxLDYgKzMxLDcgQEAKIAogI2luY2x1ZGUgPGRybS90dG0vdHRtX2JvX2RyaXZlci5oPgogI2lu
Y2x1ZGUgPGRybS90dG0vdHRtX3BsYWNlbWVudC5oPgorI2luY2x1ZGUgPGRybS9kcm1fbWVtY3B5
Lmg+CiAjaW5jbHVkZSA8ZHJtL2RybV92bWFfbWFuYWdlci5oPgogI2luY2x1ZGUgPGxpbnV4L2Rt
YS1idWYtbWFwLmg+CiAjaW5jbHVkZSA8bGludXgvaW8uaD4KQEAgLTkxLDYgKzkyLDcgQEAgdm9p
ZCB0dG1fbW92ZV9tZW1jcHkoc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0ICpibywKIAljb25zdCBz
dHJ1Y3QgdHRtX2ttYXBfaXRlcl9vcHMgKnNyY19vcHMgPSBzcmNfaXRlci0+b3BzOwogCXN0cnVj
dCB0dG1fdHQgKnR0bSA9IGJvLT50dG07CiAJc3RydWN0IGRtYV9idWZfbWFwIHNyY19tYXAsIGRz
dF9tYXA7CisJYm9vbCB3Y19tZW1jcHk7CiAJcGdvZmZfdCBpOwogCiAJLyogU2luZ2xlIFRUTSBt
b3ZlLiBOT1AgKi8KQEAgLTExNCwxMSArMTE2LDE2IEBAIHZvaWQgdHRtX21vdmVfbWVtY3B5KHN0
cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8sCiAJCXJldHVybjsKIAl9CiAKKwl3Y19tZW1jcHkg
PSAoKCFzcmNfb3BzLT5tYXBzX3R0IHx8IHR0bS0+Y2FjaGluZyAhPSB0dG1fY2FjaGVkKSAmJgor
CQkgICAgIGRybV9oYXNfbWVtY3B5X2Zyb21fd2MoKSk7CisKIAlmb3IgKGkgPSAwOyBpIDwgZHN0
X21lbS0+bnVtX3BhZ2VzOyArK2kpIHsKIAkJZHN0X29wcy0+bWFwX2xvY2FsKGRzdF9pdGVyLCAm
ZHN0X21hcCwgaSk7CiAJCXNyY19vcHMtPm1hcF9sb2NhbChzcmNfaXRlciwgJnNyY19tYXAsIGkp
OwogCi0JCWlmICghc3JjX21hcC5pc19pb21lbSAmJiAhZHN0X21hcC5pc19pb21lbSkgeworCQlp
ZiAod2NfbWVtY3B5KSB7CisJCQlkcm1fbWVtY3B5X2Zyb21fd2NfZGJtKCZkc3RfbWFwLCAmc3Jj
X21hcCwgUEFHRV9TSVpFKTsKKwkJfSBlbHNlIGlmICghc3JjX21hcC5pc19pb21lbSAmJiAhZHN0
X21hcC5pc19pb21lbSkgewogCQkJbWVtY3B5KGRzdF9tYXAudmFkZHIsIHNyY19tYXAudmFkZHIs
IFBBR0VfU0laRSk7CiAJCX0gZWxzZSBpZiAoIXNyY19tYXAuaXNfaW9tZW0pIHsKIAkJCWRtYV9i
dWZfbWFwX21lbWNweV90bygmZHN0X21hcCwgc3JjX21hcC52YWRkciwKLS0gCjIuMzEuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
