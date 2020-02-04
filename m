Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D64B151A34
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 13:01:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF7606EE57;
	Tue,  4 Feb 2020 12:01:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A6776EE57
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 12:01:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 03:39:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,401,1574150400"; d="scan'208";a="225481732"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by fmsmga008.fm.intel.com with ESMTP; 04 Feb 2020 03:39:46 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Feb 2020 16:59:23 +0530
Message-Id: <20200204112927.17391-4-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200204112927.17391-1-anshuman.gupta@intel.com>
References: <20200204112927.17391-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/7] drm/i915: Fix broken transcoder err state
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

U2tpcCB0aGUgdHJhc2NvZGVyIHdob3NlIHBpcGUgaXMgZGlzYWJsZWQgd2hpbGUKaW5pdGlhbGl6
aW5nIHRyYXNjb2RlciBlcnJvciBzdGF0ZSBpbiAzIGRpc3BsYXkKcGlwZSBzeWF0ZW0uCgpDYzog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9m
Zi1ieTogQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDQgKysrLQogMSBmaWxl
IGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggNTcwOWU2NzIxNTFhLi5jZjM2
YzNkMGY4ZmMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jCkBAIC0xODYwNyw4ICsxODYwNywxMCBAQCBpbnRlbF9kaXNwbGF5X2NhcHR1cmVfZXJyb3Jf
c3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCiAJZm9yIChpID0gMDsg
aSA8IEFSUkFZX1NJWkUoZXJyb3ItPnRyYW5zY29kZXIpOyBpKyspIHsKIAkJZW51bSB0cmFuc2Nv
ZGVyIGNwdV90cmFuc2NvZGVyID0gdHJhbnNjb2RlcnNbaV07CisJCWVudW0gcGlwZSBwaXBlID0g
KGVudW0gcGlwZSljcHVfdHJhbnNjb2RlcjsKIAotCQlpZiAoIUlOVEVMX0lORk8oZGV2X3ByaXYp
LT50cmFuc19vZmZzZXRzW2NwdV90cmFuc2NvZGVyXSkKKwkJaWYgKCFJTlRFTF9JTkZPKGRldl9w
cml2KS0+dHJhbnNfb2Zmc2V0c1tjcHVfdHJhbnNjb2Rlcl0gJiYKKwkJICAgICEoSU5URUxfSU5G
TyhkZXZfcHJpdiktPnBpcGVfbWFzayAmIEJJVChwaXBlKSkpCiAJCQljb250aW51ZTsKIAogCQll
cnJvci0+dHJhbnNjb2RlcltpXS5hdmFpbGFibGUgPSB0cnVlOwotLSAKMi4yNC4wCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
