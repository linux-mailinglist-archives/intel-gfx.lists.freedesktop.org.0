Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A369C137A48
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Jan 2020 00:39:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9286F6E0F7;
	Fri, 10 Jan 2020 23:39:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CBBB6E0F7
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 23:39:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jan 2020 15:39:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,418,1571727600"; d="scan'208";a="232569752"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.12.163])
 by fmsmga001.fm.intel.com with ESMTP; 10 Jan 2020 15:39:09 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jan 2020 15:39:02 -0800
Message-Id: <20200110233902.154960-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/dp/tgl+: Update combo phy vswing tables
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VEdMIGhhcyBub3cgYSB0YWJsZSBmb3IgUkJSIGFuZCBIQlIgYW5kIGFub3RoZXIgdGFibGUgZm9y
IEhCUjIgb3Zlcgpjb21ibyBwaHlzLiBUaGUgSEJSMiBvbmUgaGFzIHNvbWUgc21hbGwgY2hhbmdl
cyBjb21wYXJpbmcgdG8gdGhlIElDTApvbmUsIHNvIGFkZGluZyB0d28gbmV3IHRhYmxlcyBhbmQg
YWRkaW5nIGEgZnVuY3Rpb24gdG8gcmV0dXJuIFRHTApjb21ibyBwaHkgdGFibGVzLgoKdjI6Ci0g
cmVvcmRlcmVkIHRoZSB0Z2xfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfZHBfaGJyMiB0byBy
ZWR1Y2UgZGlmZgooTWF0dCkKLSByZW1vdmVkIGRlZmluaXRpb24gb2YgcmF0ZXMsIGtlcHQgdXNp
bmcgcmF3IG51bWJlcihKYW5pIGFuZCBWaWxsZSkKLSBjaGFuZ2VkIGNvZGUgdG8gdXNlIGljbF9n
ZXRfY29tYm9fYnVmX3RyYW5zKCkgZm9yIG5vbi1EUCBhcyB0aG9zZQphcmUgZXF1YWwgYmV0d2Vl
biBUR0wgYW5kIElDTChNYXR0KQoKQlNwZWM6IDQ5MjkxCkNjOiBMdWNhcyBEZSBNYXJjaGkgPGx1
Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBp
bnRlbC5jb20+CkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgpDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KU2lnbmVkLW9mZi1i
eTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDU1ICsrKysrKysrKysrKysr
KysrKysrKystLQogMSBmaWxlIGNoYW5nZWQsIDUxIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGku
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5kZXggZmJjMTNm
MzZmNzZmLi40MWM0MzNjZGY2MGMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGkuYwpAQCAtNjIyLDYgKzYyMiwzNCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHRnbF9ka2xf
cGh5X2RkaV9idWZfdHJhbnMgdGdsX2RrbF9waHlfaGRtaV9kZGlfdHJhbnNbXSA9IHsKIAl7IDB4
MCwgMHgwLCAweEEgfSwJLyogMTAJCUZ1bGwJLTMgZEIgKi8KIH07CiAKK3N0YXRpYyBjb25zdCBz
dHJ1Y3QgY25sX2RkaV9idWZfdHJhbnMgdGdsX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2Rw
X2hicltdID0geworCQkJCQkJLyogTlQgbVYgVHJhbnMgbVYgZGIgICAgKi8KKwl7IDB4QSwgMHgz
MiwgMHgzRiwgMHgwMCwgMHgwMCB9LAkvKiAzNTAgICAzNTAgICAgICAwLjAgICAqLworCXsgMHhB
LCAweDRGLCAweDM3LCAweDAwLCAweDA4IH0sCS8qIDM1MCAgIDUwMCAgICAgIDMuMSAgICovCisJ
eyAweEMsIDB4NzEsIDB4MkYsIDB4MDAsIDB4MTAgfSwJLyogMzUwICAgNzAwICAgICAgNi4wICAg
Ki8KKwl7IDB4NiwgMHg3RCwgMHgyQiwgMHgwMCwgMHgxNCB9LAkvKiAzNTAgICA5MDAgICAgICA4
LjIgICAqLworCXsgMHhBLCAweDRDLCAweDNGLCAweDAwLCAweDAwIH0sCS8qIDUwMCAgIDUwMCAg
ICAgIDAuMCAgICovCisJeyAweEMsIDB4NzMsIDB4MzQsIDB4MDAsIDB4MEIgfSwJLyogNTAwICAg
NzAwICAgICAgMi45ICAgKi8KKwl7IDB4NiwgMHg3RiwgMHgyRiwgMHgwMCwgMHgxMCB9LAkvKiA1
MDAgICA5MDAgICAgICA1LjEgICAqLworCXsgMHhDLCAweDZDLCAweDNDLCAweDAwLCAweDAzIH0s
CS8qIDY1MCAgIDcwMCAgICAgIDAuNiAgICovCisJeyAweDYsIDB4N0YsIDB4MzUsIDB4MDAsIDB4
MEEgfSwJLyogNjAwICAgOTAwICAgICAgMy41ICAgKi8KKwl7IDB4NiwgMHg3RiwgMHgzRiwgMHgw
MCwgMHgwMCB9LAkvKiA5MDAgICA5MDAgICAgICAwLjAgICAqLworfTsKKworc3RhdGljIGNvbnN0
IHN0cnVjdCBjbmxfZGRpX2J1Zl90cmFucyB0Z2xfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNf
ZHBfaGJyMltdID0geworCQkJCQkJLyogTlQgbVYgVHJhbnMgbVYgZGIgICAgKi8KKwl7IDB4QSwg
MHgzNSwgMHgzRiwgMHgwMCwgMHgwMCB9LAkvKiAzNTAgICAzNTAgICAgICAwLjAgICAqLworCXsg
MHhBLCAweDRGLCAweDM3LCAweDAwLCAweDA4IH0sCS8qIDM1MCAgIDUwMCAgICAgIDMuMSAgICov
CisJeyAweEMsIDB4NjMsIDB4MkYsIDB4MDAsIDB4MTAgfSwJLyogMzUwICAgNzAwICAgICAgNi4w
ICAgKi8KKwl7IDB4NiwgMHg3RiwgMHgyQiwgMHgwMCwgMHgxNCB9LAkvKiAzNTAgICA5MDAgICAg
ICA4LjIgICAqLworCXsgMHhBLCAweDQ3LCAweDNGLCAweDAwLCAweDAwIH0sCS8qIDUwMCAgIDUw
MCAgICAgIDAuMCAgICovCisJeyAweEMsIDB4NjMsIDB4MzQsIDB4MDAsIDB4MEIgfSwJLyogNTAw
ICAgNzAwICAgICAgMi45ICAgKi8KKwl7IDB4NiwgMHg3RiwgMHgyRiwgMHgwMCwgMHgxMCB9LAkv
KiA1MDAgICA5MDAgICAgICA1LjEgICAqLworCXsgMHhDLCAweDYxLCAweDNDLCAweDAwLCAweDAz
IH0sCS8qIDY1MCAgIDcwMCAgICAgIDAuNiAgICovCisJeyAweDYsIDB4N0IsIDB4MzUsIDB4MDAs
IDB4MEEgfSwJLyogNjAwICAgOTAwICAgICAgMy41ICAgKi8KKwl7IDB4NiwgMHg3RiwgMHgzRiwg
MHgwMCwgMHgwMCB9LAkvKiA5MDAgICA5MDAgICAgICAwLjAgICAqLworfTsKKwogc3RhdGljIGNv
bnN0IHN0cnVjdCBkZGlfYnVmX3RyYW5zICoKIGJkd19nZXRfYnVmX3RyYW5zX2VkcChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGludCAqbl9lbnRyaWVzKQogewpAQCAtOTAxLDYg
KzkyOSwyMSBAQCBpY2xfZ2V0X2NvbWJvX2J1Zl90cmFucyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYsIGludCB0eXBlLCBpbnQgcmF0ZSwKIAlyZXR1cm4gaWNsX2NvbWJvX3BoeV9k
ZGlfdHJhbnNsYXRpb25zX2RwX2hicjI7CiB9CiAKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgY25sX2Rk
aV9idWZfdHJhbnMgKgordGdsX2dldF9jb21ib19idWZfdHJhbnMoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2LCBpbnQgdHlwZSwgaW50IHJhdGUsCisJCQlpbnQgKm5fZW50cmllcykK
K3sKKwlpZiAodHlwZSAhPSBJTlRFTF9PVVRQVVRfRFApIHsKKwkJcmV0dXJuIGljbF9nZXRfY29t
Ym9fYnVmX3RyYW5zKGRldl9wcml2LCB0eXBlLCByYXRlLCBuX2VudHJpZXMpOworCX0gZWxzZSBp
ZiAocmF0ZSA+IDI3MDAwMCkgeworCQkqbl9lbnRyaWVzID0gQVJSQVlfU0laRSh0Z2xfY29tYm9f
cGh5X2RkaV90cmFuc2xhdGlvbnNfZHBfaGJyMik7CisJCXJldHVybiB0Z2xfY29tYm9fcGh5X2Rk
aV90cmFuc2xhdGlvbnNfZHBfaGJyMjsKKwl9CisKKwkqbl9lbnRyaWVzID0gQVJSQVlfU0laRSh0
Z2xfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfZHBfaGJyKTsKKwlyZXR1cm4gdGdsX2NvbWJv
X3BoeV9kZGlfdHJhbnNsYXRpb25zX2RwX2hicjsKK30KKwogc3RhdGljIGludCBpbnRlbF9kZGlf
aGRtaV9sZXZlbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcG9ydCBw
b3J0KQogewogCXN0cnVjdCBkZGlfdmJ0X3BvcnRfaW5mbyAqcG9ydF9pbmZvID0gJmRldl9wcml2
LT52YnQuZGRpX3BvcnRfaW5mb1twb3J0XTsKQEAgLTkwOSw3ICs5NTIsNyBAQCBzdGF0aWMgaW50
IGludGVsX2RkaV9oZG1pX2xldmVsKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwg
ZW51bSBwb3J0IHBvcgogCiAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpIHsKIAkJaWYg
KGludGVsX3BoeV9pc19jb21ibyhkZXZfcHJpdiwgcGh5KSkKLQkJCWljbF9nZXRfY29tYm9fYnVm
X3RyYW5zKGRldl9wcml2LCBJTlRFTF9PVVRQVVRfSERNSSwKKwkJCXRnbF9nZXRfY29tYm9fYnVm
X3RyYW5zKGRldl9wcml2LCBJTlRFTF9PVVRQVVRfSERNSSwKIAkJCQkJCTAsICZuX2VudHJpZXMp
OwogCQllbHNlCiAJCQluX2VudHJpZXMgPSBBUlJBWV9TSVpFKHRnbF9ka2xfcGh5X2hkbWlfZGRp
X3RyYW5zKTsKQEAgLTIzNzIsNyArMjQxNSw3IEBAIHU4IGludGVsX2RkaV9kcF92b2x0YWdlX21h
eChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKIAogCWlmIChJTlRFTF9HRU4oZGV2X3By
aXYpID49IDEyKSB7CiAJCWlmIChpbnRlbF9waHlfaXNfY29tYm8oZGV2X3ByaXYsIHBoeSkpCi0J
CQlpY2xfZ2V0X2NvbWJvX2J1Zl90cmFucyhkZXZfcHJpdiwgZW5jb2Rlci0+dHlwZSwKKwkJCXRn
bF9nZXRfY29tYm9fYnVmX3RyYW5zKGRldl9wcml2LCBlbmNvZGVyLT50eXBlLAogCQkJCQkJaW50
ZWxfZHAtPmxpbmtfcmF0ZSwgJm5fZW50cmllcyk7CiAJCWVsc2UKIAkJCW5fZW50cmllcyA9IEFS
UkFZX1NJWkUodGdsX2RrbF9waHlfZHBfZGRpX3RyYW5zKTsKQEAgLTI1NjcsOCArMjYxMCwxMiBA
QCBzdGF0aWMgdm9pZCBpY2xfZGRpX2NvbWJvX3Zzd2luZ19wcm9ncmFtKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwKIAl1MzIgbl9lbnRyaWVzLCB2YWw7CiAJaW50IGxuOwogCi0J
ZGRpX3RyYW5zbGF0aW9ucyA9IGljbF9nZXRfY29tYm9fYnVmX3RyYW5zKGRldl9wcml2LCB0eXBl
LCByYXRlLAotCQkJCQkJICAgJm5fZW50cmllcyk7CisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikg
Pj0gMTIpCisJCWRkaV90cmFuc2xhdGlvbnMgPSB0Z2xfZ2V0X2NvbWJvX2J1Zl90cmFucyhkZXZf
cHJpdiwgdHlwZSwgcmF0ZSwKKwkJCQkJCQkgICAmbl9lbnRyaWVzKTsKKwllbHNlCisJCWRkaV90
cmFuc2xhdGlvbnMgPSBpY2xfZ2V0X2NvbWJvX2J1Zl90cmFucyhkZXZfcHJpdiwgdHlwZSwgcmF0
ZSwKKwkJCQkJCQkgICAmbl9lbnRyaWVzKTsKIAlpZiAoIWRkaV90cmFuc2xhdGlvbnMpCiAJCXJl
dHVybjsKIAotLSAKMi4yNC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
