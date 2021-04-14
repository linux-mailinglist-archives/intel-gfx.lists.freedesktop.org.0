Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F5835F837
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 17:52:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D18936E95E;
	Wed, 14 Apr 2021 15:52:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AA9C6E95B
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 15:52:27 +0000 (UTC)
IronPort-SDR: pLgOYlFmCVJ+yH8eIpS5ZM6V1O8qjjnl++i2jCkwYHyCjPpKGBpBTIuFhxdJv7J1UeLxuiRRm3
 XGEpTuENr7vQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9954"; a="181791677"
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="181791677"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 08:52:27 -0700
IronPort-SDR: /CgX7/hrntzGoG4kOQHzz6Amy3Er5qlLBiaxcWfR31cG+REb8qRQ9DMXe3kCcloAqQgRFV9LY7
 JsK55Ziib/tw==
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="399226622"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 08:52:25 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Apr 2021 18:52:05 +0300
Message-Id: <20210414155208.3161335-9-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210414155208.3161335-1-imre.deak@intel.com>
References: <20210414155208.3161335-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/11] drm/i915/adl_p: Add stride restriction
 when using DPT
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpBbGRl
cmxha2UtUCBoYXZlIGEgbmV3IHN0cmlkZSByZXN0cmljdGlvbiB3aGVuIHVzaW5nIERQVCBhbmQg
aXQgaXMgdXNlZApieSBub24gbGluZWFyIGZyYW1lYnVmZmVycy4gU3RyaWRlIG5lZWRzIHRvIGJl
IGEgcG93ZXIgb2YgdHdvIHRvIHRha2UKZnVsbCBEUFQgcm93cywgYnV0IHN0cmlkZSBpcyBhIHBh
cmFtZXRlciBzZXQgYnkgdXNlcnNwYWNlLgoKV2hhdCB3ZSBjb3VsZCBkbyBpcyB1c2UgYSBmYWtl
IHN0cmlkZSB3aGVuIGRvaW5nIERQVCBhbGxvY2F0aW9uIHNvCkhXIHJlcXVpcmVtZW50cyBhcmUg
bWV0IGFuZCB1c2Vyc3BhY2UgZG9uJ3QgbmVlZCB0byBiZSBjaGFuZ2VkIHRvCm1ldCB0aGlzIHBv
d2VyIG9mIHR3byByZXN0cmljdGlvbnMgYnV0IHRoaXMgY2hhbmdlIHdpbGwgdGFrZSBhIHdoaWxl
CnRvIGJlIGltcGxlbWVudGVkIHNvIGZvciBub3cgYWRkaW5nIHRoaXMgcmVzdHJpY3Rpb24gaW4g
ZHJpdmVyIHRvCnJlamVjdCBhdG9taWMgY29tbWl0cyB0aGF0IHdvdWxkIGNhdXNlIHZpc3VhbCBj
b3JydXB0aW9ucy4KCkJTcGVjOiA1MzM5MwpBY2tlZC1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5k
LnJvcGVyQGludGVsLmNvbT4KQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5j
b20+CkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpD
YzogU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+ClNp
Z25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgOSAr
KysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IGNlNjg1YTdiYTZhMWQuLjJl
YmExMzg5OGZiZWEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jCkBAIC0xMTU1OCw2ICsxMTU1OCwxNSBAQCBzdGF0aWMgaW50IGludGVsX2ZyYW1lYnVm
ZmVyX2luaXQoc3RydWN0IGludGVsX2ZyYW1lYnVmZmVyICppbnRlbF9mYiwKIAkJCX0KIAkJfQog
CisJCWlmIChJU19BTERFUkxBS0VfUChkZXZfcHJpdikgJiYKKwkJICAgIG1vZGVfY21kLT5tb2Rp
ZmllcltpXSAhPSBEUk1fRk9STUFUX01PRF9MSU5FQVIgJiYKKwkJICAgICFpc19wb3dlcl9vZl8y
KG1vZGVfY21kLT5waXRjaGVzW2ldKSkgeworCQkJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0s
CisJCQkJICAgICJwbGFuZSAlZCBwaXRjaCAoJWQpIG11c3QgYmUgcG93ZXIgb2YgdHdvIGZvciB0
aWxlZCBidWZmZXJzXG4iLAorCQkJCSAgICBpLCBtb2RlX2NtZC0+cGl0Y2hlc1tpXSk7CisJCQln
b3RvIGVycjsKKwkJfQorCiAJCWZiLT5vYmpbaV0gPSAmb2JqLT5iYXNlOwogCX0KIAotLSAKMi4y
Ny4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
