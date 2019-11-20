Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE12A104222
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 18:32:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B41B6E9BE;
	Wed, 20 Nov 2019 17:32:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA3486E9C1
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 17:32:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 09:32:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,222,1571727600"; d="scan'208";a="215870420"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by fmsmga001.fm.intel.com with ESMTP; 20 Nov 2019 09:32:38 -0800
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Date: Wed, 20 Nov 2019 23:01:54 +0530
Message-Id: <20191120173155.20168-2-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191120173155.20168-1-ramalingam.c@intel.com>
References: <20191120173155.20168-1-ramalingam.c@intel.com>
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
aW5pdCAoTWljaGVsKQp2NDoKICB1bmNvcmUgcmVhZCBpcyB1c2VkIFtUdnJ0a29dCiAgTWFjcm9z
IGFzIHVzZWQgZm9yIE1BU0sgZGVmaW5pdGlvbiBbQ2hyaXNdCgpCU3BlYzogMTkzNjMKSFNERVM6
IDE2MDQ1NTU2MDcKU2lnbmVkLW9mZi1ieTogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5
QGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogUmFtYWxpbmdhbSBDIDxyYW1saW5nYW0uY0BpbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8
IDggKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAg
fCA0ICsrKysKIDIgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCmluZGV4IDM5OWFjYWUyZjMzZi4uOTNl
ZmVmYTIwNWQ2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3Jr
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
REUyLCBGRl9NT0RFMl9URFNfVElNRVJfTUFTSywgdmFsKTsKIH0KIAogc3RhdGljIHZvaWQKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IDk0ZDBmNTkzZWViNy4uYTk5ZmRmOGVhNTNiIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTc5MjIsNiArNzkyMiwxMCBAQCBlbnVtIHsKICNkZWZp
bmUgICBQSVhFTF9ST1VORElOR19UUlVOQ19GQl9QQVNTVEhSVSAJKDEgPDwgMTUpCiAjZGVmaW5l
ICAgUEVSX1BJWEVMX0FMUEhBX0JZUEFTU19FTgkJKDEgPDwgNykKIAorI2RlZmluZSBGRl9NT0RF
MgkJCV9NTUlPKDB4NjYwNCkKKyNkZWZpbmUgICBGRl9NT0RFMl9URFNfVElNRVJfTUFTSwlSRUdf
R0VOTUFTSygyMywgMTYpCisjZGVmaW5lICAgRkZfTU9ERTJfVERTX1RJTUVSXzEyOAlSRUdfRklF
TERfUFJFUChGRl9NT0RFMl9URFNfVElNRVJfTUFTSywgNCkKKwogLyogUENIICovCiAKICNkZWZp
bmUgUENIX0RJU1BMQVlfQkFTRQkweGMwMDAwdQotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
