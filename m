Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6DACFEA8
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2019 18:14:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E64FC6E852;
	Tue,  8 Oct 2019 16:14:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 856136E851
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2019 16:14:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Oct 2019 09:14:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,270,1566889200"; d="scan'208";a="192614561"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 08 Oct 2019 09:14:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Oct 2019 19:14:50 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Oct 2019 19:14:36 +0300
Message-Id: <20191008161441.12721-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191008161441.12721-1-ville.syrjala@linux.intel.com>
References: <20191008161441.12721-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/9] drm/i915: Expose C8 on VLV/CHV sprite planes
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClZM
Vi9DSFYgc3ByaXRlIHBsYW5lcyBhbHNvIHN1cHBvcnQgdGhlIEM4IGZvcm1hdC4gTGV0J3MgZXhw
b3NlIHRoYXQuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
c3ByaXRlLmMgfCA2ICsrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAg
ICAgICAgICB8IDEgKwogMiBmaWxlcyBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYwppbmRleCBmYjM2ZGE1ODM5MGEu
LjRjZDA5ODJkYzhhMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9zcHJpdGUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nw
cml0ZS5jCkBAIC04NDYsNiArODQ2LDkgQEAgc3RhdGljIHUzMiB2bHZfc3ByaXRlX2N0bChjb25z
dCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAljYXNlIERSTV9GT1JNQVRf
VllVWToKIAkJc3ByY3RsIHw9IFNQX0ZPUk1BVF9ZVVY0MjIgfCBTUF9ZVVZfT1JERVJfVllVWTsK
IAkJYnJlYWs7CisJY2FzZSBEUk1fRk9STUFUX0M4OgorCQlzcHJjdGwgfD0gU1BfRk9STUFUXzhC
UFA7CisJCWJyZWFrOwogCWNhc2UgRFJNX0ZPUk1BVF9SR0I1NjU6CiAJCXNwcmN0bCB8PSBTUF9G
T1JNQVRfQkdSNTY1OwogCQlicmVhazsKQEAgLTIwMTAsNiArMjAxMyw3IEBAIHN0YXRpYyBjb25z
dCB1MzIgc25iX3BsYW5lX2Zvcm1hdHNbXSA9IHsKIH07CiAKIHN0YXRpYyBjb25zdCB1MzIgdmx2
X3BsYW5lX2Zvcm1hdHNbXSA9IHsKKwlEUk1fRk9STUFUX0M4LAogCURSTV9GT1JNQVRfUkdCNTY1
LAogCURSTV9GT1JNQVRfQUJHUjg4ODgsCiAJRFJNX0ZPUk1BVF9BUkdCODg4OCwKQEAgLTIwMjQs
NiArMjAyOCw3IEBAIHN0YXRpYyBjb25zdCB1MzIgdmx2X3BsYW5lX2Zvcm1hdHNbXSA9IHsKIH07
CiAKIHN0YXRpYyBjb25zdCB1MzIgY2h2X3BpcGVfYl9zcHJpdGVfZm9ybWF0c1tdID0geworCURS
TV9GT1JNQVRfQzgsCiAJRFJNX0ZPUk1BVF9SR0I1NjUsCiAJRFJNX0ZPUk1BVF9BQkdSODg4OCwK
IAlEUk1fRk9STUFUX0FSR0I4ODg4LApAQCAtMjI1Niw2ICsyMjYxLDcgQEAgc3RhdGljIGJvb2wg
dmx2X3Nwcml0ZV9mb3JtYXRfbW9kX3N1cHBvcnRlZChzdHJ1Y3QgZHJtX3BsYW5lICpfcGxhbmUs
CiAJfQogCiAJc3dpdGNoIChmb3JtYXQpIHsKKwljYXNlIERSTV9GT1JNQVRfQzg6CiAJY2FzZSBE
Uk1fRk9STUFUX1JHQjU2NToKIAljYXNlIERSTV9GT1JNQVRfQUJHUjg4ODg6CiAJY2FzZSBEUk1f
Rk9STUFUX0FSR0I4ODg4OgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggNzRiYjVhNmNiZTRm
Li41Nzc0Njg5MjhmZmEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtNjU0Niw2ICs2NTQ2
LDcgQEAgZW51bSB7CiAjZGVmaW5lICAgU1BfR0FNTUFfRU5BQkxFCQkoMSA8PCAzMCkKICNkZWZp
bmUgICBTUF9QSVhGT1JNQVRfTUFTSwkJKDB4ZiA8PCAyNikKICNkZWZpbmUgICBTUF9GT1JNQVRf
WVVWNDIyCQkoMHgwIDw8IDI2KQorI2RlZmluZSAgIFNQX0ZPUk1BVF84QlBQCQkoMHgyIDw8IDI2
KQogI2RlZmluZSAgIFNQX0ZPUk1BVF9CR1I1NjUJCSgweDUgPDwgMjYpCiAjZGVmaW5lICAgU1Bf
Rk9STUFUX0JHUlg4ODg4CQkoMHg2IDw8IDI2KQogI2RlZmluZSAgIFNQX0ZPUk1BVF9CR1JBODg4
OAkJKDB4NyA8PCAyNikKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
