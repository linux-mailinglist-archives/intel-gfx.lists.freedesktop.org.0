Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDDA626B9BF
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 04:15:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6848489745;
	Wed, 16 Sep 2020 02:15:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD40E89471
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Sep 2020 02:15:54 +0000 (UTC)
IronPort-SDR: /UUS6PJC3Yqhf1SUlLNUkvrjaL2Xx3bkeEvrr/y5MWzAi0ka8AzYROQ2cdXZ0KefRdPhK0G6eV
 5o6Szgv/UH8g==
X-IronPort-AV: E=McAfee;i="6000,8403,9745"; a="147136123"
X-IronPort-AV: E=Sophos;i="5.76,430,1592895600"; d="scan'208";a="147136123"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2020 19:15:54 -0700
IronPort-SDR: u/TGgvrOuIrXW+cUaVyq+O80krDSRItaDbCXFMfB6akqeJ+Jr+fKV0RRN/UJ8LgTjafTzqPQFR
 VdNca1Y1gAtw==
X-IronPort-AV: E=Sophos;i="5.76,430,1592895600"; d="scan'208";a="331483762"
Received: from joshic-mobl.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.255.229.120])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2020 19:15:53 -0700
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Sep 2020 19:15:41 -0700
Message-Id: <20200916021541.500501-1-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/display: Add max plane width for
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
OiBGaXggc2tsKyBtYXggcGxhbmUgd2lkdGgiKQoKQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3Vs
YUBpbnRlbC5jb20+CkNjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpD
YzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IElt
cmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQWRpdHlhIFN3YXJ1
cCA8YWRpdHlhLnN3YXJ1cEBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMgfCA5ICsrKysrKysrLQogMSBmaWxlIGNoYW5nZWQsIDggaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggZjg2MjQwMzM4OGY2Li4xMTZmZWQxYjczMDYgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0zOTg5LDcg
KzM5ODksNyBAQCBzdGF0aWMgaW50IHNrbF9jaGVja19udjEyX2F1eF9zdXJmYWNlKHN0cnVjdCBp
bnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpCiAJY29uc3Qgc3RydWN0IGRybV9mcmFtZWJ1
ZmZlciAqZmIgPSBwbGFuZV9zdGF0ZS0+aHcuZmI7CiAJdW5zaWduZWQgaW50IHJvdGF0aW9uID0g
cGxhbmVfc3RhdGUtPmh3LnJvdGF0aW9uOwogCWludCB1dl9wbGFuZSA9IDE7Ci0JaW50IG1heF93
aWR0aCA9IHNrbF9tYXhfcGxhbmVfd2lkdGgoZmIsIHV2X3BsYW5lLCByb3RhdGlvbik7CisJaW50
IG1heF93aWR0aCA9IDA7CiAJaW50IG1heF9oZWlnaHQgPSA0MDk2OwogCWludCB4ID0gcGxhbmVf
c3RhdGUtPnVhcGkuc3JjLngxID4+IDE3OwogCWludCB5ID0gcGxhbmVfc3RhdGUtPnVhcGkuc3Jj
LnkxID4+IDE3OwpAQCAtMzk5Nyw2ICszOTk3LDEzIEBAIHN0YXRpYyBpbnQgc2tsX2NoZWNrX252
MTJfYXV4X3N1cmZhY2Uoc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkKIAlp
bnQgaCA9IGRybV9yZWN0X2hlaWdodCgmcGxhbmVfc3RhdGUtPnVhcGkuc3JjKSA+PiAxNzsKIAl1
MzIgb2Zmc2V0OwogCisJaWYgKElOVEVMX0dFTihpOTE1KSA+PSAxMSkKKwkJbWF4X3dpZHRoID0g
aWNsX21heF9wbGFuZV93aWR0aChmYiwgdXZfcGxhbmUsIHJvdGF0aW9uKTsKKwllbHNlIGlmIChJ
TlRFTF9HRU4oaTkxNSkgPj0gMTAgfHwgSVNfR0VNSU5JTEFLRShpOTE1KSkKKwkJbWF4X3dpZHRo
ID0gZ2xrX21heF9wbGFuZV93aWR0aChmYiwgdXZfcGxhbmUsIHJvdGF0aW9uKTsKKwllbHNlCisJ
CW1heF93aWR0aCA9IHNrbF9tYXhfcGxhbmVfd2lkdGgoZmIsIHV2X3BsYW5lLCByb3RhdGlvbik7
CisKIAlpbnRlbF9hZGRfZmJfb2Zmc2V0cygmeCwgJnksIHBsYW5lX3N0YXRlLCB1dl9wbGFuZSk7
CiAJb2Zmc2V0ID0gaW50ZWxfcGxhbmVfY29tcHV0ZV9hbGlnbmVkX29mZnNldCgmeCwgJnksCiAJ
CQkJCQkgICAgcGxhbmVfc3RhdGUsIHV2X3BsYW5lKTsKLS0gCjIuMjcuMAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
