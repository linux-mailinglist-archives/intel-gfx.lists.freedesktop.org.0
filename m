Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D236EAB90
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2019 09:30:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04FFB6EDB5;
	Thu, 31 Oct 2019 08:30:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD97B6EDB4
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2019 08:30:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Oct 2019 01:30:36 -0700
X-IronPort-AV: E=Sophos;i="5.68,250,1569308400"; d="scan'208";a="190551995"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.17])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Oct 2019 01:30:33 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 31 Oct 2019 09:29:57 +0100
Message-Id: <20191031082958.10755-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191031082958.10755-1-janusz.krzysztofik@linux.intel.com>
References: <20191031082958.10755-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RESEND PATCH 2/3] drm/i915: Add vfunc for pread
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgoKU2ltaWxhciB0byBw
d3JpdGUsIHdlIG5lZWQgcHJlYWQgZm9yIChiZXR0ZXIpIHN1cHBvcnQgb2Ygbm9uLUdUVApiYWNr
ZW5kcy4KClNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNv
bT4KQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4K
Q2M6IEFiZGllbCBKYW51bGd1ZSA8YWJkaWVsLmphbnVsZ3VlQGxpbnV4LmludGVsLmNvbT4KU2ln
bmVkLW9mZi1ieTogSmFudXN6IEtyenlzenRvZmlrIDxqYW51c3oua3J6eXN6dG9maWtAaW50ZWwu
Y29tPgpDYzogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF90eXBlcy5oIHwgMiAr
KwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyAgICAgICAgICAgICAgICAgIHwgNiAr
KysrKysKIDIgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF90eXBlcy5oIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF90eXBlcy5oCmluZGV4IGEzODdlM2VlNzI4
Yi4uM2FkMTM1NTZlZDc1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fb2JqZWN0X3R5cGVzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX29iamVjdF90eXBlcy5oCkBAIC01NSw2ICs1NSw4IEBAIHN0cnVjdCBkcm1faTkxNV9nZW1f
b2JqZWN0X29wcyB7CiAJdm9pZCAoKnRydW5jYXRlKShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVj
dCAqb2JqKTsKIAl2b2lkICgqd3JpdGViYWNrKShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAq
b2JqKTsKIAorCWludCAoKnByZWFkKShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAor
CQkgICAgIGNvbnN0IHN0cnVjdCBkcm1faTkxNV9nZW1fcHJlYWQgKmFyZyk7CiAJaW50ICgqcHdy
aXRlKShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCQkgICAgICBjb25zdCBzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX3B3cml0ZSAqYXJnKTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKaW5k
ZXggZGQwYTMyNzFiNGUyLi5iYjkxMjE4ODdjZTYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwpA
QCAtNDY5LDYgKzQ2OSwxMiBAQCBpOTE1X2dlbV9wcmVhZF9pb2N0bChzdHJ1Y3QgZHJtX2Rldmlj
ZSAqZGV2LCB2b2lkICpkYXRhLAogCiAJdHJhY2VfaTkxNV9nZW1fb2JqZWN0X3ByZWFkKG9iaiwg
YXJncy0+b2Zmc2V0LCBhcmdzLT5zaXplKTsKIAorCWlmIChvYmotPm9wcy0+cHJlYWQpIHsKKwkJ
cmV0ID0gb2JqLT5vcHMtPnByZWFkKG9iaiwgYXJncyk7CisJCWlmIChyZXQgIT0gLUVOT0RFVikK
KwkJCWdvdG8gb3V0OworCX0KKwogCXJldCA9IGk5MTVfZ2VtX29iamVjdF93YWl0KG9iaiwKIAkJ
CQkgICBJOTE1X1dBSVRfSU5URVJSVVBUSUJMRSwKIAkJCQkgICBNQVhfU0NIRURVTEVfVElNRU9V
VCk7Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
