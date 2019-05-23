Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8CC0284E1
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 19:26:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05DA86E04A;
	Thu, 23 May 2019 17:26:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 539ED6E04A
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2019 17:26:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 10:26:21 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga001.fm.intel.com with ESMTP; 23 May 2019 10:26:20 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4NHQJ8Y031150; Thu, 23 May 2019 18:26:19 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 May 2019 17:25:55 +0000
Message-Id: <20190523172555.2780-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.10.1.windows.1
In-Reply-To: <20190522193203.23932-9-michal.wajdeczko@intel.com>
References: <20190522193203.23932-9-michal.wajdeczko@intel.com>
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
dCBpcyBub3QgbmVlZGVkLgoKVGhpcyBwYXRjaCB3aWxsIGFsc28gaGVscCB1cyBjYXB0dXJlIGFu
eSB1bndhbnRlZC91bmV4cGVjdGVkIGF0dGVtcHRzCnRvIHRhbGsgd2l0aCBHdUMgYWZ0ZXIgd2Ug
ZGVjaWRlZCB0byByZXNldCBpdC4gQW5kIHdlIG5lZWQgdG8ga2VlcAonZGlzYWJsZScgcGFydCBh
cyBjdXJyZW50IGFuZCB1cGNvbWluZyBmaXJtd2FyZSBzdGlsbCBleHBlY3QgZ3JhY2VmdWwKY2xl
YW51cC4KCnYyOiB1cGRhdGUgY29tbWl0IG1zZwoKU2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRl
Y3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+CkNjOiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUu
Y2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
Z3VjX2N0LmggfCAgNSArKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdWMuYyAgICAg
fCAxMyArKysrKysrKysrKystCiAyIGZpbGVzIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNf
Y3QuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19jdC5oCmluZGV4IGY1ZTdmMDY2
MzMwNC4uNDFiYTU5M2E0ZGY3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9ndWNfY3QuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfY3QuaApAQCAt
OTYsNCArOTYsOSBAQCB2b2lkIGludGVsX2d1Y19jdF9maW5pKHN0cnVjdCBpbnRlbF9ndWNfY3Qg
KmN0KTsKIGludCBpbnRlbF9ndWNfY3RfZW5hYmxlKHN0cnVjdCBpbnRlbF9ndWNfY3QgKmN0KTsK
IHZvaWQgaW50ZWxfZ3VjX2N0X2Rpc2FibGUoc3RydWN0IGludGVsX2d1Y19jdCAqY3QpOwogCitz
dGF0aWMgaW5saW5lIHZvaWQgaW50ZWxfZ3VjX2N0X3N0b3Aoc3RydWN0IGludGVsX2d1Y19jdCAq
Y3QpCit7CisJY3QtPmhvc3RfY2hhbm5lbC5lbmFibGVkID0gZmFsc2U7Cit9CisKICNlbmRpZiAv
KiBfSU5URUxfR1VDX0NUX0hfICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF91Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdWMuYwppbmRleCAzZDgxYTUx
MmU1YzguLmYxN2NiM2RhZDkwYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfdWMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91Yy5jCkBAIC0yMjQsNiAr
MjI0LDE3IEBAIHN0YXRpYyBpbnQgZ3VjX2VuYWJsZV9jb21tdW5pY2F0aW9uKHN0cnVjdCBpbnRl
bF9ndWMgKmd1YykKIAlyZXR1cm4gMDsKIH0KIAorc3RhdGljIHZvaWQgZ3VjX3N0b3BfY29tbXVu
aWNhdGlvbihzdHJ1Y3QgaW50ZWxfZ3VjICpndWMpCit7CisJc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUgPSBndWNfdG9faTkxNShndWMpOworCisJaWYgKEhBU19HVUNfQ1QoaTkxNSkpCisJ
CWludGVsX2d1Y19jdF9zdG9wKCZndWMtPmN0KTsKKworCWd1Yy0+c2VuZCA9IGludGVsX2d1Y19z
ZW5kX25vcDsKKwlndWMtPmhhbmRsZXIgPSBpbnRlbF9ndWNfdG9faG9zdF9ldmVudF9oYW5kbGVy
X25vcDsKK30KKwogc3RhdGljIHZvaWQgZ3VjX2Rpc2FibGVfY29tbXVuaWNhdGlvbihzdHJ1Y3Qg
aW50ZWxfZ3VjICpndWMpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBndWNf
dG9faTkxNShndWMpOwpAQCAtNDg1LDcgKzQ5Niw3IEBAIHZvaWQgaW50ZWxfdWNfcmVzZXRfcHJl
cGFyZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAlpZiAoIVVTRVNfR1VDKGk5MTUp
KQogCQlyZXR1cm47CiAKLQlndWNfZGlzYWJsZV9jb21tdW5pY2F0aW9uKGd1Yyk7CisJZ3VjX3N0
b3BfY29tbXVuaWNhdGlvbihndWMpOwogCV9fdWNfc2FuaXRpemUoaTkxNSk7CiB9CiAKLS0gCjIu
MTkuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
