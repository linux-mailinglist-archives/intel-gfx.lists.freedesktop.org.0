Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E769C21066
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2019 23:57:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20B0C897F5;
	Thu, 16 May 2019 21:57:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFB31897EE
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2019 21:57:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 May 2019 14:57:21 -0700
X-ExtLoop1: 1
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga001.jf.intel.com with ESMTP; 16 May 2019 14:57:21 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 May 2019 14:56:32 -0700
Message-Id: <20190516215634.16675-6-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190516215634.16675-1-daniele.ceraolospurio@intel.com>
References: <20190516215634.16675-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 5/7] drm/i915: move a few more functions to accept
 the rpm structure
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
IDE3ICsrKysrKysrKy0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50aW1l
X3BtLmMgICAgICAgfCAxOSArKysrKysrKy0tLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9ydW50aW1lX3BtLmggICAgICAgfCAxMiArKysrKystLS0tLS0KIC4uLi9ncHUvZHJt
L2k5MTUvc2VsZnRlc3RzL21vY2tfZ2VtX2RldmljZS5jICB8ICAyICstCiA1IGZpbGVzIGNoYW5n
ZWQsIDI1IGluc2VydGlvbnMoKyksIDI3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kZWJ1Z2ZzLmMKaW5kZXggMjI3YTFjZGY0ZjAyLi4wMTE1Mzc2MzJjNGYgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZGVidWdmcy5jCkBAIC0yNjYzLDcgKzI2NjMsNyBAQCBzdGF0aWMgaW50IGlu
dGVsX3J1bnRpbWVfcG1fc3RhdHVzKHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqdW51c2VkKQog
CWlmIChJU19FTkFCTEVEKENPTkZJR19EUk1fSTkxNV9ERUJVR19SVU5USU1FX1BNKSkgewogCQlz
dHJ1Y3QgZHJtX3ByaW50ZXIgcCA9IGRybV9zZXFfZmlsZV9wcmludGVyKG0pOwogCi0JCXByaW50
X2ludGVsX3J1bnRpbWVfcG1fd2FrZXJlZihkZXZfcHJpdiwgJnApOworCQlwcmludF9pbnRlbF9y
dW50aW1lX3BtX3dha2VyZWYoJmRldl9wcml2LT5ydW50aW1lX3BtLCAmcCk7CiAJfQogCiAJcmV0
dXJuIDA7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwppbmRleCA3OTM4OTA2ZjViMWQuLjRjZTQxMDgz
MzEzYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCkBAIC05MDMsNyArOTAzLDcgQEAgc3RhdGlj
IGludCBpOTE1X2RyaXZlcl9pbml0X2Vhcmx5KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdikKIAltdXRleF9pbml0KCZkZXZfcHJpdi0+aGRjcF9jb21wX211dGV4KTsKIAogCWk5MTVf
bWVtY3B5X2luaXRfZWFybHkoZGV2X3ByaXYpOwotCWludGVsX3J1bnRpbWVfcG1faW5pdF9lYXJs
eShkZXZfcHJpdik7CisJaW50ZWxfcnVudGltZV9wbV9pbml0X2Vhcmx5KCZkZXZfcHJpdi0+cnVu
dGltZV9wbSk7CiAKIAlyZXQgPSBpOTE1X3dvcmtxdWV1ZXNfaW5pdChkZXZfcHJpdik7CiAJaWYg
KHJldCA8IDApCkBAIC0xNzQ2LDcgKzE3NDYsNyBAQCBzdGF0aWMgdm9pZCBpOTE1X2RyaXZlcl9y
ZWdpc3RlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJCWRybV9rbXNfaGVs
cGVyX3BvbGxfaW5pdChkZXYpOwogCiAJaW50ZWxfcG93ZXJfZG9tYWluc19lbmFibGUoZGV2X3By
aXYpOwotCWludGVsX3J1bnRpbWVfcG1fZW5hYmxlKGRldl9wcml2KTsKKwlpbnRlbF9ydW50aW1l
X3BtX2VuYWJsZSgmZGV2X3ByaXYtPnJ1bnRpbWVfcG0pOwogfQogCiAvKioKQEAgLTE3NTUsNyAr
MTc1NSw3IEBAIHN0YXRpYyB2b2lkIGk5MTVfZHJpdmVyX3JlZ2lzdGVyKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdikKICAqLwogc3RhdGljIHZvaWQgaTkxNV9kcml2ZXJfdW5yZWdp
c3RlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7Ci0JaW50ZWxfcnVudGlt
ZV9wbV9kaXNhYmxlKGRldl9wcml2KTsKKwlpbnRlbF9ydW50aW1lX3BtX2Rpc2FibGUoJmRldl9w
cml2LT5ydW50aW1lX3BtKTsKIAlpbnRlbF9wb3dlcl9kb21haW5zX2Rpc2FibGUoZGV2X3ByaXYp
OwogCiAJaW50ZWxfZmJkZXZfdW5yZWdpc3RlcihkZXZfcHJpdik7CkBAIC0xOTY3LDcgKzE5Njcs
NyBAQCB2b2lkIGk5MTVfZHJpdmVyX3VubG9hZChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQogCWk5
MTVfZHJpdmVyX2NsZWFudXBfbW1pbyhkZXZfcHJpdik7CiAKIAllbmFibGVfcnBtX3dha2VyZWZf
YXNzZXJ0cygmZGV2X3ByaXYtPnJ1bnRpbWVfcG0pOwotCWludGVsX3J1bnRpbWVfcG1fY2xlYW51
cChkZXZfcHJpdik7CisJaW50ZWxfcnVudGltZV9wbV9jbGVhbnVwKCZkZXZfcHJpdi0+cnVudGlt
ZV9wbSk7CiB9CiAKIHN0YXRpYyB2b2lkIGk5MTVfZHJpdmVyX3JlbGVhc2Uoc3RydWN0IGRybV9k
ZXZpY2UgKmRldikKQEAgLTIxMjEsOSArMjEyMSwxMCBAQCBzdGF0aWMgaW50IGk5MTVfZHJtX3N1
c3BlbmRfbGF0ZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCBib29sIGhpYmVybmF0aW9uKQogewog
CXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGV2KTsKIAlzdHJ1
Y3QgcGNpX2RldiAqcGRldiA9IGRldl9wcml2LT5kcm0ucGRldjsKKwlzdHJ1Y3QgaW50ZWxfcnVu
dGltZV9wbSAqcnBtID0gJmRldl9wcml2LT5ydW50aW1lX3BtOwogCWludCByZXQ7CiAKLQlkaXNh
YmxlX3JwbV93YWtlcmVmX2Fzc2VydHMoJmRldl9wcml2LT5ydW50aW1lX3BtKTsKKwlkaXNhYmxl
X3JwbV93YWtlcmVmX2Fzc2VydHMocnBtKTsKIAogCWk5MTVfZ2VtX3N1c3BlbmRfbGF0ZShkZXZf
cHJpdik7CiAKQEAgLTIxNjQsOSArMjE2NSw5IEBAIHN0YXRpYyBpbnQgaTkxNV9kcm1fc3VzcGVu
ZF9sYXRlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIGJvb2wgaGliZXJuYXRpb24pCiAJCXBjaV9z
ZXRfcG93ZXJfc3RhdGUocGRldiwgUENJX0QzaG90KTsKIAogb3V0OgotCWVuYWJsZV9ycG1fd2Fr
ZXJlZl9hc3NlcnRzKCZkZXZfcHJpdi0+cnVudGltZV9wbSk7CisJZW5hYmxlX3JwbV93YWtlcmVm
X2Fzc2VydHMocnBtKTsKIAlpZiAoIWRldl9wcml2LT51bmNvcmUudXNlcl9mb3JjZXdha2UuY291
bnQpCi0JCWludGVsX3J1bnRpbWVfcG1fY2xlYW51cChkZXZfcHJpdik7CisJCWludGVsX3J1bnRp
bWVfcG1fY2xlYW51cChycG0pOwogCiAJcmV0dXJuIHJldDsKIH0KQEAgLTI5MjgsNyArMjkyOSw3
IEBAIHN0YXRpYyBpbnQgaW50ZWxfcnVudGltZV9zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmtkZXYp
CiAJfQogCiAJZW5hYmxlX3JwbV93YWtlcmVmX2Fzc2VydHMocnBtKTsKLQlpbnRlbF9ydW50aW1l
X3BtX2NsZWFudXAoZGV2X3ByaXYpOworCWludGVsX3J1bnRpbWVfcG1fY2xlYW51cChycG0pOwog
CiAJaWYgKGludGVsX3VuY29yZV9hcm1fdW5jbGFpbWVkX21taW9fZGV0ZWN0aW9uKCZkZXZfcHJp
di0+dW5jb3JlKSkKIAkJRFJNX0VSUk9SKCJVbmNsYWltZWQgYWNjZXNzIGRldGVjdGVkIHByaW9y
IHRvIHN1c3BlbmRpbmdcbiIpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfcnVudGltZV9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5j
CmluZGV4IGY2Njk2ODhjMzJjOS4uMzE1MGRiZTRkMWMzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9ydW50aW1lX3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfcnVudGltZV9wbS5jCkBAIC0yOTksMTMgKzI5OSwxMiBAQCB1bnRyYWNrX2FsbF9pbnRl
bF9ydW50aW1lX3BtX3dha2VyZWZzKHN0cnVjdCBpbnRlbF9ydW50aW1lX3BtICpycG0pCiAJZHVt
cF9hbmRfZnJlZV93YWtlcmVmX3RyYWNraW5nKCZkYmcpOwogfQogCi12b2lkIHByaW50X2ludGVs
X3J1bnRpbWVfcG1fd2FrZXJlZihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKK3ZvaWQg
cHJpbnRfaW50ZWxfcnVudGltZV9wbV93YWtlcmVmKHN0cnVjdCBpbnRlbF9ydW50aW1lX3BtICpy
cG0sCiAJCQkJICAgIHN0cnVjdCBkcm1fcHJpbnRlciAqcCkKIHsKIAlzdHJ1Y3QgaW50ZWxfcnVu
dGltZV9wbV9kZWJ1ZyBkYmcgPSB7fTsKIAogCWRvIHsKLQkJc3RydWN0IGludGVsX3J1bnRpbWVf
cG0gKnJwbSA9ICZpOTE1LT5ydW50aW1lX3BtOwogCQl1bnNpZ25lZCBsb25nIGFsbG9jID0gZGJn
LmNvdW50OwogCQlkZXBvdF9zdGFja19oYW5kbGVfdCAqczsKIApAQCAtNTE0NSw3ICs1MTQ0LDcg
QEAgdm9pZCBpbnRlbF9ydW50aW1lX3BtX3B1dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSwgaW50ZWxfd2FrZXJlZl90IHdyZWYpCiAKIC8qKgogICogaW50ZWxfcnVudGltZV9wbV9lbmFi
bGUgLSBlbmFibGUgcnVudGltZSBwbQotICogQGk5MTU6IGk5MTUgZGV2aWNlIGluc3RhbmNlCisg
KiBAcnBtOiB0aGUgaW50ZWxfcnVudGltZV9wbSBzdHJ1Y3R1cmUKICAqCiAgKiBUaGlzIGZ1bmN0
aW9uIGVuYWJsZXMgcnVudGltZSBwbSBhdCB0aGUgZW5kIG9mIHRoZSBkcml2ZXIgbG9hZCBzZXF1
ZW5jZS4KICAqCkBAIC01MTUzLDkgKzUxNTIsOCBAQCB2b2lkIGludGVsX3J1bnRpbWVfcG1fcHV0
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBpbnRlbF93YWtlcmVmX3Qgd3JlZikKICAq
IHN1Ym9yZGluYXRlIGRpc3BsYXkgcG93ZXIgZG9tYWlucy4gVGhhdCBpcyBkb25lIGJ5CiAgKiBp
bnRlbF9wb3dlcl9kb21haW5zX2VuYWJsZSgpLgogICovCi12b2lkIGludGVsX3J1bnRpbWVfcG1f
ZW5hYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQordm9pZCBpbnRlbF9ydW50aW1l
X3BtX2VuYWJsZShzdHJ1Y3QgaW50ZWxfcnVudGltZV9wbSAqcnBtKQogewotCXN0cnVjdCBpbnRl
bF9ydW50aW1lX3BtICpycG0gPSAmaTkxNS0+cnVudGltZV9wbTsKIAlzdHJ1Y3QgZGV2aWNlICpr
ZGV2ID0gcnBtLT5rZGV2OwogCiAJLyoKQEAgLTUxOTUsOSArNTE5Myw4IEBAIHZvaWQgaW50ZWxf
cnVudGltZV9wbV9lbmFibGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJcG1fcnVu
dGltZV9wdXRfYXV0b3N1c3BlbmQoa2Rldik7CiB9CiAKLXZvaWQgaW50ZWxfcnVudGltZV9wbV9k
aXNhYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQordm9pZCBpbnRlbF9ydW50aW1l
X3BtX2Rpc2FibGUoc3RydWN0IGludGVsX3J1bnRpbWVfcG0gKnJwbSkKIHsKLQlzdHJ1Y3QgaW50
ZWxfcnVudGltZV9wbSAqcnBtID0gJmk5MTUtPnJ1bnRpbWVfcG07CiAJc3RydWN0IGRldmljZSAq
a2RldiA9IHJwbS0+a2RldjsKIAogCS8qIFRyYW5zZmVyIHJwbSBvd25lcnNoaXAgYmFjayB0byBj
b3JlICovCkBAIC01MjEwLDkgKzUyMDcsOCBAQCB2b2lkIGludGVsX3J1bnRpbWVfcG1fZGlzYWJs
ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAkJcG1fcnVudGltZV9wdXQoa2Rldik7
CiB9CiAKLXZvaWQgaW50ZWxfcnVudGltZV9wbV9jbGVhbnVwKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1KQordm9pZCBpbnRlbF9ydW50aW1lX3BtX2NsZWFudXAoc3RydWN0IGludGVsX3J1
bnRpbWVfcG0gKnJwbSkKIHsKLQlzdHJ1Y3QgaW50ZWxfcnVudGltZV9wbSAqcnBtID0gJmk5MTUt
PnJ1bnRpbWVfcG07CiAJaW50IGNvdW50ID0gYXRvbWljX3JlYWQoJnJwbS0+d2FrZXJlZl9jb3Vu
dCk7CiAKIAlXQVJOKGNvdW50LApAQCAtNTIyMyw5ICs1MjE5LDEwIEBAIHZvaWQgaW50ZWxfcnVu
dGltZV9wbV9jbGVhbnVwKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCXVudHJhY2tf
YWxsX2ludGVsX3J1bnRpbWVfcG1fd2FrZXJlZnMocnBtKTsKIH0KIAotdm9pZCBpbnRlbF9ydW50
aW1lX3BtX2luaXRfZWFybHkoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCit2b2lkIGlu
dGVsX3J1bnRpbWVfcG1faW5pdF9lYXJseShzdHJ1Y3QgaW50ZWxfcnVudGltZV9wbSAqcnBtKQog
ewotCXN0cnVjdCBpbnRlbF9ydW50aW1lX3BtICpycG0gPSAmaTkxNS0+cnVudGltZV9wbTsKKwlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9CisJCQljb250YWluZXJfb2YocnBtLCBzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSwgcnVudGltZV9wbSk7CiAJc3RydWN0IHBjaV9kZXYgKnBkZXYg
PSBpOTE1LT5kcm0ucGRldjsKIAlzdHJ1Y3QgZGV2aWNlICprZGV2ID0gJnBkZXYtPmRldjsKIApk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5oCmluZGV4IDBlMzgxN2Y5Nzg1ZS4u
M2NlYzNiOTAyNzRhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50
aW1lX3BtLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5oCkBA
IC0xNzIsNyArMTcyLDcgQEAgdm9pZCBieHRfZW5hYmxlX2RjOShzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYpOwogdm9pZCBieHRfZGlzYWJsZV9kYzkoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KTsKIHZvaWQgZ2VuOV9lbmFibGVfZGM1KHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdik7CiAKLXZvaWQgaW50ZWxfcnVudGltZV9wbV9pbml0X2Vhcmx5KHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7Cit2b2lkIGludGVsX3J1bnRpbWVfcG1f
aW5pdF9lYXJseShzdHJ1Y3QgaW50ZWxfcnVudGltZV9wbSAqcnBtKTsKIGludCBpbnRlbF9wb3dl
cl9kb21haW5zX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKik7CiB2b2lkIGludGVsX3Bv
d2VyX2RvbWFpbnNfY2xlYW51cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwog
dm9pZCBpbnRlbF9wb3dlcl9kb21haW5zX2luaXRfaHcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2LCBib29sIHJlc3VtZSk7CkBAIC0xODgsOSArMTg4LDkgQEAgdm9pZCBoc3dfZW5h
YmxlX3BjOChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwogdm9pZCBoc3dfZGlz
YWJsZV9wYzgoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKIHZvaWQgYnh0X2Rp
c3BsYXlfY29yZV9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgYm9vbCBy
ZXN1bWUpOwogdm9pZCBieHRfZGlzcGxheV9jb3JlX3VuaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYpOwotdm9pZCBpbnRlbF9ydW50aW1lX3BtX2VuYWJsZShzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwotdm9pZCBpbnRlbF9ydW50aW1lX3BtX2Rpc2FibGUo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKLXZvaWQgaW50ZWxfcnVudGltZV9w
bV9jbGVhbnVwKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7Cit2b2lkIGludGVs
X3J1bnRpbWVfcG1fZW5hYmxlKHN0cnVjdCBpbnRlbF9ydW50aW1lX3BtICpycG0pOwordm9pZCBp
bnRlbF9ydW50aW1lX3BtX2Rpc2FibGUoc3RydWN0IGludGVsX3J1bnRpbWVfcG0gKnJwbSk7Cit2
b2lkIGludGVsX3J1bnRpbWVfcG1fY2xlYW51cChzdHJ1Y3QgaW50ZWxfcnVudGltZV9wbSAqcnBt
KTsKIAogY29uc3QgY2hhciAqCiBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbl9zdHIoZW51bSBp
bnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbiBkb21haW4pOwpAQCAtMjcwLDEwICsyNzAsMTAgQEAg
aW50ZWxfcnVudGltZV9wbV9wdXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGludGVs
X3dha2VyZWZfdCB3cmVmKQogI2VuZGlmCiAKICNpZiBJU19FTkFCTEVEKENPTkZJR19EUk1fSTkx
NV9ERUJVR19SVU5USU1FX1BNKQotdm9pZCBwcmludF9pbnRlbF9ydW50aW1lX3BtX3dha2VyZWYo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCit2b2lkIHByaW50X2ludGVsX3J1bnRpbWVf
cG1fd2FrZXJlZihzdHJ1Y3QgaW50ZWxfcnVudGltZV9wbSAqcnBtLAogCQkJCSAgICBzdHJ1Y3Qg
ZHJtX3ByaW50ZXIgKnApOwogI2Vsc2UKLXN0YXRpYyBpbmxpbmUgdm9pZCBwcmludF9pbnRlbF9y
dW50aW1lX3BtX3dha2VyZWYoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCitzdGF0aWMg
aW5saW5lIHZvaWQgcHJpbnRfaW50ZWxfcnVudGltZV9wbV93YWtlcmVmKHN0cnVjdCBpbnRlbF9y
dW50aW1lX3BtICpycG0sCiAJCQkJCQkgIHN0cnVjdCBkcm1fcHJpbnRlciAqcCkKIHsKIH0KZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9tb2NrX2dlbV9kZXZpY2Uu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9tb2NrX2dlbV9kZXZpY2UuYwppbmRl
eCA5ZmQwMjAyNWQzODIuLmIzZWQyYjkwN2I4MyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvc2VsZnRlc3RzL21vY2tfZ2VtX2RldmljZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L3NlbGZ0ZXN0cy9tb2NrX2dlbV9kZXZpY2UuYwpAQCAtMTUxLDcgKzE1MSw3IEBAIHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICptb2NrX2dlbV9kZXZpY2Uodm9pZCkKIAlpOTE1ID0gKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICopKHBkZXYgKyAxKTsKIAlwY2lfc2V0X2RydmRhdGEocGRldiwg
aTkxNSk7CiAKLQlpbnRlbF9ydW50aW1lX3BtX2luaXRfZWFybHkoaTkxNSk7CisJaW50ZWxfcnVu
dGltZV9wbV9pbml0X2Vhcmx5KCZpOTE1LT5ydW50aW1lX3BtKTsKIAogCWRldl9wbV9kb21haW5f
c2V0KCZwZGV2LT5kZXYsICZwbV9kb21haW4pOwogCXBtX3J1bnRpbWVfZW5hYmxlKCZwZGV2LT5k
ZXYpOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
