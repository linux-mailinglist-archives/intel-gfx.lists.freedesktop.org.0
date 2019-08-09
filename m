Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F5F87D5B
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 16:57:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDE2B6EE25;
	Fri,  9 Aug 2019 14:57:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 979C26EE25
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2019 14:56:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Aug 2019 07:56:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,364,1559545200"; d="scan'208";a="169335925"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by orsmga008.jf.intel.com with ESMTP; 09 Aug 2019 07:56:57 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 6824A8404EA; Fri,  9 Aug 2019 17:56:55 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Aug 2019 17:56:53 +0300
Message-Id: <20190809145653.2279-1-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915: Extend non readable mcr range
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3VyIGN1cnJlbnQgYXZvaWRhbmNlIG9mIG5vbiByZWFkYWJsZSBtY3IgcmFuZ2Ugd2FzIG5vdApp
bmNsdXNpdmUgZW5vdWdoLiBFeHRlbmQgdGhlIHN0YXJ0IGFuZCBlbmQuCgpSZWZlcmVuY2VzOiBI
U0RFUyMxNDA1NTg2ODQwCkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwu
Y29tPgpTaWduZWQtb2ZmLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5j
IHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKaW5kZXggNzA0YWNl
MDFlN2Y1Li5lYjAzY2Q1MDdiMjggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3dvcmthcm91bmRzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
d29ya2Fyb3VuZHMuYwpAQCAtMTQzNCw3ICsxNDM0LDcgQEAgc3RhdGljIGJvb2wgbWNyX3Jhbmdl
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCB1MzIgb2Zmc2V0KQogCSAqIHdoaWNoIG9u
bHkgY29udHJvbHMgQ1BVIGluaXRpYXRlZCBNTUlPLiBSb3V0aW5nIGRvZXMgbm90CiAJICogd29y
ayBmb3IgQ1MgYWNjZXNzIHNvIHdlIGNhbm5vdCB2ZXJpZnkgdGhlbSBvbiB0aGlzIHBhdGguCiAJ
ICovCi0JaWYgKElOVEVMX0dFTihpOTE1KSA+PSA4ICYmIChvZmZzZXQgPj0gMHhiMTAwICYmIG9m
ZnNldCA8PSAweGIzZmYpKQorCWlmIChJTlRFTF9HRU4oaTkxNSkgPj0gOCAmJiAob2Zmc2V0ID49
IDB4YjAwMCAmJiBvZmZzZXQgPD0gMHhiNGZmKSkKIAkJcmV0dXJuIHRydWU7CiAKIAlyZXR1cm4g
ZmFsc2U7Ci0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
