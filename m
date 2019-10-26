Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3268EE5766
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Oct 2019 02:14:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0697B6EBDA;
	Sat, 26 Oct 2019 00:14:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D46226EBD6
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Oct 2019 00:14:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2019 17:14:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,230,1569308400"; d="scan'208";a="400270398"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.135])
 by fmsmga006.fm.intel.com with ESMTP; 25 Oct 2019 17:14:08 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Oct 2019 17:13:21 -0700
Message-Id: <20191026001323.216052-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191026001323.216052-1-jose.souza@intel.com>
References: <20191026001323.216052-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/5] drm/i915/display: Check if FBC is fused off
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

Q2hlY2sgaWYgRkJDIGlzIGZ1c2VkIG9mZiBhbmQgaGFuZGxlIGl0LgoKQ2M6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBNYXJ0aW4gUGVyZXMgPG1h
cnRpbi5wZXJlc0BsaW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBSYW1hbGluZ2FtIEMgPHJh
bWFsaW5nYW0uY0BpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291
emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmggICAgICAgICAgfCAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9p
bmZvLmMgfCAzICsrKwogMiBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaAppbmRleCAxMzE3YzBkZjc2YjcuLjRkYjYyNjM1MmI3YyAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oCkBAIC03NjYzLDYgKzc2NjMsNyBAQCBlbnVtIHsKICNkZWZpbmUgICBD
TkxfRERJX0NMT0NLX1JFR19BQ0NFU1NfT04JKDEgPDwgNykKIAogI2RlZmluZSBTS0xfREZTTQkJ
CV9NTUlPKDB4NTEwMDApCisjZGVmaW5lICAgU0tMX0RGU01fRElTUExBWV9QTV9ESVNBQkxFCSgx
IDw8IDI3KQogI2RlZmluZSAgIFNLTF9ERlNNX0RJU1BMQVlfSERDUF9ESVNBQkxFCSgxIDw8IDI1
KQogI2RlZmluZSAgIFNLTF9ERlNNX0NEQ0xLX0xJTUlUX01BU0sJKDMgPDwgMjMpCiAjZGVmaW5l
ICAgU0tMX0RGU01fQ0RDTEtfTElNSVRfNjc1CSgwIDw8IDIzKQpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2RldmljZV9pbmZvLmMKaW5kZXggZTdkZDYwOTJjMTA1Li5hM2U5MDcxNGNmYTIgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYwpAQCAtOTg0LDYgKzk4NCw5
IEBAIHZvaWQgaW50ZWxfZGV2aWNlX2luZm9fcnVudGltZV9pbml0KHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdikKIAogCQlpZiAoZGZzbSAmIFNLTF9ERlNNX0RJU1BMQVlfSERDUF9E
SVNBQkxFKQogCQkJaW5mby0+ZGlzcGxheS5oYXNfaGRjcCA9IDA7CisKKwkJaWYgKGRmc20gJiBT
S0xfREZTTV9ESVNQTEFZX1BNX0RJU0FCTEUpCisJCQlpbmZvLT5kaXNwbGF5Lmhhc19mYmMgPSAw
OwogCX0KIAogCS8qIEluaXRpYWxpemUgc2xpY2Uvc3Vic2xpY2UvRVUgaW5mbyAqLwotLSAKMi4y
My4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
