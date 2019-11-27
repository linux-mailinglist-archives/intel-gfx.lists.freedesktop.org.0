Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E22110B742
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 21:13:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 857886E5BE;
	Wed, 27 Nov 2019 20:13:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 754D46E5B9
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 20:13:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 12:13:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,250,1571727600"; d="scan'208";a="206990995"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 27 Nov 2019 12:13:05 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Nov 2019 22:13:04 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Nov 2019 22:12:22 +0200
Message-Id: <20191127201222.16669-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191127201222.16669-1-ville.syrjala@linux.intel.com>
References: <20191127201222.16669-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 14/14] drm/i915/fbc: Reallocate cfb if we
 need more of it
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
Cc: Jian-Hong Pan <jian-hong@endlessm.com>,
 Paulo Zanoni <paulo.r.zanoni@intel.com>, Daniel Drake <drake@endlessm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBjb2RlIGFzc3VtZXMgd2UgY2FuIG9taXQgdGhlIGNmYiBhbGxvY2F0aW9uIG9uY2UgZmJjCmhh
cyBiZWVuIGVuYWJsZWQgb25jZS4gVGhhdCdzIG5vbnNlbnNlLiBMZXQncyB0cnkgdG8KcmVhbGxv
Y2F0ZSBpdCBpZiB3ZSBuZWVkIHRvLgoKVGhlIGNvZGUgaXMgc3RpbGwgYSBtZXNzLCBidXQgbWF5
YmUgdGhpcyBpcyBlbm91Z2ggdG8gZ2V0CmZiYyBnb2luZyBpbiBzb21lIGNhc2VzIHdoZXJlIGl0
IGluaXRpYWxseSB1bmRlcmFsbG9jYXRlcwp0aGUgY2ZiIGFuZCB0aGVyZSdzIG5vIGZ1bGwgbW9k
ZXNldCB0byBmaXggaXQgdXAuCgpDYzogRGFuaWVsIERyYWtlIDxkcmFrZUBlbmRsZXNzbS5jb20+
CkNjOiBQYXVsbyBaYW5vbmkgPHBhdWxvLnIuemFub25pQGludGVsLmNvbT4KQ2M6IEppYW4tSG9u
ZyBQYW4gPGppYW4taG9uZ0BlbmRsZXNzbS5jb20+CkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFh
cnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgfCAyMiArKysrKysrKysrKysrKystLS0tLS0tCiAx
IGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwppbmRleCBjOTc2Njk4YjA3MjkuLjkyODA1
OWE1ZGE4MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9m
YmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCkBAIC02
NzIsNiArNjcyLDE0IEBAIHN0YXRpYyB2b2lkIGludGVsX2ZiY191cGRhdGVfc3RhdGVfY2FjaGUo
c3RydWN0IGludGVsX2NydGMgKmNydGMsCiAJCWNhY2hlLT5mZW5jZV9pZCA9IC0xOwogfQogCitz
dGF0aWMgYm9vbCBpbnRlbF9mYmNfY2ZiX3NpemVfY2hhbmdlZChzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYpCit7CisJc3RydWN0IGludGVsX2ZiYyAqZmJjID0gJmRldl9wcml2LT5m
YmM7CisKKwlyZXR1cm4gaW50ZWxfZmJjX2NhbGN1bGF0ZV9jZmJfc2l6ZShkZXZfcHJpdiwgJmZi
Yy0+c3RhdGVfY2FjaGUpID4KKwkJZmJjLT5jb21wcmVzc2VkX2ZiLnNpemUgKiBmYmMtPnRocmVz
aG9sZDsKK30KKwogc3RhdGljIGJvb2wgaW50ZWxfZmJjX2Nhbl9hY3RpdmF0ZShzdHJ1Y3QgaW50
ZWxfY3J0YyAqY3J0YykKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0
b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKQEAgLTc1Nyw4ICs3NjUsNyBAQCBzdGF0aWMgYm9vbCBp
bnRlbF9mYmNfY2FuX2FjdGl2YXRlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQogCSAqIHdlIGRp
ZG4ndCBnZXQgYW55IGludmFsaWRhdGUvZGVhY3RpdmF0ZSBjYWxscywgYnV0IHRoaXMgd291bGQg
cmVxdWlyZQogCSAqIGEgbG90IG9mIHRyYWNraW5nIGp1c3QgZm9yIGEgc3BlY2lmaWMgY2FzZS4g
SWYgd2UgY29uY2x1ZGUgaXQncyBhbgogCSAqIGltcG9ydGFudCBjYXNlLCB3ZSBjYW4gaW1wbGVt
ZW50IGl0IGxhdGVyLiAqLwotCWlmIChpbnRlbF9mYmNfY2FsY3VsYXRlX2NmYl9zaXplKGRldl9w
cml2LCAmZmJjLT5zdGF0ZV9jYWNoZSkgPgotCSAgICBmYmMtPmNvbXByZXNzZWRfZmIuc2l6ZSAq
IGZiYy0+dGhyZXNob2xkKSB7CisJaWYgKGludGVsX2ZiY19jZmJfc2l6ZV9jaGFuZ2VkKGRldl9w
cml2KSkgewogCQlmYmMtPm5vX2ZiY19yZWFzb24gPSAiQ0ZCIHJlcXVpcmVtZW50cyBjaGFuZ2Vk
IjsKIAkJcmV0dXJuIGZhbHNlOwogCX0KQEAgLTExMTIsMTIgKzExMTksMTIgQEAgdm9pZCBpbnRl
bF9mYmNfZW5hYmxlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCW11dGV4X2xvY2soJmZiYy0+
bG9jayk7CiAKIAlpZiAoZmJjLT5jcnRjKSB7Ci0JCVdBUk5fT04oZmJjLT5jcnRjID09IGNydGMg
JiYgIWNydGNfc3RhdGUtPmVuYWJsZV9mYmMpOwotCQlnb3RvIG91dDsKLQl9CisJCWlmIChmYmMt
PmNydGMgIT0gY3J0YyB8fAorCQkgICAgIWludGVsX2ZiY19jZmJfc2l6ZV9jaGFuZ2VkKGRldl9w
cml2KSkKKwkJCWdvdG8gb3V0OwogCi0JaWYgKCFjcnRjX3N0YXRlLT5lbmFibGVfZmJjKQotCQln
b3RvIG91dDsKKwkJX19pbnRlbF9mYmNfZGlzYWJsZShkZXZfcHJpdik7CisJfQogCiAJV0FSTl9P
TihmYmMtPmFjdGl2ZSk7CiAKQEAgLTExMzAsNiArMTEzNyw3IEBAIHZvaWQgaW50ZWxfZmJjX2Vu
YWJsZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAlpZiAoaW50ZWxfZmJjX2FsbG9jX2NmYihk
ZXZfcHJpdiwKIAkJCQlpbnRlbF9mYmNfY2FsY3VsYXRlX2NmYl9zaXplKGRldl9wcml2LCBjYWNo
ZSksCiAJCQkJZmItPmZvcm1hdC0+Y3BwWzBdKSkgeworCQljYWNoZS0+cGxhbmUudmlzaWJsZSA9
IGZhbHNlOwogCQlmYmMtPm5vX2ZiY19yZWFzb24gPSAibm90IGVub3VnaCBzdG9sZW4gbWVtb3J5
IjsKIAkJZ290byBvdXQ7CiAJfQotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
