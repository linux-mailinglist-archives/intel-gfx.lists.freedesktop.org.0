Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 304F378C52
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2019 15:08:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22F6089E8C;
	Mon, 29 Jul 2019 13:08:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A239C89E8C
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2019 13:08:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jul 2019 04:27:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,322,1559545200"; d="scan'208";a="195328489"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga004.fm.intel.com with ESMTP; 29 Jul 2019 04:27:02 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6TBR1CJ018427; Mon, 29 Jul 2019 12:27:01 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Jul 2019 11:26:12 +0000
Message-Id: <20190729112612.37476-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/uc: Don't fail on HuC firmware
 failure
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

SHVDIGlzIHVzdWFsbHkgbm90IGEgY3JpdGljYWwgY29tcG9uZW50LCBzbyB3ZSBjYW4gc2FmZWx5
IGlnbm9yZQpmaXJtd2FyZSBsb2FkIG9yIGF1dGhlbnRpY2F0aW9uIGZhaWx1cmVzIHVubGVzcyBI
dUMgd2FzIGV4cGxpY2l0bHkKcmVxdWVzdGVkIGJ5IHRoZSB1c2VyLgoKdjI6IGFkZCBjb252ZW5p
ZW50IHdheSB0byBkaXNhYmxlIGxvYWRpbmcgKENocmlzKQoKU2lnbmVkLW9mZi1ieTogTWljaGFs
IFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+CkNjOiBEYW5pZWxlIENlcmFv
bG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgpDYzogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBKb29uYXMgTGFodGluZW4gPGpvb25h
cy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4gI3YxCi0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
dWMvaW50ZWxfdWMuYyAgICB8IDggKysrKy0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Vj
L2ludGVsX3VjX2Z3LmMgfCA1ICsrKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRl
bF91Y19mdy5oIHwgNiArKysrKysKIDMgZmlsZXMgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwg
NiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9p
bnRlbF91Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYwppbmRleCBm
YWZhOWJlMWUxMmEuLjZlYjhiYjNmYTI1MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvdWMvaW50ZWxfdWMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRl
bF91Yy5jCkBAIC00MjIsNyArNDIyLDcgQEAgaW50IGludGVsX3VjX2luaXRfaHcoc3RydWN0IGlu
dGVsX3VjICp1YykKIAogCQlpZiAoaW50ZWxfdWNfaXNfdXNpbmdfaHVjKHVjKSkgewogCQkJcmV0
ID0gaW50ZWxfaHVjX2Z3X3VwbG9hZChodWMpOwotCQkJaWYgKHJldCkKKwkJCWlmIChyZXQgJiYg
aW50ZWxfdWNfZndfaXNfb3ZlcnJpZGRlbigmaHVjLT5mdykpCiAJCQkJZ290byBlcnJfb3V0Owog
CQl9CiAKQEAgLTQ0NCw5ICs0NDQsOSBAQCBpbnQgaW50ZWxfdWNfaW5pdF9odyhzdHJ1Y3QgaW50
ZWxfdWMgKnVjKQogCWlmIChyZXQpCiAJCWdvdG8gZXJyX2xvZ19jYXB0dXJlOwogCi0JaWYgKGlu
dGVsX3VjX2lzX3VzaW5nX2h1Yyh1YykpIHsKKwlpZiAoaW50ZWxfdWNfZndfaXNfbG9hZGVkKCZo
dWMtPmZ3KSkgewogCQlyZXQgPSBpbnRlbF9odWNfYXV0aChodWMpOwotCQlpZiAocmV0KQorCQlp
ZiAocmV0ICYmIGludGVsX3VjX2Z3X2lzX292ZXJyaWRkZW4oJmh1Yy0+ZncpKQogCQkJZ290byBl
cnJfY29tbXVuaWNhdGlvbjsKIAl9CiAKQEAgLTQ2NSw3ICs0NjUsNyBAQCBpbnQgaW50ZWxfdWNf
aW5pdF9odyhzdHJ1Y3QgaW50ZWxfdWMgKnVjKQogCWRldl9pbmZvKGk5MTUtPmRybS5kZXYsICJH
dUMgc3VibWlzc2lvbiAlc1xuIiwKIAkJIGVuYWJsZWRkaXNhYmxlZChpbnRlbF91Y19pc191c2lu
Z19ndWNfc3VibWlzc2lvbih1YykpKTsKIAlkZXZfaW5mbyhpOTE1LT5kcm0uZGV2LCAiSHVDICVz
XG4iLAotCQkgZW5hYmxlZGRpc2FibGVkKGludGVsX3VjX2lzX3VzaW5nX2h1Yyh1YykpKTsKKwkJ
IGVuYWJsZWRkaXNhYmxlZChpbnRlbF9odWNfaXNfYXV0aGVudGljYXRlZChodWMpKSk7CiAKIAly
ZXR1cm4gMDsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxf
dWNfZncuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMKaW5kZXgg
MGY5YmFkZjQ0ODM3Li5hYzkxZTNlZmQwMmIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMv
aW50ZWxfdWNfZncuYwpAQCAtMTQ2LDcgKzE0Niw4IEBAIF9fdWNfZndfb3ZlcnJpZGUoc3RydWN0
IGludGVsX3VjX2Z3ICp1Y19mdykKIAkJYnJlYWs7CiAJfQogCi0JcmV0dXJuIHVjX2Z3LT5wYXRo
OworCXVjX2Z3LT51c2VyX292ZXJyaWRkZW4gPSB1Y19mdy0+cGF0aDsKKwlyZXR1cm4gdWNfZnct
PnVzZXJfb3ZlcnJpZGRlbjsKIH0KIAogLyoqCkBAIC0xNzYsNyArMTc3LDcgQEAgdm9pZCBpbnRl
bF91Y19md19pbml0X2Vhcmx5KHN0cnVjdCBpbnRlbF91Y19mdyAqdWNfZncsCiAJCV9fdWNfZndf
YXV0b19zZWxlY3QodWNfZncsIElOVEVMX0lORk8oaTkxNSktPnBsYXRmb3JtLAogCQkJCSAgICBJ
TlRFTF9SRVZJRChpOTE1KSk7CiAKLQlpZiAodWNfZnctPnBhdGgpCisJaWYgKHVjX2Z3LT5wYXRo
ICYmICp1Y19mdy0+cGF0aCkKIAkJdWNfZnctPnN0YXR1cyA9IElOVEVMX1VDX0ZJUk1XQVJFX1NF
TEVDVEVEOwogCWVsc2UKIAkJdWNfZnctPnN0YXR1cyA9IElOVEVMX1VDX0ZJUk1XQVJFX05PVF9T
VVBQT1JURUQ7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91
Y19mdy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuaAppbmRleCBj
MmFiMjgwMzcxNWQuLjZiNjRiODA3MzcwMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvdWMvaW50ZWxfdWNfZncuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9p
bnRlbF91Y19mdy5oCkBAIC02MSw2ICs2MSw3IEBAIHN0cnVjdCBpbnRlbF91Y19mdyB7CiAJZW51
bSBpbnRlbF91Y19md190eXBlIHR5cGU7CiAJZW51bSBpbnRlbF91Y19md19zdGF0dXMgc3RhdHVz
OwogCWNvbnN0IGNoYXIgKnBhdGg7CisJYm9vbCB1c2VyX292ZXJyaWRkZW47CiAJc2l6ZV90IHNp
emU7CiAJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKIApAQCAtMTQxLDYgKzE0Miwx
MSBAQCBzdGF0aWMgaW5saW5lIGJvb2wgaW50ZWxfdWNfZndfc3VwcG9ydGVkKHN0cnVjdCBpbnRl
bF91Y19mdyAqdWNfZncpCiAJcmV0dXJuIF9faW50ZWxfdWNfZndfc3RhdHVzKHVjX2Z3KSAhPSBJ
TlRFTF9VQ19GSVJNV0FSRV9OT1RfU1VQUE9SVEVEOwogfQogCitzdGF0aWMgaW5saW5lIGJvb2wg
aW50ZWxfdWNfZndfaXNfb3ZlcnJpZGRlbihjb25zdCBzdHJ1Y3QgaW50ZWxfdWNfZncgKnVjX2Z3
KQoreworCXJldHVybiB1Y19mdy0+dXNlcl9vdmVycmlkZGVuOworfQorCiBzdGF0aWMgaW5saW5l
IHZvaWQgaW50ZWxfdWNfZndfc2FuaXRpemUoc3RydWN0IGludGVsX3VjX2Z3ICp1Y19mdykKIHsK
IAlpZiAoaW50ZWxfdWNfZndfaXNfbG9hZGVkKHVjX2Z3KSkKLS0gCjIuMTkuMgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
