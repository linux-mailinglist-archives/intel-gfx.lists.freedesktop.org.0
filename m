Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5ADDB0793
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 06:14:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D060B6EB80;
	Thu, 12 Sep 2019 04:12:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 476A56E02C
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 19:31:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 12:31:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="179124033"
Received: from anusha.jf.intel.com ([10.54.75.179])
 by orsmga008.jf.intel.com with ESMTP; 11 Sep 2019 12:31:44 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Sep 2019 12:21:10 -0700
Message-Id: <20190911192110.15445-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/dmc: Update ICL DMC version to v1.09
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

V2UgaGF2ZSBhIG5ldyB2ZXJzaW9uIG9mIERNQyBmb3IgSUNMIC0gdjEuMDkuCgpUaGlzIHZlcnNp
b24gYWRkcyB0aGUgSGFsZiBSZWZyZXNoIFJhdGUgY2FwYWJpbGl0eQppbnRvIERNQy4KCkNjOiBK
b3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KU2lnbmVkLW9mZi1i
eTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nzci5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2Nzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY3NyLmMKaW5k
ZXggNTQ2NTc3ZTM5YjRlLi4wOTg3MGEzMWI0ZjAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2Nzci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nzci5j
CkBAIC00NCw4ICs0NCw4IEBACiAjZGVmaW5lIFRHTF9DU1JfTUFYX0ZXX1NJWkUJCTB4NjAwMAog
TU9EVUxFX0ZJUk1XQVJFKFRHTF9DU1JfUEFUSCk7CiAKLSNkZWZpbmUgSUNMX0NTUl9QQVRICQkJ
Imk5MTUvaWNsX2RtY192ZXIxXzA3LmJpbiIKLSNkZWZpbmUgSUNMX0NTUl9WRVJTSU9OX1JFUVVJ
UkVECUNTUl9WRVJTSU9OKDEsIDcpCisjZGVmaW5lIElDTF9DU1JfUEFUSAkJCSJpOTE1L2ljbF9k
bWNfdmVyMV8wOS5iaW4iCisjZGVmaW5lIElDTF9DU1JfVkVSU0lPTl9SRVFVSVJFRAlDU1JfVkVS
U0lPTigxLCA5KQogI2RlZmluZSBJQ0xfQ1NSX01BWF9GV19TSVpFCQkweDYwMDAKIE1PRFVMRV9G
SVJNV0FSRShJQ0xfQ1NSX1BBVEgpOwogCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
