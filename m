Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51CB77AA32
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 15:54:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADD0A6E51C;
	Tue, 30 Jul 2019 13:54:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 088526E51C
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 13:54:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 06:54:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,326,1559545200"; d="scan'208";a="200169736"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by fmsmga002.fm.intel.com with ESMTP; 30 Jul 2019 06:54:35 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jul 2019 19:20:15 +0530
Message-Id: <20190730135024.31765-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 0/9] DC3CO Support for TGL.
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

VGhpcyB1cGRhdGUgaXMgYSByZWJhc2VkIGFuZCBoYXMgYWRkcmVzc2VkIHBhdGNoIHN0eWxlIHJl
dmlldyBjb21tZW50CmZyb20gSmFuaSBOaWt1bGEuCgpvbmUgcGF0Y2ggb2YgdGhpcyBzZXJpZXMg
InRnbC1EQzNDTy1QU1IyLWhlbHBlciIKd2lsbCByZXF1aXJlIHJlYmFzZSBhZnRlciBodHRwczov
L3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzYyNDE2LwpzZXJpZXMgd2lsbCBtZXJn
ZWQgdG8gZHJtLXRpcC4KVEdMIHN1cHBvcnRzIERDM0NPIG9ubHkgb24gUGlwZUEgaW4gTFBTUCBt
cGRlLCBzbyBEQzNDTyBkb2Vzbid0IGRlcGVuZHMKb24gVEdMIFBTUiAiVHJhbnNjb2RlciBCIiBm
ZWF0dXJlLgoKQi5TcGVjczo0OTE5NgpEQzNDTyByZXF1aXJlbWVudHM6CipBdWRpbyBjb2RlYyBp
ZGxlIGFuZCBkaXNhYmxlZC4KKkV4dGVybmFsIGRpc3BsYXlzIGRpc2FibGVkLgogV0QgdHJhbnNj
b2RlcnMgYW5kIERQL0hETUkgdHJhbnNjb2RlcnMgbXVzdCBiZSBkaXNhYmxlZC4KKkJhY2tsaWdo
dCBjYW5ub3QgYmUgZHJpdmVuIGZyb20gdGhlIGRpc3BsYXkgdXRpbGl0eSBwaW4uCiBJdCBjYW4g
YmUgZHJpdmVuIGZyb20gdGhlIHNvdXRoIGRpc3BsYXkuCipUaGlzIGZlYXR1cmUgc2hvdWxkIGJl
IGVuYWJsZWQgb25seSBpbiBEaXNwbGF5IFZpZGVvIHBsYXliYWNrIG9uIGVEUC4KKkRDNSBhbmQg
REM2IG5vdCBhbGxvd2VkIHdoZW4gdGhpcyBmZWF0dXJlIGlzIGVuYWJsZWQuCipQU1IyIGRlZXAg
c2xlZXAgZGlzYWJsZWQgKFBTUjJfQ1RMIElkbGUgRnJhbWVzID0gMDAwMGIpCipEaXNhYmxlIERD
M2NvIGJlZm9yZSBtb2RlIHNldCwgb3Igb3RoZXIgQXV4LCBQTEwsIGFuZCBEQlVGIHByb2dyYW1t
aW5nLAogYW5kIGRvIG5vdCByZS1lbmFibGUgdW50aWwgYWZ0ZXIgdGhhdCBwcm9ncmFtbWluZyBp
cyBjb21wbGV0ZWQuCipEQzNjbyBtdXN0IG5vdCBiZSBlbmFibGVkIHVudGlsIGFmdGVyIFBTUjIg
aXMgZW5hYmxlZC4KKkRDM2NvIG11c3QgYmUgZGlzYWJsZWQgYmVmb3JlIFBTUjIgaXMgZGlzYWJs
ZWQuCgpBbnNodW1hbiBHdXB0YSAoOSk6CiAgZHJtL2k5MTUvdGdsOiBBZGQgREMzQ08gcmVxdWly
ZWQgcmVnaXN0ZXIgYW5kIGJpdHMKICBkcm0vaTkxNS90Z2w6IEFkZCBEQzNDTyBtYXNrIHRvIGFs
bG93ZWRfZGNfbWFzayBhbmQgZ2VuOV9kY19tYXNrCiAgZHJtL2k5MTUvdGdsOiBBZGQgcG93ZXIg
d2VsbCB0byBlbmFibGUgREMzQ08gc3RhdGUKICBkcm0vaTkxNS90Z2w6IG11dHVhbCBleGNsdXNp
dmUgaGFuZGxpbmcgZm9yIERDM0NPIGFuZCBEQzUvNgogIGRybS9pOTE1L3RnbDogQWRkIGhlbHBl
ciBmdW5jdGlvbiB0byBwcmVmZXIgZGMzY28gb3ZlciBkYzUKICBkcm0vaTkxNS90Z2w6IEFkZCBW
SURFTyBwb3dlciBkb21haW4KICBkcm0vaTkxNS90Z2w6IERDM0NPIFBTUjIgaGVscGVyCiAgZHJt
L2k5MTUvdGdsOiBzd2l0Y2ggYmV0d2VlbiBkYzNjbyBhbmQgZGM1IGJhc2VkIG9uIGRpc3BsYXkg
aWRsZW5lc3MKICBkcm0vaTkxNS90Z2w6IEFkZCBEQzNDTyBjb3VudGVyIGluIGk5MTVfZG1jX2lu
Zm8KCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCAgIDkg
KwogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jICAgIHwgMjY0ICsr
KysrKysrKysrKysrKysrLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dl
ci5oICAgIHwgIDExICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMg
ICAgICB8ICA0NCArKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmgg
ICAgICB8ICAgMiArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyAgICAgICAg
ICAgfCAgIDkgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAg
ICB8ICAgOCArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5jICAgICAgICAgICAg
fCAgIDMgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgICB8
ICAxMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jICAgICAgICAgICAgICAgfCAg
IDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmggICAgICAgICAgICAgICB8ICAg
MiArCiAxMSBmaWxlcyBjaGFuZ2VkLCAzNTkgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkK
Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
