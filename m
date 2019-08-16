Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BDF58FD0A
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 10:06:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DB386EB26;
	Fri, 16 Aug 2019 08:06:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 986586EB1E
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 08:06:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Aug 2019 01:06:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,391,1559545200"; d="scan'208";a="184851597"
Received: from miyoungj-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.254.105.68])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Aug 2019 01:06:06 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Aug 2019 01:04:51 -0700
Message-Id: <20190816080503.28594-28-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190816080503.28594-1-lucas.demarchi@intel.com>
References: <20190816080503.28594-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 27/39] drm/i915/tgl: add Gen12 default indirect
 ctx offset
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

RnJvbTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVs
LmNvbT4KCkdlbjEyIHVzZXMgYSBuZXcgaW5kaXJlY3QgY3R4IG9mZnNldC4KCkJzcGVjOiAxMTc0
MApDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgpD
YzogUmFkaGFrcmlzaG5hIFNyaXBhZGEgPHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbT4K
U2lnbmVkLW9mZi1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1
cmlvQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJj
aGlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFy
Y2hpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyAg
ICAgfCA0ICsrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyY19yZWcuaCB8IDEg
KwogMiBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2xyYy5jCmluZGV4IDM1YTVhZDU3NWUxMi4uYWE2OWU0MzRhYTAzIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9scmMuYwpAQCAtMjk3OCw2ICsyOTc4LDEwIEBAIHN0YXRpYyB1MzIgaW50
ZWxfbHJfaW5kaXJlY3RfY3R4X29mZnNldChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUp
CiAJZGVmYXVsdDoKIAkJTUlTU0lOR19DQVNFKElOVEVMX0dFTihlbmdpbmUtPmk5MTUpKTsKIAkJ
LyogZmFsbCB0aHJvdWdoICovCisJY2FzZSAxMjoKKwkJaW5kaXJlY3RfY3R4X29mZnNldCA9CisJ
CQlHRU4xMl9DVFhfUkNTX0lORElSRUNUX0NUWF9PRkZTRVRfREVGQVVMVDsKKwkJYnJlYWs7CiAJ
Y2FzZSAxMToKIAkJaW5kaXJlY3RfY3R4X29mZnNldCA9CiAJCQlHRU4xMV9DVFhfUkNTX0lORElS
RUNUX0NUWF9PRkZTRVRfREVGQVVMVDsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2xyY19yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyY19y
ZWcuaAppbmRleCA5MTU4MjRlYmFmMTcuLmI3Njk1Yjk2ZTQ4NCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjX3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2xyY19yZWcuaApAQCAtOTIsNSArOTIsNiBAQAogI2RlZmluZSBHRU45X0NU
WF9SQ1NfSU5ESVJFQ1RfQ1RYX09GRlNFVF9ERUZBVUxUCTB4MjYKICNkZWZpbmUgR0VOMTBfQ1RY
X1JDU19JTkRJUkVDVF9DVFhfT0ZGU0VUX0RFRkFVTFQJMHgxOQogI2RlZmluZSBHRU4xMV9DVFhf
UkNTX0lORElSRUNUX0NUWF9PRkZTRVRfREVGQVVMVAkweDFBCisjZGVmaW5lIEdFTjEyX0NUWF9S
Q1NfSU5ESVJFQ1RfQ1RYX09GRlNFVF9ERUZBVUxUCTB4RAogCiAjZW5kaWYgLyogX0lOVEVMX0xS
Q19SRUdfSF8gKi8KLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
