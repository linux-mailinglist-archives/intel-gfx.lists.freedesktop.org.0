Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9724234533
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jul 2020 14:04:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DEF86EA6F;
	Fri, 31 Jul 2020 12:04:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BB366EA6F
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jul 2020 12:04:32 +0000 (UTC)
IronPort-SDR: 4BBzSj3gXZHJqQj51iK1TcbLPM+tGdosGgseZ76h35bWGZ0MJeCZy5CTceELrWd5pHjOm/GjRE
 h3rh1/uk9+BQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9698"; a="216218208"
X-IronPort-AV: E=Sophos;i="5.75,418,1589266800"; d="scan'208";a="216218208"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2020 05:04:31 -0700
IronPort-SDR: fGZwT3uSoQiQKGmp8W1tEFkesj+At6aJ9Mk3ycIcbgmM8T68mpJh2SJA6v8Imvta2khliNgM/+
 9Tfhu/ZKKE3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,418,1589266800"; d="scan'208";a="273188205"
Received: from anusha.jf.intel.com ([10.165.21.155])
 by fmsmga007.fm.intel.com with ESMTP; 31 Jul 2020 05:04:31 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 Jul 2020 04:50:14 -0700
Message-Id: <20200731115015.19706-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/dmc: Load DMC firmware v2.07 for
 Tiger Lake
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

QnVtcCBUR0wgRE1DIHZlcnNpb24gdG8gMi4wNy4gVGhpcyBuZXcgdmVyc2lvbiBoYXMgcG93ZXIK
c2F2aW5nIGVuaGFuY2VtZW50cy4KCkNjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNv
dXphQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3Jp
dmF0c2FAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9z
ZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9jc3IuYyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Nzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jc3IuYwppbmRleCBm
MjJhNzY0NWMyNDkuLmViNzRlYjEyMzE0OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jc3IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Nzci5jCkBAIC00NCw4ICs0NCw4IEBACiAjZGVmaW5lIFJLTF9DU1JfVkVSU0lPTl9S
RVFVSVJFRAlDU1JfVkVSU0lPTigyLCAxKQogTU9EVUxFX0ZJUk1XQVJFKFJLTF9DU1JfUEFUSCk7
CiAKLSNkZWZpbmUgVEdMX0NTUl9QQVRICQkJImk5MTUvdGdsX2RtY192ZXIyXzA2LmJpbiIKLSNk
ZWZpbmUgVEdMX0NTUl9WRVJTSU9OX1JFUVVJUkVECUNTUl9WRVJTSU9OKDIsIDYpCisjZGVmaW5l
IFRHTF9DU1JfUEFUSAkJCSJpOTE1L3RnbF9kbWNfdmVyMl8wNy5iaW4iCisjZGVmaW5lIFRHTF9D
U1JfVkVSU0lPTl9SRVFVSVJFRAlDU1JfVkVSU0lPTigyLCA3KQogI2RlZmluZSBUR0xfQ1NSX01B
WF9GV19TSVpFCQkweDYwMDAKIE1PRFVMRV9GSVJNV0FSRShUR0xfQ1NSX1BBVEgpOwogCi0tIAoy
LjI1LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
