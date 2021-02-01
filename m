Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D5BCB30AF62
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 19:33:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AB676E86E;
	Mon,  1 Feb 2021 18:33:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42A266E86E
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 18:33:55 +0000 (UTC)
IronPort-SDR: 2XyJsfjCQwq6t4dqotcG4TOgBoTbwqgA7XvdW6NDZKK8NP3Y9fIMPzTj8ja7W4vJV7fPsGng5X
 S7W4Zr1ZVtmw==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="178169437"
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="178169437"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 10:33:55 -0800
IronPort-SDR: ZykZVpUVHwJ1tP6FUt2l0HVENKpncNXUlKygawnLxAGEgaVrDQQtQGXO+EGGJi4eTtEUB+oVP0
 5BI6SNquBfmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="412569597"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 01 Feb 2021 10:33:53 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 01 Feb 2021 20:33:52 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Feb 2021 20:33:31 +0200
Message-Id: <20210201183343.15292-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210201183343.15292-1-ville.syrjala@linux.intel.com>
References: <20210201183343.15292-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/15] drm/i915: Introduce .{enable,
 disable}_clock() encoder vfuncs
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBjdXJyZW50IGNvZGUgZGVhbGluZyB3aXRoIHRoZSBjbG9jayByb3V0aW5nIGZvciBEREkgZW5j
b2RlcnMKaXMgYSBtYWludGVuYW5jZSBuaWdodG1hcmUuIExldCdzIHN0YXJ0IGNsZWFuaW5nIGl0
IHVwIGJ5IGFsbG93aW5nCnRoZSBlbmNvZGVyIHRvIHByb3ZpZGUgdmZ1bmNzIGZvciBlbmFibGln
bi9kaXNhYmxpbmcgdGhlIGNsb2NrLgoKV2UgbGVhdmUgdGhlbSBpbml0aWFsbHkgdW5pbXBsZW1l
bnRlZCwgZmFsbGluZyBiYWNrIHRvIHRoZSBvbGQKaWYtZWxzZSBhcHByb2FjaC4KClNpZ25lZC1v
ZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyAgICAgIHwgMjkgKysr
KysrKysrKysrKysrLS0tLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBl
cy5oICAgIHwgIDYgKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAyOSBpbnNlcnRpb25zKCspLCA2IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCmluZGV4
IDIzZmJiOTAxM2UwOS4uZGE4YmI5YTJkZTBiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGRpLmMKQEAgLTM0NjQsNiArMzQ2NCwyMyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9k
ZGlfY2xrX2Rpc2FibGUoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpCiAJfQogfQogCitz
dGF0aWMgdm9pZCBpbnRlbF9kZGlfZW5hYmxlX2Nsb2NrKHN0cnVjdCBpbnRlbF9lbmNvZGVyICpl
bmNvZGVyLAorCQkJCSAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
KQoreworCWlmIChlbmNvZGVyLT5lbmFibGVfY2xvY2spCisJCWVuY29kZXItPmVuYWJsZV9jbG9j
ayhlbmNvZGVyLCBjcnRjX3N0YXRlKTsKKwllbHNlCisJCWludGVsX2RkaV9jbGtfc2VsZWN0KGVu
Y29kZXIsIGNydGNfc3RhdGUpOworfQorCitzdGF0aWMgdm9pZCBpbnRlbF9kZGlfZGlzYWJsZV9j
bG9jayhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKK3sKKwlpZiAoZW5jb2Rlci0+ZGlz
YWJsZV9jbG9jaykKKwkJZW5jb2Rlci0+ZGlzYWJsZV9jbG9jayhlbmNvZGVyKTsKKwllbHNlCisJ
CWludGVsX2RkaV9jbGtfZGlzYWJsZShlbmNvZGVyKTsKK30KKwogc3RhdGljIHZvaWQKIGljbF9w
cm9ncmFtX21nX2RwX21vZGUoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQsCiAJ
CSAgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKQEAgLTM3
MDgsNyArMzcyNSw3IEBAIHN0YXRpYyB2b2lkIHRnbF9kZGlfcHJlX2VuYWJsZV9kcChzdHJ1Y3Qg
aW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKIAkgKiBoc3dfY3J0Y19lbmFibGUoKS0+aW50ZWxf
ZW5hYmxlX3NoYXJlZF9kcGxsKCkuICBXZSBuZWVkIG9ubHkKIAkgKiBjb25maWd1cmUgdGhlIFBM
TCB0byBwb3J0IG1hcHBpbmcgaGVyZS4KIAkgKi8KLQlpbnRlbF9kZGlfY2xrX3NlbGVjdChlbmNv
ZGVyLCBjcnRjX3N0YXRlKTsKKwlpbnRlbF9kZGlfZW5hYmxlX2Nsb2NrKGVuY29kZXIsIGNydGNf
c3RhdGUpOwogCiAJLyogNS4gSWYgSU8gcG93ZXIgaXMgY29udHJvbGxlZCB0aHJvdWdoIFBXUl9X
RUxMX0NUTCwgRW5hYmxlIElPIFBvd2VyICovCiAJaWYgKCFpbnRlbF9waHlfaXNfdGMoZGV2X3By
aXYsIHBoeSkgfHwKQEAgLTM4MjksNyArMzg0Niw3IEBAIHN0YXRpYyB2b2lkIGhzd19kZGlfcHJl
X2VuYWJsZV9kcChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKIAogCWludGVsX3Bw
c19vbihpbnRlbF9kcCk7CiAKLQlpbnRlbF9kZGlfY2xrX3NlbGVjdChlbmNvZGVyLCBjcnRjX3N0
YXRlKTsKKwlpbnRlbF9kZGlfZW5hYmxlX2Nsb2NrKGVuY29kZXIsIGNydGNfc3RhdGUpOwogCiAJ
aWYgKCFpbnRlbF9waHlfaXNfdGMoZGV2X3ByaXYsIHBoeSkgfHwKIAkgICAgZGlnX3BvcnQtPnRj
X21vZGUgIT0gVENfUE9SVF9UQlRfQUxUKSB7CkBAIC0zOTA0LDcgKzM5MjEsNyBAQCBzdGF0aWMg
dm9pZCBpbnRlbF9kZGlfcHJlX2VuYWJsZV9oZG1pKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUg
KnN0YXRlLAogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZW5j
b2Rlci0+YmFzZS5kZXYpOwogCiAJaW50ZWxfZHBfZHVhbF9tb2RlX3NldF90bWRzX291dHB1dChp
bnRlbF9oZG1pLCB0cnVlKTsKLQlpbnRlbF9kZGlfY2xrX3NlbGVjdChlbmNvZGVyLCBjcnRjX3N0
YXRlKTsKKwlpbnRlbF9kZGlfZW5hYmxlX2Nsb2NrKGVuY29kZXIsIGNydGNfc3RhdGUpOwogCiAJ
ZHJtX1dBUk5fT04oJmRldl9wcml2LT5kcm0sIGRpZ19wb3J0LT5kZGlfaW9fd2FrZXJlZik7CiAJ
ZGlnX3BvcnQtPmRkaV9pb193YWtlcmVmID0gaW50ZWxfZGlzcGxheV9wb3dlcl9nZXQoZGV2X3By
aXYsCkBAIC00MDU2LDcgKzQwNzMsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfcG9zdF9kaXNh
YmxlX2RwKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAogCQkJCQlkaWdfcG9ydC0+
ZGRpX2lvX3Bvd2VyX2RvbWFpbiwKIAkJCQkJZmV0Y2hfYW5kX3plcm8oJmRpZ19wb3J0LT5kZGlf
aW9fd2FrZXJlZikpOwogCi0JaW50ZWxfZGRpX2Nsa19kaXNhYmxlKGVuY29kZXIpOworCWludGVs
X2RkaV9kaXNhYmxlX2Nsb2NrKGVuY29kZXIpOwogfQogCiBzdGF0aWMgdm9pZCBpbnRlbF9kZGlf
cG9zdF9kaXNhYmxlX2hkbWkoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCkBAIC00
MDc5LDcgKzQwOTYsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfcG9zdF9kaXNhYmxlX2hkbWko
c3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCiAJCQkJZGlnX3BvcnQtPmRkaV9pb19w
b3dlcl9kb21haW4sCiAJCQkJZmV0Y2hfYW5kX3plcm8oJmRpZ19wb3J0LT5kZGlfaW9fd2FrZXJl
ZikpOwogCi0JaW50ZWxfZGRpX2Nsa19kaXNhYmxlKGVuY29kZXIpOworCWludGVsX2RkaV9kaXNh
YmxlX2Nsb2NrKGVuY29kZXIpOwogCiAJaW50ZWxfZHBfZHVhbF9tb2RlX3NldF90bWRzX291dHB1
dChpbnRlbF9oZG1pLCBmYWxzZSk7CiB9CkBAIC00MTc5LDcgKzQxOTYsNyBAQCB2b2lkIGludGVs
X2RkaV9mZGlfcG9zdF9kaXNhYmxlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAog
CWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBGRElfUlhfQ1RMKFBJUEVfQSksIHZhbCk7CiAKIAlp
bnRlbF9kaXNhYmxlX2RkaV9idWYoZW5jb2Rlciwgb2xkX2NydGNfc3RhdGUpOwotCWludGVsX2Rk
aV9jbGtfZGlzYWJsZShlbmNvZGVyKTsKKwlpbnRlbF9kZGlfZGlzYWJsZV9jbG9jayhlbmNvZGVy
KTsKIAogCXZhbCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIEZESV9SWF9NSVNDKFBJUEVfQSkp
OwogCXZhbCAmPSB+KEZESV9SWF9QV1JETl9MQU5FMV9NQVNLIHwgRkRJX1JYX1BXUkROX0xBTkUw
X01BU0spOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfdHlwZXMuaAppbmRleCAzOTM5Nzc0OGI0YjAuLjA4NTE2MjYxNjExMiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKQEAgLTIx
OSw2ICsyMTksMTIgQEAgc3RydWN0IGludGVsX2VuY29kZXIgewogCSAqIGVuY29kZXJzIGhhdmUg
YmVlbiBkaXNhYmxlZCBhbmQgc3VzcGVuZGVkLgogCSAqLwogCXZvaWQgKCpzaHV0ZG93bikoc3Ry
dWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpOworCS8qCisJICogRW5hYmxlL2Rpc2FibGUgdGhl
IGNsb2NrIHRvIHRoZSBwb3J0LgorCSAqLworCXZvaWQgKCplbmFibGVfY2xvY2spKHN0cnVjdCBp
bnRlbF9lbmNvZGVyICplbmNvZGVyLAorCQkJICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqY3J0Y19zdGF0ZSk7CisJdm9pZCAoKmRpc2FibGVfY2xvY2spKHN0cnVjdCBpbnRlbF9l
bmNvZGVyICplbmNvZGVyKTsKIAllbnVtIGhwZF9waW4gaHBkX3BpbjsKIAllbnVtIGludGVsX2Rp
c3BsYXlfcG93ZXJfZG9tYWluIHBvd2VyX2RvbWFpbjsKIAkvKiBmb3IgY29tbXVuaWNhdGlvbiB3
aXRoIGF1ZGlvIGNvbXBvbmVudDsgcHJvdGVjdGVkIGJ5IGF2X211dGV4ICovCi0tIAoyLjI2LjIK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
