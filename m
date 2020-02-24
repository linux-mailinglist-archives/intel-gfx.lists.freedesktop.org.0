Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D135B16A67A
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 13:52:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27CFC6E463;
	Mon, 24 Feb 2020 12:52:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8913E6E471
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2020 12:52:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Feb 2020 04:52:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,480,1574150400"; d="scan'208";a="225967597"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by orsmga007.jf.intel.com with ESMTP; 24 Feb 2020 04:52:37 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Feb 2020 18:10:00 +0530
Message-Id: <20200224124004.26712-4-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200224124004.26712-1-anshuman.gupta@intel.com>
References: <20200224124004.26712-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 3/7] drm/i915: Fix broken transcoder err state
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2tpcCB0aGUgdHJhbnNjb2RlciB3aG9zZSBwaXBlIGlzIGRpc2FibGVkIHdoaWxlCmluaXRpYWxp
emluZyB0cmFuc2NvZGVyIGVycm9yIHN0YXRlIGluIDMgbm9uLWNvbnRpZ3VvdXMKZGlzcGxheSBw
aXBlIHN5c3RlbS4KCnYyOgotIERvbid0IHNraXAgRURQX1RSQU5TQ09ERVIgZXJyb3Igc3RhdGUu
IFtWaWxsZV0KLSBVc2UgYSBoZWxwZXIgaGFzX3RyYW5zY29kZXIoKS4gW1ZpbGxlXQp2MzoKLSBS
ZW1vdmVkIERTSSB0cmFuc2NvZGVyIGNhc2UgZnJvbSBoYXNfdHJhbnNjb2RlcigpLAogIGFuZCBm
ZXcgb3RoZXIgY29zbWV0aWMgY2hhbmdlcy4gW1ZpbGxlXQoKQ2M6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEFuc2h1bWFuIEd1
cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAxMSArKysrKysrKysrLQogMSBmaWxlIGNoYW5nZWQs
IDEwIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDNhYWI5NzU3M2MwYy4uYWFjYmRjNDdmY2Vh
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAt
MjQ5LDYgKzI0OSwxNSBAQCBpbnRlbF9mZGlfbGlua19mcmVxKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiwKIAkJcmV0dXJuIGRldl9wcml2LT5mZGlfcGxsX2ZyZXE7CiB9CiAKK3N0
YXRpYyBib29sCitoYXNfdHJhbnNjb2RlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsIGVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlcikKK3sKKwlpZiAoY3B1X3RyYW5zY29k
ZXIgPT0gVFJBTlNDT0RFUl9FRFApCisJCXJldHVybiBIQVNfVFJBTlNDT0RFUl9FRFAoZGV2X3By
aXYpOworCWVsc2UKKwkJcmV0dXJuIElOVEVMX0lORk8oZGV2X3ByaXYpLT5waXBlX21hc2sgJiBC
SVQoY3B1X3RyYW5zY29kZXIpOworfQorCiBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2xpbWl0
IGludGVsX2xpbWl0c19pOHh4X2RhYyA9IHsKIAkuZG90ID0geyAubWluID0gMjUwMDAsIC5tYXgg
PSAzNTAwMDAgfSwKIAkudmNvID0geyAubWluID0gOTA4MDAwLCAubWF4ID0gMTUxMjAwMCB9LApA
QCAtMTg5MjgsNyArMTg5MzcsNyBAQCBpbnRlbF9kaXNwbGF5X2NhcHR1cmVfZXJyb3Jfc3RhdGUo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCWZvciAoaSA9IDA7IGkgPCBBUlJB
WV9TSVpFKGVycm9yLT50cmFuc2NvZGVyKTsgaSsrKSB7CiAJCWVudW0gdHJhbnNjb2RlciBjcHVf
dHJhbnNjb2RlciA9IHRyYW5zY29kZXJzW2ldOwogCi0JCWlmICghSU5URUxfSU5GTyhkZXZfcHJp
diktPnRyYW5zX29mZnNldHNbY3B1X3RyYW5zY29kZXJdKQorCQlpZiAoIWhhc190cmFuc2NvZGVy
KGRldl9wcml2LCBjcHVfdHJhbnNjb2RlcikpCiAJCQljb250aW51ZTsKIAogCQllcnJvci0+dHJh
bnNjb2RlcltpXS5hdmFpbGFibGUgPSB0cnVlOwotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
