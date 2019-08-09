Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E94388298
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 20:36:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1207B6EE77;
	Fri,  9 Aug 2019 18:36:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 925DD6EE76
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2019 18:36:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Aug 2019 11:36:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,366,1559545200"; d="scan'208";a="193444056"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by fmsmga001.fm.intel.com with ESMTP; 09 Aug 2019 11:35:59 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 10 Aug 2019 00:02:14 +0530
Message-Id: <20190809183223.12031-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 0/9] DC3CO Support for TGL
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

VGhpcyByZXZpc2lvbiBpcyByZWJhc2VkIG9uIGxhdGVzdCBkcm0tdGlwIGFzIGVhcmxpZXIgdjQg
c2VyaWVzIGhhZApDSSBmYWlsdXJlcyBkdWUgdG8gbWVyZ2UgY29uZmxpY3RzLCB0aGVyZSBhcmUg
bm8gZnVuY3Rpb25hbCBjaGFuZ2VzCndpdGggdGhpcyB2NSBzZXJpZXMuCgpvbmUgcGF0Y2ggb2Yg
dGhpcyBzZXJpZXMgInRnbC1EQzNDTy1QU1IyLWhlbHBlciIKd2lsbCByZXF1aXJlIHJlYmFzZSBh
ZnRlciBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzYyNDE2LwpzZXJp
ZXMgd2lsbCBtZXJnZWQgdG8gZHJtLXRpcC4KVEdMIHN1cHBvcnRzIERDM0NPIG9ubHkgb24gUGlw
ZUEgaW4gTFBTUCBtcGRlLCBzbyBEQzNDTyBkb2Vzbid0IGRlcGVuZHMKb24gVEdMIFBTUiAiVHJh
bnNjb2RlciBCIiBmZWF0dXJlLgoKQi5TcGVjczo0OTE5NgpEQzNDTyByZXF1aXJlbWVudHM6CipB
dWRpbyBjb2RlYyBpZGxlIGFuZCBkaXNhYmxlZC4KKkV4dGVybmFsIGRpc3BsYXlzIGRpc2FibGVk
LgogV0QgdHJhbnNjb2RlcnMgYW5kIERQL0hETUkgdHJhbnNjb2RlcnMgbXVzdCBiZSBkaXNhYmxl
ZC4KKkJhY2tsaWdodCBjYW5ub3QgYmUgZHJpdmVuIGZyb20gdGhlIGRpc3BsYXkgdXRpbGl0eSBw
aW4uCiBJdCBjYW4gYmUgZHJpdmVuIGZyb20gdGhlIHNvdXRoIGRpc3BsYXkuCipUaGlzIGZlYXR1
cmUgc2hvdWxkIGJlIGVuYWJsZWQgb25seSBpbiBEaXNwbGF5IFZpZGVvIHBsYXliYWNrIG9uIGVE
UC4KKkRDNSBhbmQgREM2IG5vdCBhbGxvd2VkIHdoZW4gdGhpcyBmZWF0dXJlIGlzIGVuYWJsZWQu
CipQU1IyIGRlZXAgc2xlZXAgZGlzYWJsZWQgKFBTUjJfQ1RMIElkbGUgRnJhbWVzID0gMDAwMGIp
CipEaXNhYmxlIERDM2NvIGJlZm9yZSBtb2RlIHNldCwgb3Igb3RoZXIgQXV4LCBQTEwsIGFuZCBE
QlVGIHByb2dyYW1taW5nLAogYW5kIGRvIG5vdCByZS1lbmFibGUgdW50aWwgYWZ0ZXIgdGhhdCBw
cm9ncmFtbWluZyBpcyBjb21wbGV0ZWQuCipEQzNjbyBtdXN0IG5vdCBiZSBlbmFibGVkIHVudGls
IGFmdGVyIFBTUjIgaXMgZW5hYmxlZC4KKkRDM2NvIG11c3QgYmUgZGlzYWJsZWQgYmVmb3JlIFBT
UjIgaXMgZGlzYWJsZWQuCgpBbnNodW1hbiBHdXB0YSAoOSk6CiAgZHJtL2k5MTUvdGdsOiBBZGQg
REMzQ08gcmVxdWlyZWQgcmVnaXN0ZXIgYW5kIGJpdHMKICBkcm0vaTkxNS90Z2w6IEFkZCBEQzND
TyBtYXNrIHRvIGFsbG93ZWRfZGNfbWFzayBhbmQgZ2VuOV9kY19tYXNrCiAgZHJtL2k5MTUvdGds
OiBBZGQgcG93ZXIgd2VsbCB0byBlbmFibGUgREMzQ08gc3RhdGUKICBkcm0vaTkxNS90Z2w6IG11
dHVhbCBleGNsdXNpdmUgaGFuZGxpbmcgZm9yIERDM0NPIGFuZCBEQzUvNgogIGRybS9pOTE1L3Rn
bDogQWRkIGhlbHBlciBmdW5jdGlvbiB0byBwcmVmZXIgZGMzY28gb3ZlciBkYzUKICBkcm0vaTkx
NS90Z2w6IEFkZCBWSURFTyBwb3dlciBkb21haW4KICBkcm0vaTkxNS90Z2w6IERDM0NPIFBTUjIg
aGVscGVyCiAgZHJtL2k5MTUvdGdsOiBzd2l0Y2ggYmV0d2VlbiBkYzNjbyBhbmQgZGM1IGJhc2Vk
IG9uIGRpc3BsYXkgaWRsZW5lc3MKICBkcm0vaTkxNS90Z2w6IEFkZCBEQzNDTyBjb3VudGVyIGlu
IGk5MTVfZG1jX2luZm8KCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYyAgfCAgIDkgKwogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5j
ICAgIHwgMjkxICsrKysrKysrKysrKysrKysrLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV9wb3dlci5oICAgIHwgIDExICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMgICAgICB8ICA0NCArKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmggICAgICB8ICAgMiArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVn
ZnMuYyAgICAgICAgICAgfCAgIDYgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAg
ICAgICAgICAgICAgIHwgICA4ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmMg
ICAgICAgICAgICB8ICAgMyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAg
ICAgICAgICAgIHwgIDEwICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgICAgICAg
ICAgICAgICB8ICAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uaCAgICAgICAg
ICAgICAgIHwgICAyICsKIDExIGZpbGVzIGNoYW5nZWQsIDM3NiBpbnNlcnRpb25zKCspLCAxMiBk
ZWxldGlvbnMoLSkKCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
