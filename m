Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7DF764CCE
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 21:30:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E92786E126;
	Wed, 10 Jul 2019 19:30:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5A316E126
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 19:30:13 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 12:30:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,475,1557212400"; d="scan'208";a="166168903"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 10 Jul 2019 12:30:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 10 Jul 2019 22:30:09 +0300
Date: Wed, 10 Jul 2019 22:30:09 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20190710193009.GO5942@intel.com>
References: <20190709214735.16907-1-manasi.d.navare@intel.com>
 <20190710000613.18866-1-manasi.d.navare@intel.com>
 <20190710191505.GM5942@intel.com>
 <20190710192414.GD24720@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190710192414.GD24720@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display/tgl: Bump up the mode
 vertical limits to support 8K
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

T24gV2VkLCBKdWwgMTAsIDIwMTkgYXQgMTI6MjQ6MTVQTSAtMDcwMCwgTWFuYXNpIE5hdmFyZSB3
cm90ZToKPiBPbiBXZWQsIEp1bCAxMCwgMjAxOSBhdCAxMDoxNTowNVBNICswMzAwLCBWaWxsZSBT
eXJqw6Rsw6Qgd3JvdGU6Cj4gPiBPbiBUdWUsIEp1bCAwOSwgMjAxOSBhdCAwNTowNjoxM1BNIC0w
NzAwLCBNYW5hc2kgTmF2YXJlIHdyb3RlOgo+ID4gPiBPbiBUR0wrIHdlIHN1cHBvcnQgOEsgZGlz
cGxheSByZXNvbHV0aW9uLCBoZW5jZSBidW1wIHVwIHRoZSB2ZXJ0aWNhbAo+ID4gPiBhY3RpdmUg
bGltaXRzIHRvIDQzMjAgaW4gaW50ZWxfbW9kZV92YWxpZCgpCj4gPiA+IAo+ID4gPiB2MjoKPiA+
ID4gKiBDaGVja3BhdGNoIHdhcm5pbmcgKE1hbmFzaSkKPiA+ID4gCj4gPiA+IENjOiBNYWFydGVu
IExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+ID4gPiBDYzog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiA+ID4gU2ln
bmVkLW9mZi1ieTogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KPiA+
ID4gLS0tCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YyB8IDkgKysrKysrKy0tCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMKPiA+ID4gaW5kZXggZjA3MDgxODE1YjgwLi5jZmNlYjI3ZTRiOWUg
MTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jCj4gPiA+IEBAIC0xNTc2NCw4ICsxNTc2NCwxMyBAQCBpbnRlbF9tb2RlX3ZhbGlkKHN0
cnVjdCBkcm1fZGV2aWNlICpkZXYsCj4gPiA+ICAJCQkgICBEUk1fTU9ERV9GTEFHX0NMS0RJVjIp
KQo+ID4gPiAgCQlyZXR1cm4gTU9ERV9CQUQ7Cj4gPiA+ICAKPiA+ID4gLQlpZiAoSU5URUxfR0VO
KGRldl9wcml2KSA+PSA5IHx8Cj4gPiA+IC0JICAgIElTX0JST0FEV0VMTChkZXZfcHJpdikgfHwg
SVNfSEFTV0VMTChkZXZfcHJpdikpIHsKPiA+ID4gKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+
PSAxMikgewo+ID4gPiArCQloZGlzcGxheV9tYXggPSA4MTkyOwo+ID4gPiArCQl2ZGlzcGxheV9t
YXggPSA0MzIwOwo+ID4gPiArCQlodG90YWxfbWF4ID0gODE5MjsKPiA+ID4gKwkJdnRvdGFsX21h
eCA9IDgxOTI7Cj4gPiAKPiA+IEkgd29uZGVyIGlmIHdlIGNhbiBzYWZlbHkgYnVtcCB0aGVzZSBi
ZWZvcmUgd2UgZ2V0IHRoZSBqb2luZXIgc3R1ZmYgc29ydGVkLgo+ID4gSG1tLiBJIGd1ZXNzIGl0
IHNob3VsZCBiZSBmaW5lIGFzIHRoZSBsaW1pdCB0aGF0IGlzIHN1cHBvc2VkIHRvIG92ZXJjb21l
Cj4gPiBpcyBjYXVzZWQgYnkgdGhlIGNkY2xrIG1heCBmcmVxdWVuY3kgYmVpbmcgdG9vIGxvdyB0
byBhbGxvdyBhIHNpbmdsZQo+ID4gcGlwZSB0byBwdXNoIGVub3VnaCBwaXhlbHMuIEFuZCBzaW5j
ZSB3ZSBjaGVjayB0aGF0IGluIC5tb2RlX3ZhbGlkKCkgd2UKPiA+IHNob3VsZG4ndCBhY2NpZGVu
dGFsbHkgc3RhcnQgdG8gYWR2ZXJ0aXplIHN1cHBvcnQgZm9yIG1vZGVzIHdlIGNhbid0IGRvLgo+
IAo+IFllcyB0aGUgaW50ZWxfZHBfbW9kZV92YWxpZCgpIHdpbGwgc3RpbGwgcmVqZWN0IHRoZSBt
b2RlcyB1bnRpbCB3ZSBoYXZlIHRoZSBzdXBwb3J0Cj4gZm9yIGJpZyBqb2luZXIsIHNvIGFsbG93
aW5nIHRoZXNlIGxpbWl0cyBzaG91bGQgYmUgZmluZSBoZXJlLgo+IAo+IFNhbWUgZm9yIHRoZSBw
bGFuZSBzaXplIGxpbWl0cy4gUGxhbmUgc2l6ZSBsaW1pdHMgYnVtcGluZyB1cCBpcyBhbHNvCj4g
bmVlZGVkIGluIGNhc2Ugb2YgdGlsZWQgOEsgZGlzcGxheSB3aXRoIHRyYW5zY2RvZXIgcG9ydCBz
eW5jCj4gCj4gPiAKPiA+IFdoaWNoIG1lYW5zIHRoZXNlIGxpbWl0cyBzaG91bGQgYWN0dWFsbHkg
YmUgaGlnaGVyIHRoYW4gdGhpcy4gMTZrIGZvcgo+ID4gaHRvdGFsK2hkaXNwbGF5IGFuZCA4ayBm
b3IgdnRvdGFsK3ZkaXNwbGF5IGFscmVhZHkgb24gaWNsIEkgYmVsaWV2ZS4KPiAKPiBXaGVyZSBk
byB3ZSBzZXQgaHRvdGFsK2hkaXNwbGF5PyBBbmQgSSBhZGRlZCB0aGlzIGZvciB0Z2wsIHNpbmNl
IHdlIHdvdWxkIGJlCj4gc3VwcG9ydGluZyB0aGUgOEsgcmVzIG9ubHkgb24gdGdsIG9ud2FyZHMs
IGNvcnJlY3Q/CgpXZSBjYW4gZG8gOGsgb24gZWFybGllciBwbGF0Zm9ybXMgdG9vLCBhc3N1bWlu
ZyB0aGUgY2xvY2sgaXMgbG93IGVub3VnaC4KQWxzbyBpY2wgYWxyZWFkeSBjYW4gZG8gdGhlIGpv
aW5pbmcgc3R1ZmYgbm8/CgpBbnd5YXlzIHRoZXNlIG51bWJlciBhcmUganVzdCB0aGUgc3RyYWln
aHQgdXAgdHJhbnNjb2RlciBtYXggdGltaW5ncwpmcm9tIHRoZSBzcGVjLCBhbmQgdGhhdCdzIHdo
YXQgSSB0aGluayB0aGV5IHNob3VsZCBzdGF5LiBJZiB3ZSBuZWVkIHRvCmltcG9zZSBzb21lIG90
aGVyIGFyYml0cmFyeSBsaW1pdHMgZm9yIG90aGVyIHJlYXNvbnMgd2Ugc2hvdWxkIGRvIHRoYXQK
c2VwYXJhdGVseS4KCkhtbS4gSSBndWVzcyBwbGFuZXMgaXMgdGhlIG90aGVyIHRoaW5nIHRoYXQn
cyBhIHByb2JsZW0gZm9yIDhrIGFuZCBzdWNoLgpUaGUgZG9jdW1lbnRlZCBtYXggd2lkdGggaXMg
dG9vIHNtYWxsIGZvciBhbnkgc2luZ2xlIHBsYW5lIHRvIGNvdmVyCnN1Y2ggYSBiaWcgcGlwZS4g
V2Ugc2hvdWxkIHBlcmhhcHMgYmUgdmFsaWRhdGluZyBtb2RlcyBhZ2FpbnN0IHRoZSBwbGFuZQps
aW1pdHMgYXMgd2VsbC4uLgoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
