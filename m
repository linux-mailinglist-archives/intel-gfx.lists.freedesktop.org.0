Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0DE2BA37
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2019 20:36:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F076A89A5C;
	Mon, 27 May 2019 18:36:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B750D89A5C
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2019 18:36:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 May 2019 11:36:45 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by FMSMGA003.fm.intel.com with ESMTP; 27 May 2019 11:36:43 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4RIaJDH007368; Mon, 27 May 2019 19:36:42 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 May 2019 18:36:06 +0000
Message-Id: <20190527183613.17076-11-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190527183613.17076-1-michal.wajdeczko@intel.com>
References: <20190527183613.17076-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 10/17] drm/i915/huc: New HuC status register
 for Gen11
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

R2VuMTEgZGVmaW5lcyBuZXcgcmVnaXN0ZXIgZm9yIGNoZWNraW5nIEh1QyBhdXRoZW50aWNhdGlv
biBzdGF0dXMuCkxvb2sgaW50byB0aGUgcmlnaHQgcmVnaXN0ZXIgYW5kIGJpdC4KCnYyOiB1c2Ug
cmVnL21hc2svdmFsdWUgaW5zdGVhZCBvZiBkZWRpY2F0ZWQgZnVuY3Rpb25zIChEYW5pZWxlKQoK
QlNwZWM6IDE5Njg2CgpTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2Fq
ZGVjemtvQGludGVsLmNvbT4KQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxp
bnV4LmludGVsLmNvbT4KQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4K
Q2M6IFRvbnkgWWUgPHRvbnkueWVAaW50ZWwuY29tPgpDYzogVmluYXkgQmVsZ2F1bWthciA8dmlu
YXkuYmVsZ2F1bWthckBpbnRlbC5jb20+CkNjOiBKb2huIFNwb3Rzd29vZCA8am9obi5hLnNwb3Rz
d29vZEBpbnRlbC5jb20+CkNjOiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRl
bC5jb20+ClJldmlld2VkLWJ5OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFv
bG9zcHVyaW9AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19y
ZWcuaCB8ICAzICsrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfaHVjLmMgICAgIHwgMjYg
KysrKysrKysrKysrKysrKysrKy0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2h1
Yy5oICAgICB8ICA3ICsrKysrKysKIDMgZmlsZXMgY2hhbmdlZCwgMjkgaW5zZXJ0aW9ucygrKSwg
NyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9n
dWNfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfcmVnLmgKaW5kZXggZDI2
ZGU1MTkzNTY4Li43ZWJhNjU3OTViNTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2d1Y19yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfcmVn
LmgKQEAgLTc5LDYgKzc5LDkgQEAKICNkZWZpbmUgSFVDX1NUQVRVUzIgICAgICAgICAgICAgX01N
SU8oMHhEM0IwKQogI2RlZmluZSAgIEhVQ19GV19WRVJJRklFRCAgICAgICAoMTw8NykKIAorI2Rl
ZmluZSBHRU4xMV9IVUNfS0VSTkVMX0xPQURfSU5GTwlfTU1JTygweEMxREMpCisjZGVmaW5lICAg
SFVDX0xPQURfU1VDQ0VTU0ZVTAkJICAoMSA8PCAwKQorCiAjZGVmaW5lIEdVQ19XT1BDTV9TSVpF
CQkJX01NSU8oMHhjMDUwKQogI2RlZmluZSAgIEdVQ19XT1BDTV9TSVpFX0xPQ0tFRAkJICAoMTw8
MCkKICNkZWZpbmUgICBHVUNfV09QQ01fU0laRV9TSElGVAkJMTIKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2h1Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
aHVjLmMKaW5kZXggMWZmMWZiMDE1ZTU4Li44NTcyYTA1ODhlZmMgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2h1Yy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2h1Yy5jCkBAIC0yOSw3ICsyOSwxOSBAQAogCiB2b2lkIGludGVsX2h1Y19pbml0X2Vhcmx5
KHN0cnVjdCBpbnRlbF9odWMgKmh1YykKIHsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSA9IGh1Y190b19pOTE1KGh1Yyk7CisKIAlpbnRlbF9odWNfZndfaW5pdF9lYXJseShodWMpOwor
CisJaWYgKElOVEVMX0dFTihpOTE1KSA+PSAxMSkgeworCQlodWMtPnN0YXR1cy5yZWcgPSBHRU4x
MV9IVUNfS0VSTkVMX0xPQURfSU5GTzsKKwkJaHVjLT5zdGF0dXMubWFzayA9IEhVQ19MT0FEX1NV
Q0NFU1NGVUw7CisJCWh1Yy0+c3RhdHVzLnZhbHVlID0gSFVDX0xPQURfU1VDQ0VTU0ZVTDsKKwl9
IGVsc2UgeworCQlodWMtPnN0YXR1cy5yZWcgPSBIVUNfU1RBVFVTMjsKKwkJaHVjLT5zdGF0dXMu
bWFzayA9IEhVQ19GV19WRVJJRklFRDsKKwkJaHVjLT5zdGF0dXMudmFsdWUgPSBIVUNfRldfVkVS
SUZJRUQ7CisJfQogfQogCiBpbnQgaW50ZWxfaHVjX2luaXRfbWlzYyhzdHJ1Y3QgaW50ZWxfaHVj
ICpodWMpCkBAIC0xMTAsNyArMTIyLDYgQEAgaW50IGludGVsX2h1Y19hdXRoKHN0cnVjdCBpbnRl
bF9odWMgKmh1YykKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGh1Y190b19p
OTE1KGh1Yyk7CiAJc3RydWN0IGludGVsX2d1YyAqZ3VjID0gJmk5MTUtPmd1YzsKLQl1MzIgc3Rh
dHVzOwogCWludCByZXQ7CiAKIAlpZiAoaHVjLT5mdy5sb2FkX3N0YXR1cyAhPSBJTlRFTF9VQ19G
SVJNV0FSRV9TVUNDRVNTKQpAQCAtMTI1LDEyICsxMzYsMTIgQEAgaW50IGludGVsX2h1Y19hdXRo
KHN0cnVjdCBpbnRlbF9odWMgKmh1YykKIAogCS8qIENoZWNrIGF1dGhlbnRpY2F0aW9uIHN0YXR1
cywgaXQgc2hvdWxkIGJlIGRvbmUgYnkgbm93ICovCiAJcmV0ID0gX19pbnRlbF93YWl0X2Zvcl9y
ZWdpc3RlcigmaTkxNS0+dW5jb3JlLAotCQkJCQlIVUNfU1RBVFVTMiwKLQkJCQkJSFVDX0ZXX1ZF
UklGSUVELAotCQkJCQlIVUNfRldfVkVSSUZJRUQsCi0JCQkJCTIsIDUwLCAmc3RhdHVzKTsKKwkJ
CQkJaHVjLT5zdGF0dXMucmVnLAorCQkJCQlodWMtPnN0YXR1cy5tYXNrLAorCQkJCQlodWMtPnN0
YXR1cy52YWx1ZSwKKwkJCQkJMiwgNTAsIE5VTEwpOwogCWlmIChyZXQpIHsKLQkJRFJNX0VSUk9S
KCJIdUM6IEZpcm13YXJlIG5vdCB2ZXJpZmllZCAlI3hcbiIsIHN0YXR1cyk7CisJCURSTV9FUlJP
UigiSHVDOiBGaXJtd2FyZSBub3QgdmVyaWZpZWQgJWRcbiIsIHJldCk7CiAJCWdvdG8gZmFpbDsK
IAl9CiAKQEAgLTE2NCw3ICsxNzUsOCBAQCBpbnQgaW50ZWxfaHVjX2NoZWNrX3N0YXR1cyhzdHJ1
Y3QgaW50ZWxfaHVjICpodWMpCiAJCXJldHVybiAtRU5PREVWOwogCiAJd2l0aF9pbnRlbF9ydW50
aW1lX3BtKGRldl9wcml2LCB3YWtlcmVmKQotCQlzdGF0dXMgPSBJOTE1X1JFQUQoSFVDX1NUQVRV
UzIpICYgSFVDX0ZXX1ZFUklGSUVEOworCQlzdGF0dXMgPSAoSTkxNV9SRUFEKGh1Yy0+c3RhdHVz
LnJlZykgJiBodWMtPnN0YXR1cy5tYXNrKSA9PQorCQkJICBodWMtPnN0YXR1cy52YWx1ZTsKIAog
CXJldHVybiBzdGF0dXM7CiB9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9odWMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2h1Yy5oCmluZGV4IGEwYzIxYWUw
MmE5OS4uMmE2Yzk0ZTc5ZjE3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9odWMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9odWMuaApAQCAtMjUsNiAr
MjUsNyBAQAogI2lmbmRlZiBfSU5URUxfSFVDX0hfCiAjZGVmaW5lIF9JTlRFTF9IVUNfSF8KIAor
I2luY2x1ZGUgImk5MTVfcmVnLmgiCiAjaW5jbHVkZSAiaW50ZWxfdWNfZncuaCIKICNpbmNsdWRl
ICJpbnRlbF9odWNfZncuaCIKIApAQCAtMzUsNiArMzYsMTIgQEAgc3RydWN0IGludGVsX2h1YyB7
CiAJLyogSHVDLXNwZWNpZmljIGFkZGl0aW9ucyAqLwogCXN0cnVjdCBpOTE1X3ZtYSAqcnNhX2Rh
dGE7CiAJdm9pZCAqcnNhX2RhdGFfdmFkZHI7CisKKwlzdHJ1Y3QgeworCQlpOTE1X3JlZ190IHJl
ZzsKKwkJdTMyIG1hc2s7CisJCXUzMiB2YWx1ZTsKKwl9IHN0YXR1czsKIH07CiAKIHZvaWQgaW50
ZWxfaHVjX2luaXRfZWFybHkoc3RydWN0IGludGVsX2h1YyAqaHVjKTsKLS0gCjIuMTkuMgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
