Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 460B5EAB8F
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2019 09:30:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CF616EDB3;
	Thu, 31 Oct 2019 08:30:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38FC56EDB3
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2019 08:30:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Oct 2019 01:30:33 -0700
X-IronPort-AV: E=Sophos;i="5.68,250,1569308400"; d="scan'208";a="190551981"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.17])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Oct 2019 01:30:30 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 31 Oct 2019 09:29:56 +0100
Message-Id: <20191031082958.10755-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [RESEND PATCH 1/3] drm/i915/dmabuf: Implement pwrite()
 callback
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgbmVlZCBkbWFidWYgc3BlY2lmaWMgcHdyaXRlKCkgY2FsbGJhY2sgdXRpbGl6aW5nIGRtYS1i
dWYgQVBJLApvdGhlcndpc2UgR0VNX1BXUklURSBJT0NUTCB3aWxsIG5vIGxvbmdlciB3b3JrIHdp
dGggZG1hLWJ1ZiBiYWNrZWQKKGkuZS4sIFBSSU1FIGltcG9ydGVkKSBvYmplY3RzIG9uIGhhcmR3
YXJlIHdpdGggbm8gbWFwcGFibGUgYXBlcnR1cmUuCgpTaWduZWQtb2ZmLWJ5OiBKYW51c3ogS3J6
eXN6dG9maWsgPGphbnVzei5rcnp5c3p0b2Zpa0BsaW51eC5pbnRlbC5jb20+CkNjOiBEYW5pZWxl
IENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgpDYzogTWlj
aGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5jIHwgNTUgKysrKysrKysrKysrKysrKysr
KysrKwogMSBmaWxlIGNoYW5nZWQsIDU1IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMKaW5kZXggOTZjZTk1YzhhYzVhLi45M2VlYTEwMzFj
ODIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFidWYu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMKQEAgLTI0
OCw5ICsyNDgsNjQgQEAgc3RhdGljIHZvaWQgaTkxNV9nZW1fb2JqZWN0X3B1dF9wYWdlc19kbWFi
dWYoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIAkJCQkgRE1BX0JJRElSRUNUSU9O
QUwpOwogfQogCitzdGF0aWMgaW50IGk5MTVfZ2VtX29iamVjdF9wd3JpdGVfZG1hYnVmKHN0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCisJCQkJCSBjb25zdCBzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX3B3cml0ZSAqYXJncykKK3sKKwlzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmID0gb2JqLT5iYXNl
LmltcG9ydF9hdHRhY2gtPmRtYWJ1ZjsKKwl2b2lkIF9fdXNlciAqdXNlcl9kYXRhID0gdTY0X3Rv
X3VzZXJfcHRyKGFyZ3MtPmRhdGFfcHRyKTsKKwlzdHJ1Y3QgZmlsZSAqZmlsZSA9IGRtYWJ1Zi0+
ZmlsZTsKKwljb25zdCBzdHJ1Y3QgZmlsZV9vcGVyYXRpb25zICpmb3AgPSBmaWxlLT5mX29wOwor
CXZvaWQgX19mb3JjZSAqdmFkZHI7CisJaW50IHJldDsKKworCWlmIChmb3AtPndyaXRlKSB7CisJ
CWxvZmZfdCBvZmZzZXQgPSBhcmdzLT5vZmZzZXQ7CisKKwkJLyoKKwkJICogZm9wLT53cml0ZSgp
IGlzIHN1cHBvc2VkIHRvIGNhbGwgZG1hX2J1Zl9iZWdpbl9jcHVfYWNjZXNzKCkKKwkJICogaWYg
T19TWU5DIGZsYWcgaXMgc2V0LCBhdm9pZCBjYWxsaW5nIGl0IHR3aWNlCisJCSAqLworCQlpZiAo
IShmaWxlLT5mX2ZsYWdzICYgT19TWU5DKSkgeworCQkJcmV0ID0gZG1hX2J1Zl9iZWdpbl9jcHVf
YWNjZXNzKGRtYWJ1ZiwgRE1BX1RPX0RFVklDRSk7CisJCQlpZiAocmV0KQorCQkJCXJldHVybiBy
ZXQ7CisJCX0KKworCQlyZXQgPSBmb3AtPndyaXRlKGZpbGUsIHVzZXJfZGF0YSwgYXJncy0+c2l6
ZSwgJm9mZnNldCk7CisKKwkJaWYgKCEoZmlsZS0+Zl9mbGFncyAmIE9fU1lOQykpCisJCQlkbWFf
YnVmX2VuZF9jcHVfYWNjZXNzKGRtYWJ1ZiwgRE1BX1RPX0RFVklDRSk7CisKKwkJaWYgKCFyZXQp
CisJCQlyZXR1cm4gMDsKKwl9CisKKwkvKiBkbWEtYnVmIGZpbGUgLndyaXRlKCkgbm90IHN1cHBv
cnRlZCBvciBmYWlsZWQsIHRyeSBkbWFfYnVmX3ZtYXAoKSAqLworCXJldCA9IGRtYV9idWZfYmVn
aW5fY3B1X2FjY2VzcyhkbWFidWYsIERNQV9UT19ERVZJQ0UpOworCWlmIChyZXQpCisJCXJldHVy
biByZXQ7CisKKwl2YWRkciA9IGRtYV9idWZfdm1hcChkbWFidWYpOworCWlmICghdmFkZHIpCisJ
CWdvdG8gb3V0X2VycjsKKworCXJldCA9IGNvcHlfZnJvbV91c2VyKHZhZGRyICsgYXJncy0+b2Zm
c2V0LCB1c2VyX2RhdGEsIGFyZ3MtPnNpemUpOworCWRtYV9idWZfdnVubWFwKGRtYWJ1ZiwgdmFk
ZHIpOworCWlmICghcmV0KQorCQlnb3RvIG91dF9lbmQ7CisKK291dF9lcnI6CisJLyogZmFsbCBi
YWNrIHRvIEdUVCBtYXBwaW5nICovCisJcmV0ID0gLUVOT0RFVjsKK291dF9lbmQ6CisJZG1hX2J1
Zl9lbmRfY3B1X2FjY2VzcyhkbWFidWYsIERNQV9UT19ERVZJQ0UpOworCXJldHVybiByZXQ7Cit9
CisKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdF9vcHMgaTkxNV9nZW1f
b2JqZWN0X2RtYWJ1Zl9vcHMgPSB7CiAJLmdldF9wYWdlcyA9IGk5MTVfZ2VtX29iamVjdF9nZXRf
cGFnZXNfZG1hYnVmLAogCS5wdXRfcGFnZXMgPSBpOTE1X2dlbV9vYmplY3RfcHV0X3BhZ2VzX2Rt
YWJ1ZiwKKwkucHdyaXRlID0gaTkxNV9nZW1fb2JqZWN0X3B3cml0ZV9kbWFidWYsCiB9OwogCiBz
dHJ1Y3QgZHJtX2dlbV9vYmplY3QgKmk5MTVfZ2VtX3ByaW1lX2ltcG9ydChzdHJ1Y3QgZHJtX2Rl
dmljZSAqZGV2LAotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
