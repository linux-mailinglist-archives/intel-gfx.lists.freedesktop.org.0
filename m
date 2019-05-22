Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B984426C01
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 21:32:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01FDB89BD5;
	Wed, 22 May 2019 19:32:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8C8989BD5
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2019 19:32:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 12:32:11 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga001.fm.intel.com with ESMTP; 22 May 2019 12:32:09 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4MJW5Gp020993; Wed, 22 May 2019 20:32:09 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 May 2019 19:32:02 +0000
Message-Id: <20190522193203.23932-9-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.10.1.windows.1
In-Reply-To: <20190522193203.23932-1-michal.wajdeczko@intel.com>
References: <20190522193203.23932-1-michal.wajdeczko@intel.com>
Subject: [Intel-gfx] [PATCH v2 8/9] drm/i915/uc: Stop talking with GuC when
 resetting
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

S25vd2luZyB0aGF0IEd1QyB3aWxsIGJlIHJlc2V0IHNvb24sIHdlIG1heSBzdG9wIGFsbCBjb21t
dW5pY2F0aW9uCmltbWVkaWF0ZWx5IHdpdGhvdXQgZG9pbmcgZ3JhY2VmdWwgY2xlYW51cCBhcyBp
dCBpcyBub3QgbmVlZGVkLgoKU2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFs
LndhamRlY3prb0BpbnRlbC5jb20+CkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJp
b0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX2N0LmggfCAg
NSArKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdWMuYyAgICAgfCAxMyArKysrKysr
KysrKystCiAyIGZpbGVzIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfY3QuaCBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19jdC5oCmluZGV4IGY1ZTdmMDY2MzMwNC4uNDFiYTU5
M2E0ZGY3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfY3QuaAor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfY3QuaApAQCAtOTYsNCArOTYsOSBA
QCB2b2lkIGludGVsX2d1Y19jdF9maW5pKHN0cnVjdCBpbnRlbF9ndWNfY3QgKmN0KTsKIGludCBp
bnRlbF9ndWNfY3RfZW5hYmxlKHN0cnVjdCBpbnRlbF9ndWNfY3QgKmN0KTsKIHZvaWQgaW50ZWxf
Z3VjX2N0X2Rpc2FibGUoc3RydWN0IGludGVsX2d1Y19jdCAqY3QpOwogCitzdGF0aWMgaW5saW5l
IHZvaWQgaW50ZWxfZ3VjX2N0X3N0b3Aoc3RydWN0IGludGVsX2d1Y19jdCAqY3QpCit7CisJY3Qt
Pmhvc3RfY2hhbm5lbC5lbmFibGVkID0gZmFsc2U7Cit9CisKICNlbmRpZiAvKiBfSU5URUxfR1VD
X0NUX0hfICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91Yy5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdWMuYwppbmRleCAzZDgxYTUxMmU1YzguLmYxN2Ni
M2RhZDkwYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdWMuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91Yy5jCkBAIC0yMjQsNiArMjI0LDE3IEBAIHN0
YXRpYyBpbnQgZ3VjX2VuYWJsZV9jb21tdW5pY2F0aW9uKHN0cnVjdCBpbnRlbF9ndWMgKmd1YykK
IAlyZXR1cm4gMDsKIH0KIAorc3RhdGljIHZvaWQgZ3VjX3N0b3BfY29tbXVuaWNhdGlvbihzdHJ1
Y3QgaW50ZWxfZ3VjICpndWMpCit7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBn
dWNfdG9faTkxNShndWMpOworCisJaWYgKEhBU19HVUNfQ1QoaTkxNSkpCisJCWludGVsX2d1Y19j
dF9zdG9wKCZndWMtPmN0KTsKKworCWd1Yy0+c2VuZCA9IGludGVsX2d1Y19zZW5kX25vcDsKKwln
dWMtPmhhbmRsZXIgPSBpbnRlbF9ndWNfdG9faG9zdF9ldmVudF9oYW5kbGVyX25vcDsKK30KKwog
c3RhdGljIHZvaWQgZ3VjX2Rpc2FibGVfY29tbXVuaWNhdGlvbihzdHJ1Y3QgaW50ZWxfZ3VjICpn
dWMpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBndWNfdG9faTkxNShndWMp
OwpAQCAtNDg1LDcgKzQ5Niw3IEBAIHZvaWQgaW50ZWxfdWNfcmVzZXRfcHJlcGFyZShzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAlpZiAoIVVTRVNfR1VDKGk5MTUpKQogCQlyZXR1cm47
CiAKLQlndWNfZGlzYWJsZV9jb21tdW5pY2F0aW9uKGd1Yyk7CisJZ3VjX3N0b3BfY29tbXVuaWNh
dGlvbihndWMpOwogCV9fdWNfc2FuaXRpemUoaTkxNSk7CiB9CiAKLS0gCjIuMTkuMgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
