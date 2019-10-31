Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC924EB3EE
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2019 16:29:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B12636EECC;
	Thu, 31 Oct 2019 15:29:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0278F6EECC;
 Thu, 31 Oct 2019 15:29:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Oct 2019 08:29:22 -0700
X-IronPort-AV: E=Sophos;i="5.68,252,1569308400"; d="scan'208";a="190661116"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.17])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Oct 2019 08:29:19 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu, 31 Oct 2019 16:28:54 +0100
Message-Id: <20191031152857.17143-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191031152857.17143-1-janusz.krzysztofik@linux.intel.com>
References: <20191031152857.17143-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH i-g-t v4 1/4] tests/gem_exec_reloc: Don't
 filter out invalid addresses
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
VW5mb3J0dW5hdGVseSwgdGhhdCBmaWx0ZXJpbmcKZG9lc24ndCBkaXN0aW5ndWlzaCBiZXR3ZWVu
IGFjdHVhbGx5IG9jY3VwaWVkIGFkZHJlc3NlcyBhbmQgb3RoZXJ3aXNlCmludmFsaWQgc29mdHBp
biBvZmZzZXRzLiAgQXMgc29vbiBhcyBpbmNvcnJlY3QgR1RUIGFsaWdubWVudCBpcyBhc3N1bWVk
CndoZW4gcnVubmluZyBvbiBmdXR1cmUgYmFja2VuZHMgd2l0aCBwb3NzaWJseSBsYXJnZXIgbWlu
aW11bSBwYWdlCnNpemVzLCBhIGhhbGYgb2YgY2FsY3VsYXRlZCBvZmZzZXRzIHRvIGJlIHRlc3Rl
ZCB3aWxsIGJlIGluY29ycmVjdGx5CmRldGVjdGVkIGFzIG9jY3VwaWVkIGJ5IG90aGVyIHVzZXJz
IGFuZCBzaWxlbnRseSBza2lwcGVkIGluc3RlYWQgb2YKcmVwb3J0ZWQgYXMgYSBwcm9ibGVtLiAg
VGhhdCB3aWxsIHNpZ25pZmljYW50bHkgZGlzdG9ydCB0aGUgaW50ZW5kZWQKdGVzdCBwYXR0ZXJu
LgoKRmlsdGVyIG91dCBmYWlsaW5nIGFkZHJlc3NlcyBvbmx5IGlmIG5vdCByZXBvcnRlZCBhcyBp
bnZhbGlkLgoKdjI6IFNraXAgdW5hdmFpbGFibGUgYWRkcmVzc2VzIG9ubHkgd2hlbiBub3QgcnVu
bmluZyBvbiBmdWxsIFBQR1RULgp2MzogUmVwbGFjZSB0aGUgbm90IG9uIGZ1bGwgUFBHVFQgcmVx
dWlyZW1lbnQgZm9yIHNraXBwaW5nIHdpdGggZXJyb3IKICAgIGNvZGUgY2hlY2tpbmcuCgpTaWdu
ZWQtb2ZmLWJ5OiBKYW51c3ogS3J6eXN6dG9maWsgPGphbnVzei5rcnp5c3p0b2Zpa0BsaW51eC5p
bnRlbC5jb20+CkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0t
CiB0ZXN0cy9pOTE1L2dlbV9leGVjX3JlbG9jLmMgfCAxMiArKysrKysrKystLS0KIDEgZmlsZSBj
aGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvdGVz
dHMvaTkxNS9nZW1fZXhlY19yZWxvYy5jIGIvdGVzdHMvaTkxNS9nZW1fZXhlY19yZWxvYy5jCmlu
ZGV4IDVmNTlmZTk5Li40MjNmZWQ4YiAxMDA2NDQKLS0tIGEvdGVzdHMvaTkxNS9nZW1fZXhlY19y
ZWxvYy5jCisrKyBiL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfcmVsb2MuYwpAQCAtNTIwLDcgKzUyMCw3
IEBAIHN0YXRpYyB2b2lkIGJhc2ljX3JhbmdlKGludCBmZCwgdW5zaWduZWQgZmxhZ3MpCiAJdWlu
dDY0X3QgZ3R0X3NpemUgPSBnZW1fYXBlcnR1cmVfc2l6ZShmZCk7CiAJY29uc3QgdWludDMyX3Qg
YmJlID0gTUlfQkFUQ0hfQlVGRkVSX0VORDsKIAlpZ3Rfc3Bpbl90ICpzcGluID0gTlVMTDsKLQlp
bnQgY291bnQsIG47CisJaW50IGNvdW50LCBuLCBlcnI7CiAKIAlpZ3RfcmVxdWlyZShnZW1faGFz
X3NvZnRwaW4oZmQpKTsKIApAQCAtNTQyLDggKzU0MiwxMSBAQCBzdGF0aWMgdm9pZCBiYXNpY19y
YW5nZShpbnQgZmQsIHVuc2lnbmVkIGZsYWdzKQogCQlnZW1fd3JpdGUoZmQsIG9ialtuXS5oYW5k
bGUsIDAsICZiYmUsIHNpemVvZihiYmUpKTsKIAkJZXhlY2J1Zi5idWZmZXJzX3B0ciA9IHRvX3Vz
ZXJfcG9pbnRlcigmb2JqW25dKTsKIAkJZXhlY2J1Zi5idWZmZXJfY291bnQgPSAxOwotCQlpZiAo
X19nZW1fZXhlY2J1ZihmZCwgJmV4ZWNidWYpKQorCQllcnIgPSBfX2dlbV9leGVjYnVmKGZkLCAm
ZXhlY2J1Zik7CisJCWlmIChlcnIpIHsKKwkJCWlndF9hc3NlcnQoZXJyICE9IC1FSU5WQUwpOwog
CQkJY29udGludWU7CisJCX0KIAogCQlpZ3RfZGVidWcoIm9ialslZF0gaGFuZGxlPSVkLCBhZGRy
ZXNzPSVsbHhcbiIsCiAJCQkgIG4sIG9ialtuXS5oYW5kbGUsIChsb25nIGxvbmcpb2JqW25dLm9m
ZnNldCk7CkBAIC01NjIsOCArNTY1LDExIEBAIHN0YXRpYyB2b2lkIGJhc2ljX3JhbmdlKGludCBm
ZCwgdW5zaWduZWQgZmxhZ3MpCiAJCWdlbV93cml0ZShmZCwgb2JqW25dLmhhbmRsZSwgMCwgJmJi
ZSwgc2l6ZW9mKGJiZSkpOwogCQlleGVjYnVmLmJ1ZmZlcnNfcHRyID0gdG9fdXNlcl9wb2ludGVy
KCZvYmpbbl0pOwogCQlleGVjYnVmLmJ1ZmZlcl9jb3VudCA9IDE7Ci0JCWlmIChfX2dlbV9leGVj
YnVmKGZkLCAmZXhlY2J1ZikpCisJCWVyciA9IF9fZ2VtX2V4ZWNidWYoZmQsICZleGVjYnVmKTsK
KwkJaWYgKGVycikgeworCQkJaWd0X2Fzc2VydChlcnIgIT0gLUVJTlZBTCk7CiAJCQljb250aW51
ZTsKKwkJfQogCiAJCWlndF9kZWJ1Zygib2JqWyVkXSBoYW5kbGU9JWQsIGFkZHJlc3M9JWxseFxu
IiwKIAkJCSAgbiwgb2JqW25dLmhhbmRsZSwgKGxvbmcgbG9uZylvYmpbbl0ub2Zmc2V0KTsKLS0g
CjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
