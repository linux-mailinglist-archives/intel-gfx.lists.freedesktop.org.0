Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 435F56C0C5
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 20:06:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EC636E11B;
	Wed, 17 Jul 2019 18:06:37 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87E4B6E237
 for <Intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 18:06:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jul 2019 11:06:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,275,1559545200"; d="scan'208";a="343110842"
Received: from esulliva-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.94.109])
 by orsmga005.jf.intel.com with ESMTP; 17 Jul 2019 11:06:32 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jul 2019 19:06:22 +0100
Message-Id: <20190717180624.20354-5-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190717180624.20354-1-tvrtko.ursulin@linux.intel.com>
References: <20190717180624.20354-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/6] drm/i915: Skip CS verification of L3 bank
 registers
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkFjY2VzcyB0
byAweGIxMDAgLSAweGIzZmYgbW1pbyByYW5nZSBpcyBjb250cm9sbGVkIGJ5IHRoZSBNQ1Igc2Vs
ZWN0b3IKd2hpY2ggb25seSBhZmZlY3RzIENQVSBNTUlPLiBUaGVyZWZvcmUgdGhlc2UgcmVnaXN0
ZXJzIGNhbm5vdCBiZSByZWFsaWFibHkKcmVhZCB3aXRoIE1JX1NSTSBmcm9tIHRoZSBjb21tYW5k
IHN0cmVhbWVyIHNvIHNraXAgdGhlaXIgdmVyaWZpY2F0aW9uLgoKU2lnbmVkLW9mZi1ieTogVHZy
dGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwgMzggKysrKysrKysrKysrKysrKysrLS0t
CiAxIGZpbGUgY2hhbmdlZCwgMzMgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwppbmRleCBjMjMyNWI3ZWNm
OGQuLjYxOWQ0MmEyYjgxYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfd29ya2Fyb3VuZHMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3Jr
YXJvdW5kcy5jCkBAIC0xNDM2LDI2ICsxNDM2LDUwIEBAIGNyZWF0ZV9zY3JhdGNoKHN0cnVjdCBp
OTE1X2FkZHJlc3Nfc3BhY2UgKnZtLCBpbnQgY291bnQpCiAJcmV0dXJuIEVSUl9QVFIoZXJyKTsK
IH0KIAorc3RhdGljIGJvb2wgbWNyX3JhbmdlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
LCB1MzIgb2Zmc2V0KQoreworCS8qCisJICogUmVnaXN0ZXJzIGluIHRoaXMgcmFuZ2UgYXJlIGFm
ZmVjdGVkIGJ5IHRoZSBNQ1Igc2VsZWN0b3IKKwkgKiB3aGljaCBvbmx5IGNvbnRyb2xzIENQVSBp
bml0aWF0ZWQgTU1JTy4gUm91dGluZyBkb2VzIG5vdAorCSAqIHdvcmsgZm9yIENTIGFjY2VzcyBz
byB3ZSBjYW5ub3QgdmVyaWZ5IHRoZW0gb24gdGhpcyBwYXRoLgorCSAqLworCWlmIChJTlRFTF9H
RU4oaTkxNSkgPj0gOCAmJiAob2Zmc2V0ID49IDB4YjEwMCAmJiBvZmZzZXQgPD0gMHhiM2ZmKSkK
KwkJcmV0dXJuIHRydWU7CisKKwlyZXR1cm4gZmFsc2U7Cit9CisKIHN0YXRpYyBpbnQKIHdhX2xp
c3Rfc3JtKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLAogCSAgICBjb25zdCBzdHJ1Y3QgaTkxNV93
YV9saXN0ICp3YWwsCiAJICAgIHN0cnVjdCBpOTE1X3ZtYSAqdm1hKQogeworCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1ID0gcnEtPmk5MTU7CisJdW5zaWduZWQgaW50IGksIGNvdW50ID0g
MDsKIAljb25zdCBzdHJ1Y3QgaTkxNV93YSAqd2E7Ci0JdW5zaWduZWQgaW50IGk7CiAJdTMyIHNy
bSwgKmNzOwogCiAJc3JtID0gTUlfU1RPUkVfUkVHSVNURVJfTUVNIHwgTUlfU1JNX0xSTV9HTE9C
QUxfR1RUOwotCWlmIChJTlRFTF9HRU4ocnEtPmk5MTUpID49IDgpCisJaWYgKElOVEVMX0dFTihp
OTE1KSA+PSA4KQogCQlzcm0rKzsKIAotCWNzID0gaW50ZWxfcmluZ19iZWdpbihycSwgNCAqIHdh
bC0+Y291bnQpOworCWZvciAoaSA9IDAsIHdhID0gd2FsLT5saXN0OyBpIDwgd2FsLT5jb3VudDsg
aSsrLCB3YSsrKSB7CisJCWlmICghbWNyX3JhbmdlKGk5MTUsIGk5MTVfbW1pb19yZWdfb2Zmc2V0
KHdhLT5yZWcpKSkKKwkJCWNvdW50Kys7CisJfQorCisJY3MgPSBpbnRlbF9yaW5nX2JlZ2luKHJx
LCA0ICogY291bnQpOwogCWlmIChJU19FUlIoY3MpKQogCQlyZXR1cm4gUFRSX0VSUihjcyk7CiAK
IAlmb3IgKGkgPSAwLCB3YSA9IHdhbC0+bGlzdDsgaSA8IHdhbC0+Y291bnQ7IGkrKywgd2ErKykg
eworCQl1MzIgb2Zmc2V0ID0gaTkxNV9tbWlvX3JlZ19vZmZzZXQod2EtPnJlZyk7CisKKwkJaWYg
KG1jcl9yYW5nZShpOTE1LCBvZmZzZXQpKQorCQkJY29udGludWU7CisKIAkJKmNzKysgPSBzcm07
Ci0JCSpjcysrID0gaTkxNV9tbWlvX3JlZ19vZmZzZXQod2EtPnJlZyk7CisJCSpjcysrID0gb2Zm
c2V0OwogCQkqY3MrKyA9IGk5MTVfZ2d0dF9vZmZzZXQodm1hKSArIHNpemVvZih1MzIpICogaTsK
IAkJKmNzKysgPSAwOwogCX0KQEAgLTE1MDUsOSArMTUyOSwxMyBAQCBzdGF0aWMgaW50IGVuZ2lu
ZV93YV9saXN0X3ZlcmlmeShzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsCiAJfQogCiAJZXJyID0g
MDsKLQlmb3IgKGkgPSAwLCB3YSA9IHdhbC0+bGlzdDsgaSA8IHdhbC0+Y291bnQ7IGkrKywgd2Er
KykKKwlmb3IgKGkgPSAwLCB3YSA9IHdhbC0+bGlzdDsgaSA8IHdhbC0+Y291bnQ7IGkrKywgd2Er
KykgeworCQlpZiAobWNyX3JhbmdlKHJxLT5pOTE1LCBpOTE1X21taW9fcmVnX29mZnNldCh3YS0+
cmVnKSkpCisJCQljb250aW51ZTsKKwogCQlpZiAoIXdhX3ZlcmlmeSh3YSwgcmVzdWx0c1tpXSwg
d2FsLT5uYW1lLCBmcm9tKSkKIAkJCWVyciA9IC1FTlhJTzsKKwl9CiAKIAlpOTE1X2dlbV9vYmpl
Y3RfdW5waW5fbWFwKHZtYS0+b2JqKTsKIAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
