Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FBDA15688E
	for <lists+intel-gfx@lfdr.de>; Sun,  9 Feb 2020 04:41:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B26B6E43A;
	Sun,  9 Feb 2020 03:41:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EDC76E439;
 Sun,  9 Feb 2020 03:40:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Feb 2020 19:40:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,419,1574150400"; d="scan'208";a="346805870"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
 by fmsmga001.fm.intel.com with ESMTP; 08 Feb 2020 19:40:56 -0800
Received: from irsmsx606.ger.corp.intel.com (163.33.146.139) by
 IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sun, 9 Feb 2020 03:40:55 +0000
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 IRSMSX606.ger.corp.intel.com (163.33.146.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sun, 9 Feb 2020 03:40:55 +0000
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.1713.004;
 Sun, 9 Feb 2020 03:40:55 +0000
From: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 11/17] drm/i915: Program DP SDPs with
 computed configs
Thread-Index: AQHV2uidwXC0MG/k3UKUVXvWv/23lKgM0zSAgAVscoA=
Date: Sun, 9 Feb 2020 03:40:55 +0000
Message-ID: <84215fa4c08b7fc4d09873204d9d9448c45a3f4f.camel@intel.com>
References: <20200203232014.906651-1-gwan-gyeong.mun@intel.com>
 <20200203232014.906651-12-gwan-gyeong.mun@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F823DD0AF@BGSMSX104.gar.corp.intel.com>
In-Reply-To: <E7C9878FBA1C6D42A1CA3F62AEB6945F823DD0AF@BGSMSX104.gar.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.252.14.133]
Content-ID: <F776752643DB1540B0670C64D5215327@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 11/17] drm/i915: Program DP SDPs with
 computed configs
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
Cc: "linux-fbdev@vger.kernel.org" <linux-fbdev@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIwLTAyLTA1IGF0IDIyOjIxICswNTMwLCBTaGFua2FyLCBVbWEgd3JvdGU6DQo+
ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBJbnRlbC1nZnggPGludGVs
LWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmDQo+ID4gT2YgR3dh
bi0NCj4gPiBneWVvbmcgTXVuDQo+ID4gU2VudDogVHVlc2RheSwgRmVicnVhcnkgNCwgMjAyMCA0
OjUwIEFNDQo+ID4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBDYzog
bGludXgtZmJkZXZAdmdlci5rZXJuZWwub3JnOyBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnDQo+ID4gU3ViamVjdDogW0ludGVsLWdmeF0gW1BBVENIIHYzIDExLzE3XSBkcm0vaTkxNTog
UHJvZ3JhbSBEUCBTRFBzDQo+ID4gd2l0aCBjb21wdXRlZA0KPiA+IGNvbmZpZ3MNCj4gPiANCj4g
PiBJbiBvcmRlciB0byB1c2UgY29tcHV0ZWQgY29uZmlnIGZvciBEUCBTRFBzIChEUCBWU0MgU0RQ
IGFuZCBEUCBIRFINCj4gPiBNZXRhZGF0YQ0KPiA+IEluZm9mcmFtZSBTRFApLCBpdCByZXBsYWNl
cyBpbnRlbF9kcF92c2NfZW5hYmxlKCkgZnVuY3Rpb24gYW5kDQo+ID4gaW50ZWxfZHBfaGRyX21l
dGFkYXRhX2VuYWJsZSgpIGZ1bmN0aW9uIHRvDQo+ID4gaW50ZWxfZHBfc2V0X2luZm9mcmFtZXMo
KSBmdW5jdGlvbi4NCj4gPiANCj4gPiBCZWZvcmUgYXBwbHlpbmcgaXQsIHJvdXRpbmVzIG9mIHBy
b2dyYW0gU0RQIGFsd2F5cyBjYWxjdWxhdGVkDQo+ID4gY29uZmlncyB3aGVuIHRoZXkNCj4gPiBj
YWxsZWQuIEFuZCBpdCByZW1vdmVzIHVudXNlZCBmdW5jdGlvbnMuDQo+IA0KPiBGaXggdGhlIHNl
bnRlbmNlLCBzZWVtcyB1bmNsZWFyLg0KPiBXaXRoIHRoYXQgZml4ZWQsDQpPa2F5LCBJJ2xsIHVw
ZGF0ZSB3aXRoIHRoZSBjb25kaXRpb24gb2YgYmVmb3JlIC8gYWZ0ZXIuDQoNCj4gUmV2aWV3ZWQt
Ynk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQo+IA0KPiA+IHYzOiBSZWJh
c2VkDQo+ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9u
Zy5tdW5AaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RkaS5jIHwgICAzICstDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuYyAgfCAyMjYgLS0tLS0tLS0tLS0tLS0tLS0NCj4gPiAtLS0tLS0NCj4gPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oICB8ICAgNiAtDQo+ID4gIDMg
ZmlsZXMgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDIzNCBkZWxldGlvbnMoLSkNCj4gPiANCj4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0K
PiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiA+IGluZGV4
IGM5NmY2MjljZGRjMy4uMzc0YWI2YTM3NTdjIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ID4gQEAgLTM5MDAsOCArMzkwMCw3IEBAIHN0YXRp
YyB2b2lkIGludGVsX2VuYWJsZV9kZGlfZHAoc3RydWN0DQo+ID4gaW50ZWxfZW5jb2Rlcg0KPiA+
ICplbmNvZGVyLA0KPiA+IA0KPiA+ICAJaW50ZWxfZWRwX2JhY2tsaWdodF9vbihjcnRjX3N0YXRl
LCBjb25uX3N0YXRlKTsNCj4gPiAgCWludGVsX3Bzcl9lbmFibGUoaW50ZWxfZHAsIGNydGNfc3Rh
dGUpOw0KPiA+IC0JaW50ZWxfZHBfdnNjX2VuYWJsZShpbnRlbF9kcCwgY3J0Y19zdGF0ZSwgY29u
bl9zdGF0ZSk7DQo+ID4gLQlpbnRlbF9kcF9oZHJfbWV0YWRhdGFfZW5hYmxlKGludGVsX2RwLCBj
cnRjX3N0YXRlLCBjb25uX3N0YXRlKTsNCj4gPiArCWludGVsX2RwX3NldF9pbmZvZnJhbWVzKGVu
Y29kZXIsIHRydWUsIGNydGNfc3RhdGUsIGNvbm5fc3RhdGUpOw0KPiA+ICAJaW50ZWxfZWRwX2Ry
cnNfZW5hYmxlKGludGVsX2RwLCBjcnRjX3N0YXRlKTsNCj4gPiANCj4gPiAgCWlmIChjcnRjX3N0
YXRlLT5oYXNfYXVkaW8pDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcC5jDQo+ID4gaW5kZXggZDRlY2UwYTgyNGMwLi5jZmZiNzdkYWVjOTYgMTAwNjQ0DQo+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gQEAgLTUwOTUsMjMy
ICs1MDk1LDYgQEAgdm9pZCBpbnRlbF9yZWFkX2RwX3NkcChzdHJ1Y3QgaW50ZWxfZW5jb2Rlcg0K
PiA+ICplbmNvZGVyLA0KPiA+ICAJfQ0KPiA+ICB9DQo+ID4gDQo+ID4gLXN0YXRpYyB2b2lkDQo+
ID4gLWludGVsX2RwX3NldHVwX3ZzY19zZHAoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4g
PiAtCQkgICAgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+
ID4gLQkJICAgICAgIGNvbnN0IHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICpjb25uX3N0YXRl
KQ0KPiA+IC17DQo+ID4gLQlzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICppbnRlbF9kaWdfcG9y
dCA9DQo+ID4gZHBfdG9fZGlnX3BvcnQoaW50ZWxfZHApOw0KPiA+IC0Jc3RydWN0IGRwX3NkcCB2
c2Nfc2RwID0ge307DQo+ID4gLQ0KPiA+IC0JLyogUHJlcGFyZSBWU0MgSGVhZGVyIGZvciBTVSBh
cyBwZXIgRFAgMS40YSBzcGVjLCBUYWJsZSAyLTExOQ0KPiA+ICovDQo+ID4gLQl2c2Nfc2RwLnNk
cF9oZWFkZXIuSEIwID0gMDsNCj4gPiAtCXZzY19zZHAuc2RwX2hlYWRlci5IQjEgPSAweDc7DQo+
ID4gLQ0KPiA+IC0JLyoNCj4gPiAtCSAqIFZTQyBTRFAgc3VwcG9ydGluZyAzRCBzdGVyZW8sIFBT
UjIsIGFuZCBQaXhlbCBFbmNvZGluZy8NCj4gPiAtCSAqIENvbG9yaW1ldHJ5IEZvcm1hdCBpbmRp
Y2F0aW9uLg0KPiA+IC0JICovDQo+ID4gLQl2c2Nfc2RwLnNkcF9oZWFkZXIuSEIyID0gMHg1Ow0K
PiA+IC0NCj4gPiAtCS8qDQo+ID4gLQkgKiBWU0MgU0RQIHN1cHBvcnRpbmcgM0Qgc3RlcmVvLCAr
IFBTUjIsICsgUGl4ZWwgRW5jb2RpbmcvDQo+ID4gLQkgKiBDb2xvcmltZXRyeSBGb3JtYXQgaW5k
aWNhdGlvbiAoSEIyID0gMDVoKS4NCj4gPiAtCSAqLw0KPiA+IC0JdnNjX3NkcC5zZHBfaGVhZGVy
LkhCMyA9IDB4MTM7DQo+ID4gLQ0KPiA+IC0JLyogRFAgMS40YSBzcGVjLCBUYWJsZSAyLTEyMCAq
Lw0KPiA+IC0Jc3dpdGNoIChjcnRjX3N0YXRlLT5vdXRwdXRfZm9ybWF0KSB7DQo+ID4gLQljYXNl
IElOVEVMX09VVFBVVF9GT1JNQVRfWUNCQ1I0NDQ6DQo+ID4gLQkJdnNjX3NkcC5kYlsxNl0gPSAw
eDEgPDwgNDsgLyogWUNiQ3IgNDQ0IDogREIxNls3OjRdID0NCj4gPiAxaCAqLw0KPiA+IC0JCWJy
ZWFrOw0KPiA+IC0JY2FzZSBJTlRFTF9PVVRQVVRfRk9STUFUX1lDQkNSNDIwOg0KPiA+IC0JCXZz
Y19zZHAuZGJbMTZdID0gMHgzIDw8IDQ7IC8qIFlDYkNyIDQyMCA6IERCMTZbNzo0XSA9DQo+ID4g
M2ggKi8NCj4gPiAtCQlicmVhazsNCj4gPiAtCWNhc2UgSU5URUxfT1VUUFVUX0ZPUk1BVF9SR0I6
DQo+ID4gLQlkZWZhdWx0Og0KPiA+IC0JCS8qIFJHQjogREIxNls3OjRdID0gMGggKi8NCj4gPiAt
CQlicmVhazsNCj4gPiAtCX0NCj4gPiAtDQo+ID4gLQlzd2l0Y2ggKGNvbm5fc3RhdGUtPmNvbG9y
c3BhY2UpIHsNCj4gPiAtCWNhc2UgRFJNX01PREVfQ09MT1JJTUVUUllfQlQ3MDlfWUNDOg0KPiA+
IC0JCXZzY19zZHAuZGJbMTZdIHw9IDB4MTsNCj4gPiAtCQlicmVhazsNCj4gPiAtCWNhc2UgRFJN
X01PREVfQ09MT1JJTUVUUllfWFZZQ0NfNjAxOg0KPiA+IC0JCXZzY19zZHAuZGJbMTZdIHw9IDB4
MjsNCj4gPiAtCQlicmVhazsNCj4gPiAtCWNhc2UgRFJNX01PREVfQ09MT1JJTUVUUllfWFZZQ0Nf
NzA5Og0KPiA+IC0JCXZzY19zZHAuZGJbMTZdIHw9IDB4MzsNCj4gPiAtCQlicmVhazsNCj4gPiAt
CWNhc2UgRFJNX01PREVfQ09MT1JJTUVUUllfU1lDQ182MDE6DQo+ID4gLQkJdnNjX3NkcC5kYlsx
Nl0gfD0gMHg0Ow0KPiA+IC0JCWJyZWFrOw0KPiA+IC0JY2FzZSBEUk1fTU9ERV9DT0xPUklNRVRS
WV9PUFlDQ182MDE6DQo+ID4gLQkJdnNjX3NkcC5kYlsxNl0gfD0gMHg1Ow0KPiA+IC0JCWJyZWFr
Ow0KPiA+IC0JY2FzZSBEUk1fTU9ERV9DT0xPUklNRVRSWV9CVDIwMjBfQ1lDQzoNCj4gPiAtCWNh
c2UgRFJNX01PREVfQ09MT1JJTUVUUllfQlQyMDIwX1JHQjoNCj4gPiAtCQl2c2Nfc2RwLmRiWzE2
XSB8PSAweDY7DQo+ID4gLQkJYnJlYWs7DQo+ID4gLQljYXNlIERSTV9NT0RFX0NPTE9SSU1FVFJZ
X0JUMjAyMF9ZQ0M6DQo+ID4gLQkJdnNjX3NkcC5kYlsxNl0gfD0gMHg3Ow0KPiA+IC0JCWJyZWFr
Ow0KPiA+IC0JY2FzZSBEUk1fTU9ERV9DT0xPUklNRVRSWV9EQ0lfUDNfUkdCX0Q2NToNCj4gPiAt
CWNhc2UgRFJNX01PREVfQ09MT1JJTUVUUllfRENJX1AzX1JHQl9USEVBVEVSOg0KPiA+IC0JCXZz
Y19zZHAuZGJbMTZdIHw9IDB4NDsgLyogRENJLVAzIChTTVBURSBSUCA0MzEtMikgKi8NCj4gPiAt
CQlicmVhazsNCj4gPiAtCWRlZmF1bHQ6DQo+ID4gLQkJLyogc1JHQiAoSUVDIDYxOTY2LTItMSkg
LyBJVFUtUiBCVC42MDE6IERCMTZbMDozXSA9IDBoDQo+ID4gKi8NCj4gPiAtDQo+ID4gLQkJLyog
UkdCLT5ZQ0JDUiBjb2xvciBjb252ZXJzaW9uIHVzZXMgdGhlIEJULjcwOSBjb2xvcg0KPiA+IHNw
YWNlLiAqLw0KPiA+IC0JCWlmIChjcnRjX3N0YXRlLT5vdXRwdXRfZm9ybWF0ID09DQo+ID4gSU5U
RUxfT1VUUFVUX0ZPUk1BVF9ZQ0JDUjQyMCkNCj4gPiAtCQkJdnNjX3NkcC5kYlsxNl0gfD0gMHgx
OyAvKiAweDEsIElUVS1SIEJULjcwOSAqLw0KPiA+IC0JCWJyZWFrOw0KPiA+IC0JfQ0KPiA+IC0N
Cj4gPiAtCS8qDQo+ID4gLQkgKiBGb3IgcGl4ZWwgZW5jb2RpbmcgZm9ybWF0cyBZQ2JDcjQ0NCwg
WUNiQ3I0MjIsIFlDYkNyNDIwLCBhbmQNCj4gPiBZIE9ubHksDQo+ID4gLQkgKiB0aGUgZm9sbG93
aW5nIENvbXBvbmVudCBCaXQgRGVwdGggdmFsdWVzIGFyZSBkZWZpbmVkOg0KPiA+IC0JICogMDAx
YiA9IDhicGMuDQo+ID4gLQkgKiAwMTBiID0gMTBicGMuDQo+ID4gLQkgKiAwMTFiID0gMTJicGMu
DQo+ID4gLQkgKiAxMDBiID0gMTZicGMuDQo+ID4gLQkgKi8NCj4gPiAtCXN3aXRjaCAoY3J0Y19z
dGF0ZS0+cGlwZV9icHApIHsNCj4gPiAtCWNhc2UgMjQ6IC8qIDhicGMgKi8NCj4gPiAtCQl2c2Nf
c2RwLmRiWzE3XSA9IDB4MTsNCj4gPiAtCQlicmVhazsNCj4gPiAtCWNhc2UgMzA6IC8qIDEwYnBj
ICovDQo+ID4gLQkJdnNjX3NkcC5kYlsxN10gPSAweDI7DQo+ID4gLQkJYnJlYWs7DQo+ID4gLQlj
YXNlIDM2OiAvKiAxMmJwYyAqLw0KPiA+IC0JCXZzY19zZHAuZGJbMTddID0gMHgzOw0KPiA+IC0J
CWJyZWFrOw0KPiA+IC0JY2FzZSA0ODogLyogMTZicGMgKi8NCj4gPiAtCQl2c2Nfc2RwLmRiWzE3
XSA9IDB4NDsNCj4gPiAtCQlicmVhazsNCj4gPiAtCWRlZmF1bHQ6DQo+ID4gLQkJTUlTU0lOR19D
QVNFKGNydGNfc3RhdGUtPnBpcGVfYnBwKTsNCj4gPiAtCQlicmVhazsNCj4gPiAtCX0NCj4gPiAt
DQo+ID4gLQkvKg0KPiA+IC0JICogRHluYW1pYyBSYW5nZSAoQml0IDcpDQo+ID4gLQkgKiAwID0g
VkVTQSByYW5nZSwgMSA9IENUQSByYW5nZS4NCj4gPiAtCSAqIGFsbCBZQ2JDciBhcmUgYWx3YXlz
IGxpbWl0ZWQgcmFuZ2UNCj4gPiAtCSAqLw0KPiA+IC0JdnNjX3NkcC5kYlsxN10gfD0gMHg4MDsN
Cj4gPiAtDQo+ID4gLQkvKg0KPiA+IC0JICogQ29udGVudCBUeXBlIChCaXRzIDI6MCkNCj4gPiAt
CSAqIDAwMGIgPSBOb3QgZGVmaW5lZC4NCj4gPiAtCSAqIDAwMWIgPSBHcmFwaGljcy4NCj4gPiAt
CSAqIDAxMGIgPSBQaG90by4NCj4gPiAtCSAqIDAxMWIgPSBWaWRlby4NCj4gPiAtCSAqIDEwMGIg
PSBHYW1lDQo+ID4gLQkgKiBBbGwgb3RoZXIgdmFsdWVzIGFyZSBSRVNFUlZFRC4NCj4gPiAtCSAq
IE5vdGU6IFNlZSBDVEEtODYxLUcgZm9yIHRoZSBkZWZpbml0aW9uIGFuZCBleHBlY3RlZA0KPiA+
IC0JICogcHJvY2Vzc2luZyBieSBhIHN0cmVhbSBzaW5rIGZvciB0aGUgYWJvdmUgY29udGVjdCB0
eXBlcy4NCj4gPiAtCSAqLw0KPiA+IC0JdnNjX3NkcC5kYlsxOF0gPSAwOw0KPiA+IC0NCj4gPiAt
CWludGVsX2RpZ19wb3J0LT53cml0ZV9pbmZvZnJhbWUoJmludGVsX2RpZ19wb3J0LT5iYXNlLA0K
PiA+IC0JCQljcnRjX3N0YXRlLCBEUF9TRFBfVlNDLCAmdnNjX3NkcCwNCj4gPiBzaXplb2YodnNj
X3NkcCkpOw0KPiA+IC19DQo+ID4gLQ0KPiA+IC1zdGF0aWMgdm9pZA0KPiA+IC1pbnRlbF9kcF9z
ZXR1cF9oZHJfbWV0YWRhdGFfaW5mb2ZyYW1lX3NkcChzdHJ1Y3QgaW50ZWxfZHANCj4gPiAqaW50
ZWxfZHAsDQo+ID4gLQkJCQkJICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ICpj
cnRjX3N0YXRlLA0KPiA+IC0JCQkJCSAgY29uc3Qgc3RydWN0DQo+ID4gZHJtX2Nvbm5lY3Rvcl9z
dGF0ZQ0KPiA+ICpjb25uX3N0YXRlKQ0KPiA+IC17DQo+ID4gLQlzdHJ1Y3QgaW50ZWxfZGlnaXRh
bF9wb3J0ICppbnRlbF9kaWdfcG9ydCA9DQo+ID4gZHBfdG9fZGlnX3BvcnQoaW50ZWxfZHApOw0K
PiA+IC0Jc3RydWN0IGRwX3NkcCBpbmZvZnJhbWVfc2RwID0ge307DQo+ID4gLQlzdHJ1Y3QgaGRt
aV9kcm1faW5mb2ZyYW1lIGRybV9pbmZvZnJhbWUgPSB7fTsNCj4gPiAtCWNvbnN0IGludCBpbmZv
ZnJhbWVfc2l6ZSA9IEhETUlfSU5GT0ZSQU1FX0hFQURFUl9TSVpFICsNCj4gPiBIRE1JX0RSTV9J
TkZPRlJBTUVfU0laRTsNCj4gPiAtCXVuc2lnbmVkIGNoYXIgYnVmW0hETUlfSU5GT0ZSQU1FX0hF
QURFUl9TSVpFICsNCj4gPiBIRE1JX0RSTV9JTkZPRlJBTUVfU0laRV07DQo+ID4gLQlzc2l6ZV90
IGxlbjsNCj4gPiAtCWludCByZXQ7DQo+ID4gLQ0KPiA+IC0JcmV0ID0gZHJtX2hkbWlfaW5mb2Zy
YW1lX3NldF9oZHJfbWV0YWRhdGEoJmRybV9pbmZvZnJhbWUsDQo+ID4gY29ubl9zdGF0ZSk7DQo+
ID4gLQlpZiAocmV0KSB7DQo+ID4gLQkJRFJNX0RFQlVHX0tNUygiY291bGRuJ3Qgc2V0IEhEUiBt
ZXRhZGF0YSBpbg0KPiA+IGluZm9mcmFtZVxuIik7DQo+ID4gLQkJcmV0dXJuOw0KPiA+IC0JfQ0K
PiA+IC0NCj4gPiAtCWxlbiA9IGhkbWlfZHJtX2luZm9mcmFtZV9wYWNrX29ubHkoJmRybV9pbmZv
ZnJhbWUsIGJ1ZiwNCj4gPiBzaXplb2YoYnVmKSk7DQo+ID4gLQlpZiAobGVuIDwgMCkgew0KPiA+
IC0JCURSTV9ERUJVR19LTVMoImJ1ZmZlciBzaXplIGlzIHNtYWxsZXIgdGhhbiBoZHIgbWV0YWRh
dGENCj4gPiBpbmZvZnJhbWVcbiIpOw0KPiA+IC0JCXJldHVybjsNCj4gPiAtCX0NCj4gPiAtDQo+
ID4gLQlpZiAobGVuICE9IGluZm9mcmFtZV9zaXplKSB7DQo+ID4gLQkJRFJNX0RFQlVHX0tNUygi
d3Jvbmcgc3RhdGljIGhkciBtZXRhZGF0YSBzaXplXG4iKTsNCj4gPiAtCQlyZXR1cm47DQo+ID4g
LQl9DQo+ID4gLQ0KPiA+IC0JLyoNCj4gPiAtCSAqIFNldCB1cCB0aGUgaW5mb2ZyYW1lIHNkcCBw
YWNrZXQgZm9yIEhEUiBzdGF0aWMgbWV0YWRhdGEuDQo+ID4gLQkgKiBQcmVwYXJlIFZTQyBIZWFk
ZXIgZm9yIFNVIGFzIHBlciBEUCAxLjRhIHNwZWMsDQo+ID4gLQkgKiBUYWJsZSAyLTEwMCBhbmQg
VGFibGUgMi0xMDENCj4gPiAtCSAqLw0KPiA+IC0NCj4gPiAtCS8qIFBhY2tldCBJRCwgMDBoIGZv
ciBub24tQXVkaW8gSU5GT0ZSQU1FICovDQo+ID4gLQlpbmZvZnJhbWVfc2RwLnNkcF9oZWFkZXIu
SEIwID0gMDsNCj4gPiAtCS8qDQo+ID4gLQkgKiBQYWNrZXQgVHlwZSA4MGggKyBOb24tYXVkaW8g
SU5GT0ZSQU1FIFR5cGUgdmFsdWUNCj4gPiAtCSAqIEhETUlfSU5GT0ZSQU1FX1RZUEVfRFJNOiAw
eDg3LA0KPiA+IC0JICovDQo+ID4gLQlpbmZvZnJhbWVfc2RwLnNkcF9oZWFkZXIuSEIxID0gZHJt
X2luZm9mcmFtZS50eXBlOw0KPiA+IC0JLyoNCj4gPiAtCSAqIExlYXN0IFNpZ25pZmljYW50IEVp
Z2h0IEJpdHMgb2YgKERhdGEgQnl0ZSBDb3VudCDigJMgMSkNCj4gPiAtCSAqIGluZm9mcmFtZV9z
aXplIC0gMSwNCj4gPiAtCSAqLw0KPiA+IC0JaW5mb2ZyYW1lX3NkcC5zZHBfaGVhZGVyLkhCMiA9
IDB4MUQ7DQo+ID4gLQkvKiBJTkZPRlJBTUUgU0RQIFZlcnNpb24gTnVtYmVyICovDQo+ID4gLQlp
bmZvZnJhbWVfc2RwLnNkcF9oZWFkZXIuSEIzID0gKDB4MTMgPDwgMik7DQo+ID4gLQkvKiBDVEEg
SGVhZGVyIEJ5dGUgMiAoSU5GT0ZSQU1FIFZlcnNpb24gTnVtYmVyKSAqLw0KPiA+IC0JaW5mb2Zy
YW1lX3NkcC5kYlswXSA9IGRybV9pbmZvZnJhbWUudmVyc2lvbjsNCj4gPiAtCS8qIENUQSBIZWFk
ZXIgQnl0ZSAzIChMZW5ndGggb2YgSU5GT0ZSQU1FKToNCj4gPiBIRE1JX0RSTV9JTkZPRlJBTUVf
U0laRSAqLw0KPiA+IC0JaW5mb2ZyYW1lX3NkcC5kYlsxXSA9IGRybV9pbmZvZnJhbWUubGVuZ3Ro
Ow0KPiA+IC0JLyoNCj4gPiAtCSAqIENvcHkgSERNSV9EUk1fSU5GT0ZSQU1FX1NJWkUgc2l6ZSBm
cm9tIGEgYnVmZmVyIGFmdGVyDQo+ID4gLQkgKiBIRE1JX0lORk9GUkFNRV9IRUFERVJfU0laRQ0K
PiA+IC0JICovDQo+ID4gLQlCVUlMRF9CVUdfT04oc2l6ZW9mKGluZm9mcmFtZV9zZHAuZGIpIDwg
SERNSV9EUk1fSU5GT0ZSQU1FX1NJWkUNCj4gPiArIDIpOw0KPiA+IC0JbWVtY3B5KCZpbmZvZnJh
bWVfc2RwLmRiWzJdLCAmYnVmW0hETUlfSU5GT0ZSQU1FX0hFQURFUl9TSVpFXSwNCj4gPiAtCSAg
ICAgICBIRE1JX0RSTV9JTkZPRlJBTUVfU0laRSk7DQo+ID4gLQ0KPiA+IC0JLyoNCj4gPiAtCSAq
IFNpemUgb2YgRFAgaW5mb2ZyYW1lIHNkcCBwYWNrZXQgZm9yIEhEUiBzdGF0aWMgbWV0YWRhdGEg
aXMNCj4gPiBjb25zaXN0IG9mDQo+ID4gLQkgKiAtIERQIFNEUCBIZWFkZXIoc3RydWN0IGRwX3Nk
cF9oZWFkZXIpOiA0IGJ5dGVzDQo+ID4gLQkgKiAtIFR3byBEYXRhIEJsb2NrczogMiBieXRlcw0K
PiA+IC0JICogICAgQ1RBIEhlYWRlciBCeXRlMiAoSU5GT0ZSQU1FIFZlcnNpb24gTnVtYmVyKQ0K
PiA+IC0JICogICAgQ1RBIEhlYWRlciBCeXRlMyAoTGVuZ3RoIG9mIElORk9GUkFNRSkNCj4gPiAt
CSAqIC0gSERNSV9EUk1fSU5GT0ZSQU1FX1NJWkU6IDI2IGJ5dGVzDQo+ID4gLQkgKg0KPiA+IC0J
ICogUHJpb3IgdG8gR0VOMTEncyBHTVAgcmVnaXN0ZXIgc2l6ZSBpcyBpZGVudGljYWwgdG8gRFAg
SERSDQo+ID4gc3RhdGljIG1ldGFkYXRhDQo+ID4gLQkgKiBpbmZvZnJhbWUgc2l6ZS4gQnV0IEdF
TjExKyBoYXMgbGFyZ2VyIHRoYW4gdGhhdCBzaXplLA0KPiA+IHdyaXRlX2luZm9mcmFtZQ0KPiA+
IC0JICogd2lsbCBwYWQgcmVzdCBvZiB0aGUgc2l6ZS4NCj4gPiAtCSAqLw0KPiA+IC0JaW50ZWxf
ZGlnX3BvcnQtPndyaXRlX2luZm9mcmFtZSgmaW50ZWxfZGlnX3BvcnQtPmJhc2UsDQo+ID4gY3J0
Y19zdGF0ZSwNCj4gPiAtCQkJCQlIRE1JX1BBQ0tFVF9UWVBFX0dBTVVUX01FVEFEQVRBDQo+ID4g
LA0KPiA+IC0JCQkJCSZpbmZvZnJhbWVfc2RwLA0KPiA+IC0JCQkJCXNpemVvZihzdHJ1Y3QgZHBf
c2RwX2hlYWRlcikgKw0KPiA+IDIgKw0KPiA+IEhETUlfRFJNX0lORk9GUkFNRV9TSVpFKTsNCj4g
PiAtfQ0KPiA+IC0NCj4gPiAtdm9pZCBpbnRlbF9kcF92c2NfZW5hYmxlKHN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHAsDQo+ID4gLQkJCSBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSwNCj4gPiAtCQkJIGNvbnN0IHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICpjb25u
X3N0YXRlKQ0KPiA+IC17DQo+ID4gLQlpZiAoIWludGVsX2RwX25lZWRzX3ZzY19zZHAoY3J0Y19z
dGF0ZSwgY29ubl9zdGF0ZSkpDQo+ID4gLQkJcmV0dXJuOw0KPiA+IC0NCj4gPiAtCWludGVsX2Rw
X3NldHVwX3ZzY19zZHAoaW50ZWxfZHAsIGNydGNfc3RhdGUsIGNvbm5fc3RhdGUpOw0KPiA+IC19
DQo+ID4gLQ0KPiA+IC12b2lkIGludGVsX2RwX2hkcl9tZXRhZGF0YV9lbmFibGUoc3RydWN0IGlu
dGVsX2RwICppbnRlbF9kcCwNCj4gPiAtCQkJCSAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUNCj4gPiAqY3J0Y19zdGF0ZSwNCj4gPiAtCQkJCSAgY29uc3Qgc3RydWN0IGRybV9jb25uZWN0
b3Jfc3RhdGUNCj4gPiAqY29ubl9zdGF0ZSkNCj4gPiAtew0KPiA+IC0JaWYgKCFjb25uX3N0YXRl
LT5oZHJfb3V0cHV0X21ldGFkYXRhKQ0KPiA+IC0JCXJldHVybjsNCj4gPiAtDQo+ID4gLQlpbnRl
bF9kcF9zZXR1cF9oZHJfbWV0YWRhdGFfaW5mb2ZyYW1lX3NkcChpbnRlbF9kcCwNCj4gPiAtCQkJ
CQkJICBjcnRjX3N0YXRlLA0KPiA+IC0JCQkJCQkgIGNvbm5fc3RhdGUpOw0KPiA+IC19DQo+ID4g
LQ0KPiA+ICBzdGF0aWMgdTggaW50ZWxfZHBfYXV0b3Rlc3RfbGlua190cmFpbmluZyhzdHJ1Y3Qg
aW50ZWxfZHANCj4gPiAqaW50ZWxfZHApICB7DQo+ID4gIAlpbnQgc3RhdHVzID0gMDsNCj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oDQo+ID4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmgNCj4gPiBpbmRleCBlOGY5
YmE5NjJkMDkuLjY1NjJiYjhlZGViYSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwLmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwLmgNCj4gPiBAQCAtMTEwLDEyICsxMTAsNiBAQCBpbnQgaW50ZWxfZHBf
bGlua19yZXF1aXJlZChpbnQgcGl4ZWxfY2xvY2ssDQo+ID4gaW50IGJwcCk7ICBpbnQNCj4gPiBp
bnRlbF9kcF9tYXhfZGF0YV9yYXRlKGludCBtYXhfbGlua19jbG9jaywgaW50IG1heF9sYW5lcyk7
ICBib29sDQo+ID4gaW50ZWxfZHBfbmVlZHNfdnNjX3NkcChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gPiAgCQkJICAgIGNvbnN0IHN0cnVjdCBkcm1fY29ubmVj
dG9yX3N0YXRlDQo+ID4gKmNvbm5fc3RhdGUpOyAtdm9pZA0KPiA+IGludGVsX2RwX3ZzY19lbmFi
bGUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiAtCQkJIGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiA+IC0JCQkgY29uc3Qgc3RydWN0IGRybV9jb25u
ZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGUpOw0KPiA+IC12b2lkIGludGVsX2RwX2hkcl9tZXRhZGF0
YV9lbmFibGUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiAtCQkJCSAgY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiAqY3J0Y19zdGF0ZSwNCj4gPiAtCQkJCSAgY29uc3Qg
c3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUNCj4gPiAqY29ubl9zdGF0ZSk7DQo+ID4gIHZvaWQg
aW50ZWxfZHBfc2V0X2luZm9mcmFtZXMoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsIGJv
b2wNCj4gPiBlbmFibGUsDQo+ID4gIAkJCSAgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUsDQo+ID4gIAkJCSAgICAgY29uc3Qgc3RydWN0IGRybV9jb25uZWN0b3Jf
c3RhdGUNCj4gPiAqY29ubl9zdGF0ZSk7DQo+ID4gLS0NCj4gPiAyLjI0LjENCj4gPiANCj4gPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiA+IEludGVs
LWdmeCBtYWlsaW5nIGxpc3QNCj4gPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+
ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
