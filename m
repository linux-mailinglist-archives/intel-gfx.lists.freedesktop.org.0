Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D79C94FFACF
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 17:59:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4895910E38B;
	Wed, 13 Apr 2022 15:59:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EF5510E38B
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 15:59:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649865550; x=1681401550;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=gb79Mxcjd58BYTBrv/wpFvxT7Wx+Dw0mPVoXZZgbWck=;
 b=AtnFUJ8czKNFCBPieG2WrxD2EywINLW9J6gKjkDFqMxPF8oFCi9BW0Ap
 HiieqK4gF/UlGPHUMsFmN51avIulrvbruCEIkewJxlcKfxhopi78Zx22h
 /KnKmsvGrdAFSYkhdGaso3mX1dq2WqPsV/ug0W1EiUsx3BjHnqvyRD/kE
 oIX+44Y41W1/cPFjWiM3CgLid+8ykb0eXbjs3xRc039k181lriS1C5dmY
 /ZB5VeRtMKcrUO3ijESldLVBnrHzfpaNPtCiGRaCYe2IBj/q6DaefM1/v
 PsZKfqC8ZPEcaJwNejAus7JQHguSDsjhbu/5Z4b538iFNtE65rSC2EhFJ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10316"; a="262884566"
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="262884566"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 08:59:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="552259982"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 13 Apr 2022 08:59:09 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 13 Apr 2022 08:59:09 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 13 Apr 2022 08:59:08 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Wed, 13 Apr 2022 08:59:08 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Thread-Topic: [PATCH 2/2] drm/i915/display/psr: Clear more PSR state during
 disable
Thread-Index: AQHYTq9x82/W/EzGUUO+AqEdkY/AnKzt5/OAgACPRoA=
Date: Wed, 13 Apr 2022 15:59:08 +0000
Message-ID: <e022f050ee85f9f8792685420bba135e7d756733.camel@intel.com>
References: <20220412205527.174685-1-jose.souza@intel.com>
 <20220412205527.174685-2-jose.souza@intel.com>
 <14f9bb02d627056ff000df3c9ce1105b3d74826f.camel@intel.com>
In-Reply-To: <14f9bb02d627056ff000df3c9ce1105b3d74826f.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <814A16010EAA8345886404D72669C655@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display/psr: Clear more PSR
 state during disable
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

T24gV2VkLCAyMDIyLTA0LTEzIGF0IDA3OjI3ICswMDAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+IEhlbGxvIEpvc2UsDQo+IA0KPiBTZWUgbXkgY29tbWVudCBiZWxvdy4NCj4gDQo+IE9uIFR1
ZSwgMjAyMi0wNC0xMiBhdCAxMzo1NSAtMDcwMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3cm90
ZToNCj4gPiBBZnRlciBjb21taXQgODA1ZjA0ZDQyYTZiICgiZHJtL2k5MTUvZGlzcGxheS9wc3I6
IFVzZSBjb250aW51b3MgZnVsbA0KPiA+IGZyYW1lIHRvIGhhbmRsZSBmcm9udGJ1ZmZlciBpbnZh
bGlkYXRpb25zIikgd2FzIG1lcmdlZCB3ZSBzdGFydGVkIHRvDQo+ID4gZ2V0IHNvbWUgZHJtX1dB
Uk5fT04oJmRldl9wcml2LT5kcm0sICEodG1wICYNCj4gPiBQU1IyX01BTl9UUktfQ1RMX0VOQUJM
RSkpDQo+ID4gaW4gdGVzdHMgdGhhdCBhcmUgZXhlY3V0ZWQgaW4gcGlwZSBCLg0KPiA+IA0KPiA+
IFRoaXMgaXMgcHJvYmFibHkgZHVlIHBzcjJfc2VsX2ZldGNoX2NmZl9lbmFibGVkIGJlaW5nIGxl
ZnQgc2V0IGR1cmluZw0KPiA+IFBTUiBkaXNhYmxlIGluIHRoZSBwaXBlIEEsIHNvIHRoZSBQU1Iy
X01BTl9UUktfQ1RMIHdyaXRlIGluDQo+ID4gaW50ZWxfcHNyMl9wcm9ncmFtX3RyYW5zX21hbl90
cmtfY3RsKCkgaXMgc2tpcHBlZCBpbiBwaXBlIEIgYW5kIHRoZW4NCj4gPiB3ZSBnZXQgdGhlIHdh
cm5pbmcgd2hlbiBhY3R1YWxseSBlbmFibGluZyBQU1IgYWZ0ZXIgcGxhbmVzDQo+ID4gcHJvZ3Jh
bWluZy4NCj4gPiBXZSBkb24ndCBnZXQgc3VjaCB3YXJuaW5ncyB3aGVuIHJ1bm5pbmcgdGVzdHMg
aW4gcGlwZSBBIGJlY2F1c2UNCj4gPiBQU1IyX01BTl9UUktfQ1RMIGlzIG9ubHkgY2xlYXJlZCB3
aGVuIGVuYWJsaW5nIFBTUjIgd2l0aCBoYXJkd2FyZQ0KPiA+IHRyYWNraW5nLg0KPiANCj4gSXQg
c291bmRzIGEgYml0IHNjYXJ5IHBpcGUgQSB3b3VsZCBoYXZlIHN1Y2ggaW1wYWN0IG9uIHBpcGUg
Qi4uLg0KDQpCZWNhdXNlIFBTUiBzdGF0ZSBpcyBzdG9yZWQgaW4gaW50ZWxfZHAuDQoNCj4gDQo+
IGRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCAhKHRtcCAmIFBTUjJfTUFOX1RSS19DVExfRU5B
QkxFKSkNCj4gDQo+IGlzIHdyb25nIGZvciBBRExQLiBQbGVhc2Uga2VlcCBpbiBtaW5kIHN1Y2gg
Yml0IGRvZXNuJ3QgZXhpc3QgaW4gQURMUC4NCj4gVGhpcyBXQVJOIGlzIGFjdHVhbGx5IGNoZWNr
aW5nIFNGRiBiaXQgb24gQURMUCB3aGljaCBpcyByZXNldCBieSBIVw0KPiBhZnRlciBzZW5kaW5n
IHRoZSB1cGRhdGUgZnJhbWUuIFdlIHdlcmUganVzdCBsdWNreSAob3IgdW5sdWNreQ0KPiBkZXBl
bmRpbmcgaG93IHlvdSBzZWUgaXQpIG5vdCBzZWVpbmcgdGhpcyBlYXJsaWVyLiBQcm9wZXIgZml4
IHdvdWxkIGJlDQo+IHRvIHJlbW92ZSB0aGlzIHdhcm5pbmcgZm9yIEFETFA/DQoNCk9rYXkgbGV0
cyBzdGFydCB3aXRoIHRoYXQsIGlmIHdlIHNlZSB0aGlzIGlzc3VlIHdpdGggYSB0Z2wgdGhlbiB3
ZSBjYW4gYnJpbmcgdGhpcyBwYXRjaCBhZ2Fpbi4NCkJ1dCBJIGd1ZXNzIGl0IHdpbGwgaGFwcGVu
IGFzIHRoaXMgaXNzdWUgc3RhcnRlZCByaWdodCBhZnRlciB0aGUgUFNSIENGRiBwYXRjaGVzIHdl
cmUgbWVyZ2VkLg0KDQo+IA0KPiA+IA0KPiA+IFdhcyBub3QgYWJsZSB0byByZXByb2R1Y2UgdGhp
cyBpc3N1ZSBidXQgY2xlYW5pbmcgdGhlIFBTUiBzdGF0ZQ0KPiA+IGRpc2FibGUgd2lsbCBub3Qg
aGFybSBhbnl0aGluZyBhdCBhbGwuDQo+ID4gDQo+ID4gRml4ZXM6IDgwNWYwNGQ0MmE2YiAoImRy
bS9pOTE1L2Rpc3BsYXkvcHNyOiBVc2UgY29udGludW9zIGZ1bGwgZnJhbWUNCj4gPiB0byBoYW5k
bGUgZnJvbnRidWZmZXIgaW52YWxpZGF0aW9ucyIpDQo+ID4gQ2xvc2VzOiBodHRwczovL2dpdGxh
Yi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsLy0vaXNzdWVzLzU2MzQNCj4gPiBDYzogSm91bmkg
SMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTog
Sm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+
ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAzICsrKw0KPiA+
ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBpbmRleCA4ZWM3YzE2MTI4NGJl
Li4wNmRiNDA3ZTI3NDlmIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jDQo+ID4gQEAgLTEzNTMsNiArMTM1Myw5IEBAIHN0YXRpYyB2b2lkIGludGVs
X3Bzcl9kaXNhYmxlX2xvY2tlZChzdHJ1Y3QNCj4gPiBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ID4g
ICAgICAgICAgICAgICBkcm1fZHBfZHBjZF93cml0ZWIoJmludGVsX2RwLT5hdXgsDQo+ID4gRFBf
UkVDRUlWRVJfQUxQTV9DT05GSUcsIDApOw0KPiA+IA0KPiA+ICAgICAgIGludGVsX2RwLT5wc3Iu
ZW5hYmxlZCA9IGZhbHNlOw0KPiA+ICsgICAgIGludGVsX2RwLT5wc3IucHNyMl9lbmFibGVkID0g
ZmFsc2U7DQo+ID4gKyAgICAgaW50ZWxfZHAtPnBzci5wc3IyX3NlbF9mZXRjaF9lbmFibGVkID0g
ZmFsc2U7DQo+ID4gKyAgICAgaW50ZWxfZHAtPnBzci5wc3IyX3NlbF9mZXRjaF9jZmZfZW5hYmxl
ZCA9IGZhbHNlOw0KPiA+ICB9DQo+ID4gDQo+ID4gIC8qKg0KPiANCj4gQlIsDQo+IA0KPiBKb3Vu
aSBIw7ZnYW5kZXINCg0K
