Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE05F0BBB
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 02:45:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1201D6EBBB;
	Wed,  6 Nov 2019 01:45:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2255C6EBB9
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 01:45:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Nov 2019 17:45:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,272,1569308400"; d="scan'208";a="196037942"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.135])
 by orsmga008.jf.intel.com with ESMTP; 05 Nov 2019 17:45:09 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Nov 2019 17:45:02 -0800
Message-Id: <20191106014504.167656-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191106014504.167656-1-jose.souza@intel.com>
References: <20191106014504.167656-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/5] drm/i915/psr: Enable ALPM lock timeout
 error interruption
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

V2hlbiB0aGlzIGVycm9yIGhhcHBlbnMgc2luayBsaW5rIGlzIG5vdCBzdGFibGUgYWZ0ZXIgdGhl
IHJlcXVpcmVkCkZXX0VYSVRfTEFURU5DWSBwZXJpb2Qgc28gaXQgd2lsbCBtaXNzIHRoZSBzZWxl
Y3RpdmUgdXBkYXRlLgpBcyB0aGUgb3RoZXIgUFNSIGVycm9ycywgZm9yIG5vdyB3ZSBhcmUgbm90
IHRyeWluZyB0byByZWNvdmVyIGZyb20KaXQuCgpDYzogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5
ZW9uZy5tdW5AaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jIHwgMzcgKysrKysrKysrKysrKysrKysrKysrKystCiAxIGZpbGUgY2hhbmdl
ZCwgMzYgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jCmluZGV4IGYzOGRhMWI5YjMyMy4uYzcwM2ExMGQyZmQ3IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKQEAgLTQwMiw3ICs0MDIsOSBA
QCBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfZW5hYmxlX3Npbmsoc3RydWN0IGludGVsX2RwICppbnRl
bF9kcCkKIAkvKiBFbmFibGUgQUxQTSBhdCBzaW5rIGZvciBwc3IyICovCiAJaWYgKGRldl9wcml2
LT5wc3IucHNyMl9lbmFibGVkKSB7CiAJCWRybV9kcF9kcGNkX3dyaXRlYigmaW50ZWxfZHAtPmF1
eCwgRFBfUkVDRUlWRVJfQUxQTV9DT05GSUcsCi0JCQkJICAgRFBfQUxQTV9FTkFCTEUpOworCQkJ
CSAgIERQX0FMUE1fRU5BQkxFIHwKKwkJCQkgICBEUF9BTFBNX0xPQ0tfRVJST1JfSVJRX0hQRF9F
TkFCTEUpOworCiAJCWRwY2RfdmFsIHw9IERQX1BTUl9FTkFCTEVfUFNSMiB8IERQX1BTUl9JUlFf
SFBEX1dJVEhfQ1JDX0VSUk9SUzsKIAl9IGVsc2UgewogCQlpZiAoZGV2X3ByaXYtPnBzci5saW5r
X3N0YW5kYnkpCkBAIC05MzQsNiArOTM2LDkgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2Rpc2Fi
bGVfbG9ja2VkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCiAJLyogRGlzYWJsZSBQU1Igb24g
U2luayAqLwogCWRybV9kcF9kcGNkX3dyaXRlYigmaW50ZWxfZHAtPmF1eCwgRFBfUFNSX0VOX0NG
RywgMCk7CiAKKwlpZiAoZGV2X3ByaXYtPnBzci5wc3IyX2VuYWJsZWQpCisJCWRybV9kcF9kcGNk
X3dyaXRlYigmaW50ZWxfZHAtPmF1eCwgRFBfUkVDRUlWRVJfQUxQTV9DT05GSUcsIDApOworCiAJ
ZGV2X3ByaXYtPnBzci5lbmFibGVkID0gZmFsc2U7CiB9CiAKQEAgLTE0MDUsNiArMTQxMCwzMyBA
QCBzdGF0aWMgYm9vbCBwc3JfZ2V0X3N0YXR1c19hbmRfZXJyb3Jfc3RhdHVzKHN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHAsCiAJcmV0dXJuIHRydWU7CiB9CiAKK3N0YXRpYyB2b2lkIHBzcl9hbHBt
X2NoZWNrKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCit7CisJc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7CisJc3RydWN0IGRybV9kcF9h
dXggKmF1eCA9ICZpbnRlbF9kcC0+YXV4OworCXN0cnVjdCBpOTE1X3BzciAqcHNyID0gJmRldl9w
cml2LT5wc3I7CisJdTggdmFsOworCWludCByOworCisJaWYgKCFwc3ItPnBzcjJfZW5hYmxlZCkK
KwkJcmV0dXJuOworCisJciA9IGRybV9kcF9kcGNkX3JlYWRiKGF1eCwgRFBfUkVDRUlWRVJfQUxQ
TV9TVEFUVVMsICZ2YWwpOworCWlmIChyICE9IDEpIHsKKwkJRFJNX0VSUk9SKCJFcnJvciByZWFk
aW5nIEFMUE0gc3RhdHVzXG4iKTsKKwkJcmV0dXJuOworCX0KKworCWlmICh2YWwgJiBEUF9BTFBN
X0xPQ0tfVElNRU9VVF9FUlJPUikgeworCQlpbnRlbF9wc3JfZGlzYWJsZV9sb2NrZWQoaW50ZWxf
ZHApOworCQlwc3ItPnNpbmtfbm90X3JlbGlhYmxlID0gdHJ1ZTsKKwkJRFJNX0RFQlVHX0tNUygi
QUxQTSBsb2NrIHRpbWVvdXQgZXJyb3IsIGRpc2FibGluZyBQU1JcbiIpOworCisJCS8qIENsZWFy
aW5nIGVycm9yICovCisJCWRybV9kcF9kcGNkX3dyaXRlYihhdXgsIERQX1JFQ0VJVkVSX0FMUE1f
U1RBVFVTLCB2YWwpOworCX0KK30KKwogdm9pZCBpbnRlbF9wc3Jfc2hvcnRfcHVsc2Uoc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCkKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYgPSBkcF90b19pOTE1KGludGVsX2RwKTsKQEAgLTE0NDYsNiArMTQ3OCw5IEBAIHZvaWQgaW50
ZWxfcHNyX3Nob3J0X3B1bHNlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCiAJCQkgIGVycm9y
X3N0YXR1cyAmIH5lcnJvcnMpOwogCS8qIGNsZWFyIHN0YXR1cyByZWdpc3RlciAqLwogCWRybV9k
cF9kcGNkX3dyaXRlYigmaW50ZWxfZHAtPmF1eCwgRFBfUFNSX0VSUk9SX1NUQVRVUywgZXJyb3Jf
c3RhdHVzKTsKKworCXBzcl9hbHBtX2NoZWNrKGludGVsX2RwKTsKKwogZXhpdDoKIAltdXRleF91
bmxvY2soJnBzci0+bG9jayk7CiB9Ci0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
