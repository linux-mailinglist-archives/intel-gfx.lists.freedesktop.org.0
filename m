Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C37FBEF3D
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 12:07:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 980176EDA9;
	Thu, 26 Sep 2019 10:07:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50E8D6EDA9
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 10:07:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Sep 2019 03:07:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,551,1559545200"; d="scan'208";a="203825631"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
 by fmsmga001.fm.intel.com with ESMTP; 26 Sep 2019 03:06:59 -0700
Received: from localhost (172.28.172.64) by IRSMSX102.ger.corp.intel.com
 (163.33.3.155) with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 26 Sep
 2019 11:06:58 +0100
From: =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Thu, 26 Sep 2019 12:06:33 +0200
Message-ID: <20190926100635.9416-4-michal.winiarski@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190926100635.9416-1-michal.winiarski@intel.com>
References: <20190926100635.9416-1-michal.winiarski@intel.com>
MIME-Version: 1.0
X-Originating-IP: [172.28.172.64]
Subject: [Intel-gfx] [PATCH 4/6] drm/i915: Add definitions for MI_MATH
 command
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

V2UgY2FuIHVzZSBpdCBpbiBpOTE1IGZvciB1cGRhdGluZyBwYXJ0cyBvZiB1bm1hc2tlZCByZWdp
c3RlcnMgZnJvbQp3aXRoaW4gYSBiYXRjaC4gV2UncmUgYWxzbyBhZGRpbmcgR2VuOCsgdmVyc2lv
bnMgb2YgQ1NfR1BSIHJlZ2lzdGVycwooYWthIE1JX01BVEhfUkVHIGluIHRoZSBjb3Byb2Nlc3Nv
cikuCgpTaWduZWQtb2ZmLWJ5OiBNaWNoYcWCIFdpbmlhcnNraSA8bWljaGFsLndpbmlhcnNraUBp
bnRlbC5jb20+CkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaCB8IDI0ICsrKysr
KysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAg
ICAgICB8ICA0ICsrKysKIDIgZmlsZXMgY2hhbmdlZCwgMjggaW5zZXJ0aW9ucygrKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dwdV9jb21tYW5kcy5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmgKaW5kZXggOTIxMWIxYWQ0
MDFiLi4yNmMyODZiYzk2MjUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2dwdV9jb21tYW5kcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dw
dV9jb21tYW5kcy5oCkBAIC0yNDEsNiArMjQxLDMwIEBACiAjZGVmaW5lICAgUElQRV9DT05UUk9M
X0RFUFRIX0NBQ0hFX0ZMVVNICQkoMTw8MCkKICNkZWZpbmUgICBQSVBFX0NPTlRST0xfR0xPQkFM
X0dUVCAoMTw8MikgLyogaW4gYWRkciBkd29yZCAqLwogCisjZGVmaW5lIE1JX01BVEgoeCkJCQlN
SV9JTlNUUigweDFBLCAoeCktMSkKKyNkZWZpbmUgTUlfTUFUSF9JTlNUUihvcGNvZGUsIG9wMSwg
b3AyKSAoKChvcGNvZGUpIDw8IDIwKSB8IFwKKwkJCQkJICgob3AxKSA8PCAxMCkgfCAob3AyKSkK
Ky8qIE9wY29kZXMgZm9yIE1JX01BVEhfSU5TVFIgKi8KKyNkZWZpbmUgICBNSV9NQVRIX05PT1AJ
CQlNSV9NQVRIX0lOU1RSKDB4MCwgMHgwLCAweDApCisjZGVmaW5lICAgTUlfTUFUSF9MT0FEKG9w
MSwgb3AyKQlNSV9NQVRIX0lOU1RSKDB4ODAsIG9wMSwgb3AyKQorI2RlZmluZSAgIE1JX01BVEhf
TE9BRElOVihvcDEsIG9wMikJTUlfTUFUSF9JTlNUUigweDQ4MCwgb3AxLCBvcDIpCisjZGVmaW5l
ICAgTUlfTUFUSF9MT0FEMChvcDEpCQlNSV9NQVRIX0lOU1RSKDB4MDgxLCBvcDEpCisjZGVmaW5l
ICAgTUlfTUFUSF9MT0FEMShvcDEpCQlNSV9NQVRIX0lOU1RSKDB4NDgxLCBvcDEpCisjZGVmaW5l
ICAgTUlfTUFUSF9BREQJCQlNSV9NQVRIX0lOU1RSKDB4MTAwLCAweDAsIDB4MCkKKyNkZWZpbmUg
ICBNSV9NQVRIX1NVQgkJCU1JX01BVEhfSU5TVFIoMHgxMDEsIDB4MCwgMHgwKQorI2RlZmluZSAg
IE1JX01BVEhfQU5ECQkJTUlfTUFUSF9JTlNUUigweDEwMiwgMHgwLCAweDApCisjZGVmaW5lICAg
TUlfTUFUSF9PUgkJCU1JX01BVEhfSU5TVFIoMHgxMDMsIDB4MCwgMHgwKQorI2RlZmluZSAgIE1J
X01BVEhfWE9SCQkJTUlfTUFUSF9JTlNUUigweDEwNCwgMHgwLCAweDApCisjZGVmaW5lICAgTUlf
TUFUSF9TVE9SRShvcDEsIG9wMikJTUlfTUFUSF9JTlNUUigweDE4MCwgb3AxLCBvcDIpCisjZGVm
aW5lICAgTUlfTUFUSF9TVE9SRUlOVihvcDEsIG9wMikJTUlfTUFUSF9JTlNUUigweDU4MCwgb3Ax
LCBvcDIpCisvKiBSZWdpc3RlcnMgdXNlZCBhcyBvcGVyYW5kcyBpbiBNSV9NQVRIX0lOU1RSICov
CisjZGVmaW5lICAgTUlfTUFUSF9SRUcoeCkJCSh4KQorI2RlZmluZSAgIE1JX01BVEhfUkVHX1NS
Q0EJCTB4MjAKKyNkZWZpbmUgICBNSV9NQVRIX1JFR19TUkNCCQkweDIxCisjZGVmaW5lICAgTUlf
TUFUSF9SRUdfQUNDVQkJMHgzMQorI2RlZmluZSAgIE1JX01BVEhfUkVHX1pGCQkweDMyCisjZGVm
aW5lICAgTUlfTUFUSF9SRUdfQ0YJCTB4MzMKKwogLyoKICAqIENvbW1hbmRzIHVzZWQgb25seSBi
eSB0aGUgY29tbWFuZCBwYXJzZXIKICAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggZTc1
MmRlOTQ3MGJkLi5mYmVkZjg5ZmMwYmIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtMjQ4
Myw2ICsyNDgzLDEwIEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBpOTE1X21taW9fcmVnX3ZhbGlkKGk5
MTVfcmVnX3QgcmVnKQogI2RlZmluZSAgIFJJTkdfV0FJVAkJKDEgPDwgMTEpIC8qIGdlbjMrLCBQ
UkJ4X0NUTCAqLwogI2RlZmluZSAgIFJJTkdfV0FJVF9TRU1BUEhPUkUJKDEgPDwgMTApIC8qIGdl
bjYrICovCiAKKy8qIFRoZXJlIGFyZSAxNiA2NC1iaXQgQ1MgR2VuZXJhbCBQdXJwb3NlIFJlZ2lz
dGVycyBwZXItZW5naW5lIG9uIEdlbjgrICovCisjZGVmaW5lIEdFTjhfUklOR19DU19HUFIoYmFz
ZSwgbikJX01NSU8oKChiYXNlKSArIDB4NjAwKSArIChuKSAqIDgpCisjZGVmaW5lIEdFTjhfUklO
R19DU19HUFJfVURXKGJhc2UsIG4pCV9NTUlPKCgoYmFzZSkgKyAweDYwMCkgKyAobikgKiA4ICsg
NCkKKwogI2RlZmluZSBSSU5HX0ZPUkNFX1RPX05PTlBSSVYoYmFzZSwgaSkgX01NSU8oKChiYXNl
KSArIDB4NEQwKSArIChpKSAqIDQpCiAjZGVmaW5lICAgUklOR19GT1JDRV9UT19OT05QUklWX0FD
Q0VTU19SVwkoMCA8PCAyOCkgICAgLyogQ0ZMKyAmIEdlbjExKyAqLwogI2RlZmluZSAgIFJJTkdf
Rk9SQ0VfVE9fTk9OUFJJVl9BQ0NFU1NfUkQJKDEgPDwgMjgpCi0tIAoyLjIxLjAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
