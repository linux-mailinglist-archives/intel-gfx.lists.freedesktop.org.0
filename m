Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AFB621609B
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jul 2020 22:53:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C52C989336;
	Mon,  6 Jul 2020 20:53:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 713A789336
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2020 20:53:09 +0000 (UTC)
IronPort-SDR: 2OSRGOf7VYIy1RUur0ggq+VdLAia1Uo1UCgeu9XphjJfiMwk8tYoISvr/jpw8tebH/F7spYDI+
 4E3CJ8fPsdgQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9674"; a="212477820"
X-IronPort-AV: E=Sophos;i="5.75,321,1589266800"; d="scan'208";a="212477820"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2020 13:53:08 -0700
IronPort-SDR: u4lBAGOTS+p76ld0fUs4DLdkp/bkJJ+D+R9XKltJ5wCyBjsIPzWPWOkbNSI15JoEq9wJJ4Ar2H
 6cVTXEAeU2jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,321,1589266800"; d="scan'208";a="314068367"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga008.jf.intel.com with ESMTP; 06 Jul 2020 13:53:08 -0700
Received: from fmsmsx115.amr.corp.intel.com (10.18.116.19) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 6 Jul 2020 13:53:08 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.171]) by
 fmsmsx115.amr.corp.intel.com ([169.254.4.234]) with mapi id 14.03.0439.000;
 Mon, 6 Jul 2020 13:53:07 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH 1/4] drm/i915/fbc: Use the correct plane stride
Thread-Index: AQHWUIbIsH+kuGJf4k+lTnCC+c1twaj1ZIIAgADM1gCABVJWAA==
Date: Mon, 6 Jul 2020 20:53:06 +0000
Message-ID: <a47fe0175e49b9c7defa2b9cc46c08c942bbcad3.camel@intel.com>
References: <20200702153723.24327-1-ville.syrjala@linux.intel.com>
 <20200702153723.24327-2-ville.syrjala@linux.intel.com>
 <a3d6b78b881a1fd554c12f247ecd8cbfa8106faf.camel@intel.com>
 <20200703113852.GL6112@intel.com>
In-Reply-To: <20200703113852.GL6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.51]
Content-ID: <65AAE98C770D6D45B7462EE3ED91EC9D@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/fbc: Use the correct plane
 stride
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

T24gRnJpLCAyMDIwLTA3LTAzIGF0IDE0OjM4ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFRodSwgSnVsIDAyLCAyMDIwIGF0IDExOjI0OjA0UE0gKzAwMDAsIFNvdXphLCBKb3Nl
IHdyb3RlOg0KPiA+IE9uIFRodSwgMjAyMC0wNy0wMiBhdCAxODozNyArMDMwMCwgVmlsbGUgU3ly
amFsYSB3cm90ZToNCj4gPiA+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+DQo+ID4gPiANCj4gPiA+IENvbnN1bHQgdGhlIGFjdHVhbCBwbGFuZSBz
dHJpZGUgaW5zdGVhZCBvZiB0aGUgZmIgc3RyaWRlLiBUaGUgdHdvDQo+ID4gPiB3aWxsIGRpc2Fn
cmVlIHdoZW4gd2UgcmVtYXAgdGhlIGd0dC4gVGhlIHBsYW5lIHN0cmlkZSBpcyB3aGF0IHRoZQ0K
PiA+ID4gaHcgd2lsbCBiZSBmZWQgc28gdGhhdCdzIHdoYXQgd2Ugc2hvdWxkIGxvb2sgYXQgZm9y
IHRoZSBGQkMNCj4gPiA+IHJldHJpY3Rpb25zL2NmYiBhbGxvY2F0aW9uLg0KPiA+ID4gDQo+ID4g
PiBTaW5jZSB3ZSBubyBsb25nZXIgcmVxdWlyZSBhIGZlbmNlIHdlIGFyZSBnb2luZyB0byBhdHRl
bXB0IHVzaW5nDQo+ID4gPiBGQkMgd2l0aCByZW1hcHBpbmcsIGFuZCBzbyB3ZSBzaG91bGQgbG9v
ayBhdCBjb3JyZWN0IHN0cmlkZS4NCj4gPiA+IA0KPiA+ID4gV2l0aCA5MC8yNzAgZGVncmVlIHJv
dGF0aW9uIHRoZSBwbGFuZSBzdHJpZGUgaXMgc3RvcmVkIGluIHVuaXRzDQo+ID4gPiBvZiBwaXhl
bHMsIHNvIHdlIG5lZWQgdG8gY29udmVyIGl0IHRvIGJ5dGVzIGZvciB0aGUgcHVycG9zZXMNCj4g
PiA+IG9mIGNhbGN1bGF0aW5nIHRoZSBjZmIgc3RyaWRlLiBOb3QgZW50aXJlbHkgc3VyZSBpZiB0
aGlzIG1hdGNoZXMNCj4gPiA+IHRoZSBodyBiZWhhdmlvdXIgdGhvdWdoLiBOZWVkIHRvIHJldmVy
c2UgZW5naW5lZXIgdGhhdCBhdCBzb21lDQo+ID4gPiBwb2ludC4uLg0KPiA+ID4gDQo+ID4gPiBX
ZSBhbHNvIG5lZWQgdG8gcmVvcmRlciB0aGUgcGl4ZWwgZm9ybWF0IGNoZWNrIHZzLiBzdHJpZGUg
Y2hlY2sNCj4gPiA+IHRvIGF2b2lkIHRyaWdnZXJpbmcgYSBzcHVyaW91cyBXQVJOKHN0cmlkZSAm
IDYzKSB3aXRoIGNwcD09MSBhbmQNCj4gPiA+IHBsYW5lIHN0cmlkZT09MzIuDQo+ID4gPiANCj4g
PiA+IHYyOiBUcnkgdG8gZGVhbCB3aXRoIHJvdGF0ZWQgc3RyaWRlIGFuZCByZWxhdGVkIFdBUk4N
Cj4gPiA+IA0KPiA+IA0KPiA+IFJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxq
b3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiANCj4gPiA+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNv
dXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiA+IEZpeGVzOiA2OTFmN2JhNThkNTIgKCJk
cm0vaTkxNS9kaXNwbGF5L2ZiYzogTWFrZSBmZW5jZXMgYSBuaWNlLXRvLWhhdmUgZm9yIEdFTjkr
IikNCj4gPiA+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+DQo+ID4gPiAtLS0NCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2ZiYy5jIHwgMTYgKysrKysrKysrKy0tLS0tLQ0KPiA+ID4gIDEgZmlsZSBj
aGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQ0KPiA+ID4gDQo+ID4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gPiA+IGluZGV4IDY5YTA2
ODJkZGI2YS4uZDMwYzJhMzg5Mjk0IDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiA+ID4gQEAgLTY5NSw5ICs2OTUsMTMgQEAgc3RhdGlj
IHZvaWQgaW50ZWxfZmJjX3VwZGF0ZV9zdGF0ZV9jYWNoZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0
YywNCj4gPiA+ICAJY2FjaGUtPnBsYW5lLnBpeGVsX2JsZW5kX21vZGUgPSBwbGFuZV9zdGF0ZS0+
aHcucGl4ZWxfYmxlbmRfbW9kZTsNCj4gPiA+ICANCj4gPiA+ICAJY2FjaGUtPmZiLmZvcm1hdCA9
IGZiLT5mb3JtYXQ7DQo+ID4gPiAtCWNhY2hlLT5mYi5zdHJpZGUgPSBmYi0+cGl0Y2hlc1swXTsN
Cj4gPiA+ICAJY2FjaGUtPmZiLm1vZGlmaWVyID0gZmItPm1vZGlmaWVyOw0KPiA+ID4gIA0KPiA+
ID4gKwkvKiBGSVhNRSBpcyB0aGlzIGNvcnJlY3Q/ICovDQo+ID4gPiArCWNhY2hlLT5mYi5zdHJp
ZGUgPSBwbGFuZV9zdGF0ZS0+Y29sb3JfcGxhbmVbMF0uc3RyaWRlOw0KPiA+ID4gKwlpZiAoZHJt
X3JvdGF0aW9uXzkwX29yXzI3MChwbGFuZV9zdGF0ZS0+aHcucm90YXRpb24pKQ0KPiA+IA0KPiA+
IElmIGl0IHdhcyB3cm9uZyBvdXIgQ0kgd291bGQgY2F1Z2h0IHRoaXMgaW4gQkRXIG9yIFNOQiBm
b3IgZXhhbXBsZS4NCj4gDQo+IE5vdCByZWFsbHkuIFdlbGwsIGNlcnRhaW5seSBub3Qgb24gcHJl
LXNrbCBzaW5jZSB0aGV5IGRvbid0IGRvIDkwLzI3MA0KPiByb3RhdGlvbi4gQW5kIHByb2JhYmx5
IG5vdCBldmVuIG9uIHNrbCsgc2luY2UgYW55IHdyb25nIGFzc3VtcHRpb24NCg0KQ2hlY2tpbmcg
cm90YXRpb25faXNfdmFsaWQoKSBHRU41IHVwIHRvIEdFTjggYWxsb3dzIDkwLzI3MCByb3RhdGlv
bi4NCg0KDQo+IGFib3V0IGhvdyB0aGUgY2ZiIHN0cmlkZSBpcyBjYWxjdWxhdGVkIGJ5IHRoZSBo
dyB3b3VsZCBqdXN0IGNhdXNlIGl0DQo+IHRvIHNjcmliYmxlIG92ZXIgc3RvbGVuIG1lbW9yeSB3
ZSBkaWRuJ3QgYWxsb2NhdGUuIFNvIHVubGVzcyB3ZSd2ZQ0KPiBzdGFydGVkIHRvIHVzZSBzdG9s
ZW4gbW9yZSBleHRlbnNpdmVseSBpbiByZWNlbnQgdGltZXMgc3VjaCBwcm9ibGVtcw0KPiB3b3Vs
ZCBwcm9iYWJseSBnbyB1bm5vdGljZWQuDQo+IA0KPiA+ID4gKwkJY2FjaGUtPmZiLnN0cmlkZSAq
PSBmYi0+Zm9ybWF0LT5jcHBbMF07DQo+ID4gPiArDQo+ID4gPiAgCS8qIEZCQzEgY29tcHJlc3Np
b24gaW50ZXJ2YWw6IGFyYml0cmFyeSBjaG9pY2Ugb2YgMSBzZWNvbmQgKi8NCj4gPiA+ICAJY2Fj
aGUtPmludGVydmFsID0gZHJtX21vZGVfdnJlZnJlc2goJmNydGNfc3RhdGUtPmh3LmFkanVzdGVk
X21vZGUpOw0KPiA+ID4gIA0KPiA+ID4gQEAgLTc5Nyw2ICs4MDEsMTEgQEAgc3RhdGljIGJvb2wg
aW50ZWxfZmJjX2Nhbl9hY3RpdmF0ZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykNCj4gPiA+ICAJ
CXJldHVybiBmYWxzZTsNCj4gPiA+ICAJfQ0KPiA+ID4gIA0KPiA+ID4gKwlpZiAoIXBpeGVsX2Zv
cm1hdF9pc192YWxpZChkZXZfcHJpdiwgY2FjaGUtPmZiLmZvcm1hdC0+Zm9ybWF0KSkgew0KPiA+
ID4gKwkJZmJjLT5ub19mYmNfcmVhc29uID0gInBpeGVsIGZvcm1hdCBpcyBpbnZhbGlkIjsNCj4g
PiA+ICsJCXJldHVybiBmYWxzZTsNCj4gPiA+ICsJfQ0KPiA+ID4gKw0KPiA+ID4gIAlpZiAoIXJv
dGF0aW9uX2lzX3ZhbGlkKGRldl9wcml2LCBjYWNoZS0+ZmIuZm9ybWF0LT5mb3JtYXQsDQo+ID4g
PiAgCQkJICAgICAgIGNhY2hlLT5wbGFuZS5yb3RhdGlvbikpIHsNCj4gPiA+ICAJCWZiYy0+bm9f
ZmJjX3JlYXNvbiA9ICJyb3RhdGlvbiB1bnN1cHBvcnRlZCI7DQo+ID4gPiBAQCAtODEzLDExICs4
MjIsNiBAQCBzdGF0aWMgYm9vbCBpbnRlbF9mYmNfY2FuX2FjdGl2YXRlKHN0cnVjdCBpbnRlbF9j
cnRjICpjcnRjKQ0KPiA+ID4gIAkJcmV0dXJuIGZhbHNlOw0KPiA+ID4gIAl9DQo+ID4gPiAgDQo+
ID4gPiAtCWlmICghcGl4ZWxfZm9ybWF0X2lzX3ZhbGlkKGRldl9wcml2LCBjYWNoZS0+ZmIuZm9y
bWF0LT5mb3JtYXQpKSB7DQo+ID4gPiAtCQlmYmMtPm5vX2ZiY19yZWFzb24gPSAicGl4ZWwgZm9y
bWF0IGlzIGludmFsaWQiOw0KPiA+ID4gLQkJcmV0dXJuIGZhbHNlOw0KPiA+ID4gLQl9DQo+ID4g
PiAtDQo+ID4gPiAgCWlmIChjYWNoZS0+cGxhbmUucGl4ZWxfYmxlbmRfbW9kZSAhPSBEUk1fTU9E
RV9CTEVORF9QSVhFTF9OT05FICYmDQo+ID4gPiAgCSAgICBjYWNoZS0+ZmIuZm9ybWF0LT5oYXNf
YWxwaGEpIHsNCj4gPiA+ICAJCWZiYy0+bm9fZmJjX3JlYXNvbiA9ICJwZXItcGl4ZWwgYWxwaGEg
YmxlbmRpbmcgaXMgaW5jb21wYXRpYmxlIHdpdGggRkJDIjsNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
