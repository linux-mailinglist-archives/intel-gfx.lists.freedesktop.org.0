Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED2FE2FE1
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 13:03:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDB3E6E265;
	Thu, 24 Oct 2019 11:03:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B56D6E265
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 11:03:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 04:03:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,224,1569308400"; d="scan'208";a="228471563"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by fmsmga002.fm.intel.com with ESMTP; 24 Oct 2019 04:03:47 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id DB600843CE6; Thu, 24 Oct 2019 14:03:32 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Oct 2019 14:03:31 +0300
Message-Id: <20191024110331.8935-1-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191024103858.28113-1-mika.kuoppala@linux.intel.com>
References: <20191024103858.28113-1-mika.kuoppala@linux.intel.com>
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
djI6IGFwcGx5IGFsc28gb24gc2NydWJfd2hpdGVsaXN0ZWRfcmVnaXN0ZXJzIChMaW9uZWwpCgpD
YzogVGFwYW5pIFDDpGxsaSA8dGFwYW5pLnBhbGxpQGludGVsLmNvbT4KQ2M6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25l
bC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNaWthIEt1b3BwYWxhIDxt
aWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9zZWxmdGVzdF93b3JrYXJvdW5kcy5jIHwgMTAgKysrKysrKystLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAgICB8ICAxICsKIDIgZmlsZXMgY2hhbmdlZCwg
OSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9zZWxmdGVzdF93b3JrYXJvdW5kcy5jCmluZGV4IGVmMDI5MjBjZWMyOS4uYWJjZTZlNGVj
OWMwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF93b3JrYXJv
dW5kcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3dvcmthcm91bmRz
LmMKQEAgLTUxMyw2ICs1MTMsOSBAQCBzdGF0aWMgaW50IGNoZWNrX2RpcnR5X3doaXRlbGlzdChz
dHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LAogCiAJCXJvX3JlZyA9IHJvX3JlZ2lzdGVyKHJl
Zyk7CiAKKwkJLyogQ2xlYXIgbm9uIHByaXYgZmxhZ3MgKi8KKwkJcmVnICY9IFJJTkdfRk9SQ0Vf
VE9fTk9OUFJJVl9BRERSRVNTX01BU0s7CisKIAkJc3JtID0gTUlfU1RPUkVfUkVHSVNURVJfTUVN
OwogCQlscm0gPSBNSV9MT0FEX1JFR0lTVEVSX01FTTsKIAkJaWYgKElOVEVMX0dFTihjdHgtPmk5
MTUpID49IDgpCkBAIC04MTAsOCArODEzLDggQEAgc3RhdGljIGludCByZWFkX3doaXRlbGlzdGVk
X3JlZ2lzdGVycyhzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LAogCQl1NjQgb2Zmc2V0ID0g
cmVzdWx0cy0+bm9kZS5zdGFydCArIHNpemVvZih1MzIpICogaTsKIAkJdTMyIHJlZyA9IGk5MTVf
bW1pb19yZWdfb2Zmc2V0KGVuZ2luZS0+d2hpdGVsaXN0Lmxpc3RbaV0ucmVnKTsKIAotCQkvKiBD
bGVhciBhY2Nlc3MgcGVybWlzc2lvbiBmaWVsZCAqLwotCQlyZWcgJj0gflJJTkdfRk9SQ0VfVE9f
Tk9OUFJJVl9BQ0NFU1NfTUFTSzsKKwkJLyogQ2xlYXIgbm9uIHByaXYgZmxhZ3MgKi8KKwkJcmVn
ICY9IFJJTkdfRk9SQ0VfVE9fTk9OUFJJVl9BRERSRVNTX01BU0s7CiAKIAkJKmNzKysgPSBzcm07
CiAJCSpjcysrID0gcmVnOwpAQCAtODQ5LDYgKzg1Miw5IEBAIHN0YXRpYyBpbnQgc2NydWJfd2hp
dGVsaXN0ZWRfcmVnaXN0ZXJzKHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgsCiAJCWlmIChy
b19yZWdpc3RlcihyZWcpKQogCQkJY29udGludWU7CiAKKwkJLyogQ2xlYXIgbm9uIHByaXYgZmxh
Z3MgKi8KKwkJcmVnICY9IFJJTkdfRk9SQ0VfVE9fTk9OUFJJVl9BRERSRVNTX01BU0s7CisKIAkJ
KmNzKysgPSByZWc7CiAJCSpjcysrID0gMHhmZmZmZmZmZjsKIAl9CmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaAppbmRleCA4NTVkYjg4ODUxNmMuLjNiYTUwM2I1ZTBkOSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oCkBAIC0yNDkwLDYgKzI0OTAsNyBAQCBzdGF0aWMgaW5saW5lIGJvb2wgaTkxNV9tbWlv
X3JlZ192YWxpZChpOTE1X3JlZ190IHJlZykKICNkZWZpbmUgR0VOOF9SSU5HX0NTX0dQUl9VRFco
YmFzZSwgbikJX01NSU8oKGJhc2UpICsgMHg2MDAgKyAobikgKiA4ICsgNCkKIAogI2RlZmluZSBS
SU5HX0ZPUkNFX1RPX05PTlBSSVYoYmFzZSwgaSkgX01NSU8oKChiYXNlKSArIDB4NEQwKSArIChp
KSAqIDQpCisjZGVmaW5lICAgUklOR19GT1JDRV9UT19OT05QUklWX0FERFJFU1NfTUFTSwlSRUdf
R0VOTUFTSygyNSwgMikKICNkZWZpbmUgICBSSU5HX0ZPUkNFX1RPX05PTlBSSVZfQUNDRVNTX1JX
CSgwIDw8IDI4KSAgICAvKiBDRkwrICYgR2VuMTErICovCiAjZGVmaW5lICAgUklOR19GT1JDRV9U
T19OT05QUklWX0FDQ0VTU19SRAkoMSA8PCAyOCkKICNkZWZpbmUgICBSSU5HX0ZPUkNFX1RPX05P
TlBSSVZfQUNDRVNTX1dSCSgyIDw8IDI4KQotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
