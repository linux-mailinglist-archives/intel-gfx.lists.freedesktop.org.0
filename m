Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A7938A36
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 14:26:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5411D89DE6;
	Fri,  7 Jun 2019 12:26:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF2D689DE6
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 12:26:19 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jun 2019 05:26:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,563,1557212400"; d="scan'208";a="182647925"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 07 Jun 2019 05:26:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 07 Jun 2019 15:26:15 +0300
Date: Fri, 7 Jun 2019 15:26:15 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190607122615.GX5942@intel.com>
References: <20190607034919.16557-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190607034919.16557-1-lucas.demarchi@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/icl: use ranges for voltage level
 lookup
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

T24gVGh1LCBKdW4gMDYsIDIwMTkgYXQgMDg6NDk6MTlQTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IFNwZWMgc2hvd3Mgdm9sdGFnZSBsZXZlbCAwIGFzIDMwNy4yLCAzMTIsIG9yIGxv
d2VyIGFuZCBzdWdnZXN0cyB0byB1c2UKPiByYW5nZSBjaGVja3MuIFByZXBhcmUgZm9yIGhhdmlu
ZyBvdGhlciBmcmVxdWVuY2llcyBpbiB0aGVzZSByYW5nZXMgYnkKPiBub3QgY29tcGFyaW5nIHRo
ZSBleGFjdCBmcmVxdWVuY3kuCj4gCj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxs
dWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2NkY2xrLmMgfCAyMSArKysrKysrKystLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQs
IDkgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2NkY2xrLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9jZGNsay5jCj4gaW5kZXggNjk4OGM2Y2JjMzYyLi5iMTc1YTI5MjZjYWYgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY2RjbGsuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2NkY2xrLmMKPiBAQCAtMTg2NSwyMSArMTg2NSwxOCBAQCBzdGF0aWMg
dm9pZCBpY2xfc2V0X2NkY2xrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiAg
Cj4gIHN0YXRpYyB1OCBpY2xfY2FsY192b2x0YWdlX2xldmVsKGludCBjZGNsaykKPiAgewo+IC0J
c3dpdGNoIChjZGNsaykgewo+IC0JY2FzZSA1MDAwMDoKPiAtCWNhc2UgMzA3MjAwOgo+IC0JY2Fz
ZSAzMTIwMDA6Cj4gKwlpZiAoY2RjbGsgPD0gMzEyMDAwKQo+ICAJCXJldHVybiAwOwo+IC0JY2Fz
ZSA1NTY4MDA6Cj4gLQljYXNlIDU1MjAwMDoKPiArCj4gKwlpZiAoY2RjbGsgPD0gNTU2ODAwKQo+
ICAJCXJldHVybiAxOwo+IC0JZGVmYXVsdDoKPiAtCQlNSVNTSU5HX0NBU0UoY2RjbGspOwo+IC0J
CS8qIGZhbGwgdGhyb3VnaCAqLwo+IC0JY2FzZSA2NTI4MDA6Cj4gLQljYXNlIDY0ODAwMDoKPiAr
Cj4gKwlpZiAoY2RjbGsgPD0gNjUyODAwKQo+ICAJCXJldHVybiAyOwo+IC0JfQo+ICsKPiArCU1J
U1NJTkdfQ0FTRShjZGNsayk7Cj4gKwo+ICsJcmV0dXJuIDI7CgpFdmVyeSBvdGhlciBmdW5jdGlv
biBpbiB0aGUgc2FtZSBmaWxlIGRvZXMgaXQgdGhlIG90aGVyIHdheSBhcm91bmQuCldvdWxkIGJl
IG5pY2UgdG8ga2VlcCBpdCBjb25zaXN0ZW50LgoKaWYgKGNkY2xrID4gYmlnKQoJcmV0dXJuIGE7
CmVsc2UgaWYgKGNkY2xrID4gbm90c29iaWcpCglyZXR1cm4gYjsKZWxzZQoJcmV0dXJuIGM7CgoK
PiAgfQo+ICAKPiAgc3RhdGljIHZvaWQgaWNsX2dldF9jZGNsayhzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYsCj4gLS0gCj4gMi4yMS4wCgotLSAKVmlsbGUgU3lyasOkbMOkCkludGVs
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
