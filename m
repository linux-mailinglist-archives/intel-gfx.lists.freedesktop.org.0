Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A447DE2F3B
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 12:39:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2EF76E219;
	Thu, 24 Oct 2019 10:39:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3619D6E218
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 10:39:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 03:39:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,224,1569308400"; d="scan'208";a="398365145"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by fmsmga005.fm.intel.com with ESMTP; 24 Oct 2019 03:39:04 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 5BE19843CE6; Thu, 24 Oct 2019 13:38:59 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Oct 2019 13:38:57 +0300
Message-Id: <20191024103858.28113-1-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Remove nonpriv flags when srm/lrm
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

T24gdGVzdGluZyB0aGUgd2hpdGVsaXN0cywgdXNpbmcgYW55IG9mIHRoZSBub25wcml2CmZsYWdz
IHdoZW4gdHJ5aW5nIHRvIGFjY2VzcyB0aGUgcmVnaXN0ZXIgb2Zmc2V0IHdpbGwgbGVhZAp0byBm
YWlsdXJlLgoKRGVmaW5lIGFkZHJlc3MgbWFzayB0byBnZXQgdGhlIG1taW8gb2Zmc2V0IGluIG9y
ZGVyCnRvIGd1YXJkIGFnYWluc3QgYW55IGN1cnJlbnQgYW5kIGZ1dHVyZSBmbGFnIHVzYWdlLgoK
Q2M6IFRhcGFuaSBQw6RsbGkgPHRhcGFuaS5wYWxsaUBpbnRlbC5jb20+CkNjOiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KU2lnbmVkLW9mZi1ieTogTWlrYSBLdW9wcGFs
YSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3Qvc2VsZnRlc3Rfd29ya2Fyb3VuZHMuYyB8IDcgKysrKystLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAgICB8IDEgKwogMiBmaWxlcyBjaGFuZ2VkLCA2
IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rfd29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3NlbGZ0ZXN0X3dvcmthcm91bmRzLmMKaW5kZXggZWYwMjkyMGNlYzI5Li41NDMyNGM2NTc3
ZGMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3dvcmthcm91
bmRzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rfd29ya2Fyb3VuZHMu
YwpAQCAtNTEzLDYgKzUxMyw5IEBAIHN0YXRpYyBpbnQgY2hlY2tfZGlydHlfd2hpdGVsaXN0KHN0
cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgsCiAKIAkJcm9fcmVnID0gcm9fcmVnaXN0ZXIocmVn
KTsKIAorCQkvKiBDbGVhciBub24gcHJpdiBmbGFncyAqLworCQlyZWcgJj0gUklOR19GT1JDRV9U
T19OT05QUklWX0FERFJFU1NfTUFTSzsKKwogCQlzcm0gPSBNSV9TVE9SRV9SRUdJU1RFUl9NRU07
CiAJCWxybSA9IE1JX0xPQURfUkVHSVNURVJfTUVNOwogCQlpZiAoSU5URUxfR0VOKGN0eC0+aTkx
NSkgPj0gOCkKQEAgLTgxMCw4ICs4MTMsOCBAQCBzdGF0aWMgaW50IHJlYWRfd2hpdGVsaXN0ZWRf
cmVnaXN0ZXJzKHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgsCiAJCXU2NCBvZmZzZXQgPSBy
ZXN1bHRzLT5ub2RlLnN0YXJ0ICsgc2l6ZW9mKHUzMikgKiBpOwogCQl1MzIgcmVnID0gaTkxNV9t
bWlvX3JlZ19vZmZzZXQoZW5naW5lLT53aGl0ZWxpc3QubGlzdFtpXS5yZWcpOwogCi0JCS8qIENs
ZWFyIGFjY2VzcyBwZXJtaXNzaW9uIGZpZWxkICovCi0JCXJlZyAmPSB+UklOR19GT1JDRV9UT19O
T05QUklWX0FDQ0VTU19NQVNLOworCQkvKiBDbGVhciBub24gcHJpdiBmbGFncyAqLworCQlyZWcg
Jj0gUklOR19GT1JDRV9UT19OT05QUklWX0FERFJFU1NfTUFTSzsKIAogCQkqY3MrKyA9IHNybTsK
IAkJKmNzKysgPSByZWc7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCA4NTVkYjg4ODUxNmMu
LjNiYTUwM2I1ZTBkOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC0yNDkwLDYgKzI0OTAs
NyBAQCBzdGF0aWMgaW5saW5lIGJvb2wgaTkxNV9tbWlvX3JlZ192YWxpZChpOTE1X3JlZ190IHJl
ZykKICNkZWZpbmUgR0VOOF9SSU5HX0NTX0dQUl9VRFcoYmFzZSwgbikJX01NSU8oKGJhc2UpICsg
MHg2MDAgKyAobikgKiA4ICsgNCkKIAogI2RlZmluZSBSSU5HX0ZPUkNFX1RPX05PTlBSSVYoYmFz
ZSwgaSkgX01NSU8oKChiYXNlKSArIDB4NEQwKSArIChpKSAqIDQpCisjZGVmaW5lICAgUklOR19G
T1JDRV9UT19OT05QUklWX0FERFJFU1NfTUFTSwlSRUdfR0VOTUFTSygyNSwgMikKICNkZWZpbmUg
ICBSSU5HX0ZPUkNFX1RPX05PTlBSSVZfQUNDRVNTX1JXCSgwIDw8IDI4KSAgICAvKiBDRkwrICYg
R2VuMTErICovCiAjZGVmaW5lICAgUklOR19GT1JDRV9UT19OT05QUklWX0FDQ0VTU19SRAkoMSA8
PCAyOCkKICNkZWZpbmUgICBSSU5HX0ZPUkNFX1RPX05PTlBSSVZfQUNDRVNTX1dSCSgyIDw8IDI4
KQotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
