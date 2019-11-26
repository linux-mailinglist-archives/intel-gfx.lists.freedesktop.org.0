Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53BAE109758
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 01:54:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B7FA89949;
	Tue, 26 Nov 2019 00:54:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D92689949
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 00:54:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Nov 2019 16:54:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,243,1571727600"; d="scan'208";a="206308328"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.8.225])
 by fmsmga008.fm.intel.com with ESMTP; 25 Nov 2019 16:54:02 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Nov 2019 16:53:58 -0800
Message-Id: <20191126005400.264480-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191126005400.264480-1-jose.souza@intel.com>
References: <20191126005400.264480-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 3/5] drm/i915/psr: Enable ALPM lock timeout
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
aXNwbGF5L2ludGVsX3Bzci5jCmluZGV4IDFhMWFjM2Y0NmJmNy4uYTc1N2I2NDQ1ZjIxIDEwMDY0
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
QCBzdGF0aWMgaW50IHBzcl9nZXRfc3RhdHVzX2FuZF9lcnJvcl9zdGF0dXMoc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCwKIAlyZXR1cm4gMDsKIH0KIAorc3RhdGljIHZvaWQgcHNyX2FscG1fY2hl
Y2soc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYgPSBkcF90b19pOTE1KGludGVsX2RwKTsKKwlzdHJ1Y3QgZHJtX2RwX2F1eCAq
YXV4ID0gJmludGVsX2RwLT5hdXg7CisJc3RydWN0IGk5MTVfcHNyICpwc3IgPSAmZGV2X3ByaXYt
PnBzcjsKKwl1OCB2YWw7CisJaW50IHI7CisKKwlpZiAoIXBzci0+cHNyMl9lbmFibGVkKQorCQly
ZXR1cm47CisKKwlyID0gZHJtX2RwX2RwY2RfcmVhZGIoYXV4LCBEUF9SRUNFSVZFUl9BTFBNX1NU
QVRVUywgJnZhbCk7CisJaWYgKHIgIT0gMSkgeworCQlEUk1fRVJST1IoIkVycm9yIHJlYWRpbmcg
QUxQTSBzdGF0dXNcbiIpOworCQlyZXR1cm47CisJfQorCisJaWYgKHZhbCAmIERQX0FMUE1fTE9D
S19USU1FT1VUX0VSUk9SKSB7CisJCWludGVsX3Bzcl9kaXNhYmxlX2xvY2tlZChpbnRlbF9kcCk7
CisJCXBzci0+c2lua19ub3RfcmVsaWFibGUgPSB0cnVlOworCQlEUk1fREVCVUdfS01TKCJBTFBN
IGxvY2sgdGltZW91dCBlcnJvciwgZGlzYWJsaW5nIFBTUlxuIik7CisKKwkJLyogQ2xlYXJpbmcg
ZXJyb3IgKi8KKwkJZHJtX2RwX2RwY2Rfd3JpdGViKGF1eCwgRFBfUkVDRUlWRVJfQUxQTV9TVEFU
VVMsIHZhbCk7CisJfQorfQorCiB2b2lkIGludGVsX3Bzcl9zaG9ydF9wdWxzZShzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9
IGRwX3RvX2k5MTUoaW50ZWxfZHApOwpAQCAtMTQ0Niw2ICsxNDc4LDkgQEAgdm9pZCBpbnRlbF9w
c3Jfc2hvcnRfcHVsc2Uoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKIAkJCSAgZXJyb3Jfc3Rh
dHVzICYgfmVycm9ycyk7CiAJLyogY2xlYXIgc3RhdHVzIHJlZ2lzdGVyICovCiAJZHJtX2RwX2Rw
Y2Rfd3JpdGViKCZpbnRlbF9kcC0+YXV4LCBEUF9QU1JfRVJST1JfU1RBVFVTLCBlcnJvcl9zdGF0
dXMpOworCisJcHNyX2FscG1fY2hlY2soaW50ZWxfZHApOworCiBleGl0OgogCW11dGV4X3VubG9j
aygmcHNyLT5sb2NrKTsKIH0KLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
