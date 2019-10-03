Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D42D1C99BC
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2019 10:23:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 336316E2C7;
	Thu,  3 Oct 2019 08:23:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE6996E2C7
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2019 08:23:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Oct 2019 01:23:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,251,1566889200"; d="scan'208";a="221699989"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by fmsmga002.fm.intel.com with ESMTP; 03 Oct 2019 01:23:39 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Oct 2019 13:47:32 +0530
Message-Id: <20191003081738.22101-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v10 RESEND 0/6] DC3CO Support for TGL test with
 DC3CO IGT
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmVzZW5kaW5nIHRoaXMgc2VyaWVzIHRvIHRlc3Qgd2l0aCBEQzNDTyBJR1Qgc2VyaWVzLgpodHRw
czovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY2NjQ4LwoKVGVzdC13aXRoOiA8
MTU3MDA4ODcwOS0zNjA1LTItZ2l0LXNlbmQtZW1haWwtamVldmFuLmJAaW50ZWwuY29tPgoKQW5z
aHVtYW4gR3VwdGEgKDYpOgogIGRybS9pOTE1L3RnbDogQWRkIERDM0NPIHJlcXVpcmVkIHJlZ2lz
dGVyIGFuZCBiaXRzCiAgZHJtL2k5MTUvdGdsOiBBZGQgREMzQ08gbWFzayB0byBhbGxvd2VkX2Rj
X21hc2sgYW5kIGdlbjlfZGNfbWFzawogIGRybS9pOTE1L3RnbDogRW5hYmxlIERDM0NPIHN0YXRl
IGluICJEQyBPZmYiIHBvd2VyIHdlbGwKICBkcm0vaTkxNS90Z2w6IERvIG1vZGVzZXQgdG8gZW5h
YmxlIGFuZCBjb25maWd1cmUgREMzQ08gZXhpdGxpbmUKICBkcm0vaTkxNS90Z2w6IFN3aXRjaCBi
ZXR3ZWVuIGRjM2NvIGFuZCBkYzUgYmFzZWQgb24gZGlzcGxheSBpZGxlbmVzcwogIGRybS9pOTE1
L3RnbDogQWRkIERDM0NPIGNvdW50ZXIgaW4gaTkxNV9kbWNfaW5mbwoKIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgICAgICB8ICA5MyArKysrKysrKysrLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgICAxICsKIC4uLi9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyAgICB8IDE1NCArKysrKysrKysrKysr
KysrLS0KIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuaCAgICB8ICAg
MyArCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAgIDEg
KwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyAgICAgIHwgMTE0ICsr
KysrKysrKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jICAgICAgICAg
ICB8ICAgNyArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICAg
fCAgIDQgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuYyAgICAgICAgICAgIHwg
ICAzICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICAgfCAg
MTAgKysKIDEwIGZpbGVzIGNoYW5nZWQsIDM3MSBpbnNlcnRpb25zKCspLCAxOSBkZWxldGlvbnMo
LSkKCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
