Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 301F8963B4
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 17:06:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A6836E421;
	Tue, 20 Aug 2019 15:06:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B50B6E40E
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 15:06:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 08:06:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,408,1559545200"; d="scan'208";a="172474692"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga008.jf.intel.com with ESMTP; 20 Aug 2019 08:06:47 -0700
Received: from FMSMSX109.amr.corp.intel.com (10.18.116.9) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 20 Aug 2019 08:06:47 -0700
Received: from bgsmsx101.gar.corp.intel.com (10.223.4.170) by
 fmsmsx109.amr.corp.intel.com (10.18.116.9) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 20 Aug 2019 08:06:47 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.178]) by
 BGSMSX101.gar.corp.intel.com ([169.254.1.124]) with mapi id 14.03.0439.000;
 Tue, 20 Aug 2019 20:36:44 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/tgl: Lower cdclk for sub 4k
 resolutions
Thread-Index: AQHVV0dYj91OLoBrk02RVythk2m3eqcEAJUg//+vFYCAAHHl0A==
Date: Tue, 20 Aug 2019 15:06:44 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F821CAD49@BGSMSX104.gar.corp.intel.com>
References: <20190820110631.15793-1-mika.kahola@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F821CABFE@BGSMSX104.gar.corp.intel.com>
 <20190820134313.GC5942@intel.com>
In-Reply-To: <20190820134313.GC5942@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiN2NmNDAyYzYtNTZjMC00YTRhLTk0NDQtNWVhZGZhNDhhYzQzIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiRzFIQ3NnRFlYSjl6TUo2WGxhYTFzZ05LYUN3NkhhXC9IR2tDRUZheGtMRE9samtrc2g0dm5HdEVEM3ptclFVbTAifQ==
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
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

Cj4+ID4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+PiA+RnJvbTogS2Fob2xhLCBNaWthCj4+
ID5TZW50OiBUdWVzZGF5LCBBdWd1c3QgMjAsIDIwMTkgNDozNyBQTQo+PiA+VG86IGludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPj4gPkNjOiBTaGFua2FyLCBVbWEgPHVtYS5zaGFua2Fy
QGludGVsLmNvbT47IEthaG9sYSwgTWlrYQo+PiA+PG1pa2Eua2Fob2xhQGludGVsLmNvbT4KPj4g
PlN1YmplY3Q6IFtQQVRDSF0gZHJtL2k5MTUvdGdsOiBMb3dlciBjZGNsayBmb3Igc3ViIDRrIHJl
c29sdXRpb25zCj4+ID4KPj4gPkluIG9yZGVyIHRvIGFjaGlldmUgaW1wcm92ZWQgcG93ZXIgc2F2
aW5ncyB3ZSBjYW4gdHVuZSBkb3duIENEIGNsb2NrCj4+ID5mcmVxdWVuY3kgZm9yIHN1YiA0ayBy
ZXNvbHV0aW9ucy4gVGhlIG1heGltdW0gQ0QgY2xvY2sgZnJlcXVlbmN5IGZvcgo+PiA+c3ViIDRr
IHJlc29sdXRpb25zIGlzIHNldCB0bwo+PiA+MTcyLjggTUh6Lgo+PiA+Cj4+ID5TaWduZWQtb2Zm
LWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPgo+PiA+LS0tCj4+ID4gZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIHwgMjYKPj4gPisrKysrKysr
KysrKysrKysrKysrKy0gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5o
IHwKPj4gPjMgKysrCj4+ID4gMiBmaWxlcyBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCspLCAxIGRl
bGV0aW9uKC0pCj4+ID4KPj4gPmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2NkY2xrLmMKPj4gPmIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9jZGNsay5jCj4+ID5pbmRleCBkMGJjNDJlNTAzOWMuLjFkNmM3YmM3OTQ3MCAxMDA2NDQKPj4g
Pi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwo+PiA+Kysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCj4+ID5AQCAtMjYx
MCw2ICsyNjEwLDI0IEBAIHN0YXRpYyBpbnQgaW50ZWxfY29tcHV0ZV9tYXhfZG90Y2xrKHN0cnVj
dAo+PiA+ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4+ID4gCQlyZXR1cm4gbWF4X2NkY2xr
X2ZyZXEqOTAvMTAwOwo+PiA+IH0KPj4gPgo+PiA+K2Jvb2wgbW9kZV9pc180ayhzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpIHsKPj4gPisJc3RydWN0IGludGVsX2NydGMgKmNydGM7
Cj4+ID4rCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZzsKPj4gPisKPj4gPisJ
Zm9yX2VhY2hfaW50ZWxfY3J0YygmZGV2X3ByaXYtPmRybSwgY3J0Yykgewo+PiA+KwkJcGlwZV9j
b25maWcgPSB0b19pbnRlbF9jcnRjX3N0YXRlKGNydGMtPmJhc2Uuc3RhdGUpOwo+PiA+Kwo+PiA+
KwkJaWYgKHBpcGVfY29uZmlnLT5iYXNlLmFjdGl2ZSkgewo+PiA+KwkJCWlmIChwaXBlX2NvbmZp
Zy0+cGlwZV9zcmNfdyA+PSBXSURUSF80SyAmJgo+PiA+KwkJCSAgICBwaXBlX2NvbmZpZy0+cGlw
ZV9zcmNfaCA+PSBIRUlHSFRfNEspCj4+ID4rCQkJCXJldHVybiB0cnVlOwo+PiA+KwkJfQo+PiA+
Kwl9Cj4+ID4rCj4+ID4rCXJldHVybiBmYWxzZTsKPj4gPit9Cj4+ID4rCj4+ID4gLyoqCj4+ID4g
ICogaW50ZWxfdXBkYXRlX21heF9jZGNsayAtIERldGVybWluZSB0aGUgbWF4aW11bSBzdXBwb3J0
IENEQ0xLCj4+ID5mcmVxdWVuY3kKPj4gPiAgKiBAZGV2X3ByaXY6IGk5MTUgZGV2aWNlCj4+ID5A
QCAtMjYyMCw3ICsyNjM4LDEzIEBAIHN0YXRpYyBpbnQgaW50ZWxfY29tcHV0ZV9tYXhfZG90Y2xr
KHN0cnVjdAo+PiA+ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4+ID4gICovCj4+ID4gdm9p
ZCBpbnRlbF91cGRhdGVfbWF4X2NkY2xrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dikgIHsKPj4gPi0JaWYgKElTX0VMS0hBUlRMQUtFKGRldl9wcml2KSkgewo+PiA+KwkvKgo+PiA+
KwkgKiBVc2UgbG93ZXIgQ0RDTEsgZnJlcXVlbmN5IG9uIFRpZ2VybGFrZSB3aGVuIHNlbGVjdGVk
Cj4+ID4rCSAqIG1vZGUgaXMgbGVzcyB0aGFuIDRrLgo+PiA+KwkgKi8KPj4gPisJaWYgKElOVEVM
X0dFTihkZXZfcHJpdikgPj0gMTIgJiYgIW1vZGVfaXNfNGsoZGV2X3ByaXYpKSB7Cj4+ID4rCQlk
ZXZfcHJpdi0+bWF4X2NkY2xrX2ZyZXEgPSAxNzI4MDA7Cj4+ID4rCX0gZWxzZSBpZiAoSVNfRUxL
SEFSVExBS0UoZGV2X3ByaXYpKSB7Cj4+Cj4+IFNldHRpbmcgdGhlIG1heCBjZCBjbG9jayBzdXBw
b3J0ZWQgaXRzZWxmIHRvIGEgbG93ZXIgdmFsdWUgaXMgbm90IGEgZ29vZCBpZGVhLgo+PiBUaGlz
IHNob3VsZCByZXR1cm4gd2hhdCBpcyB0aGUgbWF4IGZyZXF1ZW5jeSBvZiBjZCBjbG9jayB0aGUg
aGFyZHdhcmUgc3VwcG9ydHMuCj4+IERyaXZlciBpcyBub3QgZ29pbmcgdG8gcHJvZ3JhbSB0aGlz
IHRvIG1heCBiYXNlZCBvbiB0aGlzIGRhdGEuCj4+Cj4+IEFjdHVhbCBjZCBjbG9jayB3aGljaCB3
aWxsIGJlIHByb2dyYW1tZWQgaW4gaGFyZHdhcmUgc2hvdWxkIGJlIGJhc2VkCj4+IG9uIHRoZSBt
YXhpbXVtIHBpeGVsIGNsb2NrIHdlIGFyZSBkcml2aW5nLiBTbyBpZiB3ZSBhcmUgbm90IGRyaXZp
bmcgNEsKPj4gYW5kIHNheSBhdCAxOTIweDEwODAsIHBpeGVsIGNsb2NrIHdpbGwgYmUgbGVzcyBh
bmQgd2Ugc2hvdWxkIGJlCj4+IHNlbGVjdGluZyBhIGxvd2VyIHZhbHVlIG9mIGNkIGNsb2NrIGlu
IHRoYXQgY2FzZSB3aGljaCBnZXRzIHByb2dyYW1tZWQKPj4gaW4gQ0RDTEtfQ1RMLiBCdXQgbWF4
IGNkIGNsb2NrIHN0aWxsIHJlbWFpbnMgd2hhdCBtYXhpbXVtIHRoZSBwbGF0Zm9ybSBjYW4KPnN1
cHBvcnQuIFlvdSBjYW4gY2hlY2sgaW50ZWxfY29tcHV0ZV9taW5fY2RjbGsgd2hpY2ggY2FsY3Vs
YXRlcyB0aGUgbWluaW11bSBjZAo+Y2xvY2sgcmVxdWlyZWQuCj4+Cj4+IFNvIHdoZW4gd2UganVz
dCBoYXZlIDE5MjB4MTA4MEA2MEh6IHBpeGVsIGNsb2NrIG9mIDE0ODUwMCwgbWluIGNkCj4+IGNs
b2NrIHJlcXVpcmVkIHNob3VsZCBiZSAxNDg1MDAgYW5kIG5lYXJlc3QgaGlnaGVyIHZhbHVlIG9m
IENEIENsb2NrIHdpbGwgYmUKPjE3Mi44TWh6Lgo+PiBTaW1pbGFybHkgZm9yIDQwOTZ4MjE2MEA2
MCwgcGl4ZWwgY2xvY2sgNTU2MTg4LCBtaW4gY2QgY2xvY2sKPj4gY2FsY3VsYXRlZCB3aWxsIGJl
IDU1Ni4xODggTUh6LCB0aHVzIGdldHRpbmcgbmVhcmVzdCBzdXBwb3J0ZWQgY2QgY2xvY2sgdmFs
dWUgb2YKPjU1NiBvciA2NDhNaHouCj4+Cj4+IFRoaXMgc2hvdWxkIGJlIHRha2VuIGNhcmUgYnkg
dGhpcyBsb2dpYyBpbiBkcml2ZXIuCj4+Cj4+IEFsc28gd2l0aCB0aGUgY3VycmVudCBwYXRjaCwg
bW9kZXMgbGlrZSAyNTYweDE2MDBANjAsIHBpeGVsIGNsb2NrCj4+IDI2OC41TUh6IHdpbGwgbm90
IHdvcmsuIFRoaXMgd2lsbCBuZWVkIGNkIGNsb2NrIG9mIDMyNE1oeiAob3IgMzA3LCAzMTIgd2hh
dGV2ZXIKPmFyZSBzdXBwb3J0ZWQgb24gdGhlIHBsYXRmb3JtLgo+Cj5nbGsrIHB1bXAgb3V0IHR3
byBwaXhlbHMgcGVyIGNsb2NrLCBzbyB3ZSBuZWVkIGhhbGYgb2Ygd2hhdCB5b3Ugc2FpZC4KClll
YWggY29ycmVjdCBWaWxsZS4gRnJvbSBHTEsrIGl0cyAyIHBpeGVscyBwZXIgY2xvY2suCgo+Pgo+
PiA+IAkJaWYgKGRldl9wcml2LT5jZGNsay5ody5yZWYgPT0gMjQwMDApCj4+ID4gCQkJZGV2X3By
aXYtPm1heF9jZGNsa19mcmVxID0gNTUyMDAwOwo+PiA+IAkJZWxzZQo+PiA+ZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuaAo+PiA+Yi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmgKPj4gPmluZGV4IDRkNmY3ZjVmODkz
MC4uY2VmYjUxNDZkZGNhIDEwMDY0NAo+PiA+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9jZGNsay5oCj4+ID4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2NkY2xrLmgKPj4gPkBAIC0xNSw2ICsxNSw5IEBAIHN0cnVjdCBpbnRlbF9hdG9taWNf
c3RhdGU7ICBzdHJ1Y3QKPj4gPmludGVsX2NkY2xrX3N0YXRlOyAgc3RydWN0IGludGVsX2NydGNf
c3RhdGU7Cj4+ID4KPj4gPisjZGVmaW5lIFdJRFRIXzRLICAzODYwCj4+ID4rI2RlZmluZSBIRUlH
SFRfNEsgMjE2MAo+PiA+Kwo+PiA+IGludCBpbnRlbF9jcnRjX2NvbXB1dGVfbWluX2NkY2xrKGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlCj4+ID4qY3J0Y19zdGF0ZSk7ICB2b2lkIGludGVs
X2NkY2xrX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwo+PiA+dm9pZCBpbnRl
bF9jZGNsa191bmluaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwo+PiA+LS0KPj4g
PjIuMTcuMQo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+PiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKPj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngKPgo+LS0KPlZpbGxlIFN5cmrDpGzDpAo+SW50ZWwKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
