Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0785EAFE52
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 16:08:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E10F6EB10;
	Wed, 11 Sep 2019 14:08:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA6D36EB10
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 14:08:27 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 07:08:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,493,1559545200"; d="scan'208";a="200527843"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 11 Sep 2019 07:08:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 11 Sep 2019 17:08:24 +0300
Date: Wed, 11 Sep 2019 17:08:24 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190911140824.GA7482@intel.com>
References: <20190911135000.23272-1-ville.syrjala@linux.intel.com>
 <156821036908.3439.5160277708812427100@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156821036908.3439.5160277708812427100@skylake-alporthouse-com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix DRM_I915_DEBUG IOMMU stuff
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

T24gV2VkLCBTZXAgMTEsIDIwMTkgYXQgMDI6NTk6MjlQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgVmlsbGUgU3lyamFsYSAoMjAxOS0wOS0xMSAxNDo1MDowMCkKPiA+IEZy
b206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiAK
PiA+IFdlIG5lZWQgdG8gc2VsZWN0IElPTU1VX1NVUFBPUlQgYXMgd2VsbCwgb3RoZXJ3aXNlIHdl
IGNhbiBiZSBsZWZ0Cj4gPiB3aXRoOgo+ID4gIENPTkZJR19JT01NVV9JT1ZBPW0KPiA+ICAjIENP
TkZJR19JT01NVV9TVVBQT1JUIGlzIG5vdCBzZXQKPiA+ICBDT05GSUdfSU5URUxfSU9NTVU9eQo+
ID4gCj4gPiB3aGljaCBjb21wbGFpbnM6Cj4gPiAiV0FSTklORzogdW5tZXQgZGlyZWN0IGRlcGVu
ZGVuY2llcyBkZXRlY3RlZCBmb3IgSU5URUxfSU9NTVUiCj4gPiAKPiA+IGFuZCBmYWlscyB0byBs
aW5rOgo+ID4gbGQ6IGRyaXZlcnMvaW9tbXUvaW50ZWwtaW9tbXUubzogaW4gZnVuY3Rpb24gYGZy
ZWVfYWxsX2NwdV9jYWNoZWRfaW92YXMnOgo+ID4gL2hvbWUvdnN5cmphbGEvc3JjL2xpbnV4L2J1
aWxkX3NrbC8uLi9kcml2ZXJzL2lvbW11L2ludGVsLWlvbW11LmM6NDQ2NjogdW5kZWZpbmVkIHJl
ZmVyZW5jZSB0byBgZnJlZV9jcHVfY2FjaGVkX2lvdmFzJwo+ID4gLi4uCj4gPiAKPiA+IE9yIGRv
IHdlIG1heWJlIHdhbnQgc29tZXRoaW5nIGxpa2U6Cj4gPiAgc2VsZWN0IDxpb21tdSB0aGluZz4g
aWYgSU9NTVVfU1VQUE9SVAo+ID4gaW5zdGVhZD8KPiAKPiBIbW0uIE15IGdvYWwgZm9yIERSTV9J
OTE1X0RFQlVHIHdhcyBiYXNpY2FsbHkgdG8gZGljdGF0ZSB0aGUKPiBjb25maWd1cmF0aW9uIG9w
dGlvbnMgZm9yIENJLiBOb3cgQ0kgaGFzIGVudGVyZWQgYSBuZXcgZXJhIG9mIGdpdAo+IGl0c2Vs
ZiwgdGhpcyBjb3VsZCBiZSByZWluZWQgYmFjayBpbiBJIGd1ZXNzLiBCdXQgSSBzdGlsbCBsaWtl
IGhhdmluZyBhCj4gc2luZ2xlIG9wdGlvbiB0aGF0IGVuYWJsZXMgYSBnb29kIHNldCBvZiBkZWJ1
ZyBvcHRpb25zICh0aGF0IG1hdGNoIHdoYXQKPiBDSSBkb2VzIGZvciBjb252ZW5pZW5jZSkuCj4g
Cj4gPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiBGaXhl
czogMDIyMjlhY2IzOTI2ICgiZHJtL2k5MTU6IEZvcmNlIGNvbXBpbGF0aW9uIHdpdGggaW50ZWwt
aW9tbXUgZm9yIENJIHZhbGlkYXRpb24iKQo+ID4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L0tjb25maWcuZGVidWcgfCAxICsKPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKykKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L0tj
b25maWcuZGVidWcgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnLmRlYnVnCj4gPiBpbmRl
eCBjNWMwMGNhZDZiYTEuLmQ5NDAyODBkZjZiOSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L0tjb25maWcuZGVidWcKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L0tj
b25maWcuZGVidWcKPiA+IEBAIC0yMiw2ICsyMiw3IEBAIGNvbmZpZyBEUk1fSTkxNV9ERUJVRwo+
ID4gICAgICAgICAgZGVwZW5kcyBvbiBEUk1fSTkxNQo+ID4gICAgICAgICBzZWxlY3QgUENJX01T
SQo+ID4gICAgICAgICBzZWxlY3QgSU9NTVVfQVBJCj4gPiArICAgICAgIHNlbGVjdCBJT01NVV9T
VVBQT1JUCj4gCj4gQWxyZWFkeSBpbiB0aGUgdXBkYXRlZAo+IDQxZGZkNWY2N2FlNCAoImRybS9p
OTE1OiBGb3JjZSBjb21waWxhdGlvbiB3aXRoIGludGVsLWlvbW11IGZvciBDSSB2YWxpZGF0aW9u
IikKClRoYXQncyBub3QgdXBzdHJlYW0gdGhvdWdoLiBTbyBteSBidWlsZCBpcyBzdGlsbCBicm9r
ZW4uCgotLSAKVmlsbGUgU3lyasOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
