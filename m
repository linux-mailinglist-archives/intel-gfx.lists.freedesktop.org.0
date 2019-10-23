Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B625E1F54
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 17:29:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9641C6EB10;
	Wed, 23 Oct 2019 15:29:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C90A76EB0D;
 Wed, 23 Oct 2019 15:29:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2019 08:29:34 -0700
X-IronPort-AV: E=Sophos;i="5.68,221,1569308400"; d="scan'208";a="202027931"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.17])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2019 08:29:31 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 23 Oct 2019 17:29:16 +0200
Message-Id: <20191023152917.647-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191023152917.647-1-janusz.krzysztofik@linux.intel.com>
References: <20191023152917.647-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH v2 2/3] tests/gem_exec_reloc: Calculate
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
ZXMgdGhpcyBzdWJ0ZXN0IHdpbGwKZmFpbCBhcyBidWZmZXIgb2JqZWN0cyBtYXkgb3ZlcmxhcCBv
biBzb2Z0cGluLiAgVG8gYXZvaWQgb2JqZWN0Cm92ZXJsYXBwaW5nLCBzb2Z0cGluIG9mZnNldHMg
bmVlZCB0byBiZSBjYWxjdWxhdGVkIHdpdGggYWN0dWFsIG1pbmltdW0KYmF0Y2ggc2l6ZSBpbiBt
aW5kLgoKUmVwbGFjZSBoYXJkY29kZWQgY29uc3RhbnRzIGNvcnJlc3BvbmRpbmcgdG8gdGhlIGFz
c3VtZWQgNGtCIHZhbHVlIHdpdGgKdmFyaWFibGVzIHN1cHBvc2VkIHRvIHJlZmxlY3QgYWN0dWFs
IGJhdGNoIHNpemUuICBGb3Igbm93LCB0aGUKdmFyaWFibGVzIGFyZSBzdGlsbCBpbml0aWFsaXpl
ZCB3aXRoIHZhbHVlcyBzcGVjaWZpYyB0byB0aGUgNGtCIG1pbmltdW0KYmF0Y2ggc2l6ZSwgd2hp
Y2ggYXJlIHN1aXRhYmxlIGZvciBiYWNrZW5kcyBjdXJyZW50bHkgc3VwcG9ydGVkIGJ5IElHVC4K
ClNpZ25lZC1vZmYtYnk6IEphbnVzeiBLcnp5c3p0b2ZpayA8amFudXN6LmtyenlzenRvZmlrQGlu
dGVsLmNvbT4KQ2M6IEthdGFyenluYSBEZWMgPGthdGFyenluYS5kZWNAaW50ZWwuY29tPgpDYzog
U3R1YXJ0IFN1bW1lcnMgPHN0dWFydC5zdW1tZXJzQGludGVsLmNvbT4KLS0tCiB0ZXN0cy9pOTE1
L2dlbV9leGVjX3JlbG9jLmMgfCAxMCArKysrKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNl
cnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX2V4
ZWNfcmVsb2MuYyBiL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfcmVsb2MuYwppbmRleCBmN2ZjMGVhNy4u
NjE0MDFlYTcgMTAwNjQ0Ci0tLSBhL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfcmVsb2MuYworKysgYi90
ZXN0cy9pOTE1L2dlbV9leGVjX3JlbG9jLmMKQEAgLTUyMCwxNCArNTIwLDE2IEBAIHN0YXRpYyB2
b2lkIGJhc2ljX3JhbmdlKGludCBmZCwgdW5zaWduZWQgZmxhZ3MpCiAJdWludDY0X3QgZ3R0X3Np
emUgPSBnZW1fYXBlcnR1cmVfc2l6ZShmZCk7CiAJY29uc3QgdWludDMyX3QgYmJlID0gTUlfQkFU
Q0hfQlVGRkVSX0VORDsKIAlpZ3Rfc3Bpbl90ICpzcGluID0gTlVMTDsKKwlpbnQgYmF0Y2hfb3Jk
ZXIgPSAxMjsKKwl1aW50NjRfdCBiYXRjaF9zaXplID0gMXVsbCA8PCBiYXRjaF9vcmRlcjsgLyog
NDA5NiAqLwogCWludCBjb3VudCwgbjsKIAogCWlndF9yZXF1aXJlKGdlbV9oYXNfc29mdHBpbihm
ZCkpOwogCi0JZm9yIChjb3VudCA9IDEyOyBndHRfc2l6ZSA+PiAoY291bnQgKyAxKTsgY291bnQr
KykKKwlmb3IgKGNvdW50ID0gYmF0Y2hfb3JkZXI7IGd0dF9zaXplID4+IChjb3VudCArIDEpOyBj
b3VudCsrKQogCQk7CiAKLQljb3VudCAtPSAxMjsKKwljb3VudCAtPSBiYXRjaF9vcmRlcjsKIAog
CW1lbXNldChvYmosIDAsIHNpemVvZihvYmopKTsKIAltZW1zZXQocmVsb2MsIDAsIHNpemVvZihy
ZWxvYykpOwpAQCAtNTM2LDcgKzUzOCw3IEBAIHN0YXRpYyB2b2lkIGJhc2ljX3JhbmdlKGludCBm
ZCwgdW5zaWduZWQgZmxhZ3MpCiAJbiA9IDA7CiAJZm9yIChpbnQgaSA9IDA7IGkgPD0gY291bnQ7
IGkrKykgewogCQlvYmpbbl0uaGFuZGxlID0gZ2VtX2NyZWF0ZShmZCwgNDA5Nik7Ci0JCW9ialtu
XS5vZmZzZXQgPSAoMXVsbCA8PCAoaSArIDEyKSkgLSA0MDk2OworCQlvYmpbbl0ub2Zmc2V0ID0g
KDF1bGwgPDwgKGkgKyBiYXRjaF9vcmRlcikpIC0gYmF0Y2hfc2l6ZTsKIAkJb2JqW25dLm9mZnNl
dCA9IGdlbjhfY2Fub25pY2FsX2FkZHJlc3Mob2JqW25dLm9mZnNldCk7CiAJCW9ialtuXS5mbGFn
cyA9IEVYRUNfT0JKRUNUX1BJTk5FRCB8IEVYRUNfT0JKRUNUX1NVUFBPUlRTXzQ4Ql9BRERSRVNT
OwogCQlpZiAoIWdlbV91c2VzX2Z1bGxfcHBndHQoZmQpKSB7CkBAIC01NTcsNyArNTU5LDcgQEAg
c3RhdGljIHZvaWQgYmFzaWNfcmFuZ2UoaW50IGZkLCB1bnNpZ25lZCBmbGFncykKIAl9CiAJZm9y
IChpbnQgaSA9IDE7IGkgPCBjb3VudDsgaSsrKSB7CiAJCW9ialtuXS5oYW5kbGUgPSBnZW1fY3Jl
YXRlKGZkLCA0MDk2KTsKLQkJb2JqW25dLm9mZnNldCA9IDF1bGwgPDwgKGkgKyAxMik7CisJCW9i
altuXS5vZmZzZXQgPSAxdWxsIDw8IChpICsgYmF0Y2hfb3JkZXIpOwogCQlvYmpbbl0ub2Zmc2V0
ID0gZ2VuOF9jYW5vbmljYWxfYWRkcmVzcyhvYmpbbl0ub2Zmc2V0KTsKIAkJb2JqW25dLmZsYWdz
ID0gRVhFQ19PQkpFQ1RfUElOTkVEIHwgRVhFQ19PQkpFQ1RfU1VQUE9SVFNfNDhCX0FERFJFU1M7
CiAJCWlmICghZ2VtX3VzZXNfZnVsbF9wcGd0dChmZCkpIHsKLS0gCjIuMjEuMAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
