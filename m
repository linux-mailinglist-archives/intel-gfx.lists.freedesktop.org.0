Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E4E2ED38C
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jan 2021 16:31:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5396F6E48B;
	Thu,  7 Jan 2021 15:31:52 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4AAB6E48B
 for <Intel-gfx@lists.freedesktop.org>; Thu,  7 Jan 2021 15:31:51 +0000 (UTC)
IronPort-SDR: mfOJ3rfrPOPM68A7RclOLfe7g/Gy/gRT/4LsfQNowMmJ1YfP1/L/1Ji3ey9oCg9tJCrtUBdoBx
 V3q3P23J4MlQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9857"; a="177538875"
X-IronPort-AV: E=Sophos;i="5.79,329,1602572400"; d="scan'208";a="177538875"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2021 07:31:50 -0800
IronPort-SDR: zy9CwGWT3RN4yGtzxPTmXtpOJ/m9j7gFckHzlVef8Ge45st9tDUgl4W/to80/4rnDnmi/xk9dB
 0B5r7+rHrYxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,329,1602572400"; d="scan'208";a="422608037"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 07 Jan 2021 07:31:47 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 7 Jan 2021 07:31:37 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 7 Jan 2021 07:31:37 -0800
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.1713.004;
 Thu, 7 Jan 2021 07:31:37 -0800
From: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
To: "Huang, Sean Z" <sean.z.huang@intel.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [RFC-v19 02/13] drm/i915/pxp: set KCR reg init
 during the boot time
Thread-Index: AQHW5IFvUr6mvDwXTkmr7VsjJGTrkaoc0XaA
Date: Thu, 7 Jan 2021 15:31:36 +0000
Message-ID: <9d20bff6993bfcf5ff30dd766e930bb031b69d93.camel@intel.com>
References: <20210106231223.8323-1-sean.z.huang@intel.com>
 <20210106231223.8323-3-sean.z.huang@intel.com>
In-Reply-To: <20210106231223.8323-3-sean.z.huang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.38.2 (3.38.2-1.fc33) 
x-originating-ip: [10.1.200.100]
Content-ID: <1FE01FE89171B24BB8D3071365C4FA96@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC-v19 02/13] drm/i915/pxp: set KCR reg init
 during the boot time
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIxLTAxLTA2IGF0IDE1OjEyIC0wODAwLCBIdWFuZywgU2VhbiBaIHdyb3RlOg0K
PiBTZXQgdGhlIEtDUiBpbml0IGR1cmluZyB0aGUgYm9vdCB0aW1lLCB3aGljaCBpcw0KPiByZXF1
aXJlZCBieSBoYXJkd2FyZSwgdG8gYWxsb3cgdXMgZG9pbmcgZnVydGhlcg0KPiBwcm90ZWN0aW9u
IG9wZXJhdGlvbiBzdWNoIGFzIHNlbmRpbmcgY29tbWFuZHMgdG8NCj4gR1BVIG9yIFRFRS4NCj4g
DQo+IFNpZ25lZC1vZmYtYnk6IEh1YW5nLCBTZWFuIFogPHNlYW4uei5odWFuZ0BpbnRlbC5jb20+
DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHAuYyB8IDggKysr
KysrKysNCj4gwqAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cC5jDQo+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cC5jDQo+IGluZGV4IDliYzNjN2UzMDY1NC4uZjU2NmE0
ZmRhMDQ0IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhw
LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cC5jDQo+IEBAIC02
LDYgKzYsMTIgQEANCj4gwqAjaW5jbHVkZSAiaW50ZWxfcHhwLmgiDQo+IMKgI2luY2x1ZGUgImlu
dGVsX3B4cF9jb250ZXh0LmgiDQo+IMKgDQo+ICsvKiBLQ1IgcmVnaXN0ZXIgZGVmaW5pdGlvbnMg
Ki8NCg0KcGxlYXNlIGRlZmluZSB0aGlzIGluIGk5MTVfcmVnLmgNCg0KPiArI2RlZmluZSBLQ1Jf
SU5JVMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgX01NSU8oMHgzMjBmMCkNCj4gKyNkZWZpbmUgS0NS
X0lOSVRfTUFTS19TSElGVCAoMTYpIA0KDQptYXNrIG9yIHNoaWZ0Pw0KDQo+ICsvKiBTZXR0aW5n
IEtDUiBJbml0IGJpdCBpcyByZXF1aXJlZCBhZnRlciBzeXN0ZW0gYm9vdCAqLw0KPiArI2RlZmlu
ZSBLQ1JfSU5JVF9BTExPV19ESVNQTEFZX01FX1dSSVRFUyAoQklUKDE0KSB8IChCSVQoMTQpIDw8
DQo+IEtDUl9JTklUX01BU0tfU0hJRlQpKQ0KDQpBbHNvLCB1c2Ugb25seSBiaXQgZGVmaW5pdGlv
bnMgaGVyZSBhbmQgbGVhdmUgdGhlIG1hc2sgYW5kL29yIHNoaWZ0DQpvbmx5IHdoZW4gY2FsbGlu
ZyB0aGUgd3JpdGUgZnVuY3Rpb24uDQoNCj4gDQo+ICsNCj4gwqB2b2lkIGludGVsX3B4cF9pbml0
KHN0cnVjdCBpbnRlbF9weHAgKnB4cCkNCj4gwqB7DQo+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3Qg
aW50ZWxfZ3QgKmd0ID0gY29udGFpbmVyX29mKHB4cCwgc3RydWN0IGludGVsX2d0LA0KPiBweHAp
Ow0KPiBAQCAtMTUsNiArMjEsOCBAQCB2b2lkIGludGVsX3B4cF9pbml0KHN0cnVjdCBpbnRlbF9w
eHAgKnB4cCkNCj4gwqANCj4gwqDCoMKgwqDCoMKgwqDCoGludGVsX3B4cF9jdHhfaW5pdCgmcHhw
LT5jdHgpOw0KPiDCoA0KPiArwqDCoMKgwqDCoMKgwqBpbnRlbF91bmNvcmVfd3JpdGUoZ3QtPnVu
Y29yZSwgS0NSX0lOSVQsDQo+IEtDUl9JTklUX0FMTE9XX0RJU1BMQVlfTUVfV1JJVEVTKTsNCj4g
Kw0KPiDCoMKgwqDCoMKgwqDCoMKgZHJtX2luZm8oJmd0LT5pOTE1LT5kcm0sICJQcm90ZWN0ZWQg
WGUgUGF0aCAoUFhQKSBwcm90ZWN0ZWQNCj4gY29udGVudCBzdXBwb3J0IGluaXRpYWxpemVkXG4i
KTsNCj4gwqB9DQo+IMKgDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
