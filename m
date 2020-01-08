Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 477EF134A4B
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2020 19:13:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91CFE6E1F9;
	Wed,  8 Jan 2020 18:13:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18C016E1F9
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2020 18:13:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 10:13:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,410,1571727600"; d="scan'208";a="303628057"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 08 Jan 2020 10:12:59 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 Jan 2020 20:12:58 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Jan 2020 20:12:39 +0200
Message-Id: <20200108181242.13650-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200108181242.13650-1-ville.syrjala@linux.intel.com>
References: <20200108181242.13650-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/9] drm/i915: Reject DRM_MODE_FLAG_DBLCLK with
 DVI sinks
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
ZSBjb2RlIGFzc3VtZXMgdGhhdCBEUk1fTU9ERV9GTEFHX0RCTENMSyBtZWFucyB0aGF0IHdlIGVu
YWJsZSB0aGUKcGl4ZWwgcmVwZWF0IGZlYXR1cmUuIFRoYXQgb25seSB3b3JrcyB3aXRoIEhETUkg
c2luY2UgaXQgcmVxdWlyZXMKQVZJIGluZm9mcmFtZSB0byBzaWduYWwgdGhlIGluZm9ybWF0aW9u
IHRvIHRoZSBzaW5rLiBIZW5jZSBldmVuIGlmCnRoZSBtb2RlIGRvdGNsb2NrIHdvdWxkIGJlIHZh
bGlkIHdlIGNhbm5vdCBjdXJyZW50bHkgYXNzdW1lIHRoYXQKd2UgY2FuIGp1c3QgaWdub3JlIHRo
ZSBEQkxDTEsgZmxhZy4gUmVqZWN0IGl0IGZvciBEVkkgc2lua3MuCgpTaWduZWQtb2ZmLWJ5OiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jIHwgNSArKysrLQogMSBmaWxlIGNo
YW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMKaW5kZXggODVjNWY4NDBhMGZjLi5hNjJkZDMzNDgzMDEg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCkBAIC0yMTg1LDgg
KzIxODUsMTEgQEAgaW50ZWxfaGRtaV9tb2RlX3ZhbGlkKHN0cnVjdCBkcm1fY29ubmVjdG9yICpj
b25uZWN0b3IsCiAJaWYgKGNsb2NrID4gbWF4X2RvdGNsaykKIAkJcmV0dXJuIE1PREVfQ0xPQ0tf
SElHSDsKIAotCWlmIChtb2RlLT5mbGFncyAmIERSTV9NT0RFX0ZMQUdfREJMQ0xLKQorCWlmICht
b2RlLT5mbGFncyAmIERSTV9NT0RFX0ZMQUdfREJMQ0xLKSB7CisJCWlmICghaGFzX2hkbWlfc2lu
aykKKwkJCXJldHVybiBNT0RFX0NMT0NLX0xPVzsKIAkJY2xvY2sgKj0gMjsKKwl9CiAKIAlpZiAo
ZHJtX21vZGVfaXNfNDIwX29ubHkoJmNvbm5lY3Rvci0+ZGlzcGxheV9pbmZvLCBtb2RlKSkKIAkJ
Y2xvY2sgLz0gMjsKLS0gCjIuMjQuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
