Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F6A86BA3F
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 12:32:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FAAD6E110;
	Wed, 17 Jul 2019 10:32:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93C446E110
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 10:32:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jul 2019 03:32:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,274,1559545200"; d="scan'208";a="342995226"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by orsmga005.jf.intel.com with ESMTP; 17 Jul 2019 03:32:31 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jul 2019 15:58:02 +0530
Message-Id: <20190717102804.27202-8-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190717102804.27202-1-anshuman.gupta@intel.com>
References: <20190717102804.27202-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 07/10] drm/i915/tgl:DC3CO PSR2 helper.
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBwYXRjaCBhZGRzIGRjM2NvIGhlbHBlciBmdW5jdGlvbiB0byBlbmFibGUvZGlzYWJsZQpw
c3IyIGRlZXAgc2xlZXAuClRoaXMgcGF0Y2ggbWFrZSBzdXJlIERDM0NPIGRpc2FsbG93ZWQgYmVm
b3JlIFBTUjIgZXhpdCwKaXQgZG9lcyB0aGF0IGVzc2VudGlhbGx5IGJ5IHB1dHRpbmcgYSByZWZl
cmVuY2UgdG8KUE9XRVJfRE9NQUlOX1ZJREVPIGJlZm9yZSBQU1IyIGV4aXQuCgpDYzogamFuaS5u
aWt1bGFAaW50ZWwuY29tCkNjOiBpbXJlLmRlYWtAaW50ZWwuY29tCkNjOiBqb3NlLnNvdXphQGlu
dGVsLmNvbQpDYzogYW5pbWVzaC5tYW5uYUBpbnRlbC5jb20KU2lnbmVkLW9mZi1ieTogQW5zaHVt
YW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgNDQgKysrKysrKysrKysrKysrKysrKysrKysrCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oIHwgIDIgKysKIDIgZmlsZXMg
Y2hhbmdlZCwgNDYgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jCmluZGV4IDY5ZDkwOGU2YTA1MC4uMTI3NjViMWY5ZTMzIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKQEAgLTUzMyw2ICs1MzMsNDkgQEAgc3RhdGlj
IHZvaWQgaHN3X2FjdGl2YXRlX3BzcjIoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKIAlJOTE1
X1dSSVRFKEVEUF9QU1IyX0NUTCwgdmFsKTsKIH0KIAordm9pZCB0Z2xfcHNyMl9kZWVwX3NsZWVw
X2Rpc2FibGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQoreworCXUzMiB2YWw7
CisJaW50IGlkbGVfZnJhbWVzID0gMDsKKworCWlkbGVfZnJhbWVzIDw8PSBFRFBfUFNSMl9JRExF
X0ZSQU1FX1NISUZUOworCXZhbCA9IEk5MTVfUkVBRChFRFBfUFNSMl9DVEwpOworCXZhbCAmPSB+
RURQX1BTUjJfSURMRV9GUkFNRV9NQVNLOworCXZhbCB8PSBpZGxlX2ZyYW1lczsKKwlJOTE1X1dS
SVRFKEVEUF9QU1IyX0NUTCwgdmFsKTsKK30KKwordm9pZCB0Z2xfcHNyMl9kZWVwX3NsZWVwX2Vu
YWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCit7CisJdTMyIHZhbDsKKwlp
bnQgaWRsZV9mcmFtZXM7CisKKwkvKgorCSAqIExldCdzIHVzZSA2IGFzIHRoZSBtaW5pbXVtIHRv
IGNvdmVyIGFsbCBrbm93biBjYXNlcyBpbmNsdWRpbmcgdGhlCisJICogb2ZmLWJ5LW9uZSBpc3N1
ZSB0aGF0IEhXIGhhcyBpbiBzb21lIGNhc2VzLgorCSAqLworCWlkbGVfZnJhbWVzID0gbWF4KDYs
IGRldl9wcml2LT52YnQucHNyLmlkbGVfZnJhbWVzKTsKKwlpZGxlX2ZyYW1lcyA9IG1heChpZGxl
X2ZyYW1lcywgZGV2X3ByaXYtPnBzci5zaW5rX3N5bmNfbGF0ZW5jeSArIDEpOworCWlkbGVfZnJh
bWVzIDw8PSAgRURQX1BTUjJfSURMRV9GUkFNRV9TSElGVDsKKwl2YWwgPSBJOTE1X1JFQUQoRURQ
X1BTUjJfQ1RMKTsKKwl2YWwgJj0gfkVEUF9QU1IyX0lETEVfRlJBTUVfTUFTSzsKKwl2YWwgfD0g
aWRsZV9mcmFtZXM7CisJSTkxNV9XUklURShFRFBfUFNSMl9DVEwsIHZhbCk7Cit9CisKK3ZvaWQg
dGdsX2Rpc2FsbG93X2RjM2NvX29uX3BzcjJfZXhpdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYpCit7CisJaW50ZWxfd2FrZXJlZl90IHdha2VyZWYgX19tYXliZV91bnVzZWQ7CisK
KwkvKiBCZWZvcmUgUFNSMiBleGl0IGRpc2FsbG93IGRjM2NvKi8KKwltdXRleF9sb2NrKCZkZXZf
cHJpdi0+Y3NyLmRjNV9tdXRleCk7CisJd2FrZXJlZgk9IGZldGNoX2FuZF96ZXJvKCZkZXZfcHJp
di0+Y3NyLmRjNV93YWtlcmVmKTsKKwlpZiAod2FrZXJlZikKKwkJaW50ZWxfZGlzcGxheV9wb3dl
cl9wdXQoZGV2X3ByaXYsIFBPV0VSX0RPTUFJTl9WSURFTywKKwkJCQkJZGV2X3ByaXYtPmNzci5k
YzVfd2FrZXJlZik7CisJbXV0ZXhfdW5sb2NrKCZkZXZfcHJpdi0+Y3NyLmRjNV9tdXRleCk7Cit9
CisKIHN0YXRpYyBib29sIGludGVsX3BzcjJfY29uZmlnX3ZhbGlkKHN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHAsCiAJCQkJICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQog
ewpAQCAtNzg5LDYgKzgzMiw3IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9leGl0KHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAl9CiAKIAlpZiAoZGV2X3ByaXYtPnBzci5wc3Iy
X2VuYWJsZWQpIHsKKwkJdGdsX2Rpc2FsbG93X2RjM2NvX29uX3BzcjJfZXhpdChkZXZfcHJpdik7
CiAJCXZhbCA9IEk5MTVfUkVBRChFRFBfUFNSMl9DVEwpOwogCQlXQVJOX09OKCEodmFsICYgRURQ
X1BTUjJfRU5BQkxFKSk7CiAJCUk5MTVfV1JJVEUoRURQX1BTUjJfQ1RMLCB2YWwgJiB+RURQX1BT
UjJfRU5BQkxFKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oCmluZGV4
IGRjODE4ODI2ZjM2ZC4uNmZiNGMzODU0ODljIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmgKQEAgLTM2LDUgKzM2LDcgQEAgdm9pZCBpbnRlbF9wc3Jfc2hvcnRfcHVs
c2Uoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCk7CiBpbnQgaW50ZWxfcHNyX3dhaXRfZm9yX2lk
bGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlLAogCQkJICAg
IHUzMiAqb3V0X3ZhbHVlKTsKIGJvb2wgaW50ZWxfcHNyX2VuYWJsZWQoc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCk7Cit2b2lkIHRnbF9wc3IyX2RlZXBfc2xlZXBfZGlzYWJsZShzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwordm9pZCB0Z2xfcHNyMl9kZWVwX3NsZWVwX2VuYWJs
ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwogCiAjZW5kaWYgLyogX19JTlRF
TF9QU1JfSF9fICovCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
