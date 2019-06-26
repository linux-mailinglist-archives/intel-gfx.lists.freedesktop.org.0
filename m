Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1827555CBF
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 02:04:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 606C06E1C0;
	Wed, 26 Jun 2019 00:04:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7D626E1C0
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 00:04:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 17:04:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,417,1557212400"; d="scan'208";a="163767590"
Received: from mdroper-desk.fm.intel.com ([10.105.128.126])
 by fmsmga007.fm.intel.com with ESMTP; 25 Jun 2019 17:04:05 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jun 2019 17:03:49 -0700
Message-Id: <20190626000352.31926-3-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20190626000352.31926-1-matthew.d.roper@intel.com>
References: <20190626000352.31926-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 2/5] drm/i915/ehl: Add third combo PHY offset
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

djI6IFJlbmFtZSByZWdpc3RlciB0byBfRUhMX0NPTUJPUEhZX0MuICAoSm9zZSkKCkNjOiBKb3PD
qSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTog
TWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEpvc8Op
IFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmggfCA0ICsrKy0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlv
bnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCA3ZTYwMDlj
ZWZiMTguLmM4MTRjYzFiM2FlNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC0xNzkzLDgg
KzE3OTMsMTAgQEAgZW51bSBpOTE1X3Bvd2VyX3dlbGxfaWQgewogICovCiAjZGVmaW5lIF9JQ0xf
Q09NQk9QSFlfQQkJCTB4MTYyMDAwCiAjZGVmaW5lIF9JQ0xfQ09NQk9QSFlfQgkJCTB4NkMwMDAK
KyNkZWZpbmUgX0VITF9DT01CT1BIWV9DCQkJMHgxNjAwMDAKICNkZWZpbmUgX0lDTF9DT01CT1BI
WShwb3J0KQkJX1BJQ0socG9ydCwgX0lDTF9DT01CT1BIWV9BLCBcCi0JCQkJCSAgICAgIF9JQ0xf
Q09NQk9QSFlfQikKKwkJCQkJICAgICAgX0lDTF9DT01CT1BIWV9CLCBcCisJCQkJCSAgICAgIF9F
SExfQ09NQk9QSFlfQykKIAogLyogQ05ML0lDTCBQb3J0IENMX0RXIHJlZ2lzdGVycyAqLwogI2Rl
ZmluZSBfSUNMX1BPUlRfQ0xfRFcoZHcsIHBvcnQpCShfSUNMX0NPTUJPUEhZKHBvcnQpICsgXAot
LSAKMi4xNy4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
