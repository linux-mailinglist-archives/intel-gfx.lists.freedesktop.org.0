Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92CEBC8725
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 13:22:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95C346E948;
	Wed,  2 Oct 2019 11:22:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53D046E93C
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 11:22:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18692033-1500050 
 for multiple; Wed, 02 Oct 2019 12:20:09 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Oct 2019 12:19:48 +0100
Message-Id: <20191002112000.12280-18-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191002112000.12280-1-chris@chris-wilson.co.uk>
References: <20191002112000.12280-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 18/30] drm/i915: Mark up "sentinel" requests
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

U29tZXRpbWVzIHdlIHdhbnQgdG8gZW1pdCBhIHRlcm1pbmF0b3IgcmVxdWVzdCwgYSByZXF1ZXN0
IHRoYXQgZmx1c2hlcwp0aGUgcGlwZWxpbmUgYW5kIGFsbG93cyBubyByZXF1ZXN0IHRvIGNvbWUg
YWZ0ZXIgaXQuIFRoaXMgY2FuIGJlIHVzZWQKZm9yIGEgInByZWVtcHQtdG8taWRsZSIgdG8gZW5z
dXJlIHRoYXQgdXBvbiBwcm9jZXNzaW5nIHRoZQpjb250ZXh0LXN3aXRjaCB0byB0aGF0IHJlcXVl
c3QsIGFsbCBvdGhlciBhY3RpdmUgY29udGV4dHMgaGF2ZSBiZWVuCmZsdXNoZWQuCgpTaWduZWQt
b2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyB8ICA2ICsrKysrKwogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmggfCAxMCArKysrKysrKy0tCiAyIGZpbGVzIGNoYW5nZWQs
IDE0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9scmMuYwppbmRleCA3NzQxZDc4MTM5YWIuLjUyZTVlNGRlMWZjNiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfbHJjLmMKQEAgLTEyMzMsNiArMTIzMyw5IEBAIHN0YXRpYyBib29sIGNhbl9t
ZXJnZV9ycShjb25zdCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpwcmV2LAogCWlmIChpOTE1X3JlcXVl
c3RfY29tcGxldGVkKG5leHQpKQogCQlyZXR1cm4gdHJ1ZTsKIAorCWlmIChpOTE1X3JlcXVlc3Rf
aGFzX3NlbnRpbmVsKHByZXYpKQorCQlyZXR1cm4gZmFsc2U7CisKIAlpZiAoIWNhbl9tZXJnZV9j
dHgocHJldi0+aHdfY29udGV4dCwgbmV4dC0+aHdfY29udGV4dCkpCiAJCXJldHVybiBmYWxzZTsK
IApAQCAtMTcwNCw2ICsxNzA3LDkgQEAgc3RhdGljIHZvaWQgZXhlY2xpc3RzX2RlcXVldWUoc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCQkJCWlmIChsYXN0LT5od19jb250ZXh0ID09
IHJxLT5od19jb250ZXh0KQogCQkJCQlnb3RvIGRvbmU7CiAKKwkJCQlpZiAoaTkxNV9yZXF1ZXN0
X2hhc19zZW50aW5lbChsYXN0KSkKKwkJCQkJZ290byBkb25lOworCiAJCQkJLyoKIAkJCQkgKiBJ
ZiBHVlQgb3ZlcnJpZGVzIHVzIHdlIG9ubHkgZXZlciBzdWJtaXQKIAkJCQkgKiBwb3J0WzBdLCBs
ZWF2aW5nIHBvcnRbMV0gZW1wdHkuIE5vdGUgdGhhdCB3ZQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
cXVlc3QuaAppbmRleCA2YTk1MjQyYjI4MGQuLjk2OTkxZDY0NzU5YyAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZXF1ZXN0LmgKQEAgLTIxNiw4ICsyMTYsOSBAQCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0
IHsKIAl1bnNpZ25lZCBsb25nIGVtaXR0ZWRfamlmZmllczsKIAogCXVuc2lnbmVkIGxvbmcgZmxh
Z3M7Ci0jZGVmaW5lIEk5MTVfUkVRVUVTVF9XQUlUQk9PU1QgQklUKDApCi0jZGVmaW5lIEk5MTVf
UkVRVUVTVF9OT1BSRUVNUFQgQklUKDEpCisjZGVmaW5lIEk5MTVfUkVRVUVTVF9XQUlUQk9PU1QJ
QklUKDApCisjZGVmaW5lIEk5MTVfUkVRVUVTVF9OT1BSRUVNUFQJQklUKDEpCisjZGVmaW5lIEk5
MTVfUkVRVUVTVF9TRU5USU5FTAlCSVQoMikKIAogCS8qKiB0aW1lbGluZS0+cmVxdWVzdCBlbnRy
eSBmb3IgdGhpcyByZXF1ZXN0ICovCiAJc3RydWN0IGxpc3RfaGVhZCBsaW5rOwpAQCAtNDQwLDYg
KzQ0MSwxMSBAQCBzdGF0aWMgaW5saW5lIGJvb2wgaTkxNV9yZXF1ZXN0X2hhc19ub3ByZWVtcHQo
Y29uc3Qgc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCiAJcmV0dXJuIHVubGlrZWx5KHJxLT5mbGFn
cyAmIEk5MTVfUkVRVUVTVF9OT1BSRUVNUFQpOwogfQogCitzdGF0aWMgaW5saW5lIGJvb2wgaTkx
NV9yZXF1ZXN0X2hhc19zZW50aW5lbChjb25zdCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKK3sK
KwlyZXR1cm4gdW5saWtlbHkocnEtPmZsYWdzICYgSTkxNV9SRVFVRVNUX1NFTlRJTkVMKTsKK30K
Kwogc3RhdGljIGlubGluZSBzdHJ1Y3QgaW50ZWxfdGltZWxpbmUgKgogaTkxNV9yZXF1ZXN0X3Rp
bWVsaW5lKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQogewotLSAKMi4yMy4wCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
