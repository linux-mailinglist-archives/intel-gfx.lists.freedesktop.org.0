Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA63104100
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 17:41:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8E456E8CD;
	Wed, 20 Nov 2019 16:41:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D478D6E8CD
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 16:41:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 08:41:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,222,1571727600"; d="scan'208";a="408178338"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by fmsmga006.fm.intel.com with ESMTP; 20 Nov 2019 08:41:04 -0800
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Date: Wed, 20 Nov 2019 22:10:18 +0530
Message-Id: <20191120164020.21352-2-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191120164020.21352-1-ramalingam.c@intel.com>
References: <20191120164020.21352-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/tgl: Implement Wa_1604555607
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
aW5pdCAoTWljaGVsKQp2NDoKICB1bmNvcmUgcmVhZCBpcyB1c2VkIFtUdnJ0a29dCiAgTWFjcm9z
IGFzIHVzZWQgZm9yIE1BU0sgZGVmaW5pdGlvbiBbQ2hyaXNdCgpCU3BlYzogMTkzNjMKSFNERVM6
IDE2MDQ1NTU2MDcKU2lnbmVkLW9mZi1ieTogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5
QGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogUmFtYWxpbmdhbSBDIDxyYW1saW5nYW0uY0BpbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8
IDggKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAg
fCA0ICsrKysKIDIgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCmluZGV4IDM5OWFjYWUyZjMzZi4uMGZj
MzgzODE0ZWYyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3Jr
YXJvdW5kcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRz
LmMKQEAgLTU2OCw5ICs1NjgsMTcgQEAgc3RhdGljIHZvaWQgaWNsX2N0eF93b3JrYXJvdW5kc19p
bml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKIHN0YXRpYyB2b2lkIHRnbF9jdHhf
d29ya2Fyb3VuZHNfaW5pdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCiAJCQkJICAg
ICBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpCiB7CisJdTMyIHZhbDsKKwogCS8qIFdhXzE0MDkx
NDIyNTk6dGdsICovCiAJV0FfU0VUX0JJVF9NQVNLRUQoR0VOMTFfQ09NTU9OX1NMSUNFX0NISUNL
RU4zLAogCQkJICBHRU4xMl9ESVNBQkxFX0NQU19BV0FSRV9DT0xPUl9QSVBFKTsKKworCS8qIFdh
XzE2MDQ1NTU2MDc6dGdsICovCisJdmFsID0gaW50ZWxfdW5jb3JlX3JlYWQoZW5naW5lLT51bmNv
cmUsIEZGX01PREUyKTsKKwl2YWwgJj0gfkZGX01PREUyX1REU19USU1FUl9NQVNLOworCXZhbCB8
PSBGRl9NT0RFMl9URFNfVElNRVJfMTI4OworCXdhX3dyaXRlX21hc2tlZF9vcih3YWwsIEZGX01P
REUyLCBGRl9NT0RFMl9URFNfVElNRVJfTUFTSywgdmFsLCB0cnVlKTsKIH0KIAogc3RhdGljIHZv
aWQKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IDk0ZDBmNTkzZWViNy4uYTk5ZmRmOGVhNTNi
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTc5MjIsNiArNzkyMiwxMCBAQCBlbnVtIHsK
ICNkZWZpbmUgICBQSVhFTF9ST1VORElOR19UUlVOQ19GQl9QQVNTVEhSVSAJKDEgPDwgMTUpCiAj
ZGVmaW5lICAgUEVSX1BJWEVMX0FMUEhBX0JZUEFTU19FTgkJKDEgPDwgNykKIAorI2RlZmluZSBG
Rl9NT0RFMgkJCV9NTUlPKDB4NjYwNCkKKyNkZWZpbmUgICBGRl9NT0RFMl9URFNfVElNRVJfTUFT
SwlSRUdfR0VOTUFTSygyMywgMTYpCisjZGVmaW5lICAgRkZfTU9ERTJfVERTX1RJTUVSXzEyOAlS
RUdfRklFTERfUFJFUChGRl9NT0RFMl9URFNfVElNRVJfTUFTSywgNCkKKwogLyogUENIICovCiAK
ICNkZWZpbmUgUENIX0RJU1BMQVlfQkFTRQkweGMwMDAwdQotLSAKMi4yMC4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
