Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD36F64CD5
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 21:34:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 519406E126;
	Wed, 10 Jul 2019 19:34:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 991716E126
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 19:34:10 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 12:34:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,475,1557212400"; d="scan'208";a="176939092"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga002.jf.intel.com with ESMTP; 10 Jul 2019 12:34:09 -0700
Date: Wed, 10 Jul 2019 12:36:29 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20190710193629.GE24720@intel.com>
References: <20190709214735.16907-1-manasi.d.navare@intel.com>
 <20190709214735.16907-2-manasi.d.navare@intel.com>
 <20190710191838.GN5942@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190710191838.GN5942@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display/tgl: Bump up the
 plane/fb height to support 8K
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

T24gV2VkLCBKdWwgMTAsIDIwMTkgYXQgMTA6MTg6MzhQTSArMDMwMCwgVmlsbGUgU3lyasOkbMOk
IHdyb3RlOgo+IE9uIFR1ZSwgSnVsIDA5LCAyMDE5IGF0IDAyOjQ3OjM1UE0gLTA3MDAsIE1hbmFz
aSBOYXZhcmUgd3JvdGU6Cj4gPiBPbiBUR0wrLCB0aGUgcGxhbmUgaGVpZ2h0IGZvciA4SyBwbGFu
ZXMgY2FuIGJlIDQzMjAsIHNvIGJ1bXAgaXQgdXAKPiA+IFRvIHN1cHBvcnQgNDMyMCwgd2UgbmVl
ZCB0byBpbmNyZWFzZSB0aGUgbnVtYmVyIG9mIGJpdHMgdXNlZCB0bwo+ID4gcmVhZCBwbGFuZV9o
ZWlnaHQgdG8gMTMgYXMgb3Bwb3NlZCB0byBvbGRlciAxMiBiaXRzLgo+ID4gCj4gPiBDYzogTWFh
cnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiA+IENj
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+ID4gU2ln
bmVkLW9mZi1ieTogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KPiA+
IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwg
MjEgKysrKysrKysrKysrKysrKysrLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9u
cygrKSwgMiBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMKPiA+IGluZGV4IDBkNWM4YWYwMWY1NC4uYmU5YTU0Y2I1ZWNj
IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jCj4gPiBAQCAtMzM0Myw2ICszMzQzLDE2IEBAIHN0YXRpYyBpbnQgaWNsX21heF9wbGFuZV93
aWR0aChjb25zdCBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiwKPiA+ICAJcmV0dXJuIDUxMjA7
Cj4gPiAgfQo+ID4gIAo+ID4gK3N0YXRpYyBpbnQgc2tsX21heF9wbGFuZV9oZWlnaHQodm9pZCkK
PiA+ICt7Cj4gPiArCXJldHVybiA0MDk2Owo+ID4gK30KPiA+ICsKPiA+ICtzdGF0aWMgaW50IHRn
bF9tYXhfcGxhbmVfaGVpZ2h0KHZvaWQpCj4gPiArewo+ID4gKwlyZXR1cm4gNDMyMDsKClllcyBp
Y2wgZG9lcyBidXQgd2Ugc3RhcnQgc3VwcG9ydGluZyA4SyBmcm9tIHRnbCwgc2hvdWxkIHRoaXMg
YmUgY2hhbmdlZCB0byBpY2xfbWF4X3BsYW5lX2hlaWdodCgpCmFuZCByZXR1cm4gNDMyMD8KCk1h
bmFzaQoKPiAKPiBpY2wgaGFzIHRoaXMgbGltaXQgYWxyZWFkeS4KPiAKPiA+ICt9Cj4gPiArCj4g
PiAgc3RhdGljIGJvb2wgc2tsX2NoZWNrX21haW5fY2NzX2Nvb3JkaW5hdGVzKHN0cnVjdCBpbnRl
bF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUsCj4gPiAgCQkJCQkgICBpbnQgbWFpbl94LCBpbnQg
bWFpbl95LCB1MzIgbWFpbl9vZmZzZXQpCj4gPiAgewo+ID4gQEAgLTMzOTEsOSArMzQwMSwxMyBA
QCBzdGF0aWMgaW50IHNrbF9jaGVja19tYWluX3N1cmZhY2Uoc3RydWN0IGludGVsX3BsYW5lX3N0
YXRlICpwbGFuZV9zdGF0ZSkKPiA+ICAJaW50IHcgPSBkcm1fcmVjdF93aWR0aCgmcGxhbmVfc3Rh
dGUtPmJhc2Uuc3JjKSA+PiAxNjsKPiA+ICAJaW50IGggPSBkcm1fcmVjdF9oZWlnaHQoJnBsYW5l
X3N0YXRlLT5iYXNlLnNyYykgPj4gMTY7Cj4gPiAgCWludCBtYXhfd2lkdGg7Cj4gPiAtCWludCBt
YXhfaGVpZ2h0ID0gNDA5NjsKPiA+ICsJaW50IG1heF9oZWlnaHQ7Cj4gPiAgCXUzMiBhbGlnbm1l
bnQsIG9mZnNldCwgYXV4X29mZnNldCA9IHBsYW5lX3N0YXRlLT5jb2xvcl9wbGFuZVsxXS5vZmZz
ZXQ7Cj4gPiAgCj4gPiArCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKQo+ID4gKwkJbWF4
X2hlaWdodCA9IHRnbF9tYXhfcGxhbmVfaGVpZ2h0KCk7Cj4gPiArCWVsc2UKPiA+ICsJCW1heF9o
ZWlnaHQgPSBza2xfbWF4X3BsYW5lX2hlaWdodCgpOwo+ID4gIAlpZiAoSU5URUxfR0VOKGRldl9w
cml2KSA+PSAxMSkKPiA+ICAJCW1heF93aWR0aCA9IGljbF9tYXhfcGxhbmVfd2lkdGgoZmIsIDAs
IHJvdGF0aW9uKTsKPiA+ICAJZWxzZSBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMCB8fCBJ
U19HRU1JTklMQUtFKGRldl9wcml2KSkKPiA+IEBAIC05ODY1LDcgKzk4NzksMTAgQEAgc2t5bGFr
ZV9nZXRfaW5pdGlhbF9wbGFuZV9jb25maWcoc3RydWN0IGludGVsX2NydGMgKmNydGMsCj4gPiAg
CW9mZnNldCA9IEk5MTVfUkVBRChQTEFORV9PRkZTRVQocGlwZSwgcGxhbmVfaWQpKTsKPiA+ICAK
PiA+ICAJdmFsID0gSTkxNV9SRUFEKFBMQU5FX1NJWkUocGlwZSwgcGxhbmVfaWQpKTsKPiA+IC0J
ZmItPmhlaWdodCA9ICgodmFsID4+IDE2KSAmIDB4ZmZmKSArIDE7Cj4gPiArCWlmIChJTlRFTF9H
RU4oZGV2X3ByaXYpID49IDEyKQo+ID4gKwkJZmItPmhlaWdodCA9ICgodmFsID4+IDE2KSAmIDB4
MWZmZikgKyAxOwo+ID4gKwllbHNlCj4gPiArCQlmYi0+aGVpZ2h0ID0gKCh2YWwgPj4gMTYpICYg
MHhmZmYpICsgMTsKPiA+ICAJZmItPndpZHRoID0gKCh2YWwgPj4gMCkgJiAweDFmZmYpICsgMTsK
PiA+ICAKPiA+ICAJdmFsID0gSTkxNV9SRUFEKFBMQU5FX1NUUklERShwaXBlLCBwbGFuZV9pZCkp
Owo+ID4gLS0gCj4gPiAyLjE5LjEKPiAKPiAtLSAKPiBWaWxsZSBTeXJqw6Rsw6QKPiBJbnRlbApf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
