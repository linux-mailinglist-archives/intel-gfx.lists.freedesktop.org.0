Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B0C79D02
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 01:47:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7981789F8E;
	Mon, 29 Jul 2019 23:47:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7ED0E89F6E
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2019 23:47:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jul 2019 16:47:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,324,1559545200"; d="scan'208";a="195590645"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga004.fm.intel.com with ESMTP; 29 Jul 2019 16:47:52 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Jul 2019 16:47:23 -0700
Message-Id: <20190729234727.28286-3-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190729234727.28286-1-daniele.ceraolospurio@intel.com>
References: <20190729234727.28286-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/6] drm/i915: move gt_cleanup_early out of
 gem_cleanup_early
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

V2UgZG9uJ3QgY2FsbCB0aGUgaW5pdF9lYXJseSBmdW5jdGlvbiBmcm9tIHdpdGhpbiB0aGUgZ2Vt
IGNvZGUsIHNvIHdlCnNob3VsZG4ndCBkbyBpdCBmb3IgdGhlIGNsZWFudXAgZWl0aGVyLgoKU2ln
bmVkLW9mZi1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlv
QGludGVsLmNvbT4KQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpD
YzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGxpbnV4LmludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIHwgMiArKwogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW0uYyB8IDIgLS0KIDIgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCmluZGV4IGYyZDNkNzU0YWYzNy4u
OTM0ZTYwNWUyNDY2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKQEAgLTk1MSw2ICs5NTEsNyBA
QCBzdGF0aWMgaW50IGk5MTVfZHJpdmVyX2Vhcmx5X3Byb2JlKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdikKIAlpbnRlbF91Y19jbGVhbnVwX2Vhcmx5KCZkZXZfcHJpdi0+Z3QudWMp
OwogCWk5MTVfZ2VtX2NsZWFudXBfZWFybHkoZGV2X3ByaXYpOwogZXJyX3dvcmtxdWV1ZXM6CisJ
aW50ZWxfZ3RfY2xlYW51cF9lYXJseSgmZGV2X3ByaXYtPmd0KTsKIAlpOTE1X3dvcmtxdWV1ZXNf
Y2xlYW51cChkZXZfcHJpdik7CiAJcmV0dXJuIHJldDsKIH0KQEAgLTk2Niw2ICs5NjcsNyBAQCBz
dGF0aWMgdm9pZCBpOTE1X2RyaXZlcl9sYXRlX3JlbGVhc2Uoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2KQogCWludGVsX3Bvd2VyX2RvbWFpbnNfY2xlYW51cChkZXZfcHJpdik7CiAJ
aW50ZWxfdWNfY2xlYW51cF9lYXJseSgmZGV2X3ByaXYtPmd0LnVjKTsKIAlpOTE1X2dlbV9jbGVh
bnVwX2Vhcmx5KGRldl9wcml2KTsKKwlpbnRlbF9ndF9jbGVhbnVwX2Vhcmx5KCZkZXZfcHJpdi0+
Z3QpOwogCWk5MTVfd29ya3F1ZXVlc19jbGVhbnVwKGRldl9wcml2KTsKIAogCXBtX3Fvc19yZW1v
dmVfcmVxdWVzdCgmZGV2X3ByaXYtPnNiX3Fvcyk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwppbmRl
eCBhZTRlN2NjM2UzZjkuLjJjN2RjMzQwNDc1OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCkBA
IC0xNjc0LDggKzE2NzQsNiBAQCB2b2lkIGk5MTVfZ2VtX2NsZWFudXBfZWFybHkoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCUdFTV9CVUdfT04oYXRvbWljX3JlYWQoJmRldl9w
cml2LT5tbS5mcmVlX2NvdW50KSk7CiAJV0FSTl9PTihkZXZfcHJpdi0+bW0uc2hyaW5rX2NvdW50
KTsKIAotCWludGVsX2d0X2NsZWFudXBfZWFybHkoJmRldl9wcml2LT5ndCk7Ci0KIAlpOTE1X2dl
bWZzX2ZpbmkoZGV2X3ByaXYpOwogfQogCi0tIAoyLjIyLjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
