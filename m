Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AAC67B1AA
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 20:19:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41A7D892A6;
	Tue, 30 Jul 2019 18:19:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E3C0892A6
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 18:19:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 11:19:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,327,1559545200"; d="scan'208";a="195927553"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga004.fm.intel.com with ESMTP; 30 Jul 2019 11:19:25 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6UIJMWW026363; Tue, 30 Jul 2019 19:19:24 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jul 2019 18:19:03 +0000
Message-Id: <20190730181903.17820-4-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190730181903.17820-1-michal.wajdeczko@intel.com>
References: <20190730181903.17820-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/uc: Stop sanitizing enable_guc
 modparam
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

QXMgd2UgYWxyZWFkeSB0cmFjayBHdUMvSHVDIHVzZXMgYnkgb3RoZXIgbWVhbnMgdGhhbiBtb2Rw
YXJhbQp0aGVyZSBpcyBubyBwb2ludCBpbiBzYW5pdGl6aW5nIGl0LiBKdXN0IHNjYW4gbW9kcGFy
YW0gZm9yCm1ham9yIGRpc2NyZXBhbmNpZXMgYmV0d2VlbiB3aGF0IHdhcyByZXF1ZXN0ZWQgdnMg
YWN0dWFsLgoKU2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3pr
b0BpbnRlbC5jb20+CkNjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9z
cHVyaW9AaW50ZWwuY29tPgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYyB8IDcwICsrKysr
KystLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyks
IDUzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Vj
L2ludGVsX3VjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jCmluZGV4
IDZlYjhiYjNmYTI1Mi4uMzQyMDFkMTU2MjcxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC91Yy9pbnRlbF91Yy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2lu
dGVsX3VjLmMKQEAgLTU1LDc4ICs1NSw0MiBAQCBzdGF0aWMgaW50IF9faW50ZWxfdWNfcmVzZXRf
aHcoc3RydWN0IGludGVsX3VjICp1YykKIAlyZXR1cm4gcmV0OwogfQogCi1zdGF0aWMgaW50IF9f
Z2V0X3BsYXRmb3JtX2VuYWJsZV9ndWMoc3RydWN0IGludGVsX3VjICp1YykKK3N0YXRpYyB2b2lk
IF9fY29uZmlybV9vcHRpb25zKHN0cnVjdCBpbnRlbF91YyAqdWMpCiB7Ci0Jc3RydWN0IGludGVs
X3VjX2Z3ICpndWNfZncgPSAmdWMtPmd1Yy5mdzsKLQlzdHJ1Y3QgaW50ZWxfdWNfZncgKmh1Y19m
dyA9ICZ1Yy0+aHVjLmZ3OwotCWludCBlbmFibGVfZ3VjID0gMDsKLQotCWlmICghSEFTX0dUX1VD
KHVjX3RvX2d0KHVjKS0+aTkxNSkpCi0JCXJldHVybiAwOwotCi0JLyogV2UgZG9uJ3Qgd2FudCB0
byBlbmFibGUgR3VDL0h1QyBvbiBwcmUtR2VuMTEgYnkgZGVmYXVsdCAqLwotCWlmIChJTlRFTF9H
RU4odWNfdG9fZ3QodWMpLT5pOTE1KSA8IDExKQotCQlyZXR1cm4gMDsKLQotCWlmIChpbnRlbF91
Y19md19zdXBwb3J0ZWQoZ3VjX2Z3KSAmJiBpbnRlbF91Y19md19zdXBwb3J0ZWQoaHVjX2Z3KSkK
LQkJZW5hYmxlX2d1YyB8PSBFTkFCTEVfR1VDX0xPQURfSFVDOwotCi0JcmV0dXJuIGVuYWJsZV9n
dWM7Ci19Ci0KLS8qKgotICogc2FuaXRpemVfb3B0aW9uc19lYXJseSAtIHNhbml0aXplIHVDIHJl
bGF0ZWQgbW9kcGFyYW0gb3B0aW9ucwotICogQHVjOiB0aGUgaW50ZWxfdWMgc3RydWN0dXJlCi0g
KgotICogSW4gY2FzZSBvZiAiZW5hYmxlX2d1YyIgb3B0aW9uIHRoaXMgZnVuY3Rpb24gd2lsbCBh
dHRlbXB0IHRvIG1vZGlmeQotICogaXQgb25seSBpZiBpdCB3YXMgaW5pdGlhbGx5IHNldCB0byAi
YXV0bygtMSkiLiBEZWZhdWx0IHZhbHVlIGZvciB0aGlzCi0gKiBtb2RwYXJhbSB2YXJpZXMgYmV0
d2VlbiBwbGF0Zm9ybXMgYW5kIGl0IGlzIGhhcmRjb2RlZCBpbiBkcml2ZXIgY29kZS4KLSAqIEFu
eSBvdGhlciBtb2RwYXJhbSB2YWx1ZSBpcyBvbmx5IG1vbml0b3JlZCBhZ2FpbnN0IGF2YWlsYWJp
bGl0eSBvZiB0aGUKLSAqIHJlbGF0ZWQgaGFyZHdhcmUgb3IgZmlybXdhcmUgZGVmaW5pdGlvbnMu
Ci0gKi8KLXN0YXRpYyB2b2lkIHNhbml0aXplX29wdGlvbnNfZWFybHkoc3RydWN0IGludGVsX3Vj
ICp1YykKLXsKLQlzdHJ1Y3QgaW50ZWxfdWNfZncgKmd1Y19mdyA9ICZ1Yy0+Z3VjLmZ3OwotCXN0
cnVjdCBpbnRlbF91Y19mdyAqaHVjX2Z3ID0gJnVjLT5odWMuZnc7Ci0KLQkvKiBBIG5lZ2F0aXZl
IHZhbHVlIG1lYW5zICJ1c2UgcGxhdGZvcm0gZGVmYXVsdCIgKi8KLQlpZiAoaTkxNV9tb2RwYXJh
bXMuZW5hYmxlX2d1YyA8IDApCi0JCWk5MTVfbW9kcGFyYW1zLmVuYWJsZV9ndWMgPSBfX2dldF9w
bGF0Zm9ybV9lbmFibGVfZ3VjKHVjKTsKLQogCURSTV9ERUJVR19EUklWRVIoImVuYWJsZV9ndWM9
JWQgKHN1Ym1pc3Npb246JXMgaHVjOiVzKVxuIiwKIAkJCSBpOTE1X21vZHBhcmFtcy5lbmFibGVf
Z3VjLAogCQkJIHllc25vKGludGVsX3VjX2lzX3VzaW5nX2d1Y19zdWJtaXNzaW9uKHVjKSksCiAJ
CQkgeWVzbm8oaW50ZWxfdWNfaXNfdXNpbmdfaHVjKHVjKSkpOwogCi0JLyogVmVyaWZ5IEd1QyBm
aXJtd2FyZSBhdmFpbGFiaWxpdHkgKi8KLQlpZiAoaW50ZWxfdWNfaXNfdXNpbmdfZ3VjKHVjKSAm
JiAhaW50ZWxfdWNfZndfc3VwcG9ydGVkKGd1Y19mdykpIHsKKwlpZiAoaTkxNV9tb2RwYXJhbXMu
ZW5hYmxlX2d1YyA8IDApCisJCXJldHVybjsKKworCWlmIChpOTE1X21vZHBhcmFtcy5lbmFibGVf
Z3VjID09IDApIHsKKwkJR0VNX0JVR19PTihpbnRlbF91Y19pc191c2luZ19ndWModWMpKTsKKwkJ
R0VNX0JVR19PTihpbnRlbF91Y19pc191c2luZ19ndWNfc3VibWlzc2lvbih1YykpOworCQlHRU1f
QlVHX09OKGludGVsX3VjX2lzX3VzaW5nX2h1Yyh1YykpOworCQlyZXR1cm47CisJfQorCisJaWYg
KCFpbnRlbF91Y19pc191c2luZ19ndWModWMpKSB7CiAJCURSTV9XQVJOKCJJbmNvbXBhdGlibGUg
b3B0aW9uIGRldGVjdGVkOiBlbmFibGVfZ3VjPSVkLCAiCiAJCQkgImJ1dCBHdUMgaXMgbm90IHN1
cHBvcnRlZCFcbiIsCiAJCQkgaTkxNV9tb2RwYXJhbXMuZW5hYmxlX2d1Yyk7Ci0JCURSTV9JTkZP
KCJEaXNhYmxpbmcgR3VDL0h1QyBsb2FkaW5nIVxuIik7Ci0JCWk5MTVfbW9kcGFyYW1zLmVuYWJs
ZV9ndWMgPSAwOwogCX0KIAotCS8qIFZlcmlmeSBIdUMgZmlybXdhcmUgYXZhaWxhYmlsaXR5ICov
Ci0JaWYgKGludGVsX3VjX2lzX3VzaW5nX2h1Yyh1YykgJiYgIWludGVsX3VjX2Z3X3N1cHBvcnRl
ZChodWNfZncpKSB7CisJaWYgKGk5MTVfbW9kcGFyYW1zLmVuYWJsZV9ndWMgJiBFTkFCTEVfR1VD
X0xPQURfSFVDICYmCisJICAgICFpbnRlbF91Y19pc191c2luZ19odWModWMpKSB7CiAJCURSTV9X
QVJOKCJJbmNvbXBhdGlibGUgb3B0aW9uIGRldGVjdGVkOiBlbmFibGVfZ3VjPSVkLCAiCiAJCQkg
ImJ1dCBIdUMgaXMgbm90IHN1cHBvcnRlZCFcbiIsCiAJCQkgaTkxNV9tb2RwYXJhbXMuZW5hYmxl
X2d1Yyk7Ci0JCURSTV9JTkZPKCJEaXNhYmxpbmcgSHVDIGxvYWRpbmchXG4iKTsKLQkJaTkxNV9t
b2RwYXJhbXMuZW5hYmxlX2d1YyAmPSB+RU5BQkxFX0dVQ19MT0FEX0hVQzsKIAl9CiAKLQkvKiBY
WFg6IEd1QyBzdWJtaXNzaW9uIGlzIHVuYXZhaWxhYmxlIGZvciBub3cgKi8KLQlpZiAoaW50ZWxf
dWNfaXNfdXNpbmdfZ3VjX3N1Ym1pc3Npb24odWMpKSB7CisJaWYgKGk5MTVfbW9kcGFyYW1zLmVu
YWJsZV9ndWMgJiBFTkFCTEVfR1VDX1NVQk1JU1NJT04gJiYKKwkgICAgIWludGVsX3VjX2lzX3Vz
aW5nX2d1Y19zdWJtaXNzaW9uKHVjKSkgewogCQlEUk1fSU5GTygiSW5jb21wYXRpYmxlIG9wdGlv
biBkZXRlY3RlZDogZW5hYmxlX2d1Yz0lZCwgIgogCQkJICJidXQgR3VDIHN1Ym1pc3Npb24gaXMg
bm90IHN1cHBvcnRlZCFcbiIsCiAJCQkgaTkxNV9tb2RwYXJhbXMuZW5hYmxlX2d1Yyk7Ci0JCURS
TV9JTkZPKCJTd2l0Y2hpbmcgdG8gbm9uLUd1QyBzdWJtaXNzaW9uIG1vZGUhXG4iKTsKLQkJaTkx
NV9tb2RwYXJhbXMuZW5hYmxlX2d1YyAmPSB+RU5BQkxFX0dVQ19TVUJNSVNTSU9OOwogCX0KLQot
CS8qIE1ha2Ugc3VyZSB0aGF0IHNhbml0aXphdGlvbiB3YXMgZG9uZSAqLwotCUdFTV9CVUdfT04o
aTkxNV9tb2RwYXJhbXMuZW5hYmxlX2d1YyA8IDApOwogfQogCiB2b2lkIGludGVsX3VjX2luaXRf
ZWFybHkoc3RydWN0IGludGVsX3VjICp1YykKQEAgLTEzNCw3ICs5OCw3IEBAIHZvaWQgaW50ZWxf
dWNfaW5pdF9lYXJseShzdHJ1Y3QgaW50ZWxfdWMgKnVjKQogCWludGVsX2d1Y19pbml0X2Vhcmx5
KCZ1Yy0+Z3VjKTsKIAlpbnRlbF9odWNfaW5pdF9lYXJseSgmdWMtPmh1Yyk7CiAKLQlzYW5pdGl6
ZV9vcHRpb25zX2Vhcmx5KHVjKTsKKwlfX2NvbmZpcm1fb3B0aW9ucyh1Yyk7CiB9CiAKIHZvaWQg
aW50ZWxfdWNfY2xlYW51cF9lYXJseShzdHJ1Y3QgaW50ZWxfdWMgKnVjKQotLSAKMi4xOS4yCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
