Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 543EC43E776
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Oct 2021 19:43:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B48F46E99F;
	Thu, 28 Oct 2021 17:43:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DC146E99F
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Oct 2021 17:43:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10151"; a="316674446"
X-IronPort-AV: E=Sophos;i="5.87,190,1631602800"; d="scan'208";a="316674446"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 10:43:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,190,1631602800"; d="scan'208";a="665502344"
Received: from irsmsx603.ger.corp.intel.com ([163.33.146.9])
 by orsmga005.jf.intel.com with ESMTP; 28 Oct 2021 10:43:55 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx603.ger.corp.intel.com (163.33.146.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 28 Oct 2021 18:43:53 +0100
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Thu, 28 Oct 2021 10:43:51 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Kahola, Mika" <mika.kahola@intel.com>, "Hogander, Jouni"
 <jouni.hogander@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/psr2: Do full fetches when doing
 async flips
Thread-Index: AQHXy2JsUvo0zFK/Z0CWP/vcGcJ2s6vo3ycAgAA8cQCAAAgpAIAAA1mA
Date: Thu, 28 Oct 2021 17:43:51 +0000
Message-ID: <bfd7f8ca64b41e4c49d341a5cbcbe761dc471af6.camel@intel.com>
References: <20211027184855.108731-1-jose.souza@intel.com>
 <YXqmfPPnSr3j/mDe@intel.com>
 <ff05e4fa04fe0ebcc79c9b86e249bd5ab5392529.camel@intel.com>
 <YXrgCBB53Zj86a4C@intel.com>
In-Reply-To: <YXrgCBB53Zj86a4C@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <33C9D3CB77CED743B249B9D179EE4D89@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr2: Do full fetches when doing
 async flips
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

T24gVGh1LCAyMDIxLTEwLTI4IGF0IDIwOjM4ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFRodSwgT2N0IDI4LCAyMDIxIGF0IDA1OjAyOjQxUE0gKzAwMDAsIFNvdXphLCBKb3Nl
IHdyb3RlOg0KPiA+IE9uIFRodSwgMjAyMS0xMC0yOCBhdCAxNjozMiArMDMwMCwgVmlsbGUgU3ly
asOkbMOkIHdyb3RlOg0KPiA+ID4gT24gV2VkLCBPY3QgMjcsIDIwMjEgYXQgMTE6NDg6NTVBTSAt
MDcwMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3cm90ZToNCj4gPiA+ID4gQXN5bmMgZmxpcHMg
YXJlIG5vdCBzdXBwb3J0ZWQgYnkgc2VsZWN0aXZlIGZldGNoIGFuZCB3ZSBoYWQgYSBjaGVjaw0K
PiA+ID4gPiBmb3IgdGhhdCBidXQgdGhhdCBjaGVjayB3YXMgb25seSBleGVjdXRlZCB3aGVuIGRv
aW5nIG1vZGVzZXRzLg0KPiA+ID4gPiBTbyBtb3ZpbmcgdGhpcyBjaGVjayB0byB0aGUgcGFnZSBm
bGlwIHBhdGgsIHNvIGl0IGNhbiBiZSBwcm9wZXJseQ0KPiA+ID4gPiBoYW5kbGVkLg0KPiA+ID4g
PiANCj4gPiA+ID4gVGhpcyBmaXggYSBmYWlsdXJlIGluIGttc19hc3luY19mbGlwc0B0ZXN0LWN1
cnNvci4NCj4gPiA+ID4gDQo+ID4gPiA+IENjOiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50
ZWwuY29tPg0KPiA+ID4gPiBDYzogSm91bmkgSG9nYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVs
LmNvbT4NCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9z
ZS5zb3V6YUBpbnRlbC5jb20+DQo+ID4gPiA+IC0tLQ0KPiA+ID4gPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDggKystLS0tLS0NCj4gPiA+ID4gIDEgZmlsZSBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+ID4gPiA+IA0KPiA+ID4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+ID4gaW5kZXgg
OGQwOGUzY2YwOGMxZi4uY2U2ODUwZWQ3MmM2MCAxMDA2NDQNCj4gPiA+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+IEBAIC03MjksMTIgKzcy
OSw2IEBAIHN0YXRpYyBib29sIGludGVsX3BzcjJfc2VsX2ZldGNoX2NvbmZpZ192YWxpZChzdHJ1
Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+ID4gPiAgCQlyZXR1cm4gZmFsc2U7DQo+ID4gPiA+
ICAJfQ0KPiA+ID4gPiAgDQo+ID4gPiA+IC0JaWYgKGNydGNfc3RhdGUtPnVhcGkuYXN5bmNfZmxp
cCkgew0KPiA+ID4gPiAtCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwNCj4gPiA+ID4gLQkJ
CSAgICAiUFNSMiBzZWwgZmV0Y2ggbm90IGVuYWJsZWQsIGFzeW5jIGZsaXAgZW5hYmxlZFxuIik7
DQo+ID4gPiA+IC0JCXJldHVybiBmYWxzZTsNCj4gPiA+ID4gLQl9DQo+ID4gPiA+IC0NCj4gPiA+
ID4gIAkvKiBXYV8xNDAxMDI1NDE4NSBXYV8xNDAxMDEwMzc5MiAqLw0KPiA+ID4gPiAgCWlmIChJ
U19UR0xfRElTUExBWV9TVEVQKGRldl9wcml2LCBTVEVQX0EwLCBTVEVQX0MwKSkgew0KPiA+ID4g
PiAgCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwNCj4gPiA+ID4gQEAgLTE1OTIsNiArMTU4
Niw4IEBAIHN0YXRpYyBib29sIHBzcjJfc2VsX2ZldGNoX3BpcGVfc3RhdGVfc3VwcG9ydGVkKGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjDQo+ID4gPiA+ICB7DQo+ID4gPiA+ICAJaWYg
KGNydGNfc3RhdGUtPnNjYWxlcl9zdGF0ZS5zY2FsZXJfaWQgPj0gMCkNCj4gPiA+ID4gIAkJcmV0
dXJuIGZhbHNlOw0KPiA+ID4gPiArCWlmIChjcnRjX3N0YXRlLT51YXBpLmFzeW5jX2ZsaXApDQo+
ID4gPiA+ICsJCXJldHVybiBmYWxzZTsNCj4gPiA+IA0KPiA+ID4gVGhpcyBsb29rcyBkb2RneS4g
UHJldHR5IHN1cmUgd2UgY2FuJ3QgdHVybiBvZmYgdGhpcyB0aGluZyBkdXJpbmcNCj4gPiA+IGFu
IGFzeW5jIGZsaXAuIFNvIEkgdGhpbmsgdGhlIGNvcnJlY3Qgc2hvcnQgdGVybSBmaXggaXMgdG8g
bm90IGRvDQo+ID4gPiBhc3luYyBmbGlwcyB3aXRoIHBzcjIgZW5hYmxlZC4gVGhlIGxvbmdlciB0
ZXJtIGZpeCB3b3VsZCBpbnZvbHZlDQo+ID4gPiB1c2luZyB0aGUgc2FtZSBhcHByb2FjaCBTdGFu
IGlzIHByZXBhcmluZyBmb3IgdGhlIGFzeW5jIGZsaXANCj4gPiA+IHdhdGVybWFyayB0d2Vha2lu
Zywgd2hpY2ggaXMgdG8gY29udmVydCB0aGUgZmlyc3QgYXN5bmMgZmxpcCBpbnRvDQo+ID4gPiBh
IHN5bmMgZmxpcC4NCj4gPiA+IA0KPiA+IA0KPiA+IEl0IGlzIG5vdCB0dXJuaW5nIFBTUjIgb2Zm
LCBpdCBpcyB0ZWxsaW5nIGhhcmR3YXJlIHRvIGZldGNoIHRoZSB3aG9sZSBtZW1vcnkgb2YgYWxs
IHBsYW5lcyBhbmQgc2VuZCB0aGUgd2hvbGUgc2NyZWVuIHRvIHBhbmVsIGluc3RlYWQgb2YgZmV0
Y2hpbmcgYW5kDQo+ID4gc2VuZGluZyBhIHNtYWxsZXIgYXJlYSBmb3IgdGhpcyBmcmFtZSwgd2Ug
YWxzbyBkbyB0aGF0IHdoZW4gYSBwbGFuZSBpcyBtb3ZlZCB0byBhIG5lZ2F0aXZlIGNvb3JkaW5h
dGUuDQo+IA0KPiBEb2Vzbid0IG1hdHRlci4gV2hhdGV2ZXIgcmVnaXN0ZXIgaXMgcnNwb25zaWJs
ZSBmb3IgdGhpcyBpcyBwcmVzdW1hYmx5IGxhdGNoZWQNCj4gYXQgdGhlIG5leHQgdmJsYW5rIHdo
aWNoIGlzIGFmdGVyIHRoZSBhc3luYyBmbGlwIGFscmVhZHkgaGFwcGVuZWQuDQo+IA0KDQpUaGF0
IGlzIGV4YWN0bHkgd2hhdCBCU3BlYyA1NTIyOSBhc2tzIHVzIHRvIGRvOg0KDQpOb3Qgc3VwcG9y
dGVkIHdpdGggYXN5bmMgZmxpcHMuIFRoZSBwbGFuZSBzaXplIGFuZCBwb3NpdGlvbiBjYW5ub3Qg
YmUgY2hhbmdlZCB3aXRoIGFzeW5jIGZsaXBzLCBzbyBzZWxlY3RpdmUgZmV0Y2ggY2Fubm90IGJl
IHVzZWQuIFNvZnR3YXJlIG11c3QNCm91dHB1dCBhIGZ1bGwgZnJhbWUgZm9yIGFzeW5jIGZsaXBz
Lg0K
