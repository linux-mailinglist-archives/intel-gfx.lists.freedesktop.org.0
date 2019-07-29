Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E1779024
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2019 18:01:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 574E06E02F;
	Mon, 29 Jul 2019 16:01:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8540F89FCC
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2019 16:01:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jul 2019 08:23:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,323,1559545200"; d="scan'208";a="370550564"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga005.fm.intel.com with ESMTP; 29 Jul 2019 08:23:18 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6TFNFE8014113; Mon, 29 Jul 2019 16:23:17 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Jul 2019 15:23:01 +0000
Message-Id: <20190729152301.22588-5-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190729152301.22588-1-michal.wajdeczko@intel.com>
References: <20190729152301.22588-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/wopcm: Don't fail on WOPCM
 partitioning failure
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

V2Ugc2hvdWxkbid0IGltbWVkaWF0ZWx5IGZhaWwgb24gV09QQ00gcGFydGl0aW9uaW5nIG9yIHBy
b2dyYW1taW5nCmFzIHdlIHBsYW4gdG8gcmVzdG9yZSBmYWxsYmFjayBvbiBhbnkgR3VDIHJlbGF0
ZWQgZmFpbHVyZXMuCgpXaGlsZSBhcm91bmQsIGFkZCBzb21lIG1vcmUgcHJvYmUgZmFpbHVyZSBp
bmplY3Rpb25zLgoKU2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRl
Y3prb0BpbnRlbC5jb20+CkNjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFv
bG9zcHVyaW9AaW50ZWwuY29tPgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYyB8ICAzICsr
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jICAgICAgIHwgMTIgKy0tLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3dvcGNtLmMgICAgfCA2NiArKysrKysrKysrKysrKystLS0t
LS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dvcGNtLmggICAgfCAxMSArKysr
LQogNCBmaWxlcyBjaGFuZ2VkLCA1MCBpbnNlcnRpb25zKCspLCA0MiBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYwppbmRleCA5ZTExNTZjMjljYjEuLmYwOTYw
NjMxODlkNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jCkBAIC00MTAsNiAr
NDEwLDkgQEAgaW50IGludGVsX3VjX2luaXRfaHcoc3RydWN0IGludGVsX3VjICp1YykKIAogCUdF
TV9CVUdfT04oIWludGVsX3VjX2Z3X3N1cHBvcnRlZCgmZ3VjLT5mdykpOwogCisJaWYgKCFpbnRl
bF93b3BjbV9pc19yZWFkeSgmaTkxNS0+d29wY20pKQorCQlyZXR1cm4gLUVOWElPOworCiAJZ3Vj
X3Jlc2V0X2ludGVycnVwdHMoZ3VjKTsKIAogCS8qIFdhRW5hYmxldUtlcm5lbEhlYWRlclZhbGlk
Rml4OnNrbCAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKaW5kZXggYzQzN2FiNTU1NGVjLi4wMmUw
OTg2NDg1NmYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwpAQCAtMTIzOSwxMSArMTIzOSw3IEBA
IGludCBpOTE1X2dlbV9pbml0X2h3KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCQln
b3RvIG91dDsKIAl9CiAKLQlyZXQgPSBpbnRlbF93b3BjbV9pbml0X2h3KCZpOTE1LT53b3BjbSwg
Z3QpOwotCWlmIChyZXQpIHsKLQkJRFJNX0VSUk9SKCJFbmFibGluZyBXT1BDTSBmYWlsZWQgKCVk
KVxuIiwgcmV0KTsKLQkJZ290byBvdXQ7Ci0JfQorCWludGVsX3dvcGNtX2luaXRfaHcoJmk5MTUt
PndvcGNtLCBndCk7CiAKIAkvKiBXZSBjYW4ndCBlbmFibGUgY29udGV4dHMgdW50aWwgYWxsIGZp
cm13YXJlIGlzIGxvYWRlZCAqLwogCXJldCA9IGludGVsX3VjX2luaXRfaHcoJmk5MTUtPmd0LnVj
KTsKQEAgLTE0MzIsMTAgKzE0MjgsNyBAQCBpbnQgaTkxNV9nZW1faW5pdChzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJCXJldHVybiByZXQ7CiAKIAlpbnRlbF91Y19mZXRjaF9m
aXJtd2FyZXMoJmRldl9wcml2LT5ndC51Yyk7Ci0KLQlyZXQgPSBpbnRlbF93b3BjbV9pbml0KCZk
ZXZfcHJpdi0+d29wY20pOwotCWlmIChyZXQpCi0JCWdvdG8gZXJyX3VjX2Z3OworCWludGVsX3dv
cGNtX2luaXQoJmRldl9wcml2LT53b3BjbSk7CiAKIAkvKiBUaGlzIGlzIGp1c3QgYSBzZWN1cml0
eSBibGFua2V0IHRvIHBsYWNhdGUgZHJhZ29ucy4KIAkgKiBPbiBzb21lIHN5c3RlbXMsIHdlIHZl
cnkgc3BvcmFkaWNhbGx5IG9ic2VydmUgdGhhdCB0aGUgZmlyc3QgVExCcwpAQCAtMTU1OSw3ICsx
NTUyLDYgQEAgaW50IGk5MTVfZ2VtX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2KQogCWludGVsX3VuY29yZV9mb3JjZXdha2VfcHV0KCZkZXZfcHJpdi0+dW5jb3JlLCBGT1JD
RVdBS0VfQUxMKTsKIAltdXRleF91bmxvY2soJmRldl9wcml2LT5kcm0uc3RydWN0X211dGV4KTsK
IAotZXJyX3VjX2Z3OgogCWludGVsX3VjX2NsZWFudXBfZmlybXdhcmVzKCZkZXZfcHJpdi0+Z3Qu
dWMpOwogCiAJaWYgKHJldCAhPSAtRUlPKSB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF93b3BjbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd29wY20uYwpp
bmRleCBlMTczYThlNjFiZmQuLjg5YjJmZmVmODc5YSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfd29wY20uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93
b3BjbS5jCkBAIC0xMzcsNyArMTM3LDExIEBAIHN0YXRpYyBpbmxpbmUgaW50IGNoZWNrX2h3X3Jl
c3RyaWN0aW9uKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogCQkJCSAgICAgICB1MzIg
Z3VjX3dvcGNtX2Jhc2UsIHUzMiBndWNfd29wY21fc2l6ZSwKIAkJCQkgICAgICAgdTMyIGh1Y19m
d19zaXplKQogewotCWludCBlcnIgPSAwOworCWludCBlcnI7CisKKwllcnIgPSBpOTE1X2luamVj
dF9sb2FkX2Vycm9yKGk5MTUsIC1FMkJJRyk7CisJaWYgKGVycikKKwkJcmV0dXJuIGVycjsKIAog
CWlmIChJU19HRU4oaTkxNSwgOSkpCiAJCWVyciA9IGdlbjlfY2hlY2tfZHdvcmRfZ2FwKGd1Y193
b3BjbV9iYXNlLCBndWNfd29wY21fc2l6ZSk7CkBAIC0xNTYsMTIgKzE2MCwxMCBAQCBzdGF0aWMg
aW5saW5lIGludCBjaGVja19od19yZXN0cmljdGlvbihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSwKICAqIFRoaXMgZnVuY3Rpb24gd2lsbCBwYXJ0aXRpb24gV09QQ00gc3BhY2UgYmFzZWQg
b24gR3VDIGFuZCBIdUMgZmlybXdhcmUgc2l6ZXMKICAqIGFuZCB3aWxsIGFsbG9jYXRlIG1heCBy
ZW1haW5pbmcgZm9yIHVzZSBieSBHdUMuIFRoaXMgZnVuY3Rpb24gd2lsbCBhbHNvCiAgKiBlbmZv
cmNlIHBsYXRmb3JtIGRlcGVuZGVudCBoYXJkd2FyZSByZXN0cmljdGlvbnMgb24gR3VDIFdPUENN
IG9mZnNldCBhbmQKLSAqIHNpemUuIEl0IHdpbGwgZmFpbCB0aGUgV09QQ00gaW5pdCBpZiBhbnkg
b2YgdGhlc2UgY2hlY2tzIHdlcmUgZmFpbGVkLCBzbyB0aGF0Ci0gKiB0aGUgZm9sbG93aW5nIEd1
QyBmaXJtd2FyZSB1cGxvYWRpbmcgd291bGQgYmUgYWJvcnRlZC4KLSAqCi0gKiBSZXR1cm46IDAg
b24gc3VjY2Vzcywgbm9uLXplcm8gZXJyb3IgY29kZSBvbiBmYWlsdXJlLgorICogc2l6ZS4gSXQg
d2lsbCBmYWlsIHRoZSBXT1BDTSBpbml0IGlmIGFueSBvZiB0aGVzZSBjaGVja3MgZmFpbCwgc28g
dGhhdCB0aGUKKyAqIGZvbGxvd2luZyBXT1BDTSByZWdpc3RlcnMgc2V0dXAgYW5kIEd1QyBmaXJt
d2FyZSB1cGxvYWRpbmcgd291bGQgYmUgYWJvcnRlZC4KICAqLwotaW50IGludGVsX3dvcGNtX2lu
aXQoc3RydWN0IGludGVsX3dvcGNtICp3b3BjbSkKK3ZvaWQgaW50ZWxfd29wY21faW5pdChzdHJ1
Y3QgaW50ZWxfd29wY20gKndvcGNtKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
ID0gd29wY21fdG9faTkxNSh3b3BjbSk7CiAJdTMyIGd1Y19md19zaXplID0gaW50ZWxfdWNfZndf
Z2V0X3VwbG9hZF9zaXplKCZpOTE1LT5ndC51Yy5ndWMuZncpOwpAQCAtMTczLDIzICsxNzUsMjMg
QEAgaW50IGludGVsX3dvcGNtX2luaXQoc3RydWN0IGludGVsX3dvcGNtICp3b3BjbSkKIAlpbnQg
ZXJyOwogCiAJaWYgKCFVU0VTX0dVQyhpOTE1KSkKLQkJcmV0dXJuIDA7CisJCXJldHVybjsKIAog
CUdFTV9CVUdfT04oIXdvcGNtLT5zaXplKTsKIAogCWlmIChpOTE1X2luamVjdF9wcm9iZV9mYWls
dXJlKGk5MTUpKQotCQlyZXR1cm4gLUUyQklHOworCQlyZXR1cm47CiAKIAlpZiAoZ3VjX2Z3X3Np
emUgPj0gd29wY20tPnNpemUpIHsKIAkJRFJNX0VSUk9SKCJHdUMgRlcgKCV1S2lCKSBpcyB0b28g
YmlnIHRvIGZpdCBpbiBXT1BDTS4iLAogCQkJICBndWNfZndfc2l6ZSAvIDEwMjQpOwotCQlyZXR1
cm4gLUUyQklHOworCQlnb3RvIGZhaWw7CiAJfQogCiAJaWYgKGh1Y19md19zaXplID49IHdvcGNt
LT5zaXplKSB7CiAJCURSTV9FUlJPUigiSHVDIEZXICgldUtpQikgaXMgdG9vIGJpZyB0byBmaXQg
aW4gV09QQ00uIiwKIAkJCSAgaHVjX2Z3X3NpemUgLyAxMDI0KTsKLQkJcmV0dXJuIC1FMkJJRzsK
KwkJZ290byBmYWlsOwogCX0KIAogCWd1Y193b3BjbV9iYXNlID0gQUxJR04oaHVjX2Z3X3NpemUg
KyBXT1BDTV9SRVNFUlZFRF9TSVpFLApAQCAtMTk3LDcgKzE5OSw3IEBAIGludCBpbnRlbF93b3Bj
bV9pbml0KHN0cnVjdCBpbnRlbF93b3BjbSAqd29wY20pCiAJaWYgKChndWNfd29wY21fYmFzZSAr
IGN0eF9yc3ZkKSA+PSB3b3BjbS0+c2l6ZSkgewogCQlEUk1fRVJST1IoIkd1QyBXT1BDTSBiYXNl
ICgldUtpQikgaXMgdG9vIGJpZy5cbiIsCiAJCQkgIGd1Y193b3BjbV9iYXNlIC8gMTAyNCk7Ci0J
CXJldHVybiAtRTJCSUc7CisJCWdvdG8gZmFpbDsKIAl9CiAKIAlndWNfd29wY21fc2l6ZSA9IHdv
cGNtLT5zaXplIC0gZ3VjX3dvcGNtX2Jhc2UgLSBjdHhfcnN2ZDsKQEAgLTIxMSwxOCArMjEzLDE5
IEBAIGludCBpbnRlbF93b3BjbV9pbml0KHN0cnVjdCBpbnRlbF93b3BjbSAqd29wY20pCiAJCURS
TV9FUlJPUigiTmVlZCAldUtpQiBXT1BDTSBmb3IgR3VDLCAldUtpQiBhdmFpbGFibGUuXG4iLAog
CQkJICAoZ3VjX2Z3X3NpemUgKyBndWNfd29wY21fcnN2ZCkgLyAxMDI0LAogCQkJICBndWNfd29w
Y21fc2l6ZSAvIDEwMjQpOwotCQlyZXR1cm4gLUUyQklHOworCQlnb3RvIGZhaWw7CiAJfQogCiAJ
ZXJyID0gY2hlY2tfaHdfcmVzdHJpY3Rpb24oaTkxNSwgZ3VjX3dvcGNtX2Jhc2UsIGd1Y193b3Bj
bV9zaXplLAogCQkJCSAgIGh1Y19md19zaXplKTsKIAlpZiAoZXJyKQotCQlyZXR1cm4gZXJyOwor
CQlnb3RvIGZhaWw7CiAKIAl3b3BjbS0+Z3VjLmJhc2UgPSBndWNfd29wY21fYmFzZTsKIAl3b3Bj
bS0+Z3VjLnNpemUgPSBndWNfd29wY21fc2l6ZTsKLQotCXJldHVybiAwOworCXJldHVybjsKK2Zh
aWw6CisJSTkxNV9XQVJOKGk5MTUsICJXT1BDTSBwYXJ0aXRpb25pbmcgZmFpbGVkLCBHdUMgd2ls
bCBmYWlsIHRvIGxvYWQhXG4iKTsKIH0KIAogc3RhdGljIGludApAQCAtMjMxLDE0ICsyMzQsMjUg
QEAgd3JpdGVfYW5kX3ZlcmlmeShzdHJ1Y3QgaW50ZWxfZ3QgKmd0LAogewogCXN0cnVjdCBpbnRl
bF91bmNvcmUgKnVuY29yZSA9IGd0LT51bmNvcmU7CiAJdTMyIHJlZ192YWw7CisJaW50IGVycjsK
IAogCUdFTV9CVUdfT04odmFsICYgfm1hc2spOwogCisJZXJyID0gaTkxNV9pbmplY3RfbG9hZF9l
cnJvcihndC0+aTkxNSwgLUVJTyk7CisJaWYgKGVycikKKwkJcmV0dXJuIGVycjsKKwogCWludGVs
X3VuY29yZV93cml0ZSh1bmNvcmUsIHJlZywgdmFsKTsKIAogCXJlZ192YWwgPSBpbnRlbF91bmNv
cmVfcmVhZCh1bmNvcmUsIHJlZyk7CiAKLQlyZXR1cm4gKHJlZ192YWwgJiBtYXNrKSAhPSAodmFs
IHwgbG9ja2VkX2JpdCkgPyAtRUlPIDogMDsKKwlpZiAoKHJlZ192YWwgJiBtYXNrKSAhPSAodmFs
IHwgbG9ja2VkX2JpdCkpIHsKKwkJSTkxNV9XQVJOKGd0LT5pOTE1LCAiV09QQ00gcmVnaXN0ZXIg
JSN4PSUjeFxuIiwKKwkJCSAgaTkxNV9tbWlvX3JlZ19vZmZzZXQocmVnKSwgcmVnX3ZhbCk7CisJ
CXJldHVybiAtRUlPOworCX0KKworCXJldHVybiAwOwogfQogCiAvKioKQEAgLTI0OSwxOSArMjYz
LDE2IEBAIHdyaXRlX2FuZF92ZXJpZnkoc3RydWN0IGludGVsX2d0ICpndCwKICAqIFNldHVwIHRo
ZSBHdUMgV09QQ00gc2l6ZSBhbmQgb2Zmc2V0IHJlZ2lzdGVycyB3aXRoIHRoZSBjYWxjdWxhdGVk
IHZhbHVlcy4gSXQKICAqIHdpbGwgdmVyaWZ5IHRoZSByZWdpc3RlciB2YWx1ZXMgdG8gbWFrZSBz
dXJlIHRoZSByZWdpc3RlcnMgYXJlIGxvY2tlZCB3aXRoCiAgKiBjb3JyZWN0IHZhbHVlcy4KLSAq
Ci0gKiBSZXR1cm46IDAgb24gc3VjY2Vzcy4gLUVJTyBpZiByZWdpc3RlcnMgd2VyZSBsb2NrZWQg
d2l0aCBpbmNvcnJlY3QgdmFsdWVzLgogICovCi1pbnQgaW50ZWxfd29wY21faW5pdF9odyhzdHJ1
Y3QgaW50ZWxfd29wY20gKndvcGNtLCBzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQordm9pZCBpbnRlbF93
b3BjbV9pbml0X2h3KHN0cnVjdCBpbnRlbF93b3BjbSAqd29wY20sIHN0cnVjdCBpbnRlbF9ndCAq
Z3QpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB3b3BjbV90b19pOTE1KHdv
cGNtKTsKLQlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSBndC0+dW5jb3JlOwogCXUzMiBo
dWNfYWdlbnQ7CiAJdTMyIG1hc2s7CiAJaW50IGVycjsKIAotCWlmICghVVNFU19HVUMoaTkxNSkp
Ci0JCXJldHVybiAwOworCWlmICghaW50ZWxfd29wY21fZ3VjX3NpemUod29wY20pKQorCQlyZXR1
cm47CiAKIAlHRU1fQlVHX09OKCFIQVNfR1RfVUMoaTkxNSkpOwogCUdFTV9CVUdfT04oIXdvcGNt
LT5ndWMuc2l6ZSk7CkBAIC0yODEsMTQgKzI5Miw5IEBAIGludCBpbnRlbF93b3BjbV9pbml0X2h3
KHN0cnVjdCBpbnRlbF93b3BjbSAqd29wY20sIHN0cnVjdCBpbnRlbF9ndCAqZ3QpCiAJaWYgKGVy
cikKIAkJZ290byBlcnJfb3V0OwogCi0JcmV0dXJuIDA7CisJd29wY20tPnJlYWR5ID0gdHJ1ZTsK
KwlyZXR1cm47CiAKIGVycl9vdXQ6Ci0JRFJNX0VSUk9SKCJGYWlsZWQgdG8gaW5pdCBXT1BDTSBy
ZWdpc3RlcnM6XG4iKTsKLQlEUk1fRVJST1IoIkRNQV9HVUNfV09QQ01fT0ZGU0VUPSUjeFxuIiwK
LQkJICBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIERNQV9HVUNfV09QQ01fT0ZGU0VUKSk7Ci0J
RFJNX0VSUk9SKCJHVUNfV09QQ01fU0laRT0lI3hcbiIsCi0JCSAgaW50ZWxfdW5jb3JlX3JlYWQo
dW5jb3JlLCBHVUNfV09QQ01fU0laRSkpOwotCi0JcmV0dXJuIGVycjsKKwlJOTE1X1dBUk4oaTkx
NSwgIldPUENNIHByb2dyYW1taW5nIGZhaWxlZCwgR3VDIHdpbGwgZmFpbCB0byBsb2FkIVxuIik7
CiB9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93b3BjbS5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd29wY20uaAppbmRleCA1NmFhZWQ0ZDY0ZmYuLmRhZjlj
MWRiZTIwYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd29wY20uaAor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93b3BjbS5oCkBAIC0xNyw2ICsxNyw3IEBA
IHN0cnVjdCBpbnRlbF9ndDsKICAqIEBndWM6IEd1QyBXT1BDTSBSZWdpb24gaW5mby4KICAqIEBn
dWMuYmFzZTogR3VDIFdPUENNIGJhc2Ugd2hpY2ggaXMgb2Zmc2V0IGZyb20gV09QQ00gYmFzZS4K
ICAqIEBndWMuc2l6ZTogU2l6ZSBvZiB0aGUgR3VDIFdPUENNIHJlZ2lvbi4KKyAqIEByZWFkeTog
aW5kaWNhdGVzIHRoYXQgV09QQ00gcmVnaXN0ZXJzIGFyZSBjb3JyZWN0bHkgcHJvZ3JhbW1lZC4K
ICAqLwogc3RydWN0IGludGVsX3dvcGNtIHsKIAl1MzIgc2l6ZTsKQEAgLTI0LDYgKzI1LDcgQEAg
c3RydWN0IGludGVsX3dvcGNtIHsKIAkJdTMyIGJhc2U7CiAJCXUzMiBzaXplOwogCX0gZ3VjOwor
CWJvb2wgcmVhZHk7CiB9OwogCiAvKioKQEAgLTQyLDcgKzQ0LDEyIEBAIHN0YXRpYyBpbmxpbmUg
dTMyIGludGVsX3dvcGNtX2d1Y19zaXplKHN0cnVjdCBpbnRlbF93b3BjbSAqd29wY20pCiB9CiAK
IHZvaWQgaW50ZWxfd29wY21faW5pdF9lYXJseShzdHJ1Y3QgaW50ZWxfd29wY20gKndvcGNtKTsK
LWludCBpbnRlbF93b3BjbV9pbml0KHN0cnVjdCBpbnRlbF93b3BjbSAqd29wY20pOwotaW50IGlu
dGVsX3dvcGNtX2luaXRfaHcoc3RydWN0IGludGVsX3dvcGNtICp3b3BjbSwgc3RydWN0IGludGVs
X2d0ICpndCk7Cit2b2lkIGludGVsX3dvcGNtX2luaXQoc3RydWN0IGludGVsX3dvcGNtICp3b3Bj
bSk7Cit2b2lkIGludGVsX3dvcGNtX2luaXRfaHcoc3RydWN0IGludGVsX3dvcGNtICp3b3BjbSwg
c3RydWN0IGludGVsX2d0ICpndCk7CisKK3N0YXRpYyBpbmxpbmUgYm9vbCBpbnRlbF93b3BjbV9p
c19yZWFkeShzdHJ1Y3QgaW50ZWxfd29wY20gKndvcGNtKQoreworCXJldHVybiB3b3BjbS0+cmVh
ZHk7Cit9CiAKICNlbmRpZgotLSAKMi4xOS4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
