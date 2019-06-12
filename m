Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2CF42ED5
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2019 20:38:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0EFB8982D;
	Wed, 12 Jun 2019 18:38:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 139BF8982A
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jun 2019 18:38:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jun 2019 11:38:13 -0700
X-ExtLoop1: 1
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga005.fm.intel.com with ESMTP; 12 Jun 2019 11:38:13 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Jun 2019 11:37:44 -0700
Message-Id: <20190612183748.7693-6-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190612183748.7693-1-daniele.ceraolospurio@intel.com>
References: <20190612183748.7693-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 5/8] drm/i915: move a few more functions to
 accept the rpm structure
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

Rm9jdXNpbmcgb24gdGhlIGZ1bmN0aW9ucyBjYWxsZWQgaW4gZmV3IHBsYWNlcy4KClNpZ25lZC1v
ZmYtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgICAgICAgICAg
IHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgICAgICAgICAgICAgICB8
IDIyICsrKysrKysrKystLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1bnRp
bWVfcG0uYyAgICAgICB8IDE5ICsrKysrKystLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3J1bnRpbWVfcG0uaCAgICAgICB8IDEyICsrKysrLS0tLS0KIC4uLi9ncHUvZHJtL2k5
MTUvc2VsZnRlc3RzL21vY2tfZ2VtX2RldmljZS5jICB8ICAyICstCiA1IGZpbGVzIGNoYW5nZWQs
IDI4IGluc2VydGlvbnMoKyksIDI5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
ZWJ1Z2ZzLmMKaW5kZXggYjA3MGU2ZjM3ODBjLi40NjAxNDQ0NGFkMmQgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZGVidWdmcy5jCkBAIC0yNjI4LDcgKzI2MjgsNyBAQCBzdGF0aWMgaW50IGk5MTVf
cnVudGltZV9wbV9zdGF0dXMoc3RydWN0IHNlcV9maWxlICptLCB2b2lkICp1bnVzZWQpCiAJaWYg
KElTX0VOQUJMRUQoQ09ORklHX0RSTV9JOTE1X0RFQlVHX1JVTlRJTUVfUE0pKSB7CiAJCXN0cnVj
dCBkcm1fcHJpbnRlciBwID0gZHJtX3NlcV9maWxlX3ByaW50ZXIobSk7CiAKLQkJcHJpbnRfaW50
ZWxfcnVudGltZV9wbV93YWtlcmVmKGRldl9wcml2LCAmcCk7CisJCXByaW50X2ludGVsX3J1bnRp
bWVfcG1fd2FrZXJlZigmZGV2X3ByaXYtPnJ1bnRpbWVfcG0sICZwKTsKIAl9CiAKIAlyZXR1cm4g
MDsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCmluZGV4IGZkNTcwMzFkZWU0Ny4uNDJlMDk5YzJiMjU5
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKQEAgLTkwOSw3ICs5MDksNyBAQCBzdGF0aWMgaW50
IGk5MTVfZHJpdmVyX2luaXRfZWFybHkoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KQogCW11dGV4X2luaXQoJmRldl9wcml2LT5oZGNwX2NvbXBfbXV0ZXgpOwogCiAJaTkxNV9tZW1j
cHlfaW5pdF9lYXJseShkZXZfcHJpdik7Ci0JaW50ZWxfcnVudGltZV9wbV9pbml0X2Vhcmx5KGRl
dl9wcml2KTsKKwlpbnRlbF9ydW50aW1lX3BtX2luaXRfZWFybHkoJmRldl9wcml2LT5ydW50aW1l
X3BtKTsKIAogCXJldCA9IGk5MTVfd29ya3F1ZXVlc19pbml0KGRldl9wcml2KTsKIAlpZiAocmV0
IDwgMCkKQEAgLTE3NTIsNyArMTc1Miw3IEBAIHN0YXRpYyB2b2lkIGk5MTVfZHJpdmVyX3JlZ2lz
dGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkJZHJtX2ttc19oZWxwZXJf
cG9sbF9pbml0KGRldik7CiAKIAlpbnRlbF9wb3dlcl9kb21haW5zX2VuYWJsZShkZXZfcHJpdik7
Ci0JaW50ZWxfcnVudGltZV9wbV9lbmFibGUoZGV2X3ByaXYpOworCWludGVsX3J1bnRpbWVfcG1f
ZW5hYmxlKCZkZXZfcHJpdi0+cnVudGltZV9wbSk7CiB9CiAKIC8qKgpAQCAtMTc2MSw3ICsxNzYx
LDcgQEAgc3RhdGljIHZvaWQgaTkxNV9kcml2ZXJfcmVnaXN0ZXIoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KQogICovCiBzdGF0aWMgdm9pZCBpOTE1X2RyaXZlcl91bnJlZ2lzdGVy
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHsKLQlpbnRlbF9ydW50aW1lX3Bt
X2Rpc2FibGUoZGV2X3ByaXYpOworCWludGVsX3J1bnRpbWVfcG1fZGlzYWJsZSgmZGV2X3ByaXYt
PnJ1bnRpbWVfcG0pOwogCWludGVsX3Bvd2VyX2RvbWFpbnNfZGlzYWJsZShkZXZfcHJpdik7CiAK
IAlpbnRlbF9mYmRldl91bnJlZ2lzdGVyKGRldl9wcml2KTsKQEAgLTE5NzgsMTYgKzE5NzgsMTcg
QEAgdm9pZCBpOTE1X2RyaXZlcl91bmxvYWQoc3RydWN0IGRybV9kZXZpY2UgKmRldikKIHN0YXRp
YyB2b2lkIGk5MTVfZHJpdmVyX3JlbGVhc2Uoc3RydWN0IGRybV9kZXZpY2UgKmRldikKIHsKIAlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRldik7CisJc3RydWN0
IGludGVsX3J1bnRpbWVfcG0gKnJwbSA9ICZkZXZfcHJpdi0+cnVudGltZV9wbTsKIAotCWRpc2Fi
bGVfcnBtX3dha2VyZWZfYXNzZXJ0cygmZGV2X3ByaXYtPnJ1bnRpbWVfcG0pOworCWRpc2FibGVf
cnBtX3dha2VyZWZfYXNzZXJ0cyhycG0pOwogCiAJaTkxNV9nZW1fZmluaShkZXZfcHJpdik7CiAK
IAlpOTE1X2dndHRfY2xlYW51cF9odyhkZXZfcHJpdik7CiAJaTkxNV9kcml2ZXJfY2xlYW51cF9t
bWlvKGRldl9wcml2KTsKIAotCWVuYWJsZV9ycG1fd2FrZXJlZl9hc3NlcnRzKCZkZXZfcHJpdi0+
cnVudGltZV9wbSk7Ci0JaW50ZWxfcnVudGltZV9wbV9jbGVhbnVwKGRldl9wcml2KTsKKwllbmFi
bGVfcnBtX3dha2VyZWZfYXNzZXJ0cyhycG0pOworCWludGVsX3J1bnRpbWVfcG1fY2xlYW51cChy
cG0pOwogCiAJaTkxNV9kcml2ZXJfY2xlYW51cF9lYXJseShkZXZfcHJpdik7CiAJaTkxNV9kcml2
ZXJfZGVzdHJveShkZXZfcHJpdik7CkBAIC0yMTM2LDkgKzIxMzcsMTAgQEAgc3RhdGljIGludCBp
OTE1X2RybV9zdXNwZW5kX2xhdGUoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgYm9vbCBoaWJlcm5h
dGlvbikKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRl
dik7CiAJc3RydWN0IHBjaV9kZXYgKnBkZXYgPSBkZXZfcHJpdi0+ZHJtLnBkZXY7CisJc3RydWN0
IGludGVsX3J1bnRpbWVfcG0gKnJwbSA9ICZkZXZfcHJpdi0+cnVudGltZV9wbTsKIAlpbnQgcmV0
OwogCi0JZGlzYWJsZV9ycG1fd2FrZXJlZl9hc3NlcnRzKCZkZXZfcHJpdi0+cnVudGltZV9wbSk7
CisJZGlzYWJsZV9ycG1fd2FrZXJlZl9hc3NlcnRzKHJwbSk7CiAKIAlpOTE1X2dlbV9zdXNwZW5k
X2xhdGUoZGV2X3ByaXYpOwogCkBAIC0yMTc5LDkgKzIxODEsOSBAQCBzdGF0aWMgaW50IGk5MTVf
ZHJtX3N1c3BlbmRfbGF0ZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCBib29sIGhpYmVybmF0aW9u
KQogCQlwY2lfc2V0X3Bvd2VyX3N0YXRlKHBkZXYsIFBDSV9EM2hvdCk7CiAKIG91dDoKLQllbmFi
bGVfcnBtX3dha2VyZWZfYXNzZXJ0cygmZGV2X3ByaXYtPnJ1bnRpbWVfcG0pOworCWVuYWJsZV9y
cG1fd2FrZXJlZl9hc3NlcnRzKHJwbSk7CiAJaWYgKCFkZXZfcHJpdi0+dW5jb3JlLnVzZXJfZm9y
Y2V3YWtlLmNvdW50KQotCQlpbnRlbF9ydW50aW1lX3BtX2NsZWFudXAoZGV2X3ByaXYpOworCQlp
bnRlbF9ydW50aW1lX3BtX2NsZWFudXAocnBtKTsKIAogCXJldHVybiByZXQ7CiB9CkBAIC0yOTQz
LDcgKzI5NDUsNyBAQCBzdGF0aWMgaW50IGludGVsX3J1bnRpbWVfc3VzcGVuZChzdHJ1Y3QgZGV2
aWNlICprZGV2KQogCX0KIAogCWVuYWJsZV9ycG1fd2FrZXJlZl9hc3NlcnRzKHJwbSk7Ci0JaW50
ZWxfcnVudGltZV9wbV9jbGVhbnVwKGRldl9wcml2KTsKKwlpbnRlbF9ydW50aW1lX3BtX2NsZWFu
dXAocnBtKTsKIAogCWlmIChpbnRlbF91bmNvcmVfYXJtX3VuY2xhaW1lZF9tbWlvX2RldGVjdGlv
bigmZGV2X3ByaXYtPnVuY29yZSkpCiAJCURSTV9FUlJPUigiVW5jbGFpbWVkIGFjY2VzcyBkZXRl
Y3RlZCBwcmlvciB0byBzdXNwZW5kaW5nXG4iKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3J1bnRpbWVfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1
bnRpbWVfcG0uYwppbmRleCAwN2FhYTNlMDY1ODcuLjNkOWVhMzQ5ODY3OSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3J1bnRpbWVfcG0uYwpAQCAtMjYyLDEzICsyNjIsMTIgQEAgdW50cmFj
a19hbGxfaW50ZWxfcnVudGltZV9wbV93YWtlcmVmcyhzdHJ1Y3QgaW50ZWxfcnVudGltZV9wbSAq
cnBtKQogCWR1bXBfYW5kX2ZyZWVfd2FrZXJlZl90cmFja2luZygmZGJnKTsKIH0KIAotdm9pZCBw
cmludF9pbnRlbF9ydW50aW1lX3BtX3dha2VyZWYoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUsCit2b2lkIHByaW50X2ludGVsX3J1bnRpbWVfcG1fd2FrZXJlZihzdHJ1Y3QgaW50ZWxfcnVu
dGltZV9wbSAqcnBtLAogCQkJCSAgICBzdHJ1Y3QgZHJtX3ByaW50ZXIgKnApCiB7CiAJc3RydWN0
IGludGVsX3J1bnRpbWVfcG1fZGVidWcgZGJnID0ge307CiAKIAlkbyB7Ci0JCXN0cnVjdCBpbnRl
bF9ydW50aW1lX3BtICpycG0gPSAmaTkxNS0+cnVudGltZV9wbTsKIAkJdW5zaWduZWQgbG9uZyBh
bGxvYyA9IGRiZy5jb3VudDsKIAkJZGVwb3Rfc3RhY2tfaGFuZGxlX3QgKnM7CiAKQEAgLTUzNyw3
ICs1MzYsNyBAQCB2b2lkIGludGVsX3J1bnRpbWVfcG1fcHV0KHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1LCBpbnRlbF93YWtlcmVmX3Qgd3JlZikKIAogLyoqCiAgKiBpbnRlbF9ydW50aW1l
X3BtX2VuYWJsZSAtIGVuYWJsZSBydW50aW1lIHBtCi0gKiBAaTkxNTogaTkxNSBkZXZpY2UgaW5z
dGFuY2UKKyAqIEBycG06IHRoZSBpbnRlbF9ydW50aW1lX3BtIHN0cnVjdHVyZQogICoKICAqIFRo
aXMgZnVuY3Rpb24gZW5hYmxlcyBydW50aW1lIHBtIGF0IHRoZSBlbmQgb2YgdGhlIGRyaXZlciBs
b2FkIHNlcXVlbmNlLgogICoKQEAgLTU0NSw5ICs1NDQsOCBAQCB2b2lkIGludGVsX3J1bnRpbWVf
cG1fcHV0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBpbnRlbF93YWtlcmVmX3Qgd3Jl
ZikKICAqIHN1Ym9yZGluYXRlIGRpc3BsYXkgcG93ZXIgZG9tYWlucy4gVGhhdCBpcyBkb25lIGJ5
CiAgKiBpbnRlbF9wb3dlcl9kb21haW5zX2VuYWJsZSgpLgogICovCi12b2lkIGludGVsX3J1bnRp
bWVfcG1fZW5hYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQordm9pZCBpbnRlbF9y
dW50aW1lX3BtX2VuYWJsZShzdHJ1Y3QgaW50ZWxfcnVudGltZV9wbSAqcnBtKQogewotCXN0cnVj
dCBpbnRlbF9ydW50aW1lX3BtICpycG0gPSAmaTkxNS0+cnVudGltZV9wbTsKIAlzdHJ1Y3QgZGV2
aWNlICprZGV2ID0gcnBtLT5rZGV2OwogCiAJLyoKQEAgLTU4Nyw5ICs1ODUsOCBAQCB2b2lkIGlu
dGVsX3J1bnRpbWVfcG1fZW5hYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCXBt
X3J1bnRpbWVfcHV0X2F1dG9zdXNwZW5kKGtkZXYpOwogfQogCi12b2lkIGludGVsX3J1bnRpbWVf
cG1fZGlzYWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKK3ZvaWQgaW50ZWxfcnVu
dGltZV9wbV9kaXNhYmxlKHN0cnVjdCBpbnRlbF9ydW50aW1lX3BtICpycG0pCiB7Ci0Jc3RydWN0
IGludGVsX3J1bnRpbWVfcG0gKnJwbSA9ICZpOTE1LT5ydW50aW1lX3BtOwogCXN0cnVjdCBkZXZp
Y2UgKmtkZXYgPSBycG0tPmtkZXY7CiAKIAkvKiBUcmFuc2ZlciBycG0gb3duZXJzaGlwIGJhY2sg
dG8gY29yZSAqLwpAQCAtNjAyLDkgKzU5OSw4IEBAIHZvaWQgaW50ZWxfcnVudGltZV9wbV9kaXNh
YmxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCQlwbV9ydW50aW1lX3B1dChrZGV2
KTsKIH0KIAotdm9pZCBpbnRlbF9ydW50aW1lX3BtX2NsZWFudXAoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUpCit2b2lkIGludGVsX3J1bnRpbWVfcG1fY2xlYW51cChzdHJ1Y3QgaW50ZWxf
cnVudGltZV9wbSAqcnBtKQogewotCXN0cnVjdCBpbnRlbF9ydW50aW1lX3BtICpycG0gPSAmaTkx
NS0+cnVudGltZV9wbTsKIAlpbnQgY291bnQgPSBhdG9taWNfcmVhZCgmcnBtLT53YWtlcmVmX2Nv
dW50KTsKIAogCVdBUk4oY291bnQsCkBAIC02MTUsOSArNjExLDEwIEBAIHZvaWQgaW50ZWxfcnVu
dGltZV9wbV9jbGVhbnVwKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCXVudHJhY2tf
YWxsX2ludGVsX3J1bnRpbWVfcG1fd2FrZXJlZnMocnBtKTsKIH0KIAotdm9pZCBpbnRlbF9ydW50
aW1lX3BtX2luaXRfZWFybHkoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCit2b2lkIGlu
dGVsX3J1bnRpbWVfcG1faW5pdF9lYXJseShzdHJ1Y3QgaW50ZWxfcnVudGltZV9wbSAqcnBtKQog
ewotCXN0cnVjdCBpbnRlbF9ydW50aW1lX3BtICpycG0gPSAmaTkxNS0+cnVudGltZV9wbTsKKwlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9CisJCQljb250YWluZXJfb2YocnBtLCBzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSwgcnVudGltZV9wbSk7CiAJc3RydWN0IHBjaV9kZXYgKnBkZXYg
PSBpOTE1LT5kcm0ucGRldjsKIAlzdHJ1Y3QgZGV2aWNlICprZGV2ID0gJnBkZXYtPmRldjsKIApk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5oCmluZGV4IDQwYzY1MzBhZjViYi4u
MDg5MGU2OThmMTk2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50
aW1lX3BtLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5oCkBA
IC0xNjksMTAgKzE2OSwxMCBAQCBlbmFibGVfcnBtX3dha2VyZWZfYXNzZXJ0cyhzdHJ1Y3QgaW50
ZWxfcnVudGltZV9wbSAqcnBtKQogCQkgICAmcnBtLT53YWtlcmVmX2NvdW50KTsKIH0KIAotdm9p
ZCBpbnRlbF9ydW50aW1lX3BtX2luaXRfZWFybHkoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2KTsKLXZvaWQgaW50ZWxfcnVudGltZV9wbV9lbmFibGUoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KTsKLXZvaWQgaW50ZWxfcnVudGltZV9wbV9kaXNhYmxlKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7Ci12b2lkIGludGVsX3J1bnRpbWVfcG1fY2xlYW51
cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwordm9pZCBpbnRlbF9ydW50aW1l
X3BtX2luaXRfZWFybHkoc3RydWN0IGludGVsX3J1bnRpbWVfcG0gKnJwbSk7Cit2b2lkIGludGVs
X3J1bnRpbWVfcG1fZW5hYmxlKHN0cnVjdCBpbnRlbF9ydW50aW1lX3BtICpycG0pOwordm9pZCBp
bnRlbF9ydW50aW1lX3BtX2Rpc2FibGUoc3RydWN0IGludGVsX3J1bnRpbWVfcG0gKnJwbSk7Cit2
b2lkIGludGVsX3J1bnRpbWVfcG1fY2xlYW51cChzdHJ1Y3QgaW50ZWxfcnVudGltZV9wbSAqcnBt
KTsKIAogaW50ZWxfd2FrZXJlZl90IGludGVsX3J1bnRpbWVfcG1fZ2V0KHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1KTsKIGludGVsX3dha2VyZWZfdCBpbnRlbF9ydW50aW1lX3BtX2dldF9p
Zl9pbl91c2Uoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwpAQCAtMjAwLDEwICsyMDAs
MTAgQEAgaW50ZWxfcnVudGltZV9wbV9wdXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUs
IGludGVsX3dha2VyZWZfdCB3cmVmKQogdm9pZCBpbnRlbF9ydW50aW1lX3BtX3B1dF9yYXcoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGludGVsX3dha2VyZWZfdCB3cmVmKTsKIAogI2lm
IElTX0VOQUJMRUQoQ09ORklHX0RSTV9JOTE1X0RFQlVHX1JVTlRJTUVfUE0pCi12b2lkIHByaW50
X2ludGVsX3J1bnRpbWVfcG1fd2FrZXJlZihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwK
K3ZvaWQgcHJpbnRfaW50ZWxfcnVudGltZV9wbV93YWtlcmVmKHN0cnVjdCBpbnRlbF9ydW50aW1l
X3BtICpycG0sCiAJCQkJICAgIHN0cnVjdCBkcm1fcHJpbnRlciAqcCk7CiAjZWxzZQotc3RhdGlj
IGlubGluZSB2b2lkIHByaW50X2ludGVsX3J1bnRpbWVfcG1fd2FrZXJlZihzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSwKK3N0YXRpYyBpbmxpbmUgdm9pZCBwcmludF9pbnRlbF9ydW50aW1l
X3BtX3dha2VyZWYoc3RydWN0IGludGVsX3J1bnRpbWVfcG0gKnJwbSwKIAkJCQkJCSAgc3RydWN0
IGRybV9wcmludGVyICpwKQogewogfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
c2VsZnRlc3RzL21vY2tfZ2VtX2RldmljZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRl
c3RzL21vY2tfZ2VtX2RldmljZS5jCmluZGV4IDY4YmFlNjEzMDcyOS4uODJmMmJlNmNlYzViIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja19nZW1fZGV2aWNl
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL21vY2tfZ2VtX2RldmljZS5j
CkBAIC0xNjYsNyArMTY2LDcgQEAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKm1vY2tfZ2VtX2Rl
dmljZSh2b2lkKQogCWk5MTUtPmRybS5wZGV2ID0gcGRldjsKIAlpOTE1LT5kcm0uZGV2X3ByaXZh
dGUgPSBpOTE1OwogCi0JaW50ZWxfcnVudGltZV9wbV9pbml0X2Vhcmx5KGk5MTUpOworCWludGVs
X3J1bnRpbWVfcG1faW5pdF9lYXJseSgmaTkxNS0+cnVudGltZV9wbSk7CiAKIAkvKiBVc2luZyB0
aGUgZ2xvYmFsIEdUVCBtYXkgYXNrIHF1ZXN0aW9ucyBhYm91dCBLTVMgdXNlcnMsIHNvIHByZXBh
cmUgKi8KIAlkcm1fbW9kZV9jb25maWdfaW5pdCgmaTkxNS0+ZHJtKTsKLS0gCjIuMjAuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
