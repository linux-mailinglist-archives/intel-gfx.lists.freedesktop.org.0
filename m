Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53FB5B99E0
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Sep 2019 00:58:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EACD36FE13;
	Fri, 20 Sep 2019 22:58:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD1656FE12
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 22:58:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Sep 2019 15:58:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,530,1559545200"; d="scan'208";a="194821737"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by FMSMGA003.fm.intel.com with ESMTP; 20 Sep 2019 15:58:44 -0700
Received: from fmsmsx101.amr.corp.intel.com (10.18.124.199) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 20 Sep 2019 15:58:44 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.40]) by
 fmsmsx101.amr.corp.intel.com ([169.254.1.243]) with mapi id 14.03.0439.000;
 Fri, 20 Sep 2019 15:58:44 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "lucas.de.marchi@gmail.com" <lucas.de.marchi@gmail.com>
Thread-Topic: [Intel-gfx] [PATCH v2 08/13] drm/i915/tgl: Add dkl phy
 programming sequences
Thread-Index: AQHVbn5ClUy5QQVY5EeHqWp/R2e/pKc1kaGAgAAUoYA=
Date: Fri, 20 Sep 2019 22:58:43 +0000
Message-ID: <ad3a72a620ae5dd68d91587dfd0db997025bb999.camel@intel.com>
References: <20190919000726.267988-1-jose.souza@intel.com>
 <20190919000726.267988-9-jose.souza@intel.com>
 <CAKi4VAKbuuuqj=_qtkFsMZ3VTpc8ctDfQXAZbzz_u5swUh02Wg@mail.gmail.com>
In-Reply-To: <CAKi4VAKbuuuqj=_qtkFsMZ3VTpc8ctDfQXAZbzz_u5swUh02Wg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.7.200.158]
Content-ID: <D6042D19BEF95A4C9051C81C4BAF467D@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 08/13] drm/i915/tgl: Add dkl phy
 programming sequences
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

T24gRnJpLCAyMDE5LTA5LTIwIGF0IDE0OjQ0IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IE9uIFdlZCwgU2VwIDE4LCAyMDE5IGF0IDU6MDcgUE0gSm9zw6kgUm9iZXJ0byBkZSBTb3V6
YQ0KPiA8am9zZS5zb3V6YUBpbnRlbC5jb20+IHdyb3RlOg0KPiA+IEZyb206IENsaW50b24gQSBU
YXlsb3IgPGNsaW50b24uYS50YXlsb3JAaW50ZWwuY29tPg0KPiA+IA0KPiA+IEFkZGVkIERLTCBQ
aHkgc2VxdWVuY2VzIGFuZCBoZWxwZXJzIGZ1bmN0aW9ucyB0byBwcm9ncmFtIHZvbHRhZ2UNCj4g
PiBzd2luZywgY2xvY2sgZ2F0aW5nIGFuZCBkcCBtb2RlLg0KPiA+IA0KPiA+IEl0IGlzIG5vdCB3
cml0dGVuIGluIERQIGVuYWJsaW5nIHNlcXVlbmNlIGJ1dCAiUEhZIENsb2NrZ2F0aW5nDQo+ID4g
cHJvZ3JhbW1pbmciIHN0YXRlcyB0aGF0IGNsb2NrIGdhdGluZyBzaG91bGQgYmUgZW5hYmxlZCBh
ZnRlciB0aGUNCj4gPiBsaW5rIHRyYWluaW5nIGJ1dCBkb2luZyBzbyBjYXVzZXMgYWxsIHRoZSBm
b2xsb3dpbmcgdHJhaW5pbmdzIHRvDQo+ID4gZmFpbA0KPiA+IHNvIG5vdCBlbmFibGluZyBpdCBm
b3IuDQo+ID4gDQo+ID4gdjI6DQo+ID4gU2V0dGluZyB0aGUgcmlnaHQgSElQX0lOREVYX1JFRyBi
aXRzIChKb3PDqSkNCj4gPiANCj4gPiBCU3BlYzogNDkyOTINCj4gPiBCU3BlYzogNDkxOTANCj4g
PiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXph
QGludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBDbGludG9uIEEgVGF5bG9yIDxjbGludG9u
LmEudGF5bG9yQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kZGkuYyB8IDI0Ng0KPiA+ICsrKysrKysrKysrKysrKysrKysrKy0tDQo+
ID4gIDEgZmlsZSBjaGFuZ2VkLCAyMzQgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pDQo+
ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGRpLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4g
PiBpbmRleCA4MTc5MmEwNGUwYWEuLmZkMjcxMTE4ZDFmNSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiA+IEBAIC01ODYsNiArNTg2LDI1IEBA
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgaWNsX21nX3BoeV9kZGlfYnVmX3RyYW5zDQo+ID4gaWNsX21n
X3BoeV9kZGlfdHJhbnNsYXRpb25zW10gPSB7DQo+ID4gICAgICAgICB7IDB4MCwgMHgwMCwgMHgw
MCB9LCAgICAvKiAzICAgICAgICAgICAgICAwICAgKi8NCj4gPiAgfTsNCj4gPiANCj4gPiArc3Ry
dWN0IHRnbF9ka2xfcGh5X2RkaV9idWZfdHJhbnMgew0KPiA+ICsgICAgICAgdTMyIGRrbF92c3dp
bmdfY29udHJvbDsNCj4gPiArICAgICAgIHUzMiBka2xfcHJlc2hvb3RfY29udHJvbDsNCj4gPiAr
ICAgICAgIHUzMiBka2xfZGVfZW1waGFzaXNfY29udHJvbDsNCj4gPiArfTsNCj4gPiArDQo+ID4g
K3N0YXRpYyBjb25zdCBzdHJ1Y3QgdGdsX2RrbF9waHlfZGRpX2J1Zl90cmFucw0KPiA+IHRnbF9k
a2xfcGh5X2RkaV90cmFuc2xhdGlvbnNbXSA9IHsNCj4gDQo+IGNvbW1lbnQgaGVyZSBsaWtlIGlu
IHRoZSBpY2wgdmVyc2lvbiB3aXRoIHRoZSBtZWFuaW5nIG9mIHRoZSBjb21tZW50cw0KPiB3b3Vs
ZCBiZSBnb29kDQoNCk9rYXkNCg0KPiANCj4gPiArICAgICAgIHsgMHg3LCAweDAsIDB4MDAgfSwg
ICAgIC8qIDAgICAgIDAgICA0MDBtViAgMCBkQiAgICovDQo+ID4gKyAgICAgICB7IDB4NSwgMHgw
LCAweDAzIH0sICAgICAvKiAwICAgICAxICAgNDAwbVYgIDMuNSBkQiAqLw0KPiA+ICsgICAgICAg
eyAweDIsIDB4MCwgMHgwYiB9LCAgICAgLyogMCAgICAgMiAgIDQwMG1WICA2IGRCICAgKi8NCj4g
PiArICAgICAgIHsgMHgwLCAweDAsIDB4MTkgfSwgICAgIC8qIDAgICAgIDMgICA0MDBtViAgOS41
IGRCICovDQo+ID4gKyAgICAgICB7IDB4NSwgMHgwLCAweDAwIH0sICAgICAvKiAxICAgICAwICAg
NjAwbVYgIDAgZEIgICAqLw0KPiANCj4gcHJlLWVtcGhhc2lzIGhlcmUgaXMgMS4gQW5kIHRoZSBv
dGhlcnMgYmVsb3cgYXJlIHdyb25nLCB0b28uDQoNCkkgdGhvdWdodCB0aGF0IHRvbyBidXQgYmFz
ZWQgb24gdGhlIGluZGV4X3RvX2RwX3NpZ25hbF9sZXZlbHMgdGFibGUgYW5kDQp0aGUgdmFsdWVz
IG9uICJQcmUtZW1waGFzaXMgZEIiIGNvbHVtbiBpcyBtb3N0bHkgbGlrZWx5IHRoYXQgQlNwZWMg
aGFzDQphIHR5cG8sIGlzc3VlIHdhcyBhbHJlYWR5IG9wZW4gZm9yIHRoYXQgb24gQlNwZWMuDQoN
Cj4gDQo+ID4gKyAgICAgICB7IDB4MiwgMHgwLCAweDAzIH0sICAgICAvKiAxICAgICAxICAgNjAw
bVYgIDMuNSBkQiAqLw0KPiA+ICsgICAgICAgeyAweDAsIDB4MCwgMHgxNCB9LCAgICAgLyogMSAg
ICAgMiAgIDYwMG1WICA2IGRCICAgKi8NCj4gPiArICAgICAgIHsgMHgyLCAweDAsIDB4MDAgfSwg
ICAgIC8qIDIgICAgIDAgICA4MDBtViAgMCBkQiAgICovDQo+ID4gKyAgICAgICB7IDB4MCwgMHgw
LCAweDBCIH0sICAgICAvKiAyICAgICAxICAgODAwbVYgIDMuNSBkQiAqLw0KPiA+ICsgICAgICAg
eyAweDAsIDB4MCwgMHgwMCB9LCAgICAgLyogMyAgICAgMCAgMTIwMG1WICAwIGRCICAgIEhETUkN
Cj4gPiBEZWZhdWx0ICovDQo+ID4gK307DQo+ID4gKw0KPiA+ICBzdGF0aWMgY29uc3Qgc3RydWN0
IGRkaV9idWZfdHJhbnMgKg0KPiA+ICBiZHdfZ2V0X2J1Zl90cmFuc19lZHAoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2LCBpbnQNCj4gPiAqbl9lbnRyaWVzKQ0KPiA+ICB7DQo+ID4g
QEAgLTg3MywxMSArODkyLDE1IEBAIHN0YXRpYyBpbnQgaW50ZWxfZGRpX2hkbWlfbGV2ZWwoc3Ry
dWN0DQo+ID4gZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcG9ydCBwb3INCj4gPiAg
ICAgICAgIGxldmVsID0gZGV2X3ByaXYtPnZidC5kZGlfcG9ydF9pbmZvW3BvcnRdLmhkbWlfbGV2
ZWxfc2hpZnQ7DQo+ID4gDQo+ID4gICAgICAgICBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAx
MSkgew0KPiA+IC0gICAgICAgICAgICAgICBpZiAoaW50ZWxfcGh5X2lzX2NvbWJvKGRldl9wcml2
LCBwaHkpKQ0KPiA+ICsgICAgICAgICAgICAgICBpZiAoaW50ZWxfcGh5X2lzX2NvbWJvKGRldl9w
cml2LCBwaHkpKSB7DQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgaWNsX2dldF9jb21ib19i
dWZfdHJhbnMoZGV2X3ByaXYsDQo+ID4gSU5URUxfT1VUUFVUX0hETUksDQo+ID4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMCwgJm5fZW50cmllcyk7DQo+
ID4gLSAgICAgICAgICAgICAgIGVsc2UNCj4gPiAtICAgICAgICAgICAgICAgICAgICAgICBuX2Vu
dHJpZXMgPQ0KPiA+IEFSUkFZX1NJWkUoaWNsX21nX3BoeV9kZGlfdHJhbnNsYXRpb25zKTsNCj4g
PiArICAgICAgICAgICAgICAgfSBlbHNlIHsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICBp
ZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikNCj4gPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIG5fZW50cmllcyA9DQo+ID4gQVJSQVlfU0laRSh0Z2xfZGtsX3BoeV9kZGlfdHJh
bnNsYXRpb25zKTsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICBlbHNlDQo+ID4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBuX2VudHJpZXMgPQ0KPiA+IEFSUkFZX1NJWkUoaWNs
X21nX3BoeV9kZGlfdHJhbnNsYXRpb25zKTsNCj4gPiArICAgICAgICAgICAgICAgfQ0KPiA+ICAg
ICAgICAgICAgICAgICBkZWZhdWx0X2VudHJ5ID0gbl9lbnRyaWVzIC0gMTsNCj4gDQo+IEkgdGhp
bmsgcGxhaW4gbGFkZGVyIHdvdWxkIGJlIGJldHRlci4gSnVzdCBhZGQgb25lIGZvcg0KPiBJTlRF
TF9HRU4oZGV2X3ByaXYpID49IDEyKQ0KDQpPa2F5DQoNCj4gDQo+ID4gICAgICAgICB9IGVsc2Ug
aWYgKElTX0NBTk5PTkxBS0UoZGV2X3ByaXYpKSB7DQo+ID4gICAgICAgICAgICAgICAgIGNubF9n
ZXRfYnVmX3RyYW5zX2hkbWkoZGV2X3ByaXYsICZuX2VudHJpZXMpOw0KPiA+IEBAIC0yMzA4LDEx
ICsyMzMxLDE1IEBAIHU4IGludGVsX2RkaV9kcF92b2x0YWdlX21heChzdHJ1Y3QNCj4gPiBpbnRl
bF9lbmNvZGVyICplbmNvZGVyKQ0KPiA+ICAgICAgICAgaW50IG5fZW50cmllczsNCj4gPiANCj4g
PiAgICAgICAgIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKSB7DQo+ID4gLSAgICAgICAg
ICAgICAgIGlmIChpbnRlbF9waHlfaXNfY29tYm8oZGV2X3ByaXYsIHBoeSkpDQo+ID4gKyAgICAg
ICAgICAgICAgIGlmIChpbnRlbF9waHlfaXNfY29tYm8oZGV2X3ByaXYsIHBoeSkpIHsNCj4gPiAg
ICAgICAgICAgICAgICAgICAgICAgICBpY2xfZ2V0X2NvbWJvX2J1Zl90cmFucyhkZXZfcHJpdiwg
ZW5jb2Rlci0NCj4gPiA+dHlwZSwNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBpbnRlbF9kcC0NCj4gPiA+bGlua19yYXRlLCAmbl9lbnRyaWVzKTsN
Cj4gPiAtICAgICAgICAgICAgICAgZWxzZQ0KPiA+IC0gICAgICAgICAgICAgICAgICAgICAgIG5f
ZW50cmllcyA9DQo+ID4gQVJSQVlfU0laRShpY2xfbWdfcGh5X2RkaV90cmFuc2xhdGlvbnMpOw0K
PiA+ICsgICAgICAgICAgICAgICB9IGVsc2Ugew0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
IGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKQ0KPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgbl9lbnRyaWVzID0NCj4gPiBBUlJBWV9TSVpFKHRnbF9ka2xfcGh5X2RkaV90
cmFuc2xhdGlvbnMpOw0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGVsc2UNCj4gPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIG5fZW50cmllcyA9DQo+ID4gQVJSQVlfU0laRShp
Y2xfbWdfcGh5X2RkaV90cmFuc2xhdGlvbnMpOw0KPiA+ICsgICAgICAgICAgICAgICB9DQo+IA0K
PiBkaXR0bw0KDQpPa2F5DQoNCj4gDQo+ID4gICAgICAgICB9IGVsc2UgaWYgKElTX0NBTk5PTkxB
S0UoZGV2X3ByaXYpKSB7DQo+ID4gICAgICAgICAgICAgICAgIGlmIChlbmNvZGVyLT50eXBlID09
IElOVEVMX09VVFBVVF9FRFApDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgY25sX2dldF9i
dWZfdHJhbnNfZWRwKGRldl9wcml2LA0KPiA+ICZuX2VudHJpZXMpOw0KPiA+IEBAIC0yNzQ5LDYg
KzI3NzYsNjYgQEAgc3RhdGljIHZvaWQgaWNsX2RkaV92c3dpbmdfc2VxdWVuY2Uoc3RydWN0DQo+
ID4gaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gPiAgICAgICAgICAgICAgICAgaWNsX21nX3Bo
eV9kZGlfdnN3aW5nX3NlcXVlbmNlKGVuY29kZXIsIGxpbmtfY2xvY2ssDQo+ID4gbGV2ZWwpOw0K
PiA+ICB9DQo+ID4gDQo+ID4gK3N0YXRpYyB2b2lkDQo+ID4gK3RnbF9ka2xfcGh5X2RkaV92c3dp
bmdfc2VxdWVuY2Uoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsIGludA0KPiA+IGxpbmtf
Y2xvY2ssDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1MzIgbGV2ZWwpDQo+
ID4gK3sNCj4gPiArICAgICAgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRv
X2k5MTUoZW5jb2Rlci0NCj4gPiA+YmFzZS5kZXYpOw0KPiA+ICsgICAgICAgZW51bSB0Y19wb3J0
IHRjX3BvcnQgPSBpbnRlbF9wb3J0X3RvX3RjKGRldl9wcml2LCBlbmNvZGVyLQ0KPiA+ID5wb3J0
KTsNCj4gPiArICAgICAgIGNvbnN0IHN0cnVjdCB0Z2xfZGtsX3BoeV9kZGlfYnVmX3RyYW5zICpk
ZGlfdHJhbnNsYXRpb25zOw0KPiA+ICsgICAgICAgdTMyIG5fZW50cmllcywgdmFsLCBsbjsNCj4g
PiArDQo+ID4gKyAgICAgICBuX2VudHJpZXMgPSBBUlJBWV9TSVpFKHRnbF9ka2xfcGh5X2RkaV90
cmFuc2xhdGlvbnMpOw0KPiA+ICsgICAgICAgZGRpX3RyYW5zbGF0aW9ucyA9IHRnbF9ka2xfcGh5
X2RkaV90cmFuc2xhdGlvbnM7DQo+ID4gKw0KPiA+ICsgICAgICAgaWYgKGxldmVsID4gbl9lbnRy
aWVzKQ0KPiA+ID0gPw0KPiANCj4gT3RoZXJ3aXNlIHlvdSB3aWxsIGFjY2VzcyBnYXJiYWdlIGJl
bG93DQoNCkRvbmUNCg0KPiANCj4gPiArICAgICAgICAgICAgICAgbGV2ZWwgPSBuX2VudHJpZXMg
LSAxOw0KPiA+ICsNCj4gPiArICAgICAgIC8qDQo+ID4gKyAgICAgICAgKiBBbGwgcmVnaXN0ZXJz
IHByb2dyYW1tZWQgaGVyZSB1c2UgSElQX0lOREVYX1JFRyAwIG9yIDENCj4gPiArICAgICAgICAq
Lw0KPiA+ICsgICAgICAgZm9yIChsbiA9IDA7IGxuIDwgMjsgbG4rKykgew0KPiA+ICsgICAgICAg
ICAgICAgICBJOTE1X1dSSVRFKEhJUF9JTkRFWF9SRUcodGNfcG9ydCksDQo+ID4gSElQX0lOREVY
X1ZBTCh0Y19wb3J0LCBsbikpOw0KPiA+ICsNCj4gPiArICAgICAgICAgICAgICAgLyogQWxsIHRo
ZSByZWdpc3RlcnMgYXJlIFJNVyAqLw0KPiA+ICsgICAgICAgICAgICAgICB2YWwgPSBJOTE1X1JF
QUQoREtMX1RYX0RQQ05UTDAodGNfcG9ydCkpOw0KPiA+ICsgICAgICAgICAgICAgICB2YWwgJj0g
fihES0xfVFhfUFJFU0hPT1RfQ09FRkZfTUFTSyB8DQo+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgIERLTF9UWF9ERV9FTVBBSFNJU19DT0VGRl9NQVNLIHwNCj4gPiArICAgICAgICAgICAgICAg
ICAgICAgICAgREtMX1RYX1ZTV0lOR19DT05UUk9MX01BU0spOw0KPiA+ICsgICAgICAgICAgICAg
ICB2YWwgfD0NCj4gPiBES0xfVFhfVlNXSU5HX0NPTlRST0woZGRpX3RyYW5zbGF0aW9uc1tsZXZl
bF0uZGtsX3Zzd2luZ19jb250cm9sKTsNCj4gPiArICAgICAgICAgICAgICAgdmFsIHw9DQo+ID4g
REtMX1RYX0RFX0VNUEhBU0lTX0NPRUZGKGRkaV90cmFuc2xhdGlvbnNbbGV2ZWxdLmRrbF9kZV9l
bXBoYXNpc19jbw0KPiA+IG50cm9sKTsNCj4gPiArICAgICAgICAgICAgICAgdmFsIHw9DQo+ID4g
REtMX1RYX1BSRVNIT09UX0NPRUZGKGRkaV90cmFuc2xhdGlvbnNbbGV2ZWxdLmRrbF9wcmVzaG9v
dF9jb250cm9sKQ0KPiA+IDsNCj4gDQo+IEkgd29uZGVyIGhvdyB1c2VmdWwgaXQgaXMgdG8ga2Vl
cCB0aGVyZSB0aGUgZGtsX3ByZXNob290X2NvbnRyb2wgaWYNCj4gaXQncyBhbHdheXMgMA0KPiBC
dXQgd2UgaGF2ZSB0aGUgc2FtZSBiZWhhdmlvciBpbiBwcmV2aW91cyBwbGF0Zm9ybXMuLi4uIDot
LyBXZSBjYW4NCj4gbGVhdmUgaXQgZm9yIGxhdGVyDQo+IA0KPiA+ICsgICAgICAgICAgICAgICBJ
OTE1X1dSSVRFKERLTF9UWF9EUENOVEwwKHRjX3BvcnQpLCB2YWwpOw0KPiA+ICsNCj4gPiArICAg
ICAgICAgICAgICAgdmFsID0gSTkxNV9SRUFEKERLTF9UWF9EUENOVEwxKHRjX3BvcnQpKTsNCj4g
PiArICAgICAgICAgICAgICAgdmFsICY9IH4oREtMX1RYX1BSRVNIT09UX0NPRUZGX01BU0sgfA0K
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICBES0xfVFhfREVfRU1QQUhTSVNfQ09FRkZfTUFT
SyB8DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgIERLTF9UWF9WU1dJTkdfQ09OVFJPTF9N
QVNLKTsNCj4gPiArICAgICAgICAgICAgICAgdmFsIHw9DQo+ID4gREtMX1RYX1ZTV0lOR19DT05U
Uk9MKGRkaV90cmFuc2xhdGlvbnNbbGV2ZWxdLmRrbF92c3dpbmdfY29udHJvbCk7DQo+ID4gKyAg
ICAgICAgICAgICAgIHZhbCB8PQ0KPiA+IERLTF9UWF9ERV9FTVBIQVNJU19DT0VGRihkZGlfdHJh
bnNsYXRpb25zW2xldmVsXS5ka2xfZGVfZW1waGFzaXNfY28NCj4gPiBudHJvbCk7DQo+ID4gKyAg
ICAgICAgICAgICAgIHZhbCB8PQ0KPiA+IERLTF9UWF9QUkVTSE9PVF9DT0VGRihkZGlfdHJhbnNs
YXRpb25zW2xldmVsXS5ka2xfcHJlc2hvb3RfY29udHJvbCkNCj4gPiA7DQo+ID4gKyAgICAgICAg
ICAgICAgIEk5MTVfV1JJVEUoREtMX1RYX0RQQ05UTDEodGNfcG9ydCksIHZhbCk7DQo+ID4gKw0K
PiA+ICsgICAgICAgICAgICAgICB2YWwgPSBJOTE1X1JFQUQoREtMX1RYX0RQQ05UTDIodGNfcG9y
dCkpOw0KPiA+ICsgICAgICAgICAgICAgICB2YWwgJj0gfkRLTF9UWF9EUDIwQklUTU9ERTsNCj4g
PiArICAgICAgICAgICAgICAgSTkxNV9XUklURShES0xfVFhfRFBDTlRMMih0Y19wb3J0KSwgdmFs
KTsNCj4gPiArICAgICAgIH0NCj4gPiArfQ0KPiA+ICsNCj4gPiArc3RhdGljIHZvaWQgdGdsX2Rk
aV92c3dpbmdfc2VxdWVuY2Uoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+IA0KPiBp
bnRlbF9kZGlfcHJlX2VuYWJsZV9oZG1pKCkgaXMgbm90IGNhbGxpbmcgdGhpcyBmdW5jdGlvbi4N
Cg0KTmljZSBjYXRjaCwgdGhhbmtzDQoNCj4gDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgaW50IGxpbmtfY2xvY2ssDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgdTMyIGxldmVsLA0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIGVudW0gaW50ZWxfb3V0cHV0X3R5cGUgdHlwZSkNCj4gPiArew0KPiA+ICsgICAgICAg
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVyLQ0KPiA+
ID5iYXNlLmRldik7DQo+ID4gKyAgICAgICBlbnVtIHBoeSBwaHkgPSBpbnRlbF9wb3J0X3RvX3Bo
eShkZXZfcHJpdiwgZW5jb2Rlci0+cG9ydCk7DQo+ID4gKw0KPiA+ICsgICAgICAgaWYgKGludGVs
X3BoeV9pc19jb21ibyhkZXZfcHJpdiwgcGh5KSkNCj4gPiArICAgICAgICAgICAgICAgaWNsX2Nv
bWJvX3BoeV9kZGlfdnN3aW5nX3NlcXVlbmNlKGVuY29kZXIsIGxldmVsLA0KPiA+IHR5cGUpOw0K
PiA+ICsgICAgICAgZWxzZQ0KPiA+ICsgICAgICAgICAgICAgICB0Z2xfZGtsX3BoeV9kZGlfdnN3
aW5nX3NlcXVlbmNlKGVuY29kZXIsDQo+ID4gbGlua19jbG9jaywgbGV2ZWwpOw0KPiA+ICt9DQo+
ID4gKw0KPiA+ICBzdGF0aWMgdTMyIHRyYW5zbGF0ZV9zaWduYWxfbGV2ZWwoaW50IHNpZ25hbF9s
ZXZlbHMpDQo+ID4gIHsNCj4gPiAgICAgICAgIGludCBpOw0KPiA+IEBAIC0yNzgwLDcgKzI4Njcs
MTAgQEAgdTMyIGJ4dF9zaWduYWxfbGV2ZWxzKHN0cnVjdCBpbnRlbF9kcA0KPiA+ICppbnRlbF9k
cCkNCj4gPiAgICAgICAgIHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyID0gJmRwb3J0LT5i
YXNlOw0KPiA+ICAgICAgICAgaW50IGxldmVsID0gaW50ZWxfZGRpX2RwX2xldmVsKGludGVsX2Rw
KTsNCj4gPiANCj4gPiAtICAgICAgIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKQ0KPiA+
ICsgICAgICAgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpDQo+ID4gKyAgICAgICAgICAg
ICAgIHRnbF9kZGlfdnN3aW5nX3NlcXVlbmNlKGVuY29kZXIsIGludGVsX2RwLQ0KPiA+ID5saW5r
X3JhdGUsDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGxldmVs
LCBlbmNvZGVyLT50eXBlKTsNCj4gPiArICAgICAgIGVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJp
dikgPj0gMTEpDQo+ID4gICAgICAgICAgICAgICAgIGljbF9kZGlfdnN3aW5nX3NlcXVlbmNlKGVu
Y29kZXIsIGludGVsX2RwLQ0KPiA+ID5saW5rX3JhdGUsDQo+ID4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIGxldmVsLCBlbmNvZGVyLT50eXBlKTsNCj4gPiAgICAgICAg
IGVsc2UgaWYgKElTX0NBTk5PTkxBS0UoZGV2X3ByaXYpKQ0KPiA+IEBAIC0zMDI3LDYgKzMxMTcs
MzQgQEAgc3RhdGljIHZvaWQgaW50ZWxfZGRpX2Nsa19kaXNhYmxlKHN0cnVjdA0KPiA+IGludGVs
X2VuY29kZXIgKmVuY29kZXIpDQo+ID4gICAgICAgICB9DQo+ID4gIH0NCj4gPiANCj4gPiArc3Rh
dGljIHZvaWQNCj4gPiArdGdsX3BoeV9jbG9ja19nYXRpbmcoc3RydWN0IGludGVsX2RpZ2l0YWxf
cG9ydCAqZGlnX3BvcnQsIGJvb2wNCj4gPiBlbmFibGUpDQo+IA0KPiBzYW1lIGNvbW1lbnQgYXMg
b3RoZXIgY29tbWl0Li4uIHRnbF9waHlfc2V0X2Nsb2NrX2dhdGluZygpID8NCg0KRG9uZQ0KDQo+
IA0KPiA+ICt7DQo+ID4gKyAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYg
PSB0b19pOTE1KGRpZ19wb3J0LQ0KPiA+ID5iYXNlLmJhc2UuZGV2KTsNCj4gPiArICAgICAgIGVu
dW0gcG9ydCBwb3J0ID0gZGlnX3BvcnQtPmJhc2UucG9ydDsNCj4gPiArICAgICAgIGVudW0gdGNf
cG9ydCB0Y19wb3J0ID0gaW50ZWxfcG9ydF90b190YyhkZXZfcHJpdiwgcG9ydCk7DQo+ID4gKyAg
ICAgICB1MzIgdmFsLCByZWdzOw0KPiANCj4gcy9yZWdzL2JpdHMvDQoNCkRvbmUNCg0KPiANCj4g
PiArICAgICAgIGludCBsbjsNCj4gPiArDQo+ID4gKyAgICAgICBpZiAodGNfcG9ydCA9PSBQT1JU
X1RDX05PTkUpDQo+ID4gKyAgICAgICAgICAgICAgIHJldHVybjsNCj4gPiArDQo+ID4gKyAgICAg
ICByZWdzID0gREtMX0RQX01PREVfQ0ZHX1RSMlBXUl9HQVRJTkcgfA0KPiA+IERLTF9EUF9NT0RF
X0NGR19UUlBXUl9HQVRJTkcgfA0KPiA+ICsgICAgICAgICAgICAgIERLTF9EUF9NT0RFX0NGR19D
TE5QV1JfR0FUSU5HIHwNCj4gPiBES0xfRFBfTU9ERV9DRkdfRElHUFdSX0dBVElORyB8DQo+ID4g
KyAgICAgICAgICAgICAgREtMX0RQX01PREVfQ0ZHX0dBT05QV1JfR0FUSU5HOw0KPiA+ICsNCj4g
PiArICAgICAgIGZvciAobG4gPSAwOyBsbiA8IDI7IGxuKyspIHsNCj4gPiArICAgICAgICAgICAg
ICAgSTkxNV9XUklURShISVBfSU5ERVhfUkVHKHRjX3BvcnQpLA0KPiA+IEhJUF9JTkRFWF9WQUwo
dGNfcG9ydCwgbG4pKTsNCj4gPiArDQo+ID4gKyAgICAgICAgICAgICAgIHZhbCA9IEk5MTVfUkVB
RChES0xfRFBfTU9ERSh0Y19wb3J0KSk7DQo+ID4gKyAgICAgICAgICAgICAgIGlmIChlbmFibGUp
DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgdmFsIHw9IHJlZ3M7DQo+ID4gKyAgICAgICAg
ICAgICAgIGVsc2UNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICB2YWwgJj0gfnJlZ3M7DQo+
ID4gKyAgICAgICAgICAgICAgIEk5MTVfV1JJVEUoREtMX0RQX01PREUodGNfcG9ydCksIHZhbCk7
DQo+ID4gKyAgICAgICB9DQo+ID4gK30NCj4gPiArDQo+ID4gIHN0YXRpYyB2b2lkIGljbF9lbmFi
bGVfcGh5X2Nsb2NrX2dhdGluZyhzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0DQo+ID4gKmRpZ19w
b3J0KQ0KPiA+ICB7DQo+ID4gICAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYgPSB0b19pOTE1KGRpZ19wb3J0LQ0KPiA+ID5iYXNlLmJhc2UuZGV2KTsNCj4gPiBAQCAtMzE1
Myw2ICszMjcxLDk1IEBAIHN0YXRpYyB2b2lkIGljbF9wcm9ncmFtX21nX2RwX21vZGUoc3RydWN0
DQo+ID4gaW50ZWxfZGlnaXRhbF9wb3J0ICppbnRlbF9kaWdfcG9ydCkNCj4gPiAgICAgICAgIEk5
MTVfV1JJVEUoTUdfRFBfTU9ERSgxLCBwb3J0KSwgbG4xKTsNCj4gPiAgfQ0KPiA+IA0KPiA+ICtz
dGF0aWMgdm9pZCB0Z2xfcHJvZ3JhbV9ka2xfZHBfbW9kZShzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9w
b3J0DQo+ID4gKmludGVsX2RpZ19wb3J0KQ0KPiA+ICt7DQo+ID4gKyAgICAgICBzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGludGVsX2RpZ19wb3J0LQ0KPiA+ID5i
YXNlLmJhc2UuZGV2KTsNCj4gPiArICAgICAgIGVudW0gcG9ydCBwb3J0ID0gaW50ZWxfZGlnX3Bv
cnQtPmJhc2UucG9ydDsNCj4gPiArICAgICAgIGVudW0gdGNfcG9ydCB0Y19wb3J0ID0gaW50ZWxf
cG9ydF90b190YyhkZXZfcHJpdiwgcG9ydCk7DQo+ID4gKyAgICAgICB1MzIgbG4wLCBsbjEsIGxh
bmVfbWFzaywgcGluX21hc2s7DQo+ID4gKyAgICAgICBpbnQgbnVtX2xhbmVzOw0KPiA+ICsNCj4g
PiArICAgICAgIGlmICh0Y19wb3J0ID09IFBPUlRfVENfTk9ORSB8fA0KPiA+ICsgICAgICAgICAg
IGludGVsX2RpZ19wb3J0LT50Y19tb2RlID09IFRDX1BPUlRfVEJUX0FMVCkNCj4gPiArICAgICAg
ICAgICAgICAgcmV0dXJuOw0KPiA+ICsNCj4gPiArICAgICAgIEk5MTVfV1JJVEUoSElQX0lOREVY
X1JFRyh0Y19wb3J0KSwgSElQX0lOREVYX1ZBTCh0Y19wb3J0LA0KPiA+IDB4MCkpOw0KPiA+ICsg
ICAgICAgbG4wID0gSTkxNV9SRUFEKERLTF9EUF9NT0RFKHRjX3BvcnQpKTsNCj4gPiArICAgICAg
IEk5MTVfV1JJVEUoSElQX0lOREVYX1JFRyh0Y19wb3J0KSwgSElQX0lOREVYX1ZBTCh0Y19wb3J0
LA0KPiA+IDB4MSkpOw0KPiA+ICsgICAgICAgbG4xID0gSTkxNV9SRUFEKERLTF9EUF9NT0RFKHRj
X3BvcnQpKTsNCj4gPiArDQo+ID4gKyAgICAgICBudW1fbGFuZXMgPSBpbnRlbF9kaWdfcG9ydC0+
ZHAubGFuZV9jb3VudDsNCj4gPiArDQo+ID4gKyAgICAgICBzd2l0Y2ggKGludGVsX2RpZ19wb3J0
LT50Y19tb2RlKSB7DQo+ID4gKyAgICAgICBjYXNlIFRDX1BPUlRfRFBfQUxUOg0KPiA+ICsgICAg
ICAgICAgICAgICBsbjAgJj0gfihES0xfRFBfTU9ERV9DRkdfRFBfWDFfTU9ERSB8DQo+ID4gREtM
X0RQX01PREVfQ0ZHX0RQX1gxX01PREUpOw0KPiA+ICsgICAgICAgICAgICAgICBsbjEgJj0gfihE
S0xfRFBfTU9ERV9DRkdfRFBfWDFfTU9ERSB8DQo+ID4gREtMX0RQX01PREVfQ0ZHX0RQX1gyX01P
REUpOw0KPiA+ICsNCj4gPiArICAgICAgICAgICAgICAgbGFuZV9tYXNrID0NCj4gPiBpbnRlbF90
Y19wb3J0X2dldF9sYW5lX21hc2soaW50ZWxfZGlnX3BvcnQpOyAvKiBEUFg0VFhMQVRDICovDQo+
ID4gKyAgICAgICAgICAgICAgIHBpbl9tYXNrID0NCj4gPiBpbnRlbF90Y19wb3J0X2dldF9waW5f
YXNzaWdubWVudF9tYXNrKGludGVsX2RpZ19wb3J0KTsgLyogRFBQQVRDICovDQo+ID4gKw0KPiA+
ICsgICAgICAgICAgICAgICBzd2l0Y2ggKHBpbl9tYXNrKSB7DQo+ID4gKyAgICAgICAgICAgICAg
IGNhc2UgMHgwOg0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGlmIChudW1fbGFuZXMgPT0g
MSkgew0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbG4xIHw9IERLTF9EUF9N
T0RFX0NGR19EUF9YMV9NT0RFOw0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIH0gZWxzZSB7
DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBsbjAgfD0gREtMX0RQX01PREVf
Q0ZHX0RQX1gyX01PREU7DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBsbjEg
fD0gREtMX0RQX01PREVfQ0ZHX0RQX1gyX01PREU7DQo+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgfQ0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOw0KPiA+ICsgICAgICAgICAg
ICAgICBjYXNlIDB4MToNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICBpZiAobnVtX2xhbmVz
ID09IDQpIHsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGxuMCB8PSBES0xf
RFBfTU9ERV9DRkdfRFBfWDJfTU9ERTsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIGxuMSB8PSBES0xfRFBfTU9ERV9DRkdfRFBfWDJfTU9ERTsNCj4gPiArICAgICAgICAgICAg
ICAgICAgICAgICB9DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7DQo+ID4gKyAg
ICAgICAgICAgICAgIGNhc2UgMHgyOg0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGlmIChu
dW1fbGFuZXMgPT0gMikgew0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbG4w
IHw9IERLTF9EUF9NT0RFX0NGR19EUF9YMl9NT0RFOw0KPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgbG4xIHw9IERLTF9EUF9NT0RFX0NGR19EUF9YMl9NT0RFOw0KPiA+ICsgICAg
ICAgICAgICAgICAgICAgICAgIH0NCj4gPiArICAgICAgICAgICAgICAgICAgICAgICBicmVhazsN
Cj4gPiArICAgICAgICAgICAgICAgY2FzZSAweDM6DQo+ID4gKyAgICAgICAgICAgICAgIGNhc2Ug
MHg1Og0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGlmIChudW1fbGFuZXMgPT0gMSkgew0K
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbG4wIHw9IERLTF9EUF9NT0RFX0NG
R19EUF9YMV9NT0RFOw0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbG4xIHw9
IERLTF9EUF9NT0RFX0NGR19EUF9YMV9NT0RFOw0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
IH0gZWxzZSB7DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBsbjAgfD0gREtM
X0RQX01PREVfQ0ZHX0RQX1gyX01PREU7DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBsbjEgfD0gREtMX0RQX01PREVfQ0ZHX0RQX1gyX01PREU7DQo+ID4gKyAgICAgICAgICAg
ICAgICAgICAgICAgfQ0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOw0KPiA+ICsg
ICAgICAgICAgICAgICBjYXNlIDB4NDoNCj4gPiArICAgICAgICAgICAgICAgY2FzZSAweDY6DQo+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgaWYgKG51bV9sYW5lcyA9PSAxKSB7DQo+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBsbjAgfD0gREtMX0RQX01PREVfQ0ZHX0RQX1gx
X01PREU7DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBsbjEgfD0gREtMX0RQ
X01PREVfQ0ZHX0RQX1gxX01PREU7DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgfSBlbHNl
IHsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGxuMCB8PSBES0xfRFBfTU9E
RV9DRkdfRFBfWDJfTU9ERTsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGxu
MSB8PSBES0xfRFBfTU9ERV9DRkdfRFBfWDJfTU9ERTsNCj4gPiArICAgICAgICAgICAgICAgICAg
ICAgICB9DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7DQo+ID4gKyAgICAgICAg
ICAgICAgIGRlZmF1bHQ6DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgTUlTU0lOR19DQVNF
KGxhbmVfbWFzayk7DQo+ID4gKyAgICAgICAgICAgICAgIH0NCj4gPiArICAgICAgICAgICAgICAg
YnJlYWs7DQo+ID4gKw0KPiA+ICsgICAgICAgY2FzZSBUQ19QT1JUX0xFR0FDWToNCj4gPiArICAg
ICAgICAgICAgICAgbG4wIHw9IERLTF9EUF9NT0RFX0NGR19EUF9YMV9NT0RFIHwNCj4gPiBES0xf
RFBfTU9ERV9DRkdfRFBfWDJfTU9ERTsNCj4gPiArICAgICAgICAgICAgICAgbG4xIHw9IERLTF9E
UF9NT0RFX0NGR19EUF9YMV9NT0RFIHwNCj4gPiBES0xfRFBfTU9ERV9DRkdfRFBfWDJfTU9ERTsN
Cj4gPiArICAgICAgICAgICAgICAgYnJlYWs7DQo+ID4gKw0KPiA+ICsgICAgICAgZGVmYXVsdDoN
Cj4gPiArICAgICAgICAgICAgICAgTUlTU0lOR19DQVNFKGludGVsX2RpZ19wb3J0LT50Y19tb2Rl
KTsNCj4gPiArICAgICAgICAgICAgICAgcmV0dXJuOw0KPiA+ICsgICAgICAgfQ0KPiA+ICsNCj4g
PiArICAgICAgIEk5MTVfV1JJVEUoSElQX0lOREVYX1JFRyh0Y19wb3J0KSwgSElQX0lOREVYX1ZB
TCh0Y19wb3J0LA0KPiA+IDB4MCkpOw0KPiA+ICsgICAgICAgSTkxNV9XUklURShES0xfRFBfTU9E
RSh0Y19wb3J0KSwgbG4wKTsNCj4gPiArICAgICAgIEk5MTVfV1JJVEUoSElQX0lOREVYX1JFRyh0
Y19wb3J0KSwgSElQX0lOREVYX1ZBTCh0Y19wb3J0LA0KPiA+IDB4MSkpOw0KPiA+ICsgICAgICAg
STkxNV9XUklURShES0xfRFBfTU9ERSh0Y19wb3J0KSwgbG4xKTsNCj4gPiArfQ0KPiA+ICsNCj4g
PiAgc3RhdGljIHZvaWQgaW50ZWxfZHBfc2lua19zZXRfZmVjX3JlYWR5KHN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHAsDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IGNvbnN0IHN0cnVjdA0KPiA+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ID4gIHsN
Cj4gPiBAQCAtMzIzOSw3ICszNDQ2LDcgQEAgc3RhdGljIHZvaWQgdGdsX2RkaV9wcmVfZW5hYmxl
X2RwKHN0cnVjdA0KPiA+IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ID4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGRpZ19wb3J0LQ0KPiA+ID5kZGlfaW9fcG93ZXJf
ZG9tYWluKTsNCj4gPiANCj4gPiAgICAgICAgIC8qIDYuICovDQo+ID4gLSAgICAgICBpY2xfcHJv
Z3JhbV9tZ19kcF9tb2RlKGRpZ19wb3J0KTsNCj4gPiArICAgICAgIHRnbF9wcm9ncmFtX2RrbF9k
cF9tb2RlKGRpZ19wb3J0KTsNCj4gPiANCj4gPiAgICAgICAgIC8qDQo+ID4gICAgICAgICAgKiA3
LmEgLSBTdGVwcyBpbiB0aGlzIGZ1bmN0aW9uIHNob3VsZCBvbmx5IGJlIGV4ZWN1dGVkDQo+ID4g
b3ZlciBNU1QNCj4gPiBAQCAtMzI1MiwxMCArMzQ1OSwxMCBAQCBzdGF0aWMgdm9pZCB0Z2xfZGRp
X3ByZV9lbmFibGVfZHAoc3RydWN0DQo+ID4gaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gPiAg
ICAgICAgIGludGVsX2RkaV9jb25maWdfdHJhbnNjb2Rlcl9mdW5jKGNydGNfc3RhdGUpOw0KPiA+
IA0KPiA+ICAgICAgICAgLyogNy5kICovDQo+ID4gLSAgICAgICBpY2xfZGlzYWJsZV9waHlfY2xv
Y2tfZ2F0aW5nKGRpZ19wb3J0KTsNCj4gPiArICAgICAgIHRnbF9waHlfY2xvY2tfZ2F0aW5nKGRp
Z19wb3J0LCBmYWxzZSk7DQo+ID4gDQo+ID4gICAgICAgICAvKiA3LmUgKi8NCj4gPiAtICAgICAg
IGljbF9kZGlfdnN3aW5nX3NlcXVlbmNlKGVuY29kZXIsIGNydGNfc3RhdGUtPnBvcnRfY2xvY2ss
DQo+ID4gbGV2ZWwsDQo+ID4gKyAgICAgICB0Z2xfZGRpX3Zzd2luZ19zZXF1ZW5jZShlbmNvZGVy
LCBjcnRjX3N0YXRlLT5wb3J0X2Nsb2NrLA0KPiA+IGxldmVsLA0KPiA+ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgZW5jb2Rlci0+dHlwZSk7DQo+ID4gDQo+ID4gICAgICAgICAvKiA3
LmYgKi8NCj4gPiBAQCAtMzI4Nyw2ICszNDk0LDE1IEBAIHN0YXRpYyB2b2lkIHRnbF9kZGlfcHJl
X2VuYWJsZV9kcChzdHJ1Y3QNCj4gPiBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiA+ICAgICAg
ICAgLyogNy5rICovDQo+ID4gICAgICAgICBpbnRlbF9kcF9zdG9wX2xpbmtfdHJhaW4oaW50ZWxf
ZHApOw0KPiA+IA0KPiA+ICsgICAgICAgLyoNCj4gPiArICAgICAgICAqIFRPRE86IGVuYWJsZSBj
bG9jayBnYXRpbmcNCj4gPiArICAgICAgICAqDQo+ID4gKyAgICAgICAgKiBJdCBpcyBub3Qgd3Jp
dHRlbiBpbiBEUCBlbmFibGluZyBzZXF1ZW5jZSBidXQgIlBIWQ0KPiA+IENsb2NrZ2F0aW5nDQo+
IA0KPiB0eXBvDQo+IA0KPiA+ICsgICAgICAgICogcHJvZ3JhbW1pbmciIHN0YXRlcyB0aGF0IGNs
b2NrIGdhdGluZyBzaG91bGQgYmUgZW5hYmxlZA0KPiA+IGFmdGVyIHRoZQ0KPiA+ICsgICAgICAg
ICogbGluayB0cmFpbmluZyBidXQgZG9pbmcgc28gY2F1c2VzIGFsbCB0aGUgZm9sbG93aW5nDQo+
ID4gdHJhaW5pbmdzIHRvIGZhaWwNCj4gDQo+IHR5cG8NCj4gDQo+IA0KPiBMdWNhcyBEZSBNYXJj
aGkNCj4gDQo+ID4gKyAgICAgICAgKiBzbyBub3QgZW5hYmxpbmcgaXQgZm9yLg0KPiA+ICsgICAg
ICAgICovDQo+ID4gKw0KPiA+ICAgICAgICAgLyogNy5sICovDQo+ID4gICAgICAgICBpbnRlbF9k
ZGlfZW5hYmxlX2ZlYyhlbmNvZGVyLCBjcnRjX3N0YXRlKTsNCj4gPiAgICAgICAgIGludGVsX2Rz
Y19lbmFibGUoZW5jb2RlciwgY3J0Y19zdGF0ZSk7DQo+ID4gQEAgLTMzOTIsNyArMzYwOCwxMCBA
QCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfcHJlX2VuYWJsZV9oZG1pKHN0cnVjdA0KPiA+IGludGVs
X2VuY29kZXIgKmVuY29kZXIsDQo+ID4gICAgICAgICBpbnRlbF9kaXNwbGF5X3Bvd2VyX2dldChk
ZXZfcHJpdiwgZGlnX3BvcnQtDQo+ID4gPmRkaV9pb19wb3dlcl9kb21haW4pOw0KPiA+IA0KPiA+
ICAgICAgICAgaWNsX3Byb2dyYW1fbWdfZHBfbW9kZShkaWdfcG9ydCk7DQo+ID4gLSAgICAgICBp
Y2xfZGlzYWJsZV9waHlfY2xvY2tfZ2F0aW5nKGRpZ19wb3J0KTsNCj4gPiArICAgICAgIGlmIChJ
TlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKQ0KPiA+ICsgICAgICAgICAgICAgICB0Z2xfcGh5X2Ns
b2NrX2dhdGluZyhkaWdfcG9ydCwgZmFsc2UpOw0KPiA+ICsgICAgICAgZWxzZQ0KPiA+ICsgICAg
ICAgICAgICAgICBpY2xfZGlzYWJsZV9waHlfY2xvY2tfZ2F0aW5nKGRpZ19wb3J0KTsNCj4gPiAN
Cj4gPiAgICAgICAgIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKQ0KPiA+ICAgICAgICAg
ICAgICAgICBpY2xfZGRpX3Zzd2luZ19zZXF1ZW5jZShlbmNvZGVyLCBjcnRjX3N0YXRlLQ0KPiA+
ID5wb3J0X2Nsb2NrLA0KPiA+IEBAIC0zNDA0LDcgKzM2MjMsMTAgQEAgc3RhdGljIHZvaWQgaW50
ZWxfZGRpX3ByZV9lbmFibGVfaGRtaShzdHJ1Y3QNCj4gPiBpbnRlbF9lbmNvZGVyICplbmNvZGVy
LA0KPiA+ICAgICAgICAgZWxzZQ0KPiA+ICAgICAgICAgICAgICAgICBpbnRlbF9wcmVwYXJlX2hk
bWlfZGRpX2J1ZmZlcnMoZW5jb2RlciwgbGV2ZWwpOw0KPiA+IA0KPiA+IC0gICAgICAgaWNsX2Vu
YWJsZV9waHlfY2xvY2tfZ2F0aW5nKGRpZ19wb3J0KTsNCj4gPiArICAgICAgIGlmIChJTlRFTF9H
RU4oZGV2X3ByaXYpID49IDEyKQ0KPiA+ICsgICAgICAgICAgICAgICB0Z2xfcGh5X2Nsb2NrX2dh
dGluZyhkaWdfcG9ydCwgdHJ1ZSk7DQo+ID4gKyAgICAgICBlbHNlDQo+ID4gKyAgICAgICAgICAg
ICAgIGljbF9lbmFibGVfcGh5X2Nsb2NrX2dhdGluZyhkaWdfcG9ydCk7DQo+ID4gDQo+ID4gICAg
ICAgICBpZiAoSVNfR0VOOV9CQyhkZXZfcHJpdikpDQo+ID4gICAgICAgICAgICAgICAgIHNrbF9k
ZGlfc2V0X2lib29zdChlbmNvZGVyLCBsZXZlbCwNCj4gPiBJTlRFTF9PVVRQVVRfSERNSSk7DQo+
ID4gLS0NCj4gPiAyLjIzLjANCj4gPiANCj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXw0KPiA+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QNCj4gPiBJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCj4gDQo+IA0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
