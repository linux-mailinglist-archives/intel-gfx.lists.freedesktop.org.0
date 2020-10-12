Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3638328BAE4
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Oct 2020 16:32:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD45C6E49A;
	Mon, 12 Oct 2020 14:32:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DC4B6E49C
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Oct 2020 14:32:53 +0000 (UTC)
IronPort-SDR: noEE6R7bva5Vlrs4GsN7XRoswa6fiBtL8gISoDPo3iSgLfOXsVbq99yQf5fc4+dudAbiz+12p5
 qsMu7GGlXlKQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9771"; a="163109418"
X-IronPort-AV: E=Sophos;i="5.77,366,1596524400"; d="scan'208";a="163109418"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2020 07:32:39 -0700
IronPort-SDR: fjn/DHrlZePvynDY++Cu7aabjDydZij/69wUptzEo7AITLeAY9n7jKZJ14KOVyr9DCkB/NoCzo
 TGke+oDYM2vw==
X-IronPort-AV: E=Sophos;i="5.77,366,1596524400"; d="scan'208";a="344903879"
Received: from nvizzusi-mobl.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.254.65.58])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2020 07:32:38 -0700
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Oct 2020 07:32:27 -0700
Message-Id: <20201012143227.167796-1-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3] drm/i915/display: Add max plane width for
 NV12 AUX plane for Gen10+ platforms
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

R2VuIDEwKyBhbmQgR2VuMTErIHBsYXRmb3JtcyBzcGVjaWZ5IGRpZmZlcmVudCBtYXggcGxhbmUg
d2lkdGggZm9yCnBsYW5hciBmb3JtYXRzLiBBZGQgbWF4IHBsYW5lIHdpZHRoIGZvciBHTEsgYW5k
IElDTCBiYXNlZCBvbgpCU3BlYzogNzY2NgoKRml4ZXM6IDM3MmI5ZmZiNTc5OSAoImRybS9pOTE1
OiBGaXggc2tsKyBtYXggcGxhbmUgd2lkdGgiKQpDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxh
QGludGVsLmNvbT4KQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+CkNj
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogSW1y
ZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBBZGl0eWEgU3dhcnVw
IDxhZGl0eWEuc3dhcnVwQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYyB8IDExICsrKysrKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgOSBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggY2YxNDE3ZmY1NGQ3Li41OWQyMGMzNTE4ODcgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC00MDA0
LDE0ICs0MDA0LDIxIEBAIHN0YXRpYyBpbnQgc2tsX2NoZWNrX252MTJfYXV4X3N1cmZhY2Uoc3Ry
dWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkKIAljb25zdCBzdHJ1Y3QgZHJtX2Zy
YW1lYnVmZmVyICpmYiA9IHBsYW5lX3N0YXRlLT5ody5mYjsKIAl1bnNpZ25lZCBpbnQgcm90YXRp
b24gPSBwbGFuZV9zdGF0ZS0+aHcucm90YXRpb247CiAJaW50IHV2X3BsYW5lID0gMTsKLQlpbnQg
bWF4X3dpZHRoID0gc2tsX21heF9wbGFuZV93aWR0aChmYiwgdXZfcGxhbmUsIHJvdGF0aW9uKTsK
LQlpbnQgbWF4X2hlaWdodCA9IDQwOTY7CiAJaW50IHggPSBwbGFuZV9zdGF0ZS0+dWFwaS5zcmMu
eDEgPj4gMTc7CiAJaW50IHkgPSBwbGFuZV9zdGF0ZS0+dWFwaS5zcmMueTEgPj4gMTc7CiAJaW50
IHcgPSBkcm1fcmVjdF93aWR0aCgmcGxhbmVfc3RhdGUtPnVhcGkuc3JjKSA+PiAxNzsKIAlpbnQg
aCA9IGRybV9yZWN0X2hlaWdodCgmcGxhbmVfc3RhdGUtPnVhcGkuc3JjKSA+PiAxNzsKKwlpbnQg
bWF4X2hlaWdodCA9IDQwOTY7CisJaW50IG1heF93aWR0aDsKIAl1MzIgb2Zmc2V0OwogCisJaWYg
KElOVEVMX0dFTihpOTE1KSA+PSAxMSkKKwkJbWF4X3dpZHRoID0gaWNsX21heF9wbGFuZV93aWR0
aChmYiwgdXZfcGxhbmUsIHJvdGF0aW9uKTsKKwllbHNlIGlmIChJTlRFTF9HRU4oaTkxNSkgPj0g
MTAgfHwgSVNfR0VNSU5JTEFLRShpOTE1KSkKKwkJbWF4X3dpZHRoID0gZ2xrX21heF9wbGFuZV93
aWR0aChmYiwgdXZfcGxhbmUsIHJvdGF0aW9uKTsKKwllbHNlCisJCW1heF93aWR0aCA9IHNrbF9t
YXhfcGxhbmVfd2lkdGgoZmIsIHV2X3BsYW5lLCByb3RhdGlvbik7CisKIAlpbnRlbF9hZGRfZmJf
b2Zmc2V0cygmeCwgJnksIHBsYW5lX3N0YXRlLCB1dl9wbGFuZSk7CiAJb2Zmc2V0ID0gaW50ZWxf
cGxhbmVfY29tcHV0ZV9hbGlnbmVkX29mZnNldCgmeCwgJnksCiAJCQkJCQkgICAgcGxhbmVfc3Rh
dGUsIHV2X3BsYW5lKTsKLS0gCjIuMjcuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
