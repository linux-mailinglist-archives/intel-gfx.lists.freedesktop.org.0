Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD853FC20
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 17:05:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32348891F2;
	Tue, 30 Apr 2019 15:05:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20AFD891F2
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 15:05:23 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 08:05:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,414,1549958400"; d="scan'208";a="147119706"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 30 Apr 2019 08:05:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 30 Apr 2019 18:05:18 +0300
Date: Tue, 30 Apr 2019 18:05:18 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20190430150518.GF24299@intel.com>
References: <20190430000028.4690-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430000028.4690-1-aditya.swarup@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/icl: Fix setting 10 bit deep color
 mode
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBBcHIgMjksIDIwMTkgYXQgMDU6MDA6MjhQTSAtMDcwMCwgQWRpdHlhIFN3YXJ1cCB3
cm90ZToKPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgo+IAo+IFRoZXJlIGlzIGEgYnVnIGluIGhkbWlfZGVlcF9jb2xvcl9wb3NzaWJsZSgpIC0g
d2UgY29tcGFyZSBwaXBlX2JwcAo+IDw9IDgqMyB3aGljaCByZXR1cm5zIHRydWUgZXZlcnkgdGlt
ZSBmb3IgaGRtaV9kZWVwX2NvbG9yX3Bvc3NpYmxlIDEyIGJpdAo+IGRlZXAgY29sb3IgbW9kZSB0
ZXN0IGluIGludGVsX2hkbWlfY29tcHV0ZV9jb25maWcoKS4oRXZlbiB3aGVuIHRoZQo+IHJlcXVl
c3RlZCBjb2xvciBtb2RlIGlzIDEwIGJpdCB0aHJvdWdoIG1heCBicGMgcHJvcGVydHkpCj4gCj4g
Q29tcGFyaW5nIHBpcGVfYnBwIHdpdGggYnBjICogMyB0YWtlcyBjYXJlIG9mIHRoaXMgY29uZGl0
aW9uIHdoZXJlCj4gcmVxdWVzdGVkIG1heCBicGMgaXMgMTAgYml0LCBzbyBoZG1pX2RlZXBfY29s
b3JfcG9zc2libGUgd2l0aCAxMiBiaXQKPiByZXR1cm5zIGZhbHNlIHdoZW4gcmVxdWVzdGVkIG1h
eCBicGMgaXMgMTAuCj4gCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkhvdyBkaWQgbXkgc29iIGFwcGVhciBvbiB0aGlzPyBQ
cmV0dHkgc3VyZSBJIGRpZG4ndCBhY3R1YWxseSBwdXQgaXQKaGVyZS4KCj4gU2lnbmVkLW9mZi1i
eTogQWRpdHlhIFN3YXJ1cCA8YWRpdHlhLnN3YXJ1cEBpbnRlbC5jb20+Cj4gQ2M6IEphbmkgTmlr
dWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4gQ2M6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5k
Lm5hdmFyZUBpbnRlbC5jb20+Cj4gQ2M6IENsaW50b24gVGF5bG9yIDxDbGludG9uLkEuVGF5bG9y
QGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfaGRtaS5jIHwg
MiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfaGRtaS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfaGRtaS5jCj4gaW5kZXggOTkxZWIzNjJlZjRmLi43NGYyZGNi
OGIxYWQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfaGRtaS5jCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfaGRtaS5jCj4gQEAgLTIxNTksNyArMjE1
OSw3IEBAIHN0YXRpYyBib29sIGhkbWlfZGVlcF9jb2xvcl9wb3NzaWJsZShjb25zdCBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPiAgCWlmIChicGMgPT0gMTAgJiYgSU5URUxf
R0VOKGRldl9wcml2KSA8IDExKQo+ICAJCXJldHVybiBmYWxzZTsKPiAgCj4gLQlpZiAoY3J0Y19z
dGF0ZS0+cGlwZV9icHAgPD0gOCozKQo+ICsJaWYgKGNydGNfc3RhdGUtPnBpcGVfYnBwIDwgYnBj
ICogMykKPiAgCQlyZXR1cm4gZmFsc2U7Cj4gIAo+ICAJaWYgKCFjcnRjX3N0YXRlLT5oYXNfaGRt
aV9zaW5rKQo+IC0tIAo+IDIuMTcuMQoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
