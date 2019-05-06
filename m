Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC7414AA0
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2019 15:12:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A94189906;
	Mon,  6 May 2019 13:12:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D731589906
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2019 13:12:53 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 May 2019 06:12:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,438,1549958400"; d="scan'208";a="149087324"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 06 May 2019 06:12:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 May 2019 16:12:50 +0300
Date: Mon, 6 May 2019 16:12:50 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20190506131250.GZ24299@intel.com>
References: <20190502232648.4450-1-imre.deak@intel.com>
 <20190502232648.4450-10-imre.deak@intel.com>
 <20190506123552.GX24299@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190506123552.GX24299@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 09/10] drm/i915: Avoid taking the PPS lock
 for non-eDP/VLV/CHV
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

T24gTW9uLCBNYXkgMDYsIDIwMTkgYXQgMDM6MzU6NTJQTSArMDMwMCwgVmlsbGUgU3lyasOkbMOk
IHdyb3RlOgo+IE9uIEZyaSwgTWF5IDAzLCAyMDE5IGF0IDAyOjI2OjQ3QU0gKzAzMDAsIEltcmUg
RGVhayB3cm90ZToKPiA+IE9uIElDTCB3ZSBoYXZlIHRvIG1ha2Ugc3VyZSB0aGF0IHdlIGVuYWJs
ZSB0aGUgQVVYIHBvd2VyIGRvbWFpbiBpbiBhCj4gPiBjb250cm9sbGVkIHdheSAoY29ycmVzcG9u
ZGluZyB0byB0aGUgcG9ydCdzIGFjdHVhbCBUeXBlQyBtb2RlKS4gU2luY2UKPiA+IHRoZSBQUFMg
bG9jayAtIHdoaWNoIHRha2VzIGFuIEFVWCBwb3dlciByZWYgLSBpcyBvbmx5IG5lZWRlZCBvbgo+
ID4gZURQL1ZMVi9DSFYgYXZvaWQgdGFraW5nIGl0IGluIG90aGVyIGNhc2VzLgo+ID4gCj4gPiBD
YzogVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+Cj4gPiAtLS0KPiA+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jIHwgNCArKysrCj4gPiAgMSBmaWxlIGNoYW5n
ZWQsIDQgaW5zZXJ0aW9ucygrKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMKPiA+IGlu
ZGV4IGY1NmNiZGE1OWZiMy4uMWVlOWI3ZWJkODAxIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfZHAuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZHAuYwo+ID4gQEAgLTYyNjMsNiArNjI2MywxMCBAQCB2b2lkIGludGVsX2RwX2VuY29kZXJf
cmVzZXQoc3RydWN0IGRybV9lbmNvZGVyICplbmNvZGVyKQo+ID4gIAo+ID4gIAlpbnRlbF9kcC0+
cmVzZXRfbGlua19wYXJhbXMgPSB0cnVlOwo+ID4gIAo+ID4gKwlpZiAoIUlTX1ZBTExFWVZJRVco
ZGV2X3ByaXYpICYmICFJU19DSEVSUllWSUVXKGRldl9wcml2KSAmJgo+ID4gKwkgICAgIWludGVs
X2RwX2lzX2VkcChpbnRlbF9kcCkpCj4gPiArCQlyZXR1cm47Cj4gCj4gdmx2L2NodiBuZWVkIHRo
aXMgZm9yIGFsbCBEUCBwb3J0cy4KCldoaWNoIGlzIHdoYXQgdGhpcyBkb2VzLiBUaGUgd29yZGlu
ZyBpbiB0aGUgY29tbWl0IG1lc3NhZ2UgY29uZnVzZWQgbWUuCgo+IAo+ID4gKwo+ID4gIAl3aXRo
X3Bwc19sb2NrKGludGVsX2RwLCB3YWtlcmVmKSB7Cj4gPiAgCQlpZiAoSVNfVkFMTEVZVklFVyhk
ZXZfcHJpdikgfHwgSVNfQ0hFUlJZVklFVyhkZXZfcHJpdikpCj4gPiAgCQkJaW50ZWxfZHAtPmFj
dGl2ZV9waXBlID0gdmx2X2FjdGl2ZV9waXBlKGludGVsX2RwKTsKPiA+IC0tIAo+ID4gMi4xNy4x
Cj4gCj4gLS0gCj4gVmlsbGUgU3lyasOkbMOkCj4gSW50ZWwKCi0tIApWaWxsZSBTeXJqw6Rsw6QK
SW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
