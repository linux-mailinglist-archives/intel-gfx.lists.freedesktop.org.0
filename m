Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4854FC3E8B
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 19:27:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 592386E867;
	Tue,  1 Oct 2019 17:27:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A82146E867
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 17:26:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 10:26:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,571,1559545200"; d="scan'208";a="221083320"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by fmsmga002.fm.intel.com with ESMTP; 01 Oct 2019 10:26:30 -0700
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Date: Tue,  1 Oct 2019 22:56:23 +0530
Message-Id: <20191001172624.26479-1-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/tgl: Implement Wa_1604555607
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
Cc: Michel Thierry <michel.thierry@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KCkltcGxlbWVu
dCBXYV8xNjA0NTU1NjA3IChzZXQgdGhlIERTIHBhaXJpbmcgdGltZXIgdG8gMTI4IGN5Y2xlcyku
CkZGX01PREUyIGlzIHBhcnQgb2YgdGhlIHJlZ2lzdGVyIHN0YXRlIGNvbnRleHQsIHRoYXQncyB3
aHkgaXQgaXMKaW1wbGVtZW50ZWQgaGVyZS4KCnYyOiBSZWJhc2VkIG9uIHRvcCBvZiB0aGUgV0Eg
cmVmYWN0b3JpbmcgKE9zY2FyKQp2MzogQ29ycmVjdGx5IGFkZCB0byBjdHhfd29ya2Fyb3VuZHNf
aW5pdCAoTWljaGVsKQoKQlNwZWM6IDE5MzYzCkhTREVTOiAxNjA0NTU1NjA3ClNpZ25lZC1vZmYt
Ynk6IE1pY2hlbCBUaGllcnJ5IDxtaWNoZWwudGhpZXJyeUBpbnRlbC5jb20+ClNpZ25lZC1vZmYt
Ynk6IFJhbWFsaW5nYW0gQyA8cmFtbGluZ2FtLmNAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgfCA5ICsrKysrKysrKwogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICB8IDUgKysrKysKIDIgZmlsZXMgY2hh
bmdlZCwgMTQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93
b3JrYXJvdW5kcy5jCmluZGV4IGJhNjVlNTAxODk3OC4uNDA0OWI4NzY0OTJhIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKQEAgLTU2Nyw5ICs1NjcsMTgg
QEAgc3RhdGljIHZvaWQgaWNsX2N0eF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBpbnRlbF9lbmdp
bmVfY3MgKmVuZ2luZSwKIHN0YXRpYyB2b2lkIHRnbF9jdHhfd29ya2Fyb3VuZHNfaW5pdChzdHJ1
Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCiAJCQkJICAgICBzdHJ1Y3QgaTkxNV93YV9saXN0
ICp3YWwpCiB7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gZW5naW5lLT5p
OTE1OworCXUzMiB2YWw7CisKIAkvKiBXYV8xNDA5MTQyMjU5ICovCiAJV0FfU0VUX0JJVF9NQVNL
RUQoR0VOMTFfQ09NTU9OX1NMSUNFX0NISUNLRU4zLAogCQkJICBHRU4xMl9ESVNBQkxFX0NQU19B
V0FSRV9DT0xPUl9QSVBFKTsKKworCS8qIFdhXzE2MDQ1NTU2MDc6dGdsICovCisJdmFsID0gSTkx
NV9SRUFEKEZGX01PREUyKTsKKwl2YWwgJj0gfkZGX01PREUyX1REU19USU1FUl9NQVNLOworCXZh
bCB8PSBGRl9NT0RFMl9URFNfVElNRVJfMTI4OworCXdhX3dyaXRlX21hc2tlZF9vcih3YWwsIEZG
X01PREUyLCBGRl9NT0RFMl9URFNfVElNRVJfTUFTSywgdmFsKTsKIH0KIAogc3RhdGljIHZvaWQK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IDA1OGFhNWNhOGI3My4uZmYxOWI4YzgwYjQwIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTc3NzUsNiArNzc3NSwxMSBAQCBlbnVtIHsKICNk
ZWZpbmUgICBQSVhFTF9ST1VORElOR19UUlVOQ19GQl9QQVNTVEhSVSAJKDEgPDwgMTUpCiAjZGVm
aW5lICAgUEVSX1BJWEVMX0FMUEhBX0JZUEFTU19FTgkJKDEgPDwgNykKIAorI2RlZmluZSBGRl9N
T0RFMgkJCV9NTUlPKDB4NjYwNCkKKyNkZWZpbmUgICBGRl9NT0RFMl9URFNfVElNRVJfU0hJRlQJ
KDE2KQorI2RlZmluZSAgIEZGX01PREUyX1REU19USU1FUl8xMjgJKDQgPDwgRkZfTU9ERTJfVERT
X1RJTUVSX1NISUZUKQorI2RlZmluZSAgIEZGX01PREUyX1REU19USU1FUl9NQVNLCSgweGZmIDw8
IEZGX01PREUyX1REU19USU1FUl9TSElGVCkKKwogLyogUENIICovCiAKICNkZWZpbmUgUENIX0RJ
U1BMQVlfQkFTRQkweGMwMDAwdQotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
