Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A387E518
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 00:01:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFC746E822;
	Thu,  1 Aug 2019 22:01:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D2E16E822
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 22:01:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Aug 2019 15:01:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,335,1559545200"; d="scan'208";a="174753268"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga007.fm.intel.com with ESMTP; 01 Aug 2019 15:01:41 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.130.21])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x71M1diG001671
 for <intel-gfx@lists.freedesktop.org>; Thu, 1 Aug 2019 23:01:40 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Aug 2019 22:01:38 +0000
Message-Id: <20190801220138.38740-4-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190801220138.38740-1-michal.wajdeczko@intel.com>
References: <20190801220138.38740-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/3] drm/i915/wopcm: Don't fail on WOPCM
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

V2UgZG9uJ3QgaGF2ZSB0byBpbW1lZGlhdGVseSBmYWlsIG9uIFdPUENNIHBhcnRpdGlvbmluZywg
d2UgY2FuIHdhaXQKdW50aWwgd2Ugd2lsbCBzdGFydCBwcm9ncmFtbWluZyBXT1BDTSByZWdpc3Rl
cnMuIFRoaXMgc2hvdWxkIGdpdmUgdXMKbW9yZSBvcHRpb25zIGlmIHdlIGRlY2lkZSB0byByZXN0
b3JlIGZhbGxiYWNrIGluIGNhc2Ugb2YgR3VDIGZhaWx1cmVzLgoKdjM6IHJlYmFzZWQKClNpZ25l
ZC1vZmYtYnk6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgpD
YzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNv
bT4KQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpSZXZpZXdlZC1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYyB8ICA1ICsrKysrCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dlbS5jICAgICAgIHwgIDYgKy0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF93b3BjbS5jICAgIHwgMjggKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF93b3BjbS5oICAgIHwgIDIgKy0KIDQgZmlsZXMgY2hhbmdlZCwg
MjEgaW5zZXJ0aW9ucygrKSwgMjAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Vj
L2ludGVsX3VjLmMKaW5kZXggYzRiMDE1YjAyODdlLi42ZTJmOGYwMTA4MDAgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYwpAQCAtMzgwLDYgKzM4MCwxMSBAQCBzdGF0aWMgaW50
IHVjX2luaXRfd29wY20oc3RydWN0IGludGVsX3VjICp1YykKIAl1MzIgbWFzazsKIAlpbnQgZXJy
OwogCisJaWYgKHVubGlrZWx5KCFiYXNlIHx8ICFzaXplKSkgeworCQlpOTE1X3Byb2JlX2Vycm9y
KGd0LT5pOTE1LCAiVW5zdWNjZXNzZnVsIFdPUENNIHBhcnRpdGlvbmluZ1xuIik7CisJCXJldHVy
biAtRTJCSUc7CisJfQorCiAJR0VNX0JVR19PTighaW50ZWxfdWNfc3VwcG9ydHNfZ3VjKHVjKSk7
CiAJR0VNX0JVR19PTighKGJhc2UgJiBHVUNfV09QQ01fT0ZGU0VUX01BU0spKTsKIAlHRU1fQlVH
X09OKGJhc2UgJiB+R1VDX1dPUENNX09GRlNFVF9NQVNLKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5j
CmluZGV4IDI0MzZjZDU5OGU2ZS4uZGVhY2EzYzI0MTZkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2Vt
LmMKQEAgLTE0NDEsMTAgKzE0NDEsNyBAQCBpbnQgaTkxNV9nZW1faW5pdChzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJCXJldHVybiByZXQ7CiAKIAlpbnRlbF91Y19mZXRjaF9m
aXJtd2FyZXMoJmRldl9wcml2LT5ndC51Yyk7Ci0KLQlyZXQgPSBpbnRlbF93b3BjbV9pbml0KCZk
ZXZfcHJpdi0+d29wY20pOwotCWlmIChyZXQpCi0JCWdvdG8gZXJyX3VjX2Z3OworCWludGVsX3dv
cGNtX2luaXQoJmRldl9wcml2LT53b3BjbSk7CiAKIAkvKiBUaGlzIGlzIGp1c3QgYSBzZWN1cml0
eSBibGFua2V0IHRvIHBsYWNhdGUgZHJhZ29ucy4KIAkgKiBPbiBzb21lIHN5c3RlbXMsIHdlIHZl
cnkgc3BvcmFkaWNhbGx5IG9ic2VydmUgdGhhdCB0aGUgZmlyc3QgVExCcwpAQCAtMTU2OCw3ICsx
NTY1LDYgQEAgaW50IGk5MTVfZ2VtX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2KQogCWludGVsX3VuY29yZV9mb3JjZXdha2VfcHV0KCZkZXZfcHJpdi0+dW5jb3JlLCBGT1JD
RVdBS0VfQUxMKTsKIAltdXRleF91bmxvY2soJmRldl9wcml2LT5kcm0uc3RydWN0X211dGV4KTsK
IAotZXJyX3VjX2Z3OgogCWludGVsX3VjX2NsZWFudXBfZmlybXdhcmVzKCZkZXZfcHJpdi0+Z3Qu
dWMpOwogCiAJaWYgKHJldCAhPSAtRUlPKSB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF93b3BjbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd29wY20uYwpp
bmRleCAyOTE4ODE5MzdkOTcuLjRjMjIxNDNlZTg0ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfd29wY20uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93
b3BjbS5jCkBAIC0xNTYsMTIgKzE1NiwxMCBAQCBzdGF0aWMgaW5saW5lIGludCBjaGVja19od19y
ZXN0cmljdGlvbihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKICAqIFRoaXMgZnVuY3Rp
b24gd2lsbCBwYXJ0aXRpb24gV09QQ00gc3BhY2UgYmFzZWQgb24gR3VDIGFuZCBIdUMgZmlybXdh
cmUgc2l6ZXMKICAqIGFuZCB3aWxsIGFsbG9jYXRlIG1heCByZW1haW5pbmcgZm9yIHVzZSBieSBH
dUMuIFRoaXMgZnVuY3Rpb24gd2lsbCBhbHNvCiAgKiBlbmZvcmNlIHBsYXRmb3JtIGRlcGVuZGVu
dCBoYXJkd2FyZSByZXN0cmljdGlvbnMgb24gR3VDIFdPUENNIG9mZnNldCBhbmQKLSAqIHNpemUu
IEl0IHdpbGwgZmFpbCB0aGUgV09QQ00gaW5pdCBpZiBhbnkgb2YgdGhlc2UgY2hlY2tzIHdlcmUg
ZmFpbGVkLCBzbyB0aGF0Ci0gKiB0aGUgZm9sbG93aW5nIEd1QyBmaXJtd2FyZSB1cGxvYWRpbmcg
d291bGQgYmUgYWJvcnRlZC4KLSAqCi0gKiBSZXR1cm46IDAgb24gc3VjY2Vzcywgbm9uLXplcm8g
ZXJyb3IgY29kZSBvbiBmYWlsdXJlLgorICogc2l6ZS4gSXQgd2lsbCBmYWlsIHRoZSBXT1BDTSBp
bml0IGlmIGFueSBvZiB0aGVzZSBjaGVja3MgZmFpbCwgc28gdGhhdCB0aGUKKyAqIGZvbGxvd2lu
ZyBXT1BDTSByZWdpc3RlcnMgc2V0dXAgYW5kIEd1QyBmaXJtd2FyZSB1cGxvYWRpbmcgd291bGQg
YmUgYWJvcnRlZC4KICAqLwotaW50IGludGVsX3dvcGNtX2luaXQoc3RydWN0IGludGVsX3dvcGNt
ICp3b3BjbSkKK3ZvaWQgaW50ZWxfd29wY21faW5pdChzdHJ1Y3QgaW50ZWxfd29wY20gKndvcGNt
KQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gd29wY21fdG9faTkxNSh3b3Bj
bSk7CiAJdTMyIGd1Y19md19zaXplID0gaW50ZWxfdWNfZndfZ2V0X3VwbG9hZF9zaXplKCZpOTE1
LT5ndC51Yy5ndWMuZncpOwpAQCAtMTczLDIzICsxNzEsMjUgQEAgaW50IGludGVsX3dvcGNtX2lu
aXQoc3RydWN0IGludGVsX3dvcGNtICp3b3BjbSkKIAlpbnQgZXJyOwogCiAJaWYgKCFVU0VTX0dV
QyhpOTE1KSkKLQkJcmV0dXJuIDA7CisJCXJldHVybjsKIAogCUdFTV9CVUdfT04oIXdvcGNtLT5z
aXplKTsKKwlHRU1fQlVHX09OKHdvcGNtLT5ndWMuYmFzZSk7CisJR0VNX0JVR19PTih3b3BjbS0+
Z3VjLnNpemUpOwogCiAJaWYgKGk5MTVfaW5qZWN0X3Byb2JlX2ZhaWx1cmUoaTkxNSkpCi0JCXJl
dHVybiAtRTJCSUc7CisJCXJldHVybjsKIAogCWlmIChndWNfZndfc2l6ZSA+PSB3b3BjbS0+c2l6
ZSkgewogCQlEUk1fRVJST1IoIkd1QyBGVyAoJXVLaUIpIGlzIHRvbyBiaWcgdG8gZml0IGluIFdP
UENNLiIsCiAJCQkgIGd1Y19md19zaXplIC8gMTAyNCk7Ci0JCXJldHVybiAtRTJCSUc7CisJCXJl
dHVybjsKIAl9CiAKIAlpZiAoaHVjX2Z3X3NpemUgPj0gd29wY20tPnNpemUpIHsKIAkJRFJNX0VS
Uk9SKCJIdUMgRlcgKCV1S2lCKSBpcyB0b28gYmlnIHRvIGZpdCBpbiBXT1BDTS4iLAogCQkJICBo
dWNfZndfc2l6ZSAvIDEwMjQpOwotCQlyZXR1cm4gLUUyQklHOworCQlyZXR1cm47CiAJfQogCiAJ
Z3VjX3dvcGNtX2Jhc2UgPSBBTElHTihodWNfZndfc2l6ZSArIFdPUENNX1JFU0VSVkVEX1NJWkUs
CkBAIC0xOTcsNyArMTk3LDcgQEAgaW50IGludGVsX3dvcGNtX2luaXQoc3RydWN0IGludGVsX3dv
cGNtICp3b3BjbSkKIAlpZiAoKGd1Y193b3BjbV9iYXNlICsgY3R4X3JzdmQpID49IHdvcGNtLT5z
aXplKSB7CiAJCURSTV9FUlJPUigiR3VDIFdPUENNIGJhc2UgKCV1S2lCKSBpcyB0b28gYmlnLlxu
IiwKIAkJCSAgZ3VjX3dvcGNtX2Jhc2UgLyAxMDI0KTsKLQkJcmV0dXJuIC1FMkJJRzsKKwkJcmV0
dXJuOwogCX0KIAogCWd1Y193b3BjbV9zaXplID0gd29wY20tPnNpemUgLSBndWNfd29wY21fYmFz
ZSAtIGN0eF9yc3ZkOwpAQCAtMjExLDE2ICsyMTEsMTYgQEAgaW50IGludGVsX3dvcGNtX2luaXQo
c3RydWN0IGludGVsX3dvcGNtICp3b3BjbSkKIAkJRFJNX0VSUk9SKCJOZWVkICV1S2lCIFdPUENN
IGZvciBHdUMsICV1S2lCIGF2YWlsYWJsZS5cbiIsCiAJCQkgIChndWNfZndfc2l6ZSArIGd1Y193
b3BjbV9yc3ZkKSAvIDEwMjQsCiAJCQkgIGd1Y193b3BjbV9zaXplIC8gMTAyNCk7Ci0JCXJldHVy
biAtRTJCSUc7CisJCXJldHVybjsKIAl9CiAKIAllcnIgPSBjaGVja19od19yZXN0cmljdGlvbihp
OTE1LCBndWNfd29wY21fYmFzZSwgZ3VjX3dvcGNtX3NpemUsCiAJCQkJICAgaHVjX2Z3X3NpemUp
OwogCWlmIChlcnIpCi0JCXJldHVybiBlcnI7CisJCXJldHVybjsKIAogCXdvcGNtLT5ndWMuYmFz
ZSA9IGd1Y193b3BjbV9iYXNlOwogCXdvcGNtLT5ndWMuc2l6ZSA9IGd1Y193b3BjbV9zaXplOwot
Ci0JcmV0dXJuIDA7CisJR0VNX0JVR19PTighd29wY20tPmd1Yy5iYXNlKTsKKwlHRU1fQlVHX09O
KCF3b3BjbS0+Z3VjLnNpemUpOwogfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfd29wY20uaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dvcGNtLmgKaW5kZXgg
ZjliNjAzMjA1YmIxLi4xN2Q2YWE4NjAwOGEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3dvcGNtLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd29wY20u
aApAQCAtNTUsNiArNTUsNiBAQCBzdGF0aWMgaW5saW5lIHUzMiBpbnRlbF93b3BjbV9ndWNfc2l6
ZShzdHJ1Y3QgaW50ZWxfd29wY20gKndvcGNtKQogfQogCiB2b2lkIGludGVsX3dvcGNtX2luaXRf
ZWFybHkoc3RydWN0IGludGVsX3dvcGNtICp3b3BjbSk7Ci1pbnQgaW50ZWxfd29wY21faW5pdChz
dHJ1Y3QgaW50ZWxfd29wY20gKndvcGNtKTsKK3ZvaWQgaW50ZWxfd29wY21faW5pdChzdHJ1Y3Qg
aW50ZWxfd29wY20gKndvcGNtKTsKIAogI2VuZGlmCi0tIAoyLjE5LjIKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
