Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA41EFE79
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 19:07:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 932878908B;
	Tue, 30 Apr 2019 17:07:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5BCE8908B
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 17:07:20 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 10:07:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,414,1549958400"; d="scan'208";a="147148196"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 30 Apr 2019 10:07:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 30 Apr 2019 20:07:17 +0300
Date: Tue, 30 Apr 2019 20:07:17 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
Message-ID: <20190430170717.GG24299@intel.com>
References: <20190326142556.21176-1-ville.syrjala@linux.intel.com>
 <20190326142556.21176-6-ville.syrjala@linux.intel.com>
 <f6bfab9e6a163fdb7f3bef1439591507259a6a55.camel@intel.com>
 <20190409203827.GE3888@intel.com>
 <54c9028d5472f8c447b18063ab240eca315df3df.camel@intel.com>
 <20190411182713.GZ3888@intel.com>
 <b86ea8b2b311ae4c964069dd0c19f921d071b6f6.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b86ea8b2b311ae4c964069dd0c19f921d071b6f6.camel@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 6/6] drm/i915: Set DP min_bpp to 8*3 for
 non-RGB output formats
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Pandiyan, Dhinakaran" <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBBcHIgMTEsIDIwMTkgYXQgMDg6MzM6MDhQTSArMDAwMCwgU3JpcGFkYSwgUmFkaGFr
cmlzaG5hIHdyb3RlOgo+IE9uIFRodSwgMjAxOS0wNC0xMSBhdCAyMToyNyArMDMwMCwgVmlsbGUg
U3lyasOkbMOkIHdyb3RlOgo+ID4gT24gVHVlLCBBcHIgMDksIDIwMTkgYXQgMDI6MDQ6MDFQTSAt
MDcwMCwgRGhpbmFrYXJhbiBQYW5kaXlhbiB3cm90ZToKPiA+ID4gT24gVHVlLCAyMDE5LTA0LTA5
IGF0IDIzOjM4ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6Cj4gPiA+ID4gT24gVHVlLCBB
cHIgMDksIDIwMTkgYXQgMDE6Mjg6MThQTSAtMDcwMCwgRGhpbmFrYXJhbiBQYW5kaXlhbgo+ID4g
PiA+IHdyb3RlOgo+ID4gPiA+ID4gT24gVHVlLCAyMDE5LTAzLTI2IGF0IDE2OjI1ICswMjAwLCBW
aWxsZSBTeXJqYWxhIHdyb3RlOgo+ID4gPiA+ID4gPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gNmJw
YyBpcyBvbmx5IGxlZ2FsIGZvciBSR0IgYW5kIFJBVyBwaXhlbCBlbmNvZGluZ3MuIEZvciB0aGUK
PiA+ID4gPiA+ID4gcmVzdAo+ID4gPiA+ID4gPiB0aGUgbWluaW11bSBpcyA4YnBjLiBTZXQgb3Vy
IGxvd2VyIGxpbWl0IGFjY29yZGluZ2x5Lgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBQYXRjaCBkb2Vz
bid0IGFwcGx5IGFueW1vcmUsIGdvdCBhIGNvbmZsaWN0IGluIGludGVsX2Rydi5oLiAKPiA+ID4g
PiA+IAo+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiA+ID4gPiA+IC0tLQo+ID4gPiA+
ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYyAgICAgfCAxMCArKysrKysrKyst
Cj4gPiA+ID4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcF9tc3QuYyB8ICAyICst
Cj4gPiA+ID4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcnYuaCAgICB8ICAxICsK
PiA+ID4gPiA+ID4gIDMgZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlv
bnMoLSkKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9kcC5jCj4gPiA+ID4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZHAuYwo+ID4gPiA+ID4gPiBpbmRleCAyYWVlNTI2ZWQ2MzIuLjE0OWZkZmJjYjM0MyAxMDA2
NDQKPiA+ID4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYwo+ID4g
PiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jCj4gPiA+ID4gPiA+
IEBAIC0yMDAyLDYgKzIwMDIsMTQgQEAgc3RhdGljIGludAo+ID4gPiA+ID4gPiBpbnRlbF9kcF9k
c2NfY29tcHV0ZV9jb25maWcoc3RydWN0Cj4gPiA+ID4gPiA+IGludGVsX2RwCj4gPiA+ID4gPiA+
ICppbnRlbF9kcCwKPiA+ID4gPiA+ID4gIAlyZXR1cm4gMDsKPiA+ID4gPiA+ID4gIH0KPiA+ID4g
PiA+ID4gIAo+ID4gPiA+ID4gPiAraW50IGludGVsX2RwX21pbl9icHAoY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUKPiA+ID4gPiA+ID4gKmNydGNfc3RhdGUpCj4gPiA+ID4gPiA+ICt7Cj4g
PiA+ID4gPiA+ICsJaWYgKGNydGNfc3RhdGUtPm91dHB1dF9mb3JtYXQgPT0KPiA+ID4gPiA+ID4g
SU5URUxfT1VUUFVUX0ZPUk1BVF9SR0IpCj4gPiA+ID4gPiA+ICsJCXJldHVybiA2ICogMzsKPiA+
ID4gPiA+ID4gKwllbHNlCj4gPiA+ID4gPiA+ICsJCXJldHVybiA4ICogMzsKPiA+ID4gPiA+IAo+
ID4gPiA+ID4gQ29kZSBtYXRjaGVzIHNwZWMsIGhvd2V2ZXIgSSB0aGluayB0aGVyZSBpcyBhIHBv
c3NpYmlsaXR5IG9mCj4gPiA+ID4gPiBtaW5fYnBwCj4gPiA+ID4gPiBiZWNvbWluZwo+ID4gPiA+
ID4gZ3JlYXRlciB0aGFuIG1heF9icHAuIFRoZSBtYXhfYnBjIHByb3BlcnR5IGFsbG93cyB1c2Vy
IHNwYWNlIHRvCj4gPiA+ID4gPiBzZXQgYSB2YWx1ZQo+ID4gPiA+ID4gb2YgNgo+ID4gPiA+ID4g
YW5kIGxpbWl0cy5taW5fYnBwIGNhbiBiZWNvbWUgMjQgYmVjYXVzZSBvZiB0aGUgY29kZSBhYm92
ZS4gQWRkCj4gPiA+ID4gPiBhIGNoZWNrIGZvcgo+ID4gPiA+ID4gdGhhdAo+ID4gPiA+ID4gaW4g
Y29tcHV0ZV9saW5rX2NvbmZpZygpPyBQcm9iYWJseSB3b3VsZCBtZXNzIHVwIHRoZQo+ID4gPiA+
ID4gY29tcHV0ZV9jb25maWcoKSBsb29wCj4gPiA+ID4gPiB0b28uCj4gPiA+ID4gCj4gPiA+ID4g
VGhlIGNvZGUgbG9va3MgY29ycmVjdC4gSWUuIHNob3VsZCBqdXN0IGVuZCB1cCB3aXRoIC1FSU5W
QUwuCj4gPiA+IAo+ID4gPiBZdXAsIGl0IGRvZXMgbm93IGFzIEkgcmVhZCBpdCBjYXJlZnVsbHkg
YWdhaW4gOikKPiA+ID4gUmV2aWV3ZWQtYnk6IERoaW5ha2FyYW4gUGFuZGl5YW4gPGRoaW5ha2Fy
YW4ucGFuZGl5YW5AaW50ZWwuY29tPgo+ID4gCj4gPiBUYS4gUHVzaGVkLgo+IExhdGUgb24ganVt
cGluZyB0aGUgdHJhaW4gYnV0IGRvbnQgd2UgaGF2ZSB0byBsaW1pdCB0aGUgcmFuZ2UgZXhwb3Nl
ZAo+IHdoaWxlIGF0dGFjaGluZyB0aGUgIm1heCBicGMiIGFzIHdlbGwgaW4gdGhpcyBjYXNlPwoK
TGF0ZSBhbnN3ZXJpbmcgdG9vLiBObyB3ZSBjYW4ndCBsaW1pdCB0aGUgcmFuZ2UgYmVjYXVzZSB3
ZSBkb24ndCBrbm93CmFoZWFkIG9mIHRpbWUgd2hldGhlciBSR0Igb3IgWUNiQ3IgaXMgZ29pbmcg
dG8gYmUgdXNlZC4gV2VsbCwgd2UgY291bGQKcmVqZWN0IDZicGMgZW50aXJlbHkgYnV0IHRoYXQg
c2VlbXMgYSBiaXQgc2lsbHkgdG9vLiBUaGUgYXRvbWljIGNoZWNrCndpbGwgc2ltcGx5IGZhaWwg
aWYgeW91IHRyeSBhIGNvbWJvIHRoYXQgZG9lc24ndCB3b3JrLgoKLS0gClZpbGxlIFN5cmrDpGzD
pApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
