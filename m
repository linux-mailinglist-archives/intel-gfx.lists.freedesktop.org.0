Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7326DE758D
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 16:53:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AF986E966;
	Mon, 28 Oct 2019 15:53:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2735A6E966;
 Mon, 28 Oct 2019 15:53:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 08:53:37 -0700
X-IronPort-AV: E=Sophos;i="5.68,240,1569308400"; d="scan'208";a="193299025"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.17])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 08:53:33 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 28 Oct 2019 16:53:17 +0100
Message-Id: <20191028155318.23416-4-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191028155318.23416-1-janusz.krzysztofik@linux.intel.com>
References: <20191028155318.23416-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH i-g-t v3 3/4] tests/gem_exec_reloc:
 Calculate softpin offsets from actual page size
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
VGhlIGJhc2ljLXJhbmdlIHN1YnRlc3QgYXNzdW1lcyA0a0IgcGFnZSBzaXplIHdoaWxlIGNhbGN1
bGF0aW5nIHNvZnRwaW4Kb2Zmc2V0cy4gIE9uIGZ1dHVyZSBiYWNrZW5kcyB3aXRoIHBvc3NpYmx5
IGxhcmdlciBtaW5pbXVtIHBhZ2Ugc2l6ZXMKYSBoYWxmIG9mIGNhbGN1bGF0ZWQgb2Zmc2V0cyB0
byBiZSB0ZXN0ZWQgbWF5IGJlIGluY29ycmVjdGx5IGRldGVjdGVkCmFzIG9jY3VwaWVkIGJ5IG90
aGVyIHVzZXJzIGFuZCBza2lwZWQsIHNpZ25pZmljYW50bHkgZGlzdG9yaW5nIHRoZQppbnRlbmRl
ZCB0ZXN0IHBhdHRlcm4uCgpSZXBsYWNlIGhhcmRjb2RlZCBjb25zdGFudHMgY29ycmVzcG9uZGlu
ZyB0byB0aGUgYXNzdW1lZCA0a0IgcGFnZSBzaXplCndpdGggdmFyaWFibGVzIGluaXRpYWxpemVk
IHdpdGggYWN0dWFsIG1pbmltdW0gcGFnZSBzaXplIGFuZCBvcmRlci4KCnYyOiBTaW1wbGlmeSB0
aGUgY29kZSBieSByZXZlcnNpbmcgdGhlIHNpemUtPm9yZGVyIGNvbnZlcnNpb24sCiAgLSBkcm9w
IGlycmVsZXZhbnQgbW9kaWZpY2F0aW9ucyBvZiByZXF1ZXN0ZWQgb2JqZWN0IHNpemVzLgp2Mzog
SW5pdGlhbGl6ZSBwYWdlIHNpemUgb3JkZXIgd2l0aCBhbiBhY3R1YWwgbWluaW11bSByZXR1cm5l
ZCBieSBhIG5ldwogICAgaGVscGVyIChpbnNwaXJlZCBieSBDaHJpcykuCgpTaWduZWQtb2ZmLWJ5
OiBKYW51c3ogS3J6eXN6dG9maWsgPGphbnVzei5rcnp5c3p0b2Zpa0BpbnRlbC5jb20+CkNjOiBL
YXRhcnp5bmEgRGVjIDxrYXRhcnp5bmEuZGVjQGludGVsLmNvbT4KQ2M6IFN0dWFydCBTdW1tZXJz
IDxzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb20+CkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KLS0tCiB0ZXN0cy9pOTE1L2dlbV9leGVjX3JlbG9jLmMgfCAxMCArKysr
KystLS0tCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfcmVsb2MuYyBiL3Rlc3RzL2k5MTUvZ2Vt
X2V4ZWNfcmVsb2MuYwppbmRleCA2MWY4Yjc1NS4uNWU3ZGY4ZWQgMTAwNjQ0Ci0tLSBhL3Rlc3Rz
L2k5MTUvZ2VtX2V4ZWNfcmVsb2MuYworKysgYi90ZXN0cy9pOTE1L2dlbV9leGVjX3JlbG9jLmMK
QEAgLTUxMCwxNCArNTEwLDE2IEBAIHN0YXRpYyB2b2lkIGJhc2ljX3JhbmdlKGludCBmZCwgdW5z
aWduZWQgZmxhZ3MpCiAJdWludDY0X3QgZ3R0X3NpemUgPSBnZW1fYXBlcnR1cmVfc2l6ZShmZCk7
CiAJY29uc3QgdWludDMyX3QgYmJlID0gTUlfQkFUQ0hfQlVGRkVSX0VORDsKIAlpZ3Rfc3Bpbl90
ICpzcGluID0gTlVMTDsKKwlpbnQgcGFnZV9vcmRlciA9IGdlbV9taW5fcGFnZV9zaXplX29yZGVy
KGZkKTsKKwl1aW50NjRfdCBwYWdlX3NpemUgPSAxdWxsIDw8IHBhZ2Vfb3JkZXI7CiAJaW50IGNv
dW50LCBuOwogCiAJaWd0X3JlcXVpcmUoZ2VtX2hhc19zb2Z0cGluKGZkKSk7CiAKLQlmb3IgKGNv
dW50ID0gMTI7IGd0dF9zaXplID4+IChjb3VudCArIDEpOyBjb3VudCsrKQorCWZvciAoY291bnQg
PSBwYWdlX29yZGVyOyBndHRfc2l6ZSA+PiAoY291bnQgKyAxKTsgY291bnQrKykKIAkJOwogCi0J
Y291bnQgLT0gMTI7CisJY291bnQgLT0gcGFnZV9vcmRlcjsKIAogCW1lbXNldChvYmosIDAsIHNp
emVvZihvYmopKTsKIAltZW1zZXQocmVsb2MsIDAsIHNpemVvZihyZWxvYykpOwpAQCAtNTI2LDcg
KzUyOCw3IEBAIHN0YXRpYyB2b2lkIGJhc2ljX3JhbmdlKGludCBmZCwgdW5zaWduZWQgZmxhZ3Mp
CiAJbiA9IDA7CiAJZm9yIChpbnQgaSA9IDA7IGkgPD0gY291bnQ7IGkrKykgewogCQlvYmpbbl0u
aGFuZGxlID0gZ2VtX2NyZWF0ZShmZCwgNDA5Nik7Ci0JCW9ialtuXS5vZmZzZXQgPSAoMXVsbCA8
PCAoaSArIDEyKSkgLSA0MDk2OworCQlvYmpbbl0ub2Zmc2V0ID0gKDF1bGwgPDwgKGkgKyBwYWdl
X29yZGVyKSkgLSBwYWdlX3NpemU7CiAJCW9ialtuXS5vZmZzZXQgPSBnZW44X2Nhbm9uaWNhbF9h
ZGRyKG9ialtuXS5vZmZzZXQpOwogCQlvYmpbbl0uZmxhZ3MgPSBFWEVDX09CSkVDVF9QSU5ORUQg
fCBFWEVDX09CSkVDVF9TVVBQT1JUU180OEJfQUREUkVTUzsKIAkJZ2VtX3dyaXRlKGZkLCBvYmpb
bl0uaGFuZGxlLCAwLCAmYmJlLCBzaXplb2YoYmJlKSk7CkBAIC01NDYsNyArNTQ4LDcgQEAgc3Rh
dGljIHZvaWQgYmFzaWNfcmFuZ2UoaW50IGZkLCB1bnNpZ25lZCBmbGFncykKIAl9CiAJZm9yIChp
bnQgaSA9IDE7IGkgPCBjb3VudDsgaSsrKSB7CiAJCW9ialtuXS5oYW5kbGUgPSBnZW1fY3JlYXRl
KGZkLCA0MDk2KTsKLQkJb2JqW25dLm9mZnNldCA9IDF1bGwgPDwgKGkgKyAxMik7CisJCW9ialtu
XS5vZmZzZXQgPSAxdWxsIDw8IChpICsgcGFnZV9vcmRlcik7CiAJCW9ialtuXS5vZmZzZXQgPSBn
ZW44X2Nhbm9uaWNhbF9hZGRyKG9ialtuXS5vZmZzZXQpOwogCQlvYmpbbl0uZmxhZ3MgPSBFWEVD
X09CSkVDVF9QSU5ORUQgfCBFWEVDX09CSkVDVF9TVVBQT1JUU180OEJfQUREUkVTUzsKIAkJZ2Vt
X3dyaXRlKGZkLCBvYmpbbl0uaGFuZGxlLCAwLCAmYmJlLCBzaXplb2YoYmJlKSk7Ci0tIAoyLjIx
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
