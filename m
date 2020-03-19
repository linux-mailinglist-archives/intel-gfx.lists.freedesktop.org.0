Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C86A18BCBE
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 17:38:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85BD56E174;
	Thu, 19 Mar 2020 16:38:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E37536E17A
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 16:38:53 +0000 (UTC)
IronPort-SDR: t/uwxyYangDTdEGpfbRfcBzwvQiDHJqx6Nh8+ZDbJJcDPPkpzWI1HfLSVLTe9J+0XEavpZcKlr
 /tO4K4YCJtrQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 09:38:52 -0700
IronPort-SDR: E+Tla/l688tVZCBIEwy456+drMXhizygo1jxuI1I1b4IiqUFWYKx98PhSWjrlI2rfzANtgQXeS
 iRVhlMdJihkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,572,1574150400"; d="scan'208";a="291673791"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 19 Mar 2020 09:38:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Mar 2020 18:38:51 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Mar 2020 18:38:44 +0200
Message-Id: <20200319163844.22783-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200319163844.22783-1-ville.syrjala@linux.intel.com>
References: <20200319163844.22783-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm: Constify adjusted_mode a bit
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBEUCBsaW5rIGNvbXB1dGF0aW9uIGZ1bmN0aW9ucyBzaG91bGRuJ3QgbW9kaWZ5IHRoZQphZGp1
c3RlZF9tb2RlIHNvIG1ha2UgaXQgY29uc3QuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDYgKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYwppbmRleCA4NDkxY2U4YjhjMTUuLjExMGQ4MmVlNDg1OSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwpAQCAtMjE4MSw3ICsyMTgxLDggQEAgc3RhdGljIGlu
dCBpbnRlbF9kcF9kc2NfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwK
IHsKIAlzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCA9IGRwX3RvX2RpZ19wb3J0
KGludGVsX2RwKTsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1
KGRpZ19wb3J0LT5iYXNlLmJhc2UuZGV2KTsKLQlzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqYWRq
dXN0ZWRfbW9kZSA9ICZwaXBlX2NvbmZpZy0+aHcuYWRqdXN0ZWRfbW9kZTsKKwljb25zdCBzdHJ1
Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqYWRqdXN0ZWRfbW9kZSA9CisJCSZwaXBlX2NvbmZpZy0+aHcu
YWRqdXN0ZWRfbW9kZTsKIAl1OCBkc2NfbWF4X2JwYzsKIAlpbnQgcGlwZV9icHA7CiAJaW50IHJl
dDsKQEAgLTIyOTYsNyArMjI5Nyw4IEBAIGludGVsX2RwX2NvbXB1dGVfbGlua19jb25maWcoc3Ry
dWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJCQkgICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpwaXBlX2NvbmZpZywKIAkJCSAgICAgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNv
bm5fc3RhdGUpCiB7Ci0Jc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmFkanVzdGVkX21vZGUgPSAm
cGlwZV9jb25maWctPmh3LmFkanVzdGVkX21vZGU7CisJY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5
X21vZGUgKmFkanVzdGVkX21vZGUgPQorCQkmcGlwZV9jb25maWctPmh3LmFkanVzdGVkX21vZGU7
CiAJc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9IGVuY190b19pbnRlbF9kcChlbmNvZGVyKTsK
IAlzdHJ1Y3QgbGlua19jb25maWdfbGltaXRzIGxpbWl0czsKIAlpbnQgY29tbW9uX2xlbjsKLS0g
CjIuMjQuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
