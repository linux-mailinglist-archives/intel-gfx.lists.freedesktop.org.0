Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83CF99C99A
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 08:44:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0214789EB7;
	Mon, 26 Aug 2019 06:44:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C56989EB7
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 06:44:51 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Aug 2019 23:44:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,431,1559545200"; d="scan'208";a="209255889"
Received: from genxfsim-desktop.iind.intel.com (HELO intel.com)
 ([10.223.74.120])
 by fmsmga002.fm.intel.com with ESMTP; 25 Aug 2019 23:44:49 -0700
Date: Mon, 26 Aug 2019 12:11:38 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190826064137.GD30506@intel.com>
References: <20190823082055.5992-1-lucas.demarchi@intel.com>
 <20190823082055.5992-6-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190823082055.5992-6-lucas.demarchi@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v3 05/23] drm/i915: Guard and warn if more
 than one eDP panel is present
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
Cc: intel-gfx@lists.freedesktop.org,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAxOS0wOC0yMyBhdCAwMToyMDozNyAtMDcwMCwgTHVjYXMgRGUgTWFyY2hpIHdyb3RlOgo+
IEZyb206IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+IAo+
IE5vdyB0aGF0IGlzIGFsbG93ZWQgdG8gaGF2ZSBQU1IgZW5hYmxlZCBpbiBhbnkgcG9ydCBmcm9t
IEJEVyssIGxldHMKPiBndWFyZCBpbnRlbF9wc3JfaW5pdF9kcGNkKCkgYWdhaW5zdCBtdWx0aXBs
ZSBlRFAgcGFuZWxzIGFuZCB3YXJuIGFib3V0Cj4gaXQuCj4gCj4gRm9yIG5vdyB3ZSB3aWxsIGtl
ZXAganVzdCBvbmUgaW5zdGFuY2Ugb2YgUFNSLgpMb29rcyBnb29kIHRvIG1lLgo+IAo+IENjOiBE
aGluYWthcmFuIFBhbmRpeWFuIDxkaGluYWthcmFuLnBhbmRpeWFuQGludGVsLmNvbT4KPiBDYzog
Um9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEpv
c8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYt
Ynk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpSZXZpZXdlZC1i
eTogQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4KPiAtLS0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDYgKysrKystCj4gIDEgZmls
ZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiBpbmRleCAwMTcyYjgyODU4ZDkuLmNmMDdh
YjNkOTI4MCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+
IEBAIC0yNDksNiArMjQ5LDExIEBAIHZvaWQgaW50ZWxfcHNyX2luaXRfZHBjZChzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwKQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0K
PiAgCQl0b19pOTE1KGRwX3RvX2RpZ19wb3J0KGludGVsX2RwKS0+YmFzZS5iYXNlLmRldik7Cj4g
IAo+ICsJaWYgKGRldl9wcml2LT5wc3IuZHApIHsKPiArCQlEUk1fV0FSTigiTW9yZSB0aGFuIG9u
ZSBlRFAgcGFuZWwgZm91bmQsIFBTUiBzdXBwb3J0IHNob3VsZCBiZSBleHRlbmRcbiIpOwo+ICsJ
CXJldHVybjsKPiArCX0KPiArCj4gIAlkcm1fZHBfZHBjZF9yZWFkKCZpbnRlbF9kcC0+YXV4LCBE
UF9QU1JfU1VQUE9SVCwgaW50ZWxfZHAtPnBzcl9kcGNkLAo+ICAJCQkgc2l6ZW9mKGludGVsX2Rw
LT5wc3JfZHBjZCkpOwo+ICAKPiBAQCAtMjcxLDcgKzI3Niw2IEBAIHZvaWQgaW50ZWxfcHNyX2lu
aXRfZHBjZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQo+ICAJZGV2X3ByaXYtPnBzci5zaW5r
X3N5bmNfbGF0ZW5jeSA9Cj4gIAkJaW50ZWxfZHBfZ2V0X3Npbmtfc3luY19sYXRlbmN5KGludGVs
X2RwKTsKPiAgCj4gLQlXQVJOX09OKGRldl9wcml2LT5wc3IuZHApOwo+ICAJZGV2X3ByaXYtPnBz
ci5kcCA9IGludGVsX2RwOwo+ICAKPiAgCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDkgJiYK
PiAtLSAKPiAyLjIzLjAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
