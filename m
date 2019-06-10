Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F373BD15
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 21:48:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAD008914E;
	Mon, 10 Jun 2019 19:48:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D2DA8914E
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 19:48:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jun 2019 12:48:22 -0700
X-ExtLoop1: 1
Received: from bschneid-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.34.126])
 by fmsmga001.fm.intel.com with ESMTP; 10 Jun 2019 12:48:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20190610194515.7030-2-jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190610194515.7030-1-jani.nikula@intel.com>
 <20190610194515.7030-2-jani.nikula@intel.com>
Date: Mon, 10 Jun 2019 22:49:05 +0300
Message-ID: <87o935mdam.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [REBASED PATCH 2/2] drm/i915: Add intel_dsi
 properties support for icl
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

ClRoaXMgaXMgYWxzbyBieSBWYW5kaXRhLCBJIHNjcmV3ZWQgdXAgdGhlIGF1dGhvcnNoaXAgd2hp
bGUgcmViYXNpbmcgdGhlCnBhdGNoZXMuIEknbGwgZml4IHdoaWxlIGFwcGx5aW5nLgoKQlIsCkph
bmkuCgoKT24gTW9uLCAxMCBKdW4gMjAxOSwgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVs
LmNvbT4gd3JvdGU6Cj4gU3VwcG9ydCBkc2kgcHJvcGVydGllcyBvbiBpY2wKPgo+IEJ1Z3ppbGxh
OiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA2OTMKPiBT
aWduZWQtb2ZmLWJ5OiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNv
bT4KPiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+
IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pY2xfZHNpLmMgfCA0ICsrKysKPiAgMSBmaWxl
IGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ljbF9kc2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ljbF9kc2kuYwo+IGluZGV4
IDc0NDQ4ZTZiZjc0OS4uZTM1OTJkYjJjMWM0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ljbF9kc2kuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ljbF9kc2kuYwo+
IEBAIC0xNTc5LDcgKzE1NzksMTEgQEAgdm9pZCBpY2xfZHNpX2luaXQoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2KQo+ICAJCWdvdG8gZXJyOwo+ICAJfQo+ICAKPiArCj4gIAlpY2xf
ZHBoeV9wYXJhbV9pbml0KGludGVsX2RzaSk7Cj4gKwo+ICsJaW50ZWxfZHNpX2FkZF9wcm9wZXJ0
aWVzKGludGVsX2Nvbm5lY3Rvcik7Cj4gKwo+ICAJcmV0dXJuOwo+ICAKPiAgZXJyOgoKLS0gCkph
bmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
