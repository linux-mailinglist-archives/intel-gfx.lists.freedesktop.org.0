Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A7A6E1551
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 11:08:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C9866E9FB;
	Wed, 23 Oct 2019 09:08:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A40586E9FC;
 Wed, 23 Oct 2019 09:08:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2019 02:08:24 -0700
X-IronPort-AV: E=Sophos;i="5.68,220,1569308400"; d="scan'208";a="188189832"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.17])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2019 02:08:21 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 23 Oct 2019 11:07:52 +0200
Message-Id: <20191023090752.23566-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191023090752.23566-1-janusz.krzysztofik@linux.intel.com>
References: <20191023090752.23566-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 2/2] tests/gem_exec_reloc: Calculate
 softpin offsets from batch size
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
Cc: Janusz Krzysztofik <janusz.krzysztofik@intel.com>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogSmFudXN6IEtyenlzenRvZmlrIDxqYW51c3oua3J6eXN6dG9maWtAaW50ZWwuY29tPgoK
VGhlIGJhc2ljLXJhbmdlIHN1YnRlc3QgYXNzdW1lcyA0a0IgbWluaW11bSBiYXRjaCBzaXplLiAg
T24gZnV0dXJlCmJhY2tlbmRzIHdpdGggcG9zc2libHkgYmlnZ2VyIG1pbmltdW0gYmF0Y2ggc2l6
ZXMgdGhpcyBzdWJ0ZXN0IHdpbGwKZmFpbCBhcyBidWZmZXIgb2JqZWN0cyBtYXkgb3ZlcmxhcC4g
IFRvIGF2b2lkIG9iamVjdCBvdmVybGFwcGluZywKb2Zmc2V0cyBuZWVkIHRvIGJlIGNhbGN1bGF0
ZWQgd2l0aCBhY3R1YWwgbWluaW11bSBiYXRjaCBzaXplIGluIG1pbmQuCgpSZXBsYWNlIGhhcmRj
b2RlZCBjb25zdGFudHMgY29ycmVzcG9uZGluZyB0byB0aGUgYXNzdW1lZCA0a0IgbWluaW11bQpi
YXRjaCBzaXplIHdpdGggdmFsdWVzIGNhbGN1bGF0ZWQgZnJvbSBhIHZhcmlhYmxlIHN1cHBvc2Vk
IHRvIHJlcHJlc2VudAphY3R1YWwgYmF0Y2ggc2l6ZS4gIEZvciBub3csIHRoZSB2YXJpYWJsZSBp
cyBzdGlsbCBpbml0aWFsaXplZCB3aXRoIHRoZQo0a0IgdmFsdWUsIHN1aXRhYmxlIGZvciBiYWNr
ZW5kcyBjdXJyZW50bHkgc3VwcG9ydGVkIGJ5IElHVC4KClNpZ25lZC1vZmYtYnk6IEphbnVzeiBL
cnp5c3p0b2ZpayA8amFudXN6LmtyenlzenRvZmlrQGludGVsLmNvbT4KQ2M6IEthdGFyenluYSBE
ZWMgPGthdGFyenluYS5kZWNAaW50ZWwuY29tPgpDYzogU3R1YXJ0IFN1bW1lcnMgPHN0dWFydC5z
dW1tZXJzQGludGVsLmNvbT4KLS0tCiB0ZXN0cy9pOTE1L2dlbV9leGVjX3JlbG9jLmMgfCAyMSAr
KysrKysrKysrKysrLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCA4
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfcmVsb2MuYyBi
L3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfcmVsb2MuYwppbmRleCA4Zjg4ODI2ZS4uOGQyZjEwYWMgMTAw
NjQ0Ci0tLSBhL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfcmVsb2MuYworKysgYi90ZXN0cy9pOTE1L2dl
bV9leGVjX3JlbG9jLmMKQEAgLTUxOCwxNiArNTE4LDIxIEBAIHN0YXRpYyB2b2lkIGJhc2ljX3Jh
bmdlKGludCBmZCwgdW5zaWduZWQgZmxhZ3MpCiAJc3RydWN0IGRybV9pOTE1X2dlbV9leGVjYnVm
ZmVyMiBleGVjYnVmOwogCXVpbnQ2NF90IGFkZHJlc3NfbWFzayA9IGhhc182NGJfcmVsb2MoZmQp
ID8gfih1aW50NjRfdCkwIDogfih1aW50MzJfdCkwOwogCXVpbnQ2NF90IGd0dF9zaXplID0gZ2Vt
X2FwZXJ0dXJlX3NpemUoZmQpOworCS8qIEZJWE1FOiBzd2l0Y2ggdG8gYSBzdWl0YWJsZSBsaWJy
YXJ5IGZ1bmN0aW9uIHdoZW4gYXZhaWxhYmxlICovCisJdWludDY0X3QgYmF0Y2hfc2l6ZSA9IDQw
OTY7CiAJY29uc3QgdWludDMyX3QgYmJlID0gTUlfQkFUQ0hfQlVGRkVSX0VORDsKIAlpZ3Rfc3Bp
bl90ICpzcGluID0gTlVMTDsKLQlpbnQgY291bnQsIG47CisJaW50IGJhdGNoX29yZGVyLCBjb3Vu
dCwgbjsKIAogCWlndF9yZXF1aXJlKGdlbV9oYXNfc29mdHBpbihmZCkpOwogCi0JZm9yIChjb3Vu
dCA9IDEyOyBndHRfc2l6ZSA+PiAoY291bnQgKyAxKTsgY291bnQrKykKKwlmb3IgKGJhdGNoX29y
ZGVyID0gMDsgYmF0Y2hfc2l6ZSA+PiAoYmF0Y2hfb3JkZXIgKyAxKTsgYmF0Y2hfb3JkZXIrKykK
IAkJOwogCi0JY291bnQgLT0gMTI7CisJZm9yIChjb3VudCA9IGJhdGNoX29yZGVyOyBndHRfc2l6
ZSA+PiAoY291bnQgKyAxKTsgY291bnQrKykKKwkJOworCisJY291bnQgLT0gYmF0Y2hfb3JkZXI7
CiAKIAltZW1zZXQob2JqLCAwLCBzaXplb2Yob2JqKSk7CiAJbWVtc2V0KHJlbG9jLCAwLCBzaXpl
b2YocmVsb2MpKTsKQEAgLTUzNSw4ICs1NDAsOCBAQCBzdGF0aWMgdm9pZCBiYXNpY19yYW5nZShp
bnQgZmQsIHVuc2lnbmVkIGZsYWdzKQogCiAJbiA9IDA7CiAJZm9yIChpbnQgaSA9IDA7IGkgPD0g
Y291bnQ7IGkrKykgewotCQlvYmpbbl0uaGFuZGxlID0gZ2VtX2NyZWF0ZShmZCwgNDA5Nik7Ci0J
CW9ialtuXS5vZmZzZXQgPSAoMXVsbCA8PCAoaSArIDEyKSkgLSA0MDk2OworCQlvYmpbbl0uaGFu
ZGxlID0gZ2VtX2NyZWF0ZShmZCwgYmF0Y2hfc2l6ZSk7CisJCW9ialtuXS5vZmZzZXQgPSAoMXVs
bCA8PCAoaSArIGJhdGNoX29yZGVyKSkgLSBiYXRjaF9zaXplOwogCQlvYmpbbl0ub2Zmc2V0ID0g
Z2VuOF9jYW5vbmljYWxfYWRkcmVzcyhvYmpbbl0ub2Zmc2V0KTsKIAkJb2JqW25dLmZsYWdzID0g
RVhFQ19PQkpFQ1RfUElOTkVEIHwgRVhFQ19PQkpFQ1RfU1VQUE9SVFNfNDhCX0FERFJFU1M7CiAJ
CWlmICghZ2VtX3VzZXNfcHBndHQoZmQpKSB7CkBAIC01NTYsOCArNTYxLDggQEAgc3RhdGljIHZv
aWQgYmFzaWNfcmFuZ2UoaW50IGZkLCB1bnNpZ25lZCBmbGFncykKIAkJbisrOwogCX0KIAlmb3Ig
KGludCBpID0gMTsgaSA8IGNvdW50OyBpKyspIHsKLQkJb2JqW25dLmhhbmRsZSA9IGdlbV9jcmVh
dGUoZmQsIDQwOTYpOwotCQlvYmpbbl0ub2Zmc2V0ID0gMXVsbCA8PCAoaSArIDEyKTsKKwkJb2Jq
W25dLmhhbmRsZSA9IGdlbV9jcmVhdGUoZmQsIGJhdGNoX3NpemUpOworCQlvYmpbbl0ub2Zmc2V0
ID0gMXVsbCA8PCAoaSArIGJhdGNoX29yZGVyKTsKIAkJb2JqW25dLm9mZnNldCA9IGdlbjhfY2Fu
b25pY2FsX2FkZHJlc3Mob2JqW25dLm9mZnNldCk7CiAJCW9ialtuXS5mbGFncyA9IEVYRUNfT0JK
RUNUX1BJTk5FRCB8IEVYRUNfT0JKRUNUX1NVUFBPUlRTXzQ4Ql9BRERSRVNTOwogCQlpZiAoIWdl
bV91c2VzX3BwZ3R0KGZkKSkgewpAQCAtNTc4LDcgKzU4Myw3IEBAIHN0YXRpYyB2b2lkIGJhc2lj
X3JhbmdlKGludCBmZCwgdW5zaWduZWQgZmxhZ3MpCiAJfQogCWlndF9yZXF1aXJlKG4pOwogCi0J
b2JqW25dLmhhbmRsZSA9IGdlbV9jcmVhdGUoZmQsIDQwOTYpOworCW9ialtuXS5oYW5kbGUgPSBn
ZW1fY3JlYXRlKGZkLCBiYXRjaF9zaXplKTsKIAlvYmpbbl0ucmVsb2NzX3B0ciA9IHRvX3VzZXJf
cG9pbnRlcihyZWxvYyk7CiAJb2JqW25dLnJlbG9jYXRpb25fY291bnQgPSBuOwogCWdlbV93cml0
ZShmZCwgb2JqW25dLmhhbmRsZSwgMCwgJmJiZSwgc2l6ZW9mKGJiZSkpOwotLSAKMi4yMS4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
