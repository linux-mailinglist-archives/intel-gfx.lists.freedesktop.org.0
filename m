Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C3EDEA25C
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2019 18:16:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EE186EADF;
	Wed, 30 Oct 2019 17:15:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D42456EADF;
 Wed, 30 Oct 2019 17:15:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Oct 2019 10:15:57 -0700
X-IronPort-AV: E=Sophos;i="5.68,248,1569308400"; d="scan'208";a="203942863"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.17])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Oct 2019 10:15:55 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Date: Wed, 30 Oct 2019 18:15:35 +0100
Message-Id: <20191030171535.32702-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH i-g-t v3] tests/gem_exec_reloc: Don't filter
 out invalid addresses
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q29tbWl0IGEzNTViMmQ2ZWI0MiAoImlndC9nZW1fZXhlY19yZWxvYzogRmlsdGVyIG91dCB1bmF2
YWlsYWJsZQphZGRyZXNzZXMgZm9yICFwcGd0dCIpIGludHJvZHVjZWQgZmlsdGVyaW5nIG9mIGFk
ZHJlc3NlcyBwb3NzaWJseQpvY2N1cGllZCBieSBvdGhlciB1c2VycyBvZiBzaGFyZWQgR1RULiAg
VW5mb3J0dW5hdGVseSwgdGhhdCBmaWx0ZXJpbmcKZG9lc24ndCBkaXN0aW5ndWlzaCBhY3R1YWxs
eSBvY2N1cGllZCBhZGRyZXNzZXMgZnJvbSBvdGhlcndpc2UgaW52YWxpZApzb2Z0cGluIG9mZnNl
dHMuICBGb3IgZXhhbXBsZSwgb24gYSBmdXR1cmUgaGFyZHdhcmUgYmFja2luZyBzdG9yZSB3aXRo
CmEgcGFnZSBzaXplIGxhcmdlciB0aGFuIDQga0IgaW5jb3JyZWN0IG9iamVjdCBhbGlnbm1lbnQg
aXMgYXNzdW1lZCBhbmQKdGhlIHRlc3QgcmVzdWx0cyBhcmUgZGlzdG9ydGVkIGFzIGl0IGhhcHBp
bHkgc2tpcHMgb3ZlciBpbmNvcnJlY3RseQphbGlnbmVkIG9iamVjdHMgaW5zdGVhZCBvZiByZXBv
cnRpbmcgdGhlIHByb2JsZW0uCgpGaWx0ZXIgb3V0IGZhaWxpbmcgYWRkcmVzc2VzIG9ubHkgaWYg
bm90IHJlcG9ydGVkIGFzIGludmFsaWQuCgpTaWduZWQtb2ZmLWJ5OiBKYW51c3ogS3J6eXN6dG9m
aWsgPGphbnVzei5rcnp5c3p0b2Zpa0BsaW51eC5pbnRlbC5jb20+CkNjOiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiB0ZXN0cy9pOTE1L2dlbV9leGVjX3JlbG9j
LmMgfCAxMiArKysrKysrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDMg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9nZW1fZXhlY19yZWxvYy5jIGIv
dGVzdHMvaTkxNS9nZW1fZXhlY19yZWxvYy5jCmluZGV4IGZkZDk2NjFkLi4xZDBjNzkxZSAxMDA2
NDQKLS0tIGEvdGVzdHMvaTkxNS9nZW1fZXhlY19yZWxvYy5jCisrKyBiL3Rlc3RzL2k5MTUvZ2Vt
X2V4ZWNfcmVsb2MuYwpAQCAtNTIwLDcgKzUyMCw3IEBAIHN0YXRpYyB2b2lkIGJhc2ljX3Jhbmdl
KGludCBmZCwgdW5zaWduZWQgZmxhZ3MpCiAJdWludDY0X3QgZ3R0X3NpemUgPSBnZW1fYXBlcnR1
cmVfc2l6ZShmZCk7CiAJY29uc3QgdWludDMyX3QgYmJlID0gTUlfQkFUQ0hfQlVGRkVSX0VORDsK
IAlpZ3Rfc3Bpbl90ICpzcGluID0gTlVMTDsKLQlpbnQgY291bnQsIG47CisJaW50IGNvdW50LCBu
LCBlcnI7CiAKIAlpZ3RfcmVxdWlyZShnZW1faGFzX3NvZnRwaW4oZmQpKTsKIApAQCAtNTQyLDgg
KzU0MiwxMSBAQCBzdGF0aWMgdm9pZCBiYXNpY19yYW5nZShpbnQgZmQsIHVuc2lnbmVkIGZsYWdz
KQogCQlnZW1fd3JpdGUoZmQsIG9ialtuXS5oYW5kbGUsIDAsICZiYmUsIHNpemVvZihiYmUpKTsK
IAkJZXhlY2J1Zi5idWZmZXJzX3B0ciA9IHRvX3VzZXJfcG9pbnRlcigmb2JqW25dKTsKIAkJZXhl
Y2J1Zi5idWZmZXJfY291bnQgPSAxOwotCQlpZiAoX19nZW1fZXhlY2J1ZihmZCwgJmV4ZWNidWYp
KQorCQllcnIgPSBfX2dlbV9leGVjYnVmKGZkLCAmZXhlY2J1Zik7CisJCWlmIChlcnIpIHsKKwkJ
CWlndF9hc3NlcnQoZXJyICE9IC1FSU5WQUwpOwogCQkJY29udGludWU7CisJCX0KIAogCQlpZ3Rf
ZGVidWcoIm9ialslZF0gaGFuZGxlPSVkLCBhZGRyZXNzPSVsbHhcbiIsCiAJCQkgIG4sIG9ialtu
XS5oYW5kbGUsIChsb25nIGxvbmcpb2JqW25dLm9mZnNldCk7CkBAIC01NjIsOCArNTY1LDExIEBA
IHN0YXRpYyB2b2lkIGJhc2ljX3JhbmdlKGludCBmZCwgdW5zaWduZWQgZmxhZ3MpCiAJCWdlbV93
cml0ZShmZCwgb2JqW25dLmhhbmRsZSwgMCwgJmJiZSwgc2l6ZW9mKGJiZSkpOwogCQlleGVjYnVm
LmJ1ZmZlcnNfcHRyID0gdG9fdXNlcl9wb2ludGVyKCZvYmpbbl0pOwogCQlleGVjYnVmLmJ1ZmZl
cl9jb3VudCA9IDE7Ci0JCWlmIChfX2dlbV9leGVjYnVmKGZkLCAmZXhlY2J1ZikpCisJCWVyciA9
IF9fZ2VtX2V4ZWNidWYoZmQsICZleGVjYnVmKTsKKwkJaWYgKGVycikgeworCQkJaWd0X2Fzc2Vy
dChlcnIgIT0gLUVJTlZBTCk7CiAJCQljb250aW51ZTsKKwkJfQogCiAJCWlndF9kZWJ1Zygib2Jq
WyVkXSBoYW5kbGU9JWQsIGFkZHJlc3M9JWxseFxuIiwKIAkJCSAgbiwgb2JqW25dLmhhbmRsZSwg
KGxvbmcgbG9uZylvYmpbbl0ub2Zmc2V0KTsKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
