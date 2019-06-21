Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 259614DEF0
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2019 04:02:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B9426E7F7;
	Fri, 21 Jun 2019 02:02:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84A4D6E7EF
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jun 2019 02:02:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 19:02:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,398,1557212400"; d="scan'208";a="183272215"
Received: from mdroper-desk.fm.intel.com ([10.105.128.126])
 by fmsmga004.fm.intel.com with ESMTP; 20 Jun 2019 19:02:07 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jun 2019 19:01:32 -0700
Message-Id: <20190621020132.1164-6-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20190621020132.1164-1-matthew.d.roper@intel.com>
References: <20190621020132.1164-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/5] drm/i915/ehl: Enable DDI-D
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RUhMIGhhcyBmb3VyIERESSdzIChEREktQSBhbmQgRERJLUQgc2hhcmUgY29tYm8gUEhZIEEpLgoK
Q2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpTaWduZWQt
b2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMSArCiAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jCmluZGV4IGU3MmFjZTQyMzI3Yy4uNzRjZDE4MDM2MGY0IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTUxMjgsNiArMTUx
MjgsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9zZXR1cF9vdXRwdXRzKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdikKIAkJaW50ZWxfZGRpX2luaXQoZGV2X3ByaXYsIFBPUlRfQSk7CiAJ
CWludGVsX2RkaV9pbml0KGRldl9wcml2LCBQT1JUX0IpOwogCQlpbnRlbF9kZGlfaW5pdChkZXZf
cHJpdiwgUE9SVF9DKTsKKwkJaW50ZWxfZGRpX2luaXQoZGV2X3ByaXYsIFBPUlRfRCk7CiAJCWlj
bF9kc2lfaW5pdChkZXZfcHJpdik7CiAJfSBlbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49
IDExKSB7CiAJCWludGVsX2RkaV9pbml0KGRldl9wcml2LCBQT1JUX0EpOwotLSAKMi4xNy4yCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
