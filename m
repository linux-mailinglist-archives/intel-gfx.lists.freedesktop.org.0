Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D2DF593E
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 22:14:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07A176FA87;
	Fri,  8 Nov 2019 21:14:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDE386FA87
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 21:14:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 13:14:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,283,1569308400"; d="scan'208";a="213309407"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.10.155])
 by fmsmga001.fm.intel.com with ESMTP; 08 Nov 2019 13:14:37 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Nov 2019 13:13:51 -0800
Message-Id: <20191108211353.22288-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/bios: rename bios to oprom when
 mapping pci rom
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

b3Byb20gaXMgYWN0dWFsbHkgYSBiZXR0ZXIgbmFtZSB0byB1c2Ugd2hlbiB1c2luZwpwY2lfbWFw
X3JvbSgpLiAiYmlvcyIgIGlzIHdheSB0b28gZ2VuZXJpYyBhbmQgY29uZnVzaW5nLgoKU2lnbmVk
LW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+ClJldmll
d2VkLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgpMaW5rOiBodHRwczov
L3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvbXNnaWQvMjAxOTExMDgwMDM2MDIuMzM1
MjYtMi1sdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Jpb3MuYyB8IDE4ICsrKysrKysrKy0tLS0tLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDkgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCmluZGV4IGEwM2Y1NmI3YjRlZi4uMWY4MzYxNmNmYzMyIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwpAQCAtMTgwNCw3ICsx
ODA0LDcgQEAgYm9vbCBpbnRlbF9iaW9zX2lzX3ZhbGlkX3ZidChjb25zdCB2b2lkICpidWYsIHNp
emVfdCBzaXplKQogCXJldHVybiB2YnQ7CiB9CiAKLXN0YXRpYyBjb25zdCBzdHJ1Y3QgdmJ0X2hl
YWRlciAqZmluZF92YnQodm9pZCBfX2lvbWVtICpiaW9zLCBzaXplX3Qgc2l6ZSkKK3N0YXRpYyBj
b25zdCBzdHJ1Y3QgdmJ0X2hlYWRlciAqZmluZF92YnQodm9pZCBfX2lvbWVtICpvcHJvbSwgc2l6
ZV90IHNpemUpCiB7CiAJc2l6ZV90IGk7CiAKQEAgLTE4MTIsMTQgKzE4MTIsMTQgQEAgc3RhdGlj
IGNvbnN0IHN0cnVjdCB2YnRfaGVhZGVyICpmaW5kX3ZidCh2b2lkIF9faW9tZW0gKmJpb3MsIHNp
emVfdCBzaXplKQogCWZvciAoaSA9IDA7IGkgKyA0IDwgc2l6ZTsgaSsrKSB7CiAJCXZvaWQgKnZi
dDsKIAotCQlpZiAoaW9yZWFkMzIoYmlvcyArIGkpICE9ICooKGNvbnN0IHUzMiAqKSAiJFZCVCIp
KQorCQlpZiAoaW9yZWFkMzIob3Byb20gKyBpKSAhPSAqKChjb25zdCB1MzIgKikiJFZCVCIpKQog
CQkJY29udGludWU7CiAKIAkJLyoKIAkJICogVGhpcyBpcyB0aGUgb25lIHBsYWNlIHdoZXJlIHdl
IGV4cGxpY2l0bHkgZGlzY2FyZCB0aGUgYWRkcmVzcwogCQkgKiBzcGFjZSAoX19pb21lbSkgb2Yg
dGhlIEJJT1MvVkJULgogCQkgKi8KLQkJdmJ0ID0gKHZvaWQgX19mb3JjZSAqKSBiaW9zICsgaTsK
KwkJdmJ0ID0gKHZvaWQgX19mb3JjZSAqKW9wcm9tICsgaTsKIAkJaWYgKGludGVsX2Jpb3NfaXNf
dmFsaWRfdmJ0KHZidCwgc2l6ZSAtIGkpKQogCQkJcmV0dXJuIHZidDsKIApAQCAtMTg0Miw3ICsx
ODQyLDcgQEAgdm9pZCBpbnRlbF9iaW9zX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2KQogCXN0cnVjdCBwY2lfZGV2ICpwZGV2ID0gZGV2X3ByaXYtPmRybS5wZGV2OwogCWNv
bnN0IHN0cnVjdCB2YnRfaGVhZGVyICp2YnQgPSBkZXZfcHJpdi0+b3ByZWdpb24udmJ0OwogCWNv
bnN0IHN0cnVjdCBiZGJfaGVhZGVyICpiZGI7Ci0JdTggX19pb21lbSAqYmlvcyA9IE5VTEw7CisJ
dTggX19pb21lbSAqb3Byb20gPSBOVUxMOwogCiAJaWYgKCFIQVNfRElTUExBWShkZXZfcHJpdikg
fHwgIUlOVEVMX0RJU1BMQVlfRU5BQkxFRChkZXZfcHJpdikpIHsKIAkJRFJNX0RFQlVHX0tNUygi
U2tpcHBpbmcgVkJUIGluaXQgZHVlIHRvIGRpc2FibGVkIGRpc3BsYXkuXG4iKTsKQEAgLTE4NTUs
MTEgKzE4NTUsMTEgQEAgdm9pZCBpbnRlbF9iaW9zX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2KQogCWlmICghdmJ0KSB7CiAJCXNpemVfdCBzaXplOwogCi0JCWJpb3MgPSBw
Y2lfbWFwX3JvbShwZGV2LCAmc2l6ZSk7Ci0JCWlmICghYmlvcykKKwkJb3Byb20gPSBwY2lfbWFw
X3JvbShwZGV2LCAmc2l6ZSk7CisJCWlmICghb3Byb20pCiAJCQlnb3RvIG91dDsKIAotCQl2YnQg
PSBmaW5kX3ZidChiaW9zLCBzaXplKTsKKwkJdmJ0ID0gZmluZF92YnQob3Byb20sIHNpemUpOwog
CQlpZiAoIXZidCkKIAkJCWdvdG8gb3V0OwogCkBAIC0xODkzLDggKzE4OTMsOCBAQCB2b2lkIGlu
dGVsX2Jpb3NfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJCWluaXRf
dmJ0X21pc3NpbmdfZGVmYXVsdHMoZGV2X3ByaXYpOwogCX0KIAotCWlmIChiaW9zKQotCQlwY2lf
dW5tYXBfcm9tKHBkZXYsIGJpb3MpOworCWlmIChvcHJvbSkKKwkJcGNpX3VubWFwX3JvbShwZGV2
LCBvcHJvbSk7CiB9CiAKIC8qKgotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
