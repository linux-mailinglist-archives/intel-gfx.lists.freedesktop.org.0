Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D79E81FD9FE
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 02:00:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8592E6E1F4;
	Thu, 18 Jun 2020 00:00:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 754676E1F3
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jun 2020 00:00:15 +0000 (UTC)
IronPort-SDR: gWEHdrC7qSJVliCfsYX9K4kBLfZ+kaAawqhPRFOldvPydQSkCCP8ttZUUK5DuFJ5UCv+xXiKo6
 Q6fwX3ONJplQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2020 17:00:14 -0700
IronPort-SDR: XZIX2Tj/8e77zERfHSZHRKBQ+OvmFiNHVIOeK/GlWFWLombY8Zc8jyO4wKG0yb/t7oyfrW67uq
 G1n+Nk13LGQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,524,1583222400"; d="scan'208";a="352246028"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga001.jf.intel.com with ESMTP; 17 Jun 2020 17:00:14 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jun 2020 17:01:23 -0700
Message-Id: <20200618000124.29036-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915/dp: Helper for checking
 DDI_BUF_CTL Idle status
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

TW9kaWZ5IHRoZSBoZWxwZXIgdG8gYWRkIGEgZml4ZWQgZGVsYXkgb3IgcG9sbCB3aXRoIHRpbWVv
dXQKYmFzZWQgb24gcGxhdGZvcm0gc3BlY2lmaWNhdGlvbiBpbiBib3RoZSBlbmFibGUgYW5kIGRp
c2FibGUKY2FzZXMgc28gY2hlY2sgZm9yIGVpdGhlciBJZGxlIGJpdCBzZXQgKERESV9CVUZfQ1RM
IGlzIGlkbGUKZm9yIGRpc2FibGUgY2FzZSkgb3IgY2hlY2sgZm9yIElkbGUgYml0ID0gMCAobm9u
IGlkbGUgZm9yCkRESSBCVUYgZW5hYmxlIGNhc2UpCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVs
LmNvbT4KU2lnbmVkLW9mZi1ieTogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgMzQg
KysrKysrKysrKysrKysrLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygr
KSwgMTMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRp
LmMKaW5kZXggY2E3YmIyMjk0ZDJiLi5lNDczOGMzYjZkNDQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kZGkuYwpAQCAtMTE4MiwxOCArMTE4MiwyNiBAQCBzdGF0aWMgdm9p
ZCBpbnRlbF9wcmVwYXJlX2hkbWlfZGRpX2J1ZmZlcnMoc3RydWN0IGludGVsX2VuY29kZXIgKmVu
Y29kZXIsCiB9CiAKIHN0YXRpYyB2b2lkIGludGVsX3dhaXRfZGRpX2J1Zl9pZGxlKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKLQkJCQkgICAgZW51bSBwb3J0IHBvcnQpCisJCQkJ
ICAgIGVudW0gcG9ydCBwb3J0LCBib29sIGlkbGUpCiB7Ci0JaTkxNV9yZWdfdCByZWcgPSBERElf
QlVGX0NUTChwb3J0KTsKLQlpbnQgaTsKLQotCWZvciAoaSA9IDA7IGkgPCAxNjsgaSsrKSB7Ci0J
CXVkZWxheSgxKTsKLQkJaWYgKGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIHJlZykgJiBERElfQlVG
X0lTX0lETEUpCi0JCQlyZXR1cm47CisJaWYgKGlkbGUpIHsKKwkJaWYgKElTX0JST1hUT04oZGV2
X3ByaXYpKQorCQkJdWRlbGF5KDE2KTsKKwkJZWxzZQorCQkJaWYgKHdhaXRfZm9yX3VzKChpbnRl
bF9kZV9yZWFkKGRldl9wcml2LCBERElfQlVGX0NUTChwb3J0KSkgJgorCQkJCQkgRERJX0JVRl9J
U19JRExFKSwgMTYpKQorCQkJCWRybV9lcnIoJmRldl9wcml2LT5kcm0sICJUaW1lb3V0IHdhaXRp
bmcgZm9yIERESSBCVUYgJWMgaWRsZSBiaXRcbiIsCisJCQkJCXBvcnRfbmFtZShwb3J0KSk7CisJ
fSBlbHNlIHsKKwkJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPCAxMCkKKwkJCXVkZWxheSg2MDAp
OworCQllbHNlCisJCQlpZiAod2FpdF9mb3JfdXMoIShpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBE
RElfQlVGX0NUTChwb3J0KSkgJgorCQkJCQkgIERESV9CVUZfSVNfSURMRSksIDYwMCkpCisJCQkJ
ZHJtX2VycigmZGV2X3ByaXYtPmRybSwgIkRESSBwb3J0OiVjIGJ1ZmZlciBpZGxlXG4iLAorCQkJ
CQlwb3J0X25hbWUocG9ydCkpOwogCX0KLQlkcm1fZXJyKCZkZXZfcHJpdi0+ZHJtLCAiVGltZW91
dCB3YWl0aW5nIGZvciBEREkgQlVGICVjIGlkbGUgYml0XG4iLAotCQlwb3J0X25hbWUocG9ydCkp
OworCiB9CiAKIHN0YXRpYyB1MzIgaHN3X3BsbF90b19kZGlfcGxsX3NlbChjb25zdCBzdHJ1Y3Qg
aW50ZWxfc2hhcmVkX2RwbGwgKnBsbCkKQEAgLTEzNzMsNyArMTM4MSw3IEBAIHZvaWQgaHN3X2Zk
aV9saW5rX3RyYWluKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCQlpbnRlbF9kZV93
cml0ZShkZXZfcHJpdiwgRFBfVFBfQ1RMKFBPUlRfRSksIHRlbXApOwogCQlpbnRlbF9kZV9wb3N0
aW5nX3JlYWQoZGV2X3ByaXYsIERQX1RQX0NUTChQT1JUX0UpKTsKIAotCQlpbnRlbF93YWl0X2Rk
aV9idWZfaWRsZShkZXZfcHJpdiwgUE9SVF9FKTsKKwkJaW50ZWxfd2FpdF9kZGlfYnVmX2lkbGUo
ZGV2X3ByaXYsIFBPUlRfRSwgdHJ1ZSk7CiAKIAkJLyogUmVzZXQgRkRJX1JYX01JU0MgcHdyZG4g
bGFuZXMgKi8KIAkJdGVtcCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIEZESV9SWF9NSVNDKFBJ
UEVfQSkpOwpAQCAtMzQ5NSw3ICszNTAzLDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfZGlzYWJsZV9k
ZGlfYnVmKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCWludGVsX2RkaV9kaXNhYmxl
X2ZlY19zdGF0ZShlbmNvZGVyLCBjcnRjX3N0YXRlKTsKIAogCWlmICh3YWl0KQotCQlpbnRlbF93
YWl0X2RkaV9idWZfaWRsZShkZXZfcHJpdiwgcG9ydCk7CisJCWludGVsX3dhaXRfZGRpX2J1Zl9p
ZGxlKGRldl9wcml2LCBwb3J0LCB0cnVlKTsKIH0KIAogc3RhdGljIHZvaWQgaW50ZWxfZGRpX3Bv
c3RfZGlzYWJsZV9kcChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKQEAgLTQwMDQs
NyArNDAxMiw3IEBAIHN0YXRpYyB2b2lkIGludGVsX2RkaV9wcmVwYXJlX2xpbmtfcmV0cmFpbihz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQogCQlpbnRlbF9kZV9wb3N0aW5nX3JlYWQoZGV2X3By
aXYsIGludGVsX2RwLT5yZWdzLmRwX3RwX2N0bCk7CiAKIAkJaWYgKHdhaXQpCi0JCQlpbnRlbF93
YWl0X2RkaV9idWZfaWRsZShkZXZfcHJpdiwgcG9ydCk7CisJCQlpbnRlbF93YWl0X2RkaV9idWZf
aWRsZShkZXZfcHJpdiwgcG9ydCwgdHJ1ZSk7CiAJfQogCiAJZHBfdHBfY3RsID0gRFBfVFBfQ1RM
X0VOQUJMRSB8Ci0tIAoyLjE5LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
