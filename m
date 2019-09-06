Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A3EAB4F2
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2019 11:33:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0FAC6E21E;
	Fri,  6 Sep 2019 09:33:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 390306E21B
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2019 09:33:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Sep 2019 02:33:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,472,1559545200"; d="scan'208";a="185737767"
Received: from chlopez-mobl1.amr.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.252.36.202])
 by orsmga003.jf.intel.com with ESMTP; 06 Sep 2019 02:33:22 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Sep 2019 12:32:52 +0300
Message-Id: <20190906093256.26198-10-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190906093256.26198-1-lionel.g.landwerlin@intel.com>
References: <20190906093256.26198-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v15 09/13] drm/i915: add wait flags to
 i915_active_request_retire
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

QW4gdXBjb21pbmcgY2hhbmdlIG5lZWRzIG5vdCB0byBiZSBpbnRlcnJ1cHRlZC4KClNpZ25lZC1v
ZmYtYnk6IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jIHwgNCArKystCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5oIHwgNSArKy0tLQogMiBmaWxlcyBjaGFuZ2VkLCA1
IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9hY3RpdmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZl
LmMKaW5kZXggNmE0NDdmMWQwMTEwLi5jODA4YzI4Yzk0NjQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9hY3RpdmUuYwpAQCAtNDI1LDcgKzQyNSw5IEBAIGludCBpOTE1X2FjdGl2ZV93YWl0KHN0cnVj
dCBpOTE1X2FjdGl2ZSAqcmVmKQogCQkJYnJlYWs7CiAJCX0KIAotCQllcnIgPSBpOTE1X2FjdGl2
ZV9yZXF1ZXN0X3JldGlyZSgmaXQtPmJhc2UsIEJLTChyZWYpKTsKKwkJZXJyID0gaTkxNV9hY3Rp
dmVfcmVxdWVzdF9yZXRpcmUoJml0LT5iYXNlLAorCQkJCQkJIEk5MTVfV0FJVF9JTlRFUlJVUFRJ
QkxFLAorCQkJCQkJIEJLTChyZWYpKTsKIAkJaWYgKGVycikKIAkJCWJyZWFrOwogCX0KZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmggYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2FjdGl2ZS5oCmluZGV4IGY5NTA1OGY5OTA1Ny4uMzVhNjA4OWI0NGZkIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5oCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmgKQEAgLTMwOSw2ICszMDksNyBAQCBpOTE1X2Fj
dGl2ZV9yZXF1ZXN0X2lzc2V0KGNvbnN0IHN0cnVjdCBpOTE1X2FjdGl2ZV9yZXF1ZXN0ICphY3Rp
dmUpCiAgKi8KIHN0YXRpYyBpbmxpbmUgaW50IF9fbXVzdF9jaGVjawogaTkxNV9hY3RpdmVfcmVx
dWVzdF9yZXRpcmUoc3RydWN0IGk5MTVfYWN0aXZlX3JlcXVlc3QgKmFjdGl2ZSwKKwkJCSAgIHVu
c2lnbmVkIGludCBmbGFncywKIAkJCSAgIHN0cnVjdCBtdXRleCAqbXV0ZXgpCiB7CiAJc3RydWN0
IGk5MTVfcmVxdWVzdCAqcmVxdWVzdDsKQEAgLTMxOCw5ICszMTksNyBAQCBpOTE1X2FjdGl2ZV9y
ZXF1ZXN0X3JldGlyZShzdHJ1Y3QgaTkxNV9hY3RpdmVfcmVxdWVzdCAqYWN0aXZlLAogCWlmICgh
cmVxdWVzdCkKIAkJcmV0dXJuIDA7CiAKLQlyZXQgPSBpOTE1X3JlcXVlc3Rfd2FpdChyZXF1ZXN0
LAotCQkJCUk5MTVfV0FJVF9JTlRFUlJVUFRJQkxFLAotCQkJCU1BWF9TQ0hFRFVMRV9USU1FT1VU
KTsKKwlyZXQgPSBpOTE1X3JlcXVlc3Rfd2FpdChyZXF1ZXN0LCBmbGFncywgTUFYX1NDSEVEVUxF
X1RJTUVPVVQpOwogCWlmIChyZXQgPCAwKQogCQlyZXR1cm4gcmV0OwogCi0tIAoyLjIzLjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
