Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C65C8E7E
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 18:35:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79FDB6E88B;
	Wed,  2 Oct 2019 16:35:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 441636E88B
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 16:35:55 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 09:35:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,249,1566889200"; d="scan'208";a="194929233"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.11.83])
 by orsmga003.jf.intel.com with ESMTP; 02 Oct 2019 09:35:54 -0700
Date: Wed, 2 Oct 2019 09:35:53 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20191002163553.44hb5mttc6gqhhzf@ldmartin-desk1>
References: <20191002162505.30716-1-ville.syrjala@linux.intel.com>
 <20191002162505.30716-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002162505.30716-4-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915: Allow ICL+ DSI on any pipe
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBPY3QgMDIsIDIwMTkgYXQgMDc6MjU6MDNQTSArMDMwMCwgVmlsbGUgU3lyasOkbMOk
IHdyb3RlOgo+RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KPgo+VGhlcmUgYXJlIG5vIGxvbmdlciBhbnkgcGlwZTwtPkRTSSBwb3J0IGxpbWl0YXRp
b25zIG9uIGljbCsuCj5Qb3B1bGF0ZSB0aGUgcGlwZV9tYXNrIGFjY29yZGluZ2x5Lgo+Cj5DYzog
Sm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj5DYzogTHVjYXMg
RGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj5TaWduZWQtb2ZmLWJ5OiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+LS0tCj4gZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMgfCA0ICsrKy0KPiAxIGZpbGUgY2hhbmdl
ZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4KPmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaWNsX2RzaS5jCj5pbmRleCA0Y2VhOGVkMmJkMzEuLjk5YTc1YzYxMTM4NyAxMDA2NDQK
Pi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jCj4rKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYwo+QEAgLTE1NTIsNiArMTU1Miw3IEBA
IHZvaWQgaWNsX2RzaV9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAJ
c3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvcjsKPiAJc3RydWN0IGRybV9kaXNwbGF5X21v
ZGUgKmZpeGVkX21vZGU7Cj4gCWVudW0gcG9ydCBwb3J0Owo+KwllbnVtIHBpcGUgcGlwZTsKPgo+
IAlpZiAoIWludGVsX2Jpb3NfaXNfZHNpX3ByZXNlbnQoZGV2X3ByaXYsICZwb3J0KSkKPiAJCXJl
dHVybjsKPkBAIC0xNTg0LDcgKzE1ODUsOCBAQCB2b2lkIGljbF9kc2lfaW5pdChzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gCWVuY29kZXItPmdldF9od19zdGF0ZSA9IGdlbjEx
X2RzaV9nZXRfaHdfc3RhdGU7Cj4gCWVuY29kZXItPnR5cGUgPSBJTlRFTF9PVVRQVVRfRFNJOwo+
IAllbmNvZGVyLT5jbG9uZWFibGUgPSAwOwo+LQllbmNvZGVyLT5waXBlX21hc2sgPSBCSVQoUElQ
RV9BKSB8IEJJVChQSVBFX0IpIHwgQklUKFBJUEVfQyk7Cj4rCWZvcl9lYWNoX3BpcGUoZGV2X3By
aXYsIHBpcGUpCj4rCQllbmNvZGVyLT5waXBlX21hc2sgfD0gQklUKHBpcGUpOwoKUmV2aWV3ZWQt
Ynk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgoKCkx1Y2FzIERl
IE1hcmNoaQoKCj4gCWVuY29kZXItPnBvd2VyX2RvbWFpbiA9IFBPV0VSX0RPTUFJTl9QT1JUX0RT
STsKPiAJZW5jb2Rlci0+Z2V0X3Bvd2VyX2RvbWFpbnMgPSBnZW4xMV9kc2lfZ2V0X3Bvd2VyX2Rv
bWFpbnM7Cj4KPi0tIAo+Mi4yMS4wCj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
