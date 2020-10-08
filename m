Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED8A5287359
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Oct 2020 13:29:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 290096E3C1;
	Thu,  8 Oct 2020 11:29:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D52516E342
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Oct 2020 11:29:07 +0000 (UTC)
IronPort-SDR: Vu+ziYNs7rBdPwS3QpFL5YWn2qxA31BDJhZKxvhjUi1YyMtyf6vwo8XTBzerv0McUe7tL1EdCZ
 XhLeL9Hh+REA==
X-IronPort-AV: E=McAfee;i="6000,8403,9767"; a="162682089"
X-IronPort-AV: E=Sophos;i="5.77,350,1596524400"; d="scan'208";a="162682089"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2020 04:29:07 -0700
IronPort-SDR: DSbgu8B0XJc0GZaMV9erIZebwG/3Y3gzCoxqst/xGxxS62rLHUmfCbBPAcJtRc8k04tHrwAgN4
 QSD4hJrWHOCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,350,1596524400"; d="scan'208";a="298068605"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 08 Oct 2020 04:29:07 -0700
Received: from bgsmsx606.gar.corp.intel.com (10.67.234.8) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 8 Oct 2020 04:29:06 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX606.gar.corp.intel.com (10.67.234.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 8 Oct 2020 16:59:04 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Thu, 8 Oct 2020 16:59:04 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Thread-Topic: [v7 01/10] drm/i915/display: Add HDR Capability detection for
 LSPCON
Thread-Index: AQHWm9zbj+o+OnDVeE2ftTifF3FvXKmNLuMAgABgljA=
Date: Thu, 8 Oct 2020 11:29:04 +0000
Message-ID: <33d76696efc543938daaf148a06dc714@intel.com>
References: <20201006130654.331-1-uma.shankar@intel.com>
 <20201006130654.331-2-uma.shankar@intel.com>
 <20201008105434.GL6112@intel.com>
In-Reply-To: <20201008105434.GL6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v7 01/10] drm/i915/display: Add HDR Capability
 detection for LSPCON
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogVGh1cnNkYXksIE9jdG9i
ZXIgOCwgMjAyMCA0OjI1IFBNDQo+IFRvOiBTaGFua2FyLCBVbWEgPHVtYS5zaGFua2FyQGludGVs
LmNvbT4NCj4gQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDog
UmU6IFt2NyAwMS8xMF0gZHJtL2k5MTUvZGlzcGxheTogQWRkIEhEUiBDYXBhYmlsaXR5IGRldGVj
dGlvbiBmb3INCj4gTFNQQ09ODQo+IA0KPiBPbiBUdWUsIE9jdCAwNiwgMjAyMCBhdCAwNjozNjo0
NVBNICswNTMwLCBVbWEgU2hhbmthciB3cm90ZToNCj4gPiBMU1BDT04gZmlybXdhcmUgZXhwb3Nl
cyBIRFIgY2FwYWJpbGl0eSB0aHJvdWdoIExQQ09OX0NBUEFCSUxJVElFUyBEUENEDQo+ID4gcmVn
aXN0ZXIuIExTUENPTiBpbXBsZW1lbnRhdGlvbnMgY2FwYWJsZSBvZiBzdXBwb3J0aW5nIEhEUiBz
ZXQNCj4gPiBIRFJfQ0FQQUJJTElUWSBiaXQgaW4gTFNQQ09OX0NBUEFCSUxJVElFUyB0byAxLiBU
aGlzIHBhdGNoIHJlYWRzIHRoZQ0KPiA+IHNhbWUsIGRldGVjdHMgdGhlIEhEUiBjYXBhYmlsaXR5
IGFuZCBhZGRzIHRoaXMgdG8gaW50ZWxfbHNwY29uIHN0cnVjdC4NCj4gPg0KPiA+IHYyOiBBZGRy
ZXNzZWQgSmFuaSBOaWt1bGEncyByZXZpZXcgY29tbWVudCBhbmQgZml4ZWQgdGhlIEhEUg0KPiA+
ICAgICBjYXBhYmlsaXR5IGRldGVjdGlvbiBsb2dpYw0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTog
VW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgLi4uL2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgIDEgKw0KPiA+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2xzcGNvbi5jICAgfCAzMCArKysrKysrKysr
KysrKysrKysrDQo+ID4gIDIgZmlsZXMgY2hhbmdlZCwgMzEgaW5zZXJ0aW9ucygrKQ0KPiA+DQo+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV90eXBlcy5oDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfdHlwZXMuaA0KPiA+IGluZGV4IGQ1ZGMxOGNiOGMzOS4uZmI4Y2ZjMDk4MWQ2IDEwMDY0NA0K
PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBl
cy5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3R5cGVzLmgNCj4gPiBAQCAtMTM5OCw2ICsxMzk4LDcgQEAgc3RydWN0IGludGVsX2xzcGNvbiB7
DQo+ID4gIAlib29sIGFjdGl2ZTsNCj4gPiAgCWVudW0gZHJtX2xzcGNvbl9tb2RlIG1vZGU7DQo+
ID4gIAllbnVtIGxzcGNvbl92ZW5kb3IgdmVuZG9yOw0KPiA+ICsJYm9vbCBoZHJfc3VwcG9ydGVk
Ow0KPiA+ICB9Ow0KPiA+DQo+ID4gIHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgew0KPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2xzcGNvbi5jDQo+
ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2xzcGNvbi5jDQo+ID4gaW5k
ZXggZWU5NWZjMzUzYTU2Li5mOTI5NjIxOTU2OTggMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sc3Bjb24uYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHNwY29uLmMNCj4gPiBAQCAtMzUsNiArMzUsOCBAQA0K
PiA+ICAjZGVmaW5lIExTUENPTl9WRU5ET1JfUEFSQURFX09VSSAweDAwMUNGOCAgI2RlZmluZQ0K
PiA+IExTUENPTl9WRU5ET1JfTUNBX09VSSAweDAwNjBBRA0KPiA+DQo+ID4gKyNkZWZpbmUgRFBD
RF9NQ0FfTFNQQ09OX0hEUl9TVEFUVVMJMHg3MDAwMw0KPiA+ICsNCj4gPiAgLyogQVVYIGFkZHJl
c3NlcyB0byB3cml0ZSBNQ0EgQVZJIElGICovICAjZGVmaW5lDQo+ID4gTFNQQ09OX01DQV9BVklf
SUZfV1JJVEVfT0ZGU0VUIDB4NUMwICAjZGVmaW5lDQo+IExTUENPTl9NQ0FfQVZJX0lGX0NUUkwN
Cj4gPiAweDVERiBAQCAtMTA0LDYgKzEwNiwzMiBAQCBzdGF0aWMgYm9vbCBsc3Bjb25fZGV0ZWN0
X3ZlbmRvcihzdHJ1Y3QNCj4gPiBpbnRlbF9sc3Bjb24gKmxzcGNvbikNCj4gPiAgCXJldHVybiB0
cnVlOw0KPiA+ICB9DQo+ID4NCj4gPiArc3RhdGljIHZvaWQgbHNwY29uX2RldGVjdF9oZHJfY2Fw
YWJpbGl0eShzdHJ1Y3QgaW50ZWxfbHNwY29uICpsc3Bjb24pDQo+ID4gK3sNCj4gPiArCXN0cnVj
dCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0ID0NCj4gPiArCQljb250YWluZXJf
b2YobHNwY29uLCBzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0LCBsc3Bjb24pOw0KPiANCj4gcy9p
bnRlbF9kaWdfcG9ydC9kaWdfcG9ydC8gdG8gY29uZm9ybSB3aXRoIGNvbW1pdCA3ODAxZjNiNzky
YjANCj4gKCJkcm0vaTkxNS9kaXNwbGF5OiBwcmVmZXIgZGlnX3BvcnQgdG8gcmVmZXJlbmNlIGlu
dGVsX2RpZ2l0YWxfcG9ydCIpDQo+IA0KPiA+ICsJc3RydWN0IGRybV9kZXZpY2UgKmRldiA9IGlu
dGVsX2RpZ19wb3J0LT5iYXNlLmJhc2UuZGV2Ow0KPiA+ICsJc3RydWN0IGludGVsX2RwICpkcCA9
IGxzcGNvbl90b19pbnRlbF9kcChsc3Bjb24pOw0KPiA+ICsJdTggaGRyX2NhcHM7DQo+ID4gKwlp
bnQgcmV0Ow0KPiA+ICsNCj4gPiArCS8qIEVuYWJsZSBIRFIgZm9yIE1DQSBiYXNlZCBMU1BDT04g
ZGV2aWNlcyAqLw0KPiA+ICsJaWYgKGxzcGNvbi0+dmVuZG9yID09IExTUENPTl9WRU5ET1JfTUNB
KQ0KPiA+ICsJCXJldCA9IGRybV9kcF9kcGNkX3JlYWQoJmRwLT5hdXgsDQo+IERQQ0RfTUNBX0xT
UENPTl9IRFJfU1RBVFVTLA0KPiA+ICsJCQkJICAgICAgICZoZHJfY2FwcywgMSk7DQo+ID4gKwll
bHNlDQo+ID4gKwkJcmV0dXJuOw0KPiA+ICsNCj4gPiArCWlmIChyZXQgPCAwKSB7DQo+ID4gKwkJ
ZHJtX2RiZ19rbXMoZGV2LCAiaGRyIGNhcGFiaWxpdHkgZGV0ZWN0aW9uIGZhaWxlZFxuIik7DQo+
ID4gKwkJbHNwY29uLT5oZHJfc3VwcG9ydGVkID0gZmFsc2U7DQo+ID4gKwkJcmV0dXJuOw0KPiA+
ICsJfSBlbHNlIGlmIChoZHJfY2FwcyAmIDB4MSkgew0KPiA+ICsJCWRybV9kYmdfa21zKGRldiwg
ImxzcGNvbiBjYXBhYmxlIG9mIEhEUlxuIik7DQo+ID4gKwkJbHNwY29uLT5oZHJfc3VwcG9ydGVk
ID0gdHJ1ZTsNCj4gPiArCX0NCj4gPiArfQ0KPiA+ICsNCj4gPiAgc3RhdGljIGVudW0gZHJtX2xz
cGNvbl9tb2RlIGxzcGNvbl9nZXRfY3VycmVudF9tb2RlKHN0cnVjdA0KPiA+IGludGVsX2xzcGNv
biAqbHNwY29uKSAgew0KPiA+ICAJZW51bSBkcm1fbHNwY29uX21vZGUgY3VycmVudF9tb2RlOw0K
PiA+IEBAIC01NTQsNiArNTgyLDggQEAgc3RhdGljIGJvb2wgbHNwY29uX2luaXQoc3RydWN0IGlu
dGVsX2RpZ2l0YWxfcG9ydA0KPiAqZGlnX3BvcnQpDQo+ID4gIAkJcmV0dXJuIGZhbHNlOw0KPiA+
ICAJfQ0KPiA+DQo+ID4gKwlsc3Bjb25fZGV0ZWN0X2hkcl9jYXBhYmlsaXR5KGxzcGNvbik7DQo+
ID4gKw0KPiANCj4gVGhpcyBpcyBub3cgdG9vIGxhdGUgc2luY2Ugd2UgZG8gdGhpcyBhZnRlciBy
ZWdpc3RlcmluZyB0aGUgY29ubmVjdG9yLg0KPiBOZWVkIHRvIG1vdmUgdGhpcyB0byB0aGUgaW5p
dCBzdGFnZSwgYnV0IGxzcGNvbiBkZXRlY3Rpb24gcmVxdWlyZXMgaHBkIGRldGVjdGlvbg0KPiBs
b2dpYyB0byBiZSBlbmFibGVkLCBzbyBvbmNlIEkgZ2V0IHRoZSBocGQgaW5pdCBvcmRlciBzb3J0
ZWQgd2UgbmVlZCB0byBkbyB0aGlzDQo+IGFmdGVyIGludGVsX2hwZF9pbml0KCkgYnV0IGJlZm9y
ZSB0aGUgY29ubmVjdG9yIGlzIHJlZ2lzdGVyZWQuIEhtbSwgbWF5YmUgd2UNCj4gY2FuIGFjdHVh
bGx5IGRvIGl0IGZyb20gY29ubmVjdG9yJ3MNCj4gLmxhdGVfcmVnaXN0ZXIoKSBob29rPw0KDQpJ
IGFtIGFjdHVhbGx5IGNhbGxpbmcgaXQgZnJvbSBkZGlfaW5pdCBpdHNlbGYgaW4gcGF0Y2ggMyBh
c3N1bWluZyBpdHMganVzdCB0aGUgb25lIGhhcmR3YXJlIHdoaWNoIGlzDQpoYXZpbmcgaXNzdWVz
IChub3Qgc3VyZSBpZiB0aGlzIGEgbGltaXRhdGlvbiBmb3IgTFNQQ09OIGdlbmVyaWNhbGx5KS4g
U28gaWYgZGV0ZWN0aW9uIGlzIHN1Y2Nlc3NmdWwNCnJlZ2lzdGVyIEhEUiBlbHNlIGxldCBpdCBu
b3QgZ2V0IGVuYWJsZWQuIEl0IGRvZXNuJ3Qgc291bmQgZ29vZCB0aG91Z2ggYnV0IHdhcyBub3Qg
Z2V0dGluZyBhbnkgYmV0dGVyDQppZGVhcyDimLkuDQoNCkkgdGhpbmsgbGF0ZV9yZWdpc3RlciBt
YXkgd29yayBvdXQgZm9yIHVzLg0KDQpSZWdhcmRzLA0KVW1hIFNoYW5rYXINCg0KPiANCj4gPiAg
CWNvbm5lY3Rvci0+eWNiY3JfNDIwX2FsbG93ZWQgPSB0cnVlOw0KPiA+ICAJbHNwY29uLT5hY3Rp
dmUgPSB0cnVlOw0KPiA+ICAJRFJNX0RFQlVHX0tNUygiU3VjY2VzczogTFNQQ09OIGluaXRcbiIp
Ow0KPiA+IC0tDQo+ID4gMi4yNi4yDQo+IA0KPiAtLQ0KPiBWaWxsZSBTeXJqw6Rsw6QNCj4gSW50
ZWwNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
