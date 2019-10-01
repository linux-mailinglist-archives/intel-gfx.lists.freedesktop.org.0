Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8839C3E8C
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 19:27:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87D226E868;
	Tue,  1 Oct 2019 17:27:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 814706E867
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 17:26:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 10:26:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,571,1559545200"; d="scan'208";a="221083326"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by fmsmga002.fm.intel.com with ESMTP; 01 Oct 2019 10:26:32 -0700
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Date: Tue,  1 Oct 2019 22:56:24 +0530
Message-Id: <20191001172624.26479-2-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191001172624.26479-1-ramalingam.c@intel.com>
References: <20191001172624.26479-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/tgl: Skip Wa_1604555607
 verification at A0
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

UmVhZCBvZiBGRl9NT0RFMiByZWdpc3RlciBpcyBicm9rZW4gYXQgVEdMIEEwLiBIZW5jZSB2ZXJp
ZmljYXRpb24gb2YgdGhlCldhXzE2MDQ1NTU2MDcgYXNzb2NpYXRlZCB0byB0aGF0IHJlZ2lzdGVy
IG5lZWRzIHRvIGJlIHNraXBwZWQuCgpTaWduZWQtb2ZmLWJ5OiBSYW1hbGluZ2FtIEMgPHJhbWFs
aW5nYW0uY0BpbnRlbC5jb20+CmNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AbGlu
dXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91
bmRzLmMgfCAyMiArKysrKysrKysrKysrKysrKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmggICAgICAgICAgICAgfCAgNiArKysrKysKIDIgZmlsZXMgY2hhbmdlZCwgMjcgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF93b3JrYXJvdW5kcy5jCmluZGV4IDQwNDliODc2NDkyYS4uYzYzZDhjM2RmNGQzIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKQEAgLTk5MSwxMCArOTkx
LDIxIEBAIHdhX2xpc3RfYXBwbHkoc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlLCBjb25zdCBz
dHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpCiAKIAlmb3IgKGkgPSAwLCB3YSA9IHdhbC0+bGlzdDsg
aSA8IHdhbC0+Y291bnQ7IGkrKywgd2ErKykgewogCQlpbnRlbF91bmNvcmVfcm13X2Z3KHVuY29y
ZSwgd2EtPnJlZywgd2EtPm1hc2ssIHdhLT52YWwpOwotCQlpZiAoSVNfRU5BQkxFRChDT05GSUdf
RFJNX0k5MTVfREVCVUdfR0VNKSkKKwkJaWYgKElTX0VOQUJMRUQoQ09ORklHX0RSTV9JOTE1X0RF
QlVHX0dFTSkpIHsKKworCQkJLyoKKwkJCSAqIFJlYWQgb2YgRkZfTU9ERTIgaXMgYnJva2VuIG9u
IFRHTCBBMC4KKwkJCSAqIEhlbmNlIHNraXAgdGhlIGNvcnJlc3BvbmRpbmcgV0EgdmVyaWZpY2F0
aW9uLgorCQkJICovCisJCQlpZiAoSVNfVEdMX1JFVklEKHVuY29yZS0+aTkxNSwgMCwgVEdMX1JF
VklEX0EwKSAmJgorCQkJICAgIGk5MTVfbW1pb19yZWdfZXF1YWwod2EtPnJlZywgRkZfTU9ERTIp
ICYmCisJCQkgICAgd2EtPm1hc2sgPT0gRkZfTU9ERTJfVERTX1RJTUVSX01BU0spCisJCQkJY29u
dGludWU7CisKIAkJCXdhX3ZlcmlmeSh3YSwKIAkJCQkgIGludGVsX3VuY29yZV9yZWFkX2Z3KHVu
Y29yZSwgd2EtPnJlZyksCiAJCQkJICB3YWwtPm5hbWUsICJhcHBsaWNhdGlvbiIpOworCQl9CiAJ
fQogCiAJaW50ZWxfdW5jb3JlX2ZvcmNld2FrZV9wdXRfX2xvY2tlZCh1bmNvcmUsIGZ3KTsKQEAg
LTE1NTMsNiArMTU2NCwxNSBAQCBzdGF0aWMgaW50IGVuZ2luZV93YV9saXN0X3ZlcmlmeShzdHJ1
Y3QgaW50ZWxfY29udGV4dCAqY2UsCiAJCWlmIChtY3JfcmFuZ2UocnEtPmk5MTUsIGk5MTVfbW1p
b19yZWdfb2Zmc2V0KHdhLT5yZWcpKSkKIAkJCWNvbnRpbnVlOwogCisJCS8qCisJCSAqIFJlYWQg
b2YgRkZfTU9ERTIgaXMgYnJva2VuIG9uIFRHTCBBMC4KKwkJICogSGVuY2Ugc2tpcCB0aGUgY29y
cmVzcG9uZGluZyBXQSB2ZXJpZmljYXRpb24uCisJCSAqLworCQlpZiAoSVNfVEdMX1JFVklEKHJx
LT5pOTE1LCAwLCBUR0xfUkVWSURfQTApICYmCisJCSAgICBpOTE1X21taW9fcmVnX2VxdWFsKHdh
LT5yZWcsIEZGX01PREUyKSAmJgorCQkgICAgd2EtPm1hc2sgPT0gRkZfTU9ERTJfVERTX1RJTUVS
X01BU0spCisJCQljb250aW51ZTsKKwogCQlpZiAoIXdhX3ZlcmlmeSh3YSwgcmVzdWx0c1tpXSwg
d2FsLT5uYW1lLCBmcm9tKSkKIAkJCWVyciA9IC1FTlhJTzsKIAl9CmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuaAppbmRleCAzMzdkODMwNjQxNmEuLjA1YmYwYjM5OGNlNyAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5oCkBAIC0yMDY1LDYgKzIwNjUsMTIgQEAgSVNfU1VCUExBVEZPUk0oY29uc3Qgc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAjZGVmaW5lIElTX0lDTF9SRVZJRChwLCBzaW5jZSwg
dW50aWwpIFwKIAkoSVNfSUNFTEFLRShwKSAmJiBJU19SRVZJRChwLCBzaW5jZSwgdW50aWwpKQog
CisjZGVmaW5lIFRHTF9SRVZJRF9BMAkJMHgwCisjZGVmaW5lIFRHTF9SRVZJRF9CMAkJMHgxCisK
KyNkZWZpbmUgSVNfVEdMX1JFVklEKHAsIHNpbmNlLCB1bnRpbCkgXAorCShJU19USUdFUkxBS0Uo
cCkgJiYgSVNfUkVWSUQocCwgc2luY2UsIHVudGlsKSkKKwogI2RlZmluZSBJU19MUChkZXZfcHJp
dikJKElOVEVMX0lORk8oZGV2X3ByaXYpLT5pc19scCkKICNkZWZpbmUgSVNfR0VOOV9MUChkZXZf
cHJpdikJKElTX0dFTihkZXZfcHJpdiwgOSkgJiYgSVNfTFAoZGV2X3ByaXYpKQogI2RlZmluZSBJ
U19HRU45X0JDKGRldl9wcml2KQkoSVNfR0VOKGRldl9wcml2LCA5KSAmJiAhSVNfTFAoZGV2X3By
aXYpKQotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
