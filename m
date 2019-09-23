Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D08D8BB4D7
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 15:05:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A75736E8F7;
	Mon, 23 Sep 2019 13:05:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71A6E6E8F7;
 Mon, 23 Sep 2019 13:05:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id ABB8A18CB904;
 Mon, 23 Sep 2019 13:05:34 +0000 (UTC)
Received: from jason-ThinkPad-X1-Carbon-6th.redhat.com
 (ovpn-12-93.pek2.redhat.com [10.72.12.93])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EF3691001B00;
 Mon, 23 Sep 2019 13:05:06 +0000 (UTC)
From: Jason Wang <jasowang@redhat.com>
To: kvm@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-gvt-dev@lists.freedesktop.org,
 kwankhede@nvidia.com, alex.williamson@redhat.com, mst@redhat.com,
 tiwei.bie@intel.com
Date: Mon, 23 Sep 2019 21:03:29 +0800
Message-Id: <20190923130331.29324-5-jasowang@redhat.com>
In-Reply-To: <20190923130331.29324-1-jasowang@redhat.com>
References: <20190923130331.29324-1-jasowang@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.63]); Mon, 23 Sep 2019 13:05:35 +0000 (UTC)
Subject: [Intel-gfx] [PATCH 4/6] virtio: introduce a mdev based transport
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
Cc: sebott@linux.ibm.com, airlied@linux.ie, Jason Wang <jasowang@redhat.com>,
 heiko.carstens@de.ibm.com, virtualization@lists.linux-foundation.org,
 rob.miller@broadcom.com, lulu@redhat.com, eperezma@redhat.com,
 pasic@linux.ibm.com, borntraeger@de.ibm.com, haotian.wang@sifive.com,
 farman@linux.ibm.com, idos@mellanox.com, gor@linux.ibm.com,
 cunming.liang@intel.com, xiao.w.wang@intel.com, freude@linux.ibm.com,
 parav@mellanox.com, zhihong.wang@intel.com, akrowiak@linux.ibm.com,
 netdev@vger.kernel.org, cohuck@redhat.com, oberpar@linux.ibm.com,
 maxime.coquelin@redhat.com, lingshan.zhu@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBwYXRjaCBpbnRyb2R1Y2VzIGEgbmV3IG1kZXYgdHJhbnNwb3J0IGZvciB2aXJ0aW8uIFRo
aXMgaXMgdXNlZCB0bwp1c2Uga2VybmVsIHZpcnRpbyBkcml2ZXIgdG8gZHJpdmUgdGhlIG1lZGlh
dGVkIGRldmljZSB0aGF0IGlzIGNhcGFibGUKb2YgcG9wdWxhdGluZyB2aXJ0cXVldWUgZGlyZWN0
bHkuCgpBIG5ldyB2aXJ0aW8tbWRldiBkcml2ZXIgd2lsbCBiZSByZWdpc3RlcmVkIHRvIHRoZSBt
ZGV2IGJ1cywgd2hlbiBhCm5ldyB2aXJ0aW8tbWRldiBkZXZpY2UgaXMgcHJvYmVkLCBpdCB3aWxs
IHJlZ2lzdGVyIHRoZSBkZXZpY2Ugd2l0aAptZGV2IGJhc2VkIGNvbmZpZyBvcHMuIFRoaXMgbWVh
bnMgaXQgaXMgYSBzb2Z0d2FyZSB0cmFuc3BvcnQgYmV0d2VlbgptZGV2IGRyaXZlciBhbmQgbWRl
diBkZXZpY2UuIFRoZSB0cmFuc3BvcnQgd2FzIGltcGxlbWVudGVkIHRocm91Z2gKZGV2aWNlIHNw
ZWNpZmljIG9wc3doaWNoIGlzIGEgcGFydCBvZiBtZGV2X3BhcmVudF9vcHMgbm93LgoKU2lnbmVk
LW9mZi1ieTogSmFzb24gV2FuZyA8amFzb3dhbmdAcmVkaGF0LmNvbT4KLS0tCiBNQUlOVEFJTkVS
UyAgICAgICAgICAgICAgICAgICAgIHwgICAxICsKIGRyaXZlcnMvdmZpby9tZGV2L0tjb25maWcg
ICAgICAgfCAgIDcgKwogZHJpdmVycy92ZmlvL21kZXYvTWFrZWZpbGUgICAgICB8ICAgMSArCiBk
cml2ZXJzL3ZmaW8vbWRldi92aXJ0aW9fbWRldi5jIHwgNDE2ICsrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrCiA0IGZpbGVzIGNoYW5nZWQsIDQyNSBpbnNlcnRpb25zKCspCiBjcmVhdGUg
bW9kZSAxMDA2NDQgZHJpdmVycy92ZmlvL21kZXYvdmlydGlvX21kZXYuYwoKZGlmZiAtLWdpdCBh
L01BSU5UQUlORVJTIGIvTUFJTlRBSU5FUlMKaW5kZXggODk4MzJiMzE2NTAwLi44MjBlYzI1MGNj
NTIgMTAwNjQ0Ci0tLSBhL01BSU5UQUlORVJTCisrKyBiL01BSU5UQUlORVJTCkBAIC0xNzIwMiw2
ICsxNzIwMiw3IEBAIEY6CWluY2x1ZGUvbGludXgvdmlydGlvKi5oCiBGOglpbmNsdWRlL3VhcGkv
bGludXgvdmlydGlvXyouaAogRjoJZHJpdmVycy9jcnlwdG8vdmlydGlvLwogRjoJbW0vYmFsbG9v
bl9jb21wYWN0aW9uLmMKK0Y6CWRyaXZlcnMvdmZpby9tZGV2L3ZpcnRpb19tZGV2LmMKIAogVklS
VElPIEJMT0NLIEFORCBTQ1NJIERSSVZFUlMKIE06CSJNaWNoYWVsIFMuIFRzaXJraW4iIDxtc3RA
cmVkaGF0LmNvbT4KZGlmZiAtLWdpdCBhL2RyaXZlcnMvdmZpby9tZGV2L0tjb25maWcgYi9kcml2
ZXJzL3ZmaW8vbWRldi9LY29uZmlnCmluZGV4IDVkYTI3ZjIxMDBmOS4uYzQ4OGMzMWZjMTM3IDEw
MDY0NAotLS0gYS9kcml2ZXJzL3ZmaW8vbWRldi9LY29uZmlnCisrKyBiL2RyaXZlcnMvdmZpby9t
ZGV2L0tjb25maWcKQEAgLTE2LDMgKzE2LDEwIEBAIGNvbmZpZyBWRklPX01ERVZfREVWSUNFCiAJ
ZGVmYXVsdCBuCiAJaGVscAogCSAgVkZJTyBiYXNlZCBkcml2ZXIgZm9yIE1lZGlhdGVkIGRldmlj
ZXMuCisKK2NvbmZpZyBWSVJUSU9fTURFVl9ERVZJQ0UKKwl0cmlzdGF0ZSAiVklSVElPIGRyaXZl
ciBmb3IgTWVkaWF0ZWQgZGV2aWNlcyIKKwlkZXBlbmRzIG9uIFZGSU9fTURFViAmJiBWSVJUSU8K
KwlkZWZhdWx0IG4KKwloZWxwCisJICBWSVJUSU8gYmFzZWQgZHJpdmVyIGZvciBNZWRpYXRlZCBk
ZXZpY2VzLgpkaWZmIC0tZ2l0IGEvZHJpdmVycy92ZmlvL21kZXYvTWFrZWZpbGUgYi9kcml2ZXJz
L3ZmaW8vbWRldi9NYWtlZmlsZQppbmRleCAxMDE1MTZmZGYzNzUuLjk5ZDMxZTI5YzIzZSAxMDA2
NDQKLS0tIGEvZHJpdmVycy92ZmlvL21kZXYvTWFrZWZpbGUKKysrIGIvZHJpdmVycy92ZmlvL21k
ZXYvTWFrZWZpbGUKQEAgLTQsMyArNCw0IEBAIG1kZXYteSA6PSBtZGV2X2NvcmUubyBtZGV2X3N5
c2ZzLm8gbWRldl9kcml2ZXIubwogCiBvYmotJChDT05GSUdfVkZJT19NREVWKSArPSBtZGV2Lm8K
IG9iai0kKENPTkZJR19WRklPX01ERVZfREVWSUNFKSArPSB2ZmlvX21kZXYubworb2JqLSQoQ09O
RklHX1ZJUlRJT19NREVWX0RFVklDRSkgKz0gdmlydGlvX21kZXYubwpkaWZmIC0tZ2l0IGEvZHJp
dmVycy92ZmlvL21kZXYvdmlydGlvX21kZXYuYyBiL2RyaXZlcnMvdmZpby9tZGV2L3ZpcnRpb19t
ZGV2LmMKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi45MTlhMDgyYWRj
OWMKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL3ZmaW8vbWRldi92aXJ0aW9fbWRldi5jCkBA
IC0wLDAgKzEsNDE2IEBACisvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5
CisvKgorICogVklSVElPIGJhc2VkIGRyaXZlciBmb3IgTWVkaWF0ZWQgZGV2aWNlCisgKgorICog
Q29weXJpZ2h0IChjKSAyMDE5LCBSZWQgSGF0LiBBbGwgcmlnaHRzIHJlc2VydmVkLgorICogICAg
IEF1dGhvcjogSmFzb24gV2FuZyA8amFzb3dhbmdAcmVkaGF0LmNvbT4KKyAqCisgKi8KKworI2lu
Y2x1ZGUgPGxpbnV4L2luaXQuaD4KKyNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KKyNpbmNsdWRl
IDxsaW51eC9kZXZpY2UuaD4KKyNpbmNsdWRlIDxsaW51eC9rZXJuZWwuaD4KKyNpbmNsdWRlIDxs
aW51eC9zbGFiLmg+CisjaW5jbHVkZSA8bGludXgvdXVpZC5oPgorI2luY2x1ZGUgPGxpbnV4L21k
ZXYuaD4KKyNpbmNsdWRlIDxsaW51eC92aXJ0aW9fbWRldi5oPgorI2luY2x1ZGUgPGxpbnV4L3Zp
cnRpby5oPgorI2luY2x1ZGUgPGxpbnV4L3ZpcnRpb19jb25maWcuaD4KKyNpbmNsdWRlIDxsaW51
eC92aXJ0aW9fcmluZy5oPgorI2luY2x1ZGUgIm1kZXZfcHJpdmF0ZS5oIgorCisjZGVmaW5lIERS
SVZFUl9WRVJTSU9OICAiMC4xIgorI2RlZmluZSBEUklWRVJfQVVUSE9SICAgIlJlZCBIYXQgQ29y
cG9yYXRpb24iCisjZGVmaW5lIERSSVZFUl9ERVNDICAgICAiVklSVElPIGJhc2VkIGRyaXZlciBm
b3IgTWVkaWF0ZWQgZGV2aWNlIgorCisjZGVmaW5lIHRvX3ZpcnRpb19tZGV2X2RldmljZShkZXYp
IFwKKwljb250YWluZXJfb2YoZGV2LCBzdHJ1Y3QgdmlydGlvX21kZXZfZGV2aWNlLCB2ZGV2KQor
CitzdHJ1Y3QgdmlydGlvX21kZXZfZGV2aWNlIHsKKwlzdHJ1Y3QgdmlydGlvX2RldmljZSB2ZGV2
OworCXN0cnVjdCBtZGV2X2RldmljZSAqbWRldjsKKwl1bnNpZ25lZCBsb25nIHZlcnNpb247CisK
KwlzdHJ1Y3QgdmlydHF1ZXVlICoqdnFzOworCXNwaW5sb2NrX3QgbG9jazsKK307CisKK3N0cnVj
dCB2aXJ0aW9fbWRldl92cV9pbmZvIHsKKwkvKiB0aGUgYWN0dWFsIHZpcnRxdWV1ZSAqLworCXN0
cnVjdCB2aXJ0cXVldWUgKnZxOworCisJLyogdGhlIGxpc3Qgbm9kZSBmb3IgdGhlIHZpcnRxdWV1
ZXMgbGlzdCAqLworCXN0cnVjdCBsaXN0X2hlYWQgbm9kZTsKK307CisKK3N0YXRpYyBzdHJ1Y3Qg
bWRldl9kZXZpY2UgKnZtX2dldF9tZGV2KHN0cnVjdCB2aXJ0aW9fZGV2aWNlICp2ZGV2KQorewor
CXN0cnVjdCB2aXJ0aW9fbWRldl9kZXZpY2UgKnZtX2RldiA9IHRvX3ZpcnRpb19tZGV2X2Rldmlj
ZSh2ZGV2KTsKKwlzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYgPSB2bV9kZXYtPm1kZXY7CisKKwly
ZXR1cm4gbWRldjsKK30KKworc3RhdGljIGNvbnN0IHN0cnVjdCB2aXJ0aW9fbWRldl9wYXJlbnRf
b3BzCisqbWRldl9nZXRfcGFyZW50X29wcyhzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYpCit7CisJ
c3RydWN0IG1kZXZfcGFyZW50ICpwYXJlbnQgPSBtZGV2LT5wYXJlbnQ7CisKKwlyZXR1cm4gcGFy
ZW50LT5vcHMtPmRldmljZV9vcHM7Cit9CisKK3N0YXRpYyB2b2lkIHZpcnRpb19tZGV2X2dldChz
dHJ1Y3QgdmlydGlvX2RldmljZSAqdmRldiwgdW5zaWduZWQgb2Zmc2V0LAorCQkJICAgIHZvaWQg
KmJ1ZiwgdW5zaWduZWQgbGVuKQoreworCXN0cnVjdCBtZGV2X2RldmljZSAqbWRldiA9IHZtX2dl
dF9tZGV2KHZkZXYpOworCWNvbnN0IHN0cnVjdCB2aXJ0aW9fbWRldl9wYXJlbnRfb3BzICpvcHMg
PSBtZGV2X2dldF9wYXJlbnRfb3BzKG1kZXYpOworCisJb3BzLT5nZXRfY29uZmlnKG1kZXYsIG9m
ZnNldCwgYnVmLCBsZW4pOworfQorCitzdGF0aWMgdm9pZCB2aXJ0aW9fbWRldl9zZXQoc3RydWN0
IHZpcnRpb19kZXZpY2UgKnZkZXYsIHVuc2lnbmVkIG9mZnNldCwKKwkJCSAgICBjb25zdCB2b2lk
ICpidWYsIHVuc2lnbmVkIGxlbikKK3sKKwlzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYgPSB2bV9n
ZXRfbWRldih2ZGV2KTsKKwljb25zdCBzdHJ1Y3QgdmlydGlvX21kZXZfcGFyZW50X29wcyAqb3Bz
ID0gbWRldl9nZXRfcGFyZW50X29wcyhtZGV2KTsKKworCW9wcy0+c2V0X2NvbmZpZyhtZGV2LCBv
ZmZzZXQsIGJ1ZiwgbGVuKTsKK30KKworc3RhdGljIHUzMiB2aXJ0aW9fbWRldl9nZW5lcmF0aW9u
KHN0cnVjdCB2aXJ0aW9fZGV2aWNlICp2ZGV2KQoreworCXN0cnVjdCBtZGV2X2RldmljZSAqbWRl
diA9IHZtX2dldF9tZGV2KHZkZXYpOworCWNvbnN0IHN0cnVjdCB2aXJ0aW9fbWRldl9wYXJlbnRf
b3BzICpvcHMgPSBtZGV2X2dldF9wYXJlbnRfb3BzKG1kZXYpOworCisJcmV0dXJuIG9wcy0+Z2V0
X2dlbmVyYXRpb24obWRldik7Cit9CisKK3N0YXRpYyB1OCB2aXJ0aW9fbWRldl9nZXRfc3RhdHVz
KHN0cnVjdCB2aXJ0aW9fZGV2aWNlICp2ZGV2KQoreworCXN0cnVjdCBtZGV2X2RldmljZSAqbWRl
diA9IHZtX2dldF9tZGV2KHZkZXYpOworCWNvbnN0IHN0cnVjdCB2aXJ0aW9fbWRldl9wYXJlbnRf
b3BzICpvcHMgPSBtZGV2X2dldF9wYXJlbnRfb3BzKG1kZXYpOworCisJcmV0dXJuIG9wcy0+Z2V0
X3N0YXR1cyhtZGV2KTsKK30KKworc3RhdGljIHZvaWQgdmlydGlvX21kZXZfc2V0X3N0YXR1cyhz
dHJ1Y3QgdmlydGlvX2RldmljZSAqdmRldiwgdTggc3RhdHVzKQoreworCXN0cnVjdCBtZGV2X2Rl
dmljZSAqbWRldiA9IHZtX2dldF9tZGV2KHZkZXYpOworCWNvbnN0IHN0cnVjdCB2aXJ0aW9fbWRl
dl9wYXJlbnRfb3BzICpvcHMgPSBtZGV2X2dldF9wYXJlbnRfb3BzKG1kZXYpOworCisJcmV0dXJu
IG9wcy0+c2V0X3N0YXR1cyhtZGV2LCBzdGF0dXMpOworfQorCitzdGF0aWMgdm9pZCB2aXJ0aW9f
bWRldl9yZXNldChzdHJ1Y3QgdmlydGlvX2RldmljZSAqdmRldikKK3sKKwlzdHJ1Y3QgbWRldl9k
ZXZpY2UgKm1kZXYgPSB2bV9nZXRfbWRldih2ZGV2KTsKKwljb25zdCBzdHJ1Y3QgdmlydGlvX21k
ZXZfcGFyZW50X29wcyAqb3BzID0gbWRldl9nZXRfcGFyZW50X29wcyhtZGV2KTsKKworCXJldHVy
biBvcHMtPnNldF9zdGF0dXMobWRldiwgMCk7Cit9CisKK3N0YXRpYyBib29sIHZpcnRpb19tZGV2
X25vdGlmeShzdHJ1Y3QgdmlydHF1ZXVlICp2cSkKK3sKKwlzdHJ1Y3QgbWRldl9kZXZpY2UgKm1k
ZXYgPSB2bV9nZXRfbWRldih2cS0+dmRldik7CisJY29uc3Qgc3RydWN0IHZpcnRpb19tZGV2X3Bh
cmVudF9vcHMgKm9wcyA9IG1kZXZfZ2V0X3BhcmVudF9vcHMobWRldik7CisKKwlvcHMtPmtpY2tf
dnEobWRldiwgdnEtPmluZGV4KTsKKworCXJldHVybiB0cnVlOworfQorCitzdGF0aWMgaXJxcmV0
dXJuX3QgdmlydGlvX21kZXZfY29uZmlnX2NiKHZvaWQgKnByaXZhdGUpCit7CisJc3RydWN0IHZp
cnRpb19tZGV2X2RldmljZSAqdm1fZGV2ID0gcHJpdmF0ZTsKKworCXZpcnRpb19jb25maWdfY2hh
bmdlZCgmdm1fZGV2LT52ZGV2KTsKKworCXJldHVybiBJUlFfSEFORExFRDsKK30KKworc3RhdGlj
IGlycXJldHVybl90IHZpcnRpb19tZGV2X3ZpcnRxdWV1ZV9jYih2b2lkICpwcml2YXRlKQorewor
CXN0cnVjdCB2aXJ0aW9fbWRldl92cV9pbmZvICppbmZvID0gcHJpdmF0ZTsKKworCXJldHVybiB2
cmluZ19pbnRlcnJ1cHQoMCwgaW5mby0+dnEpOworfQorCitzdGF0aWMgc3RydWN0IHZpcnRxdWV1
ZSAqCit2aXJ0aW9fbWRldl9zZXR1cF92cShzdHJ1Y3QgdmlydGlvX2RldmljZSAqdmRldiwgdW5z
aWduZWQgaW5kZXgsCisJCSAgICAgdm9pZCAoKmNhbGxiYWNrKShzdHJ1Y3QgdmlydHF1ZXVlICp2
cSksCisJCSAgICAgY29uc3QgY2hhciAqbmFtZSwgYm9vbCBjdHgpCit7CisJc3RydWN0IG1kZXZf
ZGV2aWNlICptZGV2ID0gdm1fZ2V0X21kZXYodmRldik7CisJY29uc3Qgc3RydWN0IHZpcnRpb19t
ZGV2X3BhcmVudF9vcHMgKm9wcyA9IG1kZXZfZ2V0X3BhcmVudF9vcHMobWRldik7CisJc3RydWN0
IHZpcnRpb19tZGV2X3ZxX2luZm8gKmluZm87CisJc3RydWN0IHZpcnRpb19tZGV2X2NhbGxiYWNr
IGNiOworCXN0cnVjdCB2aXJ0cXVldWUgKnZxOworCXUzMiBhbGlnbiwgbnVtOworCXU2NCBkZXNj
X2FkZHIsIGRyaXZlcl9hZGRyLCBkZXZpY2VfYWRkcjsKKwlpbnQgZXJyOworCisJaWYgKCFuYW1l
KQorCQlyZXR1cm4gTlVMTDsKKworCS8qIFF1ZXVlIHNob3VsZG4ndCBhbHJlYWR5IGJlIHNldCB1
cC4gKi8KKwlpZiAob3BzLT5nZXRfdnFfcmVhZHkobWRldiwgaW5kZXgpKSB7CisJCWVyciA9IC1F
Tk9FTlQ7CisJCWdvdG8gZXJyb3JfYXZhaWxhYmxlOworCX0KKworCS8qIEFsbG9jYXRlIGFuZCBm
aWxsIG91dCBvdXIgYWN0aXZlIHF1ZXVlIGRlc2NyaXB0aW9uICovCisJaW5mbyA9IGttYWxsb2Mo
c2l6ZW9mKCppbmZvKSwgR0ZQX0tFUk5FTCk7CisJaWYgKCFpbmZvKSB7CisJCWVyciA9IC1FTk9N
RU07CisJCWdvdG8gZXJyb3Jfa21hbGxvYzsKKwl9CisKKwludW0gPSBvcHMtPmdldF9xdWV1ZV9t
YXgobWRldik7CisJaWYgKG51bSA9PSAwKSB7CisJCWVyciA9IC1FTk9FTlQ7CisJCWdvdG8gZXJy
b3JfbmV3X3ZpcnRxdWV1ZTsKKwl9CisKKwkvKiBDcmVhdGUgdGhlIHZyaW5nICovCisJYWxpZ24g
PSBvcHMtPmdldF92cV9hbGlnbihtZGV2KTsKKwl2cSA9IHZyaW5nX2NyZWF0ZV92aXJ0cXVldWUo
aW5kZXgsIG51bSwgYWxpZ24sIHZkZXYsCisJCQkJICAgIHRydWUsIHRydWUsIGN0eCwKKwkJCQkg
ICAgdmlydGlvX21kZXZfbm90aWZ5LCBjYWxsYmFjaywgbmFtZSk7CisJaWYgKCF2cSkgeworCQll
cnIgPSAtRU5PTUVNOworCQlnb3RvIGVycm9yX25ld192aXJ0cXVldWU7CisJfQorCisJLyogU2V0
dXAgdmlydHF1ZXVlIGNhbGxiYWNrICovCisJY2IuY2FsbGJhY2sgPSB2aXJ0aW9fbWRldl92aXJ0
cXVldWVfY2I7CisJY2IucHJpdmF0ZSA9IGluZm87CisJb3BzLT5zZXRfdnFfY2IobWRldiwgaW5k
ZXgsICZjYik7CisJb3BzLT5zZXRfdnFfbnVtKG1kZXYsIGluZGV4LCB2aXJ0cXVldWVfZ2V0X3Zy
aW5nX3NpemUodnEpKTsKKworCWRlc2NfYWRkciA9IHZpcnRxdWV1ZV9nZXRfZGVzY19hZGRyKHZx
KTsKKwlkcml2ZXJfYWRkciA9IHZpcnRxdWV1ZV9nZXRfYXZhaWxfYWRkcih2cSk7CisJZGV2aWNl
X2FkZHIgPSB2aXJ0cXVldWVfZ2V0X3VzZWRfYWRkcih2cSk7CisKKwlpZiAob3BzLT5zZXRfdnFf
YWRkcmVzcyhtZGV2LCBpbmRleCwKKwkJCQlkZXNjX2FkZHIsIGRyaXZlcl9hZGRyLAorCQkJCWRl
dmljZV9hZGRyKSkgeworCQllcnIgPSAtRUlOVkFMOworCQlnb3RvIGVycl92cTsKKwl9CisKKwlv
cHMtPnNldF92cV9yZWFkeShtZGV2LCBpbmRleCwgMSk7CisKKwl2cS0+cHJpdiA9IGluZm87CisJ
aW5mby0+dnEgPSB2cTsKKworCXJldHVybiB2cTsKKworZXJyX3ZxOgorCXZyaW5nX2RlbF92aXJ0
cXVldWUodnEpOworZXJyb3JfbmV3X3ZpcnRxdWV1ZToKKwlvcHMtPnNldF92cV9yZWFkeShtZGV2
LCBpbmRleCwgMCk7CisJV0FSTl9PTihvcHMtPmdldF92cV9yZWFkeShtZGV2LCBpbmRleCkpOwor
CWtmcmVlKGluZm8pOworZXJyb3Jfa21hbGxvYzoKK2Vycm9yX2F2YWlsYWJsZToKKwlyZXR1cm4g
RVJSX1BUUihlcnIpOworCit9CisKK3N0YXRpYyB2b2lkIHZpcnRpb19tZGV2X2RlbF92cShzdHJ1
Y3QgdmlydHF1ZXVlICp2cSkKK3sKKwlzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYgPSB2bV9nZXRf
bWRldih2cS0+dmRldik7CisJY29uc3Qgc3RydWN0IHZpcnRpb19tZGV2X3BhcmVudF9vcHMgKm9w
cyA9IG1kZXZfZ2V0X3BhcmVudF9vcHMobWRldik7CisJc3RydWN0IHZpcnRpb19tZGV2X3ZxX2lu
Zm8gKmluZm8gPSB2cS0+cHJpdjsKKwl1bnNpZ25lZCBpbnQgaW5kZXggPSB2cS0+aW5kZXg7CisK
KwkvKiBTZWxlY3QgYW5kIGRlYWN0aXZhdGUgdGhlIHF1ZXVlICovCisJb3BzLT5zZXRfdnFfcmVh
ZHkobWRldiwgaW5kZXgsIDApOworCVdBUk5fT04ob3BzLT5nZXRfdnFfcmVhZHkobWRldiwgaW5k
ZXgpKTsKKworCXZyaW5nX2RlbF92aXJ0cXVldWUodnEpOworCisJa2ZyZWUoaW5mbyk7Cit9CisK
K3N0YXRpYyB2b2lkIHZpcnRpb19tZGV2X2RlbF92cXMoc3RydWN0IHZpcnRpb19kZXZpY2UgKnZk
ZXYpCit7CisJc3RydWN0IHZpcnRxdWV1ZSAqdnEsICpuOworCisJbGlzdF9mb3JfZWFjaF9lbnRy
eV9zYWZlKHZxLCBuLCAmdmRldi0+dnFzLCBsaXN0KQorCQl2aXJ0aW9fbWRldl9kZWxfdnEodnEp
OworfQorCitzdGF0aWMgaW50IHZpcnRpb19tZGV2X2ZpbmRfdnFzKHN0cnVjdCB2aXJ0aW9fZGV2
aWNlICp2ZGV2LCB1bnNpZ25lZCBudnFzLAorCQkJCXN0cnVjdCB2aXJ0cXVldWUgKnZxc1tdLAor
CQkJCXZxX2NhbGxiYWNrX3QgKmNhbGxiYWNrc1tdLAorCQkJCWNvbnN0IGNoYXIgKiBjb25zdCBu
YW1lc1tdLAorCQkJCWNvbnN0IGJvb2wgKmN0eCwKKwkJCQlzdHJ1Y3QgaXJxX2FmZmluaXR5ICpk
ZXNjKQoreworCXN0cnVjdCB2aXJ0aW9fbWRldl9kZXZpY2UgKnZtX2RldiA9IHRvX3ZpcnRpb19t
ZGV2X2RldmljZSh2ZGV2KTsKKwlzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYgPSB2bV9nZXRfbWRl
dih2ZGV2KTsKKwljb25zdCBzdHJ1Y3QgdmlydGlvX21kZXZfcGFyZW50X29wcyAqb3BzID0gbWRl
dl9nZXRfcGFyZW50X29wcyhtZGV2KTsKKwlzdHJ1Y3QgdmlydGlvX21kZXZfY2FsbGJhY2sgY2I7
CisJaW50IGksIGVyciwgcXVldWVfaWR4ID0gMDsKKworCXZtX2Rldi0+dnFzID0ga21hbGxvY19h
cnJheShxdWV1ZV9pZHgsIHNpemVvZigqdm1fZGV2LT52cXMpLAorCQkJCSAgICBHRlBfS0VSTkVM
KTsKKwlpZiAoIXZtX2Rldi0+dnFzKQorCQlyZXR1cm4gLUVOT01FTTsKKworCWZvciAoaSA9IDA7
IGkgPCBudnFzOyArK2kpIHsKKwkJaWYgKCFuYW1lc1tpXSkgeworCQkJdnFzW2ldID0gTlVMTDsK
KwkJCWNvbnRpbnVlOworCQl9CisKKwkJdnFzW2ldID0gdmlydGlvX21kZXZfc2V0dXBfdnEodmRl
diwgcXVldWVfaWR4KyssCisJCQkJCSAgICAgIGNhbGxiYWNrc1tpXSwgbmFtZXNbaV0sIGN0eCA/
CisJCQkJCSAgICAgIGN0eFtpXSA6IGZhbHNlKTsKKwkJaWYgKElTX0VSUih2cXNbaV0pKSB7CisJ
CQllcnIgPSBQVFJfRVJSKHZxc1tpXSk7CisJCQlnb3RvIGVycl9zZXR1cF92cTsKKwkJfQorCX0K
KworCWNiLmNhbGxiYWNrID0gdmlydGlvX21kZXZfY29uZmlnX2NiOworCWNiLnByaXZhdGUgPSB2
bV9kZXY7CisJb3BzLT5zZXRfY29uZmlnX2NiKG1kZXYsICZjYik7CisKKwlyZXR1cm4gMDsKKwor
ZXJyX3NldHVwX3ZxOgorCWtmcmVlKHZtX2Rldi0+dnFzKTsKKwl2aXJ0aW9fbWRldl9kZWxfdnFz
KHZkZXYpOworCXJldHVybiBlcnI7Cit9CisKK3N0YXRpYyB1NjQgdmlydGlvX21kZXZfZ2V0X2Zl
YXR1cmVzKHN0cnVjdCB2aXJ0aW9fZGV2aWNlICp2ZGV2KQoreworCXN0cnVjdCBtZGV2X2Rldmlj
ZSAqbWRldiA9IHZtX2dldF9tZGV2KHZkZXYpOworCWNvbnN0IHN0cnVjdCB2aXJ0aW9fbWRldl9w
YXJlbnRfb3BzICpvcHMgPSBtZGV2X2dldF9wYXJlbnRfb3BzKG1kZXYpOworCisJcmV0dXJuIG9w
cy0+Z2V0X2ZlYXR1cmVzKG1kZXYpOworfQorCitzdGF0aWMgaW50IHZpcnRpb19tZGV2X2ZpbmFs
aXplX2ZlYXR1cmVzKHN0cnVjdCB2aXJ0aW9fZGV2aWNlICp2ZGV2KQoreworCXN0cnVjdCBtZGV2
X2RldmljZSAqbWRldiA9IHZtX2dldF9tZGV2KHZkZXYpOworCWNvbnN0IHN0cnVjdCB2aXJ0aW9f
bWRldl9wYXJlbnRfb3BzICpvcHMgPSBtZGV2X2dldF9wYXJlbnRfb3BzKG1kZXYpOworCisJLyog
R2l2ZSB2aXJ0aW9fcmluZyBhIGNoYW5jZSB0byBhY2NlcHQgZmVhdHVyZXMuICovCisJdnJpbmdf
dHJhbnNwb3J0X2ZlYXR1cmVzKHZkZXYpOworCisJcmV0dXJuIG9wcy0+c2V0X2ZlYXR1cmVzKG1k
ZXYsIHZkZXYtPmZlYXR1cmVzKTsKK30KKworc3RhdGljIGNvbnN0IGNoYXIgKnZpcnRpb19tZGV2
X2J1c19uYW1lKHN0cnVjdCB2aXJ0aW9fZGV2aWNlICp2ZGV2KQoreworCXN0cnVjdCB2aXJ0aW9f
bWRldl9kZXZpY2UgKnZtX2RldiA9IHRvX3ZpcnRpb19tZGV2X2RldmljZSh2ZGV2KTsKKwlzdHJ1
Y3QgbWRldl9kZXZpY2UgKm1kZXYgPSB2bV9kZXYtPm1kZXY7CisKKwlyZXR1cm4gZGV2X25hbWUo
Jm1kZXYtPmRldik7Cit9CisKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgdmlydGlvX2NvbmZpZ19vcHMg
dmlydGlvX21kZXZfY29uZmlnX29wcyA9IHsKKwkuZ2V0CQk9IHZpcnRpb19tZGV2X2dldCwKKwku
c2V0CQk9IHZpcnRpb19tZGV2X3NldCwKKwkuZ2VuZXJhdGlvbgk9IHZpcnRpb19tZGV2X2dlbmVy
YXRpb24sCisJLmdldF9zdGF0dXMJPSB2aXJ0aW9fbWRldl9nZXRfc3RhdHVzLAorCS5zZXRfc3Rh
dHVzCT0gdmlydGlvX21kZXZfc2V0X3N0YXR1cywKKwkucmVzZXQJCT0gdmlydGlvX21kZXZfcmVz
ZXQsCisJLmZpbmRfdnFzCT0gdmlydGlvX21kZXZfZmluZF92cXMsCisJLmRlbF92cXMJPSB2aXJ0
aW9fbWRldl9kZWxfdnFzLAorCS5nZXRfZmVhdHVyZXMJPSB2aXJ0aW9fbWRldl9nZXRfZmVhdHVy
ZXMsCisJLmZpbmFsaXplX2ZlYXR1cmVzID0gdmlydGlvX21kZXZfZmluYWxpemVfZmVhdHVyZXMs
CisJLmJ1c19uYW1lCT0gdmlydGlvX21kZXZfYnVzX25hbWUsCit9OworCitzdGF0aWMgdm9pZCB2
aXJ0aW9fbWRldl9yZWxlYXNlX2RldihzdHJ1Y3QgZGV2aWNlICpfZCkKK3sKKwlzdHJ1Y3Qgdmly
dGlvX2RldmljZSAqdmRldiA9CisJICAgICAgIGNvbnRhaW5lcl9vZihfZCwgc3RydWN0IHZpcnRp
b19kZXZpY2UsIGRldik7CisJc3RydWN0IHZpcnRpb19tZGV2X2RldmljZSAqdm1fZGV2ID0KKwkg
ICAgICAgY29udGFpbmVyX29mKHZkZXYsIHN0cnVjdCB2aXJ0aW9fbWRldl9kZXZpY2UsIHZkZXYp
OworCisJZGV2bV9rZnJlZShfZCwgdm1fZGV2KTsKK30KKworc3RhdGljIGludCB2aXJ0aW9fbWRl
dl9wcm9iZShzdHJ1Y3QgZGV2aWNlICpkZXYpCit7CisJc3RydWN0IG1kZXZfZGV2aWNlICptZGV2
ID0gdG9fbWRldl9kZXZpY2UoZGV2KTsKKwljb25zdCBzdHJ1Y3QgdmlydGlvX21kZXZfcGFyZW50
X29wcyAqb3BzID0gbWRldl9nZXRfcGFyZW50X29wcyhtZGV2KTsKKwlzdHJ1Y3QgdmlydGlvX21k
ZXZfZGV2aWNlICp2bV9kZXY7CisJaW50IHJjOworCisJdm1fZGV2ID0gZGV2bV9remFsbG9jKGRl
diwgc2l6ZW9mKCp2bV9kZXYpLCBHRlBfS0VSTkVMKTsKKwlpZiAoIXZtX2RldikKKwkJcmV0dXJu
IC1FTk9NRU07CisKKwl2bV9kZXYtPnZkZXYuZGV2LnBhcmVudCA9IGRldjsKKwl2bV9kZXYtPnZk
ZXYuZGV2LnJlbGVhc2UgPSB2aXJ0aW9fbWRldl9yZWxlYXNlX2RldjsKKwl2bV9kZXYtPnZkZXYu
Y29uZmlnID0gJnZpcnRpb19tZGV2X2NvbmZpZ19vcHM7CisJdm1fZGV2LT5tZGV2ID0gbWRldjsK
Kwl2bV9kZXYtPnZxcyA9IE5VTEw7CisJc3Bpbl9sb2NrX2luaXQoJnZtX2Rldi0+bG9jayk7CisK
Kwl2bV9kZXYtPnZlcnNpb24gPSBvcHMtPmdldF92ZXJzaW9uKG1kZXYpOworCWlmICh2bV9kZXYt
PnZlcnNpb24gIT0gMSkgeworCQlkZXZfZXJyKGRldiwgIlZlcnNpb24gJWxkIG5vdCBzdXBwb3J0
ZWQhXG4iLAorCQkJdm1fZGV2LT52ZXJzaW9uKTsKKwkJcmV0dXJuIC1FTlhJTzsKKwl9CisKKwl2
bV9kZXYtPnZkZXYuaWQuZGV2aWNlID0gb3BzLT5nZXRfZGV2aWNlX2lkKG1kZXYpOworCWlmICh2
bV9kZXYtPnZkZXYuaWQuZGV2aWNlID09IDApCisJCXJldHVybiAtRU5PREVWOworCisJdm1fZGV2
LT52ZGV2LmlkLnZlbmRvciA9IG9wcy0+Z2V0X3ZlbmRvcl9pZChtZGV2KTsKKwlyYyA9IHJlZ2lz
dGVyX3ZpcnRpb19kZXZpY2UoJnZtX2Rldi0+dmRldik7CisJaWYgKHJjKQorCQlwdXRfZGV2aWNl
KGRldik7CisKKwlkZXZfc2V0X2RydmRhdGEoZGV2LCB2bV9kZXYpOworCisJcmV0dXJuIHJjOwor
Cit9CisKK3N0YXRpYyB2b2lkIHZpcnRpb19tZGV2X3JlbW92ZShzdHJ1Y3QgZGV2aWNlICpkZXYp
Cit7CisJc3RydWN0IHZpcnRpb19tZGV2X2RldmljZSAqdm1fZGV2ID0gZGV2X2dldF9kcnZkYXRh
KGRldik7CisKKwl1bnJlZ2lzdGVyX3ZpcnRpb19kZXZpY2UoJnZtX2Rldi0+dmRldik7Cit9CisK
K3N0YXRpYyBzdHJ1Y3QgbWRldl9jbGFzc19pZCBpZF90YWJsZVtdID0geworCXsgTURFVl9JRF9W
SVJUSU8gfSwKKwl7IDAgfSwKK307CisKK3N0YXRpYyBzdHJ1Y3QgbWRldl9kcml2ZXIgdmlydGlv
X21kZXZfZHJpdmVyID0geworCS5uYW1lCT0gInZpcnRpb19tZGV2IiwKKwkucHJvYmUJPSB2aXJ0
aW9fbWRldl9wcm9iZSwKKwkucmVtb3ZlCT0gdmlydGlvX21kZXZfcmVtb3ZlLAorCS5pZF90YWJs
ZSA9IGlkX3RhYmxlLAorfTsKKworc3RhdGljIGludCBfX2luaXQgdmlydGlvX21kZXZfaW5pdCh2
b2lkKQoreworCXJldHVybiBtZGV2X3JlZ2lzdGVyX2RyaXZlcigmdmlydGlvX21kZXZfZHJpdmVy
LCBUSElTX01PRFVMRSk7Cit9CisKK3N0YXRpYyB2b2lkIF9fZXhpdCB2aXJ0aW9fbWRldl9leGl0
KHZvaWQpCit7CisJbWRldl91bnJlZ2lzdGVyX2RyaXZlcigmdmlydGlvX21kZXZfZHJpdmVyKTsK
K30KKworbW9kdWxlX2luaXQodmlydGlvX21kZXZfaW5pdCkKK21vZHVsZV9leGl0KHZpcnRpb19t
ZGV2X2V4aXQpCisKK01PRFVMRV9WRVJTSU9OKERSSVZFUl9WRVJTSU9OKTsKK01PRFVMRV9MSUNF
TlNFKCJHUEwgdjIiKTsKK01PRFVMRV9BVVRIT1IoRFJJVkVSX0FVVEhPUik7CitNT0RVTEVfREVT
Q1JJUFRJT04oRFJJVkVSX0RFU0MpOwotLSAKMi4xOS4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
