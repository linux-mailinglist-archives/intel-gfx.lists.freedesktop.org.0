Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C625410E632
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2019 07:55:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D673389F75;
	Mon,  2 Dec 2019 06:55:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BBFA89F73
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2019 06:55:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Dec 2019 22:55:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,268,1571727600"; d="scan'208";a="411660494"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by fmsmga006.fm.intel.com with ESMTP; 01 Dec 2019 22:55:32 -0800
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Matthew Auld <matthew.auld@intel.com>
Date: Mon,  2 Dec 2019 12:24:58 +0530
Message-Id: <20191202065458.9477-2-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191202065458.9477-1-ramalingam.c@intel.com>
References: <20191202065458.9477-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 2/2] drm/i915: Create dumb buffer from LMEM
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

V2hlbiBMTUVNIGlzIHN1cHBvcnRlZCwgZHVtYiBidWZmZXIgcHJlZmVycmVkIHRvIGJlIGNyZWF0
ZWQgZnJvbSBMTUVNLgoKdjI6CiAgUGFyYW1ldGVycyBhcmUgcmVzaHVmZmxlZC4gW0NocmlzXQp2
MzoKICBzL3JlZ2lvbl9pZC9tZW1fdHlwZQp2NDoKICB1c2UgdGhlIGk5MTVfZ2VtX29iamVjdF9j
cmVhdGVfcmVnaW9uIFtjaHJpc10KClNpZ25lZC1vZmYtYnk6IFJhbWFsaW5nYW0gQyA8cmFtYWxp
bmdhbS5jQGludGVsLmNvbT4KY2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jIHwgMTQgKysrKysrKysrKyst
LS0KIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbS5jCmluZGV4IDYxMzk1YjAzNDQzZS4uMzRlNDgwYzgyOTNlIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtLmMKQEAgLTQ0LDYgKzQ0LDcgQEAKICNpbmNsdWRlICJnZW0vaTkx
NV9nZW1fY2xmbHVzaC5oIgogI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9jb250ZXh0LmgiCiAjaW5j
bHVkZSAiZ2VtL2k5MTVfZ2VtX2lvY3Rscy5oIgorI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9yZWdp
b24uaCIKICNpbmNsdWRlICJnZW0vaTkxNV9nZW1fcG0uaCIKICNpbmNsdWRlICJndC9pbnRlbF9j
b250ZXh0LmgiCiAjaW5jbHVkZSAiZ3QvaW50ZWxfZW5naW5lX3VzZXIuaCIKQEAgLTE3Niw2ICsx
NzcsNyBAQCBpOTE1X2dlbV9waHlzX3B3cml0ZShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAq
b2JqLAogc3RhdGljIGludAogaTkxNV9nZW1fY3JlYXRlKHN0cnVjdCBkcm1fZmlsZSAqZmlsZSwK
IAkJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAorCQllbnVtIGludGVsX21lbW9y
eV90eXBlIG1lbV90eXBlLAogCQl1NjQgKnNpemVfcCwKIAkJdTMyICpoYW5kbGVfcCkKIHsKQEAg
LTE4OSw3ICsxOTEsOCBAQCBpOTE1X2dlbV9jcmVhdGUoc3RydWN0IGRybV9maWxlICpmaWxlLAog
CQlyZXR1cm4gLUVJTlZBTDsKIAogCS8qIEFsbG9jYXRlIHRoZSBuZXcgb2JqZWN0ICovCi0Jb2Jq
ID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9zaG1lbShkZXZfcHJpdiwgc2l6ZSk7CisJb2JqID0g
aTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9yZWdpb24oaW50ZWxfbWVtb3J5X3JlZ2lvbl9sb29rdXAo
ZGV2X3ByaXYsCisJCQkJCSAgICBtZW1fdHlwZSksIHNpemUsIDApOwogCWlmIChJU19FUlIob2Jq
KSkKIAkJcmV0dXJuIFBUUl9FUlIob2JqKTsKIApAQCAtMjA5LDYgKzIxMiw3IEBAIGk5MTVfZ2Vt
X2R1bWJfY3JlYXRlKHN0cnVjdCBkcm1fZmlsZSAqZmlsZSwKIAkJICAgICBzdHJ1Y3QgZHJtX2Rl
dmljZSAqZGV2LAogCQkgICAgIHN0cnVjdCBkcm1fbW9kZV9jcmVhdGVfZHVtYiAqYXJncykKIHsK
KwllbnVtIGludGVsX21lbW9yeV90eXBlIG1lbV90eXBlID0gSU5URUxfTUVNT1JZX1NZU1RFTTsK
IAlpbnQgY3BwID0gRElWX1JPVU5EX1VQKGFyZ3MtPmJwcCwgOCk7CiAJdTMyIGZvcm1hdDsKIApA
QCAtMjM1LDcgKzIzOSwxMSBAQCBpOTE1X2dlbV9kdW1iX2NyZWF0ZShzdHJ1Y3QgZHJtX2ZpbGUg
KmZpbGUsCiAJCWFyZ3MtPnBpdGNoID0gQUxJR04oYXJncy0+cGl0Y2gsIDQwOTYpOwogCiAJYXJn
cy0+c2l6ZSA9IGFyZ3MtPnBpdGNoICogYXJncy0+aGVpZ2h0OwotCXJldHVybiBpOTE1X2dlbV9j
cmVhdGUoZmlsZSwgdG9faTkxNShkZXYpLAorCisJaWYgKEhBU19MTUVNKHRvX2k5MTUoZGV2KSkp
CisJCW1lbV90eXBlID0gSU5URUxfTUVNT1JZX0xPQ0FMOworCisJcmV0dXJuIGk5MTVfZ2VtX2Ny
ZWF0ZShmaWxlLCB0b19pOTE1KGRldiksIG1lbV90eXBlLAogCQkJICAgICAgICZhcmdzLT5zaXpl
LCAmYXJncy0+aGFuZGxlKTsKIH0KIApAQCAtMjU0LDcgKzI2Miw3IEBAIGk5MTVfZ2VtX2NyZWF0
ZV9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAogCiAJaTkxNV9nZW1f
Zmx1c2hfZnJlZV9vYmplY3RzKGRldl9wcml2KTsKIAotCXJldHVybiBpOTE1X2dlbV9jcmVhdGUo
ZmlsZSwgZGV2X3ByaXYsCisJcmV0dXJuIGk5MTVfZ2VtX2NyZWF0ZShmaWxlLCBkZXZfcHJpdiwg
SU5URUxfTUVNT1JZX1NZU1RFTSwKIAkJCSAgICAgICAmYXJncy0+c2l6ZSwgJmFyZ3MtPmhhbmRs
ZSk7CiB9CiAKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
