Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE2C2C25D4
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2019 19:47:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEE5B6E4B7;
	Mon, 30 Sep 2019 17:47:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 561A46E4B7
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2019 17:47:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Sep 2019 10:47:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,568,1559545200"; d="scan'208";a="195395232"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by orsmga006.jf.intel.com with ESMTP; 30 Sep 2019 10:47:49 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Sep 2019 23:11:31 +0530
Message-Id: <20190930174137.15233-1-anshuman.gupta@intel.com>
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

VGhpcyB2MTAgcmV2aXNpb24gaGFzIG1vc3Qgb2YgdGhlIGNoYWdlcyByZWxhdGVkIHRvIGRjM2Nv
IHNlcmllcwpjb2RlIHJlZmFjdG9yaW5nIGFuZCBmaXhlcyBmb3IgZmV3IHJldmlldyBjb21tZW50
IHByb3ZpZGVkIGJ5IGltcmUuIAoKQW5zaHVtYW4gR3VwdGEgKDYpOgogIGRybS9pOTE1L3RnbDog
QWRkIERDM0NPIHJlcXVpcmVkIHJlZ2lzdGVyIGFuZCBiaXRzCiAgZHJtL2k5MTUvdGdsOiBBZGQg
REMzQ08gbWFzayB0byBhbGxvd2VkX2RjX21hc2sgYW5kIGdlbjlfZGNfbWFzawogIGRybS9pOTE1
L3RnbDogRW5hYmxlIERDM0NPIHN0YXRlIGluICJEQyBPZmYiIHBvd2VyIHdlbGwKICBkcm0vaTkx
NS90Z2w6IERvIG1vZGVzZXQgdG8gZW5hYmxlIGFuZCBjb25maWd1cmUgREMzQ08gZXhpdGxpbmUK
ICBkcm0vaTkxNS90Z2w6IFN3aXRjaCBiZXR3ZWVuIGRjM2NvIGFuZCBkYzUgYmFzZWQgb24gZGlz
cGxheSBpZGxlbmVzcwogIGRybS9pOTE1L3RnbDogQWRkIERDM0NPIGNvdW50ZXIgaW4gaTkxNV9k
bWNfaW5mbwoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgICAgICB8
IDEwNCArKysrKysrKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jICB8ICAgMSArCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2Vy
LmMgICAgfCAxNTQgKysrKysrKysrKysrKysrKy0tCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X3Bvd2VyLmggICAgfCAgIDMgKwogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV90eXBlcy5oICAgIHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMgICAgICB8IDEwOSArKysrKysrKysrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2RlYnVnZnMuYyAgICAgICAgICAgfCAgIDcgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuaCAgICAgICAgICAgICAgIHwgICA0ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcGFyYW1zLmMgICAgICAgICAgICB8ICAgMyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaCAgICAgICAgICAgICAgIHwgIDEwICsrCiAxMCBmaWxlcyBjaGFuZ2VkLCAzNzcgaW5z
ZXJ0aW9ucygrKSwgMTkgZGVsZXRpb25zKC0pCgotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
