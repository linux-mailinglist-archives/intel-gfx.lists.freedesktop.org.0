Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5B1F1AC8
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 17:08:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBB446EDC3;
	Wed,  6 Nov 2019 16:08:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DE726EDBB
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 16:08:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Nov 2019 08:08:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,275,1569308400"; d="scan'208";a="200752632"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by fmsmga008.fm.intel.com with ESMTP; 06 Nov 2019 08:07:59 -0800
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>
Date: Wed,  6 Nov 2019 21:38:19 +0530
Message-Id: <20191106160819.25233-2-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191106160819.25233-1-ramalingam.c@intel.com>
References: <20191106160819.25233-1-ramalingam.c@intel.com>
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2hlbiBMTUVNIGlzIHN1cHBvcnRlZCwgZHVtYiBidWZmZXIgcHJlZmVycmVkIHRvIGJlIGNyZWF0
ZWQgZnJvbSBMTUVNLgoKdjI6CiAgUGFyYW1ldGVycyBhcmUgcmVzaHVmZmxlZC4gW0NocmlzXQp2
MzoKICBzL3JlZ2lvbl9pZC9tZW1fdHlwZQp2NDoKICB1c2UgdGhlIGk5MTVfZ2VtX29iamVjdF9j
cmVhdGVfcmVnaW9uIFtjaHJpc10KClNpZ25lZC1vZmYtYnk6IFJhbWFsaW5nYW0gQyA8cmFtYWxp
bmdhbS5jQGludGVsLmNvbT4KY2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jIHwgMTUgKysrKysrKysrKysr
LS0tCiAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW0uYwppbmRleCAxNDNhODk1MmI3MzYuLjgwZmI0MTU5Y2FkNiAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dlbS5jCkBAIC00NCw2ICs0NCw3IEBACiAjaW5jbHVkZSAiZ2VtL2k5
MTVfZ2VtX2NsZmx1c2guaCIKICNpbmNsdWRlICJnZW0vaTkxNV9nZW1fY29udGV4dC5oIgogI2lu
Y2x1ZGUgImdlbS9pOTE1X2dlbV9pb2N0bHMuaCIKKyNpbmNsdWRlICJnZW0vaTkxNV9nZW1fcmVn
aW9uLmgiCiAjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX3BtLmgiCiAjaW5jbHVkZSAiZ3QvaW50ZWxf
ZW5naW5lX3VzZXIuaCIKICNpbmNsdWRlICJndC9pbnRlbF9ndC5oIgpAQCAtMTc1LDYgKzE3Niw3
IEBAIGk5MTVfZ2VtX3BoeXNfcHdyaXRlKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmos
CiBzdGF0aWMgaW50CiBpOTE1X2dlbV9jcmVhdGUoc3RydWN0IGRybV9maWxlICpmaWxlLAogCQlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCisJCWVudW0gaW50ZWxfbWVtb3J5X3R5
cGUgbWVtX3R5cGUsCiAJCXU2NCAqc2l6ZV9wLAogCQl1MzIgKmhhbmRsZV9wKQogewpAQCAtMTg4
LDcgKzE5MCw5IEBAIGk5MTVfZ2VtX2NyZWF0ZShzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUsCiAJCXJl
dHVybiAtRUlOVkFMOwogCiAJLyogQWxsb2NhdGUgdGhlIG5ldyBvYmplY3QgKi8KLQlvYmogPSBp
OTE1X2dlbV9vYmplY3RfY3JlYXRlX3NobWVtKGRldl9wcml2LCBzaXplKTsKKwlvYmogPSBpOTE1
X2dlbV9vYmplY3RfY3JlYXRlX3JlZ2lvbihpbnRlbF9tZW1vcnlfcmVnaW9uX2xvb2t1cChkZXZf
cHJpdiwKKwkJCQkJCQkJICAgICAgIG1lbV90eXBlKSwKKwkJCQkJICAgIHNpemUsIDApOwogCWlm
IChJU19FUlIob2JqKSkKIAkJcmV0dXJuIFBUUl9FUlIob2JqKTsKIApAQCAtMjA4LDYgKzIxMiw3
IEBAIGk5MTVfZ2VtX2R1bWJfY3JlYXRlKHN0cnVjdCBkcm1fZmlsZSAqZmlsZSwKIAkJICAgICBz
dHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogCQkgICAgIHN0cnVjdCBkcm1fbW9kZV9jcmVhdGVfZHVt
YiAqYXJncykKIHsKKwllbnVtIGludGVsX21lbW9yeV90eXBlIG1lbV90eXBlID0gSU5URUxfTUVN
T1JZX1NZU1RFTTsKIAlpbnQgY3BwID0gRElWX1JPVU5EX1VQKGFyZ3MtPmJwcCwgOCk7CiAJdTMy
IGZvcm1hdDsKIApAQCAtMjM0LDcgKzIzOSwxMSBAQCBpOTE1X2dlbV9kdW1iX2NyZWF0ZShzdHJ1
Y3QgZHJtX2ZpbGUgKmZpbGUsCiAJCWFyZ3MtPnBpdGNoID0gQUxJR04oYXJncy0+cGl0Y2gsIDQw
OTYpOwogCiAJYXJncy0+c2l6ZSA9IGFyZ3MtPnBpdGNoICogYXJncy0+aGVpZ2h0OwotCXJldHVy
biBpOTE1X2dlbV9jcmVhdGUoZmlsZSwgdG9faTkxNShkZXYpLAorCisJaWYgKEhBU19MTUVNKHRv
X2k5MTUoZGV2KSkpCisJCW1lbV90eXBlID0gSU5URUxfTUVNT1JZX0xPQ0FMOworCisJcmV0dXJu
IGk5MTVfZ2VtX2NyZWF0ZShmaWxlLCB0b19pOTE1KGRldiksIG1lbV90eXBlLAogCQkJICAgICAg
ICZhcmdzLT5zaXplLCAmYXJncy0+aGFuZGxlKTsKIH0KIApAQCAtMjUzLDcgKzI2Miw3IEBAIGk5
MTVfZ2VtX2NyZWF0ZV9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAog
CiAJaTkxNV9nZW1fZmx1c2hfZnJlZV9vYmplY3RzKGRldl9wcml2KTsKIAotCXJldHVybiBpOTE1
X2dlbV9jcmVhdGUoZmlsZSwgZGV2X3ByaXYsCisJcmV0dXJuIGk5MTVfZ2VtX2NyZWF0ZShmaWxl
LCBkZXZfcHJpdiwgSU5URUxfTUVNT1JZX1NZU1RFTSwKIAkJCSAgICAgICAmYXJncy0+c2l6ZSwg
JmFyZ3MtPmhhbmRsZSk7CiB9CiAKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
