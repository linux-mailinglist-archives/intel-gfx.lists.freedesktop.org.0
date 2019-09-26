Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE205BF56C
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 17:02:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C1606ECF8;
	Thu, 26 Sep 2019 15:02:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8C2F6ECF8
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 15:02:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Sep 2019 08:02:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,552,1559545200"; d="scan'208";a="201637235"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by orsmga002.jf.intel.com with ESMTP; 26 Sep 2019 08:02:35 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Sep 2019 20:26:14 +0530
Message-Id: <20190926145621.9090-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH RESEND v9 0/7] DC3CO Support for TGL
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

UmVzZW5kaW5nIFY5IHNlcmllcyBhZnRlciBmaXhpbmcgQ0kgd2FybmluZ3MgYW5kIENJIElHVCBm
YWlsdXJlcy4KdjkgcmV2aXNpb24gaXMgYSByZXdvcmsgb2Ygc2VyaWVzLCB3aGljaCBoYXMgZml4
ZWQgdGhlIHJldmlldyBjb21tZW50cwpwcm92aWRlZCBieSBJbXJlIGFuZCBhZGRlZCBBbmltZXNo
J3MgUkIgb24gZm9sbG93aW5nIHR3byBwYXRjaGVzLgoKMS5BZGQgREMzQ08gcmVxdWlyZWQgcmVn
aXN0ZXIgYW5kIGJpdHMKMi5BZGQgREMzQ08gbWFzayB0byBhbGxvd2VkX2RjX21hc2sgYW5kIGdl
bjlfZGNfbWFzawoKQW5zaHVtYW4gR3VwdGEgKDcpOgogIGRybS9pOTE1L3RnbDogQWRkIERDM0NP
IHJlcXVpcmVkIHJlZ2lzdGVyIGFuZCBiaXRzCiAgZHJtL2k5MTUvdGdsOiBBZGQgREMzQ08gbWFz
ayB0byBhbGxvd2VkX2RjX21hc2sgYW5kIGdlbjlfZGNfbWFzawogIGRybS9pOTE1L3RnbDogRW5h
YmxlIERDM0NPIHN0YXRlIGluICJEQyBPZmYiIHBvd2VyIHdlbGwKICBkcm0vaTkxNS90Z2w6IERv
IG1vZGVzZXQgdG8gZW5hYmxlIGFuZCBjb25maWd1cmUgREMzQ08gZXhpdGxpbmUKICBkcm0vaTkx
NS90Z2w6IERDM0NPIFBTUjIgaGVscGVyCiAgZHJtL2k5MTUvdGdsOiBzd2l0Y2ggYmV0d2VlbiBk
YzNjbyBhbmQgZGM1IGJhc2VkIG9uIGRpc3BsYXkgaWRsZW5lc3MKICBkcm0vaTkxNS90Z2w6IEFk
ZCBEQzNDTyBjb3VudGVyIGluIGk5MTVfZG1jX2luZm8KCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RkaS5jICAgICAgfCAgIDcgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgICAxICsKIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfcG93ZXIuYyAgICB8IDMxMCArKysrKysrKysrKysrKysrKy0KIC4uLi9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuaCAgICB8ICAxNCArCiAuLi4vZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAgIDEgKwogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jICAgICAgIHwgICAyICsKIC4uLi9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9mcm9udGJ1ZmZlci5jICB8ICAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jICAgICAgfCAgNDIgKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5oICAgICAgfCAgIDIgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kZWJ1Z2ZzLmMgICAgICAgICAgIHwgICA2ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmggICAgICAgICAgICAgICB8ICAgMyArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3BhcmFtcy5jICAgICAgICAgICAgfCAgIDMgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmggICAgICAgICAgICAgICB8ICAxMCArCiAxMyBmaWxlcyBjaGFuZ2VkLCAzODYgaW5zZXJ0
aW9ucygrKSwgMTYgZGVsZXRpb25zKC0pCgotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
