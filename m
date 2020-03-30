Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 011C51985E6
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 22:59:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66C0A6E4A1;
	Mon, 30 Mar 2020 20:59:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 148CD6E45E
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 20:59:19 +0000 (UTC)
IronPort-SDR: fl+J1pxXQpdJsdlgTZKr1T7CMMw15eOfrzaCuujbrOqsAzWHqMooD3AfRFAbBpA5zpvVk1gpjX
 L/zxmz/QJq0A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2020 13:59:18 -0700
IronPort-SDR: RAdeQpWcYg0Y4IbdPemtQKVa2nL2tfhbrSIaFLXiaVEIS908uYK2qih4s082GwlOjE7kDILYOr
 C33HKFjWSfrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,325,1580803200"; d="scan'208";a="241724821"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.15.8])
 by fmsmga008.fm.intel.com with ESMTP; 30 Mar 2020 13:59:18 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Mar 2020 14:00:42 -0700
Message-Id: <20200330210044.130510-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/3] drm/i915/dp: Return the right vswing
 tables
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

RERJIHBvcnRzIGhhdmUgaXRzIGVuY29kZXJzIGluaXRpYWxpemVkIHdpdGggSU5URUxfT1VUUFVU
X0RESSB0eXBlIGFuZApsYXRlciBlRFAgcG9ydHMgdGhhdCBoYXZlIHRoZSB0eXBlIGNoYW5nZWQg
dG8gSU5URUxfT1VUUFVUX0VEUC4KQnV0IGZvciBhbGwgb3RoZXIgRERJIHBvcnRzIGl0IGNhbiBk
cml2ZSBIRE1JIG9yIERQIGRlcGVuZGluZyBvbiB3aGF0CnVzZXIgY29ubmVjdHMgdG8gdGhlIHBv
cnRzLgoKZWhsX2dldF9jb21ib19idWZfdHJhbnMoKSBhbmQgdGdsX2dldF9jb21ib19idWZfdHJh
bnMoKSB3YXMgY2hlY2tpbmcKZm9yIElOVEVMX09VVFBVVF9EUCB0aGF0IHdhcyBuZXZlciB0cnVl
LCBjYXVzaW5nIHdyb25nIHZzd2luZyB0YWJsZXMKYmVpbmcgdXNlZC4KClNvIGhlcmUgcmVwbGFj
aW5nIHRoZSBJTlRFTF9PVVRQVVRfRFAgY2hlY2tzIGJ5IHRoZSB2YWxpZCBvdXRwdXQgdHlwZXMK
dGhhdCB0aGlzIGZ1bmN0aW9ucyByZWNlaXZlcyBhcyBwYXJhbWV0ZXJzLiBIRE1JIGNhc2VzIHdp
bGwgYmUKY29ycmVjdGx5IGhhbmRsZWQgYXMgaXQgZG8gbm90IHVzZSBlbmNvZGVyLT50eXBlLCBp
bnN0ZWFkIGl0IGNhbGxzIHRoZQpmdW5jdGlvbnMgd2l0aCBJTlRFTF9PVVRQVVRfSERNSSBhcyB0
eXBlIHBhcmFtZXRlciBhbmQgSERNSSBkb24ndCBoYXZlCnJldHJhaW5pbmcuCgp2MjoKY2hhbmdl
ZCBJTlRFTF9PVVRQVVRfRERJIHRvIElOVEVMX09VVFBVVF9FRFAgYW5kIElOVEVMX09VVFBVVF9I
RE1JCgpGaXhlczogYmQzY2Y2ZjdjZTIwICgiZHJtL2k5MTUvZHAvdGdsKzogVXBkYXRlIGNvbWJv
IHBoeSB2c3dpbmcgdGFibGVzIikKQ2M6IENsaW50b24gQSBUYXlsb3IgPGNsaW50b24uYS50YXls
b3JAaW50ZWwuY29tPgpDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4K
Q2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCA1ICsrKy0tCiAx
IGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCmluZGV4IDkxNmE4MDJhZjc4OC4uMDUzYjIx
YzExYjBjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rk
aS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKQEAgLTk0
Nyw3ICs5NDcsOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGNubF9kZGlfYnVmX3RyYW5zICoKIGVo
bF9nZXRfY29tYm9fYnVmX3RyYW5zKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwg
aW50IHR5cGUsIGludCByYXRlLAogCQkJaW50ICpuX2VudHJpZXMpCiB7Ci0JaWYgKHR5cGUgPT0g
SU5URUxfT1VUUFVUX0RQICYmIHJhdGUgPiAyNzAwMDApIHsKKwlpZiAodHlwZSAhPSBJTlRFTF9P
VVRQVVRfSERNSSAmJiB0eXBlICE9IElOVEVMX09VVFBVVF9FRFAgJiYKKwkgICAgcmF0ZSA+IDI3
MDAwMCkgewogCQkqbl9lbnRyaWVzID0gQVJSQVlfU0laRShlaGxfY29tYm9fcGh5X2RkaV90cmFu
c2xhdGlvbnNfaGJyMl9oYnIzKTsKIAkJcmV0dXJuIGVobF9jb21ib19waHlfZGRpX3RyYW5zbGF0
aW9uc19oYnIyX2hicjM7CiAJfQpAQCAtOTU5LDcgKzk2MCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgY25sX2RkaV9idWZfdHJhbnMgKgogdGdsX2dldF9jb21ib19idWZfdHJhbnMoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBpbnQgdHlwZSwgaW50IHJhdGUsCiAJCQlpbnQgKm5f
ZW50cmllcykKIHsKLQlpZiAodHlwZSAhPSBJTlRFTF9PVVRQVVRfRFApIHsKKwlpZiAodHlwZSA9
PSBJTlRFTF9PVVRQVVRfSERNSSB8fCB0eXBlID09IElOVEVMX09VVFBVVF9FRFApIHsKIAkJcmV0
dXJuIGljbF9nZXRfY29tYm9fYnVmX3RyYW5zKGRldl9wcml2LCB0eXBlLCByYXRlLCBuX2VudHJp
ZXMpOwogCX0gZWxzZSBpZiAocmF0ZSA+IDI3MDAwMCkgewogCQkqbl9lbnRyaWVzID0gQVJSQVlf
U0laRSh0Z2xfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfZHBfaGJyMik7Ci0tIAoyLjI2LjAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
