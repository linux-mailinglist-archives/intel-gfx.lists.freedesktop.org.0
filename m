Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ADDAE8AC1
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 15:28:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B00A6E3FB;
	Tue, 29 Oct 2019 14:28:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC9956E3FB
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 14:28:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 07:28:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,244,1569308400"; d="scan'208";a="399808543"
Received: from abelpaul-mobl1.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.252.9.175])
 by fmsmga005.fm.intel.com with ESMTP; 29 Oct 2019 07:28:28 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Oct 2019 16:28:26 +0200
Message-Id: <20191029142826.20014-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.24.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/perf: ensure selftests select valid
 format
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

R2VuMTIgb25seSBzdXBwb3J0IGEgc2luZ2xlIHJlcG9ydCBmb3JtYXQgOgpJOTE1X09BX0ZPUk1B
VF9BMzJ1NDBfQTR1MzJfQjhfQzgKClNpZ25lZC1vZmYtYnk6IExpb25lbCBMYW5kd2VybGluIDxs
aW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KRml4ZXM6IDAwYTdmMGQ3MTU1YyAoImRybS9p
OTE1L3RnbDogQWRkIHBlcmYgc3VwcG9ydCBvbiBUR0wiKQotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L3NlbGZ0ZXN0cy9pOTE1X3BlcmYuYyB8IDMgKystCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvc2VsZnRlc3RzL2k5MTVfcGVyZi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3Rz
L2k5MTVfcGVyZi5jCmluZGV4IGRjNmQ2ODllNDI1MS4uYWFiZDA3ZjY3ZTQ5IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9wZXJmLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfcGVyZi5jCkBAIC0yMyw3ICsyMyw4IEBAIHRl
c3Rfc3RyZWFtKHN0cnVjdCBpOTE1X3BlcmYgKnBlcmYpCiAJCQkJCQkgICBJOTE1X0VOR0lORV9D
TEFTU19SRU5ERVIsCiAJCQkJCQkgICAwKSwKIAkJLnNhbXBsZV9mbGFncyA9IFNBTVBMRV9PQV9S
RVBPUlQsCi0JCS5vYV9mb3JtYXQgPSBJOTE1X09BX0ZPUk1BVF9DNF9COCwKKwkJLm9hX2Zvcm1h
dCA9IElTX0dFTihwZXJmLT5pOTE1LCAxMikgPworCQlJOTE1X09BX0ZPUk1BVF9BMzJ1NDBfQTR1
MzJfQjhfQzggOiBJOTE1X09BX0ZPUk1BVF9DNF9COCwKIAkJLm1ldHJpY3Nfc2V0ID0gMSwKIAl9
OwogCXN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW07Ci0tIAoyLjI0LjAucmMxCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
