Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE807B5DA
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 00:48:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79E3E6E63C;
	Tue, 30 Jul 2019 22:47:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8E3289DF7
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 22:47:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 15:47:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,327,1559545200"; d="scan'208";a="196104735"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.8.193])
 by fmsmga004.fm.intel.com with ESMTP; 30 Jul 2019 15:47:56 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jul 2019 15:47:51 -0700
Message-Id: <20190730224753.14907-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190730224753.14907-1-jose.souza@intel.com>
References: <20190730224753.14907-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 2/4] drm/i915: Add _TRANS2()
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
Cc: Dhinakaran Pandiyan <dhinakaran.pandiya@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QSBuZXcgbWFjcm8gdGhhdCBpcyBnb2luZyB0byBiZSBhZGRlZCBpbiBhIGZ1cnRoZXIgcGF0Y2gg
d2lsbCBuZWVkIHRvCmFkanVzdCB0aGUgb2Zmc2V0IHJldHVybmVkIGJ5IF9NTUlPX1RSQU5TMigp
LCBzbyBoZXJlIGFkZGluZwpfVFJBTlMyKCkgYW5kIG1vdmluZyBtb3N0IG9mIHRoZSBpbXBsZW1l
bnRhdGlvbiBvZiBfTU1JT19UUkFOUzIoKSB0bwppdCBhbmQgd2hpbGUgYXQgaXQgdGFraW5nIHRo
ZSBvcHBvcnR1bml0eSB0byByZW5hbWUgcGlwZSB0byB0cmFucy4KCkNjOiBSb2RyaWdvIFZpdmkg
PHJvZHJpZ28udml2aUBpbnRlbC5jb20+CkNjOiBEaGluYWthcmFuIFBhbmRpeWFuIDxkaGluYWth
cmFuLnBhbmRpeWFAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogRGhpbmFrYXJhbiBQYW5kaXlhbiA8
ZGhpbmFrYXJhbi5wYW5kaXlhQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0
byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaCB8IDcgKysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygr
KSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCAyMTMwNmRkMzc5
MGEuLmY0ZTFhY2M5MzZiMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC0yNTEsOSArMjUx
LDEwIEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBpOTE1X21taW9fcmVnX3ZhbGlkKGk5MTVfcmVnX3Qg
cmVnKQogI2RlZmluZSBfTU1JT19QSVBFMihwaXBlLCByZWcpCQlfTU1JTyhJTlRFTF9JTkZPKGRl
dl9wcml2KS0+cGlwZV9vZmZzZXRzW3BpcGVdIC0gXAogCQkJCQkgICAgICBJTlRFTF9JTkZPKGRl
dl9wcml2KS0+cGlwZV9vZmZzZXRzW1BJUEVfQV0gKyAocmVnKSArIFwKIAkJCQkJICAgICAgRElT
UExBWV9NTUlPX0JBU0UoZGV2X3ByaXYpKQotI2RlZmluZSBfTU1JT19UUkFOUzIocGlwZSwgcmVn
KQkJX01NSU8oSU5URUxfSU5GTyhkZXZfcHJpdiktPnRyYW5zX29mZnNldHNbKHBpcGUpXSAtIFwK
LQkJCQkJICAgICAgSU5URUxfSU5GTyhkZXZfcHJpdiktPnRyYW5zX29mZnNldHNbVFJBTlNDT0RF
Ul9BXSArIChyZWcpICsgXAotCQkJCQkgICAgICBESVNQTEFZX01NSU9fQkFTRShkZXZfcHJpdikp
CisjZGVmaW5lIF9UUkFOUzIodHJhbiwgcmVnKQkJKElOVEVMX0lORk8oZGV2X3ByaXYpLT50cmFu
c19vZmZzZXRzWyh0cmFuKV0gLSBcCisJCQkJCSBJTlRFTF9JTkZPKGRldl9wcml2KS0+dHJhbnNf
b2Zmc2V0c1tUUkFOU0NPREVSX0FdICsgKHJlZykgKyBcCisJCQkJCSBESVNQTEFZX01NSU9fQkFT
RShkZXZfcHJpdikpCisjZGVmaW5lIF9NTUlPX1RSQU5TMih0cmFuLCByZWcpCQlfTU1JTyhfVFJB
TlMyKHRyYW4sIHJlZykpCiAjZGVmaW5lIF9DVVJTT1IyKHBpcGUsIHJlZykJCV9NTUlPKElOVEVM
X0lORk8oZGV2X3ByaXYpLT5jdXJzb3Jfb2Zmc2V0c1socGlwZSldIC0gXAogCQkJCQkgICAgICBJ
TlRFTF9JTkZPKGRldl9wcml2KS0+Y3Vyc29yX29mZnNldHNbUElQRV9BXSArIChyZWcpICsgXAog
CQkJCQkgICAgICBESVNQTEFZX01NSU9fQkFTRShkZXZfcHJpdikpCi0tIAoyLjIyLjAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
