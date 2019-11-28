Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F9FD10C1DD
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 02:49:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC7026E5DB;
	Thu, 28 Nov 2019 01:48:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69A0D6E02B
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 01:48:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 17:48:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,251,1571727600"; d="scan'208";a="211863852"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.98.40.66])
 by orsmga003.jf.intel.com with ESMTP; 27 Nov 2019 17:48:54 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Nov 2019 17:48:50 -0800
Message-Id: <20191128014852.214135-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191128014852.214135-1-jose.souza@intel.com>
References: <20191128014852.214135-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH CI 3/5] drm/i915/psr: Enable ALPM lock timeout
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
ZW9uZy5tdW5AaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJv
cGVyQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9z
ZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYyB8IDM3ICsrKysrKysrKysrKysrKysrKysrKysrLQogMSBmaWxlIGNoYW5nZWQsIDM2
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYwppbmRleCAxYTFhYzNmNDZiZjcuLmE3NTdiNjQ0NWYyMSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCkBAIC00MDIsNyArNDAyLDkgQEAgc3Rh
dGljIHZvaWQgaW50ZWxfcHNyX2VuYWJsZV9zaW5rKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAp
CiAJLyogRW5hYmxlIEFMUE0gYXQgc2luayBmb3IgcHNyMiAqLwogCWlmIChkZXZfcHJpdi0+cHNy
LnBzcjJfZW5hYmxlZCkgewogCQlkcm1fZHBfZHBjZF93cml0ZWIoJmludGVsX2RwLT5hdXgsIERQ
X1JFQ0VJVkVSX0FMUE1fQ09ORklHLAotCQkJCSAgIERQX0FMUE1fRU5BQkxFKTsKKwkJCQkgICBE
UF9BTFBNX0VOQUJMRSB8CisJCQkJICAgRFBfQUxQTV9MT0NLX0VSUk9SX0lSUV9IUERfRU5BQkxF
KTsKKwogCQlkcGNkX3ZhbCB8PSBEUF9QU1JfRU5BQkxFX1BTUjIgfCBEUF9QU1JfSVJRX0hQRF9X
SVRIX0NSQ19FUlJPUlM7CiAJfSBlbHNlIHsKIAkJaWYgKGRldl9wcml2LT5wc3IubGlua19zdGFu
ZGJ5KQpAQCAtOTM0LDYgKzkzNiw5IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9kaXNhYmxlX2xv
Y2tlZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQogCS8qIERpc2FibGUgUFNSIG9uIFNpbmsg
Ki8KIAlkcm1fZHBfZHBjZF93cml0ZWIoJmludGVsX2RwLT5hdXgsIERQX1BTUl9FTl9DRkcsIDAp
OwogCisJaWYgKGRldl9wcml2LT5wc3IucHNyMl9lbmFibGVkKQorCQlkcm1fZHBfZHBjZF93cml0
ZWIoJmludGVsX2RwLT5hdXgsIERQX1JFQ0VJVkVSX0FMUE1fQ09ORklHLCAwKTsKKwogCWRldl9w
cml2LT5wc3IuZW5hYmxlZCA9IGZhbHNlOwogfQogCkBAIC0xNDA1LDYgKzE0MTAsMzMgQEAgc3Rh
dGljIGludCBwc3JfZ2V0X3N0YXR1c19hbmRfZXJyb3Jfc3RhdHVzKHN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHAsCiAJcmV0dXJuIDA7CiB9CiAKK3N0YXRpYyB2b2lkIHBzcl9hbHBtX2NoZWNrKHN0
cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCit7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7CisJc3RydWN0IGRybV9kcF9hdXggKmF1eCA9
ICZpbnRlbF9kcC0+YXV4OworCXN0cnVjdCBpOTE1X3BzciAqcHNyID0gJmRldl9wcml2LT5wc3I7
CisJdTggdmFsOworCWludCByOworCisJaWYgKCFwc3ItPnBzcjJfZW5hYmxlZCkKKwkJcmV0dXJu
OworCisJciA9IGRybV9kcF9kcGNkX3JlYWRiKGF1eCwgRFBfUkVDRUlWRVJfQUxQTV9TVEFUVVMs
ICZ2YWwpOworCWlmIChyICE9IDEpIHsKKwkJRFJNX0VSUk9SKCJFcnJvciByZWFkaW5nIEFMUE0g
c3RhdHVzXG4iKTsKKwkJcmV0dXJuOworCX0KKworCWlmICh2YWwgJiBEUF9BTFBNX0xPQ0tfVElN
RU9VVF9FUlJPUikgeworCQlpbnRlbF9wc3JfZGlzYWJsZV9sb2NrZWQoaW50ZWxfZHApOworCQlw
c3ItPnNpbmtfbm90X3JlbGlhYmxlID0gdHJ1ZTsKKwkJRFJNX0RFQlVHX0tNUygiQUxQTSBsb2Nr
IHRpbWVvdXQgZXJyb3IsIGRpc2FibGluZyBQU1JcbiIpOworCisJCS8qIENsZWFyaW5nIGVycm9y
ICovCisJCWRybV9kcF9kcGNkX3dyaXRlYihhdXgsIERQX1JFQ0VJVkVSX0FMUE1fU1RBVFVTLCB2
YWwpOworCX0KK30KKwogdm9pZCBpbnRlbF9wc3Jfc2hvcnRfcHVsc2Uoc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCkKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90
b19pOTE1KGludGVsX2RwKTsKQEAgLTE0NDYsNiArMTQ3OCw5IEBAIHZvaWQgaW50ZWxfcHNyX3No
b3J0X3B1bHNlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCiAJCQkgIGVycm9yX3N0YXR1cyAm
IH5lcnJvcnMpOwogCS8qIGNsZWFyIHN0YXR1cyByZWdpc3RlciAqLwogCWRybV9kcF9kcGNkX3dy
aXRlYigmaW50ZWxfZHAtPmF1eCwgRFBfUFNSX0VSUk9SX1NUQVRVUywgZXJyb3Jfc3RhdHVzKTsK
KworCXBzcl9hbHBtX2NoZWNrKGludGVsX2RwKTsKKwogZXhpdDoKIAltdXRleF91bmxvY2soJnBz
ci0+bG9jayk7CiB9Ci0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
