Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8235642C9C7
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 21:17:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0EA86EA9E;
	Wed, 13 Oct 2021 19:17:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E335F6EA92
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 19:17:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10136"; a="207626975"
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="207626975"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 12:17:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="570948670"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 13 Oct 2021 12:17:15 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 13 Oct 2021 12:17:14 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 13 Oct 2021 12:17:14 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Wed, 13 Oct 2021 12:17:14 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "Zhao, Yakui" <yakui.zhao@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915: Remove memory frequency
 calculation
Thread-Index: AQHXv8zrC12YUY1DuUCwCC8Q6TqE+qvRIEqAgAClAgA=
Date: Wed, 13 Oct 2021 19:17:14 +0000
Message-ID: <e85ffbe78d15f8714e88edcdf4d3112c59ae971f.camel@intel.com>
References: <20211013010046.91858-1-jose.souza@intel.com>
 <YWanuyKbmIDWOGZ3@intel.com>
In-Reply-To: <YWanuyKbmIDWOGZ3@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <CBE6136312E8A94DAEB2C880CE1C45C0@intel.com>
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

T24gV2VkLCAyMDIxLTEwLTEzIGF0IDEyOjMyICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFR1ZSwgT2N0IDEyLCAyMDIxIGF0IDA2OjAwOjQ2UE0gLTA3MDAsIEpvc8OpIFJvYmVy
dG8gZGUgU291emEgd3JvdGU6DQo+ID4gVGhpcyBtZW1vcnkgZnJlcXVlbmN5IGNhbGN1bGF0ZWQg
aXMgb25seSB1c2VkIHRvIGNoZWNrIGlmIGl0IGlzIHplcm8sDQo+ID4gd2hhdCBpcyBub3QgdXNl
ZnVsIGFzIGl0IHdpbGwgbmV2ZXIgYWN0dWFsbHkgYmUgemVyby4NCj4gPiANCj4gPiBBbHNvIHRo
ZSBjYWxjdWxhdGlvbiBpcyB3cm9uZywgd2Ugc2hvdWxkIGJlIGNoZWNraW5nIG90aGVyIGJpdCB0
bw0KPiA+IHNlbGVjdCB0aGUgYXBwcm9wcmlhdGUgZnJlcXVlbmN5IG11bHRpcGxpZXIgd2hpbGUg
dGhpcyBjb2RlIGlzIHN0dWNrDQo+ID4gd2l0aCBhIGZpeGVkIG11bHRpcGxpZXIuDQo+IA0KPiBJ
IGRvbid0IHRoaW5rIHRoZSBhbHRlcm5hdGUgcmVmIGNsb2NrIHdhcyBldmVyIHVzZWQuDQo+IEF0
IGxlYXN0IEkgZG9uJ3QgcmVjYWxsIGV2ZXIgc2VlaW5nIGl0Lg0KPiANCj4gVGhlIHJlYWwgcHJv
YmxlbSB3aXRoIHRoaXMgaXMgdGhhdCBJSVJDIHRoaXMgaXMganVzdCB0aGUgbGFzdA0KPiByZXF1
ZXN0ZWQgZnJlcXVlbmN5LiBTbyBvbiBhIHN5c3RlbSB3aXRoIFNBR1YgdGhpcyB3aWxsDQo+IGNo
YW5nZSBkeW5hbWljYWxseS4NCj4gDQo+ID4gDQo+ID4gU28gaGVyZSBkcm9wcGluZyBpdCBhcyB3
aG9sZS4NCj4gDQo+IFdlIGhhdmUgYSBzZWNvbmQgY29weSBvZiB0aGlzIGluIGdlbjZfdXBkYXRl
X3JpbmdfZnJlcSgpLiBSYXRoZXINCj4gdGhhbiByZW1vdmluZyBvbmUgYW5kIGxlYXZpbmcgYW5v
dGhlciBwb3RlbnRpYWxseSBicm9rZW4gb25lIGJlaGluZCB3ZQ0KPiBzaG91bGQgcHJvYmFibHkg
anVzdCBjb25zb2xpZGF0ZSBvbiBhIHNpbmdsZSBpbXBsZW1lbnRhdGlvbi4NCg0KZ2VuNl91cGRh
dGVfcmluZ19mcmVxKCkgaXMgcmVsYXRlZCB0byBHUFUgZnJlcXVlbmN5IG5vdCBtZW1vcnksIGRv
bid0IGxvb2sgcmVsYXRlZCBhdCBhbGwgdG8gbWUuDQoNCj4gDQo+ID4gDQo+ID4gdjI6DQo+ID4g
LSBBbHNvIHJlbW92ZSBtZW1vcnkgZnJlcXVlbmN5IGNhbGN1bGF0aW9uIGZvciBnZW45IExQIHBs
YXRmb3Jtcw0KPiA+IA0KPiA+IENjOiBZYWt1aSBaaGFvIDx5YWt1aS56aGFvQGludGVsLmNvbT4N
Cj4gPiBDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4NCj4gPiBGaXhl
czogZjgxMTJjYjk1NzRiICgiZHJtL2k5MTUvZ2VuMTErOiBPbmx5IGxvYWQgRFJBTSBpbmZvcm1h
dGlvbiBmcm9tIHBjb2RlIikNCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNv
dXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaCAgIHwgIDggLS0tLS0tLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfZHJhbS5jIHwgMzAgKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+ID4g
IDIgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAzNiBkZWxldGlvbnMoLSkNCj4gPiAN
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gPiBpbmRleCBhODk3ZjRhYmVhMGMzLi44ODI1
ZjdhYzQ3N2I2IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+ID4gQEAgLTEx
MTA5LDEyICsxMTEwOSw2IEBAIGVudW0gc2tsX3Bvd2VyX2dhdGUgew0KPiA+ICAjZGVmaW5lICBE
Q19TVEFURV9ERUJVR19NQVNLX0NPUkVTCSgxIDw8IDApDQo+ID4gICNkZWZpbmUgIERDX1NUQVRF
X0RFQlVHX01BU0tfTUVNT1JZX1VQCSgxIDw8IDEpDQo+ID4gIA0KPiA+IC0jZGVmaW5lIEJYVF9Q
X0NSX01DX0JJT1NfUkVRXzBfMF8wCV9NTUlPKE1DSEJBUl9NSVJST1JfQkFTRV9TTkIgKyAweDcx
MTQpDQo+ID4gLSNkZWZpbmUgIEJYVF9SRVFfREFUQV9NQVNLCQkJMHgzRg0KPiA+IC0jZGVmaW5l
ICBCWFRfRFJBTV9DSEFOTkVMX0FDVElWRV9TSElGVAkJMTINCj4gPiAtI2RlZmluZSAgQlhUX0RS
QU1fQ0hBTk5FTF9BQ1RJVkVfTUFTSwkJKDB4RiA8PCAxMikNCj4gPiAtI2RlZmluZSAgQlhUX01F
TU9SWV9GUkVRX01VTFRJUExJRVJfSFoJCTEzMzMzMzMzMw0KPiA+IC0NCj4gPiAgI2RlZmluZSBC
WFRfRF9DUl9EUlAwX0RVTklUOAkJCTB4MTAwMA0KPiA+ICAjZGVmaW5lIEJYVF9EX0NSX0RSUDBf
RFVOSVQ5CQkJMHgxMjAwDQo+ID4gICNkZWZpbmUgIEJYVF9EX0NSX0RSUDBfRFVOSVRfU1RBUlQJ
CTgNCj4gPiBAQCAtMTExNDUsOSArMTExMzksNyBAQCBlbnVtIHNrbF9wb3dlcl9nYXRlIHsNCj4g
PiAgI2RlZmluZSAgQlhUX0RSQU1fVFlQRV9MUEREUjQJCQkoMHgyIDw8IDIyKQ0KPiA+ICAjZGVm
aW5lICBCWFRfRFJBTV9UWVBFX0REUjQJCQkoMHg0IDw8IDIyKQ0KPiA+ICANCj4gPiAtI2RlZmlu
ZSBTS0xfTUVNT1JZX0ZSRVFfTVVMVElQTElFUl9IWgkJMjY2NjY2NjY2DQo+ID4gICNkZWZpbmUg
U0tMX01DX0JJT1NfREFUQV8wXzBfMF9NQ0hCQVJfUENVCV9NTUlPKE1DSEJBUl9NSVJST1JfQkFT
RV9TTkIgKyAweDVFMDQpDQo+ID4gLSNkZWZpbmUgIFNLTF9SRVFfREFUQV9NQVNLCQkJKDB4RiA8
PCAwKQ0KPiA+ICAjZGVmaW5lICBERzFfR0VBUl9UWVBFCQkJCVJFR19CSVQoMTYpDQo+ID4gIA0K
PiA+ICAjZGVmaW5lIFNLTF9NQURfSU5URVJfQ0hBTk5FTF8wXzBfMF9NQ0hCQVJfTUNNQUlOIF9N
TUlPKE1DSEJBUl9NSVJST1JfQkFTRV9TTkIgKyAweDUwMDApDQo+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RyYW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2RyYW0uYw0KPiA+IGluZGV4IDMwYTBjYWI1ZWZmNDYuLjBhZGFkZmQ5NTI4YWEgMTAwNjQ0
DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJhbS5jDQo+ID4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJhbS5jDQo+ID4gQEAgLTI0NCw3ICsyNDQsNiBA
QCBzdGF0aWMgaW50DQo+ID4gIHNrbF9nZXRfZHJhbV9pbmZvKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1KQ0KPiA+ICB7DQo+ID4gIAlzdHJ1Y3QgZHJhbV9pbmZvICpkcmFtX2luZm8gPSAm
aTkxNS0+ZHJhbV9pbmZvOw0KPiA+IC0JdTMyIG1lbV9mcmVxX2toeiwgdmFsOw0KPiA+ICAJaW50
IHJldDsNCj4gPiAgDQo+ID4gIAlkcmFtX2luZm8tPnR5cGUgPSBza2xfZ2V0X2RyYW1fdHlwZShp
OTE1KTsNCj4gPiBAQCAtMjU1LDE3ICsyNTQsNiBAQCBza2xfZ2V0X2RyYW1faW5mbyhzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gPiAgCWlmIChyZXQpDQo+ID4gIAkJcmV0dXJuIHJl
dDsNCj4gPiAgDQo+ID4gLQl2YWwgPSBpbnRlbF91bmNvcmVfcmVhZCgmaTkxNS0+dW5jb3JlLA0K
PiA+IC0JCQkJU0tMX01DX0JJT1NfREFUQV8wXzBfMF9NQ0hCQVJfUENVKTsNCj4gPiAtCW1lbV9m
cmVxX2toeiA9IERJVl9ST1VORF9VUCgodmFsICYgU0tMX1JFUV9EQVRBX01BU0spICoNCj4gPiAt
CQkJCSAgICBTS0xfTUVNT1JZX0ZSRVFfTVVMVElQTElFUl9IWiwgMTAwMCk7DQo+ID4gLQ0KPiA+
IC0JaWYgKGRyYW1faW5mby0+bnVtX2NoYW5uZWxzICogbWVtX2ZyZXFfa2h6ID09IDApIHsNCj4g
PiAtCQlkcm1faW5mbygmaTkxNS0+ZHJtLA0KPiA+IC0JCQkgIkNvdWxkbid0IGdldCBzeXN0ZW0g
bWVtb3J5IGJhbmR3aWR0aFxuIik7DQo+ID4gLQkJcmV0dXJuIC1FSU5WQUw7DQo+ID4gLQl9DQo+
ID4gLQ0KPiA+ICAJcmV0dXJuIDA7DQo+ID4gIH0NCj4gPiAgDQo+ID4gQEAgLTM1MCwyNCArMzM4
LDEwIEBAIHN0YXRpYyB2b2lkIGJ4dF9nZXRfZGltbV9pbmZvKHN0cnVjdCBkcmFtX2RpbW1faW5m
byAqZGltbSwgdTMyIHZhbCkNCj4gPiAgc3RhdGljIGludCBieHRfZ2V0X2RyYW1faW5mbyhzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gPiAgew0KPiA+ICAJc3RydWN0IGRyYW1faW5m
byAqZHJhbV9pbmZvID0gJmk5MTUtPmRyYW1faW5mbzsNCj4gPiAtCXUzMiBkcmFtX2NoYW5uZWxz
Ow0KPiA+IC0JdTMyIG1lbV9mcmVxX2toeiwgdmFsOw0KPiA+IC0JdTggbnVtX2FjdGl2ZV9jaGFu
bmVscywgdmFsaWRfcmFua3MgPSAwOw0KPiA+ICsJdTMyIHZhbDsNCj4gPiArCXU4IHZhbGlkX3Jh
bmtzID0gMDsNCj4gPiAgCWludCBpOw0KPiA+ICANCj4gPiAtCXZhbCA9IGludGVsX3VuY29yZV9y
ZWFkKCZpOTE1LT51bmNvcmUsIEJYVF9QX0NSX01DX0JJT1NfUkVRXzBfMF8wKTsNCj4gPiAtCW1l
bV9mcmVxX2toeiA9IERJVl9ST1VORF9VUCgodmFsICYgQlhUX1JFUV9EQVRBX01BU0spICoNCj4g
PiAtCQkJCSAgICBCWFRfTUVNT1JZX0ZSRVFfTVVMVElQTElFUl9IWiwgMTAwMCk7DQo+ID4gLQ0K
PiA+IC0JZHJhbV9jaGFubmVscyA9IHZhbCAmIEJYVF9EUkFNX0NIQU5ORUxfQUNUSVZFX01BU0s7
DQo+ID4gLQludW1fYWN0aXZlX2NoYW5uZWxzID0gaHdlaWdodDMyKGRyYW1fY2hhbm5lbHMpOw0K
PiA+IC0NCj4gPiAtCWlmIChtZW1fZnJlcV9raHogKiBudW1fYWN0aXZlX2NoYW5uZWxzID09IDAp
IHsNCj4gPiAtCQlkcm1faW5mbygmaTkxNS0+ZHJtLA0KPiA+IC0JCQkgIkNvdWxkbid0IGdldCBz
eXN0ZW0gbWVtb3J5IGJhbmR3aWR0aFxuIik7DQo+ID4gLQkJcmV0dXJuIC1FSU5WQUw7DQo+ID4g
LQl9DQo+ID4gLQ0KPiA+ICAJLyoNCj4gPiAgCSAqIE5vdyByZWFkIGVhY2ggRFVOSVQ4LzkvMTAv
MTEgdG8gY2hlY2sgdGhlIHJhbmsgb2YgZWFjaCBkaW1tcy4NCj4gPiAgCSAqLw0KPiA+IC0tIA0K
PiA+IDIuMzMuMA0KPiANCg0K
