Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18766102520
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 14:04:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3225A6E907;
	Tue, 19 Nov 2019 13:04:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B9FA6E8EE
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 13:04:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 05:04:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,324,1569308400"; d="scan'208";a="209189535"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by orsmga003.jf.intel.com with ESMTP; 19 Nov 2019 05:04:24 -0800
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Nov 2019 18:03:15 +0530
Message-Id: <20191119123316.5094-8-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
In-Reply-To: <20191119123316.5094-1-vandita.kulkarni@intel.com>
References: <20191119123316.5094-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [V3 7/8] drm/i915/dsi: Add TE handler for dsi cmd mode.
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gY2FzZSBvZiBkdWFsIGxpbmssIHdlIGdldCB0aGUgVEUgb24gc2xhdmUuClNvIGNsZWFyIHRo
ZSBURSBvbiBzbGF2ZSBEU0kgSUlSLgoKdjI6IFBhc3Mgb25seSByZWxldmFudCBtYXNrZWQgYml0
cyB0byB0aGUgaGFuZGxlciAoSmFuaSkKClNpZ25lZC1vZmYtYnk6IFZhbmRpdGEgS3Vsa2Fybmkg
PHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfaXJxLmMgfCA2NCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBj
aGFuZ2VkLCA2NCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9pcnEuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKaW5kZXggYTNk
MWZjMGJmYjU2Li5hOGM3MDQzNjQwZGIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfaXJxLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwpAQCAtMjIz
MCw2ICsyMjMwLDYyIEBAIGdlbjhfZGVfbWlzY19pcnFfaGFuZGxlcihzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsIHUzMiBpaXIpCiAJCURSTV9FUlJPUigiVW5leHBlY3RlZCBERSBN
aXNjIGludGVycnVwdFxuIik7CiB9CiAKK3ZvaWQgZ2VuMTFfZHNpX3RlX2ludGVycnVwdF9oYW5k
bGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKKwkJCQkgICAgdTMyIHRlX3Ry
aWdnZXIpCit7CisJZW51bSBwaXBlIHBpcGUgPSBJTlZBTElEX1BJUEU7CisJZW51bSB0cmFuc2Nv
ZGVyIGRzaV90cmFuczsKKwllbnVtIHBvcnQgcG9ydDsKKwl1MzIgdmFsLCB0bXA7CisKKwkvKgor
CSAqIEluY2FzZSBvZiBkdWFsIGxpbmssIFRFIGNvbWVzIGZyb20gRFNJXzEKKwkgKiB0aGlzIGlz
IHRvIGNoZWNrIGlmIGR1YWwgbGluayBpcyBlbmFibGVkCisJICovCisJdmFsID0gSTkxNV9SRUFE
KFRSQU5TX0RESV9GVU5DX0NUTDIoVFJBTlNDT0RFUl9EU0lfMCkpOworCXZhbCAmPSBQT1JUX1NZ
TkNfTU9ERV9FTkFCTEU7CisKKwkvKgorCSAqIGlmIGR1YWwgbGluayBpcyBlbmFibGVkLCB0aGVu
IHJlYWQgRFNJXzAKKwkgKiB0cmFuc2NvZGVyIHJlZ2lzdGVycworCSAqLworCXBvcnQgPSAoKHRl
X3RyaWdnZXIgJiBEU0kxX1RFICYmIHZhbCkgfHwgKHRlX3RyaWdnZXIgJiBEU0kwX1RFKSkgPwor
CQkJCQkJICBQT1JUX0EgOiBQT1JUX0I7CisJZHNpX3RyYW5zID0gKHBvcnQgPT0gUE9SVF9BKSA/
IFRSQU5TQ09ERVJfRFNJXzAgOiBUUkFOU0NPREVSX0RTSV8xOworCisJLyogQ2hlY2sgaWYgRFNJ
IGNvbmZpZ3VyZWQgaW4gY29tbWFuZCBtb2RlICovCisJdmFsID0gSTkxNV9SRUFEKERTSV9UUkFO
U19GVU5DX0NPTkYoZHNpX3RyYW5zKSk7CisJdmFsID0gKHZhbCAmIE9QX01PREVfTUFTSykgPj4g
Mjg7CisKKwlpZiAodmFsKSB7CisJCURSTV9FUlJPUigiRFNJIHRyYW5jb2RlciBub3QgY29uZmln
dXJlZCBpbiBjb21tYW5kIG1vZGVcbiIpOworCQlyZXR1cm47CisJfQorCisJLyogR2V0IFBJUEUg
Zm9yIGhhbmRsaW5nIFZCTEFOSyBldmVudCAqLworCXZhbCA9IEk5MTVfUkVBRChUUkFOU19ERElf
RlVOQ19DVEwoZHNpX3RyYW5zKSk7CisJc3dpdGNoICh2YWwgJiBUUkFOU19ERElfRURQX0lOUFVU
X01BU0spIHsKKwljYXNlIFRSQU5TX0RESV9FRFBfSU5QVVRfQV9PTjoKKwkJcGlwZSA9IFBJUEVf
QTsKKwkJYnJlYWs7CisJY2FzZSBUUkFOU19ERElfRURQX0lOUFVUX0JfT05PRkY6CisJCXBpcGUg
PSBQSVBFX0I7CisJCWJyZWFrOworCWNhc2UgVFJBTlNfRERJX0VEUF9JTlBVVF9DX09OT0ZGOgor
CQlwaXBlID0gUElQRV9DOworCQlicmVhazsKKwlkZWZhdWx0OgorCQlEUk1fRVJST1IoIkludmFs
aWQgUElQRVxuIik7CisJfQorCisJLyogY2xlYXIgVEUgaW4gZHNpIElJUiAqLworCXBvcnQgPSAo
dGVfdHJpZ2dlciAmIERTSTFfVEUpID8gUE9SVF9CIDogUE9SVF9BOworCXRtcCA9IEk5MTVfUkVB
RChEU0lfSU5UUl9JREVOVF9SRUcocG9ydCkpOworCUk5MTVfV1JJVEUoRFNJX0lOVFJfSURFTlRf
UkVHKHBvcnQpLCB0bXApOworCisJZHJtX2hhbmRsZV92YmxhbmsoJmRldl9wcml2LT5kcm0sIHBp
cGUpOworfQorCiBzdGF0aWMgaXJxcmV0dXJuX3QKIGdlbjhfZGVfaXJxX2hhbmRsZXIoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCB1MzIgbWFzdGVyX2N0bCkKIHsKQEAgLTIyOTQs
NiArMjM1MCwxNCBAQCBnZW44X2RlX2lycV9oYW5kbGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwgdTMyIG1hc3Rlcl9jdGwpCiAJCQkJZm91bmQgPSB0cnVlOwogCQkJfQogCisJ
CQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkgeworCQkJCXRtcF9tYXNrID0gaWlyICYg
KERTSTBfVEUgfCBEU0kxX1RFKTsKKwkJCQlpZiAodG1wX21hc2spIHsKKwkJCQkJZ2VuMTFfZHNp
X3RlX2ludGVycnVwdF9oYW5kbGVyKGRldl9wcml2LCB0bXBfbWFzayk7CisJCQkJCWZvdW5kID0g
dHJ1ZTsKKwkJCQl9CisJCQl9CisKIAkJCWlmICghZm91bmQpCiAJCQkJRFJNX0VSUk9SKCJVbmV4
cGVjdGVkIERFIFBvcnQgaW50ZXJydXB0XG4iKTsKIAkJfQotLSAKMi4yMS4wLjUuZ2FlYjU4MmEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
