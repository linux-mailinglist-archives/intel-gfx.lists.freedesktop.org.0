Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB84F138A1
	for <lists+intel-gfx@lfdr.de>; Sat,  4 May 2019 12:17:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFB1E8926E;
	Sat,  4 May 2019 10:17:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
 (mail-oln040092064091.outbound.protection.outlook.com [40.92.64.91])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 857488926E;
 Sat,  4 May 2019 10:17:47 +0000 (UTC)
Received: from HE1EUR01FT061.eop-EUR01.prod.protection.outlook.com
 (10.152.0.53) by HE1EUR01HT082.eop-EUR01.prod.protection.outlook.com
 (10.152.1.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1856.11; Sat, 4 May
 2019 10:17:40 +0000
Received: from DB8PR03MB5898.eurprd03.prod.outlook.com (10.152.0.57) by
 HE1EUR01FT061.mail.protection.outlook.com (10.152.1.6) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1856.11 via Frontend Transport; Sat, 4 May 2019 10:17:40 +0000
Received: from DB8PR03MB5898.eurprd03.prod.outlook.com
 ([fe80::fc8e:9afe:1a49:c86d]) by DB8PR03MB5898.eurprd03.prod.outlook.com
 ([fe80::fc8e:9afe:1a49:c86d%3]) with mapi id 15.20.1856.008; Sat, 4 May 2019
 10:17:40 +0000
From: Jonas Karlman <jonas@kwiboo.se>
To: Uma Shankar <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>
Thread-Topic: [v8 01/10] drm: Add HDR source metadata property
Thread-Index: AQHU7u/xfYzi57CFh0KcxixXBWlSWqZa51GA
Date: Sat, 4 May 2019 10:17:40 +0000
Message-ID: <DB8PR03MB5898E01D2C6804C773346C69AC360@DB8PR03MB5898.eurprd03.prod.outlook.com>
References: <1554828284-17776-1-git-send-email-uma.shankar@intel.com>
 <1554828284-17776-2-git-send-email-uma.shankar@intel.com>
In-Reply-To: <1554828284-17776-2-git-send-email-uma.shankar@intel.com>
Accept-Language: sv-SE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM3PR05CA0092.eurprd05.prod.outlook.com
 (2603:10a6:207:1::18) To DB8PR03MB5898.eurprd03.prod.outlook.com
 (2603:10a6:10:e7::18)
x-incomingtopheadermarker: OriginalChecksum:8FF3EC1D568C6B3C10912B6B3EC4148D9BC34DE0EFAD69C7E13A055B08764EE4;
 UpperCasedChecksum:D201D92DEBB8F5343AF9016E5E915D17E245808C782267F36A65151D367E9A61;
 SizeAsReceived:7803; Count:49
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [pNGSoQ42FVk+tp1H59m4boWV/1qdFq54]
x-microsoft-original-message-id: <3ea67578-b20f-42a0-aa9c-78f474c41fcf@kwiboo.se>
x-ms-publictraffictype: Email
x-incomingheadercount: 49
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031323274)(2017031324274)(2017031322404)(1601125500)(1603101475)(1701031045);
 SRVR:HE1EUR01HT082; 
x-ms-traffictypediagnostic: HE1EUR01HT082:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-message-info: mZTNZXFakURGCS2jmSlAl3bn3tHlXfkzp8FA+UCZ4rExnJD5Ws1c3zA9FIa9IMVgnwaOXOi0cs8bHjlPWFKKlqRQYayyK/6idEASKwRB6ilozCQAd7+0cadkJBQBY90TR/8XvowhvC+1wcGHwbk4IrR+LG4oViqWEIqREOt4jBvRi0Vd6V3qUnVT5zq3Ry3B
Content-ID: <0FBB9995B7617648978A1D065334C81D@eurprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 1247474b-8d8d-41ce-c0e2-08d6d079bcc1
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2019 10:17:40.3123 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR01HT082
Subject: Re: [Intel-gfx] [v8 01/10] drm: Add HDR source metadata property
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
Cc: "seanpaul@chromium.org" <seanpaul@chromium.org>,
 "dcastagna@chromium.org" <dcastagna@chromium.org>,
 "maarten.lankhorst@intel.com" <maarten.lankhorst@intel.com>,
 "ville.syrjala@intel.com" <ville.syrjala@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAxOS0wNC0wOSAxODo0NCwgVW1hIFNoYW5rYXIgd3JvdGU6DQo+IFRoaXMgcGF0Y2ggYWRk
cyBhIGJsb2IgcHJvcGVydHkgdG8gZ2V0IEhEUiBtZXRhZGF0YQ0KPiBpbmZvcm1hdGlvbiBmcm9t
IHVzZXJzcGFjZS4gVGhpcyB3aWxsIGJlIHNlbmQgYXMgcGFydA0KPiBvZiBBVkkgSW5mb2ZyYW1l
IHRvIHBhbmVsLg0KPg0KPiBJdCBhbHNvIGltcGxlbWVudHMgZ2V0KCkgYW5kIHNldCgpIGZ1bmN0
aW9ucyBmb3IgSERSIG91dHB1dA0KPiBtZXRhZGF0YSBwcm9wZXJ0eS5UaGUgYmxvYiBkYXRhIGlz
IHJlY2VpdmVkIGZyb20gdXNlcnNwYWNlIGFuZA0KPiBzYXZlZCBpbiBjb25uZWN0b3Igc3RhdGUs
IHRoZSBzYW1lIGlzIHJldHVybmVkIGFzIGJsb2IgaW4gZ2V0DQo+IHByb3BlcnR5IGNhbGwgdG8g
dXNlcnNwYWNlLg0KPg0KPiB2MjogUmViYXNlIGFuZCBtb2RpZmllZCB0aGUgbWV0YWRhdGEgc3Ry
dWN0dXJlIGVsZW1lbnRzDQo+IGFzIHBlciBWaWxsZSdzIFBPQyBjaGFuZ2VzLg0KPg0KPiB2Mzog
Tm8gQ2hhbmdlDQo+DQo+IHY0OiBBZGRyZXNzZWQgU2hhc2hhbmsncyByZXZpZXcgY29tbWVudHMN
Cj4NCj4gdjU6IFJlYmFzZS4NCj4NCj4gdjY6IEFkZHJlc3NlZCBCcmlhbiBTdGFya2V5J3MgcmV2
aWV3IGNvbW1lbnRzLCBkZWZpbmVkDQo+IG5ldyBzdHJ1Y3R1cmUgd2l0aCBoZWFkZXIgZm9yIGR5
bmFtaWMgbWV0YWRhdGEgc2NhbGFiaWxpdHkuDQo+IE1lcmdlIGdldC9zZXQgcHJvcGVydHkgZnVu
Y3Rpb25zIGZvciBtZXRhZGF0YSBpbiB0aGlzIHBhdGNoLg0KPg0KPiB2NzogQWRkcmVzc2VkIEpv
bmFzIEthcmxtYW4gcmV2aWV3IGNvbW1lbnRzIGFuZCBkZWZpbmVkIHNlcGFyYXRlDQo+IHN0cnVj
dHVyZSBmb3IgaW5mb2ZyYW1lIHRvIGJldHRlciBhbGlnbiB3aXRoIENUQSA4NjEuRyBzcGVjLiBB
ZGRlZA0KPiBTaGFzaGFuaydzIFJCLg0KPg0KPiBTaWduZWQtb2ZmLWJ5OiBVbWEgU2hhbmthciA8
dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KPiBSZXZpZXdlZC1ieTogU2hhc2hhbmsgU2hhcm1hIDxz
aGFzaGFuay5zaGFybWFAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9kcm1f
YXRvbWljLmMgICAgICB8ICAyICsrDQo+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX2F0b21pY191YXBp
LmMgfCAxMyArKysrKysrKysrKysrDQo+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX2Nvbm5lY3Rvci5j
ICAgfCAgNiArKysrKysNCj4gIGluY2x1ZGUvZHJtL2RybV9jb25uZWN0b3IuaCAgICAgICB8IDEx
ICsrKysrKysrKysrDQo+ICBpbmNsdWRlL2RybS9kcm1fbW9kZV9jb25maWcuaCAgICAgfCAgNiAr
KysrKysNCj4gIGluY2x1ZGUvbGludXgvaGRtaS5oICAgICAgICAgICAgICB8IDEwICsrKysrKysr
KysNCj4gIGluY2x1ZGUvdWFwaS9kcm0vZHJtX21vZGUuaCAgICAgICB8IDM5ICsrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKw0KPiAgNyBmaWxlcyBjaGFuZ2VkLCA4NyBpbnNl
cnRpb25zKCspDQo+DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2F0b21pYy5j
IGIvZHJpdmVycy9ncHUvZHJtL2RybV9hdG9taWMuYw0KPiBpbmRleCA1ZWI0MDEzLi44YjljMTI2
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2F0b21pYy5jDQo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljLmMNCj4gQEAgLTg4MSw2ICs4ODEsOCBAQCBzdGF0aWMg
dm9pZCBkcm1fYXRvbWljX2Nvbm5lY3Rvcl9wcmludF9zdGF0ZShzdHJ1Y3QgZHJtX3ByaW50ZXIg
KnAsDQo+ICANCj4gIAlkcm1fcHJpbnRmKHAsICJjb25uZWN0b3JbJXVdOiAlc1xuIiwgY29ubmVj
dG9yLT5iYXNlLmlkLCBjb25uZWN0b3ItPm5hbWUpOw0KPiAgCWRybV9wcmludGYocCwgIlx0Y3J0
Yz0lc1xuIiwgc3RhdGUtPmNydGMgPyBzdGF0ZS0+Y3J0Yy0+bmFtZSA6ICIobnVsbCkiKTsNCj4g
Kwlkcm1fcHJpbnRmKHAsICJcdGhkcl9tZXRhZGF0YV9jaGFuZ2VkPSVkXG4iLA0KPiArCQkgICBz
dGF0ZS0+aGRyX21ldGFkYXRhX2NoYW5nZWQpOw0KPiAgDQo+ICAJaWYgKGNvbm5lY3Rvci0+Y29u
bmVjdG9yX3R5cGUgPT0gRFJNX01PREVfQ09OTkVDVE9SX1dSSVRFQkFDSykNCj4gIAkJaWYgKHN0
YXRlLT53cml0ZWJhY2tfam9iICYmIHN0YXRlLT53cml0ZWJhY2tfam9iLT5mYikNCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljX3VhcGkuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9kcm1fYXRvbWljX3VhcGkuYw0KPiBpbmRleCBlYTc5N2Q0Li42ZDBkMTYxIDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2F0b21pY191YXBpLmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2RybV9hdG9taWNfdWFwaS5jDQo+IEBAIC02NzMsNiArNjczLDggQEAgc3RhdGljIGlu
dCBkcm1fYXRvbWljX2Nvbm5lY3Rvcl9zZXRfcHJvcGVydHkoc3RydWN0IGRybV9jb25uZWN0b3Ig
KmNvbm5lY3RvciwNCj4gIHsNCj4gIAlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gY29ubmVjdG9y
LT5kZXY7DQo+ICAJc3RydWN0IGRybV9tb2RlX2NvbmZpZyAqY29uZmlnID0gJmRldi0+bW9kZV9j
b25maWc7DQo+ICsJYm9vbCByZXBsYWNlZCA9IGZhbHNlOw0KPiArCWludCByZXQ7DQo+ICANCj4g
IAlpZiAocHJvcGVydHkgPT0gY29uZmlnLT5wcm9wX2NydGNfaWQpIHsNCj4gIAkJc3RydWN0IGRy
bV9jcnRjICpjcnRjID0gZHJtX2NydGNfZmluZChkZXYsIE5VTEwsIHZhbCk7DQo+IEBAIC03MjEs
NiArNzIzLDE0IEBAIHN0YXRpYyBpbnQgZHJtX2F0b21pY19jb25uZWN0b3Jfc2V0X3Byb3BlcnR5
KHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsDQo+ICAJCSAqLw0KPiAgCQlpZiAoc3Rh
dGUtPmxpbmtfc3RhdHVzICE9IERSTV9MSU5LX1NUQVRVU19HT09EKQ0KPiAgCQkJc3RhdGUtPmxp
bmtfc3RhdHVzID0gdmFsOw0KPiArCX0gZWxzZSBpZiAocHJvcGVydHkgPT0gY29uZmlnLT5oZHJf
b3V0cHV0X21ldGFkYXRhX3Byb3BlcnR5KSB7DQo+ICsJCXJldCA9IGRybV9hdG9taWNfcmVwbGFj
ZV9wcm9wZXJ0eV9ibG9iX2Zyb21faWQoZGV2LA0KPiArCQkJCSZzdGF0ZS0+aGRyX291dHB1dF9t
ZXRhZGF0YV9ibG9iX3B0ciwNCj4gKwkJCQl2YWwsDQo+ICsJCQkJLTEsIHNpemVvZihzdHJ1Y3Qg
aGRyX291dHB1dF9tZXRhZGF0YSksDQo+ICsJCQkJJnJlcGxhY2VkKTsNCj4gKwkJc3RhdGUtPmhk
cl9tZXRhZGF0YV9jaGFuZ2VkIHw9IHJlcGxhY2VkOw0KPiArCQlyZXR1cm4gcmV0Ow0KPiAgCX0g
ZWxzZSBpZiAocHJvcGVydHkgPT0gY29uZmlnLT5hc3BlY3RfcmF0aW9fcHJvcGVydHkpIHsNCj4g
IAkJc3RhdGUtPnBpY3R1cmVfYXNwZWN0X3JhdGlvID0gdmFsOw0KPiAgCX0gZWxzZSBpZiAocHJv
cGVydHkgPT0gY29uZmlnLT5jb250ZW50X3R5cGVfcHJvcGVydHkpIHsNCj4gQEAgLTgwNyw2ICs4
MTcsOSBAQCBzdGF0aWMgaW50IGRybV9hdG9taWNfY29ubmVjdG9yX3NldF9wcm9wZXJ0eShzdHJ1
Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLA0KPiAgCQkqdmFsID0gc3RhdGUtPmNvbG9yc3Bh
Y2U7DQo+ICAJfSBlbHNlIGlmIChwcm9wZXJ0eSA9PSBjb25uZWN0b3ItPnNjYWxpbmdfbW9kZV9w
cm9wZXJ0eSkgew0KPiAgCQkqdmFsID0gc3RhdGUtPnNjYWxpbmdfbW9kZTsNCj4gKwl9IGVsc2Ug
aWYgKHByb3BlcnR5ID09IGNvbmZpZy0+aGRyX291dHB1dF9tZXRhZGF0YV9wcm9wZXJ0eSkgew0K
PiArCQkqdmFsID0gKHN0YXRlLT5oZHJfb3V0cHV0X21ldGFkYXRhX2Jsb2JfcHRyKSA/DQo+ICsJ
CQlzdGF0ZS0+aGRyX291dHB1dF9tZXRhZGF0YV9ibG9iX3B0ci0+YmFzZS5pZCA6IDA7DQo+ICAJ
fSBlbHNlIGlmIChwcm9wZXJ0eSA9PSBjb25uZWN0b3ItPmNvbnRlbnRfcHJvdGVjdGlvbl9wcm9w
ZXJ0eSkgew0KPiAgCQkqdmFsID0gc3RhdGUtPmNvbnRlbnRfcHJvdGVjdGlvbjsNCj4gIAl9IGVs
c2UgaWYgKHByb3BlcnR5ID09IGNvbmZpZy0+d3JpdGViYWNrX2ZiX2lkX3Byb3BlcnR5KSB7DQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2Nvbm5lY3Rvci5jIGIvZHJpdmVycy9n
cHUvZHJtL2RybV9jb25uZWN0b3IuYw0KPiBpbmRleCAyMzU1MTI0Li4wYmRhZTkwIDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2Nvbm5lY3Rvci5jDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9kcm1fY29ubmVjdG9yLmMNCj4gQEAgLTEwNTgsNiArMTA1OCwxMiBAQCBpbnQgZHJt
X2Nvbm5lY3Rvcl9jcmVhdGVfc3RhbmRhcmRfcHJvcGVydGllcyhzdHJ1Y3QgZHJtX2RldmljZSAq
ZGV2KQ0KPiAgCQlyZXR1cm4gLUVOT01FTTsNCj4gIAlkZXYtPm1vZGVfY29uZmlnLm5vbl9kZXNr
dG9wX3Byb3BlcnR5ID0gcHJvcDsNCj4gIA0KPiArCXByb3AgPSBkcm1fcHJvcGVydHlfY3JlYXRl
KGRldiwgRFJNX01PREVfUFJPUF9CTE9CLA0KPiArCQkJCSAgICJIRFJfT1VUUFVUX01FVEFEQVRB
IiwgMCk7DQo+ICsJaWYgKCFwcm9wKQ0KPiArCQlyZXR1cm4gLUVOT01FTTsNCj4gKwlkZXYtPm1v
ZGVfY29uZmlnLmhkcl9vdXRwdXRfbWV0YWRhdGFfcHJvcGVydHkgPSBwcm9wOw0KPiArDQo+ICAJ
cmV0dXJuIDA7DQo+ICB9DQo+ICANCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2RybV9jb25u
ZWN0b3IuaCBiL2luY2x1ZGUvZHJtL2RybV9jb25uZWN0b3IuaA0KPiBpbmRleCAwMmExMzEyLi41
MzQzZjYwIDEwMDY0NA0KPiAtLS0gYS9pbmNsdWRlL2RybS9kcm1fY29ubmVjdG9yLmgNCj4gKysr
IGIvaW5jbHVkZS9kcm0vZHJtX2Nvbm5lY3Rvci5oDQo+IEBAIC01OTksNiArNTk5LDEzIEBAIHN0
cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlIHsNCj4gIAkgKiBhbmQgdGhlIGNvbm5lY3RvciBicGMg
bGltaXRhdGlvbnMgb2J0YWluZWQgZnJvbSBlZGlkLg0KPiAgCSAqLw0KPiAgCXU4IG1heF9icGM7
DQo+ICsNCj4gKwkvKioNCj4gKwkgKiBAbWV0YWRhdGFfYmxvYl9wdHI6DQo+ICsJICogRFJNIGJs
b2IgcHJvcGVydHkgZm9yIEhEUiBvdXRwdXQgbWV0YWRhdGENCj4gKwkgKi8NCj4gKwlzdHJ1Y3Qg
ZHJtX3Byb3BlcnR5X2Jsb2IgKmhkcl9vdXRwdXRfbWV0YWRhdGFfYmxvYl9wdHI7DQo+ICsJdTgg
aGRyX21ldGFkYXRhX2NoYW5nZWQgOiAxOw0KPiAgfTsNCj4gIA0KPiAgLyoqDQo+IEBAIC0xMjM5
LDYgKzEyNDYsMTAgQEAgc3RydWN0IGRybV9jb25uZWN0b3Igew0KPiAgCSAqICZkcm1fbW9kZV9j
b25maWcuY29ubmVjdG9yX2ZyZWVfd29yay4NCj4gIAkgKi8NCj4gIAlzdHJ1Y3QgbGxpc3Rfbm9k
ZSBmcmVlX25vZGU7DQo+ICsNCj4gKwkvKiBIRFIgbWV0ZGF0YSAqLw0KPiArCXN0cnVjdCBoZHJf
b3V0cHV0X21ldGFkYXRhIGhkcl9vdXRwdXRfbWV0YWRhdGE7DQo+ICsJc3RydWN0IGhkcl9zaW5r
X21ldGFkYXRhIGhkcl9zaW5rX21ldGFkYXRhOw0KPiAgfTsNCj4gIA0KPiAgI2RlZmluZSBvYmpf
dG9fY29ubmVjdG9yKHgpIGNvbnRhaW5lcl9vZih4LCBzdHJ1Y3QgZHJtX2Nvbm5lY3RvciwgYmFz
ZSkNCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2RybV9tb2RlX2NvbmZpZy5oIGIvaW5jbHVk
ZS9kcm0vZHJtX21vZGVfY29uZmlnLmgNCj4gaW5kZXggN2Y2MGU4ZS4uZWYyNjU2YiAxMDA2NDQN
Cj4gLS0tIGEvaW5jbHVkZS9kcm0vZHJtX21vZGVfY29uZmlnLmgNCj4gKysrIGIvaW5jbHVkZS9k
cm0vZHJtX21vZGVfY29uZmlnLmgNCj4gQEAgLTgzNiw2ICs4MzYsMTIgQEAgc3RydWN0IGRybV9t
b2RlX2NvbmZpZyB7DQo+ICAJICovDQo+ICAJc3RydWN0IGRybV9wcm9wZXJ0eSAqd3JpdGViYWNr
X291dF9mZW5jZV9wdHJfcHJvcGVydHk7DQo+ICANCj4gKwkvKg0KPiArCSAqIGhkcl9tZXRhZGF0
YV9wcm9wZXJ0eTogQ29ubmVjdG9yIHByb3BlcnR5IGNvbnRhaW5pbmcgaGRyIG1ldGF0ZGENCj4g
KwkgKiBUaGlzIHdpbGwgYmUgcHJvdmlkZWQgYnkgdXNlcnNwYWNlIGNvbXBvc2l0b3JzIGJhc2Vk
IG9uIEhEUiBjb250ZW50DQo+ICsJICovDQo+ICsJc3RydWN0IGRybV9wcm9wZXJ0eSAqaGRyX291
dHB1dF9tZXRhZGF0YV9wcm9wZXJ0eTsNCj4gKw0KPiAgCS8qIGR1bWIgaW9jdGwgcGFyYW1ldGVy
cyAqLw0KPiAgCXVpbnQzMl90IHByZWZlcnJlZF9kZXB0aCwgcHJlZmVyX3NoYWRvdzsNCj4gIA0K
PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9oZG1pLmggYi9pbmNsdWRlL2xpbnV4L2hkbWku
aA0KPiBpbmRleCA5MjdhZDY0Li5hMDY1MTk0IDEwMDY0NA0KPiAtLS0gYS9pbmNsdWRlL2xpbnV4
L2hkbWkuaA0KPiArKysgYi9pbmNsdWRlL2xpbnV4L2hkbWkuaA0KPiBAQCAtMTUyLDYgKzE1Miwx
NiBAQCBlbnVtIGhkbWlfY29udGVudF90eXBlIHsNCj4gIAlIRE1JX0NPTlRFTlRfVFlQRV9HQU1F
LA0KPiAgfTsNCj4gIA0KPiArZW51bSBoZG1pX21ldGFkYXRhX3R5cGUgew0KPiArCUhETUlfU1RB
VElDX01FVEFEQVRBX1RZUEUxID0gMSwNCj4gK307DQo+ICsNCj4gK2VudW0gaGRtaV9lb3RmIHsN
Cj4gKwlIRE1JX0VPVEZfVFJBRElUSU9OQUxfR0FNTUFfU0RSLA0KPiArCUhETUlfRU9URl9UUkFE
SVRJT05BTF9HQU1NQV9IRFIsDQo+ICsJSERNSV9FT1RGX1NNUFRFX1NUMjA4NCwNCj4gK307DQo+
ICsNCj4gIHN0cnVjdCBoZG1pX2F2aV9pbmZvZnJhbWUgew0KPiAgCWVudW0gaGRtaV9pbmZvZnJh
bWVfdHlwZSB0eXBlOw0KPiAgCXVuc2lnbmVkIGNoYXIgdmVyc2lvbjsNCj4gZGlmZiAtLWdpdCBh
L2luY2x1ZGUvdWFwaS9kcm0vZHJtX21vZGUuaCBiL2luY2x1ZGUvdWFwaS9kcm0vZHJtX21vZGUu
aA0KPiBpbmRleCA4M2NkMTYzLi43YjZhNTE5IDEwMDY0NA0KPiAtLS0gYS9pbmNsdWRlL3VhcGkv
ZHJtL2RybV9tb2RlLmgNCj4gKysrIGIvaW5jbHVkZS91YXBpL2RybS9kcm1fbW9kZS5oDQo+IEBA
IC02MzAsNiArNjMwLDQ1IEBAIHN0cnVjdCBkcm1fY29sb3JfbHV0IHsNCj4gIAlfX3UxNiByZXNl
cnZlZDsNCj4gIH07DQo+ICANCj4gKy8qIEhEUiBNZXRhZGF0YSBJbmZvZnJhbWUgYXMgcGVyIDg2
MS5HIHNwZWMgKi8NCj4gK3N0cnVjdCBoZHJfbWV0YWRhdGFfaW5mb2ZyYW1lIHsNCj4gKwlfX3U4
IGVvdGY7DQo+ICsJX191OCBtZXRhZGF0YV90eXBlOw0KPiArCXN0cnVjdCB7DQo+ICsJCV9fdTE2
IHgsIHk7DQo+ICsJCX0gZGlzcGxheV9wcmltYXJpZXNbM107DQo+ICsJc3RydWN0IHsNCj4gKwkJ
X191MTYgeCwgeTsNCj4gKwkJfSB3aGl0ZV9wb2ludDsNCj4gKwlfX3UxNiBtYXhfZGlzcGxheV9t
YXN0ZXJpbmdfbHVtaW5hbmNlOw0KPiArCV9fdTE2IG1pbl9kaXNwbGF5X21hc3RlcmluZ19sdW1p
bmFuY2U7DQo+ICsJX191MTYgbWF4X2NsbDsNCj4gKwlfX3UxNiBtYXhfZmFsbDsNCj4gK307DQo+
ICsNCj4gK3N0cnVjdCBoZHJfb3V0cHV0X21ldGFkYXRhIHsNCj4gKwlfX3UzMiBtZXRhZGF0YV90
eXBlOw0KPiArCXVuaW9uIHsNCj4gKwkJc3RydWN0IGhkcl9tZXRhZGF0YV9pbmZvZnJhbWUgaGRt
aV9tZXRhZGF0YV90eXBlMTsNCj4gKwl9Ow0KPiArfTsNCj4gKw0KPiArLyogSERSIE1ldGFkYXRh
IGFzIHBlciA4NjEuRyBzcGVjICovDQo+ICtzdHJ1Y3QgaGRyX3N0YXRpY19tZXRhZGF0YSB7DQo+
ICsJX191OCBlb3RmOw0KPiArCV9fdTggbWV0YWRhdGFfdHlwZTsNCj4gKwlfX3UxNiBtYXhfY2xs
Ow0KPiArCV9fdTE2IG1heF9mYWxsOw0KPiArCV9fdTE2IG1pbl9jbGw7DQo+ICt9Ow0KPiArDQo+
ICtzdHJ1Y3QgaGRyX3NpbmtfbWV0YWRhdGEgew0KPiArCV9fdTMyIG1ldGFkYXRhX3R5cGU7DQo+
ICsJdW5pb24gew0KPiArCQlzdHJ1Y3QgaGRyX3N0YXRpY19tZXRhZGF0YSBoZG1pX3R5cGUxOw0K
PiArCX07DQo+ICt9Ow0KDQpUaGVzZSB0d28gc3RydWN0cyAoaGRyX3N0YXRpY19tZXRhZGF0YSBh
bmQgaGRyX3NpbmtfbWV0YWRhdGEpIHNob3VsZCBwcm9iYWJseSBub3QgYmUgcGFydCBvZiB1YXBp
LA0KdW5sZXNzIHRoZSBtZXRhZGF0YSBpcyBpbnRlbmRlZCB0byBiZSBleHBvc2VkIGluIGEgSERS
X1NJTktfTUVUQURBVEEgcHJvcGVydHkuDQoNClRoZSBjb21taXQgImRybS9pOTE1OiBBZGQgSExH
IEVPVEYiIHNob3VsZCBwcm9iYWJseSBub3QgdXNlIGEgaTkxNSBpbiBwcmVmaXggYXMgaXQgYWZm
ZWN0cyBkcm0gY29yZS4NCg0KVGhlIGJsb2JfcHRyIHNob3VsZCBwcm9iYWJseSBiZSByZWZlcmVu
Y2UgY291bnRlZCBpbiBkdXBsaWNhdGVfc3RhdGUvZGVzdHJveV9zdGF0ZSBoZWxwZXIgc2ltaWxh
ciB0byBbMV0uDQpJIGtub3cgdG9vIGxpdHRsZSBhYm91dCBkcm0gY29yZSBpbiBvcmRlciB0byBr
bm93IGlmIHRoYXQgaXMgY29ycmVjdCwgcGxlYXNlIGZlZWwgZnJlZSB0byBwaWNrL3NxdWFzaCBp
ZiB0aGlzIGlzIGNvcnJlY3QuDQoNClsxXSBodHRwczovL2dpdGh1Yi5jb20vS3dpYm9vL2xpbnV4
LXJvY2tjaGlwL2NvbW1pdC81ZjA2NWZmMGJiY2NhMTQ1ZWU0NmU5NDY2YmI4Y2EwNDhjN2E3YjFl
DQoNCkkgaGF2ZSB0ZXN0ZWQgdGhpcyBwYXRjaHNldCBvbiByb2NrY2hpcCAvIGR3LWhkbWkgdXNp
bmcgZHctaGRtaSBbMl0gYW5kIEtvZGkgWzNdIHBhdGNoZXMgd2l0aCBhIHN1Y2Nlc3NmdWwgcmVz
dWx0IG9mIGVuYWJsaW5nIEhEUiBtb2RlIG9uIHRoZSBzaW5rLg0KVGhlcmUgaXMgbW9yZSB3b3Jr
IG5lZWRlZCB0byBnZXQgYSBmdWxsIDEwLWJpdCBwaXBlbGluZSBmb3IgZHctaGRtaSBpbiBvcmRl
ciB0byBtYWtlIGZ1bGwgdXNlIG9mIEhEUiwNCmJ1dCBmb3IgdGhlIHB1cnBvc2Ugb2YgZW5hYmxp
bmcgSERSIG9uIHRoZSBzaW5rIHRoaXMgcGF0Y2hzZXQgc2VlbXMgcmVhZHkuDQoNClsyXSBodHRw
czovL2dpdGh1Yi5jb20vS3dpYm9vL2xpbnV4LXJvY2tjaGlwL2NvbW1pdC9kNjNlMzhkMWNiOTA1
ZTVkODg1YzkwMzI4NjQwMmIyMDJiZTg1NDFlDQpbM10gaHR0cHM6Ly9naXRodWIuY29tL0t3aWJv
by94Ym1jL2NvbW1pdC9jNDFmODVkZGFhNDg5OTU2NTk3ODZiYTZkN2RmNmI2MWM3Mjc2YWEwDQoN
ClJlZ2FyZHMsDQpKb25hcw0KDQo+ICsNCj4gICNkZWZpbmUgRFJNX01PREVfUEFHRV9GTElQX0VW
RU5UIDB4MDENCj4gICNkZWZpbmUgRFJNX01PREVfUEFHRV9GTElQX0FTWU5DIDB4MDINCj4gICNk
ZWZpbmUgRFJNX01PREVfUEFHRV9GTElQX1RBUkdFVF9BQlNPTFVURSAweDQNCg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
