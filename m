Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD8D1403B0
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 06:49:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99E9F6F3A2;
	Fri, 17 Jan 2020 05:49:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12CAD6F3A2
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 05:49:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jan 2020 21:49:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,328,1574150400"; d="scan'208";a="424333033"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.9])
 by fmsmga005.fm.intel.com with ESMTP; 16 Jan 2020 21:49:00 -0800
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jan 2020 21:47:17 +0800
Message-Id: <20200117134717.2703-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Check require bandwidth did not
 exceed LSPCON limitation
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Cooper Chiou <cooper.chiou@intel.com>, Sam McNally <sammc@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2hpbGUgbW9kZSBzZXR0aW5nLCBkcml2ZXIgd291bGQgY2FsY3VsYXRlIG1vZGUgcmF0ZSBiYXNl
ZCBvbgpyZXNvbHV0aW9uIGFuZCBicHAuIEFuZCBjaG9vc2UgdGhlIGJlc3QgYnBwIHRoYXQgZGlk
IG5vdCBleGNlZWQKRFAgYmFuZHdpZHRkLgoKQnV0IExTUENPTiBoYWQgbW9yZSByZXN0cmljdGlv
biBkdWUgdG8gaXQgY29udmVydCBEUCB0byBIRE1JLgpEcml2ZXIgc2hvdWxkIHJlc3BlY3QgSERN
SSdzIGJhbmR3aWR0aCBsaW1pdGF0aW9uIGlmIExTUENPTgp3YXMgYWN0aXZlLiBUaGlzIGNoYW5n
ZSB3b3VsZCBpZ25vcmUgdGhlIGJwcCB3aGVuIGl0cyByZXF1aXJlZApvdXRwdXQgYmFuZHdpZHRo
IGFscmVhZHkgb3ZlciBIRE1JIDIuMCBvciAxLjQgc3BlYy4KCkNjOiBJbXJlIERlYWsgPGltcmUu
ZGVha0BpbnRlbC5jb20+CkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPgpDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4
LmludGVsLmNvbT4KQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb20+
CkNjOiBDb29wZXIgQ2hpb3UgPGNvb3Blci5jaGlvdUBpbnRlbC5jb20+CkNjOiBTYW0gTWNOYWxs
eSA8c2FtbWNAZ29vZ2xlLmNvbT4KU2lnbmVkLW9mZi1ieTogTGVlIFNoYXduIEMgPHNoYXduLmMu
bGVlQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
LmMgICAgIHwgNDUgKysrKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2xzcGNvbi5jIHwgIDUgKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2xzcGNvbi5oIHwgIDEgKwogMyBmaWxlcyBjaGFuZ2VkLCA1MSBpbnNlcnRpb25z
KCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCmluZGV4IGM3NDI0ZTJh
MDRhMy4uYzI3ZDNlN2FjMjE5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jCkBAIC0xOTc2LDYgKzE5NzYsNDcgQEAgc3RhdGljIGludCBpbnRlbF9kcF9vdXRwdXRfYnBw
KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLCBpbnQgYnAKIAlyZXR1
cm4gYnBwOwogfQogCitzdGF0aWMgYm9vbAoraW50ZWxfZHBfbHNwY29uX2V4Y2VlZF9iYW5kd2lk
dGhfbGltaXRhdGlvbihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAorCQkJCQkgICAgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnLAorCQkJCQkgICAgaW50IGJwcCkKK3sKKwlz
dHJ1Y3QgaW50ZWxfbHNwY29uICpsc3Bjb24gPSBkcF90b19sc3Bjb24oaW50ZWxfZHApOworCXN0
cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvciA9IGludGVsX2RwLT5hdHRhY2hlZF9jb25u
ZWN0b3I7CisJY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X2luZm8gKmluZm8gPSAmY29ubmVjdG9y
LT5iYXNlLmRpc3BsYXlfaW5mbzsKKwllbnVtIGRybV9sc3Bjb25fbW9kZSBsc3Bjb25fY3VycmVu
dF9tb2RlID0gbHNwY29uX2dldF9tb2RlKGxzcGNvbik7CisJY29uc3QgaW50IHBjb25fbW9kZV9t
YXhfdG1kc19jbG9jayA9IDYwMDAwMDsKKwljb25zdCBpbnQgbHNfbW9kZV9tYXhfdG1kc19jbG9j
ayAgID0gMzQwMDAwOworCWludCBtb2RlX3JhdGUsIG1heF90bWRzX2Nsb2NrID0gcGNvbl9tb2Rl
X21heF90bWRzX2Nsb2NrOworCisJaWYgKGxzcGNvbi0+YWN0aXZlKSB7CisJCXN3aXRjaCAoYnBw
KSB7CisJCWNhc2UgMzY6CisJCQltb2RlX3JhdGUgPSBwaXBlX2NvbmZpZy0+aHcuYWRqdXN0ZWRf
bW9kZS5jcnRjX2Nsb2NrICogMyAvIDI7CisJCQlicmVhazsKKwkJY2FzZSAzMDoKKwkJCW1vZGVf
cmF0ZSA9IHBpcGVfY29uZmlnLT5ody5hZGp1c3RlZF9tb2RlLmNydGNfY2xvY2sgKiA1IC8gNDsK
KwkJCWJyZWFrOworCQljYXNlIDI0OgorCQlkZWZhdWx0OgorCQkJbW9kZV9yYXRlID0gcGlwZV9j
b25maWctPmh3LmFkanVzdGVkX21vZGUuY3J0Y19jbG9jazsKKwkJCWJyZWFrOworCQl9CisKKwkJ
aWYgKGxzcGNvbl9jdXJyZW50X21vZGUgPT0gRFJNX0xTUENPTl9NT0RFX0xTKQorCQkJbWF4X3Rt
ZHNfY2xvY2sgPSBsc19tb2RlX21heF90bWRzX2Nsb2NrOworCisJCWlmIChpbmZvLT5tYXhfdG1k
c19jbG9jaykKKwkJCW1heF90bWRzX2Nsb2NrID0gbWluKG1heF90bWRzX2Nsb2NrLAorCQkJCQkg
ICAgIGluZm8tPm1heF90bWRzX2Nsb2NrKTsKKworCQlpZiAobW9kZV9yYXRlID4gbWF4X3RtZHNf
Y2xvY2spCisJCQlyZXR1cm4gdHJ1ZTsKKwl9CisKKwlyZXR1cm4gZmFsc2U7Cit9CisKIC8qIE9w
dGltaXplIGxpbmsgY29uZmlnIGluIG9yZGVyOiBtYXggYnBwLCBtaW4gY2xvY2ssIG1pbiBsYW5l
cyAqLwogc3RhdGljIGludAogaW50ZWxfZHBfY29tcHV0ZV9saW5rX2NvbmZpZ193aWRlKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHAsCkBAIC0xOTg5LDYgKzIwMzAsMTAgQEAgaW50ZWxfZHBfY29t
cHV0ZV9saW5rX2NvbmZpZ193aWRlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCiAJZm9yIChi
cHAgPSBsaW1pdHMtPm1heF9icHA7IGJwcCA+PSBsaW1pdHMtPm1pbl9icHA7IGJwcCAtPSAyICog
MykgewogCQlpbnQgb3V0cHV0X2JwcCA9IGludGVsX2RwX291dHB1dF9icHAocGlwZV9jb25maWcs
IGJwcCk7CiAKKwkJLyogQnlwYXNzIHRoIGJwcCBpZiByZXF1aXJlIGJhbmR3aWR0aCBvdmVyIEhE
TUkgc3BlYyB3aGVuIExTUENPTiBhY3RpdmUgKi8KKwkJaWYgKGludGVsX2RwX2xzcGNvbl9leGNl
ZWRfYmFuZHdpZHRoX2xpbWl0YXRpb24oaW50ZWxfZHAsIHBpcGVfY29uZmlnLCBvdXRwdXRfYnBw
KSkKKwkJCWNvbnRpbnVlOworCiAJCW1vZGVfcmF0ZSA9IGludGVsX2RwX2xpbmtfcmVxdWlyZWQo
YWRqdXN0ZWRfbW9kZS0+Y3J0Y19jbG9jaywKIAkJCQkJCSAgIG91dHB1dF9icHApOwogCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2xzcGNvbi5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sc3Bjb24uYwppbmRleCBkODA3YzU2NDhj
ODcuLjY5NTJjNTAyOGZkZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9sc3Bjb24uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2xzcGNvbi5jCkBAIC01NTAsNiArNTUwLDExIEBAIHZvaWQgbHNwY29uX3dhaXRfcGNvbl9tb2Rl
KHN0cnVjdCBpbnRlbF9sc3Bjb24gKmxzcGNvbikKIAlsc3Bjb25fd2FpdF9tb2RlKGxzcGNvbiwg
RFJNX0xTUENPTl9NT0RFX1BDT04pOwogfQogCitpbnQgbHNwY29uX2dldF9tb2RlKHN0cnVjdCBp
bnRlbF9sc3Bjb24gKmxzcGNvbikKK3sKKwlyZXR1cm4gbHNwY29uX2dldF9jdXJyZW50X21vZGUo
bHNwY29uKTsKK30KKwogYm9vbCBsc3Bjb25faW5pdChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0
ICppbnRlbF9kaWdfcG9ydCkKIHsKIAlzdHJ1Y3QgaW50ZWxfZHAgKmRwID0gJmludGVsX2RpZ19w
b3J0LT5kcDsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
bHNwY29uLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2xzcGNvbi5oCmlu
ZGV4IDM3Y2ZkZGY4YTljNS4uNWNlOWRhZWY5NzA4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2xzcGNvbi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfbHNwY29uLmgKQEAgLTE4LDYgKzE4LDcgQEAgc3RydWN0IGludGVsX2xz
cGNvbjsKIGJvb2wgbHNwY29uX2luaXQoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxf
ZGlnX3BvcnQpOwogdm9pZCBsc3Bjb25fcmVzdW1lKHN0cnVjdCBpbnRlbF9sc3Bjb24gKmxzcGNv
bik7CiB2b2lkIGxzcGNvbl93YWl0X3Bjb25fbW9kZShzdHJ1Y3QgaW50ZWxfbHNwY29uICpsc3Bj
b24pOworaW50IGxzcGNvbl9nZXRfbW9kZShzdHJ1Y3QgaW50ZWxfbHNwY29uICpsc3Bjb24pOwog
dm9pZCBsc3Bjb25fd3JpdGVfaW5mb2ZyYW1lKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVy
LAogCQkJICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCQkJ
ICAgIHVuc2lnbmVkIGludCB0eXBlLAotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
