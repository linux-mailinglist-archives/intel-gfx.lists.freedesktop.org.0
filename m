Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 563B1C370B
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 16:22:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A20289CD5;
	Tue,  1 Oct 2019 14:22:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0674389CD5
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 14:22:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 07:22:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,571,1559545200"; d="scan'208";a="197867638"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by FMSMGA003.fm.intel.com with ESMTP; 01 Oct 2019 07:22:31 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Oct 2019 19:46:19 +0530
Message-Id: <20191001141625.24017-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v10 0/6] DC3CO Support for TGL
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmVzZW5kaW5nIHRoaXMgdmVyc2lvbiB2MTAgYWZ0ZXIgYWRkaW5nIEltcmUncyBSQiBhbmQgYWZ0
ZXIgZml4aW5nCmZldyBjb2RlIHJlZmFjdG9yaW5nIHJlbGF0ZWQgY29tbWVudHMgcHJvdmlkZWQg
YnkgSW1yZS4KCkFuc2h1bWFuIEd1cHRhICg2KToKICBkcm0vaTkxNS90Z2w6IEFkZCBEQzNDTyBy
ZXF1aXJlZCByZWdpc3RlciBhbmQgYml0cwogIGRybS9pOTE1L3RnbDogQWRkIERDM0NPIG1hc2sg
dG8gYWxsb3dlZF9kY19tYXNrIGFuZCBnZW45X2RjX21hc2sKICBkcm0vaTkxNS90Z2w6IEVuYWJs
ZSBEQzNDTyBzdGF0ZSBpbiAiREMgT2ZmIiBwb3dlciB3ZWxsCiAgZHJtL2k5MTUvdGdsOiBEbyBt
b2Rlc2V0IHRvIGVuYWJsZSBhbmQgY29uZmlndXJlIERDM0NPIGV4aXRsaW5lCiAgZHJtL2k5MTUv
dGdsOiBTd2l0Y2ggYmV0d2VlbiBkYzNjbyBhbmQgZGM1IGJhc2VkIG9uIGRpc3BsYXkgaWRsZW5l
c3MKICBkcm0vaTkxNS90Z2w6IEFkZCBEQzNDTyBjb3VudGVyIGluIGk5MTVfZG1jX2luZm8KCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jICAgICAgfCAgOTMgKysrKysr
KysrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8ICAg
MSArCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgICAgfCAxNTQg
KysrKysrKysrKysrKysrKy0tCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bv
d2VyLmggICAgfCAgIDMgKwogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBl
cy5oICAgIHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMg
ICAgICB8IDExNCArKysrKysrKysrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVn
ZnMuYyAgICAgICAgICAgfCAgIDcgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAg
ICAgICAgICAgICAgIHwgICA0ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmMg
ICAgICAgICAgICB8ICAgMyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAg
ICAgICAgICAgIHwgIDEwICsrCiAxMCBmaWxlcyBjaGFuZ2VkLCAzNzEgaW5zZXJ0aW9ucygrKSwg
MTkgZGVsZXRpb25zKC0pCgotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
