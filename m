Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D04584B031
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 04:40:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96DA06E282;
	Wed, 19 Jun 2019 02:40:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A78166E282
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 02:40:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 19:40:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,391,1557212400"; d="scan'208";a="170429018"
Received: from shawnle1-cm6330.itwn.intel.com ([10.5.253.127])
 by orsmga002.jf.intel.com with ESMTP; 18 Jun 2019 19:40:05 -0700
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jun 2019 20:10:07 -0700
Message-Id: <1560913807-10464-1-git-send-email-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Check backlight type while doing eDP
 backlight initializaiton
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
Cc: Cooper Chiou <cooper.chiou@intel.com>, Lee@freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SWYgTEZQIGJhY2tsaWdodCB0eXBlIHNldHRpbmcgZnJvbSBWQlQgd2FzICJWRVNBIGVEUCBBVVgg
SW50ZXJmYWNlIi4KRHJpdmVyIHNob3VsZCBjaGVjayBwYW5lbCBjYXBhYmlsaXR5IGFuZCB0cnkg
dG8gaW5pdGlhbGl6ZSBhdXggYmFja2xpZ2h0LgpObyBtYXR0ZXIgaTkxNV9tb2RwYXJhbXMuZW5h
YmxlX2RwY2RfYmFja2xpZ2h0IHdhcyBlbmFibGVkIG9yIG5vdC4KCkNjOiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogSmFuaSBOaWt1bGEgPGphbmku
bmlrdWxhQGludGVsLmNvbT4KQ2M6IEpvc2UgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+CkNjOiBDb29wZXIgQ2hpb3UgPGNvb3Blci5jaGlvdUBpbnRlbC5jb20+CgpTaWdu
ZWQtb2ZmLWJ5OiBMZWUsIFNoYXduIEMgPHNoYXduLmMubGVlQGludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuaCAgICAgICAgICAgICB8ICAxICsK
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4X2JhY2tsaWdodC5jIHwg
MTEgKysrKysrKysrKy0KIDIgZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMSBkZWxl
dGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Ymlvcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmgKaW5kZXgg
NGU0MmNmYWY2MWE3Li4wYjdiZTYzODlhMDcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYmlvcy5oCkBAIC00Miw2ICs0Miw3IEBAIGVudW0gaW50ZWxfYmFja2xpZ2h0X3R5
cGUgewogCUlOVEVMX0JBQ0tMSUdIVF9ESVNQTEFZX0RESSwKIAlJTlRFTF9CQUNLTElHSFRfRFNJ
X0RDUywKIAlJTlRFTF9CQUNLTElHSFRfUEFORUxfRFJJVkVSX0lOVEVSRkFDRSwKKwlJTlRFTF9C
QUNLTElHSFRfVkVTQV9FRFBfQVVYX0lOVEVSRkFDRSwKIH07CiAKIHN0cnVjdCBlZHBfcG93ZXJf
c2VxIHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBf
YXV4X2JhY2tsaWdodC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9h
dXhfYmFja2xpZ2h0LmMKaW5kZXggN2RlZDk1YTMzNGRiLi4wY2NhNWI3MzJjY2YgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4X2JhY2tsaWdodC5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4X2JhY2tsaWdo
dC5jCkBAIC0yNjEsMTEgKzI2MSwyMCBAQCBpbnRlbF9kcF9hdXhfZGlzcGxheV9jb250cm9sX2Nh
cGFibGUoc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yKQogCXJldHVybiBmYWxzZTsK
IH0KIAorc3RhdGljIGJvb2wKK2ludGVsX2RwX2Jpb3NfdXNlX2F1eF9iYWNrbGlnaHQoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQoreworCWlmIChkZXZfcHJpdi0+dmJ0LmJhY2ts
aWdodC50eXBlID09IElOVEVMX0JBQ0tMSUdIVF9WRVNBX0VEUF9BVVhfSU5URVJGQUNFKQorCQly
ZXR1cm4gdHJ1ZTsKKwlyZXR1cm4gZmFsc2U7Cit9CisKIGludCBpbnRlbF9kcF9hdXhfaW5pdF9i
YWNrbGlnaHRfZnVuY3Moc3RydWN0IGludGVsX2Nvbm5lY3RvciAqaW50ZWxfY29ubmVjdG9yKQog
ewogCXN0cnVjdCBpbnRlbF9wYW5lbCAqcGFuZWwgPSAmaW50ZWxfY29ubmVjdG9yLT5wYW5lbDsK
IAotCWlmICghaTkxNV9tb2RwYXJhbXMuZW5hYmxlX2RwY2RfYmFja2xpZ2h0KQorCWlmICghaTkx
NV9tb2RwYXJhbXMuZW5hYmxlX2RwY2RfYmFja2xpZ2h0ICYmCisJICAgICFpbnRlbF9kcF9iaW9z
X3VzZV9hdXhfYmFja2xpZ2h0KHRvX2k5MTUoaW50ZWxfY29ubmVjdG9yLT5iYXNlLmRldikpKQog
CQlyZXR1cm4gLUVOT0RFVjsKIAogCWlmICghaW50ZWxfZHBfYXV4X2Rpc3BsYXlfY29udHJvbF9j
YXBhYmxlKGludGVsX2Nvbm5lY3RvcikpCi0tIAoyLjcuNAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
