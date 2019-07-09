Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B642463B3A
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 20:40:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D73A86E096;
	Tue,  9 Jul 2019 18:40:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 748036E096
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 18:40:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 11:40:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,471,1557212400"; d="scan'208";a="156261236"
Received: from mdroper-desk.fm.intel.com ([10.105.128.126])
 by orsmga007.jf.intel.com with ESMTP; 09 Jul 2019 11:40:04 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  9 Jul 2019 11:39:34 -0700
Message-Id: <20190709183934.445-6-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190709183934.445-1-matthew.d.roper@intel.com>
References: <20190709183934.445-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 5/5] drm/i915/ehl: Enable DDI-D
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
b2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpSZXZpZXdlZC1i
eTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAxICsKIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMKaW5kZXggYzJlZDRiZDhkNTZiLi4wMjg2Yjk3Y2FhMjIgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xNTMwOCw2ICsx
NTMwOCw3IEBAIHN0YXRpYyB2b2lkIGludGVsX3NldHVwX291dHB1dHMoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2KQogCQlpbnRlbF9kZGlfaW5pdChkZXZfcHJpdiwgUE9SVF9BKTsK
IAkJaW50ZWxfZGRpX2luaXQoZGV2X3ByaXYsIFBPUlRfQik7CiAJCWludGVsX2RkaV9pbml0KGRl
dl9wcml2LCBQT1JUX0MpOworCQlpbnRlbF9kZGlfaW5pdChkZXZfcHJpdiwgUE9SVF9EKTsKIAkJ
aWNsX2RzaV9pbml0KGRldl9wcml2KTsKIAl9IGVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikg
Pj0gMTEpIHsKIAkJaW50ZWxfZGRpX2luaXQoZGV2X3ByaXYsIFBPUlRfQSk7Ci0tIAoyLjIwLjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
