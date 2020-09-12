Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1259267762
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Sep 2020 05:06:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 626066E0E6;
	Sat, 12 Sep 2020 03:06:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 392276E0DB
 for <intel-gfx@lists.freedesktop.org>; Sat, 12 Sep 2020 03:06:27 +0000 (UTC)
IronPort-SDR: 4Y7yaH4WvxlLGoZXDK8HvecpkIcaZzw0x0Ss3KW7030S4hFgyzCKW+9GiQjrQrPfRBbOSxG/jy
 a45p6Zcaxrrg==
X-IronPort-AV: E=McAfee;i="6000,8403,9741"; a="156332637"
X-IronPort-AV: E=Sophos;i="5.76,418,1592895600"; d="scan'208";a="156332637"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 20:06:17 -0700
IronPort-SDR: BOw+z6/ybW8MlT/7XGFSVF32/HHtpREnbXjTuZS3ggRHM2rUMimZZpZkKRYG1PVOv6qvn1QPeX
 sxpOMN40HUVg==
X-IronPort-AV: E=Sophos;i="5.76,418,1592895600"; d="scan'208";a="481554315"
Received: from abirman-mobl.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.254.88.7])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 20:06:17 -0700
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Sep 2020 20:05:54 -0700
Message-Id: <20200912030554.302697-1-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: Add max plane width for NV12
 AUX plane for Gen10+ platforms
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

R2VuIDEwKyBhbmQgR2VuMTErIHBsYXRmb3JtcyBzcGVjaWZ5IGRpZmZlcmVudCBtYXggcGxhbmUg
d2lkdGggZm9yCnBsYW5hciBmb3JtYXRzLiBBZGQgbWF4IHBsYW5lIHdpZHRoIGZvciBHTEsgYW5k
IElDTCBiYXNlZCBvbgpCU3BlYzogNzY2NgoKQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3Bl
ckBpbnRlbC5jb20+CkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPgpDYzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5
OiBBZGl0eWEgU3dhcnVwIDxhZGl0eWEuc3dhcnVwQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDcgKysrKysrKwogMSBmaWxlIGNo
YW5nZWQsIDcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMKaW5kZXggZWMxNDhhOGRhMmMyLi4zMTIzZGJjNzYzYjQgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0zOTk3LDYgKzM5
OTcsMTMgQEAgc3RhdGljIGludCBza2xfY2hlY2tfbnYxMl9hdXhfc3VyZmFjZShzdHJ1Y3QgaW50
ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQogCWludCBoID0gZHJtX3JlY3RfaGVpZ2h0KCZw
bGFuZV9zdGF0ZS0+dWFwaS5zcmMpID4+IDE3OwogCXUzMiBvZmZzZXQ7CiAKKwlpZiAoSU5URUxf
R0VOKGk5MTUpID49IDExKQorCQltYXhfd2lkdGggPSBpY2xfbWF4X3BsYW5lX3dpZHRoKGZiLCB1
dl9wbGFuZSwgcm90YXRpb24pOworCWVsc2UgaWYgKElOVEVMX0dFTihpOTE1KSA+PSAxMCB8fCBJ
U19HRU1JTklMQUtFKGk5MTUpKQorCQltYXhfd2lkdGggPSBnbGtfbWF4X3BsYW5lX3dpZHRoKGZi
LCB1dl9wbGFuZSwgcm90YXRpb24pOworCWVsc2UKKwkJbWF4X3dpZHRoID0gc2tsX21heF9wbGFu
ZV93aWR0aChmYiwgdXZfcGxhbmUsIHJvdGF0aW9uKTsKKwogCWludGVsX2FkZF9mYl9vZmZzZXRz
KCZ4LCAmeSwgcGxhbmVfc3RhdGUsIHV2X3BsYW5lKTsKIAlvZmZzZXQgPSBpbnRlbF9wbGFuZV9j
b21wdXRlX2FsaWduZWRfb2Zmc2V0KCZ4LCAmeSwKIAkJCQkJCSAgICBwbGFuZV9zdGF0ZSwgdXZf
cGxhbmUpOwotLSAKMi4yNy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
