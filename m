Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 490E0BE471
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 20:16:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AF196EC87;
	Wed, 25 Sep 2019 18:16:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 318376EC91
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 18:16:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Sep 2019 11:16:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,549,1559545200"; d="scan'208";a="364405653"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by orsmga005.jf.intel.com with ESMTP; 25 Sep 2019 11:16:36 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Sep 2019 23:40:16 +0530
Message-Id: <20190925181023.12290-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v9 0/7] DC3CO Support for TGL
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

djkgcmV2aXNpb24gaXMgYSByZXdvcmsgb2Ygc2VyaWVzLCB3aGljaCBoYXMgZml4ZWQgdGhlIHJl
dmlldyBjb21tZW50cwpwcm92aWRlZCBieSBJbXJlIGFuZCBhZGRlZCBBbmltZXNoJ3MgUkIgb24g
Zm9sbG93aW5nIHR3byBwYXRjaGVzLgoKMS5BZGQgREMzQ08gcmVxdWlyZWQgcmVnaXN0ZXIgYW5k
IGJpdHMKMi5BZGQgREMzQ08gbWFzayB0byBhbGxvd2VkX2RjX21hc2sgYW5kIGdlbjlfZGNfbWFz
awoKQW5zaHVtYW4gR3VwdGEgKDcpOgogIGRybS9pOTE1L3RnbDogQWRkIERDM0NPIHJlcXVpcmVk
IHJlZ2lzdGVyIGFuZCBiaXRzCiAgZHJtL2k5MTUvdGdsOiBBZGQgREMzQ08gbWFzayB0byBhbGxv
d2VkX2RjX21hc2sgYW5kIGdlbjlfZGNfbWFzawogIGRybS9pOTE1L3RnbDogRW5hYmxlIERDM0NP
IHN0YXRlIGluICJEQyBPZmYiIHBvd2VyIHdlbGwKICBkcm0vaTkxNS90Z2w6IERvIG1vZGVzZXQg
dG8gZW5hYmxlIGFuZCBjb25maWd1cmUgREMzQ08gZXhpdGxpbmUKICBkcm0vaTkxNS90Z2w6IERD
M0NPIFBTUjIgaGVscGVyCiAgZHJtL2k5MTUvdGdsOiBzd2l0Y2ggYmV0d2VlbiBkYzNjbyBhbmQg
ZGM1IGJhc2VkIG9uIGRpc3BsYXkgaWRsZW5lc3MKICBkcm0vaTkxNS90Z2w6IEFkZCBEQzNDTyBj
b3VudGVyIGluIGk5MTVfZG1jX2luZm8KCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RkaS5jICAgICAgfCAgIDcgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMgIHwgICAxICsKIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
cG93ZXIuYyAgICB8IDMzNiArKysrKysrKysrKysrKysrKy0KIC4uLi9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfcG93ZXIuaCAgICB8ICAxMyArCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAgIDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5jICAgICAgIHwgICAyICsKIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9mcm9udGJ1ZmZlci5jICB8ICAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jICAgICAgfCAgNDIgKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5oICAgICAgfCAgIDIgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1
Z2ZzLmMgICAgICAgICAgIHwgICA2ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2Lmgg
ICAgICAgICAgICAgICB8ICAgMyArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5j
ICAgICAgICAgICAgfCAgIDMgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAg
ICAgICAgICAgICB8ICAxMCArCiAxMyBmaWxlcyBjaGFuZ2VkLCA0MTEgaW5zZXJ0aW9ucygrKSwg
MTYgZGVsZXRpb25zKC0pCgotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
