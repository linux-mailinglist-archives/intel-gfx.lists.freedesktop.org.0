Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 420CEEEFF0
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2019 23:24:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E48936E8A7;
	Mon,  4 Nov 2019 22:24:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A51A66E8A7
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Nov 2019 22:24:33 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Nov 2019 14:24:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,268,1569308400"; d="scan'208";a="195609809"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga008.jf.intel.com with ESMTP; 04 Nov 2019 14:24:32 -0800
Date: Mon, 4 Nov 2019 14:27:15 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20191104222714.GD32264@intel.com>
References: <20191104141439.26312-1-jani.nikula@intel.com>
 <20191104141439.26312-4-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104141439.26312-4-jani.nikula@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915/dsc: rename functions for
 consistency
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBOb3YgMDQsIDIwMTkgYXQgMDQ6MTQ6MzlQTSArMDIwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gVXNlIGludGVsX2RzY18gcHJlZml4LiBObyBmdW5jdGlvbmFsIGNoYW5nZXMuCj4gCj4g
Q2M6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9m
Zi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMgfCAxMiArKysrKystLS0tLS0KPiAg
MSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKPiAKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYwo+IGluZGV4IGFjMTA3MzZhMDc2
YS4uYjIzYmE4ZDEwOGRiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfdmRzYy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF92ZHNjLmMKPiBAQCAtNTAxLDggKzUwMSw4IEBAIGludGVsX2RzY19wb3dlcl9kb21haW4oY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCj4gIAkJcmV0dXJuIFBPV0VS
X0RPTUFJTl9UUkFOU0NPREVSKGNwdV90cmFuc2NvZGVyKTsKPiAgfQo+ICAKPiAtc3RhdGljIHZv
aWQgaW50ZWxfY29uZmlndXJlX3Bwc19mb3JfZHNjX2VuY29kZXIoc3RydWN0IGludGVsX2VuY29k
ZXIgKmVuY29kZXIsCj4gLQkJCQkJCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
X3N0YXRlKQo+ICtzdGF0aWMgdm9pZCBpbnRlbF9kc2NfcHBzX2NvbmZpZ3VyZShzdHJ1Y3QgaW50
ZWxfZW5jb2RlciAqZW5jb2RlciwKPiArCQkJCSAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqY3J0Y19zdGF0ZSkKPiAgewo+ICAJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19p
bnRlbF9jcnRjKGNydGNfc3RhdGUtPnVhcGkuY3J0Yyk7Cj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsKPiBAQCAtOTAxLDgg
KzkwMSw4IEBAIHN0YXRpYyB2b2lkIGludGVsX2NvbmZpZ3VyZV9wcHNfZm9yX2RzY19lbmNvZGVy
KHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+ICAJfQo+ICB9Cj4gIAo+IC1zdGF0aWMg
dm9pZCBpbnRlbF9kcF93cml0ZV9kc2NfcHBzX3NkcChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5j
b2RlciwKPiAtCQkJCSAgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSkKPiArc3RhdGljIHZvaWQgaW50ZWxfZHNjX2RwX3Bwc193cml0ZShzdHJ1Y3QgaW50ZWxf
ZW5jb2RlciAqZW5jb2RlciwKPiArCQkJCSAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlKQoKVGhpcyBmdW5jdGlvbiB3cml0ZXMgcHBzIGhlYWRlciBhbmQgcGFja3Mg
cHBzIHBheWxvYWQsIGlmIHRoYXQgYWxzbyBhcHBsaWVzIHRvIGRzaSBkc2MKdGhlbiB3ZSBjYW4g
Z2V0IHJpZCBvZiB0aGUgX2RwIGluIHRoaXMgZnVuY3Rpb24uCgppZiBpdCBkb2VzbnQgYXBwbHks
IHRoZSByZW5hbWUgbG9va3MgZ29vZCB0byBtZSBhbmQgaW4gdGhhdCBjYXNlOgoKUmV2aWV3ZWQt
Ynk6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+CgpNYW5hc2kKCj4g
IHsKPiAgCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBlbmNfdG9faW50ZWxfZHAoJmVuY29k
ZXItPmJhc2UpOwo+ICAJc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQg
PSBkcF90b19kaWdfcG9ydChpbnRlbF9kcCk7Cj4gQEAgLTkzNyw5ICs5MzcsOSBAQCB2b2lkIGlu
dGVsX2RzY19lbmFibGUoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4gIAlpbnRlbF9k
aXNwbGF5X3Bvd2VyX2dldChkZXZfcHJpdiwKPiAgCQkJCWludGVsX2RzY19wb3dlcl9kb21haW4o
Y3J0Y19zdGF0ZSkpOwo+ICAKPiAtCWludGVsX2NvbmZpZ3VyZV9wcHNfZm9yX2RzY19lbmNvZGVy
KGVuY29kZXIsIGNydGNfc3RhdGUpOwo+ICsJaW50ZWxfZHNjX3Bwc19jb25maWd1cmUoZW5jb2Rl
ciwgY3J0Y19zdGF0ZSk7Cj4gIAo+IC0JaW50ZWxfZHBfd3JpdGVfZHNjX3Bwc19zZHAoZW5jb2Rl
ciwgY3J0Y19zdGF0ZSk7Cj4gKwlpbnRlbF9kc2NfZHBfcHBzX3dyaXRlKGVuY29kZXIsIGNydGNf
c3RhdGUpOwo+ICAKPiAgCWlmIChjcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2RlciA9PSBUUkFOU0NP
REVSX0VEUCkgewo+ICAJCWRzc19jdGwxX3JlZyA9IERTU19DVEwxOwo+IC0tIAo+IDIuMjAuMQo+
IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
