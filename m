Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F3744221B
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Nov 2021 21:56:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40DBD6E1A3;
	Mon,  1 Nov 2021 20:56:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A28DC89CE2
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Nov 2021 20:56:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="294578229"
X-IronPort-AV: E=Sophos;i="5.87,200,1631602800"; d="scan'208";a="294578229"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 13:56:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,200,1631602800"; d="scan'208";a="727639386"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga005.fm.intel.com with ESMTP; 01 Nov 2021 13:56:31 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 1 Nov 2021 13:56:31 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 1 Nov 2021 13:56:30 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Mon, 1 Nov 2021 13:56:30 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Exit PSR when doing async
 flips
Thread-Index: AQHXzSK2nNtbqT1vD02YOw8Z7KA8zavvm3oAgAAHSwA=
Date: Mon, 1 Nov 2021 20:56:30 +0000
Message-ID: <47c732153a994bb8bc778326f41a2a45c9c2c7cd.camel@intel.com>
References: <20211030001801.237548-1-jose.souza@intel.com>
 <YYBP5Al2nbUMLPFP@intel.com>
In-Reply-To: <YYBP5Al2nbUMLPFP@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <2FAA5DF51E36D2479897A9521A6875A8@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Exit PSR when doing async
 flips
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIxLTExLTAxIGF0IDE2OjM2IC0wNDAwLCBSb2RyaWdvIFZpdmkgd3JvdGU6DQo+
IE9uIEZyaSwgT2N0IDI5LCAyMDIxIGF0IDA1OjE4OjAxUE0gLTA3MDAsIEpvc8OpIFJvYmVydG8g
ZGUgU291emEgd3JvdGU6DQo+ID4gQ2hhbmdpbmcgdGhlIGJ1ZmZlciBpbiB0aGUgbWlkZGxlIG9m
IHRoZSBzY2Fub3V0IHRoZW4gZW50ZXJpbmcgYW4NCj4gPiBwZXJpb2Qgb2YgZmxpcCBpZGxlbmVz
cyB3aWxsIGNhdXNlIHBhcnQgb2YgdGhlIHByZXZpb3VzIGJ1ZmZlciBiZWluZw0KPiA+IGRpcGxh
eWVkIHRvIHVzZXIgd2hlbiBQU1IgaXMgZW5hYmxlZC4NCj4gPiANCj4gPiBTbyBoZXJlIGRpc2Fi
bGluZyBhbmQgc2NoZWR1bGluZyBhY3RpdmF0aW9uIGFmdGVyIGEgZmV3IG1pbGxpc2Vjb25kcw0K
PiA+IHdoZW4gYXN5bmMgZmxpcCBpcyBlbmFibGVkIGluIHRoZSBzdGF0ZS4NCj4gPiANCj4gPiBU
aGUgYXN5bmMgZmxpcCBjaGVjayB0aGF0IHdlIGhhZCBpbiBQU1IgY29tcHV0ZSBpcyBub3QgZXhl
Y3V0ZWQgYXQNCj4gPiBldmVyeSBmbGlwIHNvIGl0IHdhcyBub3QgZG9pbmcgYW55dGhpbmcgdXNl
ZnVsIGFuZCBpcyBhbHNvIGJlaW5nDQo+ID4gZHJvcHBlZCBoZXJlLg0KPiA+IA0KPiA+IENjOiBL
YXJ0aGlrIEIgUyA8a2FydGhpay5iLnNAaW50ZWwuY29tPg0KPiA+IENjOiBWYW5kaXRhIEt1bGth
cm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4NCj4gPiBDYzogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PD
qSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDExICsrKysrLS0tLS0t
DQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+
ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gaW5k
ZXggOWQ1ODlkNDcxZTMzNS4uZDEzMDFlMjcyOTU1MyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IEBAIC03MzEsMTIgKzczMSw2IEBAIHN0
YXRpYyBib29sIGludGVsX3BzcjJfc2VsX2ZldGNoX2NvbmZpZ192YWxpZChzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwLA0KPiA+ICAJCXJldHVybiBmYWxzZTsNCj4gPiAgCX0NCj4gPiAgDQo+ID4g
LQlpZiAoY3J0Y19zdGF0ZS0+dWFwaS5hc3luY19mbGlwKSB7DQo+ID4gLQkJZHJtX2RiZ19rbXMo
JmRldl9wcml2LT5kcm0sDQo+ID4gLQkJCSAgICAiUFNSMiBzZWwgZmV0Y2ggbm90IGVuYWJsZWQs
IGFzeW5jIGZsaXAgZW5hYmxlZFxuIik7DQo+ID4gLQkJcmV0dXJuIGZhbHNlOw0KPiA+IC0JfQ0K
PiA+IC0NCj4gPiAgCS8qIFdhXzE0MDEwMjU0MTg1IFdhXzE0MDEwMTAzNzkyICovDQo+ID4gIAlp
ZiAoSVNfVEdMX0RJU1BMQVlfU1RFUChkZXZfcHJpdiwgU1RFUF9BMCwgU1RFUF9DMCkpIHsNCj4g
PiAgCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwNCj4gPiBAQCAtMTc4MCw2ICsxNzc0LDEx
IEBAIHZvaWQgaW50ZWxfcHNyX3ByZV9wbGFuZV91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19z
dGF0ZSAqc3RhdGUsDQo+ID4gIAkJaWYgKHBzci0+ZW5hYmxlZCAmJiBuZWVkc190b19kaXNhYmxl
KQ0KPiA+ICAJCQlpbnRlbF9wc3JfZGlzYWJsZV9sb2NrZWQoaW50ZWxfZHApOw0KPiA+ICANCj4g
PiArCQlpZiAocHNyLT5lbmFibGVkICYmIGNydGNfc3RhdGUtPnVhcGkuYXN5bmNfZmxpcCkgew0K
PiA+ICsJCQlpbnRlbF9wc3JfZXhpdChpbnRlbF9kcCk7DQo+ID4gKwkJCXNjaGVkdWxlX3dvcmso
JmludGVsX2RwLT5wc3Iud29yayk7DQo+IA0KPiB3b3VsZG4ndCBpdCBiZSBiZXR0ZXIoc2FmZXI/
KSB0byByZXNjaGVkdWxlIGl0IGJhY2sgaW4gYSBsYXRlciBzdGFnZT8NCg0KZ29vZCBpZGVhLCBk
byB0aGF0IGluIGludGVsX3Bzcl9wb3N0X3BsYW5lX3VwZGF0ZSgpLg0KDQp0aGFua3MNCg0KPiAN
Cj4gPiArCQl9DQo+ID4gKw0KPiA+ICAJCW11dGV4X3VubG9jaygmcHNyLT5sb2NrKTsNCj4gPiAg
CX0NCj4gPiAgfQ0KPiA+IC0tIA0KPiA+IDIuMzMuMQ0KPiA+IA0KDQo=
