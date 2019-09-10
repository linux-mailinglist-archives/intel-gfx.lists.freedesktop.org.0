Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1992CAED3F
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 16:38:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7271E6E0F7;
	Tue, 10 Sep 2019 14:38:43 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A370B6E0ED
 for <Intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 14:38:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 07:38:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="175328647"
Received: from dudibroo-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.31.14])
 by orsmga007.jf.intel.com with ESMTP; 10 Sep 2019 07:38:39 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue, 10 Sep 2019 15:38:23 +0100
Message-Id: <20190910143823.10686-5-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190910143823.10686-1-tvrtko.ursulin@linux.intel.com>
References: <20190910143823.10686-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: Make pm_notify take intel_gt
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClRoZXNlIG5v
dGlmaWNhdGlvbnMgb3BlcmF0ZSBvbiBpbnRlbF9ndCBzbyBtYWtlIHRoZSBjb2RlIHRha2Ugd2hh
dCBpdApuZWVkcy4KClNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxp
bkBpbnRlbC5jb20+CkNjOiBBbmRpIFNoeXRpIDxhbmRpLnNoeXRpQGludGVsLmNvbT4KQ2M6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2d0X3BtLmMgfCA4ICsrKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBp
bnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2d0X3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9n
dF9wbS5jCmluZGV4IGEyZTI5YmNjOTY3MS4uMmNjZjhjYWNhYTBhIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2d0X3BtLmMKQEAgLTEzLDkgKzEzLDkgQEAKICNpbmNsdWRlICJpbnRlbF9w
bS5oIgogI2luY2x1ZGUgImludGVsX3dha2VyZWYuaCIKIAotc3RhdGljIHZvaWQgcG1fbm90aWZ5
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBpbnQgc3RhdGUpCitzdGF0aWMgdm9pZCBw
bV9ub3RpZnkoc3RydWN0IGludGVsX2d0ICpndCwgaW50IHN0YXRlKQogewotCWJsb2NraW5nX25v
dGlmaWVyX2NhbGxfY2hhaW4oJmk5MTUtPmd0LnBtX25vdGlmaWNhdGlvbnMsIHN0YXRlLCBpOTE1
KTsKKwlibG9ja2luZ19ub3RpZmllcl9jYWxsX2NoYWluKCZndC0+cG1fbm90aWZpY2F0aW9ucywg
c3RhdGUsIGd0LT5pOTE1KTsKIH0KIAogc3RhdGljIGludCBfX2d0X3VucGFyayhzdHJ1Y3QgaW50
ZWxfd2FrZXJlZiAqd2YpCkBAIC00OSw3ICs0OSw3IEBAIHN0YXRpYyBpbnQgX19ndF91bnBhcmso
c3RydWN0IGludGVsX3dha2VyZWYgKndmKQogCiAJaW50ZWxfZ3RfcXVldWVfaGFuZ2NoZWNrKGd0
KTsKIAotCXBtX25vdGlmeShpOTE1LCBJTlRFTF9HVF9VTlBBUkspOworCXBtX25vdGlmeShndCwg
SU5URUxfR1RfVU5QQVJLKTsKIAogCXJldHVybiAwOwogfQpAQCAtNjIsNyArNjIsNyBAQCBzdGF0
aWMgaW50IF9fZ3RfcGFyayhzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAqd2YpCiAKIAlHRU1fVFJBQ0Uo
IlxuIik7CiAKLQlwbV9ub3RpZnkoaTkxNSwgSU5URUxfR1RfUEFSSyk7CisJcG1fbm90aWZ5KGd0
LCBJTlRFTF9HVF9QQVJLKTsKIAogCWk5MTVfcG11X2d0X3BhcmtlZChpOTE1KTsKIAlpZiAoSU5U
RUxfR0VOKGk5MTUpID49IDYpCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
