Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3BEC3377D4
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 16:34:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C51E6EDF6;
	Thu, 11 Mar 2021 15:34:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F7196EDF3
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 15:34:31 +0000 (UTC)
IronPort-SDR: n924tfQgJjFy4pMDt//VaL23T7LK8uXF9v7c6vix7DLfWCfwrQ28nGn0GrCOw531+EhWPSnMLX
 A7uMpj6ujSqg==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="175797243"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="175797243"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 07:34:30 -0800
IronPort-SDR: d63VAbKLEB7DjmEi1aCQKOBim4b8rGlZX3Z0Np+OKLmg4XNKr3x9YVPlRSJej9rP2onhGOkfiF
 eZqO8IlHUjsQ==
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="589251667"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 07:34:30 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 07:34:03 -0800
Message-Id: <20210311153415.3024607-12-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210311153415.3024607-1-matthew.d.roper@intel.com>
References: <20210311153415.3024607-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 11/23] drm/i915/xelpd: Support 128k plane
 stride
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 =?UTF-8?q?Juha-Pekka=20Heikkil=C3=A4?= <juha-pekka.heikkila@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogSnVoYS1QZWtrYSBIZWlra2lsw6QgPGp1aGEtcGVra2EuaGVpa2tpbGFAaW50ZWwuY29t
PgoKWEVfTFBEIHN1cHBvcnRzIHBsYW5lIHN0cmlkZXMgdXAgdG8gMTI4S0IuCgp2MjoKIC0gRHJv
cCBhIGR1cGxpY2F0ZWQgY29tbWVudAogLSBBZGQgbWlzc2luZyBob3Jpem9udGFsIHBpeGVscyBm
b3IgY3BwIT04IGNhc2UgKEx1Y2FzKQogLSBUYWtlIGludG8gYWNjb3VudCBsYXJnZXIgcG9zc2li
bGUgb2Zmc2V0cyBmb3Igd2FybmluZ3MKCkNjOiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1
bGthcm5pQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSnVoYS1QZWtrYSBIZWlra2lsw6QgPGp1
aGEtcGVra2EuaGVpa2tpbGFAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxt
YXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogTHVjYXMgRGUgTWFyY2hpIDxs
dWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Ci0tLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvc2tsX3Vu
aXZlcnNhbF9wbGFuZS5jICAgIHwgNDYgKysrKysrKysrKysrKysrLS0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAgIHwgIDIgKwogMiBmaWxlcyBjaGFuZ2Vk
LCAzOSBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMKaW5kZXggMjI4MDY5NGYxOWM3
Li5jYzM2OTE3YjQ1OWMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
c2tsX3VuaXZlcnNhbF9wbGFuZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
c2tsX3VuaXZlcnNhbF9wbGFuZS5jCkBAIC00NTYsMTcgKzQ1NiwzNSBAQCBza2xfcGxhbmVfbWF4
X3N0cmlkZShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLAogCQkgICAgIHUzMiBwaXhlbF9mb3Jt
YXQsIHU2NCBtb2RpZmllciwKIAkJICAgICB1bnNpZ25lZCBpbnQgcm90YXRpb24pCiB7CisJc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KHBsYW5lLT5iYXNlLmRldik7CiAJ
Y29uc3Qgc3RydWN0IGRybV9mb3JtYXRfaW5mbyAqaW5mbyA9IGRybV9mb3JtYXRfaW5mbyhwaXhl
bF9mb3JtYXQpOwogCWludCBjcHAgPSBpbmZvLT5jcHBbMF07CisJaW50IG1heF9ob3Jpem9udGFs
X3BpeGVscyA9IDgxOTI7CisJaW50IG1heF9zdHJpZGVfYnl0ZXM7CisKKwlpZiAoRElTUExBWV9W
RVIoaTkxNSkgPj0gMTMpIHsKKwkJLyoKKwkJICogVGhlIHN0cmlkZSBpbiBieXRlcyBtdXN0IG5v
dCBleGNlZWQgb2YgdGhlIHNpemUKKwkJICogb2YgMTI4SyBieXRlcy4gRm9yIHBpeGVsIGZvcm1h
dHMgb2YgNjRicHAgd2lsbCBhbGxvdworCQkgKiBmb3IgYSAxNksgcGl4ZWwgc3VyZmFjZS4KKwkJ
ICovCisJCW1heF9zdHJpZGVfYnl0ZXMgPSAxMzEwNzI7CisJCWlmIChjcHAgPT0gOCkKKwkJCW1h
eF9ob3Jpem9udGFsX3BpeGVscyA9IDE2Mzg0OworCQllbHNlCisJCQltYXhfaG9yaXpvbnRhbF9w
aXhlbHMgPSA2NTUzNjsKKwl9IGVsc2UgeworCQkvKgorCQkgKiAiVGhlIHN0cmlkZSBpbiBieXRl
cyBtdXN0IG5vdCBleGNlZWQgdGhlCisJCSAqIG9mIHRoZSBzaXplIG9mIDhLIHBpeGVscyBhbmQg
MzJLIGJ5dGVzLiIKKwkJICovCisJCW1heF9zdHJpZGVfYnl0ZXMgPSAzMjc2ODsKKwl9CiAKLQkv
KgotCSAqICJUaGUgc3RyaWRlIGluIGJ5dGVzIG11c3Qgbm90IGV4Y2VlZCB0aGUKLQkgKiBvZiB0
aGUgc2l6ZSBvZiA4SyBwaXhlbHMgYW5kIDMySyBieXRlcy4iCi0JICovCiAJaWYgKGRybV9yb3Rh
dGlvbl85MF9vcl8yNzAocm90YXRpb24pKQotCQlyZXR1cm4gbWluKDgxOTIsIDMyNzY4IC8gY3Bw
KTsKKwkJcmV0dXJuIG1pbihtYXhfaG9yaXpvbnRhbF9waXhlbHMsIG1heF9zdHJpZGVfYnl0ZXMg
LyBjcHApOwogCWVsc2UKLQkJcmV0dXJuIG1pbig4MTkyICogY3BwLCAzMjc2OCk7CisJCXJldHVy
biBtaW4obWF4X2hvcml6b250YWxfcGl4ZWxzICogY3BwLCBtYXhfc3RyaWRlX2J5dGVzKTsKIH0K
IAogCkBAIC0xNDUwLDcgKzE0NjgsMTAgQEAgc3RhdGljIGludCBza2xfY2hlY2tfbWFpbl9zdXJm
YWNlKHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpCiAJCX0KIAl9CiAKLQlk
cm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwgeCA+IDgxOTEgfHwgeSA+IDgxOTEpOworCWlmIChE
SVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTMpCisJCWRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJt
LCB4ID4gNjU1MzUgfHwgeSA+IDY1NTM1KTsKKwllbHNlCisJCWRybV9XQVJOX09OKCZkZXZfcHJp
di0+ZHJtLCB4ID4gODE5MSB8fCB5ID4gODE5MSk7CiAKIAlwbGFuZV9zdGF0ZS0+Y29sb3JfcGxh
bmVbMF0ub2Zmc2V0ID0gb2Zmc2V0OwogCXBsYW5lX3N0YXRlLT5jb2xvcl9wbGFuZVswXS54ID0g
eDsKQEAgLTE1MjQsNyArMTU0NSwxMCBAQCBzdGF0aWMgaW50IHNrbF9jaGVja19udjEyX2F1eF9z
dXJmYWNlKHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpCiAJCX0KIAl9CiAK
LQlkcm1fV0FSTl9PTigmaTkxNS0+ZHJtLCB4ID4gODE5MSB8fCB5ID4gODE5MSk7CisJaWYgKERJ
U1BMQVlfVkVSKGk5MTUpID49IDEzKQorCQlkcm1fV0FSTl9PTigmaTkxNS0+ZHJtLCB4ID4gNjU1
MzUgfHwgeSA+IDY1NTM1KTsKKwllbHNlCisJCWRybV9XQVJOX09OKCZpOTE1LT5kcm0sIHggPiA4
MTkxIHx8IHkgPiA4MTkxKTsKIAogCXBsYW5lX3N0YXRlLT5jb2xvcl9wbGFuZVt1dl9wbGFuZV0u
b2Zmc2V0ID0gb2Zmc2V0OwogCXBsYW5lX3N0YXRlLT5jb2xvcl9wbGFuZVt1dl9wbGFuZV0ueCA9
IHg7CkBAIC0yMjQ4LDcgKzIyNzIsMTEgQEAgc2tsX2dldF9pbml0aWFsX3BsYW5lX2NvbmZpZyhz
dHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAogCXZhbCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYs
IFBMQU5FX1NUUklERShwaXBlLCBwbGFuZV9pZCkpOwogCXN0cmlkZV9tdWx0ID0gc2tsX3BsYW5l
X3N0cmlkZV9tdWx0KGZiLCAwLCBEUk1fTU9ERV9ST1RBVEVfMCk7Ci0JZmItPnBpdGNoZXNbMF0g
PSAodmFsICYgMHgzZmYpICogc3RyaWRlX211bHQ7CisKKwlpZiAoRElTUExBWV9WRVIoZGV2X3By
aXYpID49IDEzKQorCQlmYi0+cGl0Y2hlc1swXSA9ICh2YWwgJiBQTEFORV9TVFJJREVfTUFTS19Y
RUxQRCkgKiBzdHJpZGVfbXVsdDsKKwllbHNlCisJCWZiLT5waXRjaGVzWzBdID0gKHZhbCAmIFBM
QU5FX1NUUklERV9NQVNLKSAqIHN0cmlkZV9tdWx0OwogCiAJYWxpZ25lZF9oZWlnaHQgPSBpbnRl
bF9mYl9hbGlnbl9oZWlnaHQoZmIsIDAsIGZiLT5oZWlnaHQpOwogCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaAppbmRleCA5YmJlOTRjZGRkOTMuLjU5MjkxZDZhNzAyZSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oCkBAIC03MjAyLDYgKzcyMDIsOCBAQCBlbnVtIHsKIAlfUElQRShwaXBlLCBfUExBTkVf
U1RSSURFXzNfQSwgX1BMQU5FX1NUUklERV8zX0IpCiAjZGVmaW5lIFBMQU5FX1NUUklERShwaXBl
LCBwbGFuZSkJXAogCV9NTUlPX1BMQU5FKHBsYW5lLCBfUExBTkVfU1RSSURFXzEocGlwZSksIF9Q
TEFORV9TVFJJREVfMihwaXBlKSkKKyNkZWZpbmUgUExBTkVfU1RSSURFX01BU0sJCVJFR19HRU5N
QVNLKDEwLCAwKQorI2RlZmluZSBQTEFORV9TVFJJREVfTUFTS19YRUxQRAkJUkVHX0dFTk1BU0so
MTEsIDApCiAKICNkZWZpbmUgX1BMQU5FX1BPU18xX0IJCQkJMHg3MTE4YwogI2RlZmluZSBfUExB
TkVfUE9TXzJfQgkJCQkweDcxMjhjCi0tIAoyLjI1LjQKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
