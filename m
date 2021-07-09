Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 116F33C27C1
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jul 2021 18:48:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2407C6EA4D;
	Fri,  9 Jul 2021 16:48:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 070B66EA46
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jul 2021 16:48:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10039"; a="231499916"
X-IronPort-AV: E=Sophos;i="5.84,226,1620716400"; d="scan'208";a="231499916"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2021 09:48:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,226,1620716400"; d="scan'208";a="411326412"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 09 Jul 2021 09:47:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 09 Jul 2021 19:47:57 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Jul 2021 19:47:48 +0300
Message-Id: <20210709164750.9465-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210709164750.9465-1-ville.syrjala@linux.intel.com>
References: <20210709164750.9465-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] iommu/vt-d: Disable superpage for Broxton
 igfx
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
Cc: iommu@lists.linux-foundation.org, David Woodhouse <dwmw2@infradead.org>,
 Lu Baolu <baolu.lu@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkJy
b3h0b24gaGFzIGtub3duIGlzc3VlcyB3aXRoIFZULWQgc3VwZXJwYWdlLiBOYW1lbHkgZnJhbWUg
YnVmZmVyCmNvbXByZXNzaW9uIChGQkMpIGNhbid0IGJlIHNhZmVseSB1c2VkIHdoZW4gc3VwZXJw
YWdlIGlzIGVuYWJsZWQuCkN1cnJlbnRseSB3ZSdyZSBkaXNhYmxpbmcgRkJDIGVudGlyZWx5IHdo
ZW4gVlQtZCBpcyBhY3RpdmUsIGJ1dApJIHRoaW5rIGp1c3QgZGlzYWJsaW5nIHN1cGVycGFnZSB3
b3VsZCBiZSBiZXR0ZXIgc2luY2UgRkJDIGNhbgpzYXZlIHNvbWUgcG93ZXIuCgpUT0RPOiBtaWdo
dCBiZSBuaWNlIHRvIGRpc2FibGUgc3VwZXJwYWdlIG9ubHkgZm9yIHRoZSBpZ2Z4IGlvbW11CiAg
ICAgIGluc3RlYWQgb2YgYm90aCBpb21tdXMKVE9ETzogd291bGQgYmUgbmljZSB0byB1c2UgdGhl
IG1hY3JvcyBmcm9tIGluY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmgsCiAgICAgIGJ1dCBjYW4ndCBk
byB0aGF0IHdpdGggREVDTEFSRV9QQ0lfRklYVVBfSEVBREVSKCkKCkNjOiBEYXZpZCBXb29kaG91
c2UgPGR3bXcyQGluZnJhZGVhZC5vcmc+CkNjOiBMdSBCYW9sdSA8YmFvbHUubHVAbGludXguaW50
ZWwuY29tPgpDYzogaW9tbXVAbGlzdHMubGludXgtZm91bmRhdGlvbi5vcmcKU2lnbmVkLW9mZi1i
eTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2lvbW11L2ludGVsL2lvbW11LmMgfCA3ICsrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA3
IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2lvbW11L2ludGVsL2lvbW11LmMg
Yi9kcml2ZXJzL2lvbW11L2ludGVsL2lvbW11LmMKaW5kZXggNGZmZjJjOWM4NmFmLi40MDExN2Y4
Njg3NjEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvaW9tbXUvaW50ZWwvaW9tbXUuYworKysgYi9kcml2
ZXJzL2lvbW11L2ludGVsL2lvbW11LmMKQEAgLTU2MjMsNiArNTYyMywxMyBAQCBzdGF0aWMgdm9p
ZCBxdWlya19pb21tdV9ub3NwKHN0cnVjdCBwY2lfZGV2ICpkZXYpCiAJaW50ZWxfaW9tbXVfc3Vw
ZXJwYWdlID0gMDsKIH0KIAorLyogQnJveHRvbiBpZ2Z4IGhhcyBpc3N1ZXMgd2l0aCBzdXBlcnBh
Z2UgKi8KK0RFQ0xBUkVfUENJX0ZJWFVQX0hFQURFUihQQ0lfVkVORE9SX0lEX0lOVEVMLCAweDBB
ODQsIHF1aXJrX2lvbW11X25vc3ApOworREVDTEFSRV9QQ0lfRklYVVBfSEVBREVSKFBDSV9WRU5E
T1JfSURfSU5URUwsIDB4MUE4NCwgcXVpcmtfaW9tbXVfbm9zcCk7CitERUNMQVJFX1BDSV9GSVhV
UF9IRUFERVIoUENJX1ZFTkRPUl9JRF9JTlRFTCwgMHgxQTg1LCBxdWlya19pb21tdV9ub3NwKTsK
K0RFQ0xBUkVfUENJX0ZJWFVQX0hFQURFUihQQ0lfVkVORE9SX0lEX0lOVEVMLCAweDVBODQsIHF1
aXJrX2lvbW11X25vc3ApOworREVDTEFSRV9QQ0lfRklYVVBfSEVBREVSKFBDSV9WRU5ET1JfSURf
SU5URUwsIDB4NUE4NSwgcXVpcmtfaW9tbXVfbm9zcCk7CisKIC8qIEdlbWluaWxha2UgaWdmeCBh
cHBlYXJzIHRvIGhhdmUgaXNzdWVzIHdpdGggc3VwZXJwYWdlICovCiBERUNMQVJFX1BDSV9GSVhV
UF9IRUFERVIoUENJX1ZFTkRPUl9JRF9JTlRFTCwgMHgzMTg0LCBxdWlya19pb21tdV9ub3NwKTsK
IERFQ0xBUkVfUENJX0ZJWFVQX0hFQURFUihQQ0lfVkVORE9SX0lEX0lOVEVMLCAweDMxODUsIHF1
aXJrX2lvbW11X25vc3ApOwotLSAKMi4zMS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
