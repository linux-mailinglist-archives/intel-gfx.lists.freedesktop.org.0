Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E25CC10B658
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 20:06:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 396856E46E;
	Wed, 27 Nov 2019 19:06:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10DE06E46E
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 19:06:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 11:06:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,250,1571727600"; d="scan'208";a="206860656"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 27 Nov 2019 11:05:59 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Nov 2019 21:05:59 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Nov 2019 21:05:50 +0200
Message-Id: <20191127190556.1574-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191127190556.1574-1-ville.syrjala@linux.intel.com>
References: <20191127190556.1574-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/7] drm/i915: Clean up arguments to nv12/scaler
 w/a funcs
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkRv
bid0IHBhc3MgdGhlIHJlZHVuZGFudCBkZXZfcHJpdiB0byBuZWVkc19udjEyX3dhKCkgYW5kCm5l
ZWRzX3NjYWxlcmNsa193YSgpLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYyB8IDI2ICsrKysrKysrKysrLS0tLS0tLS0tCiAxIGZpbGUgY2hh
bmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCA1M2RjMzEwYTVmNmQuLmQ1NTli
N2FlMTE1MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKQEAgLTYwMzcsOSArNjAzNywxMCBAQCBzdGF0aWMgYm9vbCBoc3dfcG9zdF91cGRhdGVfZW5h
YmxlX2lwcyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfcwogCXJldHVy
biAhb2xkX2NydGNfc3RhdGUtPmlwc19lbmFibGVkOwogfQogCi1zdGF0aWMgYm9vbCBuZWVkc19u
djEyX3dhKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKLQkJCSAgY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCitzdGF0aWMgYm9vbCBuZWVkc19udjEy
X3dhKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogeworCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Y19zdGF0ZS0+dWFwaS5j
cnRjLT5kZXYpOworCiAJaWYgKCFjcnRjX3N0YXRlLT5udjEyX3BsYW5lcykKIAkJcmV0dXJuIGZh
bHNlOwogCkBAIC02MDUwLDkgKzYwNTEsMTAgQEAgc3RhdGljIGJvb2wgbmVlZHNfbnYxMl93YShz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJcmV0dXJuIGZhbHNlOwogfQogCi1z
dGF0aWMgYm9vbCBuZWVkc19zY2FsZXJjbGtfd2Eoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LAotCQkJICAgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlKQorc3RhdGljIGJvb2wgbmVlZHNfc2NhbGVyY2xrX3dhKGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlKQogeworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiA9IHRvX2k5MTUoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjLT5kZXYpOworCiAJLyogV2FfMjAw
NjYwNDMxMjppY2wgKi8KIAlpZiAoY3J0Y19zdGF0ZS0+c2NhbGVyX3N0YXRlLnNjYWxlcl91c2Vy
cyA+IDAgJiYgSVNfSUNFTEFLRShkZXZfcHJpdikpCiAJCXJldHVybiB0cnVlOwpAQCAtNjA5Mywx
MiArNjA5NSwxMiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wb3N0X3BsYW5lX3VwZGF0ZShzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUpCiAJCQlpbnRlbF9wb3N0X2VuYWJsZV9w
cmltYXJ5KCZjcnRjLT5iYXNlLCBwaXBlX2NvbmZpZyk7CiAJfQogCi0JaWYgKG5lZWRzX252MTJf
d2EoZGV2X3ByaXYsIG9sZF9jcnRjX3N0YXRlKSAmJgotCSAgICAhbmVlZHNfbnYxMl93YShkZXZf
cHJpdiwgcGlwZV9jb25maWcpKQorCWlmIChuZWVkc19udjEyX3dhKG9sZF9jcnRjX3N0YXRlKSAm
JgorCSAgICAhbmVlZHNfbnYxMl93YShwaXBlX2NvbmZpZykpCiAJCXNrbF93YV84MjcoZGV2X3By
aXYsIGNydGMtPnBpcGUsIGZhbHNlKTsKIAotCWlmIChuZWVkc19zY2FsZXJjbGtfd2EoZGV2X3By
aXYsIG9sZF9jcnRjX3N0YXRlKSAmJgotCSAgICAhbmVlZHNfc2NhbGVyY2xrX3dhKGRldl9wcml2
LCBwaXBlX2NvbmZpZykpCisJaWYgKG5lZWRzX3NjYWxlcmNsa193YShvbGRfY3J0Y19zdGF0ZSkg
JiYKKwkgICAgIW5lZWRzX3NjYWxlcmNsa193YShwaXBlX2NvbmZpZykpCiAJCWljbF93YV9zY2Fs
ZXJjbGtnYXRpbmcoZGV2X3ByaXYsIGNydGMtPnBpcGUsIGZhbHNlKTsKIH0KIApAQCAtNjEzNSwx
MyArNjEzNywxMyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wcmVfcGxhbmVfdXBkYXRlKHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZSwKIAl9CiAKIAkvKiBEaXNwbGF5IFdBIDgy
NyAqLwotCWlmICghbmVlZHNfbnYxMl93YShkZXZfcHJpdiwgb2xkX2NydGNfc3RhdGUpICYmCi0J
ICAgIG5lZWRzX252MTJfd2EoZGV2X3ByaXYsIHBpcGVfY29uZmlnKSkKKwlpZiAoIW5lZWRzX252
MTJfd2Eob2xkX2NydGNfc3RhdGUpICYmCisJICAgIG5lZWRzX252MTJfd2EocGlwZV9jb25maWcp
KQogCQlza2xfd2FfODI3KGRldl9wcml2LCBjcnRjLT5waXBlLCB0cnVlKTsKIAogCS8qIFdhXzIw
MDY2MDQzMTI6aWNsICovCi0JaWYgKCFuZWVkc19zY2FsZXJjbGtfd2EoZGV2X3ByaXYsIG9sZF9j
cnRjX3N0YXRlKSAmJgotCSAgICBuZWVkc19zY2FsZXJjbGtfd2EoZGV2X3ByaXYsIHBpcGVfY29u
ZmlnKSkKKwlpZiAoIW5lZWRzX3NjYWxlcmNsa193YShvbGRfY3J0Y19zdGF0ZSkgJiYKKwkgICAg
bmVlZHNfc2NhbGVyY2xrX3dhKHBpcGVfY29uZmlnKSkKIAkJaWNsX3dhX3NjYWxlcmNsa2dhdGlu
ZyhkZXZfcHJpdiwgY3J0Yy0+cGlwZSwgdHJ1ZSk7CiAKIAkvKgotLSAKMi4yMy4wCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
