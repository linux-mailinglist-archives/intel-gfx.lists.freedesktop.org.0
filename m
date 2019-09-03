Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D680DA7228
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2019 20:02:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0529489733;
	Tue,  3 Sep 2019 18:02:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BA948972D
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2019 18:02:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Sep 2019 11:02:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,463,1559545200"; d="scan'208";a="382212933"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by fmsmga005.fm.intel.com with ESMTP; 03 Sep 2019 11:02:44 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Sep 2019 23:29:32 +0530
Message-Id: <20190903175939.6741-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 0/7] DC3CO Support for TGL
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

VGhpcyBpcyBhIG5ldyBkZXNpZ24gcHJvcG9zYWwgZm9yIERDM0NPIGZlYXR1cmUgYWZ0ZXIgZGlz
c2N1c3NpbmcKaXQgd2l0aCBWaWxsZSBhbmQgSW1yZS4KClRoaXMgZGVzaWduIHVzZXMgYSBBUEkg
dGdsX3NldF90YXJnZXRfZGNfc3RhdGUoKSBBUEkKdG8gc3dpdGNoIGJldHdlZW4gREMzQ08gYW5k
IERDNSBieSB1c2luZyAiREMgb2ZmIgpwb3dlciB3ZWxsLiBBbm90aGVyIG1ham9yIGNoYW5nZSBp
biB0aGlzIGRlc2lnbiB1c2luZyBwYWdlIGZsaXAKZnJvbnRidWZmZXIgZmx1c2ggY2FsbCB0byBh
bGxvdyBEQzNDTy4KCkFzIHBhcnQgb2YgREMzQ08gZmVhdHVyZSwgaXQgbmVlZHMgdG8gY29uZmln
dXJlIGFuZCBlbmFibGUKVFJBTlNfRVhJVExJTkUgcmVnaXN0ZXIgd2hpY2ggb25seSBuZWVkcyB0
byBjaGFuZ2Ugd2hlbgp0cmFuc2NvZGVyL3BvcnQgaXMgbm90IGVuYWJsZWQuIEl0IHJlcXVpcmVz
IHRvIGNvbmZpZ3VyZSBhbmQKZW5hYmxlIGl0IGluIGZ1bGwgbW9kZXNldCBzZXF1ZW5jZS4gV2hp
Y2ggcmVxdWlyZXMgdG8gZm9yY2UKdGhlIG1vZGVzZXQgb25seSBhdCBzeXN0ZW0gYm9vdHVwLCB3
aXRoIG9ubHkgZURQIHBhbmVsLgoKVGVzdGVkIHRoaXMgc2VyaWVzIG9uIHJlYWwgSC9XLCBEQzND
TyBjb3VudGVyIGlzIHZhbGlkYXRlZAp3aXRob3V0IGFueSBvdGhlciBpc3N1ZSBvYnNlcnZlZC4K
CkFuc2h1bWFuIEd1cHRhICg3KToKICBkcm0vaTkxNS90Z2w6IEFkZCBEQzNDTyByZXF1aXJlZCBy
ZWdpc3RlciBhbmQgYml0cwogIGRybS9pOTE1L3RnbDogQWRkIERDM0NPIG1hc2sgdG8gYWxsb3dl
ZF9kY19tYXNrIGFuZCBnZW45X2RjX21hc2sKICBkcm0vaTkxNS90Z2w6IEVuYWJsZSBEQzNDTyBz
dGF0ZSBpbiAiREMgT2ZmIiBwb3dlciB3ZWxsCiAgZHJtL2k5MTUvdGdsOiBBZGQgaGVscGVyIGZ1
bmN0aW9uIGZvciBEQzNDTyBleGl0bGluZS4KICBkcm0vaTkxNS90Z2w6IERDM0NPIFBTUjIgaGVs
cGVyCiAgZHJtL2k5MTUvdGdsOiBzd2l0Y2ggYmV0d2VlbiBkYzNjbyBhbmQgZGM1IGJhc2VkIG9u
IGRpc3BsYXkgaWRsZW5lc3MKICBkcm0vaTkxNS90Z2w6IEFkZCBEQzNDTyBjb3VudGVyIGluIGk5
MTVfZG1jX2luZm8KCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YyAgfCAgIDcgKwogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jICAg
IHwgMzA1ICsrKysrKysrKysrKysrKystLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV9wb3dlci5oICAgIHwgIDE1ICsKIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9m
cm9udGJ1ZmZlci5jICB8ICAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jICAgICAgfCAgNDQgKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5oICAgICAgfCAgIDIgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMg
ICAgICAgICAgIHwgICA2ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAg
ICAgICAgICB8ICAgNSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5jICAgICAg
ICAgICAgfCAgIDMgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAg
ICAgICB8ICAxMCArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jICAgICAgICAgICAg
ICAgfCAgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmggICAgICAgICAgICAg
ICB8ICAgMiArCiAxMiBmaWxlcyBjaGFuZ2VkLCAzNzIgaW5zZXJ0aW9ucygrKSwgMzAgZGVsZXRp
b25zKC0pCgotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
