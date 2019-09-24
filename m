Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3C0BC96B
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2019 15:56:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65B506EA3A;
	Tue, 24 Sep 2019 13:56:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D898D6EA08;
 Tue, 24 Sep 2019 13:56:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B2AA8796EB;
 Tue, 24 Sep 2019 13:56:02 +0000 (UTC)
Received: from jason-ThinkPad-X1-Carbon-6th.redhat.com
 (ovpn-12-44.pek2.redhat.com [10.72.12.44])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1DFB95B69A;
 Tue, 24 Sep 2019 13:55:39 +0000 (UTC)
From: Jason Wang <jasowang@redhat.com>
To: kvm@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-gvt-dev@lists.freedesktop.org,
 kwankhede@nvidia.com, alex.williamson@redhat.com, mst@redhat.com,
 tiwei.bie@intel.com
Date: Tue, 24 Sep 2019 21:53:29 +0800
Message-Id: <20190924135332.14160-6-jasowang@redhat.com>
In-Reply-To: <20190924135332.14160-1-jasowang@redhat.com>
References: <20190924135332.14160-1-jasowang@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Tue, 24 Sep 2019 13:56:03 +0000 (UTC)
Subject: [Intel-gfx] [PATCH V2 5/8] mdev: introduce device specific ops
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
Cc: christophe.de.dinechin@gmail.com, sebott@linux.ibm.com, airlied@linux.ie,
 Jason Wang <jasowang@redhat.com>, heiko.carstens@de.ibm.com,
 virtualization@lists.linux-foundation.org, rob.miller@broadcom.com,
 lulu@redhat.com, eperezma@redhat.com, pasic@linux.ibm.com,
 borntraeger@de.ibm.com, haotian.wang@sifive.com, farman@linux.ibm.com,
 idos@mellanox.com, gor@linux.ibm.com, cunming.liang@intel.com,
 xiao.w.wang@intel.com, freude@linux.ibm.com, parav@mellanox.com,
 zhihong.wang@intel.com, akrowiak@linux.ibm.com, netdev@vger.kernel.org,
 cohuck@redhat.com, oberpar@linux.ibm.com, maxime.coquelin@redhat.com,
 lingshan.zhu@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q3VycmVudGx5LCBleGNlcHQgZm9yIHRoZSBjcmVhdGUgYW5kIHJlbW92ZSwgdGhlIHJlc3Qgb2YK
bWRldl9wYXJlbnRfb3BzIGlzIGRlc2lnbmVkIGZvciB2ZmlvLW1kZXYgZHJpdmVyIG9ubHkgYW5k
IG1heSBub3QgaGVscApmb3Iga2VybmVsIG1kZXYgZHJpdmVyLiBXaXRoIHRoZSBoZWxwIG9mIGNs
YXNzIGlkLCB0aGlzIHBhdGNoCmludHJvZHVjZXMgZGV2aWNlIHNwZWNpZmljIGNhbGxiYWNrcyBp
bnNpZGUgbWRldl9kZXZpY2UKc3RydWN0dXJlLiBUaGlzIGFsbG93cyBkaWZmZXJlbnQgc2V0IG9m
IGNhbGxiYWNrIHRvIGJlIHVzZWQgYnkKdmZpby1tZGV2IGFuZCB2aXJ0aW8tbWRldi4KClNpZ25l
ZC1vZmYtYnk6IEphc29uIFdhbmcgPGphc293YW5nQHJlZGhhdC5jb20+Ci0tLQogLi4uL2RyaXZl
ci1hcGkvdmZpby1tZWRpYXRlZC1kZXZpY2UucnN0ICAgICAgIHwgIDQgKy0KIE1BSU5UQUlORVJT
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAxICsKIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d2dC9rdm1ndC5jICAgICAgICAgICAgICB8IDE3ICsrKy0tLQogZHJpdmVycy9zMzkw
L2Npby92ZmlvX2Njd19vcHMuYyAgICAgICAgICAgICAgIHwgMTcgKysrKy0tCiBkcml2ZXJzL3Mz
OTAvY3J5cHRvL3ZmaW9fYXBfb3BzLmMgICAgICAgICAgICAgfCAxMyArKystLQogZHJpdmVycy92
ZmlvL21kZXYvbWRldl9jb3JlLmMgICAgICAgICAgICAgICAgIHwgMTIgKysrKysKIGRyaXZlcnMv
dmZpby9tZGV2L21kZXZfcHJpdmF0ZS5oICAgICAgICAgICAgICB8ICAxICsKIGRyaXZlcnMvdmZp
by9tZGV2L3ZmaW9fbWRldi5jICAgICAgICAgICAgICAgICB8IDM3ICsrKysrKy0tLS0tLS0KIGlu
Y2x1ZGUvbGludXgvbWRldi5oICAgICAgICAgICAgICAgICAgICAgICAgICB8IDQyICsrKystLS0t
LS0tLS0tLQogaW5jbHVkZS9saW51eC92ZmlvX21kZXYuaCAgICAgICAgICAgICAgICAgICAgIHwg
NTIgKysrKysrKysrKysrKysrKysrKwogc2FtcGxlcy92ZmlvLW1kZXYvbWJvY2hzLmMgICAgICAg
ICAgICAgICAgICAgIHwgMTkgKysrKy0tLQogc2FtcGxlcy92ZmlvLW1kZXYvbWRweS5jICAgICAg
ICAgICAgICAgICAgICAgIHwgMTkgKysrKy0tLQogc2FtcGxlcy92ZmlvLW1kZXYvbXR0eS5jICAg
ICAgICAgICAgICAgICAgICAgIHwgMTcgKysrKy0tCiAxMyBmaWxlcyBjaGFuZ2VkLCAxNjggaW5z
ZXJ0aW9ucygrKSwgODMgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9s
aW51eC92ZmlvX21kZXYuaAoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZHJpdmVyLWFwaS92
ZmlvLW1lZGlhdGVkLWRldmljZS5yc3QgYi9Eb2N1bWVudGF0aW9uL2RyaXZlci1hcGkvdmZpby1t
ZWRpYXRlZC1kZXZpY2UucnN0CmluZGV4IGE1YmRjNjBkNjJhMS4uZDUwNDI1YjM2OGJiIDEwMDY0
NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RyaXZlci1hcGkvdmZpby1tZWRpYXRlZC1kZXZpY2UucnN0
CisrKyBiL0RvY3VtZW50YXRpb24vZHJpdmVyLWFwaS92ZmlvLW1lZGlhdGVkLWRldmljZS5yc3QK
QEAgLTE1Miw3ICsxNTIsOSBAQCBjYWxsYmFja3MgcGVyIG1kZXYgcGFyZW50IGRldmljZSwgcGVy
IG1kZXYgdHlwZSwgb3IgYW55IG90aGVyIGNhdGVnb3JpemF0aW9uLgogVmVuZG9yIGRyaXZlcnMg
YXJlIGV4cGVjdGVkIHRvIGJlIGZ1bGx5IGFzeW5jaHJvbm91cyBpbiB0aGlzIHJlc3BlY3Qgb3IK
IHByb3ZpZGUgdGhlaXIgb3duIGludGVybmFsIHJlc291cmNlIHByb3RlY3Rpb24uKQogCi1UaGUg
Y2FsbGJhY2tzIGluIHRoZSBtZGV2X3BhcmVudF9vcHMgc3RydWN0dXJlIGFyZSBhcyBmb2xsb3dz
OgorVGhlIGRldmljZSBzcGVjaWZpYyBjYWxsYmFja3MgYXJlIHJlZmVycmVkIHRocm91Z2ggZGV2
aWNlX29wcyBwb2ludGVyCitpbiBtZGV2X3BhcmVudF9vcHMuIEZvciB2ZmlvLW1kZXYgZGV2aWNl
LCBpdHMgY2FsbGJhY2tzIGluIGRldmljZV9vcHMKK2FyZSBhcyBmb2xsb3dzOgogCiAqIG9wZW46
IG9wZW4gY2FsbGJhY2sgb2YgbWVkaWF0ZWQgZGV2aWNlCiAqIGNsb3NlOiBjbG9zZSBjYWxsYmFj
ayBvZiBtZWRpYXRlZCBkZXZpY2UKZGlmZiAtLWdpdCBhL01BSU5UQUlORVJTIGIvTUFJTlRBSU5F
UlMKaW5kZXggYjIzMjZkZWNlMjhlLi44OTgzMmIzMTY1MDAgMTAwNjQ0Ci0tLSBhL01BSU5UQUlO
RVJTCisrKyBiL01BSU5UQUlORVJTCkBAIC0xNzA3NSw2ICsxNzA3NSw3IEBAIFM6CU1haW50YWlu
ZWQKIEY6CURvY3VtZW50YXRpb24vZHJpdmVyLWFwaS92ZmlvLW1lZGlhdGVkLWRldmljZS5yc3QK
IEY6CWRyaXZlcnMvdmZpby9tZGV2LwogRjoJaW5jbHVkZS9saW51eC9tZGV2LmgKK0Y6CWluY2x1
ZGUvbGludXgvdmZpb19tZGV2LmgKIEY6CXNhbXBsZXMvdmZpby1tZGV2LwogCiBWRklPIFBMQVRG
T1JNIERSSVZFUgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2t2bWd0LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQva3ZtZ3QuYwppbmRleCBmNzkzMjUyYTNkMmEuLmIy
NzRmNWVlNDgxZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2t2bWd0LmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2t2bWd0LmMKQEAgLTQyLDYgKzQyLDcgQEAK
ICNpbmNsdWRlIDxsaW51eC9rdm1faG9zdC5oPgogI2luY2x1ZGUgPGxpbnV4L3ZmaW8uaD4KICNp
bmNsdWRlIDxsaW51eC9tZGV2Lmg+CisjaW5jbHVkZSA8bGludXgvdmZpb19tZGV2Lmg+CiAjaW5j
bHVkZSA8bGludXgvZGVidWdmcy5oPgogCiAjaW5jbHVkZSA8bGludXgvbm9zcGVjLmg+CkBAIC02
NDMsNiArNjQ0LDggQEAgc3RhdGljIHZvaWQga3ZtZ3RfcHV0X3ZmaW9fZGV2aWNlKHZvaWQgKnZn
cHUpCiAJdmZpb19kZXZpY2VfcHV0KCgoc3RydWN0IGludGVsX3ZncHUgKil2Z3B1KS0+dmRldi52
ZmlvX2RldmljZSk7CiB9CiAKK3N0YXRpYyBzdHJ1Y3QgdmZpb19tZGV2X2RldmljZV9vcHMgaW50
ZWxfdmZpb192Z3B1X2Rldl9vcHM7CisKIHN0YXRpYyBpbnQgaW50ZWxfdmdwdV9jcmVhdGUoc3Ry
dWN0IGtvYmplY3QgKmtvYmosIHN0cnVjdCBtZGV2X2RldmljZSAqbWRldikKIHsKIAlzdHJ1Y3Qg
aW50ZWxfdmdwdSAqdmdwdSA9IE5VTEw7CkBAIC02NzksNiArNjgyLDcgQEAgc3RhdGljIGludCBp
bnRlbF92Z3B1X2NyZWF0ZShzdHJ1Y3Qga29iamVjdCAqa29iaiwgc3RydWN0IG1kZXZfZGV2aWNl
ICptZGV2KQogCXJldCA9IDA7CiAKIAltZGV2X3NldF9jbGFzc19pZChtZGV2LCBNREVWX0lEX1ZG
SU8pOworCW1kZXZfc2V0X2Rldl9vcHMobWRldiwgJmludGVsX3ZmaW9fdmdwdV9kZXZfb3BzKTsK
IG91dDoKIAlyZXR1cm4gcmV0OwogfQpAQCAtMTYwMSwyMCArMTYwNSwyMSBAQCBzdGF0aWMgY29u
c3Qgc3RydWN0IGF0dHJpYnV0ZV9ncm91cCAqaW50ZWxfdmdwdV9ncm91cHNbXSA9IHsKIAlOVUxM
LAogfTsKIAotc3RhdGljIHN0cnVjdCBtZGV2X3BhcmVudF9vcHMgaW50ZWxfdmdwdV9vcHMgPSB7
Ci0JLm1kZXZfYXR0cl9ncm91cHMgICAgICAgPSBpbnRlbF92Z3B1X2dyb3VwcywKLQkuY3JlYXRl
CQkJPSBpbnRlbF92Z3B1X2NyZWF0ZSwKLQkucmVtb3ZlCQkJPSBpbnRlbF92Z3B1X3JlbW92ZSwK
LQorc3RhdGljIHN0cnVjdCB2ZmlvX21kZXZfZGV2aWNlX29wcyBpbnRlbF92ZmlvX3ZncHVfZGV2
X29wcyA9IHsKIAkub3BlbgkJCT0gaW50ZWxfdmdwdV9vcGVuLAogCS5yZWxlYXNlCQk9IGludGVs
X3ZncHVfcmVsZWFzZSwKLQogCS5yZWFkCQkJPSBpbnRlbF92Z3B1X3JlYWQsCiAJLndyaXRlCQkJ
PSBpbnRlbF92Z3B1X3dyaXRlLAogCS5tbWFwCQkJPSBpbnRlbF92Z3B1X21tYXAsCiAJLmlvY3Rs
CQkJPSBpbnRlbF92Z3B1X2lvY3RsLAogfTsKIAorc3RhdGljIHN0cnVjdCBtZGV2X3BhcmVudF9v
cHMgaW50ZWxfdmdwdV9vcHMgPSB7CisJLm1kZXZfYXR0cl9ncm91cHMgICAgICAgPSBpbnRlbF92
Z3B1X2dyb3VwcywKKwkuY3JlYXRlCQkJPSBpbnRlbF92Z3B1X2NyZWF0ZSwKKwkucmVtb3ZlCQkJ
PSBpbnRlbF92Z3B1X3JlbW92ZSwKK307CisKIHN0YXRpYyBpbnQga3ZtZ3RfaG9zdF9pbml0KHN0
cnVjdCBkZXZpY2UgKmRldiwgdm9pZCAqZ3Z0LCBjb25zdCB2b2lkICpvcHMpCiB7CiAJc3RydWN0
IGF0dHJpYnV0ZSAqKmt2bV90eXBlX2F0dHJzOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zMzkwL2Np
by92ZmlvX2Njd19vcHMuYyBiL2RyaXZlcnMvczM5MC9jaW8vdmZpb19jY3dfb3BzLmMKaW5kZXgg
ZDI1OGVmMWZlZGI5Li4zMjlkNTNjMWY0NmIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvczM5MC9jaW8v
dmZpb19jY3dfb3BzLmMKKysrIGIvZHJpdmVycy9zMzkwL2Npby92ZmlvX2Njd19vcHMuYwpAQCAt
MTIsNiArMTIsNyBAQAogCiAjaW5jbHVkZSA8bGludXgvdmZpby5oPgogI2luY2x1ZGUgPGxpbnV4
L21kZXYuaD4KKyNpbmNsdWRlIDxsaW51eC92ZmlvX21kZXYuaD4KICNpbmNsdWRlIDxsaW51eC9u
b3NwZWMuaD4KICNpbmNsdWRlIDxsaW51eC9zbGFiLmg+CiAKQEAgLTExMCw2ICsxMTEsOCBAQCBz
dGF0aWMgc3RydWN0IGF0dHJpYnV0ZV9ncm91cCAqbWRldl90eXBlX2dyb3Vwc1tdID0gewogCU5V
TEwsCiB9OwogCitzdGF0aWMgY29uc3Qgc3RydWN0IHZmaW9fbWRldl9kZXZpY2Vfb3BzIHZmaW9f
bWRldl9vcHM7CisKIHN0YXRpYyBpbnQgdmZpb19jY3dfbWRldl9jcmVhdGUoc3RydWN0IGtvYmpl
Y3QgKmtvYmosIHN0cnVjdCBtZGV2X2RldmljZSAqbWRldikKIHsKIAlzdHJ1Y3QgdmZpb19jY3df
cHJpdmF0ZSAqcHJpdmF0ZSA9CkBAIC0xMzAsNiArMTMzLDcgQEAgc3RhdGljIGludCB2ZmlvX2Nj
d19tZGV2X2NyZWF0ZShzdHJ1Y3Qga29iamVjdCAqa29iaiwgc3RydWN0IG1kZXZfZGV2aWNlICpt
ZGV2KQogCQkJICAgcHJpdmF0ZS0+c2NoLT5zY2hpZC5zY2hfbm8pOwogCiAJbWRldl9zZXRfY2xh
c3NfaWQobWRldiwgTURFVl9JRF9WRklPKTsKKwltZGV2X3NldF9kZXZfb3BzKG1kZXYsICZ2Zmlv
X21kZXZfb3BzKTsKIAlyZXR1cm4gMDsKIH0KIApAQCAtNTc1LDExICs1NzksNyBAQCBzdGF0aWMg
c3NpemVfdCB2ZmlvX2Njd19tZGV2X2lvY3RsKHN0cnVjdCBtZGV2X2RldmljZSAqbWRldiwKIAl9
CiB9CiAKLXN0YXRpYyBjb25zdCBzdHJ1Y3QgbWRldl9wYXJlbnRfb3BzIHZmaW9fY2N3X21kZXZf
b3BzID0gewotCS5vd25lcgkJCT0gVEhJU19NT0RVTEUsCi0JLnN1cHBvcnRlZF90eXBlX2dyb3Vw
cyAgPSBtZGV2X3R5cGVfZ3JvdXBzLAotCS5jcmVhdGUJCQk9IHZmaW9fY2N3X21kZXZfY3JlYXRl
LAotCS5yZW1vdmUJCQk9IHZmaW9fY2N3X21kZXZfcmVtb3ZlLAorc3RhdGljIGNvbnN0IHN0cnVj
dCB2ZmlvX21kZXZfZGV2aWNlX29wcyB2ZmlvX21kZXZfb3BzID0gewogCS5vcGVuCQkJPSB2Zmlv
X2Njd19tZGV2X29wZW4sCiAJLnJlbGVhc2UJCT0gdmZpb19jY3dfbWRldl9yZWxlYXNlLAogCS5y
ZWFkCQkJPSB2ZmlvX2Njd19tZGV2X3JlYWQsCkBAIC01ODcsNiArNTg3LDEzIEBAIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgbWRldl9wYXJlbnRfb3BzIHZmaW9fY2N3X21kZXZfb3BzID0gewogCS5pb2N0
bAkJCT0gdmZpb19jY3dfbWRldl9pb2N0bCwKIH07CiAKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgbWRl
dl9wYXJlbnRfb3BzIHZmaW9fY2N3X21kZXZfb3BzID0geworCS5vd25lcgkJCT0gVEhJU19NT0RV
TEUsCisJLnN1cHBvcnRlZF90eXBlX2dyb3VwcyAgPSBtZGV2X3R5cGVfZ3JvdXBzLAorCS5jcmVh
dGUJCQk9IHZmaW9fY2N3X21kZXZfY3JlYXRlLAorCS5yZW1vdmUJCQk9IHZmaW9fY2N3X21kZXZf
cmVtb3ZlLAorfTsKKwogaW50IHZmaW9fY2N3X21kZXZfcmVnKHN0cnVjdCBzdWJjaGFubmVsICpz
Y2gpCiB7CiAJcmV0dXJuIG1kZXZfcmVnaXN0ZXJfZGV2aWNlKCZzY2gtPmRldiwgJnZmaW9fY2N3
X21kZXZfb3BzKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvczM5MC9jcnlwdG8vdmZpb19hcF9vcHMu
YyBiL2RyaXZlcnMvczM5MC9jcnlwdG8vdmZpb19hcF9vcHMuYwppbmRleCAyY2ZkOTYxMTJhYTAu
LjNhODk5MzNmMGQzZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9zMzkwL2NyeXB0by92ZmlvX2FwX29w
cy5jCisrKyBiL2RyaXZlcnMvczM5MC9jcnlwdG8vdmZpb19hcF9vcHMuYwpAQCAtMTYsNiArMTYs
NyBAQAogI2luY2x1ZGUgPGxpbnV4L2JpdG9wcy5oPgogI2luY2x1ZGUgPGxpbnV4L2t2bV9ob3N0
Lmg+CiAjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+CisjaW5jbHVkZSA8bGludXgvdmZpb19tZGV2
Lmg+CiAjaW5jbHVkZSA8YXNtL2t2bS5oPgogI2luY2x1ZGUgPGFzbS96Y3J5cHQuaD4KIApAQCAt
MzIxLDYgKzMyMiw4IEBAIHN0YXRpYyB2b2lkIHZmaW9fYXBfbWF0cml4X2luaXQoc3RydWN0IGFw
X2NvbmZpZ19pbmZvICppbmZvLAogCW1hdHJpeC0+YWRtX21heCA9IGluZm8tPmFweGEgPyBpbmZv
LT5OZCA6IDE1OwogfQogCitzdGF0aWMgY29uc3Qgc3RydWN0IHZmaW9fbWRldl9kZXZpY2Vfb3Bz
IHZmaW9fbWRldl9vcHM7CisKIHN0YXRpYyBpbnQgdmZpb19hcF9tZGV2X2NyZWF0ZShzdHJ1Y3Qg
a29iamVjdCAqa29iaiwgc3RydWN0IG1kZXZfZGV2aWNlICptZGV2KQogewogCXN0cnVjdCBhcF9t
YXRyaXhfbWRldiAqbWF0cml4X21kZXY7CkBAIC0zNDQsNiArMzQ3LDcgQEAgc3RhdGljIGludCB2
ZmlvX2FwX21kZXZfY3JlYXRlKHN0cnVjdCBrb2JqZWN0ICprb2JqLCBzdHJ1Y3QgbWRldl9kZXZp
Y2UgKm1kZXYpCiAJbXV0ZXhfdW5sb2NrKCZtYXRyaXhfZGV2LT5sb2NrKTsKIAogCW1kZXZfc2V0
X2NsYXNzX2lkKG1kZXYsIE1ERVZfSURfVkZJTyk7CisJbWRldl9zZXRfZGV2X29wcyhtZGV2LCAm
dmZpb19tZGV2X29wcyk7CiAJcmV0dXJuIDA7CiB9CiAKQEAgLTEyODEsMTUgKzEyODUsMTggQEAg
c3RhdGljIHNzaXplX3QgdmZpb19hcF9tZGV2X2lvY3RsKHN0cnVjdCBtZGV2X2RldmljZSAqbWRl
diwKIAlyZXR1cm4gcmV0OwogfQogCitzdGF0aWMgY29uc3Qgc3RydWN0IHZmaW9fbWRldl9kZXZp
Y2Vfb3BzIHZmaW9fbWRldl9vcHMgPSB7CisJLm9wZW4JCQk9IHZmaW9fYXBfbWRldl9vcGVuLAor
CS5yZWxlYXNlCQk9IHZmaW9fYXBfbWRldl9yZWxlYXNlLAorCS5pb2N0bAkJCT0gdmZpb19hcF9t
ZGV2X2lvY3RsLAorfTsKKwogc3RhdGljIGNvbnN0IHN0cnVjdCBtZGV2X3BhcmVudF9vcHMgdmZp
b19hcF9tYXRyaXhfb3BzID0gewogCS5vd25lcgkJCT0gVEhJU19NT0RVTEUsCiAJLnN1cHBvcnRl
ZF90eXBlX2dyb3Vwcwk9IHZmaW9fYXBfbWRldl90eXBlX2dyb3VwcywKIAkubWRldl9hdHRyX2dy
b3Vwcwk9IHZmaW9fYXBfbWRldl9hdHRyX2dyb3VwcywKIAkuY3JlYXRlCQkJPSB2ZmlvX2FwX21k
ZXZfY3JlYXRlLAogCS5yZW1vdmUJCQk9IHZmaW9fYXBfbWRldl9yZW1vdmUsCi0JLm9wZW4JCQk9
IHZmaW9fYXBfbWRldl9vcGVuLAotCS5yZWxlYXNlCQk9IHZmaW9fYXBfbWRldl9yZWxlYXNlLAot
CS5pb2N0bAkJCT0gdmZpb19hcF9tZGV2X2lvY3RsLAogfTsKIAogaW50IHZmaW9fYXBfbWRldl9y
ZWdpc3Rlcih2b2lkKQpkaWZmIC0tZ2l0IGEvZHJpdmVycy92ZmlvL21kZXYvbWRldl9jb3JlLmMg
Yi9kcml2ZXJzL3ZmaW8vbWRldi9tZGV2X2NvcmUuYwppbmRleCA4NzY0Y2Y0YTI3NmQuLjZmMzVm
MmNlZDJjOSAxMDA2NDQKLS0tIGEvZHJpdmVycy92ZmlvL21kZXYvbWRldl9jb3JlLmMKKysrIGIv
ZHJpdmVycy92ZmlvL21kZXYvbWRldl9jb3JlLmMKQEAgLTUxLDYgKzUxLDE4IEBAIHZvaWQgbWRl
dl9zZXRfY2xhc3NfaWQoc3RydWN0IG1kZXZfZGV2aWNlICptZGV2LCB1MTYgaWQpCiB9CiBFWFBP
UlRfU1lNQk9MKG1kZXZfc2V0X2NsYXNzX2lkKTsKIAorY29uc3Qgdm9pZCAqbWRldl9nZXRfZGV2
X29wcyhzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYpCit7CisJcmV0dXJuIG1kZXYtPmRldmljZV9v
cHM7Cit9CitFWFBPUlRfU1lNQk9MKG1kZXZfZ2V0X2Rldl9vcHMpOworCit2b2lkIG1kZXZfc2V0
X2Rldl9vcHMoc3RydWN0IG1kZXZfZGV2aWNlICptZGV2LCBjb25zdCB2b2lkICpvcHMpCit7CisJ
bWRldi0+ZGV2aWNlX29wcyA9IG9wczsKK30KK0VYUE9SVF9TWU1CT0wobWRldl9zZXRfZGV2X29w
cyk7CisKIHN0cnVjdCBkZXZpY2UgKm1kZXZfZGV2KHN0cnVjdCBtZGV2X2RldmljZSAqbWRldikK
IHsKIAlyZXR1cm4gJm1kZXYtPmRldjsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvdmZpby9tZGV2L21k
ZXZfcHJpdmF0ZS5oIGIvZHJpdmVycy92ZmlvL21kZXYvbWRldl9wcml2YXRlLmgKaW5kZXggYzY1
ZjQzNmMxODY5Li5iNjY2ODA1ZjBiMWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvdmZpby9tZGV2L21k
ZXZfcHJpdmF0ZS5oCisrKyBiL2RyaXZlcnMvdmZpby9tZGV2L21kZXZfcHJpdmF0ZS5oCkBAIC0z
NCw2ICszNCw3IEBAIHN0cnVjdCBtZGV2X2RldmljZSB7CiAJc3RydWN0IGRldmljZSAqaW9tbXVf
ZGV2aWNlOwogCWJvb2wgYWN0aXZlOwogCXUxNiBjbGFzc19pZDsKKwljb25zdCB2b2lkICpkZXZp
Y2Vfb3BzOwogfTsKIAogI2RlZmluZSB0b19tZGV2X2RldmljZShkZXYpCWNvbnRhaW5lcl9vZihk
ZXYsIHN0cnVjdCBtZGV2X2RldmljZSwgZGV2KQpkaWZmIC0tZ2l0IGEvZHJpdmVycy92ZmlvL21k
ZXYvdmZpb19tZGV2LmMgYi9kcml2ZXJzL3ZmaW8vbWRldi92ZmlvX21kZXYuYwppbmRleCA4OTFj
ZjgzYTJkOWEuLjk1ZWZhMDU0NDQyZiAxMDA2NDQKLS0tIGEvZHJpdmVycy92ZmlvL21kZXYvdmZp
b19tZGV2LmMKKysrIGIvZHJpdmVycy92ZmlvL21kZXYvdmZpb19tZGV2LmMKQEAgLTE0LDYgKzE0
LDcgQEAKICNpbmNsdWRlIDxsaW51eC9zbGFiLmg+CiAjaW5jbHVkZSA8bGludXgvdmZpby5oPgog
I2luY2x1ZGUgPGxpbnV4L21kZXYuaD4KKyNpbmNsdWRlIDxsaW51eC92ZmlvX21kZXYuaD4KIAog
I2luY2x1ZGUgIm1kZXZfcHJpdmF0ZS5oIgogCkBAIC0yNCwxNiArMjUsMTYgQEAKIHN0YXRpYyBp
bnQgdmZpb19tZGV2X29wZW4odm9pZCAqZGV2aWNlX2RhdGEpCiB7CiAJc3RydWN0IG1kZXZfZGV2
aWNlICptZGV2ID0gZGV2aWNlX2RhdGE7Ci0Jc3RydWN0IG1kZXZfcGFyZW50ICpwYXJlbnQgPSBt
ZGV2LT5wYXJlbnQ7CisJY29uc3Qgc3RydWN0IHZmaW9fbWRldl9kZXZpY2Vfb3BzICpvcHMgPSBt
ZGV2X2dldF9kZXZfb3BzKG1kZXYpOwogCWludCByZXQ7CiAKLQlpZiAodW5saWtlbHkoIXBhcmVu
dC0+b3BzLT5vcGVuKSkKKwlpZiAodW5saWtlbHkoIW9wcy0+b3BlbikpCiAJCXJldHVybiAtRUlO
VkFMOwogCiAJaWYgKCF0cnlfbW9kdWxlX2dldChUSElTX01PRFVMRSkpCiAJCXJldHVybiAtRU5P
REVWOwogCi0JcmV0ID0gcGFyZW50LT5vcHMtPm9wZW4obWRldik7CisJcmV0ID0gb3BzLT5vcGVu
KG1kZXYpOwogCWlmIChyZXQpCiAJCW1vZHVsZV9wdXQoVEhJU19NT0RVTEUpOwogCkBAIC00Mywx
MCArNDQsMTAgQEAgc3RhdGljIGludCB2ZmlvX21kZXZfb3Blbih2b2lkICpkZXZpY2VfZGF0YSkK
IHN0YXRpYyB2b2lkIHZmaW9fbWRldl9yZWxlYXNlKHZvaWQgKmRldmljZV9kYXRhKQogewogCXN0
cnVjdCBtZGV2X2RldmljZSAqbWRldiA9IGRldmljZV9kYXRhOwotCXN0cnVjdCBtZGV2X3BhcmVu
dCAqcGFyZW50ID0gbWRldi0+cGFyZW50OworCWNvbnN0IHN0cnVjdCB2ZmlvX21kZXZfZGV2aWNl
X29wcyAqb3BzID0gbWRldl9nZXRfZGV2X29wcyhtZGV2KTsKIAotCWlmIChsaWtlbHkocGFyZW50
LT5vcHMtPnJlbGVhc2UpKQotCQlwYXJlbnQtPm9wcy0+cmVsZWFzZShtZGV2KTsKKwlpZiAobGlr
ZWx5KG9wcy0+cmVsZWFzZSkpCisJCW9wcy0+cmVsZWFzZShtZGV2KTsKIAogCW1vZHVsZV9wdXQo
VEhJU19NT0RVTEUpOwogfQpAQCAtNTUsNDcgKzU2LDQ3IEBAIHN0YXRpYyBsb25nIHZmaW9fbWRl
dl91bmxvY2tlZF9pb2N0bCh2b2lkICpkZXZpY2VfZGF0YSwKIAkJCQkgICAgIHVuc2lnbmVkIGlu
dCBjbWQsIHVuc2lnbmVkIGxvbmcgYXJnKQogewogCXN0cnVjdCBtZGV2X2RldmljZSAqbWRldiA9
IGRldmljZV9kYXRhOwotCXN0cnVjdCBtZGV2X3BhcmVudCAqcGFyZW50ID0gbWRldi0+cGFyZW50
OworCWNvbnN0IHN0cnVjdCB2ZmlvX21kZXZfZGV2aWNlX29wcyAqb3BzID0gbWRldl9nZXRfZGV2
X29wcyhtZGV2KTsKIAotCWlmICh1bmxpa2VseSghcGFyZW50LT5vcHMtPmlvY3RsKSkKKwlpZiAo
dW5saWtlbHkoIW9wcy0+aW9jdGwpKQogCQlyZXR1cm4gLUVJTlZBTDsKIAotCXJldHVybiBwYXJl
bnQtPm9wcy0+aW9jdGwobWRldiwgY21kLCBhcmcpOworCXJldHVybiBvcHMtPmlvY3RsKG1kZXYs
IGNtZCwgYXJnKTsKIH0KIAogc3RhdGljIHNzaXplX3QgdmZpb19tZGV2X3JlYWQodm9pZCAqZGV2
aWNlX2RhdGEsIGNoYXIgX191c2VyICpidWYsCiAJCQkgICAgICBzaXplX3QgY291bnQsIGxvZmZf
dCAqcHBvcykKIHsKIAlzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYgPSBkZXZpY2VfZGF0YTsKLQlz
dHJ1Y3QgbWRldl9wYXJlbnQgKnBhcmVudCA9IG1kZXYtPnBhcmVudDsKKwljb25zdCBzdHJ1Y3Qg
dmZpb19tZGV2X2RldmljZV9vcHMgKm9wcyA9IG1kZXZfZ2V0X2Rldl9vcHMobWRldik7CiAKLQlp
ZiAodW5saWtlbHkoIXBhcmVudC0+b3BzLT5yZWFkKSkKKwlpZiAodW5saWtlbHkoIW9wcy0+cmVh
ZCkpCiAJCXJldHVybiAtRUlOVkFMOwogCi0JcmV0dXJuIHBhcmVudC0+b3BzLT5yZWFkKG1kZXYs
IGJ1ZiwgY291bnQsIHBwb3MpOworCXJldHVybiBvcHMtPnJlYWQobWRldiwgYnVmLCBjb3VudCwg
cHBvcyk7CiB9CiAKIHN0YXRpYyBzc2l6ZV90IHZmaW9fbWRldl93cml0ZSh2b2lkICpkZXZpY2Vf
ZGF0YSwgY29uc3QgY2hhciBfX3VzZXIgKmJ1ZiwKIAkJCSAgICAgICBzaXplX3QgY291bnQsIGxv
ZmZfdCAqcHBvcykKIHsKIAlzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYgPSBkZXZpY2VfZGF0YTsK
LQlzdHJ1Y3QgbWRldl9wYXJlbnQgKnBhcmVudCA9IG1kZXYtPnBhcmVudDsKKwljb25zdCBzdHJ1
Y3QgdmZpb19tZGV2X2RldmljZV9vcHMgKm9wcyA9IG1kZXZfZ2V0X2Rldl9vcHMobWRldik7CiAK
LQlpZiAodW5saWtlbHkoIXBhcmVudC0+b3BzLT53cml0ZSkpCisJaWYgKHVubGlrZWx5KCFvcHMt
PndyaXRlKSkKIAkJcmV0dXJuIC1FSU5WQUw7CiAKLQlyZXR1cm4gcGFyZW50LT5vcHMtPndyaXRl
KG1kZXYsIGJ1ZiwgY291bnQsIHBwb3MpOworCXJldHVybiBvcHMtPndyaXRlKG1kZXYsIGJ1Ziwg
Y291bnQsIHBwb3MpOwogfQogCiBzdGF0aWMgaW50IHZmaW9fbWRldl9tbWFwKHZvaWQgKmRldmlj
ZV9kYXRhLCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSkKIHsKIAlzdHJ1Y3QgbWRldl9kZXZp
Y2UgKm1kZXYgPSBkZXZpY2VfZGF0YTsKLQlzdHJ1Y3QgbWRldl9wYXJlbnQgKnBhcmVudCA9IG1k
ZXYtPnBhcmVudDsKKwljb25zdCBzdHJ1Y3QgdmZpb19tZGV2X2RldmljZV9vcHMgKm9wcyA9IG1k
ZXZfZ2V0X2Rldl9vcHMobWRldik7CiAKLQlpZiAodW5saWtlbHkoIXBhcmVudC0+b3BzLT5tbWFw
KSkKKwlpZiAodW5saWtlbHkoIW9wcy0+bW1hcCkpCiAJCXJldHVybiAtRUlOVkFMOwogCi0JcmV0
dXJuIHBhcmVudC0+b3BzLT5tbWFwKG1kZXYsIHZtYSk7CisJcmV0dXJuIG9wcy0+bW1hcChtZGV2
LCB2bWEpOwogfQogCiBzdGF0aWMgY29uc3Qgc3RydWN0IHZmaW9fZGV2aWNlX29wcyB2ZmlvX21k
ZXZfZGV2X29wcyA9IHsKZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvbWRldi5oIGIvaW5jbHVk
ZS9saW51eC9tZGV2LmgKaW5kZXggMzk3NDY1MGMwNzRmLi4zNDE0MzA3MzExZjEgMTAwNjQ0Ci0t
LSBhL2luY2x1ZGUvbGludXgvbWRldi5oCisrKyBiL2luY2x1ZGUvbGludXgvbWRldi5oCkBAIC0x
MCw2ICsxMCwxMSBAQAogI2lmbmRlZiBNREVWX0gKICNkZWZpbmUgTURFVl9ICiAKKyNpbmNsdWRl
IDxsaW51eC90eXBlcy5oPgorI2luY2x1ZGUgPGxpbnV4L2RldmljZS5oPgorI2luY2x1ZGUgPGxp
bnV4L21kZXYuaD4KKyNpbmNsdWRlIDx1YXBpL2xpbnV4L3V1aWQuaD4KKwogc3RydWN0IG1kZXZf
ZGV2aWNlOwogCiAvKgpAQCAtNDgsMzAgKzUzLDggQEAgc3RydWN0IGRldmljZSAqbWRldl9nZXRf
aW9tbXVfZGV2aWNlKHN0cnVjdCBkZXZpY2UgKmRldik7CiAgKgkJCUBtZGV2OiBtZGV2X2Rldmlj
ZSBkZXZpY2Ugc3RydWN0dXJlIHdoaWNoIGlzIGJlaW5nCiAgKgkJCSAgICAgICBkZXN0cm95ZWQK
ICAqCQkJUmV0dXJucyBpbnRlZ2VyOiBzdWNjZXNzICgwKSBvciBlcnJvciAoPCAwKQotICogQG9w
ZW46CQlPcGVuIG1lZGlhdGVkIGRldmljZS4KLSAqCQkJQG1kZXY6IG1lZGlhdGVkIGRldmljZS4K
LSAqCQkJUmV0dXJucyBpbnRlZ2VyOiBzdWNjZXNzICgwKSBvciBlcnJvciAoPCAwKQotICogQHJl
bGVhc2U6CQlyZWxlYXNlIG1lZGlhdGVkIGRldmljZQotICoJCQlAbWRldjogbWVkaWF0ZWQgZGV2
aWNlLgotICogQHJlYWQ6CQlSZWFkIGVtdWxhdGlvbiBjYWxsYmFjawotICoJCQlAbWRldjogbWVk
aWF0ZWQgZGV2aWNlIHN0cnVjdHVyZQotICoJCQlAYnVmOiByZWFkIGJ1ZmZlcgotICoJCQlAY291
bnQ6IG51bWJlciBvZiBieXRlcyB0byByZWFkCi0gKgkJCUBwcG9zOiBhZGRyZXNzLgotICoJCQlS
ZXR1bnMgbnVtYmVyIG9uIGJ5dGVzIHJlYWQgb24gc3VjY2VzcyBvciBlcnJvci4KLSAqIEB3cml0
ZToJCVdyaXRlIGVtdWxhdGlvbiBjYWxsYmFjawotICoJCQlAbWRldjogbWVkaWF0ZWQgZGV2aWNl
IHN0cnVjdHVyZQotICoJCQlAYnVmOiB3cml0ZSBidWZmZXIKLSAqCQkJQGNvdW50OiBudW1iZXIg
b2YgYnl0ZXMgdG8gYmUgd3JpdHRlbgotICoJCQlAcHBvczogYWRkcmVzcy4KLSAqCQkJUmV0dW5z
IG51bWJlciBvbiBieXRlcyB3cml0dGVuIG9uIHN1Y2Nlc3Mgb3IgZXJyb3IuCi0gKiBAaW9jdGw6
CQlJT0NUTCBjYWxsYmFjawotICoJCQlAbWRldjogbWVkaWF0ZWQgZGV2aWNlIHN0cnVjdHVyZQot
ICoJCQlAY21kOiBpb2N0bCBjb21tYW5kCi0gKgkJCUBhcmc6IGFyZ3VtZW50cyB0byBpb2N0bAot
ICogQG1tYXA6CQltbWFwIGNhbGxiYWNrCi0gKgkJCUBtZGV2OiBtZWRpYXRlZCBkZXZpY2Ugc3Ry
dWN0dXJlCi0gKgkJCUB2bWE6IHZtYSBzdHJ1Y3R1cmUKKyAqIEBkZXZpY2Vfb3BzOiAgICAgICAg
IERldmljZSBzcGVjaWZpYyBlbXVsYXRpb24gY2FsbGJhY2suCisgKgogICogUGFyZW50IGRldmlj
ZSB0aGF0IHN1cHBvcnQgbWVkaWF0ZWQgZGV2aWNlIHNob3VsZCBiZSByZWdpc3RlcmVkIHdpdGgg
bWRldgogICogbW9kdWxlIHdpdGggbWRldl9wYXJlbnRfb3BzIHN0cnVjdHVyZS4KICAqKi8KQEAg
LTgzLDE1ICs2Niw2IEBAIHN0cnVjdCBtZGV2X3BhcmVudF9vcHMgewogCiAJaW50ICAgICAoKmNy
ZWF0ZSkoc3RydWN0IGtvYmplY3QgKmtvYmosIHN0cnVjdCBtZGV2X2RldmljZSAqbWRldik7CiAJ
aW50ICAgICAoKnJlbW92ZSkoc3RydWN0IG1kZXZfZGV2aWNlICptZGV2KTsKLQlpbnQgICAgICgq
b3Blbikoc3RydWN0IG1kZXZfZGV2aWNlICptZGV2KTsKLQl2b2lkICAgICgqcmVsZWFzZSkoc3Ry
dWN0IG1kZXZfZGV2aWNlICptZGV2KTsKLQlzc2l6ZV90ICgqcmVhZCkoc3RydWN0IG1kZXZfZGV2
aWNlICptZGV2LCBjaGFyIF9fdXNlciAqYnVmLAotCQkJc2l6ZV90IGNvdW50LCBsb2ZmX3QgKnBw
b3MpOwotCXNzaXplX3QgKCp3cml0ZSkoc3RydWN0IG1kZXZfZGV2aWNlICptZGV2LCBjb25zdCBj
aGFyIF9fdXNlciAqYnVmLAotCQkJIHNpemVfdCBjb3VudCwgbG9mZl90ICpwcG9zKTsKLQlsb25n
CSgqaW9jdGwpKHN0cnVjdCBtZGV2X2RldmljZSAqbWRldiwgdW5zaWduZWQgaW50IGNtZCwKLQkJ
CSB1bnNpZ25lZCBsb25nIGFyZyk7Ci0JaW50CSgqbW1hcCkoc3RydWN0IG1kZXZfZGV2aWNlICpt
ZGV2LCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSk7CiB9OwogCiAvKiBpbnRlcmZhY2UgZm9y
IGV4cG9ydGluZyBtZGV2IHN1cHBvcnRlZCB0eXBlIGF0dHJpYnV0ZXMgKi8KQEAgLTEzMyw2ICsx
MDcsOCBAQCBzdHJ1Y3QgbWRldl9kcml2ZXIgewogCiB2b2lkICptZGV2X2dldF9kcnZkYXRhKHN0
cnVjdCBtZGV2X2RldmljZSAqbWRldik7CiB2b2lkIG1kZXZfc2V0X2RydmRhdGEoc3RydWN0IG1k
ZXZfZGV2aWNlICptZGV2LCB2b2lkICpkYXRhKTsKK2NvbnN0IHZvaWQgKm1kZXZfZ2V0X2Rldl9v
cHMoc3RydWN0IG1kZXZfZGV2aWNlICptZGV2KTsKK3ZvaWQgbWRldl9zZXRfZGV2X29wcyhzdHJ1
Y3QgbWRldl9kZXZpY2UgKm1kZXYsIGNvbnN0IHZvaWQgKm9wcyk7CiB2b2lkIG1kZXZfc2V0X2Ns
YXNzX2lkKHN0cnVjdCBtZGV2X2RldmljZSAqbWRldiwgdTE2IGlkKTsKIGNvbnN0IGd1aWRfdCAq
bWRldl91dWlkKHN0cnVjdCBtZGV2X2RldmljZSAqbWRldik7CiAKZGlmZiAtLWdpdCBhL2luY2x1
ZGUvbGludXgvdmZpb19tZGV2LmggYi9pbmNsdWRlL2xpbnV4L3ZmaW9fbWRldi5oCm5ldyBmaWxl
IG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uMzkwN2M1MzcxYzJiCi0tLSAvZGV2L251
bGwKKysrIGIvaW5jbHVkZS9saW51eC92ZmlvX21kZXYuaApAQCAtMCwwICsxLDUyIEBACisvKiBT
UERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5ICovCisvKgorICogVkZJTyBNZWRp
YXRlZCBkZXZpY2UgZGVmaW5pdGlvbgorICovCisKKyNpZm5kZWYgVkZJT19NREVWX0gKKyNkZWZp
bmUgVkZJT19NREVWX0gKKworI2luY2x1ZGUgPGxpbnV4L21kZXYuaD4KKworLyoqCisgKiBzdHJ1
Y3QgdmZpb19tZGV2X2RldmljZV9vcHMgLSBTdHJ1Y3R1cmUgdG8gYmUgcmVnaXN0ZXJlZCBmb3Ig
ZWFjaAorICogbWRldiBkZXZpY2UgdG8gcmVnaXN0ZXIgdGhlIGRldmljZSB0byB2ZmlvLW1kZXYg
bW9kdWxlLgorICoKKyAqIEBvcGVuOgkJT3BlbiBtZWRpYXRlZCBkZXZpY2UuCisgKgkJCUBtZGV2
OiBtZWRpYXRlZCBkZXZpY2UuCisgKgkJCVJldHVybnMgaW50ZWdlcjogc3VjY2VzcyAoMCkgb3Ig
ZXJyb3IgKDwgMCkKKyAqIEByZWxlYXNlOgkJcmVsZWFzZSBtZWRpYXRlZCBkZXZpY2UKKyAqCQkJ
QG1kZXY6IG1lZGlhdGVkIGRldmljZS4KKyAqIEByZWFkOgkJUmVhZCBlbXVsYXRpb24gY2FsbGJh
Y2sKKyAqCQkJQG1kZXY6IG1lZGlhdGVkIGRldmljZSBzdHJ1Y3R1cmUKKyAqCQkJQGJ1ZjogcmVh
ZCBidWZmZXIKKyAqCQkJQGNvdW50OiBudW1iZXIgb2YgYnl0ZXMgdG8gcmVhZAorICoJCQlAcHBv
czogYWRkcmVzcy4KKyAqCQkJUmV0dW5zIG51bWJlciBvbiBieXRlcyByZWFkIG9uIHN1Y2Nlc3Mg
b3IgZXJyb3IuCisgKiBAd3JpdGU6CQlXcml0ZSBlbXVsYXRpb24gY2FsbGJhY2sKKyAqCQkJQG1k
ZXY6IG1lZGlhdGVkIGRldmljZSBzdHJ1Y3R1cmUKKyAqCQkJQGJ1Zjogd3JpdGUgYnVmZmVyCisg
KgkJCUBjb3VudDogbnVtYmVyIG9mIGJ5dGVzIHRvIGJlIHdyaXR0ZW4KKyAqCQkJQHBwb3M6IGFk
ZHJlc3MuCisgKgkJCVJldHVucyBudW1iZXIgb24gYnl0ZXMgd3JpdHRlbiBvbiBzdWNjZXNzIG9y
IGVycm9yLgorICogQGlvY3RsOgkJSU9DVEwgY2FsbGJhY2sKKyAqCQkJQG1kZXY6IG1lZGlhdGVk
IGRldmljZSBzdHJ1Y3R1cmUKKyAqCQkJQGNtZDogaW9jdGwgY29tbWFuZAorICoJCQlAYXJnOiBh
cmd1bWVudHMgdG8gaW9jdGwKKyAqIEBtbWFwOgkJbW1hcCBjYWxsYmFjaworICoJCQlAbWRldjog
bWVkaWF0ZWQgZGV2aWNlIHN0cnVjdHVyZQorICoJCQlAdm1hOiB2bWEgc3RydWN0dXJlCisgKi8K
K3N0cnVjdCB2ZmlvX21kZXZfZGV2aWNlX29wcyB7CisJaW50ICAgICAoKm9wZW4pKHN0cnVjdCBt
ZGV2X2RldmljZSAqbWRldik7CisJdm9pZCAgICAoKnJlbGVhc2UpKHN0cnVjdCBtZGV2X2Rldmlj
ZSAqbWRldik7CisJc3NpemVfdCAoKnJlYWQpKHN0cnVjdCBtZGV2X2RldmljZSAqbWRldiwgY2hh
ciBfX3VzZXIgKmJ1ZiwKKwkJCXNpemVfdCBjb3VudCwgbG9mZl90ICpwcG9zKTsKKwlzc2l6ZV90
ICgqd3JpdGUpKHN0cnVjdCBtZGV2X2RldmljZSAqbWRldiwgY29uc3QgY2hhciBfX3VzZXIgKmJ1
ZiwKKwkJCSBzaXplX3QgY291bnQsIGxvZmZfdCAqcHBvcyk7CisJbG9uZwkoKmlvY3RsKShzdHJ1
Y3QgbWRldl9kZXZpY2UgKm1kZXYsIHVuc2lnbmVkIGludCBjbWQsCisJCQkgdW5zaWduZWQgbG9u
ZyBhcmcpOworCWludAkoKm1tYXApKHN0cnVjdCBtZGV2X2RldmljZSAqbWRldiwgc3RydWN0IHZt
X2FyZWFfc3RydWN0ICp2bWEpOworfTsKKworI2VuZGlmCmRpZmYgLS1naXQgYS9zYW1wbGVzL3Zm
aW8tbWRldi9tYm9jaHMuYyBiL3NhbXBsZXMvdmZpby1tZGV2L21ib2Nocy5jCmluZGV4IDhhODU4
M2M4OTJiMi4uYjRiZjI5YzYxMzZjIDEwMDY0NAotLS0gYS9zYW1wbGVzL3ZmaW8tbWRldi9tYm9j
aHMuYworKysgYi9zYW1wbGVzL3ZmaW8tbWRldi9tYm9jaHMuYwpAQCAtMzAsNiArMzAsNyBAQAog
I2luY2x1ZGUgPGxpbnV4L2lvbW11Lmg+CiAjaW5jbHVkZSA8bGludXgvc3lzZnMuaD4KICNpbmNs
dWRlIDxsaW51eC9tZGV2Lmg+CisjaW5jbHVkZSA8bGludXgvdmZpb19tZGV2Lmg+CiAjaW5jbHVk
ZSA8bGludXgvcGNpLmg+CiAjaW5jbHVkZSA8bGludXgvZG1hLWJ1Zi5oPgogI2luY2x1ZGUgPGxp
bnV4L2hpZ2htZW0uaD4KQEAgLTUxNiw2ICs1MTcsOCBAQCBzdGF0aWMgaW50IG1ib2Noc19yZXNl
dChzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYpCiAJcmV0dXJuIDA7CiB9CiAKK3N0YXRpYyBjb25z
dCBzdHJ1Y3QgdmZpb19tZGV2X2RldmljZV9vcHMgdmZpb19tZGV2X29wczsKKwogc3RhdGljIGlu
dCBtYm9jaHNfY3JlYXRlKHN0cnVjdCBrb2JqZWN0ICprb2JqLCBzdHJ1Y3QgbWRldl9kZXZpY2Ug
Km1kZXYpCiB7CiAJY29uc3Qgc3RydWN0IG1ib2Noc190eXBlICp0eXBlID0gbWJvY2hzX2ZpbmRf
dHlwZShrb2JqKTsKQEAgLTU2Miw2ICs1NjUsNyBAQCBzdGF0aWMgaW50IG1ib2Noc19jcmVhdGUo
c3RydWN0IGtvYmplY3QgKmtvYmosIHN0cnVjdCBtZGV2X2RldmljZSAqbWRldikKIAogCW1ib2No
c191c2VkX21ieXRlcyArPSB0eXBlLT5tYnl0ZXM7CiAJbWRldl9zZXRfY2xhc3NfaWQobWRldiwg
TURFVl9JRF9WRklPKTsKKwltZGV2X3NldF9kZXZfb3BzKG1kZXYsICZ2ZmlvX21kZXZfb3BzKTsK
IAlyZXR1cm4gMDsKIAogZXJyX21lbToKQEAgLTE0MTksMTIgKzE0MjMsNyBAQCBzdGF0aWMgc3Ry
dWN0IGF0dHJpYnV0ZV9ncm91cCAqbWRldl90eXBlX2dyb3Vwc1tdID0gewogCU5VTEwsCiB9Owog
Ci1zdGF0aWMgY29uc3Qgc3RydWN0IG1kZXZfcGFyZW50X29wcyBtZGV2X2ZvcHMgPSB7Ci0JLm93
bmVyCQkJPSBUSElTX01PRFVMRSwKLQkubWRldl9hdHRyX2dyb3Vwcwk9IG1kZXZfZGV2X2dyb3Vw
cywKLQkuc3VwcG9ydGVkX3R5cGVfZ3JvdXBzCT0gbWRldl90eXBlX2dyb3VwcywKLQkuY3JlYXRl
CQkJPSBtYm9jaHNfY3JlYXRlLAotCS5yZW1vdmUJCQk9IG1ib2Noc19yZW1vdmUsCitzdGF0aWMg
Y29uc3Qgc3RydWN0IHZmaW9fbWRldl9kZXZpY2Vfb3BzIHZmaW9fbWRldl9vcHMgPSB7CiAJLm9w
ZW4JCQk9IG1ib2Noc19vcGVuLAogCS5yZWxlYXNlCQk9IG1ib2Noc19jbG9zZSwKIAkucmVhZAkJ
CT0gbWJvY2hzX3JlYWQsCkBAIC0xNDMzLDYgKzE0MzIsMTQgQEAgc3RhdGljIGNvbnN0IHN0cnVj
dCBtZGV2X3BhcmVudF9vcHMgbWRldl9mb3BzID0gewogCS5tbWFwCQkJPSBtYm9jaHNfbW1hcCwK
IH07CiAKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgbWRldl9wYXJlbnRfb3BzIG1kZXZfZm9wcyA9IHsK
Kwkub3duZXIJCQk9IFRISVNfTU9EVUxFLAorCS5tZGV2X2F0dHJfZ3JvdXBzCT0gbWRldl9kZXZf
Z3JvdXBzLAorCS5zdXBwb3J0ZWRfdHlwZV9ncm91cHMJPSBtZGV2X3R5cGVfZ3JvdXBzLAorCS5j
cmVhdGUJCQk9IG1ib2Noc19jcmVhdGUsCisJLnJlbW92ZQkJCT0gbWJvY2hzX3JlbW92ZSwKK307
CisKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZmlsZV9vcGVyYXRpb25zIHZkX2ZvcHMgPSB7CiAJLm93
bmVyCQk9IFRISVNfTU9EVUxFLAogfTsKZGlmZiAtLWdpdCBhL3NhbXBsZXMvdmZpby1tZGV2L21k
cHkuYyBiL3NhbXBsZXMvdmZpby1tZGV2L21kcHkuYwppbmRleCA4OGQ3ZTc2ZjM4MzYuLjgwYzJk
ZjUzMTMyNiAxMDA2NDQKLS0tIGEvc2FtcGxlcy92ZmlvLW1kZXYvbWRweS5jCisrKyBiL3NhbXBs
ZXMvdmZpby1tZGV2L21kcHkuYwpAQCAtMjYsNiArMjYsNyBAQAogI2luY2x1ZGUgPGxpbnV4L2lv
bW11Lmg+CiAjaW5jbHVkZSA8bGludXgvc3lzZnMuaD4KICNpbmNsdWRlIDxsaW51eC9tZGV2Lmg+
CisjaW5jbHVkZSA8bGludXgvdmZpb19tZGV2Lmg+CiAjaW5jbHVkZSA8bGludXgvcGNpLmg+CiAj
aW5jbHVkZSA8ZHJtL2RybV9mb3VyY2MuaD4KICNpbmNsdWRlICJtZHB5LWRlZnMuaCIKQEAgLTIy
Niw2ICsyMjcsOCBAQCBzdGF0aWMgaW50IG1kcHlfcmVzZXQoc3RydWN0IG1kZXZfZGV2aWNlICpt
ZGV2KQogCXJldHVybiAwOwogfQogCitzdGF0aWMgY29uc3Qgc3RydWN0IHZmaW9fbWRldl9kZXZp
Y2Vfb3BzIHZmaW9fbWRldl9vcHM7CisKIHN0YXRpYyBpbnQgbWRweV9jcmVhdGUoc3RydWN0IGtv
YmplY3QgKmtvYmosIHN0cnVjdCBtZGV2X2RldmljZSAqbWRldikKIHsKIAljb25zdCBzdHJ1Y3Qg
bWRweV90eXBlICp0eXBlID0gbWRweV9maW5kX3R5cGUoa29iaik7CkBAIC0yNzAsNiArMjczLDcg
QEAgc3RhdGljIGludCBtZHB5X2NyZWF0ZShzdHJ1Y3Qga29iamVjdCAqa29iaiwgc3RydWN0IG1k
ZXZfZGV2aWNlICptZGV2KQogCiAJbWRweV9jb3VudCsrOwogCW1kZXZfc2V0X2NsYXNzX2lkKG1k
ZXYsIE1ERVZfSURfVkZJTyk7CisJbWRldl9zZXRfZGV2X29wcyhtZGV2LCAmdmZpb19tZGV2X29w
cyk7CiAJcmV0dXJuIDA7CiB9CiAKQEAgLTcyNiwxMiArNzMwLDcgQEAgc3RhdGljIHN0cnVjdCBh
dHRyaWJ1dGVfZ3JvdXAgKm1kZXZfdHlwZV9ncm91cHNbXSA9IHsKIAlOVUxMLAogfTsKIAotc3Rh
dGljIGNvbnN0IHN0cnVjdCBtZGV2X3BhcmVudF9vcHMgbWRldl9mb3BzID0gewotCS5vd25lcgkJ
CT0gVEhJU19NT0RVTEUsCi0JLm1kZXZfYXR0cl9ncm91cHMJPSBtZGV2X2Rldl9ncm91cHMsCi0J
LnN1cHBvcnRlZF90eXBlX2dyb3Vwcwk9IG1kZXZfdHlwZV9ncm91cHMsCi0JLmNyZWF0ZQkJCT0g
bWRweV9jcmVhdGUsCi0JLnJlbW92ZQkJCT0gbWRweV9yZW1vdmUsCitzdGF0aWMgY29uc3Qgc3Ry
dWN0IHZmaW9fbWRldl9kZXZpY2Vfb3BzIHZmaW9fbWRldl9vcHMgPSB7CiAJLm9wZW4JCQk9IG1k
cHlfb3BlbiwKIAkucmVsZWFzZQkJPSBtZHB5X2Nsb3NlLAogCS5yZWFkCQkJPSBtZHB5X3JlYWQs
CkBAIC03NDAsNiArNzM5LDE0IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgbWRldl9wYXJlbnRfb3Bz
IG1kZXZfZm9wcyA9IHsKIAkubW1hcAkJCT0gbWRweV9tbWFwLAogfTsKIAorc3RhdGljIGNvbnN0
IHN0cnVjdCBtZGV2X3BhcmVudF9vcHMgbWRldl9mb3BzID0geworCS5vd25lcgkJCT0gVEhJU19N
T0RVTEUsCisJLm1kZXZfYXR0cl9ncm91cHMJPSBtZGV2X2Rldl9ncm91cHMsCisJLnN1cHBvcnRl
ZF90eXBlX2dyb3Vwcwk9IG1kZXZfdHlwZV9ncm91cHMsCisJLmNyZWF0ZQkJCT0gbWRweV9jcmVh
dGUsCisJLnJlbW92ZQkJCT0gbWRweV9yZW1vdmUsCit9OworCiBzdGF0aWMgY29uc3Qgc3RydWN0
IGZpbGVfb3BlcmF0aW9ucyB2ZF9mb3BzID0gewogCS5vd25lcgkJPSBUSElTX01PRFVMRSwKIH07
CmRpZmYgLS1naXQgYS9zYW1wbGVzL3ZmaW8tbWRldi9tdHR5LmMgYi9zYW1wbGVzL3ZmaW8tbWRl
di9tdHR5LmMKaW5kZXggNGUwNzM1MTQzYjY5Li4yZGI4NjBjY2IwMmMgMTAwNjQ0Ci0tLSBhL3Nh
bXBsZXMvdmZpby1tZGV2L210dHkuYworKysgYi9zYW1wbGVzL3ZmaW8tbWRldi9tdHR5LmMKQEAg
LTI3LDYgKzI3LDcgQEAKICNpbmNsdWRlIDxsaW51eC9jdHlwZS5oPgogI2luY2x1ZGUgPGxpbnV4
L2ZpbGUuaD4KICNpbmNsdWRlIDxsaW51eC9tZGV2Lmg+CisjaW5jbHVkZSA8bGludXgvdmZpb19t
ZGV2Lmg+CiAjaW5jbHVkZSA8bGludXgvcGNpLmg+CiAjaW5jbHVkZSA8bGludXgvc2VyaWFsLmg+
CiAjaW5jbHVkZSA8dWFwaS9saW51eC9zZXJpYWxfcmVnLmg+CkBAIC03MjMsNiArNzI0LDggQEAg
c3RhdGljIHNzaXplX3QgbWRldl9hY2Nlc3Moc3RydWN0IG1kZXZfZGV2aWNlICptZGV2LCB1OCAq
YnVmLCBzaXplX3QgY291bnQsCiAJcmV0dXJuIHJldDsKIH0KIAorc3RhdGljIGNvbnN0IHN0cnVj
dCB2ZmlvX21kZXZfZGV2aWNlX29wcyB2ZmlvX2Rldl9vcHM7CisKIHN0YXRpYyBpbnQgbXR0eV9j
cmVhdGUoc3RydWN0IGtvYmplY3QgKmtvYmosIHN0cnVjdCBtZGV2X2RldmljZSAqbWRldikKIHsK
IAlzdHJ1Y3QgbWRldl9zdGF0ZSAqbWRldl9zdGF0ZTsKQEAgLTc3MSw2ICs3NzQsNyBAQCBzdGF0
aWMgaW50IG10dHlfY3JlYXRlKHN0cnVjdCBrb2JqZWN0ICprb2JqLCBzdHJ1Y3QgbWRldl9kZXZp
Y2UgKm1kZXYpCiAJbXV0ZXhfdW5sb2NrKCZtZGV2X2xpc3RfbG9jayk7CiAKIAltZGV2X3NldF9j
bGFzc19pZChtZGV2LCBNREVWX0lEX1ZGSU8pOworCW1kZXZfc2V0X2Rldl9vcHMobWRldiwgJnZm
aW9fZGV2X29wcyk7CiAJcmV0dXJuIDA7CiB9CiAKQEAgLTE0MTEsNiArMTQxNSwxNCBAQCBzdGF0
aWMgc3RydWN0IGF0dHJpYnV0ZV9ncm91cCAqbWRldl90eXBlX2dyb3Vwc1tdID0gewogCU5VTEws
CiB9OwogCitzdGF0aWMgY29uc3Qgc3RydWN0IHZmaW9fbWRldl9kZXZpY2Vfb3BzIHZmaW9fZGV2
X29wcyA9IHsKKwkub3BlbiAgICAgICAgICAgICAgICAgICA9IG10dHlfb3BlbiwKKwkucmVsZWFz
ZSAgICAgICAgICAgICAgICA9IG10dHlfY2xvc2UsCisJLnJlYWQgICAgICAgICAgICAgICAgICAg
PSBtdHR5X3JlYWQsCisJLndyaXRlICAgICAgICAgICAgICAgICAgPSBtdHR5X3dyaXRlLAorCS5p
b2N0bAkJICAgICAgICA9IG10dHlfaW9jdGwsCit9OworCiBzdGF0aWMgY29uc3Qgc3RydWN0IG1k
ZXZfcGFyZW50X29wcyBtZGV2X2ZvcHMgPSB7CiAJLm93bmVyICAgICAgICAgICAgICAgICAgPSBU
SElTX01PRFVMRSwKIAkuZGV2X2F0dHJfZ3JvdXBzICAgICAgICA9IG10dHlfZGV2X2dyb3VwcywK
QEAgLTE0MTgsMTEgKzE0MzAsNiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG1kZXZfcGFyZW50X29w
cyBtZGV2X2ZvcHMgPSB7CiAJLnN1cHBvcnRlZF90eXBlX2dyb3VwcyAgPSBtZGV2X3R5cGVfZ3Jv
dXBzLAogCS5jcmVhdGUgICAgICAgICAgICAgICAgID0gbXR0eV9jcmVhdGUsCiAJLnJlbW92ZQkJ
CT0gbXR0eV9yZW1vdmUsCi0JLm9wZW4gICAgICAgICAgICAgICAgICAgPSBtdHR5X29wZW4sCi0J
LnJlbGVhc2UgICAgICAgICAgICAgICAgPSBtdHR5X2Nsb3NlLAotCS5yZWFkICAgICAgICAgICAg
ICAgICAgID0gbXR0eV9yZWFkLAotCS53cml0ZSAgICAgICAgICAgICAgICAgID0gbXR0eV93cml0
ZSwKLQkuaW9jdGwJCSAgICAgICAgPSBtdHR5X2lvY3RsLAogfTsKIAogc3RhdGljIHZvaWQgbXR0
eV9kZXZpY2VfcmVsZWFzZShzdHJ1Y3QgZGV2aWNlICpkZXYpCi0tIAoyLjE5LjEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
