Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1845A8F7BC
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 01:48:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F71F6E13B;
	Thu, 15 Aug 2019 23:48:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBBC96E13B
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 23:48:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 16:48:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,391,1559545200"; d="scan'208";a="206068060"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga002.fm.intel.com with ESMTP; 15 Aug 2019 16:48:36 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.129.244])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x7FNmZIP003710; Fri, 16 Aug 2019 00:48:35 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Aug 2019 23:48:32 +0000
Message-Id: <20190815234832.28836-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/uc: Add explicit DISABLED state for
 firmware
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

V2UgcmVhbGx5IG5lZWQgdG8gaGF2ZSBzZXBhcmF0ZSBOT1RfU1VQUE9SVEVEIHN0YXRlIChmb3IK
bGFjayBvZiBoYXJkd2FyZSBzdXBwb3J0KSBhbmQgRElTQUJMRUQgc3RhdGUgKHRvIGluZGljYXRl
CnVzZXIgZGVjaXNpb24pIGFzIHdlIHdpbGwgaGF2ZSB0byB0YWtlIHNwZWNpYWwgc3RlcHMgZXZl
bgppZiBHdUMgZmlybXdhcmUgaXMgbm93IGRpc2FibGVkIGJ1dCBoYXJkd2FyZSBleGlzdHMgYW5k
CmNvdWxkIGhhdmUgYmVlbiBwcmV2aW91c2x5IHVzZWQuCgpTaWduZWQtb2ZmLWJ5OiBNaWNoYWwg
V2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KQ2M6IERhbmllbGUgQ2VyYW9s
byBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+CkNjOiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC91Yy9pbnRlbF9ndWMuaCAgICB8ICA3ICsrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF9odWMuaCAgICB8ICA3ICsrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9p
bnRlbF9odWNfZncuYyB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91
Yy5jICAgICB8IDMzICsrKysrKysrKysrKy0tLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC91Yy9pbnRlbF91Yy5oICAgICB8IDE3ICsrKysrKysrKysrLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYyAgfCAgNiArKystLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvdWMvaW50ZWxfdWNfZncuaCAgfCAyMiArKysrKysrKysrLS0tLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgIHwgIDIgKy0KIDggZmlsZXMgY2hhbmdlZCwg
NjggaW5zZXJ0aW9ucygrKSwgMjggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF9ndWMuaAppbmRleCA0OTk5ZGI5NjU2ODUuLjJiMmYwNDZkM2NjMyAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmgKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmgKQEAgLTE1NCw3ICsxNTQsMTIgQEAgc3RydWN0
IGk5MTVfdm1hICppbnRlbF9ndWNfYWxsb2NhdGVfdm1hKHN0cnVjdCBpbnRlbF9ndWMgKmd1Yywg
dTMyIHNpemUpOwogCiBzdGF0aWMgaW5saW5lIGJvb2wgaW50ZWxfZ3VjX2lzX3N1cHBvcnRlZChz
dHJ1Y3QgaW50ZWxfZ3VjICpndWMpCiB7Ci0JcmV0dXJuIGludGVsX3VjX2Z3X3N1cHBvcnRlZCgm
Z3VjLT5mdyk7CisJcmV0dXJuIGludGVsX3VjX2Z3X2lzX3N1cHBvcnRlZCgmZ3VjLT5mdyk7Cit9
CisKK3N0YXRpYyBpbmxpbmUgYm9vbCBpbnRlbF9ndWNfaXNfZW5hYmxlZChzdHJ1Y3QgaW50ZWxf
Z3VjICpndWMpCit7CisJcmV0dXJuIGludGVsX3VjX2Z3X2lzX2VuYWJsZWQoJmd1Yy0+ZncpOwog
fQogCiBzdGF0aWMgaW5saW5lIGJvb2wgaW50ZWxfZ3VjX2lzX3J1bm5pbmcoc3RydWN0IGludGVs
X2d1YyAqZ3VjKQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxf
aHVjLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9odWMuaAppbmRleCBmOGE0
NTU3YzhkNmQuLjY0NGMwNTlmZTAxZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvdWMvaW50ZWxfaHVjLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxf
aHVjLmgKQEAgLTM4LDcgKzM4LDEyIEBAIHN0YXRpYyBpbmxpbmUgaW50IGludGVsX2h1Y19zYW5p
dGl6ZShzdHJ1Y3QgaW50ZWxfaHVjICpodWMpCiAKIHN0YXRpYyBpbmxpbmUgYm9vbCBpbnRlbF9o
dWNfaXNfc3VwcG9ydGVkKHN0cnVjdCBpbnRlbF9odWMgKmh1YykKIHsKLQlyZXR1cm4gaW50ZWxf
dWNfZndfc3VwcG9ydGVkKCZodWMtPmZ3KTsKKwlyZXR1cm4gaW50ZWxfdWNfZndfaXNfc3VwcG9y
dGVkKCZodWMtPmZ3KTsKK30KKworc3RhdGljIGlubGluZSBib29sIGludGVsX2h1Y19pc19lbmFi
bGVkKHN0cnVjdCBpbnRlbF9odWMgKmh1YykKK3sKKwlyZXR1cm4gaW50ZWxfdWNfZndfaXNfZW5h
YmxlZCgmaHVjLT5mdyk7CiB9CiAKIHN0YXRpYyBpbmxpbmUgYm9vbCBpbnRlbF9odWNfaXNfYXV0
aGVudGljYXRlZChzdHJ1Y3QgaW50ZWxfaHVjICpodWMpCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9odWNfZncuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3VjL2ludGVsX2h1Y19mdy5jCmluZGV4IDk2ZmVjYTk5MzIyYS4uNzQ2MDI0ODdlZDY3IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9odWNfZncuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9odWNfZncuYwpAQCAtMzUsNyArMzUsNyBA
QCB2b2lkIGludGVsX2h1Y19md19pbml0X2Vhcmx5KHN0cnVjdCBpbnRlbF9odWMgKmh1YykKIAlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGd0LT5pOTE1OwogCiAJaW50ZWxfdWNfZndf
aW5pdF9lYXJseSgmaHVjLT5mdywgSU5URUxfVUNfRldfVFlQRV9IVUMsCi0JCQkgICAgICAgaW50
ZWxfdWNfc3VwcG9ydHNfZ3VjKHVjKSwKKwkJCSAgICAgICBpbnRlbF91Y191c2VzX2d1Yyh1Yyks
CiAJCQkgICAgICAgSU5URUxfSU5GTyhpOTE1KS0+cGxhdGZvcm0sIElOVEVMX1JFVklEKGk5MTUp
KTsKIH0KIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKaW5kZXggMGRjMmIwY2Y0
NjA0Li5iMzc1ZGI0NjhjOWMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Vj
L2ludGVsX3VjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYwpA
QCAtNDUsMTcgKzQ1LDE3IEBAIHN0YXRpYyB2b2lkIF9fY29uZmlybV9vcHRpb25zKHN0cnVjdCBp
bnRlbF91YyAqdWMpCiAJRFJNX0RFVl9ERUJVR19EUklWRVIoaTkxNS0+ZHJtLmRldiwKIAkJCSAg
ICAgImVuYWJsZV9ndWM9JWQgKGd1YzolcyBzdWJtaXNzaW9uOiVzIGh1YzolcylcbiIsCiAJCQkg
ICAgIGk5MTVfbW9kcGFyYW1zLmVuYWJsZV9ndWMsCi0JCQkgICAgIHllc25vKGludGVsX3VjX3N1
cHBvcnRzX2d1Yyh1YykpLAotCQkJICAgICB5ZXNubyhpbnRlbF91Y19zdXBwb3J0c19ndWNfc3Vi
bWlzc2lvbih1YykpLAotCQkJICAgICB5ZXNubyhpbnRlbF91Y19zdXBwb3J0c19odWModWMpKSk7
CisJCQkgICAgIHllc25vKGludGVsX3VjX3VzZXNfZ3VjKHVjKSksCisJCQkgICAgIHllc25vKGlu
dGVsX3VjX3VzZXNfZ3VjX3N1Ym1pc3Npb24odWMpKSwKKwkJCSAgICAgeWVzbm8oaW50ZWxfdWNf
dXNlc19odWModWMpKSk7CiAKIAlpZiAoaTkxNV9tb2RwYXJhbXMuZW5hYmxlX2d1YyA9PSAtMSkK
IAkJcmV0dXJuOwogCiAJaWYgKGk5MTVfbW9kcGFyYW1zLmVuYWJsZV9ndWMgPT0gMCkgewotCQlH
RU1fQlVHX09OKGludGVsX3VjX3N1cHBvcnRzX2d1Yyh1YykpOwotCQlHRU1fQlVHX09OKGludGVs
X3VjX3N1cHBvcnRzX2d1Y19zdWJtaXNzaW9uKHVjKSk7Ci0JCUdFTV9CVUdfT04oaW50ZWxfdWNf
c3VwcG9ydHNfaHVjKHVjKSk7CisJCUdFTV9CVUdfT04oaW50ZWxfdWNfdXNlc19ndWModWMpKTsK
KwkJR0VNX0JVR19PTihpbnRlbF91Y191c2VzX2d1Y19zdWJtaXNzaW9uKHVjKSk7CisJCUdFTV9C
VUdfT04oaW50ZWxfdWNfdXNlc19odWModWMpKTsKIAkJcmV0dXJuOwogCX0KIApAQCAtMjY2LDIz
ICsyNjYsMjMgQEAgdm9pZCBpbnRlbF91Y19mZXRjaF9maXJtd2FyZXMoc3RydWN0IGludGVsX3Vj
ICp1YykKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHVjX3RvX2d0KHVjKS0+aTkx
NTsKIAlpbnQgZXJyOwogCi0JaWYgKCFpbnRlbF91Y19zdXBwb3J0c19ndWModWMpKQorCWlmICgh
aW50ZWxfdWNfdXNlc19ndWModWMpKQogCQlyZXR1cm47CiAKIAllcnIgPSBpbnRlbF91Y19md19m
ZXRjaCgmdWMtPmd1Yy5mdywgaTkxNSk7CiAJaWYgKGVycikKIAkJcmV0dXJuOwogCi0JaWYgKGlu
dGVsX3VjX3N1cHBvcnRzX2h1Yyh1YykpCisJaWYgKGludGVsX3VjX3VzZXNfaHVjKHVjKSkKIAkJ
aW50ZWxfdWNfZndfZmV0Y2goJnVjLT5odWMuZncsIGk5MTUpOwogfQogCiB2b2lkIGludGVsX3Vj
X2NsZWFudXBfZmlybXdhcmVzKHN0cnVjdCBpbnRlbF91YyAqdWMpCiB7Ci0JaWYgKCFpbnRlbF91
Y19zdXBwb3J0c19ndWModWMpKQorCWlmICghaW50ZWxfdWNfdXNlc19ndWModWMpKQogCQlyZXR1
cm47CiAKLQlpZiAoaW50ZWxfdWNfc3VwcG9ydHNfaHVjKHVjKSkKKwlpZiAoaW50ZWxfdWNfdXNl
c19odWModWMpKQogCQlpbnRlbF91Y19md19jbGVhbnVwX2ZldGNoKCZ1Yy0+aHVjLmZ3KTsKIAog
CWludGVsX3VjX2Z3X2NsZWFudXBfZmV0Y2goJnVjLT5ndWMuZncpOwpAQCAtMzA0LDcgKzMwNCw3
IEBAIGludCBpbnRlbF91Y19pbml0KHN0cnVjdCBpbnRlbF91YyAqdWMpCiAJaWYgKHJldCkKIAkJ
cmV0dXJuIHJldDsKIAotCWlmIChpbnRlbF91Y19zdXBwb3J0c19odWModWMpKSB7CisJaWYgKGlu
dGVsX3VjX3VzZXNfaHVjKHVjKSkgewogCQlyZXQgPSBpbnRlbF9odWNfaW5pdChodWMpOwogCQlp
ZiAocmV0KQogCQkJZ290byBvdXRfaHVjOwpAQCAtMzI0LDcgKzMyNCw3IEBAIHZvaWQgaW50ZWxf
dWNfZmluaShzdHJ1Y3QgaW50ZWxfdWMgKnVjKQogCWlmICghaW50ZWxfdWNfc3VwcG9ydHNfZ3Vj
KHVjKSkKIAkJcmV0dXJuOwogCi0JaWYgKGludGVsX3VjX3N1cHBvcnRzX2h1Yyh1YykpCisJaWYg
KGludGVsX3VjX3VzZXNfaHVjKHVjKSkKIAkJaW50ZWxfaHVjX2ZpbmkoJnVjLT5odWMpOwogCiAJ
aW50ZWxfZ3VjX2ZpbmkoZ3VjKTsKQEAgLTM2MCw3ICszNjAsNyBAQCBzdGF0aWMgaW50IHVjX2lu
aXRfd29wY20oc3RydWN0IGludGVsX3VjICp1YykKIAlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNv
cmUgPSBndC0+dW5jb3JlOwogCXUzMiBiYXNlID0gaW50ZWxfd29wY21fZ3VjX2Jhc2UoJmd0LT5p
OTE1LT53b3BjbSk7CiAJdTMyIHNpemUgPSBpbnRlbF93b3BjbV9ndWNfc2l6ZSgmZ3QtPmk5MTUt
PndvcGNtKTsKLQl1MzIgaHVjX2FnZW50ID0gaW50ZWxfdWNfc3VwcG9ydHNfaHVjKHVjKSA/IEhV
Q19MT0FESU5HX0FHRU5UX0dVQyA6IDA7CisJdTMyIGh1Y19hZ2VudCA9IGludGVsX3VjX3VzZXNf
aHVjKHVjKSA/IEhVQ19MT0FESU5HX0FHRU5UX0dVQyA6IDA7CiAJdTMyIG1hc2s7CiAJaW50IGVy
cjsKIApAQCAtNDE3LDYgKzQxNyw5IEBAIGludCBpbnRlbF91Y19pbml0X2h3KHN0cnVjdCBpbnRl
bF91YyAqdWMpCiAJaWYgKCFpbnRlbF91Y19zdXBwb3J0c19ndWModWMpKQogCQlyZXR1cm4gMDsK
IAorCWlmICghaW50ZWxfdWNfdXNlc19ndWModWMpKQorCQlyZXR1cm4gMDsKKwogCWlmICghaW50
ZWxfdWNfZndfaXNfYXZhaWxhYmxlKCZndWMtPmZ3KSkgewogCQlyZXQgPSBpbnRlbF91Y19md19z
dGF0dXNfdG9fZXJyb3IoZ3VjLT5mdy5zdGF0dXMpOwogCQlnb3RvIGVycl9vdXQ7CkBAIC00NDQs
NyArNDQ3LDcgQEAgaW50IGludGVsX3VjX2luaXRfaHcoc3RydWN0IGludGVsX3VjICp1YykKIAkJ
aWYgKHJldCkKIAkJCWdvdG8gZXJyX291dDsKIAotCQlpZiAoaW50ZWxfdWNfc3VwcG9ydHNfaHVj
KHVjKSkgeworCQlpZiAoaW50ZWxfdWNfdXNlc19odWModWMpKSB7CiAJCQlyZXQgPSBpbnRlbF9o
dWNfZndfdXBsb2FkKGh1Yyk7CiAJCQlpZiAocmV0ICYmIGludGVsX3VjX2Z3X2lzX292ZXJyaWRk
ZW4oJmh1Yy0+ZncpKQogCQkJCWdvdG8gZXJyX291dDsKQEAgLTQ5MCw3ICs0OTMsNyBAQCBpbnQg
aW50ZWxfdWNfaW5pdF9odyhzdHJ1Y3QgaW50ZWxfdWMgKnVjKQogCQkgInN1Ym1pc3Npb24iLAog
CQkgZW5hYmxlZGRpc2FibGVkKGludGVsX3VjX3N1cHBvcnRzX2d1Y19zdWJtaXNzaW9uKHVjKSkp
OwogCi0JaWYgKGludGVsX3VjX3N1cHBvcnRzX2h1Yyh1YykpIHsKKwlpZiAoaW50ZWxfdWNfdXNl
c19odWModWMpKSB7CiAJCWRldl9pbmZvKGk5MTUtPmRybS5kZXYsICIlcyBmaXJtd2FyZSAlcyB2
ZXJzaW9uICV1LiV1ICVzOiVzXG4iLAogCQkJIGludGVsX3VjX2Z3X3R5cGVfcmVwcihJTlRFTF9V
Q19GV19UWVBFX0hVQyksCiAJCQkgaHVjLT5mdy5wYXRoLApkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Vj
L2ludGVsX3VjLmgKaW5kZXggYmZiNmY5NzU3OGE1Li4xYjk0MDRhNzVhYzAgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmgKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuaApAQCAtMzksMTQgKzM5LDI5IEBAIHN0YXRpYyBpbmxp
bmUgYm9vbCBpbnRlbF91Y19zdXBwb3J0c19ndWMoc3RydWN0IGludGVsX3VjICp1YykKIAlyZXR1
cm4gaW50ZWxfZ3VjX2lzX3N1cHBvcnRlZCgmdWMtPmd1Yyk7CiB9CiAKK3N0YXRpYyBpbmxpbmUg
Ym9vbCBpbnRlbF91Y191c2VzX2d1YyhzdHJ1Y3QgaW50ZWxfdWMgKnVjKQoreworCXJldHVybiBp
bnRlbF9ndWNfaXNfZW5hYmxlZCgmdWMtPmd1Yyk7Cit9CisKIHN0YXRpYyBpbmxpbmUgYm9vbCBp
bnRlbF91Y19zdXBwb3J0c19ndWNfc3VibWlzc2lvbihzdHJ1Y3QgaW50ZWxfdWMgKnVjKQogewog
CXJldHVybiBpbnRlbF9ndWNfaXNfc3VibWlzc2lvbl9zdXBwb3J0ZWQoJnVjLT5ndWMpOwogfQog
CitzdGF0aWMgaW5saW5lIGJvb2wgaW50ZWxfdWNfdXNlc19ndWNfc3VibWlzc2lvbihzdHJ1Y3Qg
aW50ZWxfdWMgKnVjKQoreworCXJldHVybiBpbnRlbF9ndWNfaXNfc3VibWlzc2lvbl9zdXBwb3J0
ZWQoJnVjLT5ndWMpOworfQorCiBzdGF0aWMgaW5saW5lIGJvb2wgaW50ZWxfdWNfc3VwcG9ydHNf
aHVjKHN0cnVjdCBpbnRlbF91YyAqdWMpCiB7Ci0JcmV0dXJuIGludGVsX2h1Y19pc19zdXBwb3J0
ZWQoJnVjLT5odWMpOworCXJldHVybiBpbnRlbF91Y19zdXBwb3J0c19ndWModWMpOworfQorCitz
dGF0aWMgaW5saW5lIGJvb2wgaW50ZWxfdWNfdXNlc19odWMoc3RydWN0IGludGVsX3VjICp1YykK
K3sKKwlyZXR1cm4gaW50ZWxfaHVjX2lzX2VuYWJsZWQoJnVjLT5odWMpOwogfQogCiAjZW5kaWYK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jCmluZGV4IGQwNTZlMWY0YmQ2
ZC4uY2U4MjhhZTNlYTAzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9p
bnRlbF91Y19mdy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3
LmMKQEAgLTIwNiw4ICsyMDYsMTAgQEAgdm9pZCBpbnRlbF91Y19md19pbml0X2Vhcmx5KHN0cnVj
dCBpbnRlbF91Y19mdyAqdWNfZncsCiAJCV9fdWNfZndfdXNlcl9vdmVycmlkZSh1Y19mdyk7CiAJ
fQogCi0JaW50ZWxfdWNfZndfY2hhbmdlX3N0YXR1cyh1Y19mdywgdWNfZnctPnBhdGggJiYgKnVj
X2Z3LT5wYXRoID8KKwlpbnRlbF91Y19md19jaGFuZ2Vfc3RhdHVzKHVjX2Z3LCB1Y19mdy0+cGF0
aCA/CisJCQkJICB1Y19mdy0+cGF0aCA/CiAJCQkJICBJTlRFTF9VQ19GSVJNV0FSRV9TRUxFQ1RF
RCA6CisJCQkJICBJTlRFTF9VQ19GSVJNV0FSRV9ESVNBQkxFRCA6CiAJCQkJICBJTlRFTF9VQ19G
SVJNV0FSRV9OT1RfU1VQUE9SVEVEKTsKIH0KIApAQCAtMjY1LDcgKzI2Nyw3IEBAIGludCBpbnRl
bF91Y19md19mZXRjaChzdHJ1Y3QgaW50ZWxfdWNfZncgKnVjX2Z3LCBzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSkKIAlzaXplX3Qgc2l6ZTsKIAlpbnQgZXJyOwogCi0JR0VNX0JVR19PTigh
aW50ZWxfdWNfZndfc3VwcG9ydGVkKHVjX2Z3KSk7CisJR0VNX0JVR19PTighaW50ZWxfdWNfZndf
aXNfZW5hYmxlZCh1Y19mdykpOwogCiAJZXJyID0gaTkxNV9pbmplY3RfbG9hZF9lcnJvcihpOTE1
LCAtRU5YSU8pOwogCWlmIChlcnIpCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC91Yy9pbnRlbF91Y19mdy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNf
ZncuaAppbmRleCBjZThlODMxMjhhOTUuLjQwOTI3ZDE3ZWZlMiAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC91Yy9pbnRlbF91Y19mdy5oCkBAIC0xOSw4ICsxOSw5IEBAIHN0cnVjdCBpbnRlbF9n
dDsKICNkZWZpbmUgSU5URUxfVUNfRklSTVdBUkVfVVJMICJodHRwczovL2dpdC5rZXJuZWwub3Jn
L3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9maXJtd2FyZS9saW51eC1maXJtd2FyZS5naXQvdHJl
ZS9pOTE1IgogCiBlbnVtIGludGVsX3VjX2Z3X3N0YXR1cyB7Ci0JSU5URUxfVUNfRklSTVdBUkVf
Tk9UX1NVUFBPUlRFRCA9IC0xLCAvKiBubyB1YyBIVyBvciBkaXNhYmxlZCAqLworCUlOVEVMX1VD
X0ZJUk1XQVJFX05PVF9TVVBQT1JURUQgPSAtMSwgLyogbm8gdWMgSFcgKi8KIAlJTlRFTF9VQ19G
SVJNV0FSRV9VTklOSVRJQUxJWkVEID0gMCwgLyogdXNlZCB0byBjYXRjaCBjaGVja3MgZG9uZSB0
b28gZWFybHkgKi8KKwlJTlRFTF9VQ19GSVJNV0FSRV9ESVNBQkxFRCwgLyogZGlzYWJsZWQgKi8K
IAlJTlRFTF9VQ19GSVJNV0FSRV9TRUxFQ1RFRCwgLyogc2VsZWN0ZWQgdGhlIGJsb2Igd2Ugd2Fu
dCB0byBsb2FkICovCiAJSU5URUxfVUNfRklSTVdBUkVfTUlTU0lORywgLyogYmxvYiBub3QgZm91
bmQgb24gdGhlIHN5c3RlbSAqLwogCUlOVEVMX1VDX0ZJUk1XQVJFX0VSUk9SLCAvKiBpbnZhbGlk
IGZvcm1hdCBvciB2ZXJzaW9uICovCkBAIC04NCw2ICs4NSw4IEBAIGNvbnN0IGNoYXIgKmludGVs
X3VjX2Z3X3N0YXR1c19yZXByKGVudW0gaW50ZWxfdWNfZndfc3RhdHVzIHN0YXR1cykKIAkJcmV0
dXJuICJOL0EiOwogCWNhc2UgSU5URUxfVUNfRklSTVdBUkVfVU5JTklUSUFMSVpFRDoKIAkJcmV0
dXJuICJVTklOSVRJQUxJWkVEIjsKKwljYXNlIElOVEVMX1VDX0ZJUk1XQVJFX0RJU0FCTEVEOgor
CQlyZXR1cm4gIkRJU0FCTEVEIjsKIAljYXNlIElOVEVMX1VDX0ZJUk1XQVJFX1NFTEVDVEVEOgog
CQlyZXR1cm4gIlNFTEVDVEVEIjsKIAljYXNlIElOVEVMX1VDX0ZJUk1XQVJFX01JU1NJTkc6CkBA
IC0xMDYsNyArMTA5LDkgQEAgc3RhdGljIGlubGluZSBpbnQgaW50ZWxfdWNfZndfc3RhdHVzX3Rv
X2Vycm9yKGVudW0gaW50ZWxfdWNfZndfc3RhdHVzIHN0YXR1cykKIHsKIAlzd2l0Y2ggKHN0YXR1
cykgewogCWNhc2UgSU5URUxfVUNfRklSTVdBUkVfTk9UX1NVUFBPUlRFRDoKKwkJcmV0dXJuIC1F
Tk9ERVY7CiAJY2FzZSBJTlRFTF9VQ19GSVJNV0FSRV9VTklOSVRJQUxJWkVEOgorCWNhc2UgSU5U
RUxfVUNfRklSTVdBUkVfRElTQUJMRUQ6CiAJCXJldHVybiAtRVBFUk07CiAJY2FzZSBJTlRFTF9V
Q19GSVJNV0FSRV9NSVNTSU5HOgogCQlyZXR1cm4gLUVOT0VOVDsKQEAgLTE0Miw2ICsxNDcsMTYg
QEAgX19pbnRlbF91Y19md19zdGF0dXMoc3RydWN0IGludGVsX3VjX2Z3ICp1Y19mdykKIAlyZXR1
cm4gdWNfZnctPnN0YXR1czsKIH0KIAorc3RhdGljIGlubGluZSBib29sIGludGVsX3VjX2Z3X2lz
X3N1cHBvcnRlZChzdHJ1Y3QgaW50ZWxfdWNfZncgKnVjX2Z3KQoreworCXJldHVybiBfX2ludGVs
X3VjX2Z3X3N0YXR1cyh1Y19mdykgIT0gSU5URUxfVUNfRklSTVdBUkVfTk9UX1NVUFBPUlRFRDsK
K30KKworc3RhdGljIGlubGluZSBib29sIGludGVsX3VjX2Z3X2lzX2VuYWJsZWQoc3RydWN0IGlu
dGVsX3VjX2Z3ICp1Y19mdykKK3sKKwlyZXR1cm4gX19pbnRlbF91Y19md19zdGF0dXModWNfZncp
ID4gSU5URUxfVUNfRklSTVdBUkVfRElTQUJMRUQ7Cit9CisKIHN0YXRpYyBpbmxpbmUgYm9vbCBp
bnRlbF91Y19md19pc19hdmFpbGFibGUoc3RydWN0IGludGVsX3VjX2Z3ICp1Y19mdykKIHsKIAly
ZXR1cm4gX19pbnRlbF91Y19md19zdGF0dXModWNfZncpID49IElOVEVMX1VDX0ZJUk1XQVJFX0FW
QUlMQUJMRTsKQEAgLTE1NywxMSArMTcyLDYgQEAgc3RhdGljIGlubGluZSBib29sIGludGVsX3Vj
X2Z3X2lzX3J1bm5pbmcoc3RydWN0IGludGVsX3VjX2Z3ICp1Y19mdykKIAlyZXR1cm4gX19pbnRl
bF91Y19md19zdGF0dXModWNfZncpID09IElOVEVMX1VDX0ZJUk1XQVJFX1JVTk5JTkc7CiB9CiAK
LXN0YXRpYyBpbmxpbmUgYm9vbCBpbnRlbF91Y19md19zdXBwb3J0ZWQoc3RydWN0IGludGVsX3Vj
X2Z3ICp1Y19mdykKLXsKLQlyZXR1cm4gX19pbnRlbF91Y19md19zdGF0dXModWNfZncpICE9IElO
VEVMX1VDX0ZJUk1XQVJFX05PVF9TVVBQT1JURUQ7Ci19Ci0KIHN0YXRpYyBpbmxpbmUgYm9vbCBp
bnRlbF91Y19md19pc19vdmVycmlkZGVuKGNvbnN0IHN0cnVjdCBpbnRlbF91Y19mdyAqdWNfZncp
CiB7CiAJcmV0dXJuIHVjX2Z3LT51c2VyX292ZXJyaWRkZW47CmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
aAppbmRleCBjNDQwNmE2MGYzZTQuLjdjYjcwZjYxNGVjMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5oCkBAIC0yMjE0LDcgKzIyMTQsNyBAQCBJU19TVUJQTEFURk9STShjb25zdCBzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSwKICNkZWZpbmUgSEFTX0dUX1VDKGRldl9wcml2KQkoSU5URUxf
SU5GTyhkZXZfcHJpdiktPmhhc19ndF91YykKIAogLyogSGF2aW5nIEd1QyBpcyBub3QgdGhlIHNh
bWUgYXMgdXNpbmcgR3VDICovCi0jZGVmaW5lIFVTRVNfR1VDKGRldl9wcml2KQkJaW50ZWxfdWNf
c3VwcG9ydHNfZ3VjKCYoZGV2X3ByaXYpLT5ndC51YykKKyNkZWZpbmUgVVNFU19HVUMoZGV2X3By
aXYpCQlpbnRlbF91Y191c2VzX2d1YygmKGRldl9wcml2KS0+Z3QudWMpCiAjZGVmaW5lIFVTRVNf
R1VDX1NVQk1JU1NJT04oZGV2X3ByaXYpCWludGVsX3VjX3N1cHBvcnRzX2d1Y19zdWJtaXNzaW9u
KCYoZGV2X3ByaXYpLT5ndC51YykKIAogI2RlZmluZSBIQVNfUE9PTEVEX0VVKGRldl9wcml2KQko
SU5URUxfSU5GTyhkZXZfcHJpdiktPmhhc19wb29sZWRfZXUpCi0tIAoyLjE5LjIKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
