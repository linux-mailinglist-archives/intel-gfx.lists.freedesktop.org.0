Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17CEE21F61A
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 17:26:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 419016E41B;
	Tue, 14 Jul 2020 15:26:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 123026E41B
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 15:26:33 +0000 (UTC)
IronPort-SDR: wOiRsdBUvdsddeCiKYKM2Gb9NdNVtL3fytEEukBHA6Y29pZ9sfFBdRJq26xceO5HxJ0oU0Jgbu
 eY7FHNFC2SIw==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="137069896"
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; d="scan'208";a="137069896"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2020 08:26:32 -0700
IronPort-SDR: ShIQQnnzkVE4TPkvg/eKpPqBjtWaIh4WXVUBuVTLr76f5fJBjeVOyEcU6Y8+ab3rpYwl8Q02tR
 k0omG496GUqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; d="scan'208";a="299578809"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 14 Jul 2020 08:26:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Jul 2020 18:26:29 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jul 2020 18:26:24 +0300
Message-Id: <20200714152626.380-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200714152626.380-1-ville.syrjala@linux.intel.com>
References: <20200714152626.380-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: Fix some whitespace
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClNv
bWUgc3BhY2VzIGhhdmUgc251Y2sgaW4gd2hlcmUgd2Ugd2FudCB0YWJzLiBGaXggaXQuCgpTaWdu
ZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyB8IDIgKy0K
IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwppbmRleCBiYjkxZGFjZTMwNGEuLjcy
MDk1ZWYxNDQyNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9jZGNsay5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsu
YwpAQCAtMjY3Nyw3ICsyNjc3LDcgQEAgdm9pZCBpbnRlbF91cGRhdGVfY2RjbGsoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCSAqLwogCWlmIChJU19WQUxMRVlWSUVXKGRldl9w
cml2KSB8fCBJU19DSEVSUllWSUVXKGRldl9wcml2KSkKIAkJaW50ZWxfZGVfd3JpdGUoZGV2X3By
aXYsIEdNQlVTRlJFUV9WTFYsCi0JCSAgICAgICAgICAgICAgIERJVl9ST1VORF9VUChkZXZfcHJp
di0+Y2RjbGsuaHcuY2RjbGssIDEwMDApKTsKKwkJCSAgICAgICBESVZfUk9VTkRfVVAoZGV2X3By
aXYtPmNkY2xrLmh3LmNkY2xrLCAxMDAwKSk7CiB9CiAKIHN0YXRpYyBpbnQgY25wX3Jhd2Nsayhz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCi0tIAoyLjI2LjIKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
