Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B39C84DEEE
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2019 04:02:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 313C46E7F3;
	Fri, 21 Jun 2019 02:02:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D9286E7F5
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jun 2019 02:01:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 19:01:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,398,1557212400"; d="scan'208";a="183272183"
Received: from mdroper-desk.fm.intel.com ([10.105.128.126])
 by fmsmga004.fm.intel.com with ESMTP; 20 Jun 2019 19:01:59 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jun 2019 19:01:29 -0700
Message-Id: <20190621020132.1164-3-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20190621020132.1164-1-matthew.d.roper@intel.com>
References: <20190621020132.1164-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/5] drm/i915/ehl: Add third combo PHY offset
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

Q2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpTaWduZWQt
b2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggfCA0ICsrKy0KIDEgZmlsZSBjaGFuZ2VkLCAzIGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCA3
ZTYwMDljZWZiMTguLjdlNzQ4YmIzZjMyNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC0x
NzkzLDggKzE3OTMsMTAgQEAgZW51bSBpOTE1X3Bvd2VyX3dlbGxfaWQgewogICovCiAjZGVmaW5l
IF9JQ0xfQ09NQk9QSFlfQQkJCTB4MTYyMDAwCiAjZGVmaW5lIF9JQ0xfQ09NQk9QSFlfQgkJCTB4
NkMwMDAKKyNkZWZpbmUgX0lDTF9DT01CT1BIWV9DX0VITAkJMHgxNjAwMDAKICNkZWZpbmUgX0lD
TF9DT01CT1BIWShwb3J0KQkJX1BJQ0socG9ydCwgX0lDTF9DT01CT1BIWV9BLCBcCi0JCQkJCSAg
ICAgIF9JQ0xfQ09NQk9QSFlfQikKKwkJCQkJICAgICAgX0lDTF9DT01CT1BIWV9CLCBcCisJCQkJ
CSAgICAgIF9JQ0xfQ09NQk9QSFlfQ19FSEwpCiAKIC8qIENOTC9JQ0wgUG9ydCBDTF9EVyByZWdp
c3RlcnMgKi8KICNkZWZpbmUgX0lDTF9QT1JUX0NMX0RXKGR3LCBwb3J0KQkoX0lDTF9DT01CT1BI
WShwb3J0KSArIFwKLS0gCjIuMTcuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
