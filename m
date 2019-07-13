Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E483667777
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jul 2019 03:10:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FF5D6E3D3;
	Sat, 13 Jul 2019 01:09:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD4586E3AC
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Jul 2019 01:09:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 18:09:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,484,1557212400"; d="scan'208";a="341850948"
Received: from dhoyan-mobl.amr.corp.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.252.197.100])
 by orsmga005.jf.intel.com with ESMTP; 12 Jul 2019 18:09:46 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Jul 2019 18:09:34 -0700
Message-Id: <20190713010940.17711-17-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190713010940.17711-1-lucas.demarchi@intel.com>
References: <20190713010940.17711-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 16/22] drm/i915/tgl: Implement Wa_1604555607
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
aHkgaXQgaXMKaW1wbGVtZW50ZWQgaGVyZS4KClNpZ25lZC1vZmYtYnk6IE1pY2hlbCBUaGllcnJ5
IDxtaWNoZWwudGhpZXJyeUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNo
aSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3dvcmthcm91bmRzLmMgfCA4ICsrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oICAgICAgICAgICAgIHwgNSArKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAxMyBpbnNl
cnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29y
a2Fyb3VuZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMK
aW5kZXggZWQ5MjczOGEwNzM1Li4zNDdiYTE2MzQ2ZDMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwpAQCAtNTg1LDYgKzU4NSwxNCBAQCBzdGF0aWMgdm9p
ZCBpY2xfY3R4X3dvcmthcm91bmRzX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5l
LAogc3RhdGljIHZvaWQgdGdsX2N0eF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBpbnRlbF9lbmdp
bmVfY3MgKmVuZ2luZSwKIAkJCQkgICAgIHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkKIHsKKwlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBlbmdpbmUtPmk5MTU7CisJdTMyIHZh
bDsKKworCS8qIFdhXzE2MDQ1NTU2MDc6dGdsICovCisJdmFsID0gSTkxNV9SRUFEKEZGX01PREUy
KTsKKwl2YWwgJj0gfkZGX01PREUyX1REU19USU1FUl9NQVNLOworCXZhbCB8PSBGRl9NT0RFMl9U
RFNfVElNRVJfMTI4OworCXdhX3dyaXRlX21hc2tlZF9vcih3YWwsIEZGX01PREUyLCBGRl9NT0RF
Ml9URFNfVElNRVJfTUFTSywgdmFsKTsKIH0KIAogc3RhdGljIHZvaWQKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oCmluZGV4IDBhMjY1N2NlMjg0Zi4uZDA0OGMzNDllMDdlIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmgKQEAgLTc3ODksNiArNzc4OSwxMSBAQCBlbnVtIHsKICNkZWZpbmUgICBQSVhFTF9S
T1VORElOR19UUlVOQ19GQl9QQVNTVEhSVSAJKDEgPDwgMTUpCiAjZGVmaW5lICAgUEVSX1BJWEVM
X0FMUEhBX0JZUEFTU19FTgkJKDEgPDwgNykKIAorI2RlZmluZSBGRl9NT0RFMgkJCV9NTUlPKDB4
NjYwNCkKKyNkZWZpbmUgICBGRl9NT0RFMl9URFNfVElNRVJfU0hJRlQJKDE2KQorI2RlZmluZSAg
IEZGX01PREUyX1REU19USU1FUl8xMjgJKDQgPDwgRkZfTU9ERTJfVERTX1RJTUVSX1NISUZUKQor
I2RlZmluZSAgIEZGX01PREUyX1REU19USU1FUl9NQVNLCSgweGZmIDw8IEZGX01PREUyX1REU19U
SU1FUl9TSElGVCkKKwogLyogUENIICovCiAKICNkZWZpbmUgUENIX0RJU1BMQVlfQkFTRQkweGMw
MDAwdQotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
