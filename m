Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9B981A6A17
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2020 18:43:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B624789F2E;
	Mon, 13 Apr 2020 16:43:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15FCC89EFF
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Apr 2020 16:43:42 +0000 (UTC)
IronPort-SDR: xAf0HaDBEaaBv006ujmjCQvFWzh3o1a1q2CS2TPdooo1rgRozBa8/mFk00v17QhLGNXs7pTqoO
 R2UfEbQyf9nA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2020 09:43:41 -0700
IronPort-SDR: x9X3v4LrPS5qzhIpCKhR+PH0NDZmzw8Cbefaq3AQ2woGyKBC/q7WiIQBs4bkJ9dJpn8mFvIQDV
 G17DbU7tdqDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,378,1580803200"; d="scan'208";a="267485697"
Received: from shandley-mobl.amr.corp.intel.com (HELO
 josouza-MOBL2.amr.corp.intel.com) ([10.135.3.40])
 by orsmga008.jf.intel.com with ESMTP; 13 Apr 2020 09:43:41 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Apr 2020 09:45:10 -0700
Message-Id: <20200413164515.13355-4-jose.souza@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200413164515.13355-1-jose.souza@intel.com>
References: <20200413164515.13355-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 4/9] drm/i915/tc/icl: Implement TC cold
 sequences
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
Cc: Cooper Chiou <cooper.chiou@intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBpcyByZXF1aXJlZCBmb3IgbGVnYWN5L3N0YXRpYyBUQyBwb3J0cyBhcyBJT00gaXMgbm90
IGF3YXJlIG9mCnRoZSBjb25uZWN0aW9uIGFuZCB3aWxsIG5vdCB0cmlnZ2VyIHRoZSBUQyBjb2xk
IGV4aXQuCgpKdXN0IHJlcXVlc3QgUENPREUgdG8gZXhpdCBUQ0NPTEQgaXMgbm90IGVub3VnaCBh
cyBpdCBjb3VsZCBlbnRlcgphZ2FpbiBiZWZvcmUgZHJpdmVyIG1ha2VzIHVzZSBvZiB0aGUgcG9y
dCwgdG8gcHJldmVudCBpdCBCU3BlYyBzdGF0ZXMKdGhhdCBhdXggcG93ZXJ3ZWxsIHNob3VsZCBi
ZSBoZWxkLgoKU28gaGVyZSBlbWJlZGRpbmcgdGhlIFRDIGNvbGQgZXhpdCBzZXF1ZW5jZSBpbnRv
IElDTCBhdXggZW5hYmxlLAppdCB3aWxsIGVuYWJsZSBhdXggYW5kIHRoZW4gcmVxdWVzdCBUQyBj
b2xkIHRvIGV4aXQuCgpUaGUgVEMgY29sZCBibG9jayhleGl0IGFuZCBhdXggaG9sZCkgYW5kIHVu
YmxvY2sgd2FzIGFkZGVkIHRvIHNvbWUKZXhwb3J0ZWQgVEMgZnVuY3Rpb25zIGZvciB0aGUgb3Ro
ZXJzIGFuZCB0byBhY2Nlc3MgUEhZIHJlZ2lzdGVycywKY2FsbGVycyBzaG91bGQgZW5hYmxlIGFu
ZCBrZWVwIGF1eCBwb3dlcndlbGwgZW5hYmxlZCBkdXJpbmcgYWNjZXNzLgoKQWxzbyBhZGRpbmcg
VEMgY29sZCBjaGVjayBhbmQgd2FybmlnIGluIHRjX3BvcnRfbG9hZF9maWFfcGFyYW1zKCkgYXMK
YXQgdGhpcyBwb2ludCBvZiB0aGUgZHJpdmVyIGluaXRpYWxpemF0aW9uIHdlIGNhbid0IHJlcXVl
c3QgcG93ZXIKd2VsbHMsIGlmIHdlIGdldCB0aGlzIHdhcm5pbmcgd2Ugd2lsbCBuZWVkIHRvIGZp
Z3VyZSBvdXQgaG93IHRvIGhhbmRsZQppdC4KCnYyOgotIG1vdmVkIElDTCBUQyBjb2xkIGV4aXQg
ZnVuY3Rpb24gdG8gaW50ZWxfZGlzcGxheV9wb3dlcgotIHVzaW5nIGRpZ19wb3J0LT50Y19sZWdh
Y3lfcG9ydCB0byBvbmx5IGV4ZWN1dGUgc2VxdWVuY2VzIGZvciBsZWdhY3kKcG9ydHMsIGhvcGVm
dWxseSBWQlRzIHdpbGwgaGF2ZSB0aGlzIHJpZ2h0Ci0gZml4ZWQgY2hlY2sgdG8gY2FsbCBfaHN3
X3Bvd2VyX3dlbGxfY29udGludWVfZW5hYmxlKCkKLSBjYWxsaW5nIF9oc3dfcG93ZXJfd2VsbF9j
b250aW51ZV9lbmFibGUoKSB1bmNvbmRpdGlvbmFsbHkgaW4KaWNsX3RjX3BoeV9hdXhfcG93ZXJf
d2VsbF9lbmFibGUoKSwgaWYgbmVlZGVkIHdlIHdpbGwgc3VycHJlc3MgdGltZW91dAp3YXJuaW5n
cyBvZiBUQyBsZWdhY3kgcG9ydHMKLSBvbmx5IGJsb2NraW5nIFRDIGNvbGQgYXJvdW5kIGZpYSBh
Y2Nlc3MKCnYzOgotIGFkZGVkIHRpbWVvdXQgb2YgNW1zZWMgdG8gbm90IGxvb3AgZm9yZXZlciBp
ZgpzYW5keWJyaWRnZV9wY29kZV93cml0ZV90aW1lb3V0KCkga2VlcHMgcmV0dXJuaW5nIC1FQUdB
SU4KcmV0dXJuaW5nIC1FQUdBSU4gaW4gaW4gaWNsX3RjX2NvbGRfZXhpdCgpCi0gcmVtb3ZlZCBs
ZWZ0b3ZlciB0Y19jb2xkX3dha2VyZWYKLSBhZGRlZCBvbmUgbXNlYyBzbGVlcCB3aGVuIFBDT0RF
IHJldHVybnMgLUVBR0FJTgoKdjQ6Ci0gcmVtb3ZlZCA1bXNlYyB0aW1lb3V0LCBpbnN0ZWFkIGdp
dmluZyAxbXNlYyB0byB3aG9ldmVyIGlzIHVzaW5nClBDT0RFIHRvIGZpbmlzaCBpdCB1cCB0byAz
IHRpbWVzCi0gYWRkZWQgYSBjb21tZW50IGFib3V0IHR1cm4gVEMgY29sZCBleGl0IGZhaWx1cmUg
YXMgYSBlcnJvciBpbiBmdXR1cmUKCkJTcGVjOiAyMTc1MApGaXhlczogaHR0cHM6Ly9naXRsYWIu
ZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvMTI5NgpDYzogSW1yZSBEZWFrIDxpbXJl
LmRlYWtAaW50ZWwuY29tPgpDYzogQ29vcGVyIENoaW91IDxjb29wZXIuY2hpb3VAaW50ZWwuY29t
PgpDYzogS2FpLUhlbmcgRmVuZyA8a2FpLmhlbmcuZmVuZ0BjYW5vbmljYWwuY29tPgpTaWduZWQt
b2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0t
CiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgICAgfCAyNSArKysr
KysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jICAgICAgIHwgNjQg
KysrKysrKysrKysrKysrKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAg
ICAgICAgICAgIHwgIDEgKwogMyBmaWxlcyBjaGFuZ2VkLCA4MyBpbnNlcnRpb25zKCspLCA3IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV9wb3dlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3Bvd2VyLmMKaW5kZXggNWJlZjdkZGE0YTdhLi5lMmRkZGFmMTA1MWIgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCkBA
IC01NzUsNiArNTc1LDI4IEBAIHN0YXRpYyB2b2lkIGljbF90Y19wb3J0X2Fzc2VydF9yZWZfaGVs
ZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAKICNkZWZpbmUgVEdMX0FVWF9Q
V19UT19UQ19QT1JUKHB3X2lkeCkJKChwd19pZHgpIC0gVEdMX1BXX0NUTF9JRFhfQVVYX1RDMSkK
IAorc3RhdGljIHZvaWQgaWNsX3RjX2NvbGRfZXhpdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSkKK3sKKwlpbnQgcmV0LCB0cmllcyA9IDA7CisKKwl3aGlsZSAoMSkgeworCQlyZXQgPSBz
YW5keWJyaWRnZV9wY29kZV93cml0ZV90aW1lb3V0KGk5MTUsCisJCQkJCQkgICAgICBJQ0xfUENP
REVfRVhJVF9UQ0NPTEQsCisJCQkJCQkgICAgICAwLCAyNTAsIDEpOworCQlpZiAocmV0ICE9IC1F
QUdBSU4gfHwgKyt0cmllcyA9PSAzKQorCQkJYnJlYWs7CisJCW1zbGVlcCgxKTsKKwl9CisKKwkv
KiBTcGVjIHN0YXRlcyB0aGF0IFRDIGNvbGQgZXhpdCBjYW4gdGFrZSB1cCB0byAxbXMgdG8gY29t
cGxldGUgKi8KKwlpZiAoIXJldCkKKwkJbXNsZWVwKDEpOworCisJLyogVE9ETzogdHVybiBmYWls
dXJlIGludG8gYSBlcnJvciBhcyBzb29uIGk5MTUgQ0kgdXBkYXRlcyBJQ0wgSUZXSSAqLworCWRy
bV9kYmdfa21zKCZpOTE1LT5kcm0sICJUQyBjb2xkIGJsb2NrICVzXG4iLCByZXQgPyAiZmFpbGVk
IiA6CisJCSAgICAic3VjY2VlZGVkIik7Cit9CisKIHN0YXRpYyB2b2lkCiBpY2xfdGNfcGh5X2F1
eF9wb3dlcl93ZWxsX2VuYWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJ
CQkJIHN0cnVjdCBpOTE1X3Bvd2VyX3dlbGwgKnBvd2VyX3dlbGwpCkBAIC01OTMsNyArNjE1LDgg
QEAgaWNsX3RjX3BoeV9hdXhfcG93ZXJfd2VsbF9lbmFibGUoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2LAogCiAJaHN3X3Bvd2VyX3dlbGxfZW5hYmxlX3ByZXBhcmUoZGV2X3ByaXYs
IHBvd2VyX3dlbGwpOwogCi0JLyogVE9ETyBJQ0wgVEMgY29sZCBoYW5kbGluZyAqLworCWlmIChJ
TlRFTF9HRU4oZGV2X3ByaXYpID09IDExICYmIGRpZ19wb3J0LT50Y19sZWdhY3lfcG9ydCkKKwkJ
aWNsX3RjX2NvbGRfZXhpdChkZXZfcHJpdik7CiAKIAloc3dfcG93ZXJfd2VsbF9lbmFibGVfY29t
cGxldGUoZGV2X3ByaXYsIHBvd2VyX3dlbGwpOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3RjLmMKaW5kZXggMjc1NjE4YmVkZjMyLi4wY2YzM2Q0ZDIxYzMgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMKQEAgLTM0LDYgKzM0LDcgQEAgdGNfcG9ydF9s
b2FkX2ZpYV9wYXJhbXMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAJaWYgKElOVEVM
X0lORk8oaTkxNSktPmRpc3BsYXkuaGFzX21vZHVsYXJfZmlhKSB7CiAJCW1vZHVsYXJfZmlhID0g
aW50ZWxfdW5jb3JlX3JlYWQoJmk5MTUtPnVuY29yZSwKIAkJCQkJCVBPUlRfVFhfREZMRVhEUFNQ
KEZJQTEpKTsKKwkJZHJtX1dBUk5fT04oJmk5MTUtPmRybSwgbW9kdWxhcl9maWEgPT0gMHhmZmZm
ZmZmZik7CiAJCW1vZHVsYXJfZmlhICY9IE1PRFVMQVJfRklBX01BU0s7CiAJfSBlbHNlIHsKIAkJ
bW9kdWxhcl9maWEgPSAwOwpAQCAtNTIsNiArNTMsMzcgQEAgdGNfcG9ydF9sb2FkX2ZpYV9wYXJh
bXMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAJfQogfQogCitzdGF0aWMgaW50ZWxf
d2FrZXJlZl90Cit0Y19jb2xkX2Jsb2NrKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19w
b3J0KQoreworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShkaWdfcG9y
dC0+YmFzZS5iYXNlLmRldik7CisJZW51bSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbiBkb21h
aW47CisKKwlpZiAoSU5URUxfR0VOKGk5MTUpICE9IDExIHx8ICFkaWdfcG9ydC0+dGNfbGVnYWN5
X3BvcnQpCisJCXJldHVybiAwOworCisJZG9tYWluID0gaW50ZWxfbGVnYWN5X2F1eF90b19wb3dl
cl9kb21haW4oZGlnX3BvcnQtPmF1eF9jaCk7CisJcmV0dXJuIGludGVsX2Rpc3BsYXlfcG93ZXJf
Z2V0KGk5MTUsIGRvbWFpbik7Cit9CisKK3N0YXRpYyB2b2lkCit0Y19jb2xkX3VuYmxvY2soc3Ry
dWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQsIGludGVsX3dha2VyZWZfdCB3YWtlcmVm
KQoreworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShkaWdfcG9ydC0+
YmFzZS5iYXNlLmRldik7CisJZW51bSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbiBkb21haW47
CisKKwkvKgorCSAqIHdha2VyZWYgPT0gLTEsIG1lYW5zIHNvbWUgZXJyb3IgaGFwcGVuZWQgc2F2
aW5nIHNhdmVfZGVwb3Rfc3RhY2sgYnV0CisJICogcG93ZXIgc2hvdWxkIHN0aWxsIGJlIHB1dCBk
b3duIGFuZCAwIGlzIGEgaW52YWxpZCBzYXZlX2RlcG90X3N0YWNrCisJICogaWQgc28gY2FuIGJl
IHVzZWQgdG8gc2tpcCBpdCBmb3Igbm9uIFRDIGxlZ2FjeSBwb3J0cy4KKwkgKi8KKwlpZiAod2Fr
ZXJlZiA9PSAwKQorCQlyZXR1cm47CisKKwlkb21haW4gPSBpbnRlbF9sZWdhY3lfYXV4X3RvX3Bv
d2VyX2RvbWFpbihkaWdfcG9ydC0+YXV4X2NoKTsKKwlpbnRlbF9kaXNwbGF5X3Bvd2VyX3B1dF9h
c3luYyhpOTE1LCBkb21haW4sIHdha2VyZWYpOworfQorCiB1MzIgaW50ZWxfdGNfcG9ydF9nZXRf
bGFuZV9tYXNrKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQogewogCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShkaWdfcG9ydC0+YmFzZS5iYXNlLmRl
dik7CkBAIC00MjAsOSArNDUyLDE0IEBAIHN0YXRpYyB2b2lkIGludGVsX3RjX3BvcnRfcmVzZXRf
bW9kZShzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCwKIAllbnVtIHRjX3BvcnRf
bW9kZSBvbGRfdGNfbW9kZSA9IGRpZ19wb3J0LT50Y19tb2RlOwogCiAJaW50ZWxfZGlzcGxheV9w
b3dlcl9mbHVzaF93b3JrKGk5MTUpOwotCWRybV9XQVJOX09OKCZpOTE1LT5kcm0sCi0JCSAgICBp
bnRlbF9kaXNwbGF5X3Bvd2VyX2lzX2VuYWJsZWQoaTkxNSwKLQkJCQkJaW50ZWxfYXV4X3Bvd2Vy
X2RvbWFpbihkaWdfcG9ydCkpKTsKKwlpZiAoSU5URUxfR0VOKGk5MTUpICE9IDExIHx8ICFkaWdf
cG9ydC0+dGNfbGVnYWN5X3BvcnQpIHsKKwkJZW51bSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFp
biBhdXhfZG9tYWluOworCQlib29sIGF1eF9wb3dlcmVkOworCisJCWF1eF9kb21haW4gPSBpbnRl
bF9hdXhfcG93ZXJfZG9tYWluKGRpZ19wb3J0KTsKKwkJYXV4X3Bvd2VyZWQgPSBpbnRlbF9kaXNw
bGF5X3Bvd2VyX2lzX2VuYWJsZWQoaTkxNSwgYXV4X2RvbWFpbik7CisJCWRybV9XQVJOX09OKCZp
OTE1LT5kcm0sIGF1eF9wb3dlcmVkKTsKKwl9CiAKIAlpY2xfdGNfcGh5X2Rpc2Nvbm5lY3QoZGln
X3BvcnQpOwogCWljbF90Y19waHlfY29ubmVjdChkaWdfcG9ydCwgcmVxdWlyZWRfbGFuZXMpOwpA
QCAtNDQ1LDkgKzQ4MiwxMSBAQCB2b2lkIGludGVsX3RjX3BvcnRfc2FuaXRpemUoc3RydWN0IGlu
dGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUgPSB0b19pOTE1KGRpZ19wb3J0LT5iYXNlLmJhc2UuZGV2KTsKIAlzdHJ1Y3QgaW50ZWxf
ZW5jb2RlciAqZW5jb2RlciA9ICZkaWdfcG9ydC0+YmFzZTsKKwlpbnRlbF93YWtlcmVmX3QgdGNf
Y29sZF93cmVmOwogCWludCBhY3RpdmVfbGlua3MgPSAwOwogCiAJbXV0ZXhfbG9jaygmZGlnX3Bv
cnQtPnRjX2xvY2spOworCXRjX2NvbGRfd3JlZiA9IHRjX2NvbGRfYmxvY2soZGlnX3BvcnQpOwog
CiAJZGlnX3BvcnQtPnRjX21vZGUgPSBpbnRlbF90Y19wb3J0X2dldF9jdXJyZW50X21vZGUoZGln
X3BvcnQpOwogCWlmIChkaWdfcG9ydC0+ZHAuaXNfbXN0KQpAQCAtNDczLDYgKzUxMiw3IEBAIHZv
aWQgaW50ZWxfdGNfcG9ydF9zYW5pdGl6ZShzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdf
cG9ydCkKIAkJICAgIGRpZ19wb3J0LT50Y19wb3J0X25hbWUsCiAJCSAgICB0Y19wb3J0X21vZGVf
bmFtZShkaWdfcG9ydC0+dGNfbW9kZSkpOwogCisJdGNfY29sZF91bmJsb2NrKGRpZ19wb3J0LCB0
Y19jb2xkX3dyZWYpOwogCW11dGV4X3VubG9jaygmZGlnX3BvcnQtPnRjX2xvY2spOwogfQogCkBA
IC00OTQsMTAgKzUzNCwxNSBAQCBzdGF0aWMgYm9vbCBpbnRlbF90Y19wb3J0X25lZWRzX3Jlc2V0
KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQogYm9vbCBpbnRlbF90Y19wb3J0
X2Nvbm5lY3RlZChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkKIHsKIAlib29s
IGlzX2Nvbm5lY3RlZDsKKwlpbnRlbF93YWtlcmVmX3QgdGNfY29sZF93cmVmOwogCiAJaW50ZWxf
dGNfcG9ydF9sb2NrKGRpZ19wb3J0KTsKKwl0Y19jb2xkX3dyZWYgPSB0Y19jb2xkX2Jsb2NrKGRp
Z19wb3J0KTsKKwogCWlzX2Nvbm5lY3RlZCA9IHRjX3BvcnRfbGl2ZV9zdGF0dXNfbWFzayhkaWdf
cG9ydCkgJgogCQkgICAgICAgQklUKGRpZ19wb3J0LT50Y19tb2RlKTsKKworCXRjX2NvbGRfdW5i
bG9jayhkaWdfcG9ydCwgdGNfY29sZF93cmVmKTsKIAlpbnRlbF90Y19wb3J0X3VubG9jayhkaWdf
cG9ydCk7CiAKIAlyZXR1cm4gaXNfY29ubmVjdGVkOwpAQCAtNTEzLDkgKzU1OCwxNiBAQCBzdGF0
aWMgdm9pZCBfX2ludGVsX3RjX3BvcnRfbG9jayhzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpk
aWdfcG9ydCwKIAogCW11dGV4X2xvY2soJmRpZ19wb3J0LT50Y19sb2NrKTsKIAotCWlmICghZGln
X3BvcnQtPnRjX2xpbmtfcmVmY291bnQgJiYKLQkgICAgaW50ZWxfdGNfcG9ydF9uZWVkc19yZXNl
dChkaWdfcG9ydCkpCi0JCWludGVsX3RjX3BvcnRfcmVzZXRfbW9kZShkaWdfcG9ydCwgcmVxdWly
ZWRfbGFuZXMpOworCWlmICghZGlnX3BvcnQtPnRjX2xpbmtfcmVmY291bnQpIHsKKwkJaW50ZWxf
d2FrZXJlZl90IHRjX2NvbGRfd3JlZjsKKworCQl0Y19jb2xkX3dyZWYgPSB0Y19jb2xkX2Jsb2Nr
KGRpZ19wb3J0KTsKKworCQlpZiAoaW50ZWxfdGNfcG9ydF9uZWVkc19yZXNldChkaWdfcG9ydCkp
CisJCQlpbnRlbF90Y19wb3J0X3Jlc2V0X21vZGUoZGlnX3BvcnQsIHJlcXVpcmVkX2xhbmVzKTsK
KworCQl0Y19jb2xkX3VuYmxvY2soZGlnX3BvcnQsIHRjX2NvbGRfd3JlZik7CisJfQogCiAJZHJt
X1dBUk5fT04oJmk5MTUtPmRybSwgZGlnX3BvcnQtPnRjX2xvY2tfd2FrZXJlZik7CiAJZGlnX3Bv
cnQtPnRjX2xvY2tfd2FrZXJlZiA9IHdha2VyZWY7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRl
eCAwYjM5YjlhYmY4YTQuLmU0NjY3YWRkNzBiMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBA
IC05MTA4LDYgKzkxMDgsNyBAQCBlbnVtIHsKICNkZWZpbmUgICAgIElDTF9QQ09ERV9NRU1fU1Nf
UkVBRF9RR1ZfUE9JTlRfSU5GTyhwb2ludCkJKCgocG9pbnQpIDw8IDE2KSB8ICgweDEgPDwgOCkp
CiAjZGVmaW5lICAgR0VONl9QQ09ERV9SRUFEX0RfQ09NUAkJMHgxMAogI2RlZmluZSAgIEdFTjZf
UENPREVfV1JJVEVfRF9DT01QCQkweDExCisjZGVmaW5lICAgSUNMX1BDT0RFX0VYSVRfVENDT0xE
CQkJMHgxMgogI2RlZmluZSAgIEhTV19QQ09ERV9ERV9XUklURV9GUkVRX1JFUQkJMHgxNwogI2Rl
ZmluZSAgIERJU1BMQVlfSVBTX0NPTlRST0wJCQkweDE5CiAgICAgICAgICAgICAvKiBTZWUgYWxz
byBJUFNfQ1RMICovCi0tIAoyLjI2LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
