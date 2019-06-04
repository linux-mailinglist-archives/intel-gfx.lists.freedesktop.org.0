Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D7F350C1
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 22:16:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7E1389C49;
	Tue,  4 Jun 2019 20:16:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8795289C49
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 20:16:31 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 13:16:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,550,1549958400"; d="scan'208";a="181677982"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 04 Jun 2019 13:16:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 04 Jun 2019 23:16:27 +0300
Date: Tue, 4 Jun 2019 23:16:27 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20190604201627.GM5942@intel.com>
References: <20190603214940.11996-1-matthew.s.atwood@intel.com>
 <20190604125158.GC5942@intel.com> <20190604194448.GC7353@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604194448.GC7353@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Correctly advertise HBR3 for
 GEN11+
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
Cc: intel-gfx@lists.freedesktop.org, dhinakaran.pandiyan@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdW4gMDQsIDIwMTkgYXQgMTI6NDQ6NDhQTSAtMDcwMCwgTWFuYXNpIE5hdmFyZSB3
cm90ZToKPiBPbiBUdWUsIEp1biAwNCwgMjAxOSBhdCAwMzo1MTo1OFBNICswMzAwLCBWaWxsZSBT
eXJqw6Rsw6Qgd3JvdGU6Cj4gPiBPbiBNb24sIEp1biAwMywgMjAxOSBhdCAwMjo0OTo0MFBNIC0w
NzAwLCBtYXR0aGV3LnMuYXR3b29kQGludGVsLmNvbSB3cm90ZToKPiA+ID4gRnJvbTogTWF0dCBB
dHdvb2QgPG1hdHRoZXcucy5hdHdvb2RAaW50ZWwuY29tPgo+ID4gPiAKPiA+ID4gaW50ZWxfZHBf
c2V0X3NvdXJjZV9yYXRlcygpIGNhbGxzIGludGVsX2RwX2lzX2VkcCgpLCB3aGljaCBpcyB1bnNh
ZmUgdG8KPiA+ID4gdXNlIGJlZm9yZSBlbmNvZGVyX3R5cGUgaXMgc2V0LiBUaGlzIGNhdXNlZCBH
RU4xMSsgdG8gaW5jb3JyZWN0bHkgc3RyaXAKPiA+ID4gSEJSMyBmcm9tIHNvdXJjZSByYXRlcy4g
TW92ZSBpbnRlbF9kcF9zZXRfc291cmNlX3JhdGVzKCkgdG8gYWZ0ZXIKPiA+ID4gZW5jb2Rlcl90
eXBlIGlzIHNldC4gQWRkIGNvbW1lbnQgdG8gaW50ZWxfZHBfaXNfZWRwKCkgZGVzY3JpYmluZyB1
bnNhZmUKPiA+ID4gdXNhZ2VzLgo+ID4gPiAKPiA+ID4gRml4ZXM6IGIyNjVhMmE2MjU1ZjUgKCJk
cm0vaTkxNS9pY2w6IGNvbWJvIHBvcnQgdnN3aW5nIHByb2dyYW1taW5nCj4gPiA+IGNoYW5nZXMg
cGVyIEJTUEVDIikKPiA+ID4gU2lnbmVkLW9mZi1ieTogTWF0dCBBdHdvb2QgPG1hdHRoZXcucy5h
dHdvb2RAaW50ZWwuY29tPgo+ID4gPiAtLS0KPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2RwLmMgfCA2ICsrKystLQo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygr
KSwgMiBkZWxldGlvbnMoLSkKPiA+ID4gCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYwo+ID4g
PiBpbmRleCAyNGI1NmIyYTc2YzguLmE0NDkwYmNhZDY4NCAxMDA2NDQKPiA+ID4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYwo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9kcC5jCj4gPiA+IEBAIC0xNDEsNiArMTQxLDggQEAgc3RhdGljIGNvbnN0IHU4
IHZhbGlkX2RzY19zbGljZWNvdW50W10gPSB7MSwgMiwgNH07Cj4gPiA+ICAgKgo+ID4gPiAgICog
SWYgYSBDUFUgb3IgUENIIERQIG91dHB1dCBpcyBhdHRhY2hlZCB0byBhbiBlRFAgcGFuZWwsIHRo
aXMgZnVuY3Rpb24KPiA+ID4gICAqIHdpbGwgcmV0dXJuIHRydWUsIGFuZCBmYWxzZSBvdGhlcndp
c2UuCj4gPiA+ICsgKgo+ID4gPiArICogVGhpcyBmdW5jdGlvbiBpcyBub3Qgc2FmZSB0byB1c2Ug
cHJpb3IgdG8gZW5jb2RlciB0eXBlIGJlaW5nIHNldC4KPiA+ID4gICAqLwo+ID4gPiAgYm9vbCBp
bnRlbF9kcF9pc19lZHAoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKPiA+ID4gIHsKPiA+ID4g
QEAgLTczNDIsOCArNzM0NCw2IEBAIGludGVsX2RwX2luaXRfY29ubmVjdG9yKHN0cnVjdCBpbnRl
bF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0LAo+ID4gPiAgCQkgaW50ZWxfZGlnX3BvcnQt
Pm1heF9sYW5lcywgcG9ydF9uYW1lKHBvcnQpKSkKPiA+ID4gIAkJcmV0dXJuIGZhbHNlOwo+ID4g
PiAgCj4gPiA+IC0JaW50ZWxfZHBfc2V0X3NvdXJjZV9yYXRlcyhpbnRlbF9kcCk7Cj4gPiA+IC0K
PiA+ID4gIAlpbnRlbF9kcC0+cmVzZXRfbGlua19wYXJhbXMgPSB0cnVlOwo+ID4gPiAgCWludGVs
X2RwLT5wcHNfcGlwZSA9IElOVkFMSURfUElQRTsKPiA+ID4gIAlpbnRlbF9kcC0+YWN0aXZlX3Bp
cGUgPSBJTlZBTElEX1BJUEU7Cj4gPiA+IEBAIC03Mzg4LDYgKzczODgsOCBAQCBpbnRlbF9kcF9p
bml0X2Nvbm5lY3RvcihzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICppbnRlbF9kaWdfcG9ydCwK
PiA+ID4gIAkJCXR5cGUgPT0gRFJNX01PREVfQ09OTkVDVE9SX2VEUCA/ICJlRFAiIDogIkRQIiwK
PiA+ID4gIAkJCXBvcnRfbmFtZShwb3J0KSk7Cj4gPiA+ICAKPiA+ID4gKwlpbnRlbF9kcF9zZXRf
c291cmNlX3JhdGVzKGludGVsX2RwKTsKPiA+ID4gKwo+ID4gCj4gPiBJIHdvdWxkIHN1Z2dlc3Qg
bW92aW5nIHRoZSBlbmNvZGVyLT50eXBlIHNldHVwIGVhcmxpZXIgc28gdGhhdCB3ZSBtaWdodAo+
ID4gYXZvaWQgaGl0dGluZyB0aGlzIHNhbWUgcHJvYmxlbSBpbiB0aGUgZnV0dXJlLgo+IAo+IElN
SE8sIElkZWFsbHkgdGhpcyBlbmNvZGVyLT50eXBlIHNob3VsZCBiZSBzZXQgaW4gaW50ZWxfZGRp
X2luaXQgb3IgaW50ZWxfZGRpX2luaXRfZHBfY29ubmVjdG9yKCkKPiBmb3IgdXMgdG8gbmV2ZXIg
Z2V0IGludG8gYSBzaXR1YXRpb24gd2hlcmUgaW50ZWxfZHBfaXNfZWRwKCkgaXMgY2FsbGVkIGJl
Zm9yZSBlbmNvZGVyLT50eXBlIGlzIHNldC4KPiAKPiBJcyB0aGF0IHdoYXQgeW91IGFyZSByZWNv
bW1lbmRpbmc/CgpJIHdhcyB0aGlua2luZyBqdXN0IG1vdmluZyBpdCB0byB0aGUgc3RhcnQgb2Yg
aW50ZWxfZHBfaW5pdF9jb25uZWN0b3IoKSwKYnV0IEkgc3VwcG9zZSBtb3ZpbmcgaXQgZXZlbiBl
YXJsaWVyIHdvdWxkIGJlIHBvc3NpYmxlIHNpbmNlIGludGVsX2RkaS5jCmRvZXNuJ3Qgc2VlbSB0
byBkbyBhbnkgb2YgdGhlIGVEUC0+SERNSSBmYWxsYmFjayB3ZSBuZWVkZWQgdG8gYWRkIGZvcgpW
TFYvQ0hWLgoKPiAKPiBNYW5hc2kKPiAKPiA+IAo+ID4gPiAgCWRybV9jb25uZWN0b3JfaW5pdChk
ZXYsIGNvbm5lY3RvciwgJmludGVsX2RwX2Nvbm5lY3Rvcl9mdW5jcywgdHlwZSk7Cj4gPiA+ICAJ
ZHJtX2Nvbm5lY3Rvcl9oZWxwZXJfYWRkKGNvbm5lY3RvciwgJmludGVsX2RwX2Nvbm5lY3Rvcl9o
ZWxwZXJfZnVuY3MpOwo+ID4gPiAgCj4gPiA+IC0tIAo+ID4gPiAyLjE3LjIKPiA+ID4gCj4gPiA+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiA+IElu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKPiA+ID4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zwo+ID4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo+ID4gCj4gPiAtLSAKPiA+IFZpbGxlIFN5cmrDpGzDpAo+ID4gSW50ZWwKPiA+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBJbnRlbC1n
ZnggbWFpbGluZyBsaXN0Cj4gPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gPiBo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoK
LS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
