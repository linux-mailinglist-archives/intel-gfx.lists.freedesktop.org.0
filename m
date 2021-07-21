Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D4E3D19BB
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 00:31:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20AFB6EB6A;
	Wed, 21 Jul 2021 22:30:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42D776EB16
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 22:30:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="211527996"
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="211527996"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 15:30:48 -0700
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="658464169"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 15:30:47 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Jul 2021 15:30:26 -0700
Message-Id: <20210721223043.834562-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210721223043.834562-1-matthew.d.roper@intel.com>
References: <20210721223043.834562-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 01/18] drm/i915: Add XE_HP initial definitions
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

RnJvbTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+CgpPdXIgX0ZF
QVRVUkVTIG1hY3JvIHdlbnQgYmFjayB0byBHRU43LCBleHRlbmRpbmcgZWFjaCBvdGhlciwgbWFr
aW5nIGl0CmRpZmZpY3VsdCB0byBncmFzcCB3aGF0IHdhcyByZWFsbHkgZW5hYmxlZC9kaXNhYmxl
ZC4gVGFrZSB0aGUKb3Bwb3J0dW5pdHkgb2YgdGhlIEdFTiAtPiBYRV9IUCBuYW1lIGJyZWFrIGFu
ZCBhbHNvIGJyZWFrIHdpdGggdGhlCmZlYXR1cmUgaW5oZXJpdGFuY2UuCgpGb3IgWEVfSFAgdGhp
cyBiYXNpY2FsbHkgZ29lcyBmcm9tIEdFTjEyIGJhY2sgdG8gR0VONyBjb2FsZXNjaW5nIHRoZQpm
ZWF0dXJlcyBtYWtpbmcgc3VyZSB0aGUgb3ZlcnJpZGVzIHJlbWFpbiwgcmVtb3ZlIGFsbCB0aGUK
ZGlzcGxheS1zcGVjaWZpYyBmZWF0dXJlcyBhbmQgc29ydCBpdC4KClRoZW4gYWxzbyByZW1vdmUg
dGhlIGRlZmluaXRpb25zIHRoYXQgd291bGQgYmUgb3ZlcnJpZGRlbiBieQpER0ZYX0ZFQVRVUkVT
IGFuZCB0aG9zZSB0aGF0IHdlcmUgMCAoc2luY2UgdGhhdCBpcyB0aGUgZGVmYXVsdCkuCkV4Y2Vw
dGlvbiBoZXJlIGlzIGhhc19tYXN0ZXJfdW5pdF9pcnE6IGFsdGhvdWdoIGl0IGlzIGEgZmVhdHVy
ZSB0aGF0CnN0YXJ0ZWQgd2l0aCBERzEgYW5kIGlzIHRydWUgZm9yIGFsbCBER0ZYIHBsYXRmb3Jt
cywgaXQncyBhbHNvIHRydWUgZm9yClhFX0hQIGluIGdlbmVyYWwuCgpTaWduZWQtb2ZmLWJ5OiBM
dWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTog
TWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEpvc8Op
IFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcGNpLmMgfCAyNCArKysrKysrKysrKysrKysrKysrKysrKysKIDEgZmls
ZSBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9wY2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKaW5kZXgg
Njc2OTZkNzUyMjcxLi5iZTVlZTVlMGUzMjQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcGNpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYwpAQCAt
OTk1LDYgKzk5NSwzMCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2RldmljZV9pbmZvIGFk
bF9wX2luZm8gPSB7CiB9OwogCiAjdW5kZWYgR0VOCisKKyNkZWZpbmUgWEVfSFBfUEFHRV9TSVpF
UyBcCisJLnBhZ2Vfc2l6ZXMgPSBJOTE1X0dUVF9QQUdFX1NJWkVfNEsgfCBcCisJCSAgICAgIEk5
MTVfR1RUX1BBR0VfU0laRV82NEsgfCBcCisJCSAgICAgIEk5MTVfR1RUX1BBR0VfU0laRV8yTQor
CisjZGVmaW5lIFhFX0hQX0ZFQVRVUkVTIFwKKwkuZ3JhcGhpY3NfdmVyID0gMTIsIFwKKwkuZ3Jh
cGhpY3NfcmVsID0gNTAsIFwKKwlYRV9IUF9QQUdFX1NJWkVTLCBcCisJLmRtYV9tYXNrX3NpemUg
PSA0NiwgXAorCS5oYXNfNjRiaXRfcmVsb2MgPSAxLCBcCisJLmhhc19nbG9iYWxfbW9jcyA9IDEs
IFwKKwkuaGFzX2d0X3VjID0gMSwgXAorCS5oYXNfbGxjID0gMSwgXAorCS5oYXNfbG9naWNhbF9y
aW5nX2NvbnRleHRzID0gMSwgXAorCS5oYXNfbG9naWNhbF9yaW5nX2Vsc3EgPSAxLCBcCisJLmhh
c19yYzYgPSAxLCBcCisJLmhhc19yZXNldF9lbmdpbmUgPSAxLCBcCisJLmhhc19ycHMgPSAxLCBc
CisJLmhhc19ydW50aW1lX3BtID0gMSwgXAorCS5wcGd0dF9zaXplID0gNDgsIFwKKwkucHBndHRf
dHlwZSA9IElOVEVMX1BQR1RUX0ZVTEwKKwogI3VuZGVmIFBMQVRGT1JNCiAKIC8qCi0tIAoyLjI1
LjQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
