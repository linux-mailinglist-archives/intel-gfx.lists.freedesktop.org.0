Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E10C21A8EDC
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 01:03:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 553A96E5C3;
	Tue, 14 Apr 2020 23:03:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F7F26E030
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 23:03:03 +0000 (UTC)
IronPort-SDR: 5O5SEy3GQeCcfJJH6FBpyf1nVjjMqQLS9HMwtFkeOx4LVzK0JkNH6rHOmFy9cuk8h5VcH2yz3T
 fqILkAyusTLQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 16:03:02 -0700
IronPort-SDR: OjAfbYak/JHZZlBiSJxxw33LGK25UTNEQRXvGqoEFhkXfaRXCYe5rxj+I7lY0mRkBD1TqS9TvM
 OKncX3WSBMaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,384,1580803200"; d="scan'208";a="288370886"
Received: from unknown (HELO josouza-MOBL2.amr.corp.intel.com) ([10.209.55.81])
 by fmsmga002.fm.intel.com with ESMTP; 14 Apr 2020 16:03:02 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Apr 2020 16:04:40 -0700
Message-Id: <20200414230442.262092-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/display: Load DP_TP_CTL/STATUS
 offset before use it
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmlnaHQgbm93IGRwLnJlZ3MuZHBfdHBfY3RsL3N0YXR1cyBhcmUgb25seSBzZXQgZHVyaW5nIHRo
ZSBlbmNvZGVyCnByZV9lbmFibGUoKSBob29rLCB3aGF0IGlzIGNhdXNpbmcgYWxsIHJlYWRzIGFu
ZCB3cml0ZXMgdG8gdGhvc2UKcmVnaXN0ZXJzIHRvIGdvIHRvIG9mZnNldCAweDAgYmVmb3JlIHBy
ZV9lbmFibGUoKSBpcyBleGVjdXRlZC4KClNvIGlmIGk5MTUgdGFrZXMgdGhlIEJJT1Mgc3RhdGUg
YW5kIGRvbid0IGRvIGEgbW9kZXNldCBhbnkgZm9sbG93aW5nCmxpbmsgcmV0cmFpbmcgd2lsbCBm
YWlsLgoKSW4gdGhlIGNhc2UgdGhhdCBpOTE1IG5lZWRzIHRvIGRvIGEgbW9kZXNldCwgdGhlIERE
SSBkaXNhYmxlIHNlcXVlbmNlCndpbGwgd3JpdGUgdG8gYSB3cm9uZyByZWdpc3RlciBub3QgZGlz
YWJsaW5nIERQICdUcmFuc3BvcnQgRW5hYmxlJyBpbgpEUF9UUF9DVEwsIG1ha2luZyBhIEhETUkg
bW9kZXNldCBpbiB0aGUgc2FtZSBwb3J0L3RyYW5zY29kZXIgdG8Kbm90IGxpZ2h0IHVwIHRoZSBt
b25pdG9yLgoKU28gaGVyZSBmb3IgR0VOcyBvbGRlciB0aGFuIDEyLCB0aGF0IGhhdmUgdGhvc2Ug
cmVnaXN0ZXJzIGZpeGVkIGF0CnBvcnQgb2Zmc2V0IHJhbmdlIGl0IGlzIGxvYWRpbmcgYXQgZW5j
b2Rlci9wb3J0IGluaXQgd2hpbGUgZm9yIEdFTjEyCml0IHdpbGwga2VlcCBzZXR0aW5nIGl0IGF0
IGVuY29kZXIgcHJlX2VuYWJsZSgpIGFuZCBkdXJpbmcgSFcgc3RhdGUKcmVhZG91dC4KCkZpeGVz
OiA0NDQ0ZGY2ZTIwNWIgKCJkcm0vaTkxNS90Z2w6IG1vdmUgRFBfVFBfKiB0byB0cmFuc2NvZGVy
IikKQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+CkNjOiBMdWNhcyBE
ZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kg
Um9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDE0ICsrKysrKysrKysrLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgIHwgIDUgKystLS0KIDIgZmlsZXMgY2hh
bmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kZGkuYwppbmRleCBiZTZjNjFiY2JjOWMuLjFhYWI5M2E5NGY0MCAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC0zMjUyLDkgKzMy
NTIsNiBAQCBzdGF0aWMgdm9pZCBoc3dfZGRpX3ByZV9lbmFibGVfZHAoc3RydWN0IGludGVsX2F0
b21pY19zdGF0ZSAqc3RhdGUsCiAJaW50ZWxfZHBfc2V0X2xpbmtfcGFyYW1zKGludGVsX2RwLCBj
cnRjX3N0YXRlLT5wb3J0X2Nsb2NrLAogCQkJCSBjcnRjX3N0YXRlLT5sYW5lX2NvdW50LCBpc19t
c3QpOwogCi0JaW50ZWxfZHAtPnJlZ3MuZHBfdHBfY3RsID0gRFBfVFBfQ1RMKHBvcnQpOwotCWlu
dGVsX2RwLT5yZWdzLmRwX3RwX3N0YXR1cyA9IERQX1RQX1NUQVRVUyhwb3J0KTsKLQogCWludGVs
X2VkcF9wYW5lbF9vbihpbnRlbF9kcCk7CiAKIAlpbnRlbF9kZGlfY2xrX3NlbGVjdChlbmNvZGVy
LCBjcnRjX3N0YXRlKTsKQEAgLTQwNjEsMTIgKzQwNTgsMTggQEAgdm9pZCBpbnRlbF9kZGlfZ2V0
X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsKIAlzdHJ1Y3Qg
aW50ZWxfY3J0YyAqaW50ZWxfY3J0YyA9IHRvX2ludGVsX2NydGMocGlwZV9jb25maWctPnVhcGku
Y3J0Yyk7CiAJZW51bSB0cmFuc2NvZGVyIGNwdV90cmFuc2NvZGVyID0gcGlwZV9jb25maWctPmNw
dV90cmFuc2NvZGVyOworCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBlbmNfdG9faW50ZWxf
ZHAoZW5jb2Rlcik7CiAJdTMyIHRlbXAsIGZsYWdzID0gMDsKIAogCS8qIFhYWDogRFNJIHRyYW5z
Y29kZXIgcGFyYW5vaWEgKi8KIAlpZiAoZHJtX1dBUk5fT04oJmRldl9wcml2LT5kcm0sIHRyYW5z
Y29kZXJfaXNfZHNpKGNwdV90cmFuc2NvZGVyKSkpCiAJCXJldHVybjsKIAorCWlmIChJTlRFTF9H
RU4oZGV2X3ByaXYpID49IDEyKSB7CisJCWludGVsX2RwLT5yZWdzLmRwX3RwX2N0bCA9IFRHTF9E
UF9UUF9DVEwoY3B1X3RyYW5zY29kZXIpOworCQlpbnRlbF9kcC0+cmVncy5kcF90cF9zdGF0dXMg
PSBUR0xfRFBfVFBfU1RBVFVTKGNwdV90cmFuc2NvZGVyKTsKKwl9CisKIAlpbnRlbF9kc2NfZ2V0
X2NvbmZpZyhlbmNvZGVyLCBwaXBlX2NvbmZpZyk7CiAKIAl0ZW1wID0gaW50ZWxfZGVfcmVhZChk
ZXZfcHJpdiwgVFJBTlNfRERJX0ZVTkNfQ1RMKGNwdV90cmFuc2NvZGVyKSk7CkBAIC00Mzk2LDYg
KzQzOTksNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9lbmNvZGVyX2Z1bmNzIGludGVsX2Rk
aV9mdW5jcyA9IHsKIHN0YXRpYyBzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICoKIGludGVsX2RkaV9p
bml0X2RwX2Nvbm5lY3RvcihzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICppbnRlbF9kaWdfcG9y
dCkKIHsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGludGVs
X2RpZ19wb3J0LT5iYXNlLmJhc2UuZGV2KTsKIAlzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25u
ZWN0b3I7CiAJZW51bSBwb3J0IHBvcnQgPSBpbnRlbF9kaWdfcG9ydC0+YmFzZS5wb3J0OwogCkBA
IC00NDA2LDYgKzQ0MTAsMTAgQEAgaW50ZWxfZGRpX2luaXRfZHBfY29ubmVjdG9yKHN0cnVjdCBp
bnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0KQogCWludGVsX2RpZ19wb3J0LT5kcC5v
dXRwdXRfcmVnID0gRERJX0JVRl9DVEwocG9ydCk7CiAJaW50ZWxfZGlnX3BvcnQtPmRwLnByZXBh
cmVfbGlua19yZXRyYWluID0KIAkJaW50ZWxfZGRpX3ByZXBhcmVfbGlua19yZXRyYWluOworCWlm
IChJTlRFTF9HRU4oZGV2X3ByaXYpIDwgMTIpIHsKKwkJaW50ZWxfZGlnX3BvcnQtPmRwLnJlZ3Mu
ZHBfdHBfY3RsID0gRFBfVFBfQ1RMKHBvcnQpOworCQlpbnRlbF9kaWdfcG9ydC0+ZHAucmVncy5k
cF90cF9zdGF0dXMgPSBEUF9UUF9TVEFUVVMocG9ydCk7CisJfQogCiAJaWYgKCFpbnRlbF9kcF9p
bml0X2Nvbm5lY3RvcihpbnRlbF9kaWdfcG9ydCwgY29ubmVjdG9yKSkgewogCQlrZnJlZShjb25u
ZWN0b3IpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCmluZGV4IGQ0ZmNj
OTU4Mzg2OS4uMDM1OTFhYjc2YjBkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcC5jCkBAIC0yNjcxLDkgKzI2NzEsNiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kcF9wcmVwYXJl
KHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCQkJCSBpbnRlbF9jcnRjX2hhc190eXBl
KHBpcGVfY29uZmlnLAogCQkJCQkJICAgICBJTlRFTF9PVVRQVVRfRFBfTVNUKSk7CiAKLQlpbnRl
bF9kcC0+cmVncy5kcF90cF9jdGwgPSBEUF9UUF9DVEwocG9ydCk7Ci0JaW50ZWxfZHAtPnJlZ3Mu
ZHBfdHBfc3RhdHVzID0gRFBfVFBfU1RBVFVTKHBvcnQpOwotCiAJLyoKIAkgKiBUaGVyZSBhcmUg
Zm91ciBraW5kcyBvZiBEUCByZWdpc3RlcnM6CiAJICoKQEAgLTg0NzAsNiArODQ2Nyw4IEBAIGJv
b2wgaW50ZWxfZHBfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAKIAlp
bnRlbF9kaWdfcG9ydC0+ZHAub3V0cHV0X3JlZyA9IG91dHB1dF9yZWc7CiAJaW50ZWxfZGlnX3Bv
cnQtPm1heF9sYW5lcyA9IDQ7CisJaW50ZWxfZGlnX3BvcnQtPmRwLnJlZ3MuZHBfdHBfY3RsID0g
RFBfVFBfQ1RMKHBvcnQpOworCWludGVsX2RpZ19wb3J0LT5kcC5yZWdzLmRwX3RwX3N0YXR1cyA9
IERQX1RQX1NUQVRVUyhwb3J0KTsKIAogCWludGVsX2VuY29kZXItPnR5cGUgPSBJTlRFTF9PVVRQ
VVRfRFA7CiAJaW50ZWxfZW5jb2Rlci0+cG93ZXJfZG9tYWluID0gaW50ZWxfcG9ydF90b19wb3dl
cl9kb21haW4ocG9ydCk7Ci0tIAoyLjI2LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
