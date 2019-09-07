Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A1E2AC800
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Sep 2019 19:21:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E17B89DA9;
	Sat,  7 Sep 2019 17:21:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43A6589DA9
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Sep 2019 17:21:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Sep 2019 10:21:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,478,1559545200"; d="scan'208";a="191111422"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by FMSMGA003.fm.intel.com with ESMTP; 07 Sep 2019 10:21:29 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  7 Sep 2019 22:44:36 +0530
Message-Id: <20190907171443.16181-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 0/7] DC3CO Support for TGL
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
Y3Vzc2luZwppdCB3aXRoIFZpbGxlIGFuZCBJbXJlLgoKVW5saWtlIHY2IHRoaXMgdjcgdmVyc2lv
biBoYXMgYSBjbGVhbmVyIHNvbHV0aW9uIHRvIGZyb2NlIHRoZQptb2Rlc2V0IGF0IGJvb3R1cCBi
eSB1c2luZyBhIGNydGNfc3RhdGUgc3RhdGUgYm9vbApoYXNfZGMzY29fZXhpdGxpbmUgaW4gb3Jk
ZXIgdG8gY29uZmlndXJlIGFuZCBlbmFibGUgZGMzY28gZXhpdGxpbmUuCgpTdWdnZXN0aW9uIGFu
ZCBmZWVkYmFjayBhcmUgbW9zdCB3ZWxjb21lIGZvciB0aGlzIG5ldyBkZXNpZ24Kc2VyaWVzLgoK
QW5zaHVtYW4gR3VwdGEgKDcpOgogIGRybS9pOTE1L3RnbDogQWRkIERDM0NPIHJlcXVpcmVkIHJl
Z2lzdGVyIGFuZCBiaXRzCiAgZHJtL2k5MTUvdGdsOiBBZGQgREMzQ08gbWFzayB0byBhbGxvd2Vk
X2RjX21hc2sgYW5kIGdlbjlfZGNfbWFzawogIGRybS9pOTE1L3RnbDogRW5hYmxlIERDM0NPIHN0
YXRlIGluICJEQyBPZmYiIHBvd2VyIHdlbGwKICBkcm0vaTkxNS90Z2w6IERvIG1vZGVzZXQgdG8g
ZW5hYmxlIGFuZCBjb25maWd1cmUgREMzQ08gZXhpdGxpbmUuCiAgZHJtL2k5MTUvdGdsOiBEQzND
TyBQU1IyIGhlbHBlcgogIGRybS9pOTE1L3RnbDogc3dpdGNoIGJldHdlZW4gZGMzY28gYW5kIGRj
NSBiYXNlZCBvbiBkaXNwbGF5IGlkbGVuZXNzCiAgZHJtL2k5MTUvdGdsOiBBZGQgREMzQ08gY291
bnRlciBpbiBpOTE1X2RtY19pbmZvCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMgIHwgICA3ICsKIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
cG93ZXIuYyAgICB8IDMyNyArKysrKysrKysrKysrKysrLS0KIC4uLi9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfcG93ZXIuaCAgICB8ICAxNiArCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAgIDEgKwogLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Zyb250YnVmZmVyLmMgIHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMgICAgICB8ICA1MSArKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmggICAgICB8ICAgMiArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rl
YnVnZnMuYyAgICAgICAgICAgfCAgIDYgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
aCAgICAgICAgICAgICAgIHwgICA0ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1z
LmMgICAgICAgICAgICB8ICAgMyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAg
ICAgICAgICAgICAgIHwgIDEwICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgICAg
ICAgICAgICAgICB8ICAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uaCAgICAg
ICAgICAgICAgIHwgICAyICsKIDEzIGZpbGVzIGNoYW5nZWQsIDQwMiBpbnNlcnRpb25zKCspLCAz
MCBkZWxldGlvbnMoLSkKCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
