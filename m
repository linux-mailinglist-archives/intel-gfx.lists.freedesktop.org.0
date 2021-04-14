Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA7F35EAC9
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 04:23:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C25566E430;
	Wed, 14 Apr 2021 02:23:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A22326E431
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 02:23:24 +0000 (UTC)
IronPort-SDR: UvOYr497k64bEP3QYYARS4uKthV5JrUhV7OjFzW0h4Q/4yI4XLjQe0SF6MD3RmQLx39nFsWTJS
 Hex2jT870I1w==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="279857535"
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; d="scan'208";a="279857535"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2021 19:23:23 -0700
IronPort-SDR: GMLum5/poolErPPkc/trWjlnMmqwOpbSVpkrsm0ooOO//sYBz8HOGBfwUOt/f38OcAN0nCz12e
 MYwh5cKhfiNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; d="scan'208";a="450628764"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 13 Apr 2021 19:23:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 14 Apr 2021 05:23:21 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Apr 2021 05:23:05 +0300
Message-Id: <20210414022309.30898-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210414022309.30898-1-ville.syrjala@linux.intel.com>
References: <20210414022309.30898-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/8] drm/i915: Clear no_fbc_reason on activate
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldl
IHRyeSB0byBzZXQgbm9fZmJjX3JlYXNvbiB3aGVuIEZCQyBpcyBub3QgcG9zc2libGUsIGxldCdz
CmNvbnNpc3RlbnRseSBjbGVhciB3aGVuIGFjdGl2YXRpbmcgRkJDLgoKU2lnbmVkLW9mZi1ieTog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIHwgMTMgKysrKysrKysrKysrLQog
MSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwppbmRleCA0OTY4ZTc5YTYyMzUuLmZiOGMw
ODcyYTJiNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9m
YmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCkBAIC00
MTEsNiArNDExLDE3IEBAIGJvb2wgaW50ZWxfZmJjX2lzX2FjdGl2ZShzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYpCiAJcmV0dXJuIGRldl9wcml2LT5mYmMuYWN0aXZlOwogfQogCitz
dGF0aWMgdm9pZCBpbnRlbF9mYmNfYWN0aXZhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2KQoreworCXN0cnVjdCBpbnRlbF9mYmMgKmZiYyA9ICZkZXZfcHJpdi0+ZmJjOworCisJ
ZHJtX1dBUk5fT04oJmRldl9wcml2LT5kcm0sICFtdXRleF9pc19sb2NrZWQoJmZiYy0+bG9jaykp
OworCisJaW50ZWxfZmJjX2h3X2FjdGl2YXRlKGRldl9wcml2KTsKKworCWZiYy0+bm9fZmJjX3Jl
YXNvbiA9IE5VTEw7Cit9CisKIHN0YXRpYyB2b2lkIGludGVsX2ZiY19kZWFjdGl2YXRlKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJCQkgY29uc3QgY2hhciAqcmVhc29uKQog
ewpAQCAtMTA5NCw3ICsxMTA1LDcgQEAgc3RhdGljIHZvaWQgX19pbnRlbF9mYmNfcG9zdF91cGRh
dGUoc3RydWN0IGludGVsX2NydGMgKmNydGMpCiAJCXJldHVybjsKIAogCWlmICghZmJjLT5idXN5
X2JpdHMpCi0JCWludGVsX2ZiY19od19hY3RpdmF0ZShkZXZfcHJpdik7CisJCWludGVsX2ZiY19h
Y3RpdmF0ZShkZXZfcHJpdik7CiAJZWxzZQogCQlpbnRlbF9mYmNfZGVhY3RpdmF0ZShkZXZfcHJp
diwgImZyb250YnVmZmVyIHdyaXRlIik7CiB9Ci0tIAoyLjI2LjMKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
