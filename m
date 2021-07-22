Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 197993D2C96
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 21:16:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DF1C6E84F;
	Thu, 22 Jul 2021 19:16:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D218B6E84F
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jul 2021 19:16:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10053"; a="209827656"
X-IronPort-AV: E=Sophos;i="5.84,261,1620716400"; d="scan'208";a="209827656"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 12:16:22 -0700
X-IronPort-AV: E=Sophos;i="5.84,261,1620716400"; d="scan'208";a="470772778"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.59])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 12:16:22 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Jul 2021 12:20:41 -0700
Message-Id: <20210722192041.92346-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Extend Wa_1406941453 to adl-p
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

V29ya2Fyb3VuZCBhbHNvIG5lZWRlZCBmb3IgYWxkZXJsYWtlLVAuCgpIU0RFUzogMTQwMTA4MDE2
NjIKQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+ClNpZ25lZC1vZmYt
Ynk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgfCA0ICsrLS0KIDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKaW5kZXggMjQ3ZjAzMzFlYmVlMy4uYjg0
ZDFkODE2ODk4ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29y
a2Fyb3VuZHMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5k
cy5jCkBAIC0xNTgzLDggKzE1ODMsOCBAQCByY3NfZW5naW5lX3dhX2luaXQoc3RydWN0IGludGVs
X2VuZ2luZV9jcyAqZW5naW5lLCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpCiAJfQogCiAJaWYg
KElTX0RHMShpOTE1KSB8fCBJU19ST0NLRVRMQUtFKGk5MTUpIHx8IElTX1RJR0VSTEFLRShpOTE1
KSB8fAotCSAgICBJU19BTERFUkxBS0VfUyhpOTE1KSkgewotCQkvKiBXYV8xNDA2OTQxNDUzOnRn
bCxya2wsZGcxLGFkbC1zICovCisJICAgIElTX0FMREVSTEFLRV9TKGk5MTUpIHx8IElTX0FMREVS
TEFLRV9QKGk5MTUpKSB7CisJCS8qIFdhXzE0MDY5NDE0NTM6dGdsLHJrbCxkZzEsYWRsLXMsYWRs
LXAgKi8KIAkJd2FfbWFza2VkX2VuKHdhbCwKIAkJCSAgICAgR0VOMTBfU0FNUExFUl9NT0RFLAog
CQkJICAgICBFTkFCTEVfU01BTExQTCk7Ci0tIAoyLjMyLjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
