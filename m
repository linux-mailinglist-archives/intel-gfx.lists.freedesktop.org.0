Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A65BD02B3
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2019 23:16:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C33E6E110;
	Tue,  8 Oct 2019 21:16:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F7D86E110
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2019 21:16:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Oct 2019 14:16:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,272,1566889200"; d="scan'208";a="205542791"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.135])
 by orsmga002.jf.intel.com with ESMTP; 08 Oct 2019 14:16:52 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Oct 2019 14:17:16 -0700
Message-Id: <20191008211716.8391-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Catch GTT fault errors for gen11+
 planes
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

R2VuMTErIGhhcyBtb3JlIGhhcmR3YXJlIHBsYW5lcyB0aGFuIGdlbjkgc28gd2UgbmVlZCB0byB0
ZXN0IGFkZGl0aW9uYWwKcGlwZSBpbnRlcnJ1cHQgcmVnaXN0ZXIgYml0cyB0byByZWNvZ25pemUg
YW55IEdUVCBmYXVsdHMgdGhhdCBoYXBwZW4gb24KdGhlc2UgZXh0cmEgcGxhbmVzLgoKQnNwZWM6
IDUwMzM1ClNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyB8IDQgKysrLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCB8IDggKysrKysrKysKIDIgZmlsZXMgY2hhbmdlZCwg
MTEgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfaXJxLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCmlu
ZGV4IGYyMzcxYjYwODNjNi4uNTQ5OTQ1MGMxNTI0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2lycS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMK
QEAgLTI1ODksNyArMjU4OSw5IEBAIHN0YXRpYyB1MzIgZ2VuOF9kZV9wb3J0X2F1eF9tYXNrKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAogc3RhdGljIHUzMiBnZW44X2RlX3Bp
cGVfZmF1bHRfbWFzayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7Ci0JaWYg
KElOVEVMX0dFTihkZXZfcHJpdikgPj0gOSkKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAx
MSkKKwkJcmV0dXJuIEdFTjExX0RFX1BJUEVfSVJRX0ZBVUxUX0VSUk9SUzsKKwllbHNlIGlmIChJ
TlRFTF9HRU4oZGV2X3ByaXYpID49IDkpCiAJCXJldHVybiBHRU45X0RFX1BJUEVfSVJRX0ZBVUxU
X0VSUk9SUzsKIAllbHNlCiAJCXJldHVybiBHRU44X0RFX1BJUEVfSVJRX0ZBVUxUX0VSUk9SUzsK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IDZkNjdiZDIzOGNmZS4uMjQzMTFmZWU3MDA5IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTczNzMsNiArNzM3Myw5IEBAIGVudW0gewogI2Rl
ZmluZSAgR0VOOF9QSVBFX1ZTWU5DCQkoMSA8PCAxKQogI2RlZmluZSAgR0VOOF9QSVBFX1ZCTEFO
SwkJKDEgPDwgMCkKICNkZWZpbmUgIEdFTjlfUElQRV9DVVJTT1JfRkFVTFQJCSgxIDw8IDExKQor
I2RlZmluZSAgR0VOMTFfUElQRV9QTEFORTdfRkFVTFQJKDEgPDwgMjIpCisjZGVmaW5lICBHRU4x
MV9QSVBFX1BMQU5FNl9GQVVMVAkoMSA8PCAyMSkKKyNkZWZpbmUgIEdFTjExX1BJUEVfUExBTkU1
X0ZBVUxUCSgxIDw8IDIwKQogI2RlZmluZSAgR0VOOV9QSVBFX1BMQU5FNF9GQVVMVAkJKDEgPDwg
MTApCiAjZGVmaW5lICBHRU45X1BJUEVfUExBTkUzX0ZBVUxUCQkoMSA8PCA5KQogI2RlZmluZSAg
R0VOOV9QSVBFX1BMQU5FMl9GQVVMVAkJKDEgPDwgOCkKQEAgLTczOTIsNiArNzM5NSwxMSBAQCBl
bnVtIHsKIAkgR0VOOV9QSVBFX1BMQU5FM19GQVVMVCB8IFwKIAkgR0VOOV9QSVBFX1BMQU5FMl9G
QVVMVCB8IFwKIAkgR0VOOV9QSVBFX1BMQU5FMV9GQVVMVCkKKyNkZWZpbmUgR0VOMTFfREVfUElQ
RV9JUlFfRkFVTFRfRVJST1JTIFwKKwkoR0VOOV9ERV9QSVBFX0lSUV9GQVVMVF9FUlJPUlMgfCBc
CisJIEdFTjExX1BJUEVfUExBTkU3X0ZBVUxUIHwgXAorCSBHRU4xMV9QSVBFX1BMQU5FNl9GQVVM
VCB8IFwKKwkgR0VOMTFfUElQRV9QTEFORTVfRkFVTFQpCiAKICNkZWZpbmUgR0VOOF9ERV9QT1JU
X0lTUiBfTU1JTygweDQ0NDQwKQogI2RlZmluZSBHRU44X0RFX1BPUlRfSU1SIF9NTUlPKDB4NDQ0
NDQpCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
