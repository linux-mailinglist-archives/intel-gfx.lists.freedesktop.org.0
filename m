Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67DF5618EA
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2019 03:35:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66DF2899C7;
	Mon,  8 Jul 2019 01:35:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AFD7899C7;
 Mon,  8 Jul 2019 01:35:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jul 2019 18:35:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,464,1557212400"; d="scan'208";a="173131270"
Received: from xzhan34-mobl3.bj.intel.com ([10.238.154.53])
 by FMSMGA003.fm.intel.com with ESMTP; 07 Jul 2019 18:35:40 -0700
From: Xiaolin Zhang <xiaolin.zhang@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Jul 2019 09:35:17 +0800
Message-Id: <1562549722-27046-5-git-send-email-xiaolin.zhang@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1562549722-27046-1-git-send-email-xiaolin.zhang@intel.com>
References: <1562549722-27046-1-git-send-email-xiaolin.zhang@intel.com>
Subject: [Intel-gfx] [PATCH v7 4/9] drm/i915: vgpu ppgtt update pv
 optimization
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
Cc: intel-gvt-dev@lists.freedesktop.org
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBwYXRjaCBleHRlbmRzIHZncHUgcHBndHQgZzJ2IG5vdGlmaWNhdGlvbiB0byBub3RpZnkg
aG9zdApHVlQtZyBvZiBwcGd0dCB1cGRhdGUgZnJvbSBndWVzdCBpbmNsdWRpbmcgYWxsb2NfNGx2
bCwgY2xlYXJfNGx2NAphbmQgaW5zZXJ0XzRsdmwuCgpUaGVzZSB1cGRhdGVzIHVzZSB0aGUgc2hh
cmVkIG1lbW9yeSBwYWdlIHRvIHBhc3Mgc3RydWN0IHB2X3BwZ3R0X3VwZGF0ZQpmcm9tIGd1ZXN0
IHRvIEdWVCB3aGljaCBpcyB1c2VkIGZvciBwdiBvcHRpbWlhdGlvbiBpbXBsZW1lYXRpb24gd2l0
aGluCmhvc3QgR1ZUIHNpZGUuCgpUaGlzIHBhdGNoIGFsc28gYWRkIG9uZSBuZXcgcHZfY2FwcyBs
ZXZlbCB0byBjb250cm9sIHBwZ3R0IHVwZGF0ZS4KClVzZSBQVl9QUEdUVF9VUERBVEUgdG8gY29u
dHJvbCB0aGlzIGxldmVsIG9mIHB2IG9wdGltaXphdGlvbi4KCnYwOiBSRkMuCnYxOiByZWJhc2Vk
Lgp2MjogYWRkZWQgcHYgY2FsbGJhY2tzIGZvciB2bS57YWxsb2NhdGVfdmFfcmFuZ2UsIGluc2Vy
dF9lbnRyaWVzLApjbGVhcl9yYW5nZX0gd2l0aGluIHBwZ3R0Lgp2MzogcmViYXNlZCwgZGlzYWJs
ZSBodWdlIHBhZ2UgcHBndHQgc3VwcG9ydCB3aGVuIHVzaW5nIFBWTU1JTyBwcGd0dAp1cGRhdGUg
ZHVlIHRvIGNvbXBsZXggYW5kIHBlcmZvcm1hbmNlIGltcGFjdC4KdjQ6IG1vdmVkIGFsbG9jL2lu
c2VydC9jbGVhcl80bHZsIHB2IGNhbGxiYWNrcyBpbnRvIGk5MTVfdmdwdV9wdi5jIGFuZAphZGRl
ZCBhIHNpbmdsZSBpbnRlbF92Z3B1X2NvbmZpZ19wdl9jYXBzKCkgZm9yIHZncHUgcHYgY2FsbGJh
Y2tzIHNldHVwLgp2NTogcmViYXNlLgp2NjogcmViYXNlLgp2NzogcmViYXNlLgoKU2lnbmVkLW9m
Zi1ieTogWGlhb2xpbiBaaGFuZyA8eGlhb2xpbi56aGFuZ0BpbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyAgICAgfCAgMyArLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW1fZ3R0LmMgfCAgOSArKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
ZW1fZ3R0LmggfCAgOCArKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZncHUuYyAgICB8
IDc5ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfdmdwdS5oICAgIHwgMjUgKysrKysrKysrKysrCiA1IGZpbGVzIGNoYW5nZWQs
IDEyMCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5j
CmluZGV4IDdhZGU0MmIuLmRlMzA2ZTMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwpAQCAtMTQy
MSw3ICsxNDIxLDggQEAgaW50IGk5MTVfZ2VtX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2KQogCWludCByZXQ7CiAKIAkvKiBXZSBuZWVkIHRvIGZhbGxiYWNrIHRvIDRLIHBh
Z2VzIGlmIGhvc3QgZG9lc24ndCBzdXBwb3J0IGh1Z2UgZ3R0LiAqLwotCWlmIChpbnRlbF92Z3B1
X2FjdGl2ZShkZXZfcHJpdikgJiYgIWludGVsX3ZncHVfaGFzX2h1Z2VfZ3R0KGRldl9wcml2KSkK
KwlpZiAoKGludGVsX3ZncHVfYWN0aXZlKGRldl9wcml2KSAmJiAhaW50ZWxfdmdwdV9oYXNfaHVn
ZV9ndHQoZGV2X3ByaXYpKQorCQl8fCBpbnRlbF92Z3B1X2VuYWJsZWRfcHZfY2FwcyhkZXZfcHJp
diwgUFZfUFBHVFRfVVBEQVRFKSkKIAkJbWt3cml0ZV9kZXZpY2VfaW5mbyhkZXZfcHJpdiktPnBh
Z2Vfc2l6ZXMgPQogCQkJSTkxNV9HVFRfUEFHRV9TSVpFXzRLOwogCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2VtX2d0dC5jCmluZGV4IDIzNmM5NjQuLmQ2MjI0ZjkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2VtX2d0dC5jCkBAIC05MTAsNyArOTEwLDcgQEAgc3RhdGljIHZvaWQgZ2VuOF9wcGd0dF9j
bGVhcl8zbHZsKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLAogICogVGhpcyBpcyB0aGUg
dG9wLWxldmVsIHN0cnVjdHVyZSBpbiA0LWxldmVsIHBhZ2UgdGFibGVzIHVzZWQgb24gZ2VuOCsu
CiAgKiBFbXB0eSBlbnRyaWVzIGFyZSBhbHdheXMgc2NyYXRjaCBwbWw0ZS4KICAqLwotc3RhdGlj
IHZvaWQgZ2VuOF9wcGd0dF9jbGVhcl80bHZsKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZt
LAordm9pZCBnZW44X3BwZ3R0X2NsZWFyXzRsdmwoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAq
dm0sCiAJCQkJICB1NjQgc3RhcnQsIHU2NCBsZW5ndGgpCiB7CiAJc3RydWN0IGk5MTVfcHBndHQg
KnBwZ3R0ID0gaTkxNV92bV90b19wcGd0dCh2bSk7CkBAIC0xMTUwLDcgKzExNTAsNyBAQCBzdGF0
aWMgdm9pZCBnZW44X3BwZ3R0X2luc2VydF9odWdlX2VudHJpZXMoc3RydWN0IGk5MTVfdm1hICp2
bWEsCiAJfSB3aGlsZSAoaXRlci0+c2cpOwogfQogCi1zdGF0aWMgdm9pZCBnZW44X3BwZ3R0X2lu
c2VydF80bHZsKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLAordm9pZCBnZW44X3BwZ3R0
X2luc2VydF80bHZsKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLAogCQkJCSAgIHN0cnVj
dCBpOTE1X3ZtYSAqdm1hLAogCQkJCSAgIGVudW0gaTkxNV9jYWNoZV9sZXZlbCBjYWNoZV9sZXZl
bCwKIAkJCQkgICB1MzIgZmxhZ3MpCkBAIC0xNDY2LDcgKzE0NjYsNyBAQCBzdGF0aWMgaW50IGdl
bjhfcHBndHRfYWxsb2NfM2x2bChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwKIAkJCQkg
ICAgaTkxNV92bV90b19wcGd0dCh2bSktPnBkLCBzdGFydCwgbGVuZ3RoKTsKIH0KIAotc3RhdGlj
IGludCBnZW44X3BwZ3R0X2FsbG9jXzRsdmwoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0s
CitpbnQgZ2VuOF9wcGd0dF9hbGxvY180bHZsKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZt
LAogCQkJCSB1NjQgc3RhcnQsIHU2NCBsZW5ndGgpCiB7CiAJc3RydWN0IGk5MTVfcHBndHQgKnBw
Z3R0ID0gaTkxNV92bV90b19wcGd0dCh2bSk7CkBAIC0xNjU2LDYgKzE2NTYsOSBAQCBzdGF0aWMg
c3RydWN0IGk5MTVfcHBndHQgKmdlbjhfcHBndHRfY3JlYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1KQogCQlwcGd0dC0+dm0uYWxsb2NhdGVfdmFfcmFuZ2UgPSBnZW44X3BwZ3R0X2Fs
bG9jXzRsdmw7CiAJCXBwZ3R0LT52bS5pbnNlcnRfZW50cmllcyA9IGdlbjhfcHBndHRfaW5zZXJ0
XzRsdmw7CiAJCXBwZ3R0LT52bS5jbGVhcl9yYW5nZSA9IGdlbjhfcHBndHRfY2xlYXJfNGx2bDsK
KworCQlpZiAoaW50ZWxfdmdwdV9hY3RpdmUoaTkxNSkpCisJCQlpbnRlbF92Z3B1X2NvbmZpZ19w
dl9jYXBzKGk5MTUsIFBWX1BQR1RUX1VQREFURSwgcHBndHQpOwogCX0gZWxzZSB7CiAJCWlmIChp
bnRlbF92Z3B1X2FjdGl2ZShpOTE1KSkgewogCQkJZXJyID0gZ2VuOF9wcmVhbGxvY2F0ZV90b3Bf
bGV2ZWxfcGRwKHBwZ3R0KTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2VtX2d0dC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmgKaW5kZXggNTdh
NjhlZi4uZTE5ZTY2YSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1f
Z3R0LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmgKQEAgLTY0MSw2
ICs2NDEsMTQgQEAgaW50IGdlbjZfcHBndHRfcGluKHN0cnVjdCBpOTE1X3BwZ3R0ICpiYXNlKTsK
IHZvaWQgZ2VuNl9wcGd0dF91bnBpbihzdHJ1Y3QgaTkxNV9wcGd0dCAqYmFzZSk7CiB2b2lkIGdl
bjZfcHBndHRfdW5waW5fYWxsKHN0cnVjdCBpOTE1X3BwZ3R0ICpiYXNlKTsKIAordm9pZCBnZW44
X3BwZ3R0X2NsZWFyXzRsdmwoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sCisJCXU2NCBz
dGFydCwgdTY0IGxlbmd0aCk7Cit2b2lkIGdlbjhfcHBndHRfaW5zZXJ0XzRsdmwoc3RydWN0IGk5
MTVfYWRkcmVzc19zcGFjZSAqdm0sCisJCXN0cnVjdCBpOTE1X3ZtYSAqdm1hLAorCQllbnVtIGk5
MTVfY2FjaGVfbGV2ZWwgY2FjaGVfbGV2ZWwsIHUzMiBmbGFncyk7CitpbnQgZ2VuOF9wcGd0dF9h
bGxvY180bHZsKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLAorCQl1NjQgc3RhcnQsIHU2
NCBsZW5ndGgpOworCiB2b2lkIGk5MTVfZ2VtX3N1c3BlbmRfZ3R0X21hcHBpbmdzKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7CiB2b2lkIGk5MTVfZ2VtX3Jlc3RvcmVfZ3R0X21h
cHBpbmdzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7CiAKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdmdwdS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV92Z3B1LmMKaW5kZXggYWNiZTNhMC4uMmFhZDBiOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV92Z3B1LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92
Z3B1LmMKQEAgLTk2LDYgKzk2LDkgQEAgdm9pZCBpOTE1X2RldGVjdF92Z3B1KHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAogCWRldl9wcml2LT52Z3B1LmFjdGl2ZSA9IHRydWU7
CiAKKwkvKiBndWVzdCBkcml2ZXIgUFYgY2FwYWJpbGl0eSAqLworCWRldl9wcml2LT52Z3B1LnB2
X2NhcHMgPSBQVl9QUEdUVF9VUERBVEU7CisKIAlpZiAoIWludGVsX3ZncHVfY2hlY2tfcHZfY2Fw
cyhkZXZfcHJpdiwgc2hhcmVkX2FyZWEpKSB7CiAJCURSTV9JTkZPKCJWaXJ0dWFsIEdQVSBmb3Ig
SW50ZWwgR1ZULWcgZGV0ZWN0ZWQuXG4iKTsKIAkJcmV0dXJuOwpAQCAtMzEzLDYgKzMxNiw4MiBA
QCBpbnQgaW50ZWxfdmd0X2JhbGxvb24oc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCkKICAqIGk5MTUg
dmdwdSBQViBzdXBwb3J0IGZvciBMaW51eAogICovCiAKK3N0YXRpYyBpbnQgdmdwdV9wcGd0dF9w
dl91cGRhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAorCQl1MzIgYWN0aW9u
LCB1NjQgcGRwLCB1NjQgc3RhcnQsIHU2NCBsZW5ndGgsIHUzMiBjYWNoZV9sZXZlbCkKK3sKKwl1
MzIgZGF0YVs4XTsKKworCWRhdGFbMF0gPSBhY3Rpb247CisJZGF0YVsxXSA9IGxvd2VyXzMyX2Jp
dHMocGRwKTsKKwlkYXRhWzJdID0gdXBwZXJfMzJfYml0cyhwZHApOworCWRhdGFbM10gPSBsb3dl
cl8zMl9iaXRzKHN0YXJ0KTsKKwlkYXRhWzRdID0gdXBwZXJfMzJfYml0cyhzdGFydCk7CisJZGF0
YVs1XSA9IGxvd2VyXzMyX2JpdHMobGVuZ3RoKTsKKwlkYXRhWzZdID0gdXBwZXJfMzJfYml0cyhs
ZW5ndGgpOworCWRhdGFbN10gPSBjYWNoZV9sZXZlbDsKKworCXJldHVybiBpbnRlbF92Z3B1X3B2
X3NlbmQoZGV2X3ByaXYsIGRhdGEsIEFSUkFZX1NJWkUoZGF0YSkpOworfQorCitzdGF0aWMgdm9p
ZCBnZW44X3BwZ3R0X2NsZWFyXzRsdmxfcHYoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0s
CisJCXU2NCBzdGFydCwgdTY0IGxlbmd0aCkKK3sKKwlzdHJ1Y3QgaTkxNV9wcGd0dCAqcHBndHQg
PSBpOTE1X3ZtX3RvX3BwZ3R0KHZtKTsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYgPSB2bS0+aTkxNTsKKworCWdlbjhfcHBndHRfY2xlYXJfNGx2bCh2bSwgc3RhcnQsIGxlbmd0
aCk7CisJdmdwdV9wcGd0dF9wdl91cGRhdGUoZGV2X3ByaXYsIFBWX0FDVElPTl9QUEdUVF9MNF9D
TEVBUiwKKwkJcHhfZG1hKHBwZ3R0LT5wZCksIHN0YXJ0LCBsZW5ndGgsIDApOworfQorCitzdGF0
aWMgdm9pZCBnZW44X3BwZ3R0X2luc2VydF80bHZsX3B2KHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3Bh
Y2UgKnZtLAorCQlzdHJ1Y3QgaTkxNV92bWEgKnZtYSwKKwkJZW51bSBpOTE1X2NhY2hlX2xldmVs
IGNhY2hlX2xldmVsLCB1MzIgZmxhZ3MpCit7CisJc3RydWN0IGk5MTVfcHBndHQgKnBwZ3R0ID0g
aTkxNV92bV90b19wcGd0dCh2bSk7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
ID0gdm0tPmk5MTU7CisJdTY0IHN0YXJ0ID0gdm1hLT5ub2RlLnN0YXJ0OworCXU2NCBsZW5ndGgg
PSB2bWEtPm5vZGUuc2l6ZTsKKworCWdlbjhfcHBndHRfaW5zZXJ0XzRsdmwodm0sIHZtYSwgY2Fj
aGVfbGV2ZWwsIGZsYWdzKTsKKwl2Z3B1X3BwZ3R0X3B2X3VwZGF0ZShkZXZfcHJpdiwgUFZfQUNU
SU9OX1BQR1RUX0w0X0lOU0VSVCwKKwkJcHhfZG1hKHBwZ3R0LT5wZCksIHN0YXJ0LCBsZW5ndGgs
IGNhY2hlX2xldmVsKTsKK30KKworc3RhdGljIGludCBnZW44X3BwZ3R0X2FsbG9jXzRsdmxfcHYo
c3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sCisJCXU2NCBzdGFydCwgdTY0IGxlbmd0aCkK
K3sKKwlzdHJ1Y3QgaTkxNV9wcGd0dCAqcHBndHQgPSBpOTE1X3ZtX3RvX3BwZ3R0KHZtKTsKKwlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB2bS0+aTkxNTsKKwlpbnQgcmV0Owor
CisJcmV0ID0gZ2VuOF9wcGd0dF9hbGxvY180bHZsKHZtLCBzdGFydCwgbGVuZ3RoKTsKKwlpZiAo
cmV0KQorCQlyZXR1cm4gcmV0OworCisJcmV0dXJuIHZncHVfcHBndHRfcHZfdXBkYXRlKGRldl9w
cml2LCBQVl9BQ1RJT05fUFBHVFRfTDRfQUxMT0MsCisJCXB4X2RtYShwcGd0dC0+cGQpLCBzdGFy
dCwgbGVuZ3RoLCAwKTsKK30KKworLyoKKyAqIGNvbmZpZyBndWVzdCBkcml2ZXIgUFYgb3BzIGZv
ciBkaWZmZXJlbnQgUFYgZmVhdHVyZXMKKyAqLwordm9pZCBpbnRlbF92Z3B1X2NvbmZpZ19wdl9j
YXBzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKKwkJZW51bSBwdl9jYXBzIGNh
cCwgdm9pZCAqZGF0YSkKK3sKKwlzdHJ1Y3QgaTkxNV9wcGd0dCAqcHBndHQ7CisKKwlpZiAoIWlu
dGVsX3ZncHVfZW5hYmxlZF9wdl9jYXBzKGRldl9wcml2LCBjYXApKQorCQlyZXR1cm47CisKKwlp
ZiAoY2FwID09IFBWX1BQR1RUX1VQREFURSkgeworCQlwcGd0dCA9IChzdHJ1Y3QgaTkxNV9wcGd0
dCAqKWRhdGE7CisJCXBwZ3R0LT52bS5hbGxvY2F0ZV92YV9yYW5nZSA9IGdlbjhfcHBndHRfYWxs
b2NfNGx2bF9wdjsKKwkJcHBndHQtPnZtLmluc2VydF9lbnRyaWVzID0gZ2VuOF9wcGd0dF9pbnNl
cnRfNGx2bF9wdjsKKwkJcHBndHQtPnZtLmNsZWFyX3JhbmdlID0gZ2VuOF9wcGd0dF9jbGVhcl80
bHZsX3B2OworCX0KK30KKwogLyoqCiAgKiB3YWl0X2Zvcl9kZXNjX3VwZGF0ZSAtIFdhaXQgZm9y
IHRoZSBjb21tYW5kIGJ1ZmZlciBkZXNjcmlwdG9yIHVwZGF0ZS4KICAqIEBkZXNjOglidWZmZXIg
ZGVzY3JpcHRvcgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92Z3B1Lmgg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZncHUuaAppbmRleCAyNGM0OWI3Li45MmM4NGQz
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZncHUuaAorKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZncHUuaApAQCAtMzMsNiArMzMsMjEgQEAKICNkZWZpbmUg
UFZfQ01EX09GRgkJKFBBR0VfU0laRS8yKQogCiAvKgorICogZGVmaW5lIGRpZmZlcmVudCBjYXBh
YmlsaXRpZXMgb2YgUFYgb3B0aW1pemF0aW9uCisgKi8KK2VudW0gcHZfY2FwcyB7CisJUFZfUFBH
VFRfVVBEQVRFID0gMHgxLAorfTsKKworLyogUFYgYWN0aW9ucyAqLworZW51bSBpbnRlbF92Z3B1
X3B2X2FjdGlvbiB7CisJUFZfQUNUSU9OX0RFRkFVTFQgPSAweDAsCisJUFZfQUNUSU9OX1BQR1RU
X0w0X0FMTE9DLAorCVBWX0FDVElPTl9QUEdUVF9MNF9DTEVBUiwKKwlQVl9BQ1RJT05fUFBHVFRf
TDRfSU5TRVJULAorfTsKKworLyoKICAqIEEgc2hhcmVkIHBhZ2UoNEtCKSBiZXR3ZWVuIGd2dCBh
bmQgVk0sIGNvdWxkIGJlIGFsbG9jYXRlZCBieSBndWVzdCBkcml2ZXIKICAqIG9yIGEgZml4ZWQg
bG9jYXRpb24gaW4gUENJIGJhciAwIHJlZ2lvbgogICovCkBAIC0xMTksNiArMTM0LDE0IEBAIGlu
dGVsX3ZncHVfaGFzX3B2X2NhcHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQog
CXJldHVybiBkZXZfcHJpdi0+dmdwdS5jYXBzICYgVkdUX0NBUFNfUFY7CiB9CiAKK3N0YXRpYyBp
bmxpbmUgYm9vbAoraW50ZWxfdmdwdV9lbmFibGVkX3B2X2NhcHMoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2LAorCQllbnVtIHB2X2NhcHMgY2FwKQoreworCXJldHVybiAoZGV2X3By
aXYtPnZncHUuYWN0aXZlKSAmJiBpbnRlbF92Z3B1X2hhc19wdl9jYXBzKGRldl9wcml2KQorCQkJ
JiYgKGRldl9wcml2LT52Z3B1LnB2X2NhcHMgJiBjYXApOworfQorCiBzdGF0aWMgaW5saW5lIHZv
aWQKIGludGVsX3ZncHVfcHZfbm90aWZ5KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dikKIHsKQEAgLTEzOCw0ICsxNjEsNiBAQCB2b2lkIGludGVsX3ZndF9kZWJhbGxvb24oc3RydWN0
IGk5MTVfZ2d0dCAqZ2d0dCk7CiAvKiBpOTE1IHZncHUgcHYgcmVsYXRlZCBmdW5jdGlvbnMgKi8K
IGJvb2wgaW50ZWxfdmdwdV9jaGVja19wdl9jYXBzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiwKIAkJdm9pZCBfX2lvbWVtICpzaGFyZWRfYXJlYSk7Cit2b2lkIGludGVsX3ZncHVf
Y29uZmlnX3B2X2NhcHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAorCQllbnVt
IHB2X2NhcHMgY2FwLCB2b2lkICpkYXRhKTsKICNlbmRpZiAvKiBfSTkxNV9WR1BVX0hfICovCi0t
IAoyLjcuNAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
