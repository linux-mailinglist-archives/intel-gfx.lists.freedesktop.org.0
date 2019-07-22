Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5696270D3F
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 01:21:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FFC489F4A;
	Mon, 22 Jul 2019 23:21:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EF8489F45
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2019 23:21:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jul 2019 16:21:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,296,1559545200"; d="scan'208";a="188709309"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga001.fm.intel.com with ESMTP; 22 Jul 2019 16:21:21 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Jul 2019 16:20:43 -0700
Message-Id: <20190722232048.9970-5-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190722232048.9970-1-daniele.ceraolospurio@intel.com>
References: <20190722232048.9970-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/9] drm/i915/uc: Sanitize uC when GT is
 sanitized
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

VGhlIG1pY3JvY29udHJvbGxlcnMgYXJlIHBhcnQgb2YgR1Qgc28gaXQgbWFrZXMgbG9naWNhbCBz
ZW5zZSB0byBoYXZlCnRoZW0gc2FuaXRpemVkIGF0IHRoZSBzYW1lIHRpbWUuIFRoaXMgYWxzbyBm
aXhlZCBhbiBpc3N1ZSB3aXRoIG91cgpzdGF0dXMgdHJhY2tpbmcgd2hlcmUgdGhlIEZXIGxvYWQg
c3RhdHVzIGlzIG5vdCByZXNldCBhcm91bmQKaGliZXJuYXRpb24uCgpTaWduZWQtb2ZmLWJ5OiBE
YW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgpD
YzogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+CkNjOiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fcG0uYyB8IDEgLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZ3RfcG0uYyAgfCAyICsrCiAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMKaW5kZXggOGZh
ZjI2MjI3OGFlLi5iNTU2MWNiZGM1ZWEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9wbS5jCkBAIC0yMzksNyArMjM5LDYgQEAgdm9pZCBpOTE1X2dlbV9zdXNwZW5kX2xhdGUoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJfQogCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUo
Jmk5MTUtPm1tLm9ial9sb2NrLCBmbGFncyk7CiAKLQlpbnRlbF91Y19zYW5pdGl6ZSgmaTkxNS0+
Z3QudWMpOwogCWk5MTVfZ2VtX3Nhbml0aXplKGk5MTUpOwogfQogCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZ3RfcG0uYwppbmRleCA2MWVkOTEyMzQxZjEuLjY1YzBkMGM5ZDU0MyAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5jCkBAIC0xMTgsNiArMTE4LDggQEAgdm9pZCBp
bnRlbF9ndF9zYW5pdGl6ZShzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCBib29sIGZvcmNlKQogCiAJR0VN
X1RSQUNFKCJcbiIpOwogCisJaW50ZWxfdWNfc2FuaXRpemUoJmd0LT51Yyk7CisKIAlpZiAoIXJl
c2V0X2VuZ2luZXMoZ3QpICYmICFmb3JjZSkKIAkJcmV0dXJuOwogCi0tIAoyLjIyLjAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
