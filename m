Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 814ADA952F
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 23:34:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC50789BC2;
	Wed,  4 Sep 2019 21:34:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0BDE89BC2
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2019 21:34:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 14:34:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,468,1559545200"; d="scan'208";a="199121702"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.135])
 by fmsmga001.fm.intel.com with ESMTP; 04 Sep 2019 14:34:30 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Sep 2019 14:34:15 -0700
Message-Id: <20190904213419.27547-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190904213419.27547-1-jose.souza@intel.com>
References: <20190904213419.27547-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/6] drm/i915/tgl: Access the right register
 when handling PSR interruptions
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rm9yIG9sZGVyIGdlbnMgUFNSIElJUiBhbmQgSU1SIGhhdmUgZml4ZWQgYWRkcmVzc2VzLiBGcm9t
IFRHTCBvbndhcmRzIHRob3NlCnJlZ2lzdGVycyBtb3ZlZCB0byBlYWNoIHRyYW5zY29kZXIgb2Zm
c2V0LiBUaGUgYml0cyBmb3IgdGhlIHJlZ2lzdGVycwphcmUgZGVmaW5lZCB3aXRob3V0IGFuIG9m
ZnNldCBwZXIgdHJhbnNjb2RlciBhcyByaWdodCBub3cgd2UgaGF2ZSBvbmUKcmVnaXN0ZXIgcGVy
IHRyYW5zY29kZXIuIFNvIGFkZCBhIGZha2UgInRyYW5zX3NoaWZ0IiB3aGVuIGNhbGN1bGF0aW5n
CnRoZSBiaXRzIG9mZnNldHM6IGl0IHdpbGwgYmUgMCBmb3IgZ2VuMTIrIGFuZCBwc3IudHJhbnNj
b2RlciBvdGhlcndpc2UuCgp2MiAoTHVjYXMpOiBjaGFuZ2UgdGhlIGltcGxlbWVudGF0aW9uIHRv
IHVzZSB0cmFuc19zaGlmdCBpbnN0ZWFkIG9mCmdldHRpbmcgZWFjaCBiaXQgdmFsdWUgd2l0aCBh
IGRpZmZlcmVudCBtYWNybwoKQ2M6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KQ2M6
IERoaW5ha2FyYW4gUGFuZGl5YW4gPGRoaW5ha2FyYW4ucGFuZGl5YW5AaW50ZWwuY29tPgpDYzog
Um9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PD
qSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTog
THVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBN
YXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCA2MCArKysrKysrKysrKysrKysrKystLS0tLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgICAgICAgICAgfCA1MSArKysrKysrKysr
KysrKysrKy0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICB8IDEw
ICsrKy0KIDMgZmlsZXMgY2hhbmdlZCwgOTkgaW5zZXJ0aW9ucygrKSwgMjIgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKaW5kZXggMWQ5OWZmZWFh
MzZhLi5iM2M3ZWVmNTNiZjMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYwpAQCAtOTAsMTggKzkwLDMzIEBAIHN0YXRpYyBib29sIGludGVsX3BzcjJfZW5hYmxlZChz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAKIHN0YXRpYyB2b2lkIHBzcl9pcnFf
Y29udHJvbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7Ci0JZW51bSB0cmFu
c2NvZGVyIHRyYW5zID0gZGV2X3ByaXYtPnBzci50cmFuc2NvZGVyOwotCXUzMiB2YWwsIG1hc2s7
CisJZW51bSB0cmFuc2NvZGVyIHRyYW5zX3NoaWZ0OworCXUzMiBtYXNrLCB2YWw7CisJaTkxNV9y
ZWdfdCBpbXJfcmVnOwogCi0JbWFzayA9IEVEUF9QU1JfRVJST1IodHJhbnMpOworCS8qCisJICog
Z2VuMTIrIGhhcyByZWdpc3RlcnMgcmVsYXRpdmUgdG8gdHJhbnNjb2RlciBhbmQgb25lIHBlciB0
cmFuc2NvZGVyCisJICogdXNpbmcgdGhlIHNhbWUgYml0IGRlZmluaXRpb246IGhhbmRsZSBpdCBh
cyBUUkFOU0NPREVSX0VEUCB0byBmb3JjZQorCSAqIDAgc2hpZnQgaW4gYml0IGRlZmluaXRpb24K
KwkgKi8KKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikgeworCQl0cmFuc19zaGlmdCA9
IDA7CisJCWltcl9yZWcgPSBUUkFOU19QU1JfSU1SKGRldl9wcml2LT5wc3IudHJhbnNjb2Rlcik7
CisJfSBlbHNlIHsKKwkJdHJhbnNfc2hpZnQgPSBkZXZfcHJpdi0+cHNyLnRyYW5zY29kZXI7CisJ
CWltcl9yZWcgPSBFRFBfUFNSX0lNUjsKKwl9CisKKwltYXNrID0gRURQX1BTUl9FUlJPUih0cmFu
c19zaGlmdCk7CiAJaWYgKGRldl9wcml2LT5wc3IuZGVidWcgJiBJOTE1X1BTUl9ERUJVR19JUlEp
Ci0JCW1hc2sgfD0gRURQX1BTUl9QT1NUX0VYSVQodHJhbnMpIHwgRURQX1BTUl9QUkVfRU5UUlko
dHJhbnMpOworCQltYXNrIHw9IEVEUF9QU1JfUE9TVF9FWElUKHRyYW5zX3NoaWZ0KSB8CisJCQlF
RFBfUFNSX1BSRV9FTlRSWSh0cmFuc19zaGlmdCk7CiAKIAkvKiBXYXJuaW5nOiBpdCBpcyBtYXNr
aW5nL3NldHRpbmcgcmVzZXJ2ZWQgYml0cyB0b28gKi8KLQl2YWwgPSBJOTE1X1JFQUQoRURQX1BT
Ul9JTVIpOwotCXZhbCAmPSB+RURQX1BTUl9UUkFOU19NQVNLKHRyYW5zKTsKKwl2YWwgPSBJOTE1
X1JFQUQoaW1yX3JlZyk7CisJdmFsICY9IH5FRFBfUFNSX1RSQU5TX01BU0sodHJhbnNfc2hpZnQp
OwogCXZhbCB8PSB+bWFzazsKLQlJOTE1X1dSSVRFKEVEUF9QU1JfSU1SLCB2YWwpOworCUk5MTVf
V1JJVEUoaW1yX3JlZywgdmFsKTsKIH0KIAogc3RhdGljIHZvaWQgcHNyX2V2ZW50X3ByaW50KHUz
MiB2YWwsIGJvb2wgcHNyMl9lbmFibGVkKQpAQCAtMTQ0LDE1ICsxNTksMjUgQEAgc3RhdGljIHZv
aWQgcHNyX2V2ZW50X3ByaW50KHUzMiB2YWwsIGJvb2wgcHNyMl9lbmFibGVkKQogdm9pZCBpbnRl
bF9wc3JfaXJxX2hhbmRsZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCB1MzIg
cHNyX2lpcikKIHsKIAllbnVtIHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIgPSBkZXZfcHJpdi0+
cHNyLnRyYW5zY29kZXI7CisJZW51bSB0cmFuc2NvZGVyIHRyYW5zX3NoaWZ0OworCWk5MTVfcmVn
X3QgaW1yX3JlZzsKIAlrdGltZV90IHRpbWVfbnMgPSAga3RpbWVfZ2V0KCk7CiAKLQlpZiAocHNy
X2lpciAmIEVEUF9QU1JfUFJFX0VOVFJZKGNwdV90cmFuc2NvZGVyKSkgeworCWlmIChJTlRFTF9H
RU4oZGV2X3ByaXYpID49IDEyKSB7CisJCXRyYW5zX3NoaWZ0ID0gMDsKKwkJaW1yX3JlZyA9IFRS
QU5TX1BTUl9JTVIoZGV2X3ByaXYtPnBzci50cmFuc2NvZGVyKTsKKwl9IGVsc2UgeworCQl0cmFu
c19zaGlmdCA9IGRldl9wcml2LT5wc3IudHJhbnNjb2RlcjsKKwkJaW1yX3JlZyA9IEVEUF9QU1Jf
SU1SOworCX0KKworCWlmIChwc3JfaWlyICYgRURQX1BTUl9QUkVfRU5UUlkodHJhbnNfc2hpZnQp
KSB7CiAJCWRldl9wcml2LT5wc3IubGFzdF9lbnRyeV9hdHRlbXB0ID0gdGltZV9uczsKIAkJRFJN
X0RFQlVHX0tNUygiW3RyYW5zY29kZXIgJXNdIFBTUiBlbnRyeSBhdHRlbXB0IGluIDIgdmJsYW5r
c1xuIiwKIAkJCSAgICAgIHRyYW5zY29kZXJfbmFtZShjcHVfdHJhbnNjb2RlcikpOwogCX0KIAot
CWlmIChwc3JfaWlyICYgRURQX1BTUl9QT1NUX0VYSVQoY3B1X3RyYW5zY29kZXIpKSB7CisJaWYg
KHBzcl9paXIgJiBFRFBfUFNSX1BPU1RfRVhJVCh0cmFuc19zaGlmdCkpIHsKIAkJZGV2X3ByaXYt
PnBzci5sYXN0X2V4aXQgPSB0aW1lX25zOwogCQlEUk1fREVCVUdfS01TKCJbdHJhbnNjb2RlciAl
c10gUFNSIGV4aXQgY29tcGxldGVkXG4iLAogCQkJICAgICAgdHJhbnNjb2Rlcl9uYW1lKGNwdV90
cmFuc2NvZGVyKSk7CkBAIC0xNjYsNyArMTkxLDcgQEAgdm9pZCBpbnRlbF9wc3JfaXJxX2hhbmRs
ZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCB1MzIgcHNyX2lpcikKIAkJfQog
CX0KIAotCWlmIChwc3JfaWlyICYgRURQX1BTUl9FUlJPUihjcHVfdHJhbnNjb2RlcikpIHsKKwlp
ZiAocHNyX2lpciAmIEVEUF9QU1JfRVJST1IodHJhbnNfc2hpZnQpKSB7CiAJCXUzMiB2YWw7CiAK
IAkJRFJNX1dBUk4oIlt0cmFuc2NvZGVyICVzXSBQU1IgYXV4IGVycm9yXG4iLApAQCAtMTgyLDkg
KzIwNyw5IEBAIHZvaWQgaW50ZWxfcHNyX2lycV9oYW5kbGVyKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiwgdTMyIHBzcl9paXIpCiAJCSAqIGFnYWluIHNvIHdlIGRvbid0IGNhcmUg
YWJvdXQgdW5tYXNrIHRoZSBpbnRlcnJ1cHRpb24KIAkJICogb3IgdW5zZXQgaXJxX2F1eF9lcnJv
ci4KIAkJICovCi0JCXZhbCA9IEk5MTVfUkVBRChFRFBfUFNSX0lNUik7Ci0JCXZhbCB8PSBFRFBf
UFNSX0VSUk9SKGNwdV90cmFuc2NvZGVyKTsKLQkJSTkxNV9XUklURShFRFBfUFNSX0lNUiwgdmFs
KTsKKwkJdmFsID0gSTkxNV9SRUFEKGltcl9yZWcpOworCQl2YWwgfD0gRURQX1BTUl9FUlJPUih0
cmFuc19zaGlmdCk7CisJCUk5MTVfV1JJVEUoaW1yX3JlZywgdmFsKTsKIAogCQlzY2hlZHVsZV93
b3JrKCZkZXZfcHJpdi0+cHNyLndvcmspOwogCX0KQEAgLTczMSw4ICs3NTYsMTMgQEAgc3RhdGlj
IHZvaWQgaW50ZWxfcHNyX2VuYWJsZV9sb2NrZWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LAogCSAqIGZpcnN0IHRpbWUgdGhhdCBQU1IgSFcgdHJpZXMgdG8gYWN0aXZhdGUgc28g
bGV0cyBrZWVwIFBTUiBkaXNhYmxlZAogCSAqIHRvIGF2b2lkIGFueSByZW5kZXJpbmcgcHJvYmxl
bXMuCiAJICovCi0JdmFsID0gSTkxNV9SRUFEKEVEUF9QU1JfSUlSKTsKLQl2YWwgJj0gRURQX1BT
Ul9FUlJPUihkZXZfcHJpdi0+cHNyLnRyYW5zY29kZXIpOworCWlmIChJTlRFTF9HRU4oZGV2X3By
aXYpID49IDEyKSB7CisJCXZhbCA9IEk5MTVfUkVBRChUUkFOU19QU1JfSUlSKGRldl9wcml2LT5w
c3IudHJhbnNjb2RlcikpOworCQl2YWwgJj0gRURQX1BTUl9FUlJPUigwKTsKKwl9IGVsc2Ugewor
CQl2YWwgPSBJOTE1X1JFQUQoRURQX1BTUl9JSVIpOworCQl2YWwgJj0gRURQX1BTUl9FUlJPUihk
ZXZfcHJpdi0+cHNyLnRyYW5zY29kZXIpOworCX0KIAlpZiAodmFsKSB7CiAJCWRldl9wcml2LT5w
c3Iuc2lua19ub3RfcmVsaWFibGUgPSB0cnVlOwogCQlEUk1fREVCVUdfS01TKCJQU1IgaW50ZXJy
dXB0aW9uIGVycm9yIHNldCwgbm90IGVuYWJsaW5nIFBTUlxuIik7CmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9p
cnEuYwppbmRleCAxMzVjOWVlNTVlMDcuLmFlNzIyODAzMmQyYyAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2lycS5jCkBAIC0yNjEzLDExICsyNjEzLDIxIEBAIGdlbjhfZGVfbWlzY19pcnFfaGFuZGxlcihz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIHUzMiBpaXIpCiAJfQogCiAJaWYgKGlp
ciAmIEdFTjhfREVfRURQX1BTUikgewotCQl1MzIgcHNyX2lpciA9IEk5MTVfUkVBRChFRFBfUFNS
X0lJUik7CisJCXUzMiBwc3JfaWlyOworCQlpOTE1X3JlZ190IGlpcl9yZWc7CisKKwkJaWYgKElO
VEVMX0dFTihkZXZfcHJpdikgPj0gMTIpCisJCQlpaXJfcmVnID0gVFJBTlNfUFNSX0lJUihkZXZf
cHJpdi0+cHNyLnRyYW5zY29kZXIpOworCQllbHNlCisJCQlpaXJfcmVnID0gRURQX1BTUl9JSVI7
CisKKwkJcHNyX2lpciA9IEk5MTVfUkVBRChpaXJfcmVnKTsKKwkJSTkxNV9XUklURShpaXJfcmVn
LCBwc3JfaWlyKTsKKworCQlpZiAocHNyX2lpcikKKwkJCWZvdW5kID0gdHJ1ZTsKIAogCQlpbnRl
bF9wc3JfaXJxX2hhbmRsZXIoZGV2X3ByaXYsIHBzcl9paXIpOwotCQlJOTE1X1dSSVRFKEVEUF9Q
U1JfSUlSLCBwc3JfaWlyKTsKLQkJZm91bmQgPSB0cnVlOwogCX0KIAogCWlmICghZm91bmQpCkBA
IC0zMjMzLDggKzMyNDMsMjMgQEAgc3RhdGljIHZvaWQgZ2VuMTFfaXJxX3Jlc2V0KHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAogCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUs
IEdFTjExX0RJU1BMQVlfSU5UX0NUTCwgMCk7CiAKLQlpbnRlbF91bmNvcmVfd3JpdGUodW5jb3Jl
LCBFRFBfUFNSX0lNUiwgMHhmZmZmZmZmZik7Ci0JaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwg
RURQX1BTUl9JSVIsIDB4ZmZmZmZmZmYpOworCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEy
KSB7CisJCWVudW0gdHJhbnNjb2RlciB0cmFuczsKKworCQlmb3IgKHRyYW5zID0gVFJBTlNDT0RF
Ul9BOyB0cmFucyA8PSBUUkFOU0NPREVSX0Q7IHRyYW5zKyspIHsKKwkJCWVudW0gaW50ZWxfZGlz
cGxheV9wb3dlcl9kb21haW4gZG9tYWluOworCisJCQlkb21haW4gPSBQT1dFUl9ET01BSU5fVFJB
TlNDT0RFUih0cmFucyk7CisJCQlpZiAoIWludGVsX2Rpc3BsYXlfcG93ZXJfaXNfZW5hYmxlZChk
ZXZfcHJpdiwgZG9tYWluKSkKKwkJCQljb250aW51ZTsKKworCQkJaW50ZWxfdW5jb3JlX3dyaXRl
KHVuY29yZSwgVFJBTlNfUFNSX0lNUih0cmFucyksIDB4ZmZmZmZmZmYpOworCQkJaW50ZWxfdW5j
b3JlX3dyaXRlKHVuY29yZSwgVFJBTlNfUFNSX0lJUih0cmFucyksIDB4ZmZmZmZmZmYpOworCQl9
CisJfSBlbHNlIHsKKwkJaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwgRURQX1BTUl9JTVIsIDB4
ZmZmZmZmZmYpOworCQlpbnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLCBFRFBfUFNSX0lJUiwgMHhm
ZmZmZmZmZik7CisJfQogCiAJZm9yX2VhY2hfcGlwZShkZXZfcHJpdiwgcGlwZSkKIAkJaWYgKGlu
dGVsX2Rpc3BsYXlfcG93ZXJfaXNfZW5hYmxlZChkZXZfcHJpdiwKQEAgLTM3NDAsNyArMzc2NSwy
MSBAQCBzdGF0aWMgdm9pZCBnZW44X2RlX2lycV9wb3N0aW5zdGFsbChzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYpCiAJZWxzZSBpZiAoSVNfQlJPQURXRUxMKGRldl9wcml2KSkKIAkJ
ZGVfcG9ydF9lbmFibGVzIHw9IEdFTjhfUE9SVF9EUF9BX0hPVFBMVUc7CiAKLQlnZW4zX2Fzc2Vy
dF9paXJfaXNfemVybyh1bmNvcmUsIEVEUF9QU1JfSUlSKTsKKwlpZiAoSU5URUxfR0VOKGRldl9w
cml2KSA+PSAxMikgeworCQllbnVtIHRyYW5zY29kZXIgdHJhbnM7CisKKwkJZm9yICh0cmFucyA9
IFRSQU5TQ09ERVJfQTsgdHJhbnMgPD0gVFJBTlNDT0RFUl9EOyB0cmFucysrKSB7CisJCQllbnVt
IGludGVsX2Rpc3BsYXlfcG93ZXJfZG9tYWluIGRvbWFpbjsKKworCQkJZG9tYWluID0gUE9XRVJf
RE9NQUlOX1RSQU5TQ09ERVIodHJhbnMpOworCQkJaWYgKCFpbnRlbF9kaXNwbGF5X3Bvd2VyX2lz
X2VuYWJsZWQoZGV2X3ByaXYsIGRvbWFpbikpCisJCQkJY29udGludWU7CisKKwkJCWdlbjNfYXNz
ZXJ0X2lpcl9pc196ZXJvKHVuY29yZSwgVFJBTlNfUFNSX0lJUih0cmFucykpOworCQl9CisJfSBl
bHNlIHsKKwkJZ2VuM19hc3NlcnRfaWlyX2lzX3plcm8odW5jb3JlLCBFRFBfUFNSX0lJUik7CisJ
fQogCiAJZm9yX2VhY2hfcGlwZShkZXZfcHJpdiwgcGlwZSkgewogCQlkZXZfcHJpdi0+ZGVfaXJx
X21hc2tbcGlwZV0gPSB+ZGVfcGlwZV9tYXNrZWQ7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRl
eCA4MWY2ODQ1NWQ0OTIuLmRlOWU2NzllOTBiYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBA
IC00MjIyLDkgKzQyMjIsMTcgQEAgZW51bSB7CiAjZGVmaW5lICAgRURQX1BTUl9UUDFfVElNRV8w
dXMJCQkoMyA8PCA0KQogI2RlZmluZSAgIEVEUF9QU1JfSURMRV9GUkFNRV9TSElGVAkJMAogCi0v
KiBCc3BlYyBjbGFpbXMgdGhvc2UgYXJlbid0IHNoaWZ0ZWQgYnV0IHN0YXkgYXQgMHg2NDgwMCAq
LworLyoKKyAqIFVudGlsIFRHTCwgSU1SL0lJUiBhcmUgZml4ZWQgYXQgMHg2NDh4eC4gT24gVEdM
KyB0aG9zZSByZWdpc3RlcnMgYXJlIHJlbGF0aXZlCisgKiB0byB0cmFuc2NvZGVyIGFuZCBiaXRz
IGRlZmluZWQgZm9yIGVhY2ggb25lIGFzIGlmIHVzaW5nIG5vIHNoaWZ0IChpLmUuIGFzIGlmCisg
KiBpdCB3YXMgZm9yIFRSQU5TQ09ERVJfRURQKQorICovCiAjZGVmaW5lIEVEUF9QU1JfSU1SCQkJ
CV9NTUlPKDB4NjQ4MzQpCiAjZGVmaW5lIEVEUF9QU1JfSUlSCQkJCV9NTUlPKDB4NjQ4MzgpCisj
ZGVmaW5lIF9QU1JfSU1SX0EJCQkJMHg2MDgxNAorI2RlZmluZSBfUFNSX0lJUl9BCQkJCTB4NjA4
MTgKKyNkZWZpbmUgVFJBTlNfUFNSX0lNUih0cmFuKQkJCV9NTUlPX1RSQU5TMih0cmFuLCBfUFNS
X0lNUl9BKQorI2RlZmluZSBUUkFOU19QU1JfSUlSKHRyYW4pCQkJX01NSU9fVFJBTlMyKHRyYW4s
IF9QU1JfSUlSX0EpCiAjZGVmaW5lICAgX0VEUF9QU1JfVFJBTlNfU0hJRlQodHJhbnMpCQkoKHRy
YW5zKSA9PSBUUkFOU0NPREVSX0VEUCA/IFwKIAkJCQkJCSAwIDogKCh0cmFucykgLSBUUkFOU0NP
REVSX0EgKyAxKSAqIDgpCiAjZGVmaW5lICAgRURQX1BTUl9UUkFOU19NQVNLKHRyYW5zKQkJKDB4
NyA8PCBfRURQX1BTUl9UUkFOU19TSElGVCh0cmFucykpCi0tIAoyLjIzLjAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
