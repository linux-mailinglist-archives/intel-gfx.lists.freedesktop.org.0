Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0E8129F3D
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Dec 2019 09:42:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E46DB6E2F3;
	Tue, 24 Dec 2019 08:41:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82FB86E0D7
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Dec 2019 08:41:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Dec 2019 00:41:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,350,1571727600"; d="scan'208";a="214124352"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by fmsmga007.fm.intel.com with ESMTP; 24 Dec 2019 00:41:50 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Dec 2019 00:40:11 -0800
Message-Id: <20191224084012.24241-9-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191224084012.24241-1-lucas.demarchi@intel.com>
References: <20191224084012.24241-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 09/10] drm/i915: prefer 3-letter acronym for
 ivybridge
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgYXJlIGN1cnJlbnRseSB1c2luZyBhIG1peCBvZiBwbGF0Zm9ybSBuYW1lIGFuZCBhY3Jvbnlt
IHRvIG5hbWUgdGhlCmZ1bmN0aW9ucy4gTGV0J3MgcHJlZmVyIHRoZSBhY3JvbnltIGFzIGl0IHNo
b3VsZCBiZSBjbGVhciB3aGF0IHBsYXRmb3JtCml0J3MgYWJvdXQgYW5kIGl0J3Mgc2hvcnRlciwg
c28gaXQgZG9lc24ndCBnbyBvdmVyIDgwIGNvbHVtbnMgaW4gYSBmZXcKY2FzZXMuIFRoaXMgY29u
dmVydHMgaXZ5YnJpZGdlIHRvIGl2YiB3aGVyZSBhcHByb3ByaWF0ZS4KClNpZ25lZC1vZmYtYnk6
IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpBY2tlZC1ieTogSmFu
aSBOaWt1bGEgPGphbmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4KQWNrZWQtYnk6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBNYXR0
IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICAgICAgIHwgIDQgKystLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9maWZvX3VuZGVycnVuLmMgfCAxMiArKysrKystLS0tLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgICAgICAgICAgICAgICAgICAgIHwgIDYg
KysrLS0tCiAzIGZpbGVzIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXgg
NjE3ODNhZmU5ZTA4Li5iOWQyZDg4Yjg1YzAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC01NTQxLDcgKzU1NDEsNyBAQCBzdGF0aWMgdm9pZCBj
cHRfc2V0X2ZkaV9iY19iaWZ1cmNhdGlvbihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsIGJvb2wgZQogCVBPU1RJTkdfUkVBRChTT1VUSF9DSElDS0VOMSk7CiB9CiAKLXN0YXRpYyB2
b2lkIGl2eWJyaWRnZV91cGRhdGVfZmRpX2JjX2JpZnVyY2F0aW9uKGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQorc3RhdGljIHZvaWQgaXZiX3VwZGF0ZV9mZGlfYmNf
YmlmdXJjYXRpb24oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiB7
CiAJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPnVh
cGkuY3J0Yyk7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShj
cnRjLT5iYXNlLmRldik7CkBAIC01NjE0LDcgKzU2MTQsNyBAQCBzdGF0aWMgdm9pZCBpbGtfcGNo
X2VuYWJsZShjb25zdCBzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKIAlhc3NlcnRf
cGNoX3RyYW5zY29kZXJfZGlzYWJsZWQoZGV2X3ByaXYsIHBpcGUpOwogCiAJaWYgKElTX0lWWUJS
SURHRShkZXZfcHJpdikpCi0JCWl2eWJyaWRnZV91cGRhdGVfZmRpX2JjX2JpZnVyY2F0aW9uKGNy
dGNfc3RhdGUpOworCQlpdmJfdXBkYXRlX2ZkaV9iY19iaWZ1cmNhdGlvbihjcnRjX3N0YXRlKTsK
IAogCS8qIFdyaXRlIHRoZSBUVSBzaXplIGJpdHMgYmVmb3JlIGZkaSBsaW5rIHRyYWluaW5nLCBz
byB0aGF0IGVycm9yCiAJICogZGV0ZWN0aW9uIHdvcmtzLiAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9maWZvX3VuZGVycnVuLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZpZm9fdW5kZXJydW4uYwppbmRleCAxZjgwZjI3NWYz
ZjIuLjZjODNiMzUwNTI1ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9maWZvX3VuZGVycnVuLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9maWZvX3VuZGVycnVuLmMKQEAgLTEzOSw3ICsxMzksNyBAQCBzdGF0aWMgdm9pZCBp
bGtfc2V0X2ZpZm9fdW5kZXJydW5fcmVwb3J0aW5nKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJ
CWlsa19kaXNhYmxlX2Rpc3BsYXlfaXJxKGRldl9wcml2LCBiaXQpOwogfQogCi1zdGF0aWMgdm9p
ZCBpdnlicmlkZ2VfY2hlY2tfZmlmb191bmRlcnJ1bnMoc3RydWN0IGludGVsX2NydGMgKmNydGMp
CitzdGF0aWMgdm9pZCBpdmJfY2hlY2tfZmlmb191bmRlcnJ1bnMoc3RydWN0IGludGVsX2NydGMg
KmNydGMpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShj
cnRjLT5iYXNlLmRldik7CiAJZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOwpAQCAtMTU3LDkg
KzE1Nyw5IEBAIHN0YXRpYyB2b2lkIGl2eWJyaWRnZV9jaGVja19maWZvX3VuZGVycnVucyhzdHJ1
Y3QgaW50ZWxfY3J0YyAqY3J0YykKIAlEUk1fRVJST1IoImZpZm8gdW5kZXJydW4gb24gcGlwZSAl
Y1xuIiwgcGlwZV9uYW1lKHBpcGUpKTsKIH0KIAotc3RhdGljIHZvaWQgaXZ5YnJpZGdlX3NldF9m
aWZvX3VuZGVycnVuX3JlcG9ydGluZyhzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAotCQkJCQkJICBl
bnVtIHBpcGUgcGlwZSwKLQkJCQkJCSAgYm9vbCBlbmFibGUsIGJvb2wgb2xkKQorc3RhdGljIHZv
aWQgaXZiX3NldF9maWZvX3VuZGVycnVuX3JlcG9ydGluZyhzdHJ1Y3QgZHJtX2RldmljZSAqZGV2
LAorCQkJCQkgICAgZW51bSBwaXBlIHBpcGUsIGJvb2wgZW5hYmxlLAorCQkJCQkgICAgYm9vbCBv
bGQpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShkZXYp
OwogCWlmIChlbmFibGUpIHsKQEAgLTI2Niw3ICsyNjYsNyBAQCBzdGF0aWMgYm9vbCBfX2ludGVs
X3NldF9jcHVfZmlmb191bmRlcnJ1bl9yZXBvcnRpbmcoc3RydWN0IGRybV9kZXZpY2UgKmRldiwK
IAllbHNlIGlmIChJU19HRU5fUkFOR0UoZGV2X3ByaXYsIDUsIDYpKQogCQlpbGtfc2V0X2ZpZm9f
dW5kZXJydW5fcmVwb3J0aW5nKGRldiwgcGlwZSwgZW5hYmxlKTsKIAllbHNlIGlmIChJU19HRU4o
ZGV2X3ByaXYsIDcpKQotCQlpdnlicmlkZ2Vfc2V0X2ZpZm9fdW5kZXJydW5fcmVwb3J0aW5nKGRl
diwgcGlwZSwgZW5hYmxlLCBvbGQpOworCQlpdmJfc2V0X2ZpZm9fdW5kZXJydW5fcmVwb3J0aW5n
KGRldiwgcGlwZSwgZW5hYmxlLCBvbGQpOwogCWVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikg
Pj0gOCkKIAkJYmR3X3NldF9maWZvX3VuZGVycnVuX3JlcG9ydGluZyhkZXYsIHBpcGUsIGVuYWJs
ZSk7CiAKQEAgLTQyNyw3ICs0MjcsNyBAQCB2b2lkIGludGVsX2NoZWNrX2NwdV9maWZvX3VuZGVy
cnVucyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJCWlmIChIQVNfR01DSChk
ZXZfcHJpdikpCiAJCQlpOXh4X2NoZWNrX2ZpZm9fdW5kZXJydW5zKGNydGMpOwogCQllbHNlIGlm
IChJU19HRU4oZGV2X3ByaXYsIDcpKQotCQkJaXZ5YnJpZGdlX2NoZWNrX2ZpZm9fdW5kZXJydW5z
KGNydGMpOworCQkJaXZiX2NoZWNrX2ZpZm9fdW5kZXJydW5zKGNydGMpOwogCX0KIAogCXNwaW5f
dW5sb2NrX2lycSgmZGV2X3ByaXYtPmlycV9sb2NrKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfaXJxLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCmlu
ZGV4IDJkNjMyNGQyOTIyYS4uYWZjNmFhZDliZjhjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2lycS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMK
QEAgLTg5Myw3ICs4OTMsNyBAQCBpbnQgaW50ZWxfZ2V0X2NydGNfc2NhbmxpbmUoc3RydWN0IGlu
dGVsX2NydGMgKmNydGMpCiB9CiAKIC8qKgotICogaXZ5YnJpZGdlX3Bhcml0eV93b3JrIC0gV29y
a3F1ZXVlIGNhbGxlZCB3aGVuIGEgcGFyaXR5IGVycm9yIGludGVycnVwdAorICogaXZiX3Bhcml0
eV93b3JrIC0gV29ya3F1ZXVlIGNhbGxlZCB3aGVuIGEgcGFyaXR5IGVycm9yIGludGVycnVwdAog
ICogb2NjdXJyZWQuCiAgKiBAd29yazogd29ya3F1ZXVlIHN0cnVjdAogICoKQEAgLTkwMSw3ICs5
MDEsNyBAQCBpbnQgaW50ZWxfZ2V0X2NydGNfc2NhbmxpbmUoc3RydWN0IGludGVsX2NydGMgKmNy
dGMpCiAgKiB0aGlzIGV2ZW50LCB1c2Vyc3BhY2Ugc2hvdWxkIHRyeSB0byByZW1hcCB0aGUgYmFk
IHJvd3Mgc2luY2Ugc3RhdGlzdGljYWxseQogICogaXQgaXMgbGlrZWx5IHRoZSBzYW1lIHJvdyBp
cyBtb3JlIGxpa2VseSB0byBnbyBiYWQgYWdhaW4uCiAgKi8KLXN0YXRpYyB2b2lkIGl2eWJyaWRn
ZV9wYXJpdHlfd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCitzdGF0aWMgdm9pZCBpdmJf
cGFyaXR5X3dvcmsoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQogewogCXN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiA9CiAJCWNvbnRhaW5lcl9vZih3b3JrLCB0eXBlb2YoKmRldl9w
cml2KSwgbDNfcGFyaXR5LmVycm9yX3dvcmspOwpAQCAtMzg5OSw3ICszODk5LDcgQEAgdm9pZCBp
bnRlbF9pcnFfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAKIAlpbnRl
bF9ocGRfaW5pdF93b3JrKGRldl9wcml2KTsKIAotCUlOSVRfV09SSygmZGV2X3ByaXYtPmwzX3Bh
cml0eS5lcnJvcl93b3JrLCBpdnlicmlkZ2VfcGFyaXR5X3dvcmspOworCUlOSVRfV09SSygmZGV2
X3ByaXYtPmwzX3Bhcml0eS5lcnJvcl93b3JrLCBpdmJfcGFyaXR5X3dvcmspOwogCWZvciAoaSA9
IDA7IGkgPCBNQVhfTDNfU0xJQ0VTOyArK2kpCiAJCWRldl9wcml2LT5sM19wYXJpdHkucmVtYXBf
aW5mb1tpXSA9IE5VTEw7CiAKLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
