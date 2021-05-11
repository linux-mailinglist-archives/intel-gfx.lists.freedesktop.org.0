Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96D4337AB72
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 18:06:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0756E6EA79;
	Tue, 11 May 2021 16:06:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 767FC6EA80
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 May 2021 16:06:32 +0000 (UTC)
IronPort-SDR: jkALedeyz3QUGi6xSaBviRlaBA1ElCRA8rN7bggqXrQTRJIFKqZA2qn+GlUFaMivuZIYHqmnth
 hdsmLW1IgO+w==
X-IronPort-AV: E=McAfee;i="6200,9189,9981"; a="263410926"
X-IronPort-AV: E=Sophos;i="5.82,291,1613462400"; d="scan'208";a="263410926"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 09:05:48 -0700
IronPort-SDR: i4sHEErJtbyjjmkX+Ps5su5JgUrRHumhSbb5ElV7bYf6Fy5U/JdLo9JBPCN11r5Q7clLTgeDPZ
 Bi4izeca18mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,291,1613462400"; d="scan'208";a="434618746"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 11 May 2021 09:05:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 May 2021 19:05:38 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 May 2021 19:05:28 +0300
Message-Id: <20210511160532.21446-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210511160532.21446-1-ville.syrjala@linux.intel.com>
References: <20210511160532.21446-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/6] drm/i915: Move has_hdmi_sink check into
 intel_hdmi_bpc_possible()
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
Cc: Werner Sembach <wse@tuxedocomputers.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldl
IHdpc2ggaW50ZWxfaGRtaV9icGNfcG9zc2libGUoKSB0byBjb25zaWRlciB3aGV0aGVyIHRoZSBz
aW5rCnN1cHBvcnRzIEhETUkgb3IganVzdCBEVkkgd2hlbiBjaGVja2luZyB3aGV0aGVyIGl0J2xs
IHN1cHBvcnQKSERNSSBkZWVwIGNvbG9yIG9yIG5vdC4gVGhpcyBhbHNvIHRha2VzIGNhcmUgb2Yg
dGhlICJmb3JjZSBEVkkiCnByb3BlcnR5LgoKQ2M6IFdlcm5lciBTZW1iYWNoIDx3c2VAdHV4ZWRv
Y29tcHV0ZXJzLmNvbT4KU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2hkbWkuYyB8IDkgKysrKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCsp
LCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfaGRtaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1p
LmMKaW5kZXggM2RlYzMzMDdjMmI1Li5lNjk2NzY2ZjJiNGIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCkBAIC0xODcwLDExICsxODcwLDE3IEBAIHN0YXRpYyBi
b29sIGludGVsX2hkbWlfYnBjX3Bvc3NpYmxlKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0
b3IsCiAKIAlzd2l0Y2ggKGJwYykgewogCWNhc2UgMTI6CisJCWlmICghaGFzX2hkbWlfc2luaykK
KwkJCXJldHVybiBmYWxzZTsKKwogCQlpZiAoeWNiY3I0MjBfb3V0cHV0KQogCQkJcmV0dXJuIGhk
bWktPnk0MjBfZGNfbW9kZXMgJiBEUk1fRURJRF9ZQ0JDUjQyMF9EQ18zNjsKIAkJZWxzZQogCQkJ
cmV0dXJuIGluZm8tPmVkaWRfaGRtaV9kY19tb2RlcyAmIERSTV9FRElEX0hETUlfRENfMzY7CiAJ
Y2FzZSAxMDoKKwkJaWYgKCFoYXNfaGRtaV9zaW5rKQorCQkJcmV0dXJuIGZhbHNlOworCiAJCWlm
ICh5Y2JjcjQyMF9vdXRwdXQpCiAJCQlyZXR1cm4gaGRtaS0+eTQyMF9kY19tb2RlcyAmIERSTV9F
RElEX1lDQkNSNDIwX0RDXzMwOwogCQllbHNlCkBAIC0xOTcyLDkgKzE5NzgsNiBAQCBib29sIGlu
dGVsX2hkbWlfZGVlcF9jb2xvcl9wb3NzaWJsZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSwKIAlpZiAoY3J0Y19zdGF0ZS0+cGlwZV9icHAgPCBicGMgKiAzKQogCQly
ZXR1cm4gZmFsc2U7CiAKLQlpZiAoIWhhc19oZG1pX3NpbmspCi0JCXJldHVybiBmYWxzZTsKLQog
CWZvcl9lYWNoX25ld19jb25uZWN0b3JfaW5fc3RhdGUoc3RhdGUsIGNvbm5lY3RvciwgY29ubmVj
dG9yX3N0YXRlLCBpKSB7CiAJCWlmIChjb25uZWN0b3Jfc3RhdGUtPmNydGMgIT0gY3J0Y19zdGF0
ZS0+dWFwaS5jcnRjKQogCQkJY29udGludWU7Ci0tIAoyLjI2LjMKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
