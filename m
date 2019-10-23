Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E233FE1F53
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 17:29:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4320E6EB0B;
	Wed, 23 Oct 2019 15:29:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D86C6EB0B;
 Wed, 23 Oct 2019 15:29:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2019 08:29:31 -0700
X-IronPort-AV: E=Sophos;i="5.68,221,1569308400"; d="scan'208";a="202027903"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.17])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2019 08:29:29 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 23 Oct 2019 17:29:15 +0200
Message-Id: <20191023152917.647-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH v2 1/3] tests/gem_exec_reloc: Don't filter
 out addresses on full PPGTT
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
IGlmIHJ1bm5pbmcgb24gb2xkIHNoYXJlZCBHVFQgb3Igbm90LiAgV2hlbgpydW5uaW5nIG9uIGZ1
bGwgKG5vbi1hbGlhc2luZykgUFBHVFQsIHRoYXQgbWF5IHJlc3VsdCBpbiBlcnJvcnMgb3RoZXIK
dGhhbiB0aG9zZSBpbnRlbmRlZCB0byBiZSBza2lwcGVkIG92ZXIgYmVpbmcgc2lsZW50bHkgaWdu
b3JlZC4KClNraXAgb3ZlciB1bmF2YWlsYWJsZSBhZGRyZXNzZXMgb25seSB3aGVuIG5vdCBydW5u
aW5nIG9uIGZ1bGwgUFBHVFQuCgpTaWduZWQtb2ZmLWJ5OiBKYW51c3ogS3J6eXN6dG9maWsgPGph
bnVzei5rcnp5c3p0b2Zpa0BsaW51eC5pbnRlbC5jb20+CkNjOiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KLS0tCiB0ZXN0cy9pOTE1L2dlbV9leGVjX3JlbG9jLmMgfCAy
NiArKysrKysrKysrKysrKy0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlv
bnMoKyksIDEyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNf
cmVsb2MuYyBiL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfcmVsb2MuYwppbmRleCBmZGQ5NjYxZC4uZjdm
YzBlYTcgMTAwNjQ0Ci0tLSBhL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfcmVsb2MuYworKysgYi90ZXN0
cy9pOTE1L2dlbV9leGVjX3JlbG9jLmMKQEAgLTUzOSwxMiArNTM5LDEzIEBAIHN0YXRpYyB2b2lk
IGJhc2ljX3JhbmdlKGludCBmZCwgdW5zaWduZWQgZmxhZ3MpCiAJCW9ialtuXS5vZmZzZXQgPSAo
MXVsbCA8PCAoaSArIDEyKSkgLSA0MDk2OwogCQlvYmpbbl0ub2Zmc2V0ID0gZ2VuOF9jYW5vbmlj
YWxfYWRkcmVzcyhvYmpbbl0ub2Zmc2V0KTsKIAkJb2JqW25dLmZsYWdzID0gRVhFQ19PQkpFQ1Rf
UElOTkVEIHwgRVhFQ19PQkpFQ1RfU1VQUE9SVFNfNDhCX0FERFJFU1M7Ci0JCWdlbV93cml0ZShm
ZCwgb2JqW25dLmhhbmRsZSwgMCwgJmJiZSwgc2l6ZW9mKGJiZSkpOwotCQlleGVjYnVmLmJ1ZmZl
cnNfcHRyID0gdG9fdXNlcl9wb2ludGVyKCZvYmpbbl0pOwotCQlleGVjYnVmLmJ1ZmZlcl9jb3Vu
dCA9IDE7Ci0JCWlmIChfX2dlbV9leGVjYnVmKGZkLCAmZXhlY2J1ZikpCi0JCQljb250aW51ZTsK
LQorCQlpZiAoIWdlbV91c2VzX2Z1bGxfcHBndHQoZmQpKSB7CisJCQlnZW1fd3JpdGUoZmQsIG9i
altuXS5oYW5kbGUsIDAsICZiYmUsIHNpemVvZihiYmUpKTsKKwkJCWV4ZWNidWYuYnVmZmVyc19w
dHIgPSB0b191c2VyX3BvaW50ZXIoJm9ialtuXSk7CisJCQlleGVjYnVmLmJ1ZmZlcl9jb3VudCA9
IDE7CisJCQlpZiAoX19nZW1fZXhlY2J1ZihmZCwgJmV4ZWNidWYpKQorCQkJCWNvbnRpbnVlOwor
CQl9CiAJCWlndF9kZWJ1Zygib2JqWyVkXSBoYW5kbGU9JWQsIGFkZHJlc3M9JWxseFxuIiwKIAkJ
CSAgbiwgb2JqW25dLmhhbmRsZSwgKGxvbmcgbG9uZylvYmpbbl0ub2Zmc2V0KTsKIApAQCAtNTU5
LDEyICs1NjAsMTMgQEAgc3RhdGljIHZvaWQgYmFzaWNfcmFuZ2UoaW50IGZkLCB1bnNpZ25lZCBm
bGFncykKIAkJb2JqW25dLm9mZnNldCA9IDF1bGwgPDwgKGkgKyAxMik7CiAJCW9ialtuXS5vZmZz
ZXQgPSBnZW44X2Nhbm9uaWNhbF9hZGRyZXNzKG9ialtuXS5vZmZzZXQpOwogCQlvYmpbbl0uZmxh
Z3MgPSBFWEVDX09CSkVDVF9QSU5ORUQgfCBFWEVDX09CSkVDVF9TVVBQT1JUU180OEJfQUREUkVT
UzsKLQkJZ2VtX3dyaXRlKGZkLCBvYmpbbl0uaGFuZGxlLCAwLCAmYmJlLCBzaXplb2YoYmJlKSk7
Ci0JCWV4ZWNidWYuYnVmZmVyc19wdHIgPSB0b191c2VyX3BvaW50ZXIoJm9ialtuXSk7Ci0JCWV4
ZWNidWYuYnVmZmVyX2NvdW50ID0gMTsKLQkJaWYgKF9fZ2VtX2V4ZWNidWYoZmQsICZleGVjYnVm
KSkKLQkJCWNvbnRpbnVlOwotCisJCWlmICghZ2VtX3VzZXNfZnVsbF9wcGd0dChmZCkpIHsKKwkJ
CWdlbV93cml0ZShmZCwgb2JqW25dLmhhbmRsZSwgMCwgJmJiZSwgc2l6ZW9mKGJiZSkpOworCQkJ
ZXhlY2J1Zi5idWZmZXJzX3B0ciA9IHRvX3VzZXJfcG9pbnRlcigmb2JqW25dKTsKKwkJCWV4ZWNi
dWYuYnVmZmVyX2NvdW50ID0gMTsKKwkJCWlmIChfX2dlbV9leGVjYnVmKGZkLCAmZXhlY2J1Zikp
CisJCQkJY29udGludWU7CisJCX0KIAkJaWd0X2RlYnVnKCJvYmpbJWRdIGhhbmRsZT0lZCwgYWRk
cmVzcz0lbGx4XG4iLAogCQkJICBuLCBvYmpbbl0uaGFuZGxlLCAobG9uZyBsb25nKW9ialtuXS5v
ZmZzZXQpOwogCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
