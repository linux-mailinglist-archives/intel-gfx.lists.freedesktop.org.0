Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B778FCFC
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 10:05:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C5536EB10;
	Fri, 16 Aug 2019 08:05:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26E5B6EAF7
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 08:05:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Aug 2019 01:05:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,391,1559545200"; d="scan'208";a="184851444"
Received: from miyoungj-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.254.105.68])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Aug 2019 01:05:39 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Aug 2019 01:04:35 -0700
Message-Id: <20190816080503.28594-12-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190816080503.28594-1-lucas.demarchi@intel.com>
References: <20190816080503.28594-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/39] drm/i915/tgl: Access the right register
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
Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpGb3Ig
b2xkZXIgZ2VucyBQU1IgSUlSIGFuZCBJTVIgaGFkIGEgZml4ZWQgYWRkcmVzcyB0aGF0IHdhcyBu
b3QKcmVsYXRpdmUgdG8gYW55dGhpbmcsIGJ1dCBmcm9tIFRHTCB0aG9zZSByZWdpc3RlcnMgbW92
ZWQgdG8gZWFjaAp0cmFuc2NvZGVyIG9mZnNldC4KClNvIGhlcmUgYWRkaW5nIGEgbmV3IG1hY3Jv
IGFuZCBhIG5ldyBQU1IgaXJxIGhhbmRsZXIgd2l0aCB0aGUKdHJhbnNjb2RlciBwYXJhbWV0ZXIu
CgpDYzogRGhpbmFrYXJhbiBQYW5kaXlhbiA8ZGhpbmFrYXJhbi5wYW5kaXlhbkBpbnRlbC5jb20+
CkNjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6
IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpTaWduZWQtb2Zm
LWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgNjMgKysrKysrKysrKysrKysr
KysrLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oIHwgIDEg
KwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyAgICAgICAgICB8IDUyICsrKysrKysr
KysrKysrKystLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgfCAx
MCArKystCiA0IGZpbGVzIGNoYW5nZWQsIDEwNSBpbnNlcnRpb25zKCspLCAyMSBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwppbmRleCA0Y2RlMWI3
NWY5MDEuLjg5NGMxNzA5ZTMzMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jCkBAIC05MSwyMCArOTEsMzMgQEAgc3RhdGljIGJvb2wgaW50ZWxfcHNyMl9lbmFibGVk
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIHN0YXRpYyB2b2lkIGludGVsX3Bz
cl9pcnFfY29udHJvbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7CiAJZW51
bSB0cmFuc2NvZGVyIHRyYW5zID0gZGV2X3ByaXYtPnBzci50cmFuc2NvZGVyOwotCXUzMiB2YWws
IG1hc2s7CisJdTMyIHBzcl9lcnJvciwgcHNyX2VudHJ5LCBwc3JfZXhpdCwgbWFzaywgdmFsOwor
CWk5MTVfcmVnX3QgbWFza19yZWc7CisKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikg
eworCQlwc3JfZXJyb3IgPSBUUkFOU19QU1JfRVJST1I7CisJCXBzcl9lbnRyeSA9IFRSQU5TX1BT
Ul9QUkVfRU5UUlk7CisJCXBzcl9leGl0ID0gVFJBTlNfUFNSX1BPU1RfRVhJVDsKKwkJbWFza19y
ZWcgPSBUUkFOU19QU1JfSU1SKHRyYW5zKTsKKwl9IGVsc2UgeworCQlwc3JfZXJyb3IgPSBFRFBf
UFNSX0VSUk9SKHRyYW5zKTsKKwkJcHNyX2VudHJ5ID0gRURQX1BTUl9QUkVfRU5UUlkodHJhbnMp
OworCQlwc3JfZXhpdCA9IEVEUF9QU1JfUE9TVF9FWElUKHRyYW5zKTsKKwkJbWFza19yZWcgPSBF
RFBfUFNSX0lNUjsKKwl9CiAKLQltYXNrID0gRURQX1BTUl9FUlJPUih0cmFucyk7CisJbWFzayA9
IHBzcl9lcnJvcjsKIAlpZiAoZGV2X3ByaXYtPnBzci5kZWJ1ZyAmIEk5MTVfUFNSX0RFQlVHX0lS
USkKLQkJbWFzayB8PSBFRFBfUFNSX1BPU1RfRVhJVCh0cmFucykgfCBFRFBfUFNSX1BSRV9FTlRS
WSh0cmFucyk7CisJCW1hc2sgfD0gcHNyX2V4aXQgfCBwc3JfZW50cnk7CiAKIAkvKgogCSAqIFRP
RE86IHdoZW4gaGFuZGxpbmcgbXVsdGlwbGUgUFNSIGluc3RhbmNlcyBhIGdsb2JhbCBzcGlubG9j
ayB3aWxsIGJlCiAJICogbmVlZGVkIHRvIHN5bmNocm9uaXplIHRoZSB2YWx1ZSBvZiBzaGFyZWQg
cmVnaXN0ZXIKIAkgKi8KLQl2YWwgPSBJOTE1X1JFQUQoRURQX1BTUl9JTVIpOwotCXZhbCAmPSB+
RURQX1BTUl9UUkFOU19NQVNLKHRyYW5zKTsKKwl2YWwgPSBJOTE1X1JFQUQobWFza19yZWcpOwor
CXZhbCAmPSB+KHBzcl9lcnJvciB8IHBzcl9lbnRyeSB8IHBzcl9leGl0KTsKIAl2YWwgfD0gfm1h
c2s7Ci0JSTkxNV9XUklURShFRFBfUFNSX0lNUiwgdmFsKTsKKwlJOTE1X1dSSVRFKG1hc2tfcmVn
LCB2YWwpOwogfQogCiBzdGF0aWMgdm9pZCBwc3JfZXZlbnRfcHJpbnQodTMyIHZhbCwgYm9vbCBw
c3IyX2VuYWJsZWQpCkBAIC0xNDcsOSArMTYwLDIxIEBAIHN0YXRpYyB2b2lkIHBzcl9ldmVudF9w
cmludCh1MzIgdmFsLCBib29sIHBzcjJfZW5hYmxlZCkKIHZvaWQgaW50ZWxfcHNyX2lycV9oYW5k
bGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgdTMyIHBzcl9paXIpCiB7CiAJ
ZW51bSB0cmFuc2NvZGVyIGNwdV90cmFuc2NvZGVyID0gZGV2X3ByaXYtPnBzci50cmFuc2NvZGVy
OworCXUzMiBwc3JfZXJyb3IsIHBzcl9lbnRyeSwgcHNyX2V4aXQ7CiAJa3RpbWVfdCB0aW1lX25z
ID0gIGt0aW1lX2dldCgpOwogCi0JaWYgKHBzcl9paXIgJiBFRFBfUFNSX0VSUk9SKGNwdV90cmFu
c2NvZGVyKSkgeworCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKSB7CisJCXBzcl9lcnJv
ciA9IFRSQU5TX1BTUl9FUlJPUjsKKwkJcHNyX2VudHJ5ID0gVFJBTlNfUFNSX1BSRV9FTlRSWTsK
KwkJcHNyX2V4aXQgPSBUUkFOU19QU1JfUE9TVF9FWElUOworCX0gZWxzZSB7CisJCXBzcl9lcnJv
ciA9IEVEUF9QU1JfRVJST1IoY3B1X3RyYW5zY29kZXIpOworCQlwc3JfZW50cnkgPSBFRFBfUFNS
X1BSRV9FTlRSWShjcHVfdHJhbnNjb2Rlcik7CisJCXBzcl9leGl0ID0gRURQX1BTUl9QT1NUX0VY
SVQoY3B1X3RyYW5zY29kZXIpOworCX0KKworCWlmIChwc3JfaWlyICYgcHNyX2Vycm9yKSB7CisJ
CWk5MTVfcmVnX3QgbWFza19yZWc7CiAJCXUzMiB2YWw7CiAKIAkJRFJNX1dBUk4oIlt0cmFuc2Nv
ZGVyICVzXSBQU1IgYXV4IGVycm9yXG4iLApAQCAtMTY4LDIwICsxOTMsMjUgQEAgdm9pZCBpbnRl
bF9wc3JfaXJxX2hhbmRsZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCB1MzIg
cHNyX2lpcikKIAkJICogVE9ETzogd2hlbiBoYW5kbGluZyBtdWx0aXBsZSBQU1IgaW5zdGFuY2Vz
IGEgZ2xvYmFsIHNwaW5sb2NrCiAJCSAqIHdpbGwgYmUgbmVlZGVkIHRvIHN5bmNocm9uaXplIHRo
ZSB2YWx1ZSBvZiBzaGFyZWQgcmVnaXN0ZXIKIAkJICovCi0JCXZhbCA9IEk5MTVfUkVBRChFRFBf
UFNSX0lNUik7Ci0JCXZhbCB8PSBFRFBfUFNSX0VSUk9SKGNwdV90cmFuc2NvZGVyKTsKLQkJSTkx
NV9XUklURShFRFBfUFNSX0lNUiwgdmFsKTsKKwkJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0g
MTIpCisJCQltYXNrX3JlZyA9IFRSQU5TX1BTUl9JTVIoY3B1X3RyYW5zY29kZXIpOworCQllbHNl
CisJCQltYXNrX3JlZyA9IEVEUF9QU1JfSU1SOworCisJCXZhbCA9IEk5MTVfUkVBRChtYXNrX3Jl
Zyk7CisJCXZhbCB8PSBwc3JfZXJyb3I7CisJCUk5MTVfV1JJVEUobWFza19yZWcsIHZhbCk7CiAK
IAkJc2NoZWR1bGVfd29yaygmZGV2X3ByaXYtPnBzci53b3JrKTsKIAl9CiAKLQlpZiAocHNyX2lp
ciAmIEVEUF9QU1JfUFJFX0VOVFJZKGNwdV90cmFuc2NvZGVyKSkgeworCWlmIChwc3JfaWlyICYg
cHNyX2VudHJ5KSB7CiAJCWRldl9wcml2LT5wc3IubGFzdF9lbnRyeV9hdHRlbXB0ID0gdGltZV9u
czsKIAkJRFJNX0RFQlVHX0tNUygiW3RyYW5zY29kZXIgJXNdIFBTUiBlbnRyeSBhdHRlbXB0IGlu
IDIgdmJsYW5rc1xuIiwKIAkJCSAgICAgIHRyYW5zY29kZXJfbmFtZShjcHVfdHJhbnNjb2Rlcikp
OwogCX0KIAotCWlmIChwc3JfaWlyICYgRURQX1BTUl9QT1NUX0VYSVQoY3B1X3RyYW5zY29kZXIp
KSB7CisJaWYgKHBzcl9paXIgJiBwc3JfZXhpdCkgewogCQlkZXZfcHJpdi0+cHNyLmxhc3RfZXhp
dCA9IHRpbWVfbnM7CiAJCURSTV9ERUJVR19LTVMoIlt0cmFuc2NvZGVyICVzXSBQU1IgZXhpdCBj
b21wbGV0ZWRcbiIsCiAJCQkgICAgICB0cmFuc2NvZGVyX25hbWUoY3B1X3RyYW5zY29kZXIpKTsK
QEAgLTczNSw4ICs3NjUsMTMgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2VuYWJsZV9sb2NrZWQo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCSAqIGZpcnN0IHRpbWUgdGhhdCBQ
U1IgSFcgdHJpZXMgdG8gYWN0aXZhdGUgc28gbGV0cyBrZWVwIFBTUiBkaXNhYmxlZAogCSAqIHRv
IGF2b2lkIGFueSByZW5kZXJpbmcgcHJvYmxlbXMuCiAJICovCi0JdmFsID0gSTkxNV9SRUFEKEVE
UF9QU1JfSUlSKTsKLQl2YWwgJj0gRURQX1BTUl9FUlJPUihkZXZfcHJpdi0+cHNyLnRyYW5zY29k
ZXIpOworCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKSB7CisJCXZhbCA9IEk5MTVfUkVB
RChUUkFOU19QU1JfSUlSKGRldl9wcml2LT5wc3IudHJhbnNjb2RlcikpOworCQl2YWwgJj0gVFJB
TlNfUFNSX0VSUk9SOworCX0gZWxzZSB7CisJCXZhbCA9IEk5MTVfUkVBRChFRFBfUFNSX0lJUik7
CisJCXZhbCAmPSBFRFBfUFNSX0VSUk9SKGRldl9wcml2LT5wc3IudHJhbnNjb2Rlcik7CisJfQog
CWlmICh2YWwpIHsKIAkJZGV2X3ByaXYtPnBzci5zaW5rX25vdF9yZWxpYWJsZSA9IHRydWU7CiAJ
CURSTV9ERUJVR19LTVMoIlBTUiBpbnRlcnJ1cHRpb24gZXJyb3Igc2V0LCBub3QgZW5hYmxpbmcg
UFNSXG4iKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oCmluZGV4IDQ2
ZTRkZThiOGNkNS4uNjU3MGEyM2E2OGIyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmgKQEAgLTYsNiArNiw3IEBACiAjaWZuZGVmIF9fSU5URUxfUFNSX0hfXwogI2Rl
ZmluZSBfX0lOVEVMX1BTUl9IX18KIAorI2luY2x1ZGUgImludGVsX2Rpc3BsYXkuaCIKICNpbmNs
dWRlICJpbnRlbF9mcm9udGJ1ZmZlci5oIgogCiBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZTsKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2lycS5jCmluZGV4IDc3MzkxZDgzMjViZi4uNjAyNGE2ZWYxYzc2IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfaXJxLmMKQEAgLTI2NTUsMTEgKzI2NTUsMjIgQEAgZ2VuOF9kZV9taXNj
X2lycV9oYW5kbGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgdTMyIGlpcikK
IAl9CiAKIAlpZiAoaWlyICYgR0VOOF9ERV9FRFBfUFNSKSB7Ci0JCXUzMiBwc3JfaWlyID0gSTkx
NV9SRUFEKEVEUF9QU1JfSUlSKTsKKwkJdTMyIHBzcl9paXI7CisKKwkJaWYgKElOVEVMX0dFTihk
ZXZfcHJpdikgPj0gMTIpIHsKKwkJCWVudW0gdHJhbnNjb2RlciB0cmFucyA9IGRldl9wcml2LT5w
c3IudHJhbnNjb2RlcjsKKworCQkJcHNyX2lpciA9IEk5MTVfUkVBRChUUkFOU19QU1JfSUlSKHRy
YW5zKSk7CisJCQlJOTE1X1dSSVRFKFRSQU5TX1BTUl9JSVIodHJhbnMpLCBwc3JfaWlyKTsKKwkJ
fSBlbHNlIHsKKwkJCXBzcl9paXIgPSBJOTE1X1JFQUQoRURQX1BTUl9JSVIpOworCQkJSTkxNV9X
UklURShFRFBfUFNSX0lJUiwgcHNyX2lpcik7CisJCX0KKworCQlpZiAocHNyX2lpcikKKwkJCWZv
dW5kID0gdHJ1ZTsKIAogCQlpbnRlbF9wc3JfaXJxX2hhbmRsZXIoZGV2X3ByaXYsIHBzcl9paXIp
OwotCQlJOTE1X1dSSVRFKEVEUF9QU1JfSUlSLCBwc3JfaWlyKTsKLQkJZm91bmQgPSB0cnVlOwog
CX0KIAogCWlmICghZm91bmQpCkBAIC0zMjc5LDggKzMyOTAsMjMgQEAgc3RhdGljIHZvaWQgZ2Vu
MTFfaXJxX3Jlc2V0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAogCWludGVs
X3VuY29yZV93cml0ZSh1bmNvcmUsIEdFTjExX0RJU1BMQVlfSU5UX0NUTCwgMCk7CiAKLQlpbnRl
bF91bmNvcmVfd3JpdGUodW5jb3JlLCBFRFBfUFNSX0lNUiwgMHhmZmZmZmZmZik7Ci0JaW50ZWxf
dW5jb3JlX3dyaXRlKHVuY29yZSwgRURQX1BTUl9JSVIsIDB4ZmZmZmZmZmYpOworCWlmIChJTlRF
TF9HRU4oZGV2X3ByaXYpID49IDEyKSB7CisJCWVudW0gdHJhbnNjb2RlciB0cmFuczsKKworCQlm
b3IgKHRyYW5zID0gVFJBTlNDT0RFUl9BOyB0cmFucyA8PSBUUkFOU0NPREVSX0Q7IHRyYW5zKysp
IHsKKwkJCWVudW0gaW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW4gZG9tYWluOworCisJCQlkb21h
aW4gPSBQT1dFUl9ET01BSU5fVFJBTlNDT0RFUih0cmFucyk7CisJCQlpZiAoIWludGVsX2Rpc3Bs
YXlfcG93ZXJfaXNfZW5hYmxlZChkZXZfcHJpdiwgZG9tYWluKSkKKwkJCQljb250aW51ZTsKKwor
CQkJaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwgVFJBTlNfUFNSX0lNUih0cmFucyksIDB4ZmZm
ZmZmZmYpOworCQkJaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwgVFJBTlNfUFNSX0lJUih0cmFu
cyksIDB4ZmZmZmZmZmYpOworCQl9CisJfSBlbHNlIHsKKwkJaW50ZWxfdW5jb3JlX3dyaXRlKHVu
Y29yZSwgRURQX1BTUl9JTVIsIDB4ZmZmZmZmZmYpOworCQlpbnRlbF91bmNvcmVfd3JpdGUodW5j
b3JlLCBFRFBfUFNSX0lJUiwgMHhmZmZmZmZmZik7CisJfQogCiAJZm9yX2VhY2hfcGlwZShkZXZf
cHJpdiwgcGlwZSkKIAkJaWYgKGludGVsX2Rpc3BsYXlfcG93ZXJfaXNfZW5hYmxlZChkZXZfcHJp
diwKQEAgLTM3OTMsNyArMzgxOSwyMSBAQCBzdGF0aWMgdm9pZCBnZW44X2RlX2lycV9wb3N0aW5z
dGFsbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJZWxzZSBpZiAoSVNfQlJP
QURXRUxMKGRldl9wcml2KSkKIAkJZGVfcG9ydF9lbmFibGVzIHw9IEdFTjhfUE9SVF9EUF9BX0hP
VFBMVUc7CiAKLQlnZW4zX2Fzc2VydF9paXJfaXNfemVybyh1bmNvcmUsIEVEUF9QU1JfSUlSKTsK
KwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikgeworCQllbnVtIHRyYW5zY29kZXIgdHJh
bnM7CisKKwkJZm9yICh0cmFucyA9IFRSQU5TQ09ERVJfQTsgdHJhbnMgPD0gVFJBTlNDT0RFUl9E
OyB0cmFucysrKSB7CisJCQllbnVtIGludGVsX2Rpc3BsYXlfcG93ZXJfZG9tYWluIGRvbWFpbjsK
KworCQkJZG9tYWluID0gUE9XRVJfRE9NQUlOX1RSQU5TQ09ERVIodHJhbnMpOworCQkJaWYgKCFp
bnRlbF9kaXNwbGF5X3Bvd2VyX2lzX2VuYWJsZWQoZGV2X3ByaXYsIGRvbWFpbikpCisJCQkJY29u
dGludWU7CisKKwkJCWdlbjNfYXNzZXJ0X2lpcl9pc196ZXJvKHVuY29yZSwgVFJBTlNfUFNSX0lJ
Uih0cmFucykpOworCQl9CisJfSBlbHNlIHsKKwkJZ2VuM19hc3NlcnRfaWlyX2lzX3plcm8odW5j
b3JlLCBFRFBfUFNSX0lJUik7CisJfQogCiAJZm9yX2VhY2hfcGlwZShkZXZfcHJpdiwgcGlwZSkg
ewogCQlkZXZfcHJpdi0+ZGVfaXJxX21hc2tbcGlwZV0gPSB+ZGVfcGlwZV9tYXNrZWQ7CmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaAppbmRleCAwMjk5MDRlODE4OTEuLjA5NWRkMjcwNDRjMCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oCkBAIC00Mjg2LDcgKzQyODYsNyBAQCBlbnVtIHsKICNkZWZpbmUg
ICBFRFBfUFNSX1RQMV9USU1FXzB1cwkJCSgzIDw8IDQpCiAjZGVmaW5lICAgRURQX1BTUl9JRExF
X0ZSQU1FX1NISUZUCQkwCiAKLS8qIEJzcGVjIGNsYWltcyB0aG9zZSBhcmVuJ3Qgc2hpZnRlZCBi
dXQgc3RheSBhdCAweDY0ODAwICovCisvKiBCc3BlYyBjbGFpbXMgdGhvc2UgYXJlbid0IHNoaWZ0
ZWQgYnV0IHN0YXkgYXQgMHg2NDgwMCB1bnRpbCBUR0wgKi8KICNkZWZpbmUgRURQX1BTUl9JTVIJ
CQkJX01NSU8oMHg2NDgzNCkKICNkZWZpbmUgRURQX1BTUl9JSVIJCQkJX01NSU8oMHg2NDgzOCkK
ICNkZWZpbmUgICBfRURQX1BTUl9UUkFOU19TSElGVCh0cmFucykJCSh0cmFucyA9PSBUUkFOU0NP
REVSX0VEUCA/IDAgOiAodHJhbnMgKyAxKSAqIDgpCkBAIC00Mjk1LDYgKzQyOTUsMTQgQEAgZW51
bSB7CiAjZGVmaW5lICAgRURQX1BTUl9QT1NUX0VYSVQodHJhbnMpCQkoMHgyIDw8IF9FRFBfUFNS
X1RSQU5TX1NISUZUKHRyYW5zKSkKICNkZWZpbmUgICBFRFBfUFNSX1BSRV9FTlRSWSh0cmFucykJ
CSgweDEgPDwgX0VEUF9QU1JfVFJBTlNfU0hJRlQodHJhbnMpKQogCisjZGVmaW5lIF9QU1JfSU1S
X0EJCQkJMHg2MDgxNAorI2RlZmluZSBfUFNSX0lJUl9BCQkJCTB4NjA4MTgKKyNkZWZpbmUgVFJB
TlNfUFNSX0lNUih0cmFuKQkJCV9NTUlPX1RSQU5TMih0cmFuLCBfUFNSX0lNUl9BKSAvKiBUR0wr
ICovCisjZGVmaW5lIFRSQU5TX1BTUl9JSVIodHJhbikJCQlfTU1JT19UUkFOUzIodHJhbiwgX1BT
Ul9JSVJfQSkgLyogVEdMKyAqLworI2RlZmluZSAgIFRSQU5TX1BTUl9FUlJPUgkJCSgxIDw8IDIp
CisjZGVmaW5lICAgVFJBTlNfUFNSX1BPU1RfRVhJVAkJCSgxIDw8IDEpCisjZGVmaW5lICAgVFJB
TlNfUFNSX1BSRV9FTlRSWQkJCSgxIDw8IDApCisKICNkZWZpbmUgX1NSRF9BVVhfQ1RMX0EJCQkJ
MHg2MDgxMAogI2RlZmluZSBfU1JEX0FVWF9DVExfRURQCQkJMHg2ZjgxMAogI2RlZmluZSBFRFBf
UFNSX0FVWF9DVEwodHJhbikJCQlfTU1JTyhfUFNSX0FESih0cmFuLCBfU1JEX0FVWF9DVExfQSkp
Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
