Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFFB9151B95
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 14:43:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 191EB6EEC1;
	Tue,  4 Feb 2020 13:43:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9285F6EEC1
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 13:43:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 05:43:17 -0800
X-IronPort-AV: E=Sophos;i="5.70,401,1574150400"; d="scan'208";a="225507367"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 05:43:15 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Feb 2020 15:42:28 +0200
Message-Id: <3d045ba95b020f057ab27601ab8486cf0602da96.1580823606.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1580823606.git.jani.nikula@intel.com>
References: <cover.1580823606.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 9/9] drm/i915: remove the now redundant
 i915_driver_modeset_* call layer
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIGk5MTVfZHJpdmVyX21vZGVzZXRfKigpIGZ1bmN0aW9ucyBoYXZlIGJlY29tZSBpcnJlbGV2
YW50LCBhbmQgdGhlCmV4dHJhIGxheWVyIGNhbiBiZSByZW1vdmVkLgoKQ2M6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEphbmkg
TmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuYyB8IDc2ICsrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDU3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5jCmluZGV4IGZjYTY5M2FkNmNkNy4uYzA5N2RjZWQwZDliIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmMKQEAgLTI3Miw1OCArMjcyLDYgQEAgaW50ZWxfdGVhcmRvd25fbWNoYmFyKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkJcmVsZWFzZV9yZXNvdXJjZSgmZGV2
X3ByaXYtPm1jaF9yZXMpOwogfQogCi0vKiBwYXJ0ICMxOiBjYWxsIGJlZm9yZSBpcnEgaW5zdGFs
bCAqLwotc3RhdGljIGludCBpOTE1X2RyaXZlcl9tb2Rlc2V0X3Byb2JlX25vaXJxKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1KQotewotCXJldHVybiBpbnRlbF9tb2Rlc2V0X2luaXRfbm9p
cnEoaTkxNSk7Ci19Ci0KLS8qIHBhcnQgIzI6IGNhbGwgYWZ0ZXIgaXJxIGluc3RhbGwgKi8KLXN0
YXRpYyBpbnQgaTkxNV9kcml2ZXJfbW9kZXNldF9wcm9iZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSkKLXsKLQlpbnQgcmV0OwotCi0JLyogSW1wb3J0YW50OiBUaGUgb3V0cHV0IHNldHVw
IGZ1bmN0aW9ucyBjYWxsZWQgYnkgbW9kZXNldF9pbml0IG5lZWQKLQkgKiB3b3JraW5nIGlycXMg
Zm9yIGUuZy4gZ21idXMgYW5kIGRwIGF1eCB0cmFuc2ZlcnMuICovCi0JcmV0ID0gaW50ZWxfbW9k
ZXNldF9pbml0X25vZ2VtKGk5MTUpOwotCWlmIChyZXQpCi0JCWdvdG8gb3V0OwotCi0JcmV0ID0g
aTkxNV9nZW1faW5pdChpOTE1KTsKLQlpZiAocmV0KQotCQlnb3RvIGNsZWFudXBfbW9kZXNldDsK
LQotCXJldCA9IGludGVsX21vZGVzZXRfaW5pdChpOTE1KTsKLQlpZiAocmV0KQotCQlnb3RvIGNs
ZWFudXBfZ2VtOwotCi0JcmV0dXJuIDA7Ci0KLWNsZWFudXBfZ2VtOgotCWk5MTVfZ2VtX3N1c3Bl
bmQoaTkxNSk7Ci0JaTkxNV9nZW1fZHJpdmVyX3JlbW92ZShpOTE1KTsKLQlpOTE1X2dlbV9kcml2
ZXJfcmVsZWFzZShpOTE1KTsKLWNsZWFudXBfbW9kZXNldDoKLQkvKiBGSVhNRSAqLwotCWludGVs
X21vZGVzZXRfZHJpdmVyX3JlbW92ZShpOTE1KTsKLQlpbnRlbF9pcnFfdW5pbnN0YWxsKGk5MTUp
OwotCWludGVsX21vZGVzZXRfZHJpdmVyX3JlbW92ZV9ub2lycShpOTE1KTsKLW91dDoKLQlyZXR1
cm4gcmV0OwotfQotCi0vKiBwYXJ0ICMxOiBjYWxsIGJlZm9yZSBpcnEgdW5pbnN0YWxsICovCi1z
dGF0aWMgdm9pZCBpOTE1X2RyaXZlcl9tb2Rlc2V0X3JlbW92ZShzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSkKLXsKLQlpbnRlbF9tb2Rlc2V0X2RyaXZlcl9yZW1vdmUoaTkxNSk7Ci19Ci0K
LS8qIHBhcnQgIzI6IGNhbGwgYWZ0ZXIgaXJxIHVuaW5zdGFsbCAqLwotc3RhdGljIHZvaWQgaTkx
NV9kcml2ZXJfbW9kZXNldF9yZW1vdmVfbm9pcnEoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUpCi17Ci0JaW50ZWxfbW9kZXNldF9kcml2ZXJfcmVtb3ZlX25vaXJxKGk5MTUpOwotfQotCiBz
dGF0aWMgdm9pZCBpbnRlbF9pbml0X2RwaW8oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2KQogewogCS8qCkBAIC0xNTAyLDcgKzE0NTAsNyBAQCBpbnQgaTkxNV9kcml2ZXJfcHJvYmUo
c3RydWN0IHBjaV9kZXYgKnBkZXYsIGNvbnN0IHN0cnVjdCBwY2lfZGV2aWNlX2lkICplbnQpCiAJ
aWYgKHJldCA8IDApCiAJCWdvdG8gb3V0X2NsZWFudXBfbW1pbzsKIAotCXJldCA9IGk5MTVfZHJp
dmVyX21vZGVzZXRfcHJvYmVfbm9pcnEoaTkxNSk7CisJcmV0ID0gaW50ZWxfbW9kZXNldF9pbml0
X25vaXJxKGk5MTUpOwogCWlmIChyZXQgPCAwKQogCQlnb3RvIG91dF9jbGVhbnVwX2h3OwogCkBA
IC0xNTEwLDEwICsxNDU4LDIwIEBAIGludCBpOTE1X2RyaXZlcl9wcm9iZShzdHJ1Y3QgcGNpX2Rl
diAqcGRldiwgY29uc3Qgc3RydWN0IHBjaV9kZXZpY2VfaWQgKmVudCkKIAlpZiAocmV0KQogCQln
b3RvIG91dF9jbGVhbnVwX21vZGVzZXQ7CiAKLQlyZXQgPSBpOTE1X2RyaXZlcl9tb2Rlc2V0X3By
b2JlKGk5MTUpOwotCWlmIChyZXQgPCAwKQorCS8qIEltcG9ydGFudDogVGhlIG91dHB1dCBzZXR1
cCBmdW5jdGlvbnMgY2FsbGVkIGJ5IG1vZGVzZXRfaW5pdCBuZWVkCisJICogd29ya2luZyBpcnFz
IGZvciBlLmcuIGdtYnVzIGFuZCBkcCBhdXggdHJhbnNmZXJzLiAqLworCXJldCA9IGludGVsX21v
ZGVzZXRfaW5pdF9ub2dlbShpOTE1KTsKKwlpZiAocmV0KQogCQlnb3RvIG91dF9jbGVhbnVwX2ly
cTsKIAorCXJldCA9IGk5MTVfZ2VtX2luaXQoaTkxNSk7CisJaWYgKHJldCkKKwkJZ290byBvdXRf
Y2xlYW51cF9tb2Rlc2V0OworCisJcmV0ID0gaW50ZWxfbW9kZXNldF9pbml0KGk5MTUpOworCWlm
IChyZXQpCisJCWdvdG8gb3V0X2NsZWFudXBfZ2VtOworCiAJaTkxNV9kcml2ZXJfcmVnaXN0ZXIo
aTkxNSk7CiAKIAllbmFibGVfcnBtX3dha2VyZWZfYXNzZXJ0cygmaTkxNS0+cnVudGltZV9wbSk7
CkBAIC0xNTIyLDYgKzE0ODAsMTAgQEAgaW50IGk5MTVfZHJpdmVyX3Byb2JlKHN0cnVjdCBwY2lf
ZGV2ICpwZGV2LCBjb25zdCBzdHJ1Y3QgcGNpX2RldmljZV9pZCAqZW50KQogCiAJcmV0dXJuIDA7
CiAKK291dF9jbGVhbnVwX2dlbToKKwlpOTE1X2dlbV9zdXNwZW5kKGk5MTUpOworCWk5MTVfZ2Vt
X2RyaXZlcl9yZW1vdmUoaTkxNSk7CisJaTkxNV9nZW1fZHJpdmVyX3JlbGVhc2UoaTkxNSk7CiBv
dXRfY2xlYW51cF9pcnE6CiAJaW50ZWxfaXJxX3VuaW5zdGFsbChpOTE1KTsKIG91dF9jbGVhbnVw
X21vZGVzZXQ6CkBAIC0xNTY1LDExICsxNTI3LDExIEBAIHZvaWQgaTkxNV9kcml2ZXJfcmVtb3Zl
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCiAJaW50ZWxfZ3Z0X2RyaXZlcl9yZW1v
dmUoaTkxNSk7CiAKLQlpOTE1X2RyaXZlcl9tb2Rlc2V0X3JlbW92ZShpOTE1KTsKKwlpbnRlbF9t
b2Rlc2V0X2RyaXZlcl9yZW1vdmUoaTkxNSk7CiAKIAlpbnRlbF9pcnFfdW5pbnN0YWxsKGk5MTUp
OwogCi0JaTkxNV9kcml2ZXJfbW9kZXNldF9yZW1vdmVfbm9pcnEoaTkxNSk7CisJaW50ZWxfbW9k
ZXNldF9kcml2ZXJfcmVtb3ZlX25vaXJxKGk5MTUpOwogCiAJaTkxNV9yZXNldF9lcnJvcl9zdGF0
ZShpOTE1KTsKIAlpOTE1X2dlbV9kcml2ZXJfcmVtb3ZlKGk5MTUpOwotLSAKMi4yMC4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
