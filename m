Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 161C1867E6
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 19:25:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86CCE6E847;
	Thu,  8 Aug 2019 17:25:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 883166E847
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 17:25:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Aug 2019 10:25:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,362,1559545200"; d="scan'208";a="258778183"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by orsmga001.jf.intel.com with ESMTP; 08 Aug 2019 10:25:35 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Aug 2019 22:51:49 +0530
Message-Id: <20190808172158.30578-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 0/9] DC3CO Support for TGL
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

VGhpcyByZXZpc2lvbiBpcyBhIHJlYmFzZWQgYW5kIGhhcyBhZGRyZXNzZWQgZmV3IHJldmlldyBj
b21tZW50CnByb3ZpZGVkIGJ5IEFuaW1lc2ggYW5kIGhhcyBzb21lIG90aGVyIGZpeGVzIGluIGRj
MyBkaXNhbGxvdyBzZXF1ZW5jZS4KCm9uZSBwYXRjaCBvZiB0aGlzIHNlcmllcyAidGdsLURDM0NP
LVBTUjItaGVscGVyIgp3aWxsIHJlcXVpcmUgcmViYXNlIGFmdGVyIGh0dHBzOi8vcGF0Y2h3b3Jr
LmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjI0MTYvCnNlcmllcyB3aWxsIG1lcmdlZCB0byBkcm0t
dGlwLgpUR0wgc3VwcG9ydHMgREMzQ08gb25seSBvbiBQaXBlQSBpbiBMUFNQIG1wZGUsIHNvIERD
M0NPIGRvZXNuJ3QgZGVwZW5kcwpvbiBUR0wgUFNSICJUcmFuc2NvZGVyIEIiIGZlYXR1cmUuCgpC
LlNwZWNzOjQ5MTk2CkRDM0NPIHJlcXVpcmVtZW50czoKKkF1ZGlvIGNvZGVjIGlkbGUgYW5kIGRp
c2FibGVkLgoqRXh0ZXJuYWwgZGlzcGxheXMgZGlzYWJsZWQuCiBXRCB0cmFuc2NvZGVycyBhbmQg
RFAvSERNSSB0cmFuc2NvZGVycyBtdXN0IGJlIGRpc2FibGVkLgoqQmFja2xpZ2h0IGNhbm5vdCBi
ZSBkcml2ZW4gZnJvbSB0aGUgZGlzcGxheSB1dGlsaXR5IHBpbi4KIEl0IGNhbiBiZSBkcml2ZW4g
ZnJvbSB0aGUgc291dGggZGlzcGxheS4KKlRoaXMgZmVhdHVyZSBzaG91bGQgYmUgZW5hYmxlZCBv
bmx5IGluIERpc3BsYXkgVmlkZW8gcGxheWJhY2sgb24gZURQLgoqREM1IGFuZCBEQzYgbm90IGFs
bG93ZWQgd2hlbiB0aGlzIGZlYXR1cmUgaXMgZW5hYmxlZC4KKlBTUjIgZGVlcCBzbGVlcCBkaXNh
YmxlZCAoUFNSMl9DVEwgSWRsZSBGcmFtZXMgPSAwMDAwYikKKkRpc2FibGUgREMzY28gYmVmb3Jl
IG1vZGUgc2V0LCBvciBvdGhlciBBdXgsIFBMTCwgYW5kIERCVUYgcHJvZ3JhbW1pbmcsCiBhbmQg
ZG8gbm90IHJlLWVuYWJsZSB1bnRpbCBhZnRlciB0aGF0IHByb2dyYW1taW5nIGlzIGNvbXBsZXRl
ZC4KKkRDM2NvIG11c3Qgbm90IGJlIGVuYWJsZWQgdW50aWwgYWZ0ZXIgUFNSMiBpcyBlbmFibGVk
LgoqREMzY28gbXVzdCBiZSBkaXNhYmxlZCBiZWZvcmUgUFNSMiBpcyBkaXNhYmxlZC4KCkFuc2h1
bWFuIEd1cHRhICg5KToKICBkcm0vaTkxNS90Z2w6IEFkZCBEQzNDTyByZXF1aXJlZCByZWdpc3Rl
ciBhbmQgYml0cwogIGRybS9pOTE1L3RnbDogQWRkIERDM0NPIG1hc2sgdG8gYWxsb3dlZF9kY19t
YXNrIGFuZCBnZW45X2RjX21hc2sKICBkcm0vaTkxNS90Z2w6IEFkZCBwb3dlciB3ZWxsIHRvIGVu
YWJsZSBEQzNDTyBzdGF0ZQogIGRybS9pOTE1L3RnbDogbXV0dWFsIGV4Y2x1c2l2ZSBoYW5kbGlu
ZyBmb3IgREMzQ08gYW5kIERDNS82CiAgZHJtL2k5MTUvdGdsOiBBZGQgaGVscGVyIGZ1bmN0aW9u
IHRvIHByZWZlciBkYzNjbyBvdmVyIGRjNQogIGRybS9pOTE1L3RnbDogQWRkIFZJREVPIHBvd2Vy
IGRvbWFpbgogIGRybS9pOTE1L3RnbDogREMzQ08gUFNSMiBoZWxwZXIKICBkcm0vaTkxNS90Z2w6
IHN3aXRjaCBiZXR3ZWVuIGRjM2NvIGFuZCBkYzUgYmFzZWQgb24gZGlzcGxheSBpZGxlbmVzcwog
IGRybS9pOTE1L3RnbDogQWRkIERDM0NPIGNvdW50ZXIgaW4gaTkxNV9kbWNfaW5mbwoKIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8ICAgOSArCiAuLi4vZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgICAgfCAyOTAgKysrKysrKysrKysr
KysrKystCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmggICAgfCAg
MTEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyAgICAgIHwgIDQ0
ICsrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaCAgICAgIHwgICAy
ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jICAgICAgICAgICB8ICAgNiAr
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICAgfCAgIDggKwog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuYyAgICAgICAgICAgIHwgICAzICstCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICAgfCAgMTAgKwogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyAgICAgICAgICAgICAgIHwgICAyICstCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5oICAgICAgICAgICAgICAgfCAgIDIgKwogMTEgZmls
ZXMgY2hhbmdlZCwgMzc2IGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQoKLS0gCjIuMjEu
MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
