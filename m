Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7134C287255
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Oct 2020 12:16:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFE966E2D8;
	Thu,  8 Oct 2020 10:16:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E6456EA5D
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Oct 2020 10:16:18 +0000 (UTC)
IronPort-SDR: EB32Wt+lPAx57txdalbHN0x4pnMKWeKya5AISfbZGNnBwVqyTTh3vHQpqbdoDgkZ73DrMQ+4Xt
 RmXTQYOlFdbQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9767"; a="165422029"
X-IronPort-AV: E=Sophos;i="5.77,350,1596524400"; d="scan'208";a="165422029"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2020 03:16:18 -0700
IronPort-SDR: lIQT2ib1dTQqnrFwe7bd8pobbyUwzL5SNv19B1nCqnFta/FczjChvIuyWhPZ73xUok8oCWKtJH
 4hOuD5NUP0fQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,350,1596524400"; d="scan'208";a="328526250"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 08 Oct 2020 03:16:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Oct 2020 13:16:15 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Oct 2020 13:16:08 +0300
Message-Id: <20201008101608.8652-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201008101608.8652-1-ville.syrjala@linux.intel.com>
References: <20201008101608.8652-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: s/int/u32/ for
 aux_offset/alignment
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCmdn
dHQgb2Zmc2V0cy9hbGlnbm1lbnRzIGFyZSB1MzIgZXZlcnl3aGVyZSBlbHNlLiBEb24ndCB1c2UK
YSBzaWduZWQgaW50IGZvciB0aGVtIGhlcmUuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggMzRiYTM0Zjg0YjJhLi5mZTQ4MmNhNzIxZjggMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC00MDI2
LDggKzQwMjYsOCBAQCBzdGF0aWMgaW50IHNrbF9jaGVja19udjEyX2F1eF9zdXJmYWNlKHN0cnVj
dCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpCiAKIAlpZiAoaXNfY2NzX21vZGlmaWVy
KGZiLT5tb2RpZmllcikpIHsKIAkJaW50IGNjc19wbGFuZSA9IG1haW5fdG9fY2NzX3BsYW5lKGZi
LCB1dl9wbGFuZSk7Ci0JCWludCBhdXhfb2Zmc2V0ID0gcGxhbmVfc3RhdGUtPmNvbG9yX3BsYW5l
W2Njc19wbGFuZV0ub2Zmc2V0OwotCQlpbnQgYWxpZ25tZW50ID0gaW50ZWxfc3VyZl9hbGlnbm1l
bnQoZmIsIHV2X3BsYW5lKTsKKwkJdTMyIGF1eF9vZmZzZXQgPSBwbGFuZV9zdGF0ZS0+Y29sb3Jf
cGxhbmVbY2NzX3BsYW5lXS5vZmZzZXQ7CisJCXUzMiBhbGlnbm1lbnQgPSBpbnRlbF9zdXJmX2Fs
aWdubWVudChmYiwgdXZfcGxhbmUpOwogCiAJCWlmIChvZmZzZXQgPiBhdXhfb2Zmc2V0KQogCQkJ
b2Zmc2V0ID0gaW50ZWxfcGxhbmVfYWRqdXN0X2FsaWduZWRfb2Zmc2V0KCZ4LCAmeSwKLS0gCjIu
MjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
