Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B0E90161C3
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2019 12:12:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1AB689FD3;
	Tue,  7 May 2019 10:12:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F22E789FD3
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2019 10:12:53 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 May 2019 03:12:53 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 07 May 2019 03:12:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 07 May 2019 13:12:49 +0300
Date: Tue, 7 May 2019 13:12:49 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20190507101249.GD24299@intel.com>
References: <20190430000028.4690-1-aditya.swarup@intel.com>
 <20190430150518.GF24299@intel.com>
 <20190430211239.GD27158@aswarup-desk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430211239.GD27158@aswarup-desk>
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

T24gVHVlLCBBcHIgMzAsIDIwMTkgYXQgMDI6MTI6MzlQTSAtMDcwMCwgQWRpdHlhIFN3YXJ1cCB3
cm90ZToKPiBPbiBUdWUsIEFwciAzMCwgMjAxOSBhdCAwNjowNToxOFBNICswMzAwLCBWaWxsZSBT
eXJqw6Rsw6Qgd3JvdGU6Cj4gPiBPbiBNb24sIEFwciAyOSwgMjAxOSBhdCAwNTowMDoyOFBNIC0w
NzAwLCBBZGl0eWEgU3dhcnVwIHdyb3RlOgo+ID4gPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+ID4gPiAKPiA+ID4gVGhlcmUgaXMgYSBidWcg
aW4gaGRtaV9kZWVwX2NvbG9yX3Bvc3NpYmxlKCkgLSB3ZSBjb21wYXJlIHBpcGVfYnBwCj4gPiA+
IDw9IDgqMyB3aGljaCByZXR1cm5zIHRydWUgZXZlcnkgdGltZSBmb3IgaGRtaV9kZWVwX2NvbG9y
X3Bvc3NpYmxlIDEyIGJpdAo+ID4gPiBkZWVwIGNvbG9yIG1vZGUgdGVzdCBpbiBpbnRlbF9oZG1p
X2NvbXB1dGVfY29uZmlnKCkuKEV2ZW4gd2hlbiB0aGUKPiA+ID4gcmVxdWVzdGVkIGNvbG9yIG1v
ZGUgaXMgMTAgYml0IHRocm91Z2ggbWF4IGJwYyBwcm9wZXJ0eSkKPiA+ID4gCj4gPiA+IENvbXBh
cmluZyBwaXBlX2JwcCB3aXRoIGJwYyAqIDMgdGFrZXMgY2FyZSBvZiB0aGlzIGNvbmRpdGlvbiB3
aGVyZQo+ID4gPiByZXF1ZXN0ZWQgbWF4IGJwYyBpcyAxMCBiaXQsIHNvIGhkbWlfZGVlcF9jb2xv
cl9wb3NzaWJsZSB3aXRoIDEyIGJpdAo+ID4gPiByZXR1cm5zIGZhbHNlIHdoZW4gcmVxdWVzdGVk
IG1heCBicGMgaXMgMTAuCj4gPiA+IAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+ID4gCj4gPiBIb3cgZGlkIG15IHNv
YiBhcHBlYXIgb24gdGhpcz8gUHJldHR5IHN1cmUgSSBkaWRuJ3QgYWN0dWFsbHkgcHV0IGl0Cj4g
PiBoZXJlLgo+IEkgYWRkZWQgaXQsIHNpbmNlIHlvdSBhcmUgdGhlIGF1dGhvciBvZiB0aGlzIHBh
dGNoIGFuZCBjYW1lIHVwIHdpdGggdGhlCj4gY2hhbmdlLiBJbXJlIGFuZCBJIGhhdmUgdGVzdGVk
IHlvdXIgcGF0Y2ggYW5kIGl0IGlzIHJlcXVpcmVkLiAKCllvdSBjYW4ndCBhZGQgc29iIGZvciBv
dGhlciBwZW9wbGUgd2l0aG91dCBleHBsaWNpdCBwZXJtaXNzaW9uCnNpbmNlIGl0IGhhcyBzb21l
IGFjdHVhbCBtZWFuaW5nIChzZWUKRG9jdW1lbnRhdGlvbi9wcm9jZXNzL3N1Ym1pdHRpbmctcGF0
Y2hlcy5yc3QpLgoKSW4gdGhpcyBjYXNlIEkgd2FzIGV4cGVjdGluZyB5b3Ugd291bGQgcHV0IHlv
dXJzZWxmIGFzIHRoZSBhdXRob3IKYW5kIGp1c3QgdXNlIHNvbWV0aGluZyBsaWtlICdTdWdnZXN0
ZWQtYnk6IG1lJyB0byBpbmRpY2F0ZSBJIGdhdmUKdGhlIGlkZWEgZm9yIHRoZSBwYXRjaC4KCj4g
PiAKPiA+ID4gU2lnbmVkLW9mZi1ieTogQWRpdHlhIFN3YXJ1cCA8YWRpdHlhLnN3YXJ1cEBpbnRl
bC5jb20+Cj4gPiA+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+ID4g
PiBDYzogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KPiA+ID4gQ2M6
IENsaW50b24gVGF5bG9yIDxDbGludG9uLkEuVGF5bG9yQGludGVsLmNvbT4KPiA+ID4gLS0tCj4g
PiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9oZG1pLmMgfCAyICstCj4gPiA+ICAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiA+ID4gCj4gPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9oZG1pLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9oZG1pLmMKPiA+ID4gaW5kZXggOTkxZWIzNjJlZjRmLi43NGYyZGNi
OGIxYWQgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2hkbWku
Ywo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9oZG1pLmMKPiA+ID4gQEAg
LTIxNTksNyArMjE1OSw3IEBAIHN0YXRpYyBib29sIGhkbWlfZGVlcF9jb2xvcl9wb3NzaWJsZShj
b25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPiA+ID4gIAlpZiAoYnBj
ID09IDEwICYmIElOVEVMX0dFTihkZXZfcHJpdikgPCAxMSkKPiA+ID4gIAkJcmV0dXJuIGZhbHNl
Owo+ID4gPiAgCj4gPiA+IC0JaWYgKGNydGNfc3RhdGUtPnBpcGVfYnBwIDw9IDgqMykKPiA+ID4g
KwlpZiAoY3J0Y19zdGF0ZS0+cGlwZV9icHAgPCBicGMgKiAzKQo+ID4gPiAgCQlyZXR1cm4gZmFs
c2U7Cj4gPiA+ICAKPiA+ID4gIAlpZiAoIWNydGNfc3RhdGUtPmhhc19oZG1pX3NpbmspCj4gPiA+
IC0tIAo+ID4gPiAyLjE3LjEKPiA+IAo+ID4gLS0gCj4gPiBWaWxsZSBTeXJqw6Rsw6QKPiA+IElu
dGVsCj4gCj4gUmVnYXJkcywKPiBBZGl0eWEgU3dhcnVwCgotLSAKVmlsbGUgU3lyasOkbMOkCklu
dGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
