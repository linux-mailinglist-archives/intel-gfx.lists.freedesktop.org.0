Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F17F113B65
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2019 06:44:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CFE86F557;
	Thu,  5 Dec 2019 05:44:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88CDD6F557
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2019 05:44:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Dec 2019 21:44:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,279,1571727600"; d="scan'208";a="361812793"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga004.jf.intel.com with ESMTP; 04 Dec 2019 21:44:40 -0800
Received: from fmsmsx113.amr.corp.intel.com (10.18.116.7) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 4 Dec 2019 21:44:40 -0800
Received: from bgsmsx106.gar.corp.intel.com (10.223.43.196) by
 FMSMSX113.amr.corp.intel.com (10.18.116.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 4 Dec 2019 21:44:40 -0800
Received: from BGSMSX108.gar.corp.intel.com ([169.254.8.190]) by
 BGSMSX106.gar.corp.intel.com ([169.254.1.134]) with mapi id 14.03.0439.000;
 Thu, 5 Dec 2019 11:14:36 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3 06/13] drm/i915/dsc: add support for computing and
 writing PPS for DSI encoders
Thread-Index: AQHVpF+IQS0QaUN5vE6So+e2R/nrraerEfTA
Date: Thu, 5 Dec 2019 05:44:35 +0000
Message-ID: <57510F3E2013164E925CD03ED7512A3B809D9AFE@BGSMSX108.gar.corp.intel.com>
References: <cover.1574775655.git.jani.nikula@intel.com>
 <1026c6bb4c002fc8caada18fbf4ee9b5948a1d18.1574775655.git.jani.nikula@intel.com>
In-Reply-To: <1026c6bb4c002fc8caada18fbf4ee9b5948a1d18.1574775655.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiOTdhZjY2ZDAtNjJmZS00OGJiLThhNGMtNGNjNDZjZDNlYWE3IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiJtUzhGSmpmNlB0Q3lqRFZHUVpuTlR2VCtHdDBOV3VNZ2NXRmlaeEJ2MTFleWhiZXlHYkROQnZyQ255SUs1Y2M5In0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 06/13] drm/i915/dsc: add support for
 computing and writing PPS for DSI encoders
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBKYW5pIE5pa3VsYSA8amFuaS5u
aWt1bGFAaW50ZWwuY29tPg0KPiBTZW50OiBUdWVzZGF5LCBOb3ZlbWJlciAyNiwgMjAxOSA3OjEz
IFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBOaWt1bGEs
IEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT47IE5hdmFyZSwgTWFuYXNpIEQNCj4gPG1hbmFz
aS5kLm5hdmFyZUBpbnRlbC5jb20+OyBLdWxrYXJuaSwgVmFuZGl0YQ0KPiA8dmFuZGl0YS5rdWxr
YXJuaUBpbnRlbC5jb20+OyBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjMgMDYvMTNdIGRybS9pOTE1L2RzYzogYWRkIHN1
cHBvcnQgZm9yIGNvbXB1dGluZyBhbmQNCj4gd3JpdGluZyBQUFMgZm9yIERTSSBlbmNvZGVycw0K
PiANCj4gQWRkIERTSSBzcGVjaWZpYyBjb21wdXRhdGlvbiBhbmQgdHJhbnNtaXNzaW9uIHRvIGRp
c3BsYXkgb2YgUFBTLg0KPiANCj4gV2l0aCBob3BlcyB0aGF0IHRoaXMgYXBwcm9hY2ggd2lsbCB3
b3JrIGZvciBib3RoIERQIGFuZCBEU0kgZW5jb2RlcnMuDQo+IA0KPiBDYzogTWFuYXNpIE5hdmFy
ZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4NCj4gQ2M6IFZhbmRpdGEgS3Vsa2FybmkgPHZh
bmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPg0KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Zkc2MuYyB8IDI1ICsrKysrKysrKysrKysrKysrKysrKystDQo+ICAxIGZpbGUg
Y2hhbmdlZCwgMjQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jDQo+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMNCj4gaW5kZXggYzUzMDI0ZGZiMWVj
Li43YmQ3MjcxMjlhOGYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfdmRzYy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfdmRzYy5jDQo+IEBAIC0xMCw2ICsxMCw3IEBADQo+IA0KPiAgI2luY2x1ZGUgImk5MTVfZHJ2
LmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV90eXBlcy5oIg0KPiArI2luY2x1ZGUgImlu
dGVsX2RzaS5oIg0KPiAgI2luY2x1ZGUgImludGVsX3Zkc2MuaCINCj4gDQo+ICBlbnVtIFJPV19J
TkRFWF9CUFAgew0KPiBAQCAtODQ0LDYgKzg0NSwyNSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kc2Nf
cHBzX2NvbmZpZ3VyZShzdHJ1Y3QNCj4gaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gIAl9DQo+
ICB9DQo+IA0KPiArc3RhdGljIHZvaWQgaW50ZWxfZHNjX2RzaV9wcHNfd3JpdGUoc3RydWN0IGlu
dGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ICsJCQkJICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlKSB7DQo+ICsJY29uc3Qgc3RydWN0IGRybV9kc2NfY29uZmlnICp2
ZHNjX2NmZyA9ICZjcnRjX3N0YXRlLT5kc2MuY29uZmlnOw0KPiArCXN0cnVjdCBpbnRlbF9kc2kg
KmludGVsX2RzaSA9IGVuY190b19pbnRlbF9kc2koJmVuY29kZXItPmJhc2UpOw0KPiArCXN0cnVj
dCBtaXBpX2RzaV9kZXZpY2UgKmRzaTsNCj4gKwlzdHJ1Y3QgZHJtX2RzY19waWN0dXJlX3BhcmFt
ZXRlcl9zZXQgcHBzOw0KPiArCWVudW0gcG9ydCBwb3J0Ow0KPiArDQo+ICsJZHJtX2RzY19wcHNf
cGF5bG9hZF9wYWNrKCZwcHMsIHZkc2NfY2ZnKTsNCj4gKw0KPiArCWZvcl9lYWNoX2RzaV9wb3J0
KHBvcnQsIGludGVsX2RzaS0+cG9ydHMpIHsNCj4gKwkJZHNpID0gaW50ZWxfZHNpLT5kc2lfaG9z
dHNbcG9ydF0tPmRldmljZTsNCj4gKw0KPiArCQltaXBpX2RzaV9waWN0dXJlX3BhcmFtZXRlcl9z
ZXQoZHNpLCAmcHBzKTsNCj4gKwkJbWlwaV9kc2lfY29tcHJlc3Npb25fbW9kZShkc2ksIHRydWUp
Ow0KPiArCX0NCj4gK30NCj4gKw0KPiAgc3RhdGljIHZvaWQgaW50ZWxfZHNjX2RwX3Bwc193cml0
ZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gIAkJCQkgICBjb25zdCBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkgIHsNCj4gQEAgLTg4Miw3ICs5MDIsMTAgQEAg
dm9pZCBpbnRlbF9kc2NfZW5hYmxlKHN0cnVjdCBpbnRlbF9lbmNvZGVyDQo+ICplbmNvZGVyLA0K
PiANClNsaWdodGx5IG91dCBvZiBzY29wZSBvZiB0aGlzIHBhdGNoLCBidXQgSSBzZWUgdGhhdCB3
aGlsZSBjb25maWd1cmluZyBQUFM5LCB3ZSBhcmUgdXNpbmcgZGlyZWN0IG1hY3JvcyBhbmQgbm90
IHVzaW5nIGFueXRoaW5nIGZyb20NCnZkc2NfY2ZnLT5yY19tb2RlbF9zaXplIGFuZCB3ZSBoYXZl
IG5vdCBpbml0aWFsaXplZCB2ZHNjX2NmZy0+IHJjX2VkZ2VfZmFjdG9yDQoNCj4gIAlpbnRlbF9k
c2NfcHBzX2NvbmZpZ3VyZShlbmNvZGVyLCBjcnRjX3N0YXRlKTsNCj4gDQpPdGhlciB0aGFuIHRo
YXQsIHRoaXMgcGF0Y2ggTEdUTS4NClJldmlld2VkLWJ5OiBWYW5kaXRhIEt1bGthcm5pIDx2YW5k
aXRhLmt1bGthcm5pQGludGVsLmNvbT4NCg0KVGhhbmtzLA0KVmFuZGl0YQ0KPiAtCWludGVsX2Rz
Y19kcF9wcHNfd3JpdGUoZW5jb2RlciwgY3J0Y19zdGF0ZSk7DQo+ICsJaWYgKGVuY29kZXItPnR5
cGUgPT0gSU5URUxfT1VUUFVUX0RTSSkNCj4gKwkJaW50ZWxfZHNjX2RzaV9wcHNfd3JpdGUoZW5j
b2RlciwgY3J0Y19zdGF0ZSk7DQo+ICsJZWxzZQ0KPiArCQlpbnRlbF9kc2NfZHBfcHBzX3dyaXRl
KGVuY29kZXIsIGNydGNfc3RhdGUpOw0KPiANCj4gIAlpZiAoY3J0Y19zdGF0ZS0+Y3B1X3RyYW5z
Y29kZXIgPT0gVFJBTlNDT0RFUl9FRFApIHsNCj4gIAkJZHNzX2N0bDFfcmVnID0gRFNTX0NUTDE7
DQo+IC0tDQo+IDIuMjAuMQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
