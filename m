Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CCCA8761
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 21:05:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30B1989B51;
	Wed,  4 Sep 2019 19:05:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D356D89B4D
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2019 19:05:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 12:05:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,467,1559545200"; d="scan'208";a="199095631"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by fmsmga001.fm.intel.com with ESMTP; 04 Sep 2019 12:05:53 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.91]) by
 fmsmsx104.amr.corp.intel.com ([169.254.3.2]) with mapi id 14.03.0439.000;
 Wed, 4 Sep 2019 12:05:52 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "daniel@ffwll.ch" <daniel@ffwll.ch>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: disable set/get_tiling ioctl on
 gen12+
Thread-Index: AQHVV3mqz9dp+m3qSUCZtIUHXAtboKcE6KeAgAARkQCAARxlgIAAF8SAgAHW14CACXrWAIAAAI6AgAAE6gCAAKzYAIAIrY6AgADMJD6AAMHdAA==
Date: Wed, 4 Sep 2019 19:05:51 +0000
Message-ID: <bf0044bf93d033e9189e80add38f7f4e9556a491.camel@intel.com>
References: <20190820170631.26570-1-daniel.vetter@ffwll.ch>
 <20190820195451.15671-1-daniel.vetter@ffwll.ch>
 <055acb8e-8ba4-52b7-8cba-a5fef504e95e@intel.com>
 <20190821135537.GI5942@intel.com>
 <CAKMK7uFBXmDXA32dUhfvkxqxYDidbt0R6rowXBk7BwUBMU9qqA@mail.gmail.com>
 <CAOFGe97==LTH0pUh2idtA0SqQLf=+Tq90h0cBVwhv4gkHLq-7Q@mail.gmail.com>
 <e01a7b6890346444f3fa3f78cca1a2315412a37a.camel@intel.com>
 <156702323116.15406.18211831116094527542@skylake-alporthouse-com>
 <6c22439c4f38d0be6f8183bbe279c9e0f3db983b.camel@intel.com>
 <20190829065004.GG2112@phenom.ffwll.local>
 <f3057a98459f5ace5d89b0ae981d0dfcf61de197.camel@intel.com>
 <CAKMK7uH2XAKf+ninB9FySYCzC6ZLrJtb8AXXRmzwxrWdBPZYjg@mail.gmail.com>
 <CAKMK7uEG8JrsMjqgynf37q2CmpU65xS==JrwynDf45tnzgMuFg@mail.gmail.com>
In-Reply-To: <CAKMK7uEG8JrsMjqgynf37q2CmpU65xS==JrwynDf45tnzgMuFg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <E4B891E67DCCFC449E3F18C52548D830@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: disable set/get_tiling ioctl on
 gen12+
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "kenneth@whitecape.org" <kenneth@whitecape.org>, "Auld, 
 Matthew" <matthew.auld@intel.com>, "Vetter, Daniel" <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDE5LTA5LTA0IGF0IDE2OjMxICswMjAwLCBEYW5pZWwgVmV0dGVyIHdyb3RlOg0K
PiBPbiBXZWQsIFNlcCA0LCAyMDE5IGF0IDQ6MjkgUE0gRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZm
d2xsLmNoPiB3cm90ZToNCj4gPiBPbiBUdWUsIFNlcCAzLCAyMDE5IGF0IDk6MjEgUE0gU291emEs
IEpvc2UgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiA+IHdyb3RlOg0KPiA+ID4gT24gVGh1LCAy
MDE5LTA4LTI5IGF0IDA4OjUwICswMjAwLCBEYW5pZWwgVmV0dGVyIHdyb3RlOg0KPiA+ID4gPiBP
biBXZWQsIEF1ZyAyOCwgMjAxOSBhdCAwODozMToyN1BNICswMDAwLCBTb3V6YSwgSm9zZSB3cm90
ZToNCj4gPiA+ID4gPiBPbiBXZWQsIDIwMTktMDgtMjggYXQgMjE6MTMgKzAxMDAsIENocmlzIFdp
bHNvbiB3cm90ZToNCj4gPiA+ID4gPiA+IFF1b3RpbmcgU291emEsIEpvc2UgKDIwMTktMDgtMjgg
MjE6MTE6NTMpDQo+ID4gPiA+ID4gPiA+IFJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNv
dXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gSXQn
cyB1c2luZyBhIG5vbi1zdGFuZGFyZCBmb3IgaTkxNSBlcnJvciBjb2RlLCBhbmQNCj4gPiA+ID4g
PiA+IGdldF90aWxpbmcgaXMNCj4gPiA+ID4gPiA+IG5vdA0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+
IEh1dW0gc2hvdWxkIGl0IHVzZSBFTk9UU1VQUCB0aGVuPyENCj4gPiA+ID4gDQo+ID4gPiA+IGh0
dHBzOi8vZHJpLmZyZWVkZXNrdG9wLm9yZy9kb2NzL2RybS9ncHUvZHJtLXVhcGkuaHRtbCNyZWNv
bW1lbmRlZC1pb2N0bC1yZXR1cm4tdmFsdWVzDQo+ID4gPiA+IA0KPiA+ID4gPiBQZXIgYWJvdmUg
ImZlYXR1cmUgbm90IHN1cHBvcnRlZCIgLT4gRU9QTk9UU1VQUC4NCj4gPiA+IA0KPiA+ID4gQnV0
IGxpa2UgQ2hyaXMgc2FpZCB3ZSBhcmUgbm90IHVzaW5nIEVPUE5PVFNVUFAgaW4gaTkxNSwNCj4g
PiA+IGk5MTVfcGVyZl9vcGVuX2lvY3RsKCkgYW5kIG90aGVyIDIgcGVyZiBpb2N0bCB1c2VzIEVO
T1NVUFAsDQo+ID4gPiBzaG91bGQgd2UNCj4gPiA+IGNvbnZlcnQgdGhvc2UgdG8gRU9QTk9UU1VQ
UD8NCj4gPiANCj4gPiAkIGdpdCBncmVwIEVPUE5PVFNVUCAtLSBkcml2ZXJzL2dwdS9kcm0vIHwg
d2MgLWwNCj4gPiAxMTQNCj4gPiAkIGdpdCBncmVwIEVOT1RTVVAgLS0gZHJpdmVycy9ncHUvZHJt
LyB8IHdjIC1sDQo+ID4gMzINCj4gDQo+IE5vdGUgdGhhdCBtb3N0IG9mIHRoZSBFTk9UU1VQIGlz
IGluIGRyaXZlcnMsIGZvciB0aGUgZHJtIGNvcmUgaXQncw0KPiBldmVuIG1vcmUgY2xlYXI6DQo+
IA0KPiAkIGdpdCBncmVwIEVPUE5PVFNVUCAtLSBkcml2ZXJzL2dwdS9kcm0vKmMgfCB3YyAtbA0K
PiA4Mw0KPiAkIGdpdCBncmVwIEVOT1RTVVAgLS0gZHJpdmVycy9ncHUvZHJtLypjIHwgd2MgLWwN
Cj4gNQ0KPiANCj4gQ2hlZXJzLCBEYW5pZWwNCj4gDQo+ID4gUGx1cyBpOTE1X3BtdS5jIGFsc28g
aGFzIGEgdXNlIG9mIEVPUE5PVFNVUFAgYWxyZWFkeS4NCj4gPiANCj4gPiBGdXJ0aGVybW9yZSB0
aGUgaGVhZGVyIGZvciBFT1BOT1RTVVAgaGFzIGEgcHJldHR5IGNsZWFyIGNvbW1lbnQ6DQo+ID4g
DQo+ID4gLyogRGVmaW5lZCBmb3IgdGhlIE5GU3YzIHByb3RvY29sICovDQo+ID4gDQo+ID4gQWJv
dmUgdGhlIGVudG9yZSBibG9jayBvZiBlcnJvciBjb2RlcyBjb250YWluaW5nIEVOT1RTVVBQLg0K
PiA+IA0KPiA+IFNvIGdpdmVuIGFsbCB0aGF0LCBwbHVzIHRoYXQgd2UndmUgZGVjaWRlZCB0byBn
byB3aXRoIEVPUE5PVFNVUFAgYXMNCj4gPiB0aGUgZHJtLXdpZGUgcmVjb21tZW5kYXRpb246IEVP
UE5PVFNVUFAgaXQgaXMuDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxq
b3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiA+IA0KPiA+IElmIHlvdSBkaXNhZ3JlZSwgSSB0aGlu
ayB0aGVyZSdzIGEgcHJldHR5IHN1YnN0YW50aWFsIHBhdGNoIHNlcmllcw0KPiA+IGZvcg0KPiA+
IHlvdSB0byB0eXBlIGFuZCBmaXggdGhlIGRvY3MgYW5kIG1vc3QgdXNlcnMgcGx1cyBleHBsYWlu
IHdoeSB3ZQ0KPiA+IHNob3VsZA0KPiA+IHVzZSBhbiBuc2Ytc3BlY2lmaWMgZXJyb3IgY29kZSAo
d2hpY2ggaXNuJ3QgbXVjaCB3b3JzZSB0aGFuIHRoZQ0KPiA+IGFidXNlL3JlaW50ZXJwcmV0YXRp
b24gd2UgY3VycmVudGx5IGRvLCBidXQgc3RpbGwgSSB0aGluayBpdCdzIGENCj4gPiBiaXQNCj4g
PiBtb3JlIGJlbmRpbmcgb2YgZXJybm8gY29kZSBpbnRlbnRpb25zKS4NCj4gPiANCj4gPiBDaGVl
cnMsIERhbmllbA0KPiA+IA0KPiA+IA0KPiA+IA0KPiA+ID4gPiA+ID4gYWZmZWN0ZWQsIGl0IHdp
bGwgYWx3YXlzIHJldHVybiBMSU5FQVIuIFlvdSBjYW5ub3Qgc2V0DQo+ID4gPiA+ID4gPiB0aWxp
bmcgYXMNCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBGb2xsb3dpbmcgdGhpcyBzZXRfdGlsaW5nKCkg
TElORUFSIHNob3VsZCBiZSBhbGxvd2VkIHRvby4NCj4gPiA+ID4gPiBJIHByZWZlciB0aGUgY3Vy
cmVudCBhcHByb2FjaCBvZiByZXR1cm5pbmcgZXJyb3IuDQo+ID4gPiA+IA0KPiA+ID4gPiBJJ20g
bm90IHNlZWluZyB0aGUgdmFsdWUgaW4ga2VlcGluZyBnZXRfdGlsaW5nIHN1cHBvcnRlZC4NCj4g
PiA+ID4gRWl0aGVyDQo+ID4gPiA+IHVzZXJzcGFjZQ0KPiA+ID4gPiBzdGlsbCB1c2VzIHRoZSBs
ZWdhY3kgYmFja2hhbm5lbCBhbmQgZHJpMiwgaW4gd2hpY2ggY2FzZSBpdA0KPiA+ID4gPiBuZWVk
cyB0bw0KPiA+ID4gPiBiZQ0KPiA+ID4gPiBmaXhlZCBubyBtYXR0ZXIgd2hhdC4gT3IgaXQncyB1
c2luZyBtb2RpZmllcnMsIGluIHdoaWNoIGNhc2UNCj4gPiA+ID4gdGhpcyBpcw0KPiA+ID4gPiBk
ZWFkDQo+ID4gPiA+IGNvZGUuIE9ubHkgb3RoZXIgdXNlciBJIGNhbiB0aGluayBvZiBpcyB0YWtl
b3ZlciBmb3IgZmFzdGJvb3QsDQo+ID4gPiA+IGJ1dCBpZg0KPiA+ID4gPiB5b3UNCj4gPiA+ID4g
Z2V0IGFueXRoaW5nIGVsc2UgdGhhbiB1bnRpbGVkIGl0J3MgYWxzbyBicm9rZW4gKHdlIGRvbid0
IGhhdmUNCj4gPiA+ID4gYW4NCj4gPiA+ID4gaW9jdGwgdG8NCj4gPiA+ID4gcmVhZCBvdXQgdGhl
IG1vZGlmaWVycywgaGVjayBldmVuIGFsbCB0aGUgcGxhbmVzLCB0aGVyZSdzIG5vDQo+ID4gPiA+
IGdldGZiMikuDQo+ID4gPiA+IA0KPiA+ID4gPiBTbyByZWFsbHkgbm90IHNlZWluZyB0aGUgcG9p
bnQgaW4ga2VlcGluZyB0aGF0IHdvcmtpbmcuDQo+ID4gPiA+IC1EYW5pZWwNCj4gPiANCj4gPiAN
Cj4gPiAtLQ0KPiA+IERhbmllbCBWZXR0ZXINCj4gPiBTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwg
Q29ycG9yYXRpb24NCj4gPiArNDEgKDApIDc5IDM2NSA1NyA0OCAtIGh0dHA6Ly9ibG9nLmZmd2xs
LmNoDQo+IA0KPiANCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
