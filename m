Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38929EB588
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2019 17:57:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD7936F3A7;
	Thu, 31 Oct 2019 16:57:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FC7A6F392
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2019 16:57:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Oct 2019 09:57:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,252,1569308400"; d="scan'208";a="190691664"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 31 Oct 2019 09:57:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 31 Oct 2019 18:57:05 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 31 Oct 2019 18:56:49 +0200
Message-Id: <20191031165652.10868-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191031165652.10868-1-ville.syrjala@linux.intel.com>
References: <20191031165652.10868-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/7] drm/i915: Expose C8 on VLV/CHV sprite planes
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
bGludXguaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5j
IHwgNiArKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAg
fCAxICsKIDIgZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMKaW5kZXggMTUwYWQzNjdjZjllLi41YjMyOWNl
ZDYzZWIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3By
aXRlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYwpA
QCAtOTcyLDYgKzk3Miw5IEBAIHN0YXRpYyB1MzIgdmx2X3Nwcml0ZV9jdGwoY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJY2FzZSBEUk1fRk9STUFUX1ZZVVk6CiAJ
CXNwcmN0bCB8PSBTUF9GT1JNQVRfWVVWNDIyIHwgU1BfWVVWX09SREVSX1ZZVVk7CiAJCWJyZWFr
OworCWNhc2UgRFJNX0ZPUk1BVF9DODoKKwkJc3ByY3RsIHw9IFNQX0ZPUk1BVF84QlBQOworCQli
cmVhazsKIAljYXNlIERSTV9GT1JNQVRfUkdCNTY1OgogCQlzcHJjdGwgfD0gU1BfRk9STUFUX0JH
UjU2NTsKIAkJYnJlYWs7CkBAIC0yNDA0LDYgKzI0MDcsNyBAQCBzdGF0aWMgY29uc3QgdTMyIHNu
Yl9wbGFuZV9mb3JtYXRzW10gPSB7CiB9OwogCiBzdGF0aWMgY29uc3QgdTMyIHZsdl9wbGFuZV9m
b3JtYXRzW10gPSB7CisJRFJNX0ZPUk1BVF9DOCwKIAlEUk1fRk9STUFUX1JHQjU2NSwKIAlEUk1f
Rk9STUFUX0FCR1I4ODg4LAogCURSTV9GT1JNQVRfQVJHQjg4ODgsCkBAIC0yNDE4LDYgKzI0MjIs
NyBAQCBzdGF0aWMgY29uc3QgdTMyIHZsdl9wbGFuZV9mb3JtYXRzW10gPSB7CiB9OwogCiBzdGF0
aWMgY29uc3QgdTMyIGNodl9waXBlX2Jfc3ByaXRlX2Zvcm1hdHNbXSA9IHsKKwlEUk1fRk9STUFU
X0M4LAogCURSTV9GT1JNQVRfUkdCNTY1LAogCURSTV9GT1JNQVRfWFJHQjg4ODgsCiAJRFJNX0ZP
Uk1BVF9YQkdSODg4OCwKQEAgLTI2NTgsNiArMjY2Myw3IEBAIHN0YXRpYyBib29sIHZsdl9zcHJp
dGVfZm9ybWF0X21vZF9zdXBwb3J0ZWQoc3RydWN0IGRybV9wbGFuZSAqX3BsYW5lLAogCX0KIAog
CXN3aXRjaCAoZm9ybWF0KSB7CisJY2FzZSBEUk1fRk9STUFUX0M4OgogCWNhc2UgRFJNX0ZPUk1B
VF9SR0I1NjU6CiAJY2FzZSBEUk1fRk9STUFUX0FCR1I4ODg4OgogCWNhc2UgRFJNX0ZPUk1BVF9B
UkdCODg4ODoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IDc4ZGZkY2ZjNzI0YS4uYTYwN2Vh
NTIwODI5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTY2MjksNiArNjYyOSw3IEBAIGVu
dW0gewogI2RlZmluZSAgIFNQX0dBTU1BX0VOQUJMRQkJKDEgPDwgMzApCiAjZGVmaW5lICAgU1Bf
UElYRk9STUFUX01BU0sJCSgweGYgPDwgMjYpCiAjZGVmaW5lICAgU1BfRk9STUFUX1lVVjQyMgkJ
KDB4MCA8PCAyNikKKyNkZWZpbmUgICBTUF9GT1JNQVRfOEJQUAkJKDB4MiA8PCAyNikKICNkZWZp
bmUgICBTUF9GT1JNQVRfQkdSNTY1CQkoMHg1IDw8IDI2KQogI2RlZmluZSAgIFNQX0ZPUk1BVF9C
R1JYODg4OAkJKDB4NiA8PCAyNikKICNkZWZpbmUgICBTUF9GT1JNQVRfQkdSQTg4ODgJCSgweDcg
PDwgMjYpCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
