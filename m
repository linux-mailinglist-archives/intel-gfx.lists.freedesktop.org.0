Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E91E1A60AF
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2019 07:35:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E6E189AAD;
	Tue,  3 Sep 2019 05:35:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6ADE289A7A;
 Tue,  3 Sep 2019 05:35:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Sep 2019 22:35:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,461,1559545200"; d="scan'208";a="187151370"
Received: from helsinki.fi.intel.com ([10.237.66.149])
 by orsmga006.jf.intel.com with ESMTP; 02 Sep 2019 22:35:39 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Sep 2019 08:35:06 +0300
Message-Id: <20190903053508.21803-6-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190903053508.21803-1-gwan-gyeong.mun@intel.com>
References: <20190903053508.21803-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 5/7] drm/i915: Add new GMP register size for
 GEN11
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWNjb3JkaW5nIHRvIEJzcGVjLCBHRU4xMSBhbmQgcHJpb3IgR0VOMTEgaGF2ZSBkaWZmZXJlbnQg
cmVnaXN0ZXIgc2l6ZSBmb3IKSERSIE1ldGFkYXRhIEluZm9mcmFtZSBTRFAgcGFja2V0LiBJdCBh
ZGRzIG5ldyBWSURFT19ESVBfR01QX0RBVEFfU0laRSBmb3IKR0VOMTEuIEFuZCBpdCBtYWtlcyBo
YW5kbGUgZGlmZmVyZW50IHJlZ2lzdGVyIHNpemUgZm9yCkhETUlfUEFDS0VUX1RZUEVfR0FNVVRf
TUVUQURBVEEgb24gaHN3X2RpcF9kYXRhX3NpemUoKSBmb3IgZWFjaCBHRU4KcGxhdGZvcm1zLiBJ
dCBhZGRyZXNzZXMgVW1hJ3MgcmV2aWV3IGNvbW1lbnRzLgoKU2lnbmVkLW9mZi1ieTogR3dhbi1n
eWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jIHwgMTAgKysrKysrKystLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgfCAgMSArCiAyIGZpbGVzIGNoYW5nZWQsIDkg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfaGRtaS5jCmluZGV4IGM1MDBmYzkxNTRjOC4uMjg3OTk5YjMxMjE3IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYwpAQCAtMTg5LDEzICsxODksMTkg
QEAgaHN3X2RpcF9kYXRhX3JlZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJ
fQogfQogCi1zdGF0aWMgaW50IGhzd19kaXBfZGF0YV9zaXplKHVuc2lnbmVkIGludCB0eXBlKQor
c3RhdGljIGludCBoc3dfZGlwX2RhdGFfc2l6ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsCisJCQkgICAgIHVuc2lnbmVkIGludCB0eXBlKQogewogCXN3aXRjaCAodHlwZSkgewog
CWNhc2UgRFBfU0RQX1ZTQzoKIAkJcmV0dXJuIFZJREVPX0RJUF9WU0NfREFUQV9TSVpFOwogCWNh
c2UgRFBfU0RQX1BQUzoKIAkJcmV0dXJuIFZJREVPX0RJUF9QUFNfREFUQV9TSVpFOworCWNhc2Ug
SERNSV9QQUNLRVRfVFlQRV9HQU1VVF9NRVRBREFUQToKKwkJaWYgKElOVEVMX0dFTihkZXZfcHJp
dikgPj0gMTEpCisJCQlyZXR1cm4gVklERU9fRElQX0dNUF9EQVRBX1NJWkU7CisJCWVsc2UKKwkJ
CXJldHVybiBWSURFT19ESVBfREFUQV9TSVpFOwogCWRlZmF1bHQ6CiAJCXJldHVybiBWSURFT19E
SVBfREFUQV9TSVpFOwogCX0KQEAgLTUxNCw3ICs1MjAsNyBAQCBzdGF0aWMgdm9pZCBoc3dfd3Jp
dGVfaW5mb2ZyYW1lKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCWludCBpOwogCXUz
MiB2YWwgPSBJOTE1X1JFQUQoY3RsX3JlZyk7CiAKLQlkYXRhX3NpemUgPSBoc3dfZGlwX2RhdGFf
c2l6ZSh0eXBlKTsKKwlkYXRhX3NpemUgPSBoc3dfZGlwX2RhdGFfc2l6ZShkZXZfcHJpdiwgdHlw
ZSk7CiAKIAl2YWwgJj0gfmhzd19pbmZvZnJhbWVfZW5hYmxlKHR5cGUpOwogCUk5MTVfV1JJVEUo
Y3RsX3JlZywgdmFsKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IDZjNDNiOGM1ODNiYi4u
OGIzMWFkNzQyNmQ2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTQ2NjcsNiArNDY2Nyw3
IEBAIGVudW0gewogICogKEhhc3dlbGwgYW5kIG5ld2VyKSB0byBzZWUgd2hpY2ggVklERU9fRElQ
X0RBVEEgYnl0ZSBjb3JyZXNwb25kcyB0byBlYWNoIGJ5dGUKICAqIG9mIHRoZSBpbmZvZnJhbWUg
c3RydWN0dXJlIHNwZWNpZmllZCBieSBDRUEtODYxLiAqLwogI2RlZmluZSAgIFZJREVPX0RJUF9E
QVRBX1NJWkUJMzIKKyNkZWZpbmUgICBWSURFT19ESVBfR01QX0RBVEFfU0laRQkzNgogI2RlZmlu
ZSAgIFZJREVPX0RJUF9WU0NfREFUQV9TSVpFCTM2CiAjZGVmaW5lICAgVklERU9fRElQX1BQU19E
QVRBX1NJWkUJMTMyCiAjZGVmaW5lIFZJREVPX0RJUF9DVEwJCV9NTUlPKDB4NjExNzApCi0tIAoy
LjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
