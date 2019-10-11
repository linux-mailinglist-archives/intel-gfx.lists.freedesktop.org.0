Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 683C0D4657
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 19:14:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DD906EC70;
	Fri, 11 Oct 2019 17:14:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AC586EC71
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 17:14:36 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Oct 2019 10:14:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,284,1566889200"; d="scan'208";a="200843458"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 11 Oct 2019 10:14:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Oct 2019 20:14:32 +0300
Date: Fri, 11 Oct 2019 20:14:32 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20191011171432.GT1208@intel.com>
References: <20191011010907.103309-1-lucas.demarchi@intel.com>
 <20191011010907.103309-7-lucas.demarchi@intel.com>
 <20191011120850.GN1208@intel.com>
 <20191011170832.cvbcoqji3wyjv3ij@ldmartin-desk1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011170832.cvbcoqji3wyjv3ij@ldmartin-desk1>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915: prettify MST debug message
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

T24gRnJpLCBPY3QgMTEsIDIwMTkgYXQgMTA6MDg6MzJBTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IE9uIEZyaSwgT2N0IDExLCAyMDE5IGF0IDAzOjA4OjUwUE0gKzAzMDAsIFZpbGxl
IFN5cmrDpGzDpCB3cm90ZToKPiA+T24gVGh1LCBPY3QgMTAsIDIwMTkgYXQgMDY6MDk6MDZQTSAt
MDcwMCwgTHVjYXMgRGUgTWFyY2hpIHdyb3RlOgo+ID4+IHMvPy86LyBzbyBpdCdzIGdldCBjb3Jy
ZWN0bHkgY29sb3JlZCBieSBkbWVzZy4KPiA+Cj4gPldoYXQgZG8geW91IG1lYW4gY29ycmVjdGx5
Pwo+ID4KPiA+VGhlIGRlYnVnIG1lc3NhZ2Ugd2FzIGFza2luZyB0aGUgcXVlc3Rpb24gIihpcykg
TVNUIHN1cHBvcnRlZD8iCj4gPkFmdGVyIHRoaXMgaXQganVzdCBkZWNsYXJlcyB0aGF0IE1TVCBp
cyBub3Qgc3VwcG9ydGVkLiBJIGd1ZXNzIG5vIHJlYWwKPiA+ZGlmZmVyZW5jZSBzbyBJIGNvdWxk
IGxpdmUgd2l0aCBlaXRoZXIgb25lLgo+ID4KPiA+VGhlIG9ubHkgdGhpbmcgdGhhdCBzbGlnaHRs
eSBib3RoZXJzIG1lIHdpdGggdGhlICc6JyBpcyB0aGF0IHRoZQo+ID5wb3J0L3NpbmsvbW9kcGFy
YW0gYWxzbyB1c2UgaXQsIGJ1dCBpbiBhIHNsaWdodGx5IGRpZmZlcmVudCB3YXkKPiA+c28gdGhl
ICJNU1Qgc3VwcG9ydGVkOiIgJzonIGxvb2tzIGEgYml0IG5ha2VkLgo+IAo+IFdoYXQgSSBtZWFu
IGlzIHRoYXQgZG1lc2cgdXNlcyB0aGUgZmlyc3QgIjoiIGFmdGVyIFtdIHRvIGNvbG9yaXplLgo+
IAo+IEJlZm9yZToKPiAqW0VOQ09ERVI6eHg6eXl5XSBNU1Qgc3VwcG9ydD8gcG9ydDoqIHllcywg
c2luazogeWVzLCBtb2RwYXJhbTogeWVzCj4gCj4gQWZ0ZXI6Cj4gKltFTkNPREVSOnh4Onl5eV0g
TVNUIHN1cHBvcnQ6KiBwb3J0OiB5ZXMsIHNpbms6IHllcywgbW9kcGFyYW06IHllcwoKQWgsIEkg
Z3Vlc3MgSSBzbyByb3V0aW5lbHkgcGlwZSBpdCB0byBhIGZpbGUvbGVzcyB0aGF0IGhhdmVuJ3Qg
cmVhbGx5Cm5vdGljZWQgOikKCj4gCj4gTm90IHJlYWxseSBpbXBvcnRhbnQsIGp1c3QgbWFrZXMg
bW9yZSBzZW5zZSBJTU8uCgpZb3UndmUgY29udmluY2VkIG1lLgoKPiAKPiBMdWNhcyBEZSBNYXJj
aGkKPiAKPiA+Cj4gPlJldmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPgo+ID4KPiA+Pgo+ID4+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1h
cmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+ID4+IC0tLQo+ID4+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCAyICstCj4gPj4gIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+ID4+Cj4gPj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+ID4+IGluZGV4IDM0OGEwOTg5MDYxMS4uMzNhNTVkYTg5
Y2U5IDEwMDY0NAo+ID4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYwo+ID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+
ID4+IEBAIC00NDUwLDcgKzQ0NTAsNyBAQCBpbnRlbF9kcF9jb25maWd1cmVfbXN0KHN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHApCj4gPj4gIAkJJmRwX3RvX2RpZ19wb3J0KGludGVsX2RwKS0+YmFz
ZTsKPiA+PiAgCWJvb2wgc2lua19jYW5fbXN0ID0gaW50ZWxfZHBfc2lua19jYW5fbXN0KGludGVs
X2RwKTsKPiA+Pgo+ID4+IC0JRFJNX0RFQlVHX0tNUygiW0VOQ09ERVI6JWQ6JXNdIE1TVCBzdXBw
b3J0PyBwb3J0OiAlcywgc2luazogJXMsIG1vZHBhcmFtOiAlc1xuIiwKPiA+PiArCURSTV9ERUJV
R19LTVMoIltFTkNPREVSOiVkOiVzXSBNU1Qgc3VwcG9ydDogcG9ydDogJXMsIHNpbms6ICVzLCBt
b2RwYXJhbTogJXNcbiIsCj4gPj4gIAkJICAgICAgZW5jb2Rlci0+YmFzZS5iYXNlLmlkLCBlbmNv
ZGVyLT5iYXNlLm5hbWUsCj4gPj4gIAkJICAgICAgeWVzbm8oaW50ZWxfZHAtPmNhbl9tc3QpLCB5
ZXNubyhzaW5rX2Nhbl9tc3QpLAo+ID4+ICAJCSAgICAgIHllc25vKGk5MTVfbW9kcGFyYW1zLmVu
YWJsZV9kcF9tc3QpKTsKPiA+PiAtLQo+ID4+IDIuMjMuMAo+ID4+Cj4gPj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+PiBJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0Cj4gPj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4+IGh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cj4gPgo+ID4t
LSAKPiA+VmlsbGUgU3lyasOkbMOkCj4gPkludGVsCgotLSAKVmlsbGUgU3lyasOkbMOkCkludGVs
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
