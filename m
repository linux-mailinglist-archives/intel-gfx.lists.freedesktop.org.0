Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 650102B6F03
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 20:45:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A2D36E073;
	Tue, 17 Nov 2020 19:44:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A987289D53
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 19:44:54 +0000 (UTC)
IronPort-SDR: Gn8GfAfcWI1I6kKsnhgjgklpgT6hGGSGsUoat4ek4RqiTChePhN5FiWmEJB5mcCzTBri/2FWrm
 M3EzT9sQyILg==
X-IronPort-AV: E=McAfee;i="6000,8403,9808"; a="232612537"
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="232612537"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 11:44:53 -0800
IronPort-SDR: wcRxXnZyhZnVsnHun3NW42j7BuOUX5ctr2hLgR1wUF57+/ER1iUuXdHyPBRmVFSKlbQmDBxwG0
 jf1c/mcyoMYA==
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="359034193"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 17 Nov 2020 11:44:53 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Nov 2020 11:47:11 -0800
Message-Id: <20201117194718.11462-9-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20201117194718.11462-1-manasi.d.navare@intel.com>
References: <20201117194718.11462-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 08/15] drm/i915: Add planes affected by bigjoiner
 to the state
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk1h
a2Ugc3VyZSBib3RoIHRoZSBiaWdqb2luZXIgIm1hc3RlciIgYW5kICJzbGF2ZSIgcGxhbmUgYXJl
CmluIHRoZSBzdGF0ZSB3aGVuZXZlciBlaXRoZXIgb2YgdGhlbSBpcyBpbiB0aGUgc3RhdGUuCgpT
aWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgpSZXZpZXdlZC1ieTogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDQy
ICsrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNDIgaW5zZXJ0aW9ucygrKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggMDc4
NDQ5NWUyMzEwLi43OGY4OWVjZGRhNzkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xNTEwOCw2ICsxNTEwOCw0NCBAQCBzdGF0aWMgYm9vbCBh
Y3RpdmVfcGxhbmVzX2FmZmVjdHNfbWluX2NkY2xrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdikKIAkJSVNfSVZZQlJJREdFKGRldl9wcml2KSB8fCAoSU5URUxfR0VOKGRldl9wcml2
KSA+PSAxMSk7CiB9CiAKK3N0YXRpYyBpbnQgaW50ZWxfY3J0Y19hZGRfYmlnam9pbmVyX3BsYW5l
cyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKKwkJCQkJICAgc3RydWN0IGludGVs
X2NydGMgKmNydGMsCisJCQkJCSAgIHN0cnVjdCBpbnRlbF9jcnRjICpvdGhlcikKK3sKKwljb25z
dCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlOworCXN0cnVjdCBpbnRlbF9w
bGFuZSAqcGxhbmU7CisJdTggcGxhbmVfaWRzID0gMDsKKwlpbnQgaTsKKworCWZvcl9lYWNoX25l
d19pbnRlbF9wbGFuZV9pbl9zdGF0ZShzdGF0ZSwgcGxhbmUsIHBsYW5lX3N0YXRlLCBpKSB7CisJ
CWlmIChwbGFuZS0+cGlwZSA9PSBjcnRjLT5waXBlKQorCQkJcGxhbmVfaWRzIHw9IEJJVChwbGFu
ZS0+aWQpOworCX0KKworCXJldHVybiBpbnRlbF9jcnRjX2FkZF9wbGFuZXNfdG9fc3RhdGUoc3Rh
dGUsIG90aGVyLCBwbGFuZV9pZHMpOworfQorCitzdGF0aWMgaW50IGludGVsX2JpZ2pvaW5lcl9h
ZGRfYWZmZWN0ZWRfcGxhbmVzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQorewor
CWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlOworCXN0cnVjdCBpbnRl
bF9jcnRjICpjcnRjOworCWludCBpOworCisJZm9yX2VhY2hfbmV3X2ludGVsX2NydGNfaW5fc3Rh
dGUoc3RhdGUsIGNydGMsIGNydGNfc3RhdGUsIGkpIHsKKwkJaW50IHJldDsKKworCQlpZiAoIWNy
dGNfc3RhdGUtPmJpZ2pvaW5lcikKKwkJCWNvbnRpbnVlOworCisJCXJldCA9IGludGVsX2NydGNf
YWRkX2JpZ2pvaW5lcl9wbGFuZXMoc3RhdGUsIGNydGMsCisJCQkJCQkgICAgICBjcnRjX3N0YXRl
LT5iaWdqb2luZXJfbGlua2VkX2NydGMpOworCQlpZiAocmV0KQorCQkJcmV0dXJuIHJldDsKKwl9
CisKKwlyZXR1cm4gMDsKK30KKwogc3RhdGljIGludCBpbnRlbF9hdG9taWNfY2hlY2tfcGxhbmVz
KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQogewogCXN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoc3RhdGUtPmJhc2UuZGV2KTsKQEAgLTE1MTIxLDYg
KzE1MTU5LDEwIEBAIHN0YXRpYyBpbnQgaW50ZWxfYXRvbWljX2NoZWNrX3BsYW5lcyhzdHJ1Y3Qg
aW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKIAlpZiAocmV0KQogCQlyZXR1cm4gcmV0OwogCisJ
cmV0ID0gaW50ZWxfYmlnam9pbmVyX2FkZF9hZmZlY3RlZF9wbGFuZXMoc3RhdGUpOworCWlmIChy
ZXQpCisJCXJldHVybiByZXQ7CisKIAlmb3JfZWFjaF9uZXdfaW50ZWxfcGxhbmVfaW5fc3RhdGUo
c3RhdGUsIHBsYW5lLCBwbGFuZV9zdGF0ZSwgaSkgewogCQlyZXQgPSBpbnRlbF9wbGFuZV9hdG9t
aWNfY2hlY2soc3RhdGUsIHBsYW5lKTsKIAkJaWYgKHJldCkgewotLSAKMi4xOS4xCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
