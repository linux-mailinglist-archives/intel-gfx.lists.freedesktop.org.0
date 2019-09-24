Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FCB9BD3F2
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2019 23:00:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEF1E6EAFC;
	Tue, 24 Sep 2019 21:00:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DC106EAF9
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Sep 2019 21:00:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Sep 2019 14:00:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,545,1559545200"; d="scan'208";a="340202062"
Received: from josouza-mobl.jf.intel.com ([10.7.200.160])
 by orsmga004.jf.intel.com with ESMTP; 24 Sep 2019 14:00:45 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Sep 2019 14:00:40 -0700
Message-Id: <20190924210040.142075-6-jose.souza@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190924210040.142075-1-jose.souza@intel.com>
References: <20190924210040.142075-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH CI 6/6] drm/i915/tgl: Return the mg/dkl pll as
 DDI clock for new TC ports
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VEdMIGFkZGVkIDIgbW9yZSBUQyBwb3J0cyB0aGF0IGN1cnJlbnRseSBhcmUgbm90IGJlaW5nIGhh
bmRsZWQgYnkKaWNsX3BsbF90b19kZGlfY2xrX3NlbCgpLCBzbyBhZGRpbmcgdGhvc2UuCgpSZXZp
ZXdlZC1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+CkNjOiBM
dWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KQ2M6IEltcmUgRGVhayA8
aW1yZS5kZWFrQGludGVsLmNvbT4KUmVwb3J0ZWQtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGlu
dGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6
YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGku
YyB8IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwppbmRleCBmNmFlOTkwZjA5N2IuLjJkZTQ5N2I0YmYz
ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC0xMDQ5LDYg
KzEwNDksOCBAQCBzdGF0aWMgdTMyIGljbF9wbGxfdG9fZGRpX2Nsa19zZWwoc3RydWN0IGludGVs
X2VuY29kZXIgKmVuY29kZXIsCiAJY2FzZSBEUExMX0lEX0lDTF9NR1BMTDI6CiAJY2FzZSBEUExM
X0lEX0lDTF9NR1BMTDM6CiAJY2FzZSBEUExMX0lEX0lDTF9NR1BMTDQ6CisJY2FzZSBEUExMX0lE
X1RHTF9NR1BMTDU6CisJY2FzZSBEUExMX0lEX1RHTF9NR1BMTDY6CiAJCXJldHVybiBERElfQ0xL
X1NFTF9NRzsKIAl9CiB9Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
