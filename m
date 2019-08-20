Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF653960EB
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 15:44:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F51F6E7DF;
	Tue, 20 Aug 2019 13:44:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0EFD6E7DF
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 13:44:19 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 06:44:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,408,1559545200"; d="scan'208";a="195773884"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 20 Aug 2019 06:44:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 20 Aug 2019 16:44:16 +0300
Date: Tue, 20 Aug 2019 16:44:16 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>
Message-ID: <20190820134416.GD5942@intel.com>
References: <20190820110631.15793-1-mika.kahola@intel.com>
 <20190820130311.GB5942@intel.com>
 <8ca285150096aa90e67eb5e6b253eec151dafc6e.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8ca285150096aa90e67eb5e6b253eec151dafc6e.camel@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Lower cdclk for sub 4k
 resolutions
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBBdWcgMjAsIDIwMTkgYXQgMDE6MjI6MDBQTSArMDAwMCwgS2Fob2xhLCBNaWthIHdy
b3RlOgo+IE9uIFR1ZSwgMjAxOS0wOC0yMCBhdCAxNjowMyArMDMwMCwgVmlsbGUgU3lyasOkbMOk
IHdyb3RlOgo+ID4gT24gVHVlLCBBdWcgMjAsIDIwMTkgYXQgMDI6MDY6MzFQTSArMDMwMCwgTWlr
YSBLYWhvbGEgd3JvdGU6Cj4gPiA+IEluIG9yZGVyIHRvIGFjaGlldmUgaW1wcm92ZWQgcG93ZXIg
c2F2aW5ncyB3ZSBjYW4gdHVuZSBkb3duIENECj4gPiA+IGNsb2NrIGZyZXF1ZW5jeQo+ID4gPiBm
b3Igc3ViIDRrIHJlc29sdXRpb25zLiBUaGUgbWF4aW11bSBDRCBjbG9jayBmcmVxdWVuY3kgZm9y
IHN1YiA0awo+ID4gPiByZXNvbHV0aW9ucyBpcyBzZXQgdG8gMTcyLjggTUh6Lgo+ID4gPiAKPiA+
ID4gU2lnbmVkLW9mZi1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4KPiA+
ID4gLS0tCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMg
fCAyNgo+ID4gPiArKysrKysrKysrKysrKysrKysrKystCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmggfCAgMyArKysKPiA+ID4gIDIgZmlsZXMgY2hhbmdl
ZCwgMjggaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwo+ID4gPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwo+ID4gPiBpbmRleCBkMGJj
NDJlNTAzOWMuLjFkNmM3YmM3OTQ3MCAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwo+ID4gPiBAQCAtMjYxMCw2ICsyNjEwLDI0IEBAIHN0
YXRpYyBpbnQgaW50ZWxfY29tcHV0ZV9tYXhfZG90Y2xrKHN0cnVjdAo+ID4gPiBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdikKPiA+ID4gIAkJcmV0dXJuIG1heF9jZGNsa19mcmVxKjkwLzEwMDsK
PiA+ID4gIH0KPiA+ID4gIAo+ID4gPiArYm9vbCBtb2RlX2lzXzRrKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdikKPiA+ID4gK3sKPiA+ID4gKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0
YzsKPiA+ID4gKwlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25maWc7Cj4gPiA+ICsK
PiA+ID4gKwlmb3JfZWFjaF9pbnRlbF9jcnRjKCZkZXZfcHJpdi0+ZHJtLCBjcnRjKSB7Cj4gPiA+
ICsJCXBpcGVfY29uZmlnID0gdG9faW50ZWxfY3J0Y19zdGF0ZShjcnRjLT5iYXNlLnN0YXRlKTsK
PiA+ID4gKwo+ID4gPiArCQlpZiAocGlwZV9jb25maWctPmJhc2UuYWN0aXZlKSB7Cj4gPiA+ICsJ
CQlpZiAocGlwZV9jb25maWctPnBpcGVfc3JjX3cgPj0gV0lEVEhfNEsgJiYKPiA+ID4gKwkJCSAg
ICBwaXBlX2NvbmZpZy0+cGlwZV9zcmNfaCA+PSBIRUlHSFRfNEspCj4gPiA+ICsJCQkJcmV0dXJu
IHRydWU7Cj4gPiA+ICsJCX0KPiA+ID4gKwl9Cj4gPiA+ICsKPiA+ID4gKwlyZXR1cm4gZmFsc2U7
Cj4gPiA+ICt9Cj4gPiA+ICsKPiA+ID4gIC8qKgo+ID4gPiAgICogaW50ZWxfdXBkYXRlX21heF9j
ZGNsayAtIERldGVybWluZSB0aGUgbWF4aW11bSBzdXBwb3J0IENEQ0xLCj4gPiA+IGZyZXF1ZW5j
eQo+ID4gPiAgICogQGRldl9wcml2OiBpOTE1IGRldmljZQo+ID4gPiBAQCAtMjYyMCw3ICsyNjM4
LDEzIEBAIHN0YXRpYyBpbnQgaW50ZWxfY29tcHV0ZV9tYXhfZG90Y2xrKHN0cnVjdAo+ID4gPiBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiA+ID4gICAqLwo+ID4gPiAgdm9pZCBpbnRlbF91
cGRhdGVfbWF4X2NkY2xrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiA+ID4g
IHsKPiA+ID4gLQlpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpKSB7Cj4gPiA+ICsJLyoKPiA+
ID4gKwkgKiBVc2UgbG93ZXIgQ0RDTEsgZnJlcXVlbmN5IG9uIFRpZ2VybGFrZSB3aGVuIHNlbGVj
dGVkCj4gPiA+ICsJICogbW9kZSBpcyBsZXNzIHRoYW4gNGsuCj4gPiA+ICsJICovCj4gPiA+ICsJ
aWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIgJiYgIW1vZGVfaXNfNGsoZGV2X3ByaXYpKSB7
Cj4gPiA+ICsJCWRldl9wcml2LT5tYXhfY2RjbGtfZnJlcSA9IDE3MjgwMDsKPiA+IAo+ID4gVGhl
IG1heGltdW0gaXMganVzdCB0aGF0LCB0aGUgbWF4aW11bS4gSXQgZG9lc24ndCBhZmZlY3QgdGhl
IGFjdHVhbAo+ID4gY2RjbGsgY2hvc2VuIChvdXRzaWRlIG9mIHJlamVjdGluZyBldmVyeXRoaW5n
IGV4Y2VlZGluZyB0aGUgbWF4KS4KPiA+IEFuZCB0aGUgbWF4aW11bSB3b24ndCBldmVyIGNoYW5n
ZSwgc28gdHJ5aW5nIHRvIGNhbGN1bGF0ZSBpdCBiYXNlZAo+ID4gb24gc29tZSBlcGhlbWVyYWwg
Y3J0YyBzdGF0ZXMgZG9lc24ndCBtYWtlIHNlbnNlLgo+ID4gCj4gPiBHaXZlbiB0aGF0IG91ciBw
b2xpY3kgaXMgdG8gYWx3YXlzIGdvIGZvciB0aGUgbWluaW11bSBhY2NlcHRhYmxlCj4gPiBjZGNs
awo+ID4gZnJlcXVlbmN5IEkgZG9uJ3QgdGhpbmsgdGhlcmUgaXMgYW55IHdvcmsgdG8gYmUgZG9u
ZSB0byBnZXQgcHJvcGVyCj4gPiBwb3dlciBzYXZpbmdzIGZvciA8NGsuIFdoYXQgaXMgdGhlIGFj
dHVhbCBwcm9ibGVtIHlvdSdyZSBzZWVpbmc/Cj4gVGhlIGFjdHVhbCBwcm9ibGVtIGlzIHRoYXQg
dGhpcyBpcyBhIHJlcXVlc3RlZCBmZWF0dXJlIGZvciBUR0wuIEkKPiBhZG1pdCwgd2l0aCB0aGVz
ZSBzdWdnZXN0ZWQgb3B0aW1pemF0aW9ucyB0aGUgZ2FpbnMgd2lsbCBiZSBtYXJnaW5hbC4KPiAK
PiBNeSBpbnRlcnByZXRhdGlvbiBvZiB0aGlzIGZlYXR1cmUgd2FzIHRoYXQgd2Ugc2hvdWxkIG5v
dCBleGNlZWQKPiAxNzIuOE1IeiB3aXRoIHRoZSBzdWIgNGsgbW9kZXMsIGhlbmNlIEknbSBzdWdn
ZXN0aW5nIGluIHRoaXMgcGF0Y2ggdG8gbGltaXQgdGhlIG1heCBjZGNsb2NrIHRvIHRoaXMgbnVt
YmVyLiAKPiAKPiBTbywgaG93IGRvIHdlIGdldCBmb3J3YXJkPyBTaG91bGQgSSBwcm9wb3NlIHRo
YXQgd2UgZHJvcCB0aGlzIGZlYXR1cmUKPiBvciBzaG91bGQgd2UgaW1wbGVtZW50IHRoaXMgZGlm
ZmVyZW50bHk/CgpUaGVyZSBpcyBub3RoaW5nIHRvIGltcGxlbWVudC4gVGhlIGN1cnJlbnQgcG9s
aWN5IGFscmVhZHkgcGlja3MgdGhlCm1pbmltdW0gY2RjbGsgdGhhdCB3aWxsIHdvcmsuCgotLSAK
VmlsbGUgU3lyasOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
