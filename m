Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C476142B152
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 02:56:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 192B16E9FE;
	Wed, 13 Oct 2021 00:56:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 713506E9FE
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 00:56:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10135"; a="227208681"
X-IronPort-AV: E=Sophos;i="5.85,369,1624345200"; d="scan'208";a="227208681"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2021 17:55:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,369,1624345200"; d="scan'208";a="526803433"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 12 Oct 2021 17:55:59 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 12 Oct 2021 17:55:59 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 12 Oct 2021 17:55:58 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Tue, 12 Oct 2021 17:55:58 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Zhao, Yakui" <yakui.zhao@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>
Thread-Topic: [PATCH v2] drm/i915: Remove memory frequency calculation
Thread-Index: AQHXv8zrC12YUY1DuUCwCC8Q6TqE+qvQkZsA
Date: Wed, 13 Oct 2021 00:55:58 +0000
Message-ID: <9e74bed2f6574ac75b8a32f00eea3044821f2f44.camel@intel.com>
References: <20211013010046.91858-1-jose.souza@intel.com>
In-Reply-To: <20211013010046.91858-1-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <C1DE3F546A9A4A42897C6E34CA449E76@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Remove memory frequency
 calculation
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIxLTEwLTEyIGF0IDE4OjAwIC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBUaGlzIG1lbW9yeSBmcmVxdWVuY3kgY2FsY3VsYXRlZCBpcyBvbmx5IHVzZWQg
dG8gY2hlY2sgaWYgaXQgaXMgemVybywNCj4gd2hhdCBpcyBub3QgdXNlZnVsIGFzIGl0IHdpbGwg
bmV2ZXIgYWN0dWFsbHkgYmUgemVyby4NCj4gDQo+IEFsc28gdGhlIGNhbGN1bGF0aW9uIGlzIHdy
b25nLCB3ZSBzaG91bGQgYmUgY2hlY2tpbmcgb3RoZXIgYml0IHRvDQo+IHNlbGVjdCB0aGUgYXBw
cm9wcmlhdGUgZnJlcXVlbmN5IG11bHRpcGxpZXIgd2hpbGUgdGhpcyBjb2RlIGlzIHN0dWNrDQo+
IHdpdGggYSBmaXhlZCBtdWx0aXBsaWVyLg0KPiANCj4gU28gaGVyZSBkcm9wcGluZyBpdCBhcyB3
aG9sZS4NCj4gDQo+IHYyOg0KPiAtIEFsc28gcmVtb3ZlIG1lbW9yeSBmcmVxdWVuY3kgY2FsY3Vs
YXRpb24gZm9yIGdlbjkgTFAgcGxhdGZvcm1zDQo+IA0KPiBDYzogWWFrdWkgWmhhbyA8eWFrdWku
emhhb0BpbnRlbC5jb20+DQo+IENjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwu
Y29tPg0KPiBGaXhlczogZjgxMTJjYjk1NzRiICgiZHJtL2k5MTUvZ2VuMTErOiBPbmx5IGxvYWQg
RFJBTSBpbmZvcm1hdGlvbiBmcm9tIHBjb2RlIikNCg0KT3BzIGhhc2ggc2hvdWxkIGJlOiA1ZDBj
OTM4ZWM5Y2MNCldpbGwgZml4IGluIHRoZSBuZXh0IHZlcnNpb24gb3Igd2hlbiBhcHBseWluZy4N
Cg0KPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGlu
dGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgfCAg
OCAtLS0tLS0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJhbS5jIHwgMzAgKyst
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0
aW9ucygrKSwgMzYgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4g
aW5kZXggYTg5N2Y0YWJlYTBjMy4uODgyNWY3YWM0NzdiNiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oDQo+IEBAIC0xMTEwOSwxMiArMTExMDksNiBAQCBlbnVtIHNrbF9wb3dlcl9nYXRl
IHsNCj4gICNkZWZpbmUgIERDX1NUQVRFX0RFQlVHX01BU0tfQ09SRVMJKDEgPDwgMCkNCj4gICNk
ZWZpbmUgIERDX1NUQVRFX0RFQlVHX01BU0tfTUVNT1JZX1VQCSgxIDw8IDEpDQo+ICANCj4gLSNk
ZWZpbmUgQlhUX1BfQ1JfTUNfQklPU19SRVFfMF8wXzAJX01NSU8oTUNIQkFSX01JUlJPUl9CQVNF
X1NOQiArIDB4NzExNCkNCj4gLSNkZWZpbmUgIEJYVF9SRVFfREFUQV9NQVNLCQkJMHgzRg0KPiAt
I2RlZmluZSAgQlhUX0RSQU1fQ0hBTk5FTF9BQ1RJVkVfU0hJRlQJCTEyDQo+IC0jZGVmaW5lICBC
WFRfRFJBTV9DSEFOTkVMX0FDVElWRV9NQVNLCQkoMHhGIDw8IDEyKQ0KPiAtI2RlZmluZSAgQlhU
X01FTU9SWV9GUkVRX01VTFRJUExJRVJfSFoJCTEzMzMzMzMzMw0KPiAtDQo+ICAjZGVmaW5lIEJY
VF9EX0NSX0RSUDBfRFVOSVQ4CQkJMHgxMDAwDQo+ICAjZGVmaW5lIEJYVF9EX0NSX0RSUDBfRFVO
SVQ5CQkJMHgxMjAwDQo+ICAjZGVmaW5lICBCWFRfRF9DUl9EUlAwX0RVTklUX1NUQVJUCQk4DQo+
IEBAIC0xMTE0NSw5ICsxMTEzOSw3IEBAIGVudW0gc2tsX3Bvd2VyX2dhdGUgew0KPiAgI2RlZmlu
ZSAgQlhUX0RSQU1fVFlQRV9MUEREUjQJCQkoMHgyIDw8IDIyKQ0KPiAgI2RlZmluZSAgQlhUX0RS
QU1fVFlQRV9ERFI0CQkJKDB4NCA8PCAyMikNCj4gIA0KPiAtI2RlZmluZSBTS0xfTUVNT1JZX0ZS
RVFfTVVMVElQTElFUl9IWgkJMjY2NjY2NjY2DQo+ICAjZGVmaW5lIFNLTF9NQ19CSU9TX0RBVEFf
MF8wXzBfTUNIQkFSX1BDVQlfTU1JTyhNQ0hCQVJfTUlSUk9SX0JBU0VfU05CICsgMHg1RTA0KQ0K
PiAtI2RlZmluZSAgU0tMX1JFUV9EQVRBX01BU0sJCQkoMHhGIDw8IDApDQo+ICAjZGVmaW5lICBE
RzFfR0VBUl9UWVBFCQkJCVJFR19CSVQoMTYpDQo+ICANCj4gICNkZWZpbmUgU0tMX01BRF9JTlRF
Ul9DSEFOTkVMXzBfMF8wX01DSEJBUl9NQ01BSU4gX01NSU8oTUNIQkFSX01JUlJPUl9CQVNFX1NO
QiArIDB4NTAwMCkNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Ry
YW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RyYW0uYw0KPiBpbmRleCAzMGEwY2Fi
NWVmZjQ2Li4wYWRhZGZkOTUyOGFhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9kcmFtLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJhbS5j
DQo+IEBAIC0yNDQsNyArMjQ0LDYgQEAgc3RhdGljIGludA0KPiAgc2tsX2dldF9kcmFtX2luZm8o
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpDQo+ICB7DQo+ICAJc3RydWN0IGRyYW1faW5m
byAqZHJhbV9pbmZvID0gJmk5MTUtPmRyYW1faW5mbzsNCj4gLQl1MzIgbWVtX2ZyZXFfa2h6LCB2
YWw7DQo+ICAJaW50IHJldDsNCj4gIA0KPiAgCWRyYW1faW5mby0+dHlwZSA9IHNrbF9nZXRfZHJh
bV90eXBlKGk5MTUpOw0KPiBAQCAtMjU1LDE3ICsyNTQsNiBAQCBza2xfZ2V0X2RyYW1faW5mbyhz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gIAlpZiAocmV0KQ0KPiAgCQlyZXR1cm4g
cmV0Ow0KPiAgDQo+IC0JdmFsID0gaW50ZWxfdW5jb3JlX3JlYWQoJmk5MTUtPnVuY29yZSwNCj4g
LQkJCQlTS0xfTUNfQklPU19EQVRBXzBfMF8wX01DSEJBUl9QQ1UpOw0KPiAtCW1lbV9mcmVxX2to
eiA9IERJVl9ST1VORF9VUCgodmFsICYgU0tMX1JFUV9EQVRBX01BU0spICoNCj4gLQkJCQkgICAg
U0tMX01FTU9SWV9GUkVRX01VTFRJUExJRVJfSFosIDEwMDApOw0KPiAtDQo+IC0JaWYgKGRyYW1f
aW5mby0+bnVtX2NoYW5uZWxzICogbWVtX2ZyZXFfa2h6ID09IDApIHsNCj4gLQkJZHJtX2luZm8o
Jmk5MTUtPmRybSwNCj4gLQkJCSAiQ291bGRuJ3QgZ2V0IHN5c3RlbSBtZW1vcnkgYmFuZHdpZHRo
XG4iKTsNCj4gLQkJcmV0dXJuIC1FSU5WQUw7DQo+IC0JfQ0KPiAtDQo+ICAJcmV0dXJuIDA7DQo+
ICB9DQo+ICANCj4gQEAgLTM1MCwyNCArMzM4LDEwIEBAIHN0YXRpYyB2b2lkIGJ4dF9nZXRfZGlt
bV9pbmZvKHN0cnVjdCBkcmFtX2RpbW1faW5mbyAqZGltbSwgdTMyIHZhbCkNCj4gIHN0YXRpYyBp
bnQgYnh0X2dldF9kcmFtX2luZm8oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpDQo+ICB7
DQo+ICAJc3RydWN0IGRyYW1faW5mbyAqZHJhbV9pbmZvID0gJmk5MTUtPmRyYW1faW5mbzsNCj4g
LQl1MzIgZHJhbV9jaGFubmVsczsNCj4gLQl1MzIgbWVtX2ZyZXFfa2h6LCB2YWw7DQo+IC0JdTgg
bnVtX2FjdGl2ZV9jaGFubmVscywgdmFsaWRfcmFua3MgPSAwOw0KPiArCXUzMiB2YWw7DQo+ICsJ
dTggdmFsaWRfcmFua3MgPSAwOw0KPiAgCWludCBpOw0KPiAgDQo+IC0JdmFsID0gaW50ZWxfdW5j
b3JlX3JlYWQoJmk5MTUtPnVuY29yZSwgQlhUX1BfQ1JfTUNfQklPU19SRVFfMF8wXzApOw0KPiAt
CW1lbV9mcmVxX2toeiA9IERJVl9ST1VORF9VUCgodmFsICYgQlhUX1JFUV9EQVRBX01BU0spICoN
Cj4gLQkJCQkgICAgQlhUX01FTU9SWV9GUkVRX01VTFRJUExJRVJfSFosIDEwMDApOw0KPiAtDQo+
IC0JZHJhbV9jaGFubmVscyA9IHZhbCAmIEJYVF9EUkFNX0NIQU5ORUxfQUNUSVZFX01BU0s7DQo+
IC0JbnVtX2FjdGl2ZV9jaGFubmVscyA9IGh3ZWlnaHQzMihkcmFtX2NoYW5uZWxzKTsNCj4gLQ0K
PiAtCWlmIChtZW1fZnJlcV9raHogKiBudW1fYWN0aXZlX2NoYW5uZWxzID09IDApIHsNCj4gLQkJ
ZHJtX2luZm8oJmk5MTUtPmRybSwNCj4gLQkJCSAiQ291bGRuJ3QgZ2V0IHN5c3RlbSBtZW1vcnkg
YmFuZHdpZHRoXG4iKTsNCj4gLQkJcmV0dXJuIC1FSU5WQUw7DQo+IC0JfQ0KPiAtDQo+ICAJLyoN
Cj4gIAkgKiBOb3cgcmVhZCBlYWNoIERVTklUOC85LzEwLzExIHRvIGNoZWNrIHRoZSByYW5rIG9m
IGVhY2ggZGltbXMuDQo+ICAJICovDQoNCg==
