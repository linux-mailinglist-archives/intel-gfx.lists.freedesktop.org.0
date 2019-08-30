Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD58A3D29
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 19:47:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3EF16E397;
	Fri, 30 Aug 2019 17:47:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF78D6E397
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 17:47:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Aug 2019 10:47:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,447,1559545200"; d="scan'208";a="172306217"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by orsmga007.jf.intel.com with ESMTP; 30 Aug 2019 10:47:41 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Aug 2019 23:14:26 +0530
Message-Id: <20190830174433.22227-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 0/7] DC3CO Support for TGL
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
dXJlIGFuZCBlbmFibGUgClRSQU5TX0VYSVRMSU5FIHJlZ2lzdGVyIHdoaWNoIG9ubHkgbmVlZHMg
dG8gY2hhbmdlIHdoZW4KdHJhbnNjb2Rlci9wb3J0IGlzIG5vdCBlbmFibGVkLiBJdCByZXF1aXJl
cyB0byBjb25maWd1cmUgYW5kCmVuYWJsZSBpdCBpbiBmdWxsIG1vZGVzZXQgc2VxdWVuY2UuIFdo
aWNoIHJlcXVpcmVzIHRvIGZvcmNlCnRoZSBtb2Rlc2V0IGF0IG9ubHkgYXQgc3lzdGVtIGJvb3R1
cCwgd2l0aCBvbmx5IGVEUCBwYW5lbC4gCih3aGVuIHN5c3RlbSBib290cyB3aXRoIG9ubHkgZURQ
IHBhbmVsIHRoZXJlIHdpbGwgbm90IGJlIHJlYWwKIG1vZGVzZXQpLiBJIG9ic2VydmVkIHNvbWV0
aW1lcyBoYW5nIHdoaWxlIGVhcmx5IGJvb3R1cCwgd2hpY2gKc2VlbXMgc2lkZSBlZmZlY3Qgb2Yg
Zm9yY2luZyBhIG1vZGVzZXQgYXQgYm9vdHVwLiBJIGFtIHdvcmtpbmcKdG8gZml4IGl0LgoKVGFn
Z2luZyB0aGlzIGFzIFJGQyBzZXJpZXMsIGkgbmVlZCBmZWVkYmFjaywgc3VnZ2VzdGlvbiBhbmQg
QUNLCnRvIHRoaXMgbmV3IGRlc2lnbi4KCkFuc2h1bWFuIEd1cHRhICg3KToKICBkcm0vaTkxNS90
Z2w6IEFkZCBEQzNDTyByZXF1aXJlZCByZWdpc3RlciBhbmQgYml0cwogIGRybS9pOTE1L3RnbDog
QWRkIERDM0NPIG1hc2sgdG8gYWxsb3dlZF9kY19tYXNrIGFuZCBnZW45X2RjX21hc2sKICBkcm0v
aTkxNS90Z2w6IEVuYWJsZSBEQzNDTyBzdGF0ZSBpbiAiREMgT2ZmIiBwb3dlciB3ZWxsCiAgZHJt
L2k5MTUvdGdsOiBBZGQgaGVscGVyIGZ1bmN0aW9uIGZvciBEQzNDTyBleGl0bGluZS4KICBkcm0v
aTkxNS90Z2w6IERDM0NPIFBTUjIgaGVscGVyCiAgZHJtL2k5MTUvdGdsOiBzd2l0Y2ggYmV0d2Vl
biBkYzNjbyBhbmQgZGM1IGJhc2VkIG9uIGRpc3BsYXkgaWRsZW5lc3MKICBkcm0vaTkxNS90Z2w6
IEFkZCBEQzNDTyBjb3VudGVyIGluIGk5MTVfZG1jX2luZm8KCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCAgIDQgKwogLi4uL2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV9wb3dlci5jICAgIHwgMjg5ICsrKysrKysrKysrKysrKystLQogLi4uL2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5oICAgIHwgIDE0ICsKIC4uLi9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mcm9udGJ1ZmZlci5jICB8ICAgMSArCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jICAgICAgfCAgNDQgKysrCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oICAgICAgfCAgIDIgKwogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgICAgICAgICAgIHwgICA2ICsKIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgICB8ICAgNCArCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3BhcmFtcy5jICAgICAgICAgICAgfCAgIDMgKy0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgICB8ICAxMCArCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9wbS5jICAgICAgICAgICAgICAgfCAgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3BtLmggICAgICAgICAgICAgICB8ICAgMiArCiAxMiBmaWxlcyBjaGFuZ2VkLCAzNTEg
aW5zZXJ0aW9ucygrKSwgMzAgZGVsZXRpb25zKC0pCgotLSAKMi4yMS4wCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
