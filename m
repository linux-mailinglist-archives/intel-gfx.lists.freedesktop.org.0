Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F3A79D59
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 02:32:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 092426E2DF;
	Tue, 30 Jul 2019 00:32:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C11A189E3F;
 Tue, 30 Jul 2019 00:32:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jul 2019 17:32:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,324,1559545200"; d="scan'208";a="371322806"
Received: from nperf12.hd.intel.com ([10.127.88.161])
 by fmsmga006.fm.intel.com with ESMTP; 29 Jul 2019 17:32:04 -0700
From: Brian Welty <brian.welty@intel.com>
To: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Date: Mon, 29 Jul 2019 20:32:23 -0400
Message-Id: <20190730003225.322-2-brian.welty@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190730003225.322-1-brian.welty@intel.com>
References: <20190730003225.322-1-brian.welty@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 1/3] drm: introduce new struct drm_mem_region
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

TW92ZSBiYXNpYyBtZW1iZXJzIG9mIHR0bV9tZW1fdHlwZV9tYW5hZ2VyIGludG8gYSBuZXcgRFJN
IG1lbW9yeSByZWdpb24Kc3RydWN0dXJlLiAgVGhlIGlkZWEgaXMgZm9yIHRoaXMgYmFzZSBzdHJ1
Y3R1cmUgdG8gYmUgbmVzdGVkIGluc2lkZQp0aGUgVFRNIHN0cnVjdHVyZSBhbmQgbGF0ZXIgaW4g
SW50ZWwncyBwcm9wb3NlZCBpbnRlbF9tZW1vcnlfcmVnaW9uLgoKQXMgY29tbWVudHMgaW4gdGhl
IGNvZGUgc3VnZ2VzdCwgdGhlIGZvbGxvd2luZyBmdXR1cmUgd29yayBjYW4gZXh0ZW5kCnRoZSB1
c2VmdWxuZXNzIG9mIHRoaXM6Ci0gQ3JlYXRlIGNvbW1vbiBtZW1vcnkgcmVnaW9uIHR5cGVzIChu
ZXh0IHBhdGNoKQotIENyZWF0ZSBjb21tb24gc2V0IG9mIG1lbW9yeV9yZWdpb24gZnVuY3Rpb24g
Y2FsbGJhY2tzIChiYXNlZCBvbgogIHR0bV9tZW1fdHlwZV9tYW5hZ2VyX2Z1bmNzIGFuZCBpbnRl
bF9tZW1vcnlfcmVnaW9uc19vcHMpCi0gQ3JlYXRlIGNvbW1vbiBoZWxwZXJzIHRoYXQgb3BlcmF0
ZSBvbiBkcm1fbWVtX3JlZ2lvbiB0byBiZSBsZXZlcmFnZWQKICBieSBib3RoIFRUTSBkcml2ZXJz
IGFuZCBpOTE1LCByZWR1Y2luZyBjb2RlIGR1cGxpY2F0aW9uCi0gQWJvdmUgbWlnaHQgc3RhcnQg
d2l0aCByZWZhY3RvcmluZyB0dG1fYm9fbWFuYWdlci5jIGFzIHRoZXNlIGFyZQogIGhlbHBlcnMg
Zm9yIHVzaW5nIGRybV9tbSdzIHJhbmdlIGFsbG9jYXRvciBhbmQgY291bGQgYmUgbWFkZSB0bwog
IG9wZXJhdGUgb24gRFJNIHN0cnVjdHVyZXMgaW5zdGVhZCBvZiBUVE0gb25lcy4KLSBMYXJnZXIg
Z29hbCBtaWdodCBiZSB0byBtYWtlIExSVSBtYW5hZ2VtZW50IG9mIEdFTSBvYmplY3RzIGNvbW1v
biwgYW5kCiAgbWlncmF0ZSB0aG9zZSBmaWVsZHMgaW50byBkcm1fbWVtX3JlZ2lvbiBhbmQgZHJt
X2dlbV9vYmplY3Qgc3RydWN1cmVzLgoKdm13Z2Z4IGNoYW5nZXMgaW5jbHVkZWQgaGVyZSBhcyBq
dXN0IGV4YW1wbGUgb2Ygd2hhdCBkcml2ZXIgdXBkYXRlcyB3aWxsCmxvb2sgbGlrZSwgYW5kIGNh
biBiZSBtb3ZlZCBsYXRlciB0byBzZXBhcmF0ZSBwYXRjaC4gIE90aGVyIFRUTSBkcml2ZXJzCm5l
ZWQgdG8gYmUgdXBkYXRlZCBzaW1pbGFybHkuCgpTaWduZWQtb2ZmLWJ5OiBCcmlhbiBXZWx0eSA8
YnJpYW4ud2VsdHlAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvLmMg
ICAgICAgICAgICAgICAgICB8IDM0ICsrKysrKysrKysrLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2Ry
bS90dG0vdHRtX2JvX21hbmFnZXIuYyAgICAgICAgICB8IDE0ICsrKystLS0tCiBkcml2ZXJzL2dw
dS9kcm0vdHRtL3R0bV9ib191dGlsLmMgICAgICAgICAgICAgfCAxMSArKystLS0KIGRyaXZlcnMv
Z3B1L2RybS92bXdnZngvdm13Z2Z4X2dtcmlkX21hbmFnZXIuYyB8ICA4ICsrLS0tCiBkcml2ZXJz
L2dwdS9kcm0vdm13Z2Z4L3Ztd2dmeF90dG1fYnVmZmVyLmMgICAgfCAgNCArLS0KIGluY2x1ZGUv
ZHJtL2RybV9tbS5oICAgICAgICAgICAgICAgICAgICAgICAgICB8IDMxICsrKysrKysrKysrKysr
Ky0tCiBpbmNsdWRlL2RybS90dG0vdHRtX2JvX2FwaS5oICAgICAgICAgICAgICAgICAgfCAgMiAr
LQogaW5jbHVkZS9kcm0vdHRtL3R0bV9ib19kcml2ZXIuaCAgICAgICAgICAgICAgIHwgMTYgKysr
Ky0tLS0tCiA4IGZpbGVzIGNoYW5nZWQsIDc1IGluc2VydGlvbnMoKyksIDQ1IGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvLmMgYi9kcml2ZXJzL2dw
dS9kcm0vdHRtL3R0bV9iby5jCmluZGV4IDU4YzQwM2VkYTA0ZS4uNDU0MzRlYTUxM2RkIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS90dG0vdHRtX2JvLmMKQEAgLTg0LDggKzg0LDggQEAgc3RhdGljIHZvaWQgdHRtX21lbV90eXBl
X2RlYnVnKHN0cnVjdCB0dG1fYm9fZGV2aWNlICpiZGV2LCBzdHJ1Y3QgZHJtX3ByaW50ZXIgKnAK
IAlkcm1fcHJpbnRmKHAsICIgICAgaGFzX3R5cGU6ICVkXG4iLCBtYW4tPmhhc190eXBlKTsKIAlk
cm1fcHJpbnRmKHAsICIgICAgdXNlX3R5cGU6ICVkXG4iLCBtYW4tPnVzZV90eXBlKTsKIAlkcm1f
cHJpbnRmKHAsICIgICAgZmxhZ3M6IDB4JTA4WFxuIiwgbWFuLT5mbGFncyk7Ci0JZHJtX3ByaW50
ZihwLCAiICAgIGdwdV9vZmZzZXQ6IDB4JTA4bGxYXG4iLCBtYW4tPmdwdV9vZmZzZXQpOwotCWRy
bV9wcmludGYocCwgIiAgICBzaXplOiAlbGx1XG4iLCBtYW4tPnNpemUpOworCWRybV9wcmludGYo
cCwgIiAgICBncHVfb2Zmc2V0OiAweCUwOGxsWFxuIiwgbWFuLT5yZWdpb24uc3RhcnQpOworCWRy
bV9wcmludGYocCwgIiAgICBzaXplOiAlbGx1XG4iLCBtYW4tPnJlZ2lvbi5zaXplKTsKIAlkcm1f
cHJpbnRmKHAsICIgICAgYXZhaWxhYmxlX2NhY2hpbmc6IDB4JTA4WFxuIiwgbWFuLT5hdmFpbGFi
bGVfY2FjaGluZyk7CiAJZHJtX3ByaW50ZihwLCAiICAgIGRlZmF1bHRfY2FjaGluZzogMHglMDhY
XG4iLCBtYW4tPmRlZmF1bHRfY2FjaGluZyk7CiAJaWYgKG1lbV90eXBlICE9IFRUTV9QTF9TWVNU
RU0pCkBAIC0zOTksNyArMzk5LDcgQEAgc3RhdGljIGludCB0dG1fYm9faGFuZGxlX21vdmVfbWVt
KHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8sCiAKIAlpZiAoYm8tPm1lbS5tbV9ub2RlKQog
CQliby0+b2Zmc2V0ID0gKGJvLT5tZW0uc3RhcnQgPDwgUEFHRV9TSElGVCkgKwotCQkgICAgYmRl
di0+bWFuW2JvLT5tZW0ubWVtX3R5cGVdLmdwdV9vZmZzZXQ7CisJCSAgICBiZGV2LT5tYW5bYm8t
Pm1lbS5tZW1fdHlwZV0ucmVnaW9uLnN0YXJ0OwogCWVsc2UKIAkJYm8tPm9mZnNldCA9IDA7CiAK
QEAgLTkyNiw5ICs5MjYsOSBAQCBzdGF0aWMgaW50IHR0bV9ib19hZGRfbW92ZV9mZW5jZShzdHJ1
Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvLAogCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwogCWlu
dCByZXQ7CiAKLQlzcGluX2xvY2soJm1hbi0+bW92ZV9sb2NrKTsKLQlmZW5jZSA9IGRtYV9mZW5j
ZV9nZXQobWFuLT5tb3ZlKTsKLQlzcGluX3VubG9jaygmbWFuLT5tb3ZlX2xvY2spOworCXNwaW5f
bG9jaygmbWFuLT5yZWdpb24ubW92ZV9sb2NrKTsKKwlmZW5jZSA9IGRtYV9mZW5jZV9nZXQobWFu
LT5yZWdpb24ubW92ZSk7CisJc3Bpbl91bmxvY2soJm1hbi0+cmVnaW9uLm1vdmVfbG9jayk7CiAK
IAlpZiAoZmVuY2UpIHsKIAkJcmVzZXJ2YXRpb25fb2JqZWN0X2FkZF9zaGFyZWRfZmVuY2UoYm8t
PnJlc3YsIGZlbmNlKTsKQEAgLTE0OTAsOSArMTQ5MCw5IEBAIHN0YXRpYyBpbnQgdHRtX2JvX2Zv
cmNlX2xpc3RfY2xlYW4oc3RydWN0IHR0bV9ib19kZXZpY2UgKmJkZXYsCiAJfQogCXNwaW5fdW5s
b2NrKCZnbG9iLT5scnVfbG9jayk7CiAKLQlzcGluX2xvY2soJm1hbi0+bW92ZV9sb2NrKTsKLQlm
ZW5jZSA9IGRtYV9mZW5jZV9nZXQobWFuLT5tb3ZlKTsKLQlzcGluX3VubG9jaygmbWFuLT5tb3Zl
X2xvY2spOworCXNwaW5fbG9jaygmbWFuLT5yZWdpb24ubW92ZV9sb2NrKTsKKwlmZW5jZSA9IGRt
YV9mZW5jZV9nZXQobWFuLT5yZWdpb24ubW92ZSk7CisJc3Bpbl91bmxvY2soJm1hbi0+cmVnaW9u
Lm1vdmVfbG9jayk7CiAKIAlpZiAoZmVuY2UpIHsKIAkJcmV0ID0gZG1hX2ZlbmNlX3dhaXQoZmVu
Y2UsIGZhbHNlKTsKQEAgLTE1MzUsOCArMTUzNSw4IEBAIGludCB0dG1fYm9fY2xlYW5fbW0oc3Ry
dWN0IHR0bV9ib19kZXZpY2UgKmJkZXYsIHVuc2lnbmVkIG1lbV90eXBlKQogCQlyZXQgPSAoKm1h
bi0+ZnVuYy0+dGFrZWRvd24pKG1hbik7CiAJfQogCi0JZG1hX2ZlbmNlX3B1dChtYW4tPm1vdmUp
OwotCW1hbi0+bW92ZSA9IE5VTEw7CisJZG1hX2ZlbmNlX3B1dChtYW4tPnJlZ2lvbi5tb3ZlKTsK
KwltYW4tPnJlZ2lvbi5tb3ZlID0gTlVMTDsKIAogCXJldHVybiByZXQ7CiB9CkBAIC0xNTYxLDcg
KzE1NjEsNyBAQCBpbnQgdHRtX2JvX2V2aWN0X21tKHN0cnVjdCB0dG1fYm9fZGV2aWNlICpiZGV2
LCB1bnNpZ25lZCBtZW1fdHlwZSkKIEVYUE9SVF9TWU1CT0wodHRtX2JvX2V2aWN0X21tKTsKIAog
aW50IHR0bV9ib19pbml0X21tKHN0cnVjdCB0dG1fYm9fZGV2aWNlICpiZGV2LCB1bnNpZ25lZCB0
eXBlLAotCQkJdW5zaWduZWQgbG9uZyBwX3NpemUpCisJCSAgIHJlc291cmNlX3NpemVfdCBwX3Np
emUpCiB7CiAJaW50IHJldDsKIAlzdHJ1Y3QgdHRtX21lbV90eXBlX21hbmFnZXIgKm1hbjsKQEAg
LTE1NzAsMTAgKzE1NzAsMTYgQEAgaW50IHR0bV9ib19pbml0X21tKHN0cnVjdCB0dG1fYm9fZGV2
aWNlICpiZGV2LCB1bnNpZ25lZCB0eXBlLAogCUJVR19PTih0eXBlID49IFRUTV9OVU1fTUVNX1RZ
UEVTKTsKIAltYW4gPSAmYmRldi0+bWFuW3R5cGVdOwogCUJVR19PTihtYW4tPmhhc190eXBlKTsK
KworCS8qIEZJWE1FOiBhZGQgY2FsbCB0byAobmV3KSBkcm1fbWVtX3JlZ2lvbl9pbml0ID8gKi8K
KwltYW4tPnJlZ2lvbi5zaXplID0gcF9zaXplOworCW1hbi0+cmVnaW9uLnR5cGUgPSB0eXBlOwor
CXNwaW5fbG9ja19pbml0KCZtYW4tPnJlZ2lvbi5tb3ZlX2xvY2spOworCW1hbi0+cmVnaW9uLm1v
dmUgPSBOVUxMOworCiAJbWFuLT5pb19yZXNlcnZlX2Zhc3RwYXRoID0gdHJ1ZTsKIAltYW4tPnVz
ZV9pb19yZXNlcnZlX2xydSA9IGZhbHNlOwogCW11dGV4X2luaXQoJm1hbi0+aW9fcmVzZXJ2ZV9t
dXRleCk7Ci0Jc3Bpbl9sb2NrX2luaXQoJm1hbi0+bW92ZV9sb2NrKTsKIAlJTklUX0xJU1RfSEVB
RCgmbWFuLT5pb19yZXNlcnZlX2xydSk7CiAKIAlyZXQgPSBiZGV2LT5kcml2ZXItPmluaXRfbWVt
X3R5cGUoYmRldiwgdHlwZSwgbWFuKTsKQEAgLTE1ODgsMTEgKzE1OTQsOSBAQCBpbnQgdHRtX2Jv
X2luaXRfbW0oc3RydWN0IHR0bV9ib19kZXZpY2UgKmJkZXYsIHVuc2lnbmVkIHR5cGUsCiAJfQog
CW1hbi0+aGFzX3R5cGUgPSB0cnVlOwogCW1hbi0+dXNlX3R5cGUgPSB0cnVlOwotCW1hbi0+c2l6
ZSA9IHBfc2l6ZTsKIAogCWZvciAoaSA9IDA7IGkgPCBUVE1fTUFYX0JPX1BSSU9SSVRZOyArK2kp
CiAJCUlOSVRfTElTVF9IRUFEKCZtYW4tPmxydVtpXSk7Ci0JbWFuLT5tb3ZlID0gTlVMTDsKIAog
CXJldHVybiAwOwogfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fbWFu
YWdlci5jIGIvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fbWFuYWdlci5jCmluZGV4IDE4ZDNk
ZWJjYzk0OS4uMGE5OWIzZDViNDgyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0
bV9ib19tYW5hZ2VyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fbWFuYWdlci5j
CkBAIC01Myw3ICs1Myw3IEBAIHN0YXRpYyBpbnQgdHRtX2JvX21hbl9nZXRfbm9kZShzdHJ1Y3Qg
dHRtX21lbV90eXBlX21hbmFnZXIgKm1hbiwKIAkJCSAgICAgICBjb25zdCBzdHJ1Y3QgdHRtX3Bs
YWNlICpwbGFjZSwKIAkJCSAgICAgICBzdHJ1Y3QgdHRtX21lbV9yZWcgKm1lbSkKIHsKLQlzdHJ1
Y3QgdHRtX3JhbmdlX21hbmFnZXIgKnJtYW4gPSAoc3RydWN0IHR0bV9yYW5nZV9tYW5hZ2VyICop
IG1hbi0+cHJpdjsKKwlzdHJ1Y3QgdHRtX3JhbmdlX21hbmFnZXIgKnJtYW4gPSAoc3RydWN0IHR0
bV9yYW5nZV9tYW5hZ2VyICopIG1hbi0+cmVnaW9uLnByaXY7CiAJc3RydWN0IGRybV9tbSAqbW0g
PSAmcm1hbi0+bW07CiAJc3RydWN0IGRybV9tbV9ub2RlICpub2RlOwogCWVudW0gZHJtX21tX2lu
c2VydF9tb2RlIG1vZGU7CkBAIC02Miw3ICs2Miw3IEBAIHN0YXRpYyBpbnQgdHRtX2JvX21hbl9n
ZXRfbm9kZShzdHJ1Y3QgdHRtX21lbV90eXBlX21hbmFnZXIgKm1hbiwKIAogCWxwZm4gPSBwbGFj
ZS0+bHBmbjsKIAlpZiAoIWxwZm4pCi0JCWxwZm4gPSBtYW4tPnNpemU7CisJCWxwZm4gPSBtYW4t
PnJlZ2lvbi5zaXplOwogCiAJbm9kZSA9IGt6YWxsb2Moc2l6ZW9mKCpub2RlKSwgR0ZQX0tFUk5F
TCk7CiAJaWYgKCFub2RlKQpAQCAtOTIsNyArOTIsNyBAQCBzdGF0aWMgaW50IHR0bV9ib19tYW5f
Z2V0X25vZGUoc3RydWN0IHR0bV9tZW1fdHlwZV9tYW5hZ2VyICptYW4sCiBzdGF0aWMgdm9pZCB0
dG1fYm9fbWFuX3B1dF9ub2RlKHN0cnVjdCB0dG1fbWVtX3R5cGVfbWFuYWdlciAqbWFuLAogCQkJ
CXN0cnVjdCB0dG1fbWVtX3JlZyAqbWVtKQogewotCXN0cnVjdCB0dG1fcmFuZ2VfbWFuYWdlciAq
cm1hbiA9IChzdHJ1Y3QgdHRtX3JhbmdlX21hbmFnZXIgKikgbWFuLT5wcml2OworCXN0cnVjdCB0
dG1fcmFuZ2VfbWFuYWdlciAqcm1hbiA9IChzdHJ1Y3QgdHRtX3JhbmdlX21hbmFnZXIgKikgbWFu
LT5yZWdpb24ucHJpdjsKIAogCWlmIChtZW0tPm1tX25vZGUpIHsKIAkJc3Bpbl9sb2NrKCZybWFu
LT5sb2NrKTsKQEAgLTExNSwxMyArMTE1LDEzIEBAIHN0YXRpYyBpbnQgdHRtX2JvX21hbl9pbml0
KHN0cnVjdCB0dG1fbWVtX3R5cGVfbWFuYWdlciAqbWFuLAogCiAJZHJtX21tX2luaXQoJnJtYW4t
Pm1tLCAwLCBwX3NpemUpOwogCXNwaW5fbG9ja19pbml0KCZybWFuLT5sb2NrKTsKLQltYW4tPnBy
aXYgPSBybWFuOworCW1hbi0+cmVnaW9uLnByaXYgPSBybWFuOwogCXJldHVybiAwOwogfQogCiBz
dGF0aWMgaW50IHR0bV9ib19tYW5fdGFrZWRvd24oc3RydWN0IHR0bV9tZW1fdHlwZV9tYW5hZ2Vy
ICptYW4pCiB7Ci0Jc3RydWN0IHR0bV9yYW5nZV9tYW5hZ2VyICpybWFuID0gKHN0cnVjdCB0dG1f
cmFuZ2VfbWFuYWdlciAqKSBtYW4tPnByaXY7CisJc3RydWN0IHR0bV9yYW5nZV9tYW5hZ2VyICpy
bWFuID0gKHN0cnVjdCB0dG1fcmFuZ2VfbWFuYWdlciAqKSBtYW4tPnJlZ2lvbi5wcml2OwogCXN0
cnVjdCBkcm1fbW0gKm1tID0gJnJtYW4tPm1tOwogCiAJc3Bpbl9sb2NrKCZybWFuLT5sb2NrKTsK
QEAgLTEyOSw3ICsxMjksNyBAQCBzdGF0aWMgaW50IHR0bV9ib19tYW5fdGFrZWRvd24oc3RydWN0
IHR0bV9tZW1fdHlwZV9tYW5hZ2VyICptYW4pCiAJCWRybV9tbV90YWtlZG93bihtbSk7CiAJCXNw
aW5fdW5sb2NrKCZybWFuLT5sb2NrKTsKIAkJa2ZyZWUocm1hbik7Ci0JCW1hbi0+cHJpdiA9IE5V
TEw7CisJCW1hbi0+cmVnaW9uLnByaXYgPSBOVUxMOwogCQlyZXR1cm4gMDsKIAl9CiAJc3Bpbl91
bmxvY2soJnJtYW4tPmxvY2spOwpAQCAtMTM5LDcgKzEzOSw3IEBAIHN0YXRpYyBpbnQgdHRtX2Jv
X21hbl90YWtlZG93bihzdHJ1Y3QgdHRtX21lbV90eXBlX21hbmFnZXIgKm1hbikKIHN0YXRpYyB2
b2lkIHR0bV9ib19tYW5fZGVidWcoc3RydWN0IHR0bV9tZW1fdHlwZV9tYW5hZ2VyICptYW4sCiAJ
CQkgICAgIHN0cnVjdCBkcm1fcHJpbnRlciAqcHJpbnRlcikKIHsKLQlzdHJ1Y3QgdHRtX3Jhbmdl
X21hbmFnZXIgKnJtYW4gPSAoc3RydWN0IHR0bV9yYW5nZV9tYW5hZ2VyICopIG1hbi0+cHJpdjsK
KwlzdHJ1Y3QgdHRtX3JhbmdlX21hbmFnZXIgKnJtYW4gPSAoc3RydWN0IHR0bV9yYW5nZV9tYW5h
Z2VyICopIG1hbi0+cmVnaW9uLnByaXY7CiAKIAlzcGluX2xvY2soJnJtYW4tPmxvY2spOwogCWRy
bV9tbV9wcmludCgmcm1hbi0+bW0sIHByaW50ZXIpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL3R0bS90dG1fYm9fdXRpbC5jIGIvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdXRpbC5j
CmluZGV4IDlmOTE4Yjk5MmY3ZS4uZTQ0ZDBiN2Q2MGI0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vdHRtL3R0bV9ib191dGlsLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9f
dXRpbC5jCkBAIC03OTUsMTIgKzc5NSwxMyBAQCBpbnQgdHRtX2JvX3BpcGVsaW5lX21vdmUoc3Ry
dWN0IHR0bV9idWZmZXJfb2JqZWN0ICpibywKIAkJICogdGhpcyBldmljdGlvbiBhbmQgZnJlZSB1
cCB0aGUgYWxsb2NhdGlvbgogCQkgKi8KIAotCQlzcGluX2xvY2soJmZyb20tPm1vdmVfbG9jayk7
Ci0JCWlmICghZnJvbS0+bW92ZSB8fCBkbWFfZmVuY2VfaXNfbGF0ZXIoZmVuY2UsIGZyb20tPm1v
dmUpKSB7Ci0JCQlkbWFfZmVuY2VfcHV0KGZyb20tPm1vdmUpOwotCQkJZnJvbS0+bW92ZSA9IGRt
YV9mZW5jZV9nZXQoZmVuY2UpOworCQlzcGluX2xvY2soJmZyb20tPnJlZ2lvbi5tb3ZlX2xvY2sp
OworCQlpZiAoIWZyb20tPnJlZ2lvbi5tb3ZlIHx8CisJCSAgICBkbWFfZmVuY2VfaXNfbGF0ZXIo
ZmVuY2UsIGZyb20tPnJlZ2lvbi5tb3ZlKSkgeworCQkJZG1hX2ZlbmNlX3B1dChmcm9tLT5yZWdp
b24ubW92ZSk7CisJCQlmcm9tLT5yZWdpb24ubW92ZSA9IGRtYV9mZW5jZV9nZXQoZmVuY2UpOwog
CQl9Ci0JCXNwaW5fdW5sb2NrKCZmcm9tLT5tb3ZlX2xvY2spOworCQlzcGluX3VubG9jaygmZnJv
bS0+cmVnaW9uLm1vdmVfbG9jayk7CiAKIAkJdHRtX2JvX2ZyZWVfb2xkX25vZGUoYm8pOwogCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdm13Z2Z4L3Ztd2dmeF9nbXJpZF9tYW5hZ2VyLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vdm13Z2Z4L3Ztd2dmeF9nbXJpZF9tYW5hZ2VyLmMKaW5kZXggN2Rh
NzUyY2ExYzM0Li5kZDRmODVhY2NjNGUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS92bXdn
Zngvdm13Z2Z4X2dtcmlkX21hbmFnZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vdm13Z2Z4L3Zt
d2dmeF9nbXJpZF9tYW5hZ2VyLmMKQEAgLTUwLDcgKzUwLDcgQEAgc3RhdGljIGludCB2bXdfZ21y
aWRfbWFuX2dldF9ub2RlKHN0cnVjdCB0dG1fbWVtX3R5cGVfbWFuYWdlciAqbWFuLAogCQkJCSAg
c3RydWN0IHR0bV9tZW1fcmVnICptZW0pCiB7CiAJc3RydWN0IHZtd2dmeF9nbXJpZF9tYW4gKmdt
YW4gPQotCQkoc3RydWN0IHZtd2dmeF9nbXJpZF9tYW4gKiltYW4tPnByaXY7CisJCShzdHJ1Y3Qg
dm13Z2Z4X2dtcmlkX21hbiAqKW1hbi0+cmVnaW9uLnByaXY7CiAJaW50IGlkOwogCiAJbWVtLT5t
bV9ub2RlID0gTlVMTDsKQEAgLTg1LDcgKzg1LDcgQEAgc3RhdGljIHZvaWQgdm13X2dtcmlkX21h
bl9wdXRfbm9kZShzdHJ1Y3QgdHRtX21lbV90eXBlX21hbmFnZXIgKm1hbiwKIAkJCQkgICBzdHJ1
Y3QgdHRtX21lbV9yZWcgKm1lbSkKIHsKIAlzdHJ1Y3Qgdm13Z2Z4X2dtcmlkX21hbiAqZ21hbiA9
Ci0JCShzdHJ1Y3Qgdm13Z2Z4X2dtcmlkX21hbiAqKW1hbi0+cHJpdjsKKwkJKHN0cnVjdCB2bXdn
ZnhfZ21yaWRfbWFuICopbWFuLT5yZWdpb24ucHJpdjsKIAogCWlmIChtZW0tPm1tX25vZGUpIHsK
IAkJaWRhX2ZyZWUoJmdtYW4tPmdtcl9pZGEsIG1lbS0+c3RhcnQpOwpAQCAtMTIzLDE0ICsxMjMs
MTQgQEAgc3RhdGljIGludCB2bXdfZ21yaWRfbWFuX2luaXQoc3RydWN0IHR0bV9tZW1fdHlwZV9t
YW5hZ2VyICptYW4sCiAJZGVmYXVsdDoKIAkJQlVHKCk7CiAJfQotCW1hbi0+cHJpdiA9ICh2b2lk
ICopIGdtYW47CisJbWFuLT5yZWdpb24ucHJpdiA9ICh2b2lkICopIGdtYW47CiAJcmV0dXJuIDA7
CiB9CiAKIHN0YXRpYyBpbnQgdm13X2dtcmlkX21hbl90YWtlZG93bihzdHJ1Y3QgdHRtX21lbV90
eXBlX21hbmFnZXIgKm1hbikKIHsKIAlzdHJ1Y3Qgdm13Z2Z4X2dtcmlkX21hbiAqZ21hbiA9Ci0J
CShzdHJ1Y3Qgdm13Z2Z4X2dtcmlkX21hbiAqKW1hbi0+cHJpdjsKKwkJKHN0cnVjdCB2bXdnZnhf
Z21yaWRfbWFuICopbWFuLT5yZWdpb24ucHJpdjsKIAogCWlmIChnbWFuKSB7CiAJCWlkYV9kZXN0
cm95KCZnbWFuLT5nbXJfaWRhKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS92bXdnZngv
dm13Z2Z4X3R0bV9idWZmZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS92bXdnZngvdm13Z2Z4X3R0bV9i
dWZmZXIuYwppbmRleCBkOGVhM2RkMTBhZjAuLmM2ZTk5ODkzZTk5MyAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL3Ztd2dmeC92bXdnZnhfdHRtX2J1ZmZlci5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS92bXdnZngvdm13Z2Z4X3R0bV9idWZmZXIuYwpAQCAtNzU1LDcgKzc1NSw3IEBAIHN0YXRp
YyBpbnQgdm13X2luaXRfbWVtX3R5cGUoc3RydWN0IHR0bV9ib19kZXZpY2UgKmJkZXYsIHVpbnQz
Ml90IHR5cGUsCiAJY2FzZSBUVE1fUExfVlJBTToKIAkJLyogIk9uLWNhcmQiIHZpZGVvIHJhbSAq
LwogCQltYW4tPmZ1bmMgPSAmdHRtX2JvX21hbmFnZXJfZnVuYzsKLQkJbWFuLT5ncHVfb2Zmc2V0
ID0gMDsKKwkJbWFuLT5yZWdpb24uc3RhcnQgPSAwOwogCQltYW4tPmZsYWdzID0gVFRNX01FTVRZ
UEVfRkxBR19GSVhFRCB8IFRUTV9NRU1UWVBFX0ZMQUdfTUFQUEFCTEU7CiAJCW1hbi0+YXZhaWxh
YmxlX2NhY2hpbmcgPSBUVE1fUExfRkxBR19DQUNIRUQ7CiAJCW1hbi0+ZGVmYXVsdF9jYWNoaW5n
ID0gVFRNX1BMX0ZMQUdfQ0FDSEVEOwpAQCAtNzY4LDcgKzc2OCw3IEBAIHN0YXRpYyBpbnQgdm13
X2luaXRfbWVtX3R5cGUoc3RydWN0IHR0bV9ib19kZXZpY2UgKmJkZXYsIHVpbnQzMl90IHR5cGUs
CiAJCSAqICBzbG90cyBhcyB3ZWxsIGFzIHRoZSBibyBzaXplLgogCQkgKi8KIAkJbWFuLT5mdW5j
ID0gJnZtd19nbXJpZF9tYW5hZ2VyX2Z1bmM7Ci0JCW1hbi0+Z3B1X29mZnNldCA9IDA7CisJCW1h
bi0+cmVnaW9uLnN0YXJ0ID0gMDsKIAkJbWFuLT5mbGFncyA9IFRUTV9NRU1UWVBFX0ZMQUdfQ01B
IHwgVFRNX01FTVRZUEVfRkxBR19NQVBQQUJMRTsKIAkJbWFuLT5hdmFpbGFibGVfY2FjaGluZyA9
IFRUTV9QTF9GTEFHX0NBQ0hFRDsKIAkJbWFuLT5kZWZhdWx0X2NhY2hpbmcgPSBUVE1fUExfRkxB
R19DQUNIRUQ7CmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fbW0uaCBiL2luY2x1ZGUvZHJt
L2RybV9tbS5oCmluZGV4IDJjM2JiYjQzYzdkMS4uNDY1ZjhkMTBkODYzIDEwMDY0NAotLS0gYS9p
bmNsdWRlL2RybS9kcm1fbW0uaAorKysgYi9pbmNsdWRlL2RybS9kcm1fbW0uaApAQCAtMzgsMTAg
KzM4LDEyIEBACiAgKiBHZW5lcmljIHJhbmdlIG1hbmFnZXIgc3RydWN0cwogICovCiAjaW5jbHVk
ZSA8bGludXgvYnVnLmg+Ci0jaW5jbHVkZSA8bGludXgvcmJ0cmVlLmg+CisjaW5jbHVkZSA8bGlu
dXgvZG1hLWZlbmNlLmg+CisjaW5jbHVkZSA8bGludXgvaW8tbWFwcGluZy5oPgogI2luY2x1ZGUg
PGxpbnV4L2tlcm5lbC5oPgotI2luY2x1ZGUgPGxpbnV4L21tX3R5cGVzLmg+CiAjaW5jbHVkZSA8
bGludXgvbGlzdC5oPgorI2luY2x1ZGUgPGxpbnV4L21tX3R5cGVzLmg+CisjaW5jbHVkZSA8bGlu
dXgvcmJ0cmVlLmg+CiAjaW5jbHVkZSA8bGludXgvc3BpbmxvY2suaD4KICNpZmRlZiBDT05GSUdf
RFJNX0RFQlVHX01NCiAjaW5jbHVkZSA8bGludXgvc3RhY2tkZXBvdC5oPgpAQCAtNTQsNiArNTYs
MzEgQEAKICNkZWZpbmUgRFJNX01NX0JVR19PTihleHByKSBCVUlMRF9CVUdfT05fSU5WQUxJRChl
eHByKQogI2VuZGlmCiAKK3N0cnVjdCBkcm1fZGV2aWNlOworc3RydWN0IGRybV9tbTsKKworLyoq
CisgKiBzdHJ1Y3QgZHJtX21lbV9yZWdpb24KKyAqCisgKiBCYXNlIG1lbW9yeSByZWdpb24gc3Ry
dWN0dXJlIHRvIGJlIG5lc3RlZCBpbnNpZGUgVFRNIG1lbW9yeSByZWdpb25zCisgKiAodHRtX21l
bV90eXBlX21hbmFnZXIpIGFuZCBpOTE1IG1lbW9yeSByZWdpb25zIChpbnRlbF9tZW1vcnlfcmVn
aW9uKS4KKyAqLworc3RydWN0IGRybV9tZW1fcmVnaW9uIHsKKwlyZXNvdXJjZV9zaXplX3Qgc3Rh
cnQ7IC8qIHdpdGhpbiBHUFUgcGh5c2ljYWwgYWRkcmVzcyBzcGFjZSAqLworCXJlc291cmNlX3Np
emVfdCBpb19zdGFydDsgLyogQkFSIGFkZHJlc3MgKENQVSBhY2Nlc3NpYmxlKSAqLworCXJlc291
cmNlX3NpemVfdCBzaXplOworCXN0cnVjdCBpb19tYXBwaW5nIGlvbWFwOworCXU4IHR5cGU7CisK
Kwl1bmlvbiB7CisJCXN0cnVjdCBkcm1fbW0gKm1tOworCQkvKiBGSVhNRSAoZm9yIGk5MTUpOiBz
dHJ1Y3QgZHJtX2J1ZGR5X21tICpidWRkeV9tbTsgKi8KKwkJdm9pZCAqcHJpdjsKKwl9OworCXNw
aW5sb2NrX3QgbW92ZV9sb2NrOworCXN0cnVjdCBkbWFfZmVuY2UgKm1vdmU7Cit9OworCiAvKioK
ICAqIGVudW0gZHJtX21tX2luc2VydF9tb2RlIC0gY29udHJvbCBzZWFyY2ggYW5kIGFsbG9jYXRp
b24gYmVoYXZpb3VyCiAgKgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vdHRtL3R0bV9ib19hcGku
aCBiL2luY2x1ZGUvZHJtL3R0bS90dG1fYm9fYXBpLmgKaW5kZXggNDlkOWNkZmM1OGYyLi5mOGNi
MzMyZjBlZWIgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvZHJtL3R0bS90dG1fYm9fYXBpLmgKKysrIGIv
aW5jbHVkZS9kcm0vdHRtL3R0bV9ib19hcGkuaApAQCAtNjE1LDcgKzYxNSw3IEBAIGludCB0dG1f
Ym9fY3JlYXRlKHN0cnVjdCB0dG1fYm9fZGV2aWNlICpiZGV2LCB1bnNpZ25lZCBsb25nIHNpemUs
CiAgKiBNYXkgYWxzbyByZXR1cm4gZHJpdmVyLXNwZWNpZmllZCBlcnJvcnMuCiAgKi8KIGludCB0
dG1fYm9faW5pdF9tbShzdHJ1Y3QgdHRtX2JvX2RldmljZSAqYmRldiwgdW5zaWduZWQgdHlwZSwK
LQkJICAgdW5zaWduZWQgbG9uZyBwX3NpemUpOworCQkgICByZXNvdXJjZV9zaXplX3QgcF9zaXpl
KTsKIAogLyoqCiAgKiB0dG1fYm9fY2xlYW5fbW0KZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL3R0
bS90dG1fYm9fZHJpdmVyLmggYi9pbmNsdWRlL2RybS90dG0vdHRtX2JvX2RyaXZlci5oCmluZGV4
IGM5YjhiYTQ5MmYyNC4uNDA2NmVlMzE1NDY5IDEwMDY0NAotLS0gYS9pbmNsdWRlL2RybS90dG0v
dHRtX2JvX2RyaXZlci5oCisrKyBiL2luY2x1ZGUvZHJtL3R0bS90dG1fYm9fZHJpdmVyLmgKQEAg
LTUxLDYgKzUxLDEyIEBACiAKIHN0cnVjdCB0dG1fbWVtX3R5cGVfbWFuYWdlcjsKIAorLyogRklY
TUU6CisgKiBQb3RlbnRpYWxseSBjYW4gcmV3b3JrIHRoaXMgYXMgY29tbW9uIGNhbGxiYWNrcyBm
b3IgZHJtX21lbV9yZWdpb24KKyAqIGluc3RlYWQgb2YgdHRtX21lbV90eXBlX21hbmFnZXIuCisg
KiBUaGVuIHRoZSBpbnRlbF9tZW1vcnlfcmVnaW9uX29wcyBwcm9wb3NlZCBieSBMTUVNIHBhdGNo
IHNlcmllcyBjb3VsZAorICogYmUgZm9sZGVkIGludG8gaGVyZS4KKyAqLwogc3RydWN0IHR0bV9t
ZW1fdHlwZV9tYW5hZ2VyX2Z1bmMgewogCS8qKgogCSAqIHN0cnVjdCB0dG1fbWVtX3R5cGVfbWFu
YWdlciBtZW1iZXIgaW5pdApAQCAtMTY4LDYgKzE3NCw3IEBAIHN0cnVjdCB0dG1fbWVtX3R5cGVf
bWFuYWdlcl9mdW5jIHsKIAogCiBzdHJ1Y3QgdHRtX21lbV90eXBlX21hbmFnZXIgeworCXN0cnVj
dCBkcm1fbWVtX3JlZ2lvbiByZWdpb247CiAJc3RydWN0IHR0bV9ib19kZXZpY2UgKmJkZXY7CiAK
IAkvKgpAQCAtMTc3LDE2ICsxODQsMTIgQEAgc3RydWN0IHR0bV9tZW1fdHlwZV9tYW5hZ2VyIHsK
IAlib29sIGhhc190eXBlOwogCWJvb2wgdXNlX3R5cGU7CiAJdWludDMyX3QgZmxhZ3M7Ci0JdWlu
dDY0X3QgZ3B1X29mZnNldDsgLyogR1BVIGFkZHJlc3Mgc3BhY2UgaXMgaW5kZXBlbmRlbnQgb2Yg
Q1BVIHdvcmQgc2l6ZSAqLwotCXVpbnQ2NF90IHNpemU7CiAJdWludDMyX3QgYXZhaWxhYmxlX2Nh
Y2hpbmc7CiAJdWludDMyX3QgZGVmYXVsdF9jYWNoaW5nOwogCWNvbnN0IHN0cnVjdCB0dG1fbWVt
X3R5cGVfbWFuYWdlcl9mdW5jICpmdW5jOwotCXZvaWQgKnByaXY7CiAJc3RydWN0IG11dGV4IGlv
X3Jlc2VydmVfbXV0ZXg7CiAJYm9vbCB1c2VfaW9fcmVzZXJ2ZV9scnU7CiAJYm9vbCBpb19yZXNl
cnZlX2Zhc3RwYXRoOwotCXNwaW5sb2NrX3QgbW92ZV9sb2NrOwogCiAJLyoKIAkgKiBQcm90ZWN0
ZWQgYnkgQGlvX3Jlc2VydmVfbXV0ZXg6CkBAIC0xOTksMTEgKzIwMiw2IEBAIHN0cnVjdCB0dG1f
bWVtX3R5cGVfbWFuYWdlciB7CiAJICovCiAKIAlzdHJ1Y3QgbGlzdF9oZWFkIGxydVtUVE1fTUFY
X0JPX1BSSU9SSVRZXTsKLQotCS8qCi0JICogUHJvdGVjdGVkIGJ5IEBtb3ZlX2xvY2suCi0JICov
Ci0Jc3RydWN0IGRtYV9mZW5jZSAqbW92ZTsKIH07CiAKIC8qKgotLSAKMi4yMS4wCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
