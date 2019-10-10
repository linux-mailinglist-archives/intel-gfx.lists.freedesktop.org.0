Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC2DD316A
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2019 21:32:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FFEB6E8CF;
	Thu, 10 Oct 2019 19:32:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C53DB6E51D
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2019 19:32:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Oct 2019 12:32:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,281,1566889200"; d="scan'208";a="188072491"
Received: from mdsmith3-mobl1.amr.corp.intel.com (HELO
 josouza-MOBL.amr.corp.intel.com) ([10.255.229.24])
 by orsmga008.jf.intel.com with ESMTP; 10 Oct 2019 12:32:52 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Oct 2019 12:32:41 -0700
Message-Id: <20191010193241.101401-4-jose.souza@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191010193241.101401-1-jose.souza@intel.com>
References: <20191010193241.101401-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/display: Check if FBC and DMC are
 fused off
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

VGhvc2UgZmVhdHVyZXMgY291bGQgYmUgZnVzZWQgb2ZmIG9uIEdFTjkgbm9uLWxvdyBwb3dlciBh
bmQgbmV3ZXIKR0VOcy4KClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpv
c2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgg
ICAgICAgICAgfCAyICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5j
IHwgNiArKysrKysKIDIgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmgKaW5kZXggMzljNjVmMDUxNDY4Li4wODZhOGU2ZTg2ZjEgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaApAQCAtNzY0Myw3ICs3NjQzLDkgQEAgZW51bSB7CiAjZGVmaW5lICAgQ05M
X0RESV9DTE9DS19SRUdfQUNDRVNTX09OCSgxIDw8IDcpCiAKICNkZWZpbmUgU0tMX0RGU00JCQlf
TU1JTygweDUxMDAwKQorI2RlZmluZSBTS0xfREZTTV9ESVNQTEFZX1BNX0RJU0FCTEUJKDEgPDwg
MjcpCiAjZGVmaW5lIFNLTF9ERlNNX0RJU1BMQVlfSERDUF9ESVNBQkxFCSgxIDw8IDI1KQorI2Rl
ZmluZSBTS0xfREZTTV9ETUNfRElTQUJMRQkJKDEgPDwgMjMpCiAjZGVmaW5lIEJYVF9ERlNNX0NE
Q0xLX0xJTUlUX01BU0sJKDMgPDwgMjMpCiAjZGVmaW5lIEJYVF9ERlNNX0NEQ0xLX0xJTUlUXzY3
NQkoMCA8PCAyMykKICNkZWZpbmUgQlhUX0RGU01fQ0RDTEtfTElNSVRfNTQwCSgxIDw8IDIzKQpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMKaW5kZXggNWNmYTE5NzA5MGUy
Li5kZWVhYjM3OTBhNTEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rl
dmljZV9pbmZvLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8u
YwpAQCAtOTgzLDYgKzk4MywxMiBAQCB2b2lkIGludGVsX2RldmljZV9pbmZvX3J1bnRpbWVfaW5p
dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAKIAkJaWYgKGRmc20gJiBTS0xf
REZTTV9ESVNQTEFZX0hEQ1BfRElTQUJMRSkKIAkJCWluZm8tPmRpc3BsYXkuaGFzX2hkY3AgPSAw
OworCisJCWlmIChkZnNtICYgU0tMX0RGU01fRElTUExBWV9QTV9ESVNBQkxFKQorCQkJaW5mby0+
ZGlzcGxheS5oYXNfZmJjID0gMDsKKworCQlpZiAoIUlTX0dFTjlfQkMoZGV2X3ByaXYpICYmIGRm
c20gJiBTS0xfREZTTV9ETUNfRElTQUJMRSkKKwkJCWluZm8tPmRpc3BsYXkuaGFzX2NzciA9IDA7
CiAJfQogCiAJLyogSW5pdGlhbGl6ZSBzbGljZS9zdWJzbGljZS9FVSBpbmZvICovCi0tIAoyLjIz
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
