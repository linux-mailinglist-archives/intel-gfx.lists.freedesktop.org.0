Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AFBAF4426D0
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Nov 2021 06:33:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABC316FA80;
	Tue,  2 Nov 2021 05:33:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6997F6FA80
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Nov 2021 05:33:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="317387461"
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; d="scan'208";a="317387461"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 22:33:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; d="scan'208";a="540728675"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga008.fm.intel.com with ESMTP; 01 Nov 2021 22:33:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 1 Nov 2021 22:33:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 1 Nov 2021 22:33:52 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Mon, 1 Nov 2021 22:33:52 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/3] drm/i915: Add struct to hold IP version
Thread-Index: AQHXxUfp90zJKsmfc0KKIjZpNBUnJqvcGbGAgACkkICAASbWAIACCM+AgAP7fwCADFmiAA==
Date: Tue, 2 Nov 2021 05:33:52 +0000
Message-ID: <90ce635eef9e3280fefcab43df32082f69e80df6.camel@intel.com>
References: <20211020002353.193893-1-jose.souza@intel.com>
 <87tuhcni3k.fsf@intel.com>
 <74cc5b4a8ebe2a5f7ae01994c6782124328a2e0e.camel@intel.com>
 <87zgr2ldz5.fsf@intel.com> <20211022201529.w56cpg67bxupfbyh@ldmartin-desk2>
 <874k95lbl3.fsf@intel.com>
In-Reply-To: <874k95lbl3.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <BC25CD3B973AE846846E0108ADBAFC6C@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Add struct to hold IP version
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
Cc: "daniel.vetter@ffwll.ch" <daniel.vetter@ffwll.ch>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIxLTEwLTI1IGF0IDEyOjA0ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gRnJpLCAyMiBPY3QgMjAyMSwgTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRl
bC5jb20+IHdyb3RlOg0KPiA+IE9uIFRodSwgT2N0IDIxLCAyMDIxIGF0IDA0OjExOjI2UE0gKzAz
MDAsIEphbmkgTmlrdWxhIHdyb3RlOg0KPiA+ID4gT24gV2VkLCAyMCBPY3QgMjAyMSwgIlNvdXph
LCBKb3NlIiA8am9zZS5zb3V6YUBpbnRlbC5jb20+IHdyb3RlOg0KPiA+ID4gPiBPbiBXZWQsIDIw
MjEtMTAtMjAgYXQgMTI6NDcgKzAzMDAsIEphbmkgTmlrdWxhIHdyb3RlOg0KPiA+ID4gPiA+IE9u
IFR1ZSwgMTkgT2N0IDIwMjEsIEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50
ZWwuY29tPiB3cm90ZToNCj4gPiA+ID4gPiA+IFRoZSBjb25zdGFudCBwbGF0Zm9ybSBkaXNwbGF5
IHZlcnNpb24gaXMgbm90IHVzaW5nIHRoaXMgbmV3IHN0cnVjdCBidXQNCj4gPiA+ID4gPiA+IHRo
ZSBydW50aW1lIHZhcmlhbnQgd2lsbCBkZWZpbml0ZWx5IHVzZSBpdC4NCj4gPiA+ID4gPiANCj4g
PiA+ID4gPiBDYzogU29tZSBtb3JlIGZvbGtzIHRvIGhpamFjayB0aGlzIHRocmVhZC4gU29ycnkh
IDspDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gV2UgYWRkZWQgcnVudGltZSBpbmZvIHRvIGk5MTUs
IGJlY2F1c2Ugd2UgaGFkIHRoaXMgaWRlYSBhbmQgZ29hbCBvZg0KPiA+ID4gPiA+IHR1cm5pbmcg
dGhlIGRldmljZSBpbmZvIHRvIGEgdHJ1bHkgY29uc3QgcG9pbnRlciB0byB0aGUgaW5mbyBzdHJ1
Y3R1cmVzDQo+ID4gPiA+ID4gaW4gaTkxNV9wY2kuYyB0aGF0IGFyZSBzdG9yZWQgaW4gcm9kYXRh
LiBUaGUgaWRlYSB3YXMgdGhhdCB3ZSdsbCBoYXZlIGENCj4gPiA+ID4gPiBjb21wbGV0ZSBzcGxp
dCBvZiBtdXRhYmxlIGFuZCBpbW11dGFibGUgZGV2aWNlIGRhdGEsIHdpdGggYWxsIHRoZQ0KPiA+
ID4gPiA+IG11dGFibGUgZGF0YSBpbiBydW50aW1lIGluZm8uDQo+ID4gPiA+ID4gDQo+ID4gPiA+
ID4gQWxhcywgd2UgbmV2ZXIgZ290IHRoZXJlLiBNb3JlIGFuZCBtb3JlIGRhdGEgdGhhdCB3YXMg
bW9zdGx5IGNvbnN0IGJ1dA0KPiA+ID4gPiA+IHNvbWV0aW1lcyBuZWVkZWQgdHdlYWtpbmcga2Vw
dCBwaWxpbmcgdXAuIG1rd3JpdGVfZGV2aWNlX2luZm8oKSB3YXMNCj4gPiA+ID4gPiBzdXBwb3Nl
ZCB0byBiZSBhIGNsdWUgbm90IHRvIG1vZGlmeSBkZXZpY2UgaW5mbyBydW50aW1lLCBidXQgaW5z
dGVhZCBpdA0KPiA+ID4gPiA+IHByb2xpZmVyYXRlZC4gTm93IHdlIGhhdmUgcGxhY2VzIGxpa2Ug
aW50ZWxfZmJjX2luaXQoKSBkaXNhYmxpbmcgRkJDDQo+ID4gPiA+ID4gdGhyb3VnaCB0aGF0LiBC
dXQgbW9zdCBpbXBvcnRhbnRseSwgd2UgaGF2ZSBmdXNpbmcgdGhhdCBjb25zaWRlcmFibHkNCj4g
PiA+ID4gPiBjaGFuZ2VzIHRoZSBkZXZpY2UgaW5mbywgYW5kIHRoZSBjb3B5aW5nIGFsbCBvZiB0
aGF0IGRhdGEgb3ZlciB0bw0KPiA+ID4gPiA+IHJ1bnRpbWUgaW5mbyBwcm9iYWJseSBpc24ndCB3
b3J0aCBpdC4NCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBTaG91bGQgd2UganVzdCBhY2tub3dsZWRn
ZSB0aGF0IHRoZSBydW50aW1lIGluZm8gaXMgdXNlbGVzcywgYW5kIG1vdmUNCj4gPiA+ID4gPiBz
b21lIG9mIHRoYXQgZGF0YSB0byBpbnRlbF9kZXZpY2VfaW5mbyBhbmQgc29tZSBvZiBpdCBlbHNl
d2hlcmUgaW4gaTkxNT8NCj4gPiA+ID4gDQo+ID4gPiA+IFdpdGggbmV3ZXIgcGxhdGZvcm1zIGdl
dHRpbmcgbW9yZSBhbmQgbW9yZSBtb2R1bGFyLCBJIGJlbGlldmUgd2Ugd2lsbA0KPiA+ID4gPiBu
ZWVkIHRvIHN0b3JlIGV2ZW4gbW9yZSBtdXRhYmxlIHBsYXRmb3JtIGluZm9ybWF0aW9uLg0KPiA+
ID4gPiANCj4gPiA+ID4gSW4gbXkgb3BpbmlvbiBhIHNlcGFyYXRpb24gb2YgaW1tdXRhYmxlIGFu
ZCBtdXRhYmxlIHBsYXRmb3JtDQo+ID4gPiA+IGluZm9ybWF0aW9uIGlzIGNsZWFuZXIgYW5kIGVh
c2llciB0byBtYWludGFpbi4NCj4gPiA+IA0KPiA+ID4gWWVhaCwgdGhhdCdzIGtpbmQgb2Ygd2hh
dCB0aGUgb3JpZ2luYWwgcG9pbnQgd2FzIHdpdGggZGV2aWNlIGFuZCBydW50aW1lDQo+ID4gPiBp
bmZvIHNwbGl0LiBJdCdzIGp1c3QgdGhhdCBhIGxvdCBvZiB0aGUgc3VwcG9zZWRseSBpbW11dGFi
bGUgcGxhdGZvcm0NCj4gPiA+IGluZm8gaGFzIHR1cm5lZCBpbnRvIG11dGFibGUgaW5mb3JtYXRp
b24uDQo+ID4gPiANCj4gPiA+IEkgdGhpbmsgZWl0aGVyIHdlIG5lZWQgdG8gcHJvcGVybHkgZm9s
bG93IHRocm91Z2ggd2l0aCB0aGF0IGlkZWEsIGFuZA0KPiA+ID4gb25seSBzdG9yZSBhIGNvbnN0
IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyAqIHRvIHRoZSByb2RhdGEgaW4NCj4gPiA+IGk5MTVf
cGNpLmMsIG9yIGp1c3Qgc2NyYXAgaXQuIE5vbmUgb2YgdGhpcyAiYWxtb3N0IGltbXV0YWJsZSIg
YnVzaW5lc3MNCj4gPiA+IHRoYXQgd2UgY3VycmVudGx5IGhhdmUuICJBbG1vc3QgaW1tdXRhYmxl
IiBtZWFucyAibXV0YWJsZSIuDQo+ID4gPiANCj4gPiA+IFRoZSBtYWluIHByb2JsZW0gaXMgdGhh
dCB3ZSdsbCBzdGlsbCB3YW50IHRvIGhhdmUgdGhlIGluaXRpYWwgdmFsdWVzIGluDQo+ID4gPiBz
dGF0aWMgZGF0YS4gT25lIGlkZWEgaXMgc29tZXRoaW5nIGxpa2UgdGhpczoNCj4gPiA+IA0KPiA+
ID4gc3RydWN0IGludGVsX2RldmljZV9pbmZvIHsNCj4gPiA+IAljb25zdCBzdHJ1Y3QgaW50ZWxf
cnVudGltZV9pbmZvICpydW50aW1lX2luZm87DQo+ID4gPiAgICAgICAgLyogLi4uICovDQo+ID4g
PiB9Ow0KPiA+ID4gDQo+ID4gPiBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2RldmljZV9pbmZv
IGk5NjVnX2luZm8gPSB7DQo+ID4gPiAJLnJ1bnRpbWVfaW5mbyA9ICZpOTY1Z19pbml0aWFsX3J1
bnRpbWVfaW5mbzsNCj4gPiA+ICAgICAgICAvKiAuLi4gKi8NCj4gPiA+IH07DQo+ID4gPiANCj4g
PiA+IEFuZCB0aGluZ3MgbGlrZSAucGlwZV9tYXNrIHdvdWxkIGJlIHBhcnQgb2Ygc3RydWN0DQo+
ID4gPiBpbnRlbF9ydW50aW1lX2luZm8uIFlvdSdkIGNvcHkgdGhlIHN0dWZmIG92ZXIgZnJvbSBp
bnRlbF9kZXZpY2VfaW5mbw0KPiA+ID4gcnVudGltZV9pbmZvIG1lbWJlciB0byBpOTE1LT5fX3J1
bnRpbWUsIGJ1dCBpOTE1LT5fX2luZm8gd291bGQgYmUgYQ0KPiA+ID4gY29uc3QgcG9pbnRlciB0
byB0aGUgZGV2aWNlIGluZm8uIFlvdSdkIG5ldmVyIGFjY2VzcyB0aGUgcnVudGltZV9pbmZvDQo+
ID4gPiBtZW1iZXIgYWZ0ZXIgb2YgaW50ZWxfZGV2aWNlX2luZm8gYWZ0ZXIgcHJvYmUuDQo+ID4g
DQo+ID4gDQo+ID4gSSBsaWtlIHRoaXMgYXBwcm9hY2guIEkgdGhpbmsgdGhlIG9ubHkgcHJvYmxl
bSB3b3VsZCBiZSB0aGF0IGlmIHNvbWVvbmUNCj4gPiBpbmFkdmVydGVudGx5IGRvIGEgaTkxNS0+
X19pbmZvLT5ydW50aW1lX2luZm8gdGhleSB3aWxsIGJlIGFjY2Vzc2luZyB0aGUNCj4gPiB3cm9u
ZyBkYXRhLiBTbyBtYXliZSB0byBiZSBjbGVhciBkbw0KPiA+IA0KPiA+IAlzdHJ1Y3QgaW50ZWxf
ZGV2aWNlX2luZm8gew0KPiA+IAkJY29uc3Qgdm9pZCAqaW5pdGlhbF9ydW50aW1lX2luZm87DQo+
ID4gCQkvKiAuLi4gKi8NCj4gPiAJfTsNCj4gPiANCj4gPiAJc3RhdGljIGNvbnN0IHN0cnVjdCBp
bnRlbF9kZXZpY2VfaW5mbyBpOTY1Z19pbmZvID0gew0KPiA+IAkJLmluaXRpYWxfcnVudGltZV9p
bmZvID0gJmk5NjVnX2luaXRpYWxfcnVudGltZV9pbmZvOw0KPiA+IAkJLyogLi4uICovDQo+ID4g
CX07DQo+ID4gDQo+ID4gdGhpcyB3b3VsZCBtYWtlIGl0IG9wYXF1ZSBhbmQgZXZlbiBoaW50IGJ5
IHRoZSBuYW1lIHNvIHRoZSBkZXZlbG9wZXIgaXMNCj4gPiBub3QgdGVtcHRlZCB0byBhZGQgYSBj
YXN0Lg0KPiANCj4gSSB0aGluayB0aGF0J3MgYWxsIGZhaXJseSBzdHJhaWdodGZvcndhcmQuIEFu
eSBpZGVhcyBvbiBob3cgdG8gZG8gdGhlDQo+IGZsYWdzIHNwbGl0IGNsZWFubHksIHRob3VnaD8g
SSBhbHJlYWR5IGRpc2xpa2UgdGhlDQo+IERFVl9JTkZPX0ZPUl9FQUNIX0ZMQUcoKSBhbmQgREVW
X0lORk9fRElTUExBWV9GT1JfRUFDSF9GTEFHKCkgc3BsaXQuDQoNCkp1c3QgdG8gYmUgc3VyZSwg
dGhpcyBkaXNjdXNzaW9uIHRoYXQgSmFuaSBzdGFydGVkIGNhbiBiZSBidWlsZCBvbiB0b3Agb2Yg
dGhpcyBwYXRjaCByaWdodD8NCg0KV2lsbCB0cnkgdG8gZ2V0IHNvbWVvbmUgdG8gcmV2aWV3IHRo
ZSByZW1haW5pbmcgcGF0Y2ggb2YgdGhpcyBzZXJpZXMgdG8gbWVyZ2UgaXQuDQoNCj4gDQo+IEJS
LA0KPiBKYW5pLg0KPiANCj4gDQo+IA0KPiA+IA0KPiA+IEx1Y2FzIERlIE1hcmNoaQ0KPiA+IA0K
PiA+ID4gDQo+ID4gPiBJdCdzIGp1c3QgcmVhbGx5IHBhaW5mdWwsIGZvciBpbnN0YW5jZSBiZWNh
dXNlIHdlIGFscmVhZHkgaGF2ZSB0d28gc2V0cw0KPiA+ID4gb2YgZmxhZ3MsIGRpc3BsYXkgYW5k
IG5vbi1kaXNwbGF5LCBhbmQgdGhvc2Ugd291bGQgYmUgbXVsdGlwbGllZCB0bw0KPiA+ID4gbXV0
YWJsZS9pbW11dGFibGUuIEFuZCB3ZSBzaG91bGQgcHJvYmFibHkgaW5jcmVhc2UsIG5vdCBkZWNy
ZWFzZSwgdGhlDQo+ID4gPiBzcGxpdCBiZXR3ZWVuIGRpc3BsYXkgYW5kIG5vbi1kaXNwbGF5LiBU
aGUgbWFjcm8gaG9ycm9yIHNob3cgb2YNCj4gPiA+IGk5MTVfcGNpLmMgd291bGQganVzdCBncm93
IHdvcnNlLg0KPiA+ID4gDQo+ID4gPiANCj4gPiA+IEJSLA0KPiA+ID4gSmFuaS4NCj4gPiA+IA0K
PiA+ID4gDQo+ID4gPiANCj4gPiA+ID4gDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gDQo+ID4gPiA+
ID4gQlIsDQo+ID4gPiA+ID4gSmFuaS4NCj4gPiA+ID4gPiANCj4gPiA+ID4gDQo+ID4gPiANCj4g
PiA+IC0tIA0KPiA+ID4gSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENl
bnRlcg0KPiANCg0K
