Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 838A2414BA6
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Sep 2021 16:18:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F98E6EBAC;
	Wed, 22 Sep 2021 14:18:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 819466EBAC
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Sep 2021 14:18:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10114"; a="203097367"
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; d="scan'208";a="203097367"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 07:18:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; d="scan'208";a="436241406"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP; 22 Sep 2021 07:18:04 -0700
Received: from bgsmsx605.gar.corp.intel.com (10.67.234.7) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 22 Sep 2021 07:18:03 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 BGSMSX605.gar.corp.intel.com (10.67.234.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 22 Sep 2021 19:48:00 +0530
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Wed, 22 Sep 2021 07:17:58 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>, "Manna, Animesh"
 <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 3/3] drm/i915/display/psr: Do full fetch
 when handling biplanar formats
Thread-Index: AQHXroCcht+TMJHAdkKwB8fvxxpsYquwMAmAgAA9YQCAACXJAA==
Date: Wed, 22 Sep 2021 14:17:58 +0000
Message-ID: <79ccb8201e40665cd783f7ea0227788dcd040254.camel@intel.com>
References: <20210921004113.261827-1-jose.souza@intel.com>
 <20210921004113.261827-3-jose.souza@intel.com>
 <d2f5eeeb999341f482518d9d2e0657d4@intel.com>
 <c07a70bf-44f9-9ba4-61d3-c8b3459937f0@intel.com>
In-Reply-To: <c07a70bf-44f9-9ba4-61d3-c8b3459937f0@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <250C6968C369FB4DB9A9AB057B383D6F@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 3/3] drm/i915/display/psr: Do full fetch
 when handling biplanar formats
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

T24gV2VkLCAyMDIxLTA5LTIyIGF0IDE1OjA4ICswMzAwLCBHd2FuLWd5ZW9uZyBNdW4gd3JvdGU6
DQo+IA0KPiBPbiA5LzIyLzIxIDExOjI4IEFNLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToNCj4gPiAN
Cj4gPiANCj4gPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gPiBGcm9tOiBJbnRl
bC1nZnggPGludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxm
IE9mIEpvc8OpDQo+ID4gPiBSb2JlcnRvIGRlIFNvdXphDQo+ID4gPiBTZW50OiBUdWVzZGF5LCBT
ZXB0ZW1iZXIgMjEsIDIwMjEgNjoxMSBBTQ0KPiA+ID4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcNCj4gPiA+IENjOiBNdW4sIEd3YW4tZ3llb25nIDxnd2FuLWd5ZW9uZy5tdW5A
aW50ZWwuY29tPjsgU291emEsIEpvc2UNCj4gPiA+IDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4g
PiA+IFN1YmplY3Q6IFtJbnRlbC1nZnhdIFtQQVRDSCB2MyAzLzNdIGRybS9pOTE1L2Rpc3BsYXkv
cHNyOiBEbyBmdWxsIGZldGNoIHdoZW4NCj4gPiA+IGhhbmRsaW5nIGJpcGxhbmFyIGZvcm1hdHMN
Cj4gPiA+IA0KPiA+ID4gRnJvbTogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50
ZWwuY29tPg0KPiA+ID4gDQo+ID4gPiBXZSBhcmUgc3RpbGwgbWlzc2luZyB0aGUgUFNSMiBzZWxl
Y3RpdmUgZmV0Y2ggaGFuZGxpbmcgb2YgYmlwbGFuYXIgZm9ybWF0cyBidXQNCj4gPiA+IHVudGls
IHByb3BlciBoYW5kbGUgaXMgYWRkZWQgd2UgY2FuIHdvcmthcm91bmQgaXQgYnkgZG9pbmcgZnVs
bCBmcmFtZXMgZmV0Y2gNCj4gPiA+IHdoZW4gc3RhdGUgaGFzIGJpcGxhbmFyIGZvcm1hdHMuDQo+
ID4gPiANCj4gPiA+IFdlIG5lZWQgdGhlIHNlY29uZCBjaGVjayBiZWNhdXNlIGFuIHVwZGF0ZSBp
biBhIHJlZ3VsYXIgZm9ybWF0IGNvdWxkDQo+ID4gPiBpbnRlcnNlY3Qgd2l0aCBhIGJpcGxhbmFy
IHBsYW5lIHRoYXQgd2FzIG5vdCBpbml0aWFseSBwYXJ0IG9mIHRoZSBhdG9taWMgY29tbWl0Lg0K
PiA+ID4gDQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25n
Lm11bkBpbnRlbC5jb20+DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNv
dXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiA+IC0tLQ0KPiA+ID4gICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMTEgKysrKysrKysrKy0NCj4gPiA+ICAg
MSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gPiA+IA0K
PiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMNCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+
ID4gaW5kZXggOGNlYjIyYzVhMWE2Yi4uZTZhNGMyNzk3NWQ4YyAxMDA2NDQNCj4gPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+IEBAIC0xNjAxLDkg
KzE2MDEsMTMgQEAgaW50IGludGVsX3BzcjJfc2VsX2ZldGNoX3VwZGF0ZShzdHJ1Y3QNCj4gPiA+
IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4gPiAgICAqIFRPRE86IE5vdCBjbGVhciBo
b3cgdG8gaGFuZGxlIHBsYW5lcyB3aXRoIG5lZ2F0aXZlDQo+ID4gPiBwb3NpdGlvbiwNCj4gPiA+
ICAgICogYWxzbyBwbGFuZXMgYXJlIG5vdCB1cGRhdGVkIGlmIHRoZXkgaGF2ZSBhIG5lZ2F0aXZl
IFgNCj4gPiA+ICAgICogcG9zaXRpb24gc28gZm9yIG5vdyBkb2luZyBhIGZ1bGwgdXBkYXRlIGlu
IHRoaXMgY2FzZXMNCj4gPiA+ICsgKg0KPiA+ID4gKyAqIFRPRE86IFdlIGFyZSBtaXNzaW5nIGJp
cGxhbmFyIGZvcm1hdHMgaGFuZGxpbmcsIHVudGlsIGl0IGlzDQo+ID4gPiArICogaW1wbGVtZW50
ZWQgaXQgd2lsbCBzZW5kIGZ1bGwgZnJhbWUgdXBkYXRlcy4NCj4gPiA+ICAgICovDQo+ID4gPiAg
IGlmIChuZXdfcGxhbmVfc3RhdGUtPnVhcGkuZHN0LnkxIDwgMCB8fA0KPiA+ID4gLSAgICBuZXdf
cGxhbmVfc3RhdGUtPnVhcGkuZHN0LngxIDwgMCkgew0KPiA+ID4gKyAgICBuZXdfcGxhbmVfc3Rh
dGUtPnVhcGkuZHN0LngxIDwgMCB8fA0KPiA+ID4gKyAgICBuZXdfcGxhbmVfc3RhdGUtPmh3LmZi
LT5mb3JtYXQtPmlzX3l1dikgew0KPiA+ID4gICBmdWxsX3VwZGF0ZSA9IHRydWU7DQo+ID4gPiAg
IGJyZWFrOw0KPiA+ID4gICB9DQo+ID4gPiBAQCAtMTY4Miw2ICsxNjg2LDExIEBAIGludCBpbnRl
bF9wc3IyX3NlbF9mZXRjaF91cGRhdGUoc3RydWN0DQo+ID4gPiBpbnRlbF9hdG9taWNfc3RhdGUg
KnN0YXRlLA0KPiA+ID4gICBpZiAoIWRybV9yZWN0X2ludGVyc2VjdCgmaW50ZXIsICZuZXdfcGxh
bmVfc3RhdGUtPnVhcGkuZHN0KSkNCj4gPiA+ICAgY29udGludWU7DQo+ID4gPiANCj4gPiANCj4g
PiBDb2RlIGNvbW1lbnQgY2FuIGJlIGFkZGVkIGhlcmUgd2h5IHdlIG5lZWQgdGhpcyBjaGVjayBh
Z2FpbiBpbiBzYW1lIGZ1bmN0aW9uLg0KPiA+IEVuYWJsaW5nIGZ1bGwgZnJhbWUgdXBkYXRlIGlz
IGZpbmUgZm9yIG1lIGZvciBwbGFuYXIgZm9ybWF0IGJ1dCBub3Qgc3VyZSB3ZSBuZWVkIHRoZSAy
bmQgY2hlY2suDQo+ID4gDQo+IFRoYXQncyByaWdodCwgd2UgZG9uJ3QgbmVlZCB0byBzZXQgdGhp
cyBjb2RlIGhlcmUgYmVjYXVzZSB3ZSBzZXQgDQo+IGZ1bGxfdXBkYXRlIGFib3ZlIHdoZW4gIiBu
ZXdfcGxhbmVfc3RhdGUtPmh3LmZiLT5mb3JtYXQtPmlzX3l1diIgaXMgdHJ1ZS4NCg0KV2UgbmVl
ZCBpdCwgdGhlIHJlYXNvbiBpcyBvbiB0aGUgY29tbWl0IGRlc2NyaXB0aW9uLg0KDQo+IA0KPiBJ
IHdpbGwgdXBkYXRlIHRoaXMgaW4gdGhlIG5leHQgdmVyc2lvbi4NCj4gDQo+IFRoYW5rcywgQW5p
bWVzaC4NCj4gDQo+ID4gUmVnYXJkcywNCj4gPiBBbmltZXNoDQo+ID4gDQo+ID4gPiAraWYgKG5l
d19wbGFuZV9zdGF0ZS0+aHcuZmItPmZvcm1hdC0+aXNfeXV2KSB7DQo+ID4gPiArZnVsbF91cGRh
dGUgPSB0cnVlOw0KPiA+ID4gK2JyZWFrOw0KPiA+ID4gK30NCj4gPiA+ICsNCj4gPiA+ICAgc2Vs
X2ZldGNoX2FyZWEgPSAmbmV3X3BsYW5lX3N0YXRlLT5wc3IyX3NlbF9mZXRjaF9hcmVhOw0KPiA+
ID4gICBzZWxfZmV0Y2hfYXJlYS0+eTEgPSBpbnRlci55MSAtIG5ld19wbGFuZV9zdGF0ZS0+dWFw
aS5kc3QueTE7DQo+ID4gPiAgIHNlbF9mZXRjaF9hcmVhLT55MiA9IGludGVyLnkyIC0gbmV3X3Bs
YW5lX3N0YXRlLT51YXBpLmRzdC55MTsNCj4gPiA+IC0tDQo+ID4gPiAyLjMzLjANCj4gPiANCg0K
