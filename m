Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E80B8B199F
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2019 10:30:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11CE86EECD;
	Fri, 13 Sep 2019 08:30:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B23E6EECD
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2019 08:30:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Sep 2019 01:30:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,500,1559545200"; d="scan'208";a="186375200"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by fmsmga007.fm.intel.com with ESMTP; 13 Sep 2019 01:30:09 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Sep 2019 13:53:32 +0530
Message-Id: <20190913082339.1785-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v8 0/7] DC3CO Support for TGL
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

djggcmV2aXNpb24gaXMgYSByZXdvcmsgb2Ygc2VyaWVzLCB3aGljaCBoYXMgZml4ZWQgdGhlIHJl
dmlldyBjb21tZW50cwpwcm92aWRlZCBieSBJbXJlIGFuZCBBbmltZXNoLgoKQW5zaHVtYW4gR3Vw
dGEgKDcpOgogIGRybS9pOTE1L3RnbDogQWRkIERDM0NPIHJlcXVpcmVkIHJlZ2lzdGVyIGFuZCBi
aXRzCiAgZHJtL2k5MTUvdGdsOiBBZGQgREMzQ08gbWFzayB0byBhbGxvd2VkX2RjX21hc2sgYW5k
IGdlbjlfZGNfbWFzawogIGRybS9pOTE1L3RnbDogRW5hYmxlIERDM0NPIHN0YXRlIGluICJEQyBP
ZmYiIHBvd2VyIHdlbGwKICBkcm0vaTkxNS90Z2w6IERvIG1vZGVzZXQgdG8gZW5hYmxlIGFuZCBj
b25maWd1cmUgREMzQ08gZXhpdGxpbmUuCiAgZHJtL2k5MTUvdGdsOiBEQzNDTyBQU1IyIGhlbHBl
cgogIGRybS9pOTE1L3RnbDogc3dpdGNoIGJldHdlZW4gZGMzY28gYW5kIGRjNSBiYXNlZCBvbiBk
aXNwbGF5IGlkbGVuZXNzCiAgZHJtL2k5MTUvdGdsOiBBZGQgREMzQ08gY291bnRlciBpbiBpOTE1
X2RtY19pbmZvCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMg
IHwgICA1ICsKIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyAgICB8
IDMzMiArKysrKysrKysrKysrKysrKy0KIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfcG93ZXIuaCAgICB8ICAxMyArCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3R5cGVzLmggICAgfCAgIDEgKwogLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Zyb250
YnVmZmVyLmMgIHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMgICAgICB8ICA1MiArKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmggICAgICB8ICAgMiArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyAgICAg
ICAgICAgfCAgIDYgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICAg
ICAgIHwgICAzICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmMgICAgICAgICAg
ICB8ICAgMyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAg
IHwgIDEwICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgICAgICAgICAgICAgICB8
ICAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uaCAgICAgICAgICAgICAgIHwg
ICAyICsKIDEzIGZpbGVzIGNoYW5nZWQsIDQxNSBpbnNlcnRpb25zKCspLCAxNyBkZWxldGlvbnMo
LSkKCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
