Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A632E1550
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 11:08:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40AA66E9F9;
	Wed, 23 Oct 2019 09:08:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70B626E9F9;
 Wed, 23 Oct 2019 09:08:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2019 02:08:21 -0700
X-IronPort-AV: E=Sophos;i="5.68,220,1569308400"; d="scan'208";a="188189825"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.17])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2019 02:08:19 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 23 Oct 2019 11:07:51 +0200
Message-Id: <20191023090752.23566-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/2] tests/gem_exec_reloc: Don't filter
 out addresses when on PPGTT
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q29tbWl0IGEzNTViMmQ2ZWI0MiAoImlndC9nZW1fZXhlY19yZWxvYzogRmlsdGVyIG91dCB1bmF2
YWlsYWJsZQphZGRyZXNzZXMgZm9yICFwcGd0dCIpIGludHJvZHVjZWQgZmlsdGVyaW5nIG9mIGFk
ZHJlc3NlcyBwb3NzaWJseQpvY2N1cGllZCBieSBvdGhlciB1c2VycyBvZiBzaGFyZWQgR1RULiAg
VW5mb3J0dW5hdGVseSwgdGhhdCBmaWx0ZXJpbmcKaXMgdW5jb25kaXRpb25hbCwgbm8gbWF0dGVy
IGlmIHJ1bm5pbmcgb24gb2xkIHNoYXJlZCBHVFQgb3Igbm90LiAgV2hlbgpydW5uaW5nIG9uIFBQ
R1RULCB0aGF0IG1heSByZXN1bHQgaW4gZXJyb3JzIG90aGVyIHRoYW4gdGhvc2UgaW50ZW5kZWQK
dG8gYmUgc2tpcHBlZCBvdmVyIGJlaW5nIHNpbGVudGx5IGlnbm9yZWQuCgpTa2lwIG92ZXIgdW5h
dmFpbGFibGUgYWRkcmVzc2VzIG9ubHkgd2hlbiBub3QgcnVubmluZyBvbiBQUEdUVC4KClNpZ25l
ZC1vZmYtYnk6IEphbnVzeiBLcnp5c3p0b2ZpayA8amFudXN6LmtyenlzenRvZmlrQGxpbnV4Lmlu
dGVsLmNvbT4KQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0K
IHRlc3RzL2k5MTUvZ2VtX2V4ZWNfcmVsb2MuYyB8IDI2ICsrKysrKysrKysrKysrLS0tLS0tLS0t
LS0tCiAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9nZW1fZXhlY19yZWxvYy5jIGIvdGVzdHMvaTkxNS9nZW1f
ZXhlY19yZWxvYy5jCmluZGV4IGZkZDk2NjFkLi44Zjg4ODI2ZSAxMDA2NDQKLS0tIGEvdGVzdHMv
aTkxNS9nZW1fZXhlY19yZWxvYy5jCisrKyBiL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfcmVsb2MuYwpA
QCAtNTM5LDEyICs1MzksMTMgQEAgc3RhdGljIHZvaWQgYmFzaWNfcmFuZ2UoaW50IGZkLCB1bnNp
Z25lZCBmbGFncykKIAkJb2JqW25dLm9mZnNldCA9ICgxdWxsIDw8IChpICsgMTIpKSAtIDQwOTY7
CiAJCW9ialtuXS5vZmZzZXQgPSBnZW44X2Nhbm9uaWNhbF9hZGRyZXNzKG9ialtuXS5vZmZzZXQp
OwogCQlvYmpbbl0uZmxhZ3MgPSBFWEVDX09CSkVDVF9QSU5ORUQgfCBFWEVDX09CSkVDVF9TVVBQ
T1JUU180OEJfQUREUkVTUzsKLQkJZ2VtX3dyaXRlKGZkLCBvYmpbbl0uaGFuZGxlLCAwLCAmYmJl
LCBzaXplb2YoYmJlKSk7Ci0JCWV4ZWNidWYuYnVmZmVyc19wdHIgPSB0b191c2VyX3BvaW50ZXIo
Jm9ialtuXSk7Ci0JCWV4ZWNidWYuYnVmZmVyX2NvdW50ID0gMTsKLQkJaWYgKF9fZ2VtX2V4ZWNi
dWYoZmQsICZleGVjYnVmKSkKLQkJCWNvbnRpbnVlOwotCisJCWlmICghZ2VtX3VzZXNfcHBndHQo
ZmQpKSB7CisJCQlnZW1fd3JpdGUoZmQsIG9ialtuXS5oYW5kbGUsIDAsICZiYmUsIHNpemVvZihi
YmUpKTsKKwkJCWV4ZWNidWYuYnVmZmVyc19wdHIgPSB0b191c2VyX3BvaW50ZXIoJm9ialtuXSk7
CisJCQlleGVjYnVmLmJ1ZmZlcl9jb3VudCA9IDE7CisJCQlpZiAoX19nZW1fZXhlY2J1ZihmZCwg
JmV4ZWNidWYpKQorCQkJCWNvbnRpbnVlOworCQl9CiAJCWlndF9kZWJ1Zygib2JqWyVkXSBoYW5k
bGU9JWQsIGFkZHJlc3M9JWxseFxuIiwKIAkJCSAgbiwgb2JqW25dLmhhbmRsZSwgKGxvbmcgbG9u
ZylvYmpbbl0ub2Zmc2V0KTsKIApAQCAtNTU5LDEyICs1NjAsMTMgQEAgc3RhdGljIHZvaWQgYmFz
aWNfcmFuZ2UoaW50IGZkLCB1bnNpZ25lZCBmbGFncykKIAkJb2JqW25dLm9mZnNldCA9IDF1bGwg
PDwgKGkgKyAxMik7CiAJCW9ialtuXS5vZmZzZXQgPSBnZW44X2Nhbm9uaWNhbF9hZGRyZXNzKG9i
altuXS5vZmZzZXQpOwogCQlvYmpbbl0uZmxhZ3MgPSBFWEVDX09CSkVDVF9QSU5ORUQgfCBFWEVD
X09CSkVDVF9TVVBQT1JUU180OEJfQUREUkVTUzsKLQkJZ2VtX3dyaXRlKGZkLCBvYmpbbl0uaGFu
ZGxlLCAwLCAmYmJlLCBzaXplb2YoYmJlKSk7Ci0JCWV4ZWNidWYuYnVmZmVyc19wdHIgPSB0b191
c2VyX3BvaW50ZXIoJm9ialtuXSk7Ci0JCWV4ZWNidWYuYnVmZmVyX2NvdW50ID0gMTsKLQkJaWYg
KF9fZ2VtX2V4ZWNidWYoZmQsICZleGVjYnVmKSkKLQkJCWNvbnRpbnVlOwotCisJCWlmICghZ2Vt
X3VzZXNfcHBndHQoZmQpKSB7CisJCQlnZW1fd3JpdGUoZmQsIG9ialtuXS5oYW5kbGUsIDAsICZi
YmUsIHNpemVvZihiYmUpKTsKKwkJCWV4ZWNidWYuYnVmZmVyc19wdHIgPSB0b191c2VyX3BvaW50
ZXIoJm9ialtuXSk7CisJCQlleGVjYnVmLmJ1ZmZlcl9jb3VudCA9IDE7CisJCQlpZiAoX19nZW1f
ZXhlY2J1ZihmZCwgJmV4ZWNidWYpKQorCQkJCWNvbnRpbnVlOworCQl9CiAJCWlndF9kZWJ1Zygi
b2JqWyVkXSBoYW5kbGU9JWQsIGFkZHJlc3M9JWxseFxuIiwKIAkJCSAgbiwgb2JqW25dLmhhbmRs
ZSwgKGxvbmcgbG9uZylvYmpbbl0ub2Zmc2V0KTsKIAotLSAKMi4yMS4wCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
