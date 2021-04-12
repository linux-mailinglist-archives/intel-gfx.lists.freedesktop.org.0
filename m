Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C162335BF96
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Apr 2021 11:10:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EF386E2ED;
	Mon, 12 Apr 2021 09:09:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 822B86E2ED;
 Mon, 12 Apr 2021 09:09:44 +0000 (UTC)
IronPort-SDR: SPDvyJJS8cgvLD4QSehlc0VwhyquhYZWpp817FQB/fq/vIbBMPrfZ7YG8amIJOexaV65YR+t2B
 5sligoYiv3kg==
X-IronPort-AV: E=McAfee;i="6000,8403,9951"; a="193709753"
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; d="scan'208";a="193709753"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2021 02:09:44 -0700
IronPort-SDR: yPcAYIIchguSNbPO4TosII0vIxrcsH1/JwaB9OeTyw3Im5377TfmAlq0oVMmwZeXDpjOhSMxPg
 nd/zKxkErPYg==
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; d="scan'208";a="423712777"
Received: from tarynrox-mobl1.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.5.30])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2021 02:09:42 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Apr 2021 10:05:22 +0100
Message-Id: <20210412090526.30547-16-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210412090526.30547-1-matthew.auld@intel.com>
References: <20210412090526.30547-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 15/19] drm/i915: WA for zero memory channel
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpDb21t
aXQgYzQ1N2Q5Y2YyNTZlICgiZHJtL2k5MTU6IE1ha2Ugc3VyZSB3ZSBoYXZlIGVub3VnaCBtZW1v
cnkKYmFuZHdpZHRoIG9uIElDTCIpIGFzc3VtZXMgdGhhdCB3ZSBhbHdheXMgaGF2ZSBhIG5vbi16
ZXJvCmRyYW1faW5mby0+Y2hhbm5lbHMgYW5kIHVzZXMgaXQgYXMgYSBkaXZpc29yLiBXZSBuZWVk
IG51bSBtZW1vcnkKY2hhbm5lbHMgdG8gYmUgYXQgbGVhc3QgMSBmb3Igc2FuZSBidyBsaW1pdHMg
Y2hlY2tpbmcsIGV2ZW4gd2hlbiBQQ29kZQpyZXR1cm5zIDAsIHNvIGxldHMgZm9yY2UgaXQgdG8g
MSBpbiB0aGlzIGNhc2UuCgpDYzogU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292
c2tpeUBpbnRlbC5jb20+CkNjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+
CkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpTaWdu
ZWQtb2ZmLWJ5OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9A
aW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hp
QGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMg
fCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYncuYwppbmRleCA1ODRhYjVjZTQxMDYuLmM1ZjcwZjNlOTMwZSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYwpAQCAtMTc1LDYgKzE3NSw3IEBA
IHN0YXRpYyBpbnQgaWNsX2dldF9id19pbmZvKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiwgY29uc3Qgc3RydWN0IGludGVsCiAJCQkgICAgIkZhaWxlZCB0byBnZXQgbWVtb3J5IHN1
YnN5c3RlbSBpbmZvcm1hdGlvbiwgaWdub3JpbmcgYmFuZHdpZHRoIGxpbWl0cyIpOwogCQlyZXR1
cm4gcmV0OwogCX0KKwludW1fY2hhbm5lbHMgPSBtYXhfdCh1OCwgMSwgbnVtX2NoYW5uZWxzKTsK
IAogCWRlaW50ZXJsZWF2ZSA9IERJVl9ST1VORF9VUChudW1fY2hhbm5lbHMsIGlzX3lfdGlsZSA/
IDQgOiAyKTsKIAlkY2xrX21heCA9IGljbF9zYWd2X21heF9kY2xrKCZxaSk7Ci0tIAoyLjI2LjMK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
