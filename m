Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51BBD4EFE5
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2019 22:14:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23E176E91F;
	Fri, 21 Jun 2019 20:14:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CEE66E91F
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jun 2019 20:14:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jun 2019 13:14:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,401,1557212400"; d="scan'208";a="162987545"
Received: from rmfosha-dev-1.fm.intel.com ([10.19.83.123])
 by orsmga003.jf.intel.com with ESMTP; 21 Jun 2019 13:14:33 -0700
From: "Robert M. Fosha" <robert.m.fosha@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jun 2019 13:09:40 -0700
Message-Id: <20190621200940.32665-1-robert.m.fosha@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/guc: Add debug capture of GuC exception
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

RGV0ZWN0IEd1QyBmaXJtd2FyZSBsb2FkIGZhaWx1cmUgZHVlIHRvIGFuIGV4Y2VwdGlvbiBkdXJp
bmcgZXhlY3V0aW9uCmluIEd1QyBmaXJtd2FyZS4gT3V0cHV0IHRoZSBHdUMgRUlQIHdoZXJlIGV4
Y3BldGlvbiBvY2N1cmVkIHRvIGRtZXNnCmZvciBHdUMgZGVidWcgaW5mb3JtYXRpb24uCgpTaWdu
ZWQtb2ZmLWJ5OiBSb2JlcnQgTS4gRm9zaGEgPHJvYmVydC5tLmZvc2hhQGludGVsLmNvbT4KQ2M6
IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+
CkNjOiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfZncuYyAgfCA3ICsrKysrKysKIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2d1Y19yZWcuaCB8IDEgKwogMiBmaWxlcyBjaGFuZ2VkLCA4IGlu
c2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNf
ZncuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19mdy5jCmluZGV4IDcyY2RhZmQ5
NjM2YS4uOTBjYjY1NjQxZDYwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9ndWNfZncuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfZncuYwpAQCAt
MTk3LDYgKzE5Nyw3IEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBndWNfcmVhZHkoc3RydWN0IGludGVs
X2d1YyAqZ3VjLCB1MzIgKnN0YXR1cykKIAogc3RhdGljIGludCBndWNfd2FpdF91Y29kZShzdHJ1
Y3QgaW50ZWxfZ3VjICpndWMpCiB7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBn
dWNfdG9faTkxNShndWMpOwogCXUzMiBzdGF0dXM7CiAJaW50IHJldDsKIApAQCAtMjE2LDYgKzIx
NywxMiBAQCBzdGF0aWMgaW50IGd1Y193YWl0X3Vjb2RlKHN0cnVjdCBpbnRlbF9ndWMgKmd1YykK
IAkJcmV0ID0gLUVOT0VYRUM7CiAJfQogCisJaWYgKChzdGF0dXMgJiBHU19VS0VSTkVMX01BU0sp
ID09IEdTX1VLRVJORUxfRVhDRVBUSU9OKSB7CisJCURSTV9FUlJPUigiR3VDIGZ3IGV4Y2VwdGlv
bi4gR3VDIHVLZXJuZWwgRUlQOiAlI3hcbiIsCisJCQkgIGludGVsX3VuY29yZV9yZWFkKCZpOTE1
LT51bmNvcmUsIFNPRlRfU0NSQVRDSCgxMykpKTsKKwkJcmV0ID0gLUVOT0VYRUM7CisJfQorCiAJ
aWYgKHJldCA9PSAwICYmICFndWNfeGZlcl9jb21wbGV0ZWQoZ3VjLCAmc3RhdHVzKSkgewogCQlE
Uk1fRVJST1IoIkd1QyBpcyByZWFkeSwgYnV0IHRoZSB4ZmVyICUwOHggaXMgaW5jb21wbGV0ZVxu
IiwKIAkJCSAgc3RhdHVzKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2d1Y19yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19yZWcuaAppbmRleCBh
MjE0ZjhiNzE5MjkuLmQ5MGI4OGZhZGI1ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfZ3VjX3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19y
ZWcuaApAQCAtMzcsNiArMzcsNyBAQAogI2RlZmluZSAgIEdTX1VLRVJORUxfTUFTSwkJICAoMHhG
RiA8PCBHU19VS0VSTkVMX1NISUZUKQogI2RlZmluZSAgIEdTX1VLRVJORUxfTEFQSUNfRE9ORQkJ
ICAoMHgzMCA8PCBHU19VS0VSTkVMX1NISUZUKQogI2RlZmluZSAgIEdTX1VLRVJORUxfRFBDX0VS
Uk9SCQkgICgweDYwIDw8IEdTX1VLRVJORUxfU0hJRlQpCisjZGVmaW5lICAgR1NfVUtFUk5FTF9F
WENFUFRJT04JCSAgKDB4NzAgPDwgR1NfVUtFUk5FTF9TSElGVCkKICNkZWZpbmUgICBHU19VS0VS
TkVMX1JFQURZCQkgICgweEYwIDw8IEdTX1VLRVJORUxfU0hJRlQpCiAjZGVmaW5lICAgR1NfTUlB
X1NISUZUCQkJMTYKICNkZWZpbmUgICBHU19NSUFfTUFTSwkJCSAgKDB4MDcgPDwgR1NfTUlBX1NI
SUZUKQotLSAKMi4yMS4wLjUuZ2FlYjU4MmE5ODMKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
