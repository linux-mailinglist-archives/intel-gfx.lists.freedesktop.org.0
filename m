Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D2F243F84
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Aug 2020 21:58:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB3BD6EA92;
	Thu, 13 Aug 2020 19:58:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 960F56EA92
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Aug 2020 19:58:12 +0000 (UTC)
IronPort-SDR: P47q/yP5omvVTwVkl5XzSyx8CfDRu/Y6Lt13CMaomt7qYDUwz6qmic9uZfFcH7utBmYmqMM0b8
 cq99MpoeN01Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9712"; a="141939864"
X-IronPort-AV: E=Sophos;i="5.76,309,1592895600"; d="scan'208";a="141939864"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2020 12:58:11 -0700
IronPort-SDR: 1M4Os2QcA7JMkr5Jd4ZE80sSoiSRYQiJBgPqiYDIlmV/H6/j93owNUeI7N6UC6LvYO5zx4MUWE
 LwZRFU6Y/7aw==
X-IronPort-AV: E=Sophos;i="5.76,309,1592895600"; d="scan'208";a="399278642"
Received: from slee54-mobl2.amr.corp.intel.com (HELO
 josouza-MOBL2.amr.corp.intel.com) ([10.251.138.161])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2020 12:58:10 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Aug 2020 13:00:28 -0700
Message-Id: <20200813200029.25307-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Update TGL and RKL DMC firmware
 versions
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

Rml4ZXMgYXJvdW5kIERDNSwgREM2IGFuZCBEQzNDTyBpbiB0aG9zZSBuZXcgZmlybXdhcmVzLgoK
U2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jc3IuYyB8IDggKysr
Ky0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jc3IuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3NyLmMKaW5kZXggZjIyYTc2NDVjMjQ5
Li5kNWRiMTY3NjQ2MTkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfY3NyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jc3Iu
YwpAQCAtNDAsMTIgKzQwLDEyIEBACiAKICNkZWZpbmUgR0VOMTJfQ1NSX01BWF9GV19TSVpFCQlJ
Q0xfQ1NSX01BWF9GV19TSVpFCiAKLSNkZWZpbmUgUktMX0NTUl9QQVRICQkJImk5MTUvcmtsX2Rt
Y192ZXIyXzAxLmJpbiIKLSNkZWZpbmUgUktMX0NTUl9WRVJTSU9OX1JFUVVJUkVECUNTUl9WRVJT
SU9OKDIsIDEpCisjZGVmaW5lIFJLTF9DU1JfUEFUSAkJCSJpOTE1L3JrbF9kbWNfdmVyMl8wMi5i
aW4iCisjZGVmaW5lIFJLTF9DU1JfVkVSU0lPTl9SRVFVSVJFRAlDU1JfVkVSU0lPTigyLCAyKQog
TU9EVUxFX0ZJUk1XQVJFKFJLTF9DU1JfUEFUSCk7CiAKLSNkZWZpbmUgVEdMX0NTUl9QQVRICQkJ
Imk5MTUvdGdsX2RtY192ZXIyXzA2LmJpbiIKLSNkZWZpbmUgVEdMX0NTUl9WRVJTSU9OX1JFUVVJ
UkVECUNTUl9WRVJTSU9OKDIsIDYpCisjZGVmaW5lIFRHTF9DU1JfUEFUSAkJCSJpOTE1L3RnbF9k
bWNfdmVyMl8wOC5iaW4iCisjZGVmaW5lIFRHTF9DU1JfVkVSU0lPTl9SRVFVSVJFRAlDU1JfVkVS
U0lPTigyLCA4KQogI2RlZmluZSBUR0xfQ1NSX01BWF9GV19TSVpFCQkweDYwMDAKIE1PRFVMRV9G
SVJNV0FSRShUR0xfQ1NSX1BBVEgpOwogCi0tIAoyLjI4LjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
