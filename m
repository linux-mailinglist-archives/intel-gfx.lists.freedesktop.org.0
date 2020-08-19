Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FBAE24A155
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 16:09:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0444C6E409;
	Wed, 19 Aug 2020 14:09:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83EF26E400
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 14:09:13 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Aug 2020 16:08:59 +0200
Message-Id: <20200819140904.1708856-20-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200819140904.1708856-1-maarten.lankhorst@linux.intel.com>
References: <20200819140904.1708856-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 19/24] drm/i915/selftests: Fix locking
 inversion in lrc selftest.
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBmdW5jdGlvbiBkb2VzIG5vdCB1c2UgaW50ZWxfY29udGV4dF9jcmVhdGVfcmVxdWVzdCwg
c28gaXQgaGFzCnRvIHVzZSB0aGUgc2FtZSBsb2NraW5nIG9yZGVyIGFzIG5vcm1hbCBjb2RlLiBU
aGlzIGlzIHJlcXVpcmVkIHRvCnNodXQgdXAgbG9ja2RlcCBpbiBzZWxmdGVzdHMuCgpTaWduZWQt
b2ZmLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwu
Y29tPgpSZXZpZXdlZC1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AaW50
ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2xyYy5jIHwgMTUg
KysrKysrKysrKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgMyBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9s
cmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2xyYy5jCmluZGV4IDdmYWJh
OWY5MTIyNC4uOTVkNDFjMDFkMGUwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9zZWxmdGVzdF9scmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9s
cmMuYwpAQCAtNDk5Niw2ICs0OTk2LDcgQEAgc3RhdGljIGludCBfX2xpdmVfbHJjX3N0YXRlKHN0
cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKIHsKIAlzdHJ1Y3QgaW50ZWxfY29udGV4dCAq
Y2U7CiAJc3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7CisJc3RydWN0IGk5MTVfZ2VtX3d3X2N0eCB3
dzsKIAllbnVtIHsKIAkJUklOR19TVEFSVF9JRFggPSAwLAogCQlSSU5HX1RBSUxfSURYLApAQCAt
NTAxMCw3ICs1MDExLDExIEBAIHN0YXRpYyBpbnQgX19saXZlX2xyY19zdGF0ZShzdHJ1Y3QgaW50
ZWxfZW5naW5lX2NzICplbmdpbmUsCiAJaWYgKElTX0VSUihjZSkpCiAJCXJldHVybiBQVFJfRVJS
KGNlKTsKIAotCWVyciA9IGludGVsX2NvbnRleHRfcGluKGNlKTsKKwlpOTE1X2dlbV93d19jdHhf
aW5pdCgmd3csIGZhbHNlKTsKK3JldHJ5OgorCWVyciA9IGk5MTVfZ2VtX29iamVjdF9sb2NrKHNj
cmF0Y2gtPm9iaiwgJnd3KTsKKwlpZiAoIWVycikKKwkJZXJyID0gaW50ZWxfY29udGV4dF9waW5f
d3coY2UsICZ3dyk7CiAJaWYgKGVycikKIAkJZ290byBlcnJfcHV0OwogCkBAIC01MDM5LDExICs1
MDQ0LDkgQEAgc3RhdGljIGludCBfX2xpdmVfbHJjX3N0YXRlKHN0cnVjdCBpbnRlbF9lbmdpbmVf
Y3MgKmVuZ2luZSwKIAkqY3MrKyA9IGk5MTVfZ2d0dF9vZmZzZXQoc2NyYXRjaCkgKyBSSU5HX1RB
SUxfSURYICogc2l6ZW9mKHUzMik7CiAJKmNzKysgPSAwOwogCi0JaTkxNV92bWFfbG9jayhzY3Jh
dGNoKTsKIAllcnIgPSBpOTE1X3JlcXVlc3RfYXdhaXRfb2JqZWN0KHJxLCBzY3JhdGNoLT5vYmos
IHRydWUpOwogCWlmICghZXJyKQogCQllcnIgPSBpOTE1X3ZtYV9tb3ZlX3RvX2FjdGl2ZShzY3Jh
dGNoLCBycSwgRVhFQ19PQkpFQ1RfV1JJVEUpOwotCWk5MTVfdm1hX3VubG9jayhzY3JhdGNoKTsK
IAogCWk5MTVfcmVxdWVzdF9nZXQocnEpOwogCWk5MTVfcmVxdWVzdF9hZGQocnEpOwpAQCAtNTA4
MCw2ICs1MDgzLDEyIEBAIHN0YXRpYyBpbnQgX19saXZlX2xyY19zdGF0ZShzdHJ1Y3QgaW50ZWxf
ZW5naW5lX2NzICplbmdpbmUsCiBlcnJfdW5waW46CiAJaW50ZWxfY29udGV4dF91bnBpbihjZSk7
CiBlcnJfcHV0OgorCWlmIChlcnIgPT0gLUVERUFETEspIHsKKwkJZXJyID0gaTkxNV9nZW1fd3df
Y3R4X2JhY2tvZmYoJnd3KTsKKwkJaWYgKCFlcnIpCisJCQlnb3RvIHJldHJ5OworCX0KKwlpOTE1
X2dlbV93d19jdHhfZmluaSgmd3cpOwogCWludGVsX2NvbnRleHRfcHV0KGNlKTsKIAlyZXR1cm4g
ZXJyOwogfQotLSAKMi4yOC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
