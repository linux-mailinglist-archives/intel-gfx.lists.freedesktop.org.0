Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B9B32D1A91
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Dec 2020 21:35:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DEB889B97;
	Mon,  7 Dec 2020 20:35:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D425089B97
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Dec 2020 20:35:16 +0000 (UTC)
IronPort-SDR: pA8HUmNPepGsWWTsyv0mYVsoNFnvqS50iAndxaWv6V1aijvru5iMbFqpieSpH5VIdOg/eG19bb
 +BMk4PoUw/jw==
X-IronPort-AV: E=McAfee;i="6000,8403,9828"; a="153582480"
X-IronPort-AV: E=Sophos;i="5.78,400,1599548400"; d="scan'208";a="153582480"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 12:35:16 -0800
IronPort-SDR: kS8NpsulNdEyPE66R5Kg4sXuP3gAbGdmN6AivIkZ/SYJ1ozF38LPQNYOeaO/N2ievsi3zhGugH
 yENWQRvOoD9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,400,1599548400"; d="scan'208";a="407292879"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 07 Dec 2020 12:35:13 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 07 Dec 2020 22:35:12 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Dec 2020 22:35:11 +0200
Message-Id: <20201207203512.1718-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Fix ICL MG PHY vswing handling
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
ZSBNSCBQSFkgdnN3aW5nIHRhYmxlIGRvZXMgaGF2ZSBhbGwgdGhlIGVudHJpZXMgdGhlc2UgZGF5
cy4gR2V0CnJpZCBvZiB0aGUgb2xkIGhhY2tzIGluIHRoZSBjb2RlIHdoaWNoIGNsYWltIG90aGVy
d2lzZS4KClRoaXMgaGFjayB3YXMgdG90YWxseSBib2d1cyBhbnl3YXkuIFRoZSBjb3JyZWN0IHdh
eSB0byBoYW5kbGUgdGhlCmxhY2sgb2YgdGhvc2UgdHdvIGVudHJpZXMgd291bGQgaGF2ZSBiZWVu
IHRvIGRlY2xhcmUgb3VyIG1heAp2c3dpbmcgYW5kIHByZS1lbXBoIHRvIGJvdGggYmUgbGV2ZWwg
Mi4KCkNjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KQ2M6
IENsaW50b24gVGF5bG9yIDxjbGludG9uLmEudGF5bG9yQGludGVsLmNvbT4KRml4ZXM6IDlmN2Zm
YTI5Nzk3OCAoImRybS9pOTE1L3RjL2ljbDogVXBkYXRlIFRDIHZzd2luZyB0YWJsZXMiKQpTaWdu
ZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCA3ICsrKy0t
LS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5kZXggNTE5MzQ3M2M4MzhjLi5j
M2ExNWNlNjY0NzggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwpA
QCAtMjc2MCwxMiArMjc2MCwxMSBAQCBzdGF0aWMgdm9pZCBpY2xfbWdfcGh5X2RkaV92c3dpbmdf
c2VxdWVuY2Uoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJdTMyIHZhbDsKIAogCWRk
aV90cmFuc2xhdGlvbnMgPSBpY2xfZ2V0X21nX2J1Zl90cmFucyhlbmNvZGVyLCBjcnRjX3N0YXRl
LCAmbl9lbnRyaWVzKTsKLQkvKiBUaGUgdGFibGUgZG9lcyBub3QgaGF2ZSB2YWx1ZXMgZm9yIGxl
dmVsIDMgYW5kIGxldmVsIDkuICovCi0JaWYgKGxldmVsID49IG5fZW50cmllcyB8fCBsZXZlbCA9
PSAzIHx8IGxldmVsID09IDkpIHsKKwlpZiAobGV2ZWwgPj0gbl9lbnRyaWVzKSB7CiAJCWRybV9k
Ymdfa21zKCZkZXZfcHJpdi0+ZHJtLAogCQkJICAgICJEREkgdHJhbnNsYXRpb24gbm90IGZvdW5k
IGZvciBsZXZlbCAlZC4gVXNpbmcgJWQgaW5zdGVhZC4iLAotCQkJICAgIGxldmVsLCBuX2VudHJp
ZXMgLSAyKTsKLQkJbGV2ZWwgPSBuX2VudHJpZXMgLSAyOworCQkJICAgIGxldmVsLCBuX2VudHJp
ZXMgLSAxKTsKKwkJbGV2ZWwgPSBuX2VudHJpZXMgLSAxOwogCX0KIAogCS8qIFNldCBNR19UWF9M
SU5LX1BBUkFNUyBjcmlfdXNlX2ZzMzIgdG8gMC4gKi8KLS0gCjIuMjYuMgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
