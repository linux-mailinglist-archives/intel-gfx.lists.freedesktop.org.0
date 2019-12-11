Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA2611BC17
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 19:45:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7CF26EBB5;
	Wed, 11 Dec 2019 18:45:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBA606EBB2
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 18:45:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 10:45:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,302,1571727600"; d="scan'208";a="216016734"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.8.163])
 by orsmga003.jf.intel.com with ESMTP; 11 Dec 2019 10:45:28 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Dec 2019 10:45:20 -0800
Message-Id: <20191211184526.142413-5-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191211184526.142413-1-jose.souza@intel.com>
References: <20191211184526.142413-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 rebased 05/11] drm/i915: Introduce
 intel_plane_state_reset()
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkZv
ciB0aGUgc2FrZSBvZiBzeW1tZXRyeSB3aXRoIHRoZSBjcnRjIHN0dWZmIGxldCdzIGFkZAphIGhl
bHBlciB0byByZXNldCB0aGUgcGxhbmUgc3RhdGUgdG8gc2FuZSBkZWZhdWx0IHZhbHVlcy4KRm9y
IHRoZSBtb21lbnQgdGhpcyBvbmx5IGdldHMgY2FsbGVyIGZyb20gdGhlIHBsYW5lIGluaXQuCgpS
ZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+
ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxh
bmUuYyB8IDE1ICsrKysrKysrKysrKystLQogMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMo
KyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYXRvbWljX3BsYW5lLmMKaW5kZXggNDJiM2IzNDQ5ZDJlLi45NDI5YjhlMTcyNzAgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5l
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUu
YwpAQCAtNDEsNiArNDEsMTYgQEAKICNpbmNsdWRlICJpbnRlbF9wbS5oIgogI2luY2x1ZGUgImlu
dGVsX3Nwcml0ZS5oIgogCitzdGF0aWMgdm9pZCBpbnRlbF9wbGFuZV9zdGF0ZV9yZXNldChzdHJ1
Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlLAorCQkJCSAgICBzdHJ1Y3QgaW50ZWxf
cGxhbmUgKnBsYW5lKQoreworCW1lbXNldChwbGFuZV9zdGF0ZSwgMCwgc2l6ZW9mKCpwbGFuZV9z
dGF0ZSkpOworCisJX19kcm1fYXRvbWljX2hlbHBlcl9wbGFuZV9zdGF0ZV9yZXNldCgmcGxhbmVf
c3RhdGUtPnVhcGksICZwbGFuZS0+YmFzZSk7CisKKwlwbGFuZV9zdGF0ZS0+c2NhbGVyX2lkID0g
LTE7Cit9CisKIHN0cnVjdCBpbnRlbF9wbGFuZSAqaW50ZWxfcGxhbmVfYWxsb2Modm9pZCkKIHsK
IAlzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlOwpAQCAtNTYsOCArNjYsOSBA
QCBzdHJ1Y3QgaW50ZWxfcGxhbmUgKmludGVsX3BsYW5lX2FsbG9jKHZvaWQpCiAJCXJldHVybiBF
UlJfUFRSKC1FTk9NRU0pOwogCX0KIAotCV9fZHJtX2F0b21pY19oZWxwZXJfcGxhbmVfcmVzZXQo
JnBsYW5lLT5iYXNlLCAmcGxhbmVfc3RhdGUtPnVhcGkpOwotCXBsYW5lX3N0YXRlLT5zY2FsZXJf
aWQgPSAtMTsKKwlpbnRlbF9wbGFuZV9zdGF0ZV9yZXNldChwbGFuZV9zdGF0ZSwgcGxhbmUpOwor
CisJcGxhbmUtPmJhc2Uuc3RhdGUgPSAmcGxhbmVfc3RhdGUtPnVhcGk7CiAKIAlyZXR1cm4gcGxh
bmU7CiB9Ci0tIAoyLjI0LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
