Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 876E6A7393
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2019 21:21:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B11489791;
	Tue,  3 Sep 2019 19:21:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DC1189791
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2019 19:21:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Sep 2019 12:21:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,464,1559545200"; d="scan'208";a="207203366"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga004.fm.intel.com with ESMTP; 03 Sep 2019 12:21:21 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.91]) by
 FMSMSX103.amr.corp.intel.com ([169.254.2.141]) with mapi id 14.03.0439.000;
 Tue, 3 Sep 2019 12:21:21 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "daniel@ffwll.ch" <daniel@ffwll.ch>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: disable set/get_tiling ioctl on
 gen12+
Thread-Index: AQHVV3mqz9dp+m3qSUCZtIUHXAtboKcE6KeAgAARkQCAARxlgIAAF8SAgAHW14CACXrWAIAAAI6AgAAE6gCAAKzYAIAIrY6A
Date: Tue, 3 Sep 2019 19:21:20 +0000
Message-ID: <f3057a98459f5ace5d89b0ae981d0dfcf61de197.camel@intel.com>
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
In-Reply-To: <20190829065004.GG2112@phenom.ffwll.local>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <CC6536528235784C837D4BB6120C640B@intel.com>
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
Cc: "daniel.vetter@ffwll.ch" <daniel.vetter@ffwll.ch>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "kenneth@whitecape.org" <kenneth@whitecape.org>, "Auld,
 Matthew" <matthew.auld@intel.com>, "Vetter, Daniel" <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDE5LTA4LTI5IGF0IDA4OjUwICswMjAwLCBEYW5pZWwgVmV0dGVyIHdyb3RlOg0K
PiBPbiBXZWQsIEF1ZyAyOCwgMjAxOSBhdCAwODozMToyN1BNICswMDAwLCBTb3V6YSwgSm9zZSB3
cm90ZToNCj4gPiBPbiBXZWQsIDIwMTktMDgtMjggYXQgMjE6MTMgKzAxMDAsIENocmlzIFdpbHNv
biB3cm90ZToNCj4gPiA+IFF1b3RpbmcgU291emEsIEpvc2UgKDIwMTktMDgtMjggMjE6MTE6NTMp
DQo+ID4gPiA+IFJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXph
QGludGVsLmNvbT4NCj4gPiA+IA0KPiA+ID4gSXQncyB1c2luZyBhIG5vbi1zdGFuZGFyZCBmb3Ig
aTkxNSBlcnJvciBjb2RlLCBhbmQgZ2V0X3RpbGluZyBpcw0KPiA+ID4gbm90DQo+ID4gDQo+ID4g
SHV1bSBzaG91bGQgaXQgdXNlIEVOT1RTVVBQIHRoZW4/IQ0KPiANCj4gaHR0cHM6Ly9kcmkuZnJl
ZWRlc2t0b3Aub3JnL2RvY3MvZHJtL2dwdS9kcm0tdWFwaS5odG1sI3JlY29tbWVuZGVkLWlvY3Rs
LXJldHVybi12YWx1ZXMNCj4gDQo+IFBlciBhYm92ZSAiZmVhdHVyZSBub3Qgc3VwcG9ydGVkIiAt
PiBFT1BOT1RTVVBQLg0KDQpCdXQgbGlrZSBDaHJpcyBzYWlkIHdlIGFyZSBub3QgdXNpbmcgRU9Q
Tk9UU1VQUCBpbiBpOTE1LA0KaTkxNV9wZXJmX29wZW5faW9jdGwoKSBhbmQgb3RoZXIgMiBwZXJm
IGlvY3RsIHVzZXMgRU5PU1VQUCwgc2hvdWxkIHdlDQpjb252ZXJ0IHRob3NlIHRvIEVPUE5PVFNV
UFA/DQoNCj4gDQo+ID4gPiBhZmZlY3RlZCwgaXQgd2lsbCBhbHdheXMgcmV0dXJuIExJTkVBUi4g
WW91IGNhbm5vdCBzZXQgdGlsaW5nIGFzIA0KPiA+IA0KPiA+IEZvbGxvd2luZyB0aGlzIHNldF90
aWxpbmcoKSBMSU5FQVIgc2hvdWxkIGJlIGFsbG93ZWQgdG9vLg0KPiA+IEkgcHJlZmVyIHRoZSBj
dXJyZW50IGFwcHJvYWNoIG9mIHJldHVybmluZyBlcnJvci4NCj4gDQo+IEknbSBub3Qgc2VlaW5n
IHRoZSB2YWx1ZSBpbiBrZWVwaW5nIGdldF90aWxpbmcgc3VwcG9ydGVkLiBFaXRoZXINCj4gdXNl
cnNwYWNlDQo+IHN0aWxsIHVzZXMgdGhlIGxlZ2FjeSBiYWNraGFubmVsIGFuZCBkcmkyLCBpbiB3
aGljaCBjYXNlIGl0IG5lZWRzIHRvDQo+IGJlDQo+IGZpeGVkIG5vIG1hdHRlciB3aGF0LiBPciBp
dCdzIHVzaW5nIG1vZGlmaWVycywgaW4gd2hpY2ggY2FzZSB0aGlzIGlzDQo+IGRlYWQNCj4gY29k
ZS4gT25seSBvdGhlciB1c2VyIEkgY2FuIHRoaW5rIG9mIGlzIHRha2VvdmVyIGZvciBmYXN0Ym9v
dCwgYnV0IGlmDQo+IHlvdQ0KPiBnZXQgYW55dGhpbmcgZWxzZSB0aGFuIHVudGlsZWQgaXQncyBh
bHNvIGJyb2tlbiAod2UgZG9uJ3QgaGF2ZSBhbg0KPiBpb2N0bCB0bw0KPiByZWFkIG91dCB0aGUg
bW9kaWZpZXJzLCBoZWNrIGV2ZW4gYWxsIHRoZSBwbGFuZXMsIHRoZXJlJ3Mgbm8gZ2V0ZmIyKS4N
Cj4gDQo+IFNvIHJlYWxseSBub3Qgc2VlaW5nIHRoZSBwb2ludCBpbiBrZWVwaW5nIHRoYXQgd29y
a2luZy4NCj4gLURhbmllbA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
