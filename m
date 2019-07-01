Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7654F5C0D9
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 18:06:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA68089BA3;
	Mon,  1 Jul 2019 16:06:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C508489BA3
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jul 2019 16:06:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Jul 2019 09:06:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,439,1557212400"; d="scan'208";a="171493825"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 01 Jul 2019 09:05:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 01 Jul 2019 19:05:58 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Jul 2019 19:05:48 +0300
Message-Id: <20190701160550.24205-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190701160550.24205-1-ville.syrjala@linux.intel.com>
References: <20190701160550.24205-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/6] drm/i915: Polish intel_atomic_track_fbs()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClN0
cmVhbWxpbmUgdGhlIGNvZGUgYSBiaXQgYnkgdXNpbmcgaW50ZWxfIHR5cGVzIGluc3RlYWQgb2Yg
ZHJtXwp0eXBlcyBpbiBpbnRlbF9hdG9taWNfdHJhY2tfZmJzKCkuCgpTaWduZWQtb2ZmLWJ5OiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMTcgKysrKysrKysrLS0t
LS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCAwYmI5
NWI3ZmZkYTQuLmQzZTgwNTFjZTA2YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMKQEAgLTE0MDcxLDE2ICsxNDA3MSwxNyBAQCBpbnRlbF9hdG9taWNf
Y29tbWl0X3JlYWR5KHN0cnVjdCBpOTE1X3N3X2ZlbmNlICpmZW5jZSwKIAlyZXR1cm4gTk9USUZZ
X0RPTkU7CiB9CiAKLXN0YXRpYyB2b2lkIGludGVsX2F0b21pY190cmFja19mYnMoc3RydWN0IGRy
bV9hdG9taWNfc3RhdGUgKnN0YXRlKQorc3RhdGljIHZvaWQgaW50ZWxfYXRvbWljX3RyYWNrX2Zi
cyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKIHsKLQlzdHJ1Y3QgZHJtX3BsYW5l
X3N0YXRlICpvbGRfcGxhbmVfc3RhdGUsICpuZXdfcGxhbmVfc3RhdGU7Ci0Jc3RydWN0IGRybV9w
bGFuZSAqcGxhbmU7CisJc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpvbGRfcGxhbmVfc3RhdGUs
ICpuZXdfcGxhbmVfc3RhdGU7CisJc3RydWN0IGludGVsX3BsYW5lICpwbGFuZTsKIAlpbnQgaTsK
IAotCWZvcl9lYWNoX29sZG5ld19wbGFuZV9pbl9zdGF0ZShzdGF0ZSwgcGxhbmUsIG9sZF9wbGFu
ZV9zdGF0ZSwgbmV3X3BsYW5lX3N0YXRlLCBpKQotCQlpOTE1X2dlbV90cmFja19mYihpbnRlbF9m
Yl9vYmoob2xkX3BsYW5lX3N0YXRlLT5mYiksCi0JCQkJICBpbnRlbF9mYl9vYmoobmV3X3BsYW5l
X3N0YXRlLT5mYiksCi0JCQkJICB0b19pbnRlbF9wbGFuZShwbGFuZSktPmZyb250YnVmZmVyX2Jp
dCk7CisJZm9yX2VhY2hfb2xkbmV3X2ludGVsX3BsYW5lX2luX3N0YXRlKHN0YXRlLCBwbGFuZSwg
b2xkX3BsYW5lX3N0YXRlLAorCQkJCQkgICAgIG5ld19wbGFuZV9zdGF0ZSwgaSkKKwkJaTkxNV9n
ZW1fdHJhY2tfZmIoaW50ZWxfZmJfb2JqKG9sZF9wbGFuZV9zdGF0ZS0+YmFzZS5mYiksCisJCQkJ
ICBpbnRlbF9mYl9vYmoobmV3X3BsYW5lX3N0YXRlLT5iYXNlLmZiKSwKKwkJCQkgIHBsYW5lLT5m
cm9udGJ1ZmZlcl9iaXQpOwogfQogCiAvKioKQEAgLTE0MTU4LDcgKzE0MTU5LDcgQEAgc3RhdGlj
IGludCBpbnRlbF9hdG9taWNfY29tbWl0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJfQogCWRl
dl9wcml2LT53bS5kaXN0cnVzdF9iaW9zX3dtID0gZmFsc2U7CiAJaW50ZWxfc2hhcmVkX2RwbGxf
c3dhcF9zdGF0ZShpbnRlbF9zdGF0ZSk7Ci0JaW50ZWxfYXRvbWljX3RyYWNrX2ZicyhzdGF0ZSk7
CisJaW50ZWxfYXRvbWljX3RyYWNrX2ZicyhpbnRlbF9zdGF0ZSk7CiAKIAlpZiAoaW50ZWxfc3Rh
dGUtPm1vZGVzZXQpIHsKIAkJbWVtY3B5KGRldl9wcml2LT5taW5fY2RjbGssIGludGVsX3N0YXRl
LT5taW5fY2RjbGssCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
