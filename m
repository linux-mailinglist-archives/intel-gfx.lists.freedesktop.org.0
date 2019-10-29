Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A7BE8B3C
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 15:55:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8A1A6E41A;
	Tue, 29 Oct 2019 14:55:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0BBA6E41A
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 14:55:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 07:55:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,244,1569308400"; d="scan'208";a="198383842"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 29 Oct 2019 07:55:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Oct 2019 16:55:26 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Oct 2019 16:55:26 +0200
Message-Id: <20191029145526.10308-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Stop frobbing crtc->base.mode
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBjb3JlIG5vIGxvbmdlciB1c2VzIGRybV9jcnRjX3N0YXRlOjptb2RlIHdpdGggYXRvbWljIGRy
aXZlcnMsCnNvIGxldCdzIHN0b3AgZnJvYmJpbmcgaXQgaW4gdGhlIGRyaXZlci4gRm9yIHRoZSB1
c2VyIG1vZGUgcmVhZG91dAp3ZSdsbCBqdXN0IHVzZSBhbiBvbiBzdGFjayBtb2RlLgoKU2lnbmVk
LW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDE4ICsr
KysrKysrKy0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgOSBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
CmluZGV4IGU1NmE3NWMwNzA0My4uOTZmNzZhYmIyZDM3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTQxMjcsOSArMTQxMjcsNiBAQCBzdGF0
aWMgdm9pZCBpbnRlbF9waXBlX2Zhc3RzZXQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUg
Km9sZF9jcnRjX3N0YXRlLAogCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0
YyhuZXdfY3J0Y19zdGF0ZS0+YmFzZS5jcnRjKTsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKIAotCS8qIGRybV9hdG9taWNfaGVs
cGVyX3VwZGF0ZV9sZWdhY3lfbW9kZXNldF9zdGF0ZSBtaWdodCBub3QgYmUgY2FsbGVkLiAqLwot
CWNydGMtPmJhc2UubW9kZSA9IG5ld19jcnRjX3N0YXRlLT5iYXNlLm1vZGU7Ci0KIAkvKgogCSAq
IFVwZGF0ZSBwaXBlIHNpemUgYW5kIGFkanVzdCBmaXR0ZXIgaWYgbmVlZGVkOiB0aGUgcmVhc29u
IGZvciB0aGlzIGlzCiAJICogdGhhdCBpbiBjb21wdXRlX21vZGVfY2hhbmdlcyB3ZSBjaGVjayB0
aGUgbmF0aXZlIG1vZGUgKG5vdCB0aGUgcGZpdApAQCAtMTczOTQsMTMgKzE3MzkxLDE2IEBAIHN0
YXRpYyB2b2lkIGludGVsX21vZGVzZXRfcmVhZG91dF9od19zdGF0ZShzdHJ1Y3QgZHJtX2Rldmlj
ZSAqZGV2KQogCQlzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lOwogCQlpbnQgbWluX2NkY2xrID0g
MDsKIAotCQltZW1zZXQoJmNydGMtPmJhc2UubW9kZSwgMCwgc2l6ZW9mKGNydGMtPmJhc2UubW9k
ZSkpOwogCQlpZiAoY3J0Y19zdGF0ZS0+YmFzZS5hY3RpdmUpIHsKLQkJCWludGVsX21vZGVfZnJv
bV9waXBlX2NvbmZpZygmY3J0Yy0+YmFzZS5tb2RlLCBjcnRjX3N0YXRlKTsKLQkJCWNydGMtPmJh
c2UubW9kZS5oZGlzcGxheSA9IGNydGNfc3RhdGUtPnBpcGVfc3JjX3c7Ci0JCQljcnRjLT5iYXNl
Lm1vZGUudmRpc3BsYXkgPSBjcnRjX3N0YXRlLT5waXBlX3NyY19oOwotCQkJaW50ZWxfbW9kZV9m
cm9tX3BpcGVfY29uZmlnKCZjcnRjX3N0YXRlLT5iYXNlLmFkanVzdGVkX21vZGUsIGNydGNfc3Rh
dGUpOwotCQkJV0FSTl9PTihkcm1fYXRvbWljX3NldF9tb2RlX2Zvcl9jcnRjKCZjcnRjX3N0YXRl
LT5iYXNlLCAmY3J0Yy0+YmFzZS5tb2RlKSk7CisJCQlzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSBt
b2RlOworCisJCQlpbnRlbF9tb2RlX2Zyb21fcGlwZV9jb25maWcoJmNydGNfc3RhdGUtPmJhc2Uu
YWRqdXN0ZWRfbW9kZSwKKwkJCQkJCSAgICBjcnRjX3N0YXRlKTsKKworCQkJbW9kZSA9IGNydGNf
c3RhdGUtPmJhc2UuYWRqdXN0ZWRfbW9kZTsKKwkJCW1vZGUuaGRpc3BsYXkgPSBjcnRjX3N0YXRl
LT5waXBlX3NyY193OworCQkJbW9kZS52ZGlzcGxheSA9IGNydGNfc3RhdGUtPnBpcGVfc3JjX2g7
CisJCQlXQVJOX09OKGRybV9hdG9taWNfc2V0X21vZGVfZm9yX2NydGMoJmNydGNfc3RhdGUtPmJh
c2UsICZtb2RlKSk7CiAKIAkJCS8qCiAJCQkgKiBUaGUgaW5pdGlhbCBtb2RlIG5lZWRzIHRvIGJl
IHNldCBpbiBvcmRlciB0byBrZWVwCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
