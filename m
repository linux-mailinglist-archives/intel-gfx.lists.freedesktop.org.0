Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8C53102E39
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 22:29:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 845BE6E3FB;
	Tue, 19 Nov 2019 21:29:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B15FF6E3FB
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 21:29:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 13:29:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,219,1571727600"; d="scan'208";a="204627100"
Received: from jssummer-xeon.ra.intel.com ([10.23.184.90])
 by fmsmga007.fm.intel.com with ESMTP; 19 Nov 2019 13:29:34 -0800
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Nov 2019 13:30:32 -0800
Message-Id: <20191119213032.133992-1-stuart.summers@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Ensure aperture exists before
 setting domain to GTT
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

bW1hcF9ndHQgaXMgYWxyZWFkeSBjb3ZlcmVkIGJ5IGEgY2hlY2sgZm9yIGFwZXJ0dXJlIHByZXNl
bmNlLgpBbHNvIGFkZCB0aGUgY2FzZSB0byB0aGUgZ2VtX3NldF9kb21haW4gSU9DVEwgdG8gYXZv
aWQgdGhpcwpwYXRoIGZvciB1bnN1cHBvcnRlZCBwbGF0Zm9ybXMuCgpTaWduZWQtb2ZmLWJ5OiBT
dHVhcnQgU3VtbWVycyA8c3R1YXJ0LnN1bW1lcnNAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYyB8IDMgKysrCiAxIGZpbGUgY2hhbmdlZCwg
MyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2RvbWFpbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFp
bi5jCmluZGV4IDlhZWJjZjI2MzE5MS4uY2YxZTIyMWZlMjdhIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jCkBAIC0xMTIsNiArMTEyLDkgQEAgaTkxNV9nZW1f
b2JqZWN0X3NldF90b19ndHRfZG9tYWluKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmos
IGJvb2wgd3JpdGUpCiAKIAlhc3NlcnRfb2JqZWN0X2hlbGQob2JqKTsKIAorCWlmICghaTkxNV9n
Z3R0X2hhc19hcGVydHVyZSgmaTkxNS0+Z2d0dCkpCisJCXJldHVybiAtRU5PREVWOworCiAJcmV0
ID0gaTkxNV9nZW1fb2JqZWN0X3dhaXQob2JqLAogCQkJCSAgIEk5MTVfV0FJVF9JTlRFUlJVUFRJ
QkxFIHwKIAkJCQkgICAod3JpdGUgPyBJOTE1X1dBSVRfQUxMIDogMCksCi0tIAoyLjIyLjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
