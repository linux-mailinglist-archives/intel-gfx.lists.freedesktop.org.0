Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E7513532E
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 07:26:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FACA6E398;
	Thu,  9 Jan 2020 06:26:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF4536E398
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2020 06:26:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 22:26:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,412,1571727600"; d="scan'208";a="371214618"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga004.jf.intel.com with ESMTP; 08 Jan 2020 22:26:51 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Jan 2020 22:27:45 -0800
Message-Id: <20200109062745.9831-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/dp: Reset intel_dp->link_trained in
 init_connector
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TGluayBoYXMgbm90IGJlZW4gdHJhaW5lZCBkdXJpbmcgY29ubmVjdG9yIGluaXRpYWxpemF0aW9u
CmhlbmNlIHJlc2V0IHRoZSB2YXJpYWJsZSBpbnRlbF9kcC0+bGlua190cmFpbmVkLiBUaGlzCmF2
b2lkcyBhY2NpZGVudGx5IGNhbGxpbmcgbGluayB0cmFpbmluZyByb3V0aW5lIGJlZm9yZSB0aGUg
cGlwZQppcyBzZXQgdXAuCgpJc3N1ZTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2Ry
bS9pbnRlbC9pc3N1ZXMvNTg1ClNpZ25lZC1vZmYtYnk6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5k
Lm5hdmFyZUBpbnRlbC5jb20+CkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPgpDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCAxICsKIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYwppbmRleCBkMjk5Y2VlMTc1ZTcuLmY0NTUzM2FmNzUyNCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwpAQCAtNzQ3MSw2ICs3NDcxLDcgQEAgaW50ZWxfZHBfaW5p
dF9jb25uZWN0b3Ioc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQsCiAJ
aW50ZWxfZHBfc2V0X3NvdXJjZV9yYXRlcyhpbnRlbF9kcCk7CiAKIAlpbnRlbF9kcC0+cmVzZXRf
bGlua19wYXJhbXMgPSB0cnVlOworCWludGVsX2RwLT5saW5rX3RyYWluZWQgPSAgZmFsc2U7CiAJ
aW50ZWxfZHAtPnBwc19waXBlID0gSU5WQUxJRF9QSVBFOwogCWludGVsX2RwLT5hY3RpdmVfcGlw
ZSA9IElOVkFMSURfUElQRTsKIAotLSAKMi4xOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
