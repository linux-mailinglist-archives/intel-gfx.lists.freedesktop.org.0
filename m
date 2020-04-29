Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 457081BD92E
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 12:11:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 759966EE02;
	Wed, 29 Apr 2020 10:11:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 298EB6EE02
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 10:11:12 +0000 (UTC)
IronPort-SDR: vzkba1fAySShhCoL5MtDZ6RAyqwwLsFDGiEI/9PpLgKY8ESEkM2H8iHo9gf+diFLRDjDE1mQ4t
 q9SHMMvLv4fA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2020 03:11:11 -0700
IronPort-SDR: rqk9yBVZnMC8mpNKbbN0Ufp6/7shgTC8Rpg9xkjOHFTW77zXzhnO81L1FjLwGBvBrB/+ZGt5TM
 SpEof6sREE/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,331,1583222400"; d="scan'208";a="302958488"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 29 Apr 2020 03:11:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Apr 2020 13:11:09 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Apr 2020 13:10:34 +0300
Message-Id: <20200429101034.8208-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200429101034.8208-1-ville.syrjala@linux.intel.com>
References: <20200429101034.8208-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/12] drm/i915: Suppress spurious underruns on
 gen2
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk9m
dGVuIHdlIHNlZW0gdG8gZGV0ZWN0IGFuIHVuZGVycnVuIHJpZ2h0IGFmdGVyIG1vZGVzZXQgb24g
Z2VuMi4KSXQgc2VlbXMgdG8gYmUgYSBzcHVyaW91cyBkZXRlY3Rpb24gKHBvdGVudGlhbGx5IHRo
ZSBwaXBlIGlzIHN0aWxsCmluIGEgd29ua3kgc3RhdGUgd2hlbiB3ZSBlbmFibGUgdGhlIHBsYW5l
cykuIEFuIGV4dHJhIHZibGFuayB3YWl0CnNlZW1zIHRvIGN1cmUgaXQuCgpTaWduZWQtb2ZmLWJ5
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNCArKysrCiAxIGZp
bGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCBhMGQxMDU3ZDc1ZWUuLmYzMzAwNTRlNjRjNSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTc1MTcs
NiArNzUxNywxMCBAQCBzdGF0aWMgdm9pZCBpOXh4X2NydGNfZW5hYmxlKHN0cnVjdCBpbnRlbF9h
dG9taWNfc3RhdGUgKnN0YXRlLAogCWludGVsX2NydGNfdmJsYW5rX29uKG5ld19jcnRjX3N0YXRl
KTsKIAogCWludGVsX2VuY29kZXJzX2VuYWJsZShzdGF0ZSwgY3J0Yyk7CisKKwkvKiBwcmV2ZW50
cyBzcHVyaW91cyB1bmRlcnJ1bnMgKi8KKwlpZiAoSVNfR0VOKGRldl9wcml2LCAyKSkKKwkJaW50
ZWxfd2FpdF9mb3JfdmJsYW5rKGRldl9wcml2LCBwaXBlKTsKIH0KIAogc3RhdGljIHZvaWQgaTl4
eF9wZml0X2Rpc2FibGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0
YXRlKQotLSAKMi4yNC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
