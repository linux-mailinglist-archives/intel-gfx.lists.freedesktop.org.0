Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C024A1BF
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 15:11:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAE206E178;
	Tue, 18 Jun 2019 13:11:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84B406E167;
 Tue, 18 Jun 2019 13:11:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 06:11:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,389,1557212400"; d="scan'208";a="311022391"
Received: from irsmsx106.ger.corp.intel.com ([163.33.3.31])
 by orsmga004.jf.intel.com with ESMTP; 18 Jun 2019 06:11:24 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.143]) by
 IRSMSX106.ger.corp.intel.com ([169.254.8.222]) with mapi id 14.03.0439.000;
 Tue, 18 Jun 2019 14:11:23 +0100
From: "Ser, Simon" <simon.ser@intel.com>
To: "guillaume.tucker@collabora.com" <guillaume.tucker@collabora.com>,
 "Hiler, Arkadiusz" <arkadiusz.hiler@intel.com>, "Latvala, Petri"
 <petri.latvala@intel.com>
Thread-Topic: [igt-dev] [PATCH i-g-t v2 1/4] meson: add libatomic dependency
Thread-Index: AQHVIe95evnpkY7gRUiJP1ElnlUSe6aau9mAgAZQlYCAAE2rAA==
Date: Tue, 18 Jun 2019 13:11:23 +0000
Message-ID: <77328a2ef9af3f64b85a9aa7d2f52232c1d878c3.camel@intel.com>
References: <cover.1560433744.git.guillaume.tucker@collabora.com>
 <b1e0d69a8352f9fd2e65293f2292086f4ef260e7.1560433744.git.guillaume.tucker@collabora.com>
 <d479de99f2729dbd0f2f0615b41ebeaff025cc9a.camel@intel.com>
 <250e4bb0-efa6-1f23-6195-9cf3a7398c06@collabora.com>
In-Reply-To: <250e4bb0-efa6-1f23-6195-9cf3a7398c06@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.181]
Content-ID: <A4D8843D42A79745AFA11C0162ED329E@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t v2 1/4] meson: add libatomic
 dependency
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDE5LTA2LTE4IGF0IDA5OjMzICswMTAwLCBHdWlsbGF1bWUgVHVja2VyIHdyb3Rl
Og0KPiBPbiAxNC8wNi8yMDE5IDA5OjA3LCBTZXIsIFNpbW9uIHdyb3RlOg0KPiA+IE9uIFRodSwg
MjAxOS0wNi0xMyBhdCAxNDo1MyArMDEwMCwgR3VpbGxhdW1lIFR1Y2tlciB3cm90ZToNCj4gPiA+
IEFkZCBjb25kaXRpb25hbCBkZXBlbmRlbmN5IG9uIGxpYmF0b21pYyBpbiBvcmRlciB0byBiZSBh
YmxlIHRvIHVzZSB0aGUNCj4gPiA+IF9fYXRvbWljXyogZnVuY3Rpb25zIGluc3RlYWQgb2YgdGhl
IG9sZGVyIF9fc3luY18qIG9uZXMuICBUaGUNCj4gPiA+IGxpYmF0b21pYyBsaWJyYXJ5IGlzIG9u
bHkgbmVlZGVkIHdoZW4gdGhlcmUgYXJlbid0IGFueSBuYXRpdmUgc3VwcG9ydA0KPiA+ID4gb24g
dGhlIGN1cnJlbnQgYXJjaGl0ZWN0dXJlLCBzbyBhIGxpbmtlciB0ZXN0IGlzIHVzZWQgZm9yIHRo
aXMNCj4gPiA+IHB1cnBvc2UuICBUaGlzIGVuYWJsZXMgYXRvbWljIG9wZXJhdGlvbnMgdG8gYmUg
b24gYSB3aWRlciBudW1iZXIgb2YNCj4gPiA+IGFyY2hpdGVjdHVyZXMgaW5jbHVkaW5nIE1JUFMu
DQo+ID4gPiANCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEd1aWxsYXVtZSBUdWNrZXIgPGd1aWxsYXVt
ZS50dWNrZXJAY29sbGFib3JhLmNvbT4NCj4gPiA+IC0tLQ0KPiA+ID4gIG1lc29uLmJ1aWxkIHwg
MTMgKysrKysrKysrKysrKw0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCsp
DQo+ID4gPiANCj4gPiA+IGRpZmYgLS1naXQgYS9tZXNvbi5idWlsZCBiL21lc29uLmJ1aWxkDQo+
ID4gPiBpbmRleCA2MjY4YzU4ZDM2MzQuLmRhMjVhMjhmMzI2OCAxMDA2NDQNCj4gPiA+IC0tLSBh
L21lc29uLmJ1aWxkDQo+ID4gPiArKysgYi9tZXNvbi5idWlsZA0KPiA+ID4gQEAgLTE3OSw2ICsx
NzksMTkgQEAgbWF0aCA9IGNjLmZpbmRfbGlicmFyeSgnbScpDQo+ID4gPiAgcmVhbHRpbWUgPSBj
Yy5maW5kX2xpYnJhcnkoJ3J0JykNCj4gPiA+ICBkbHN5bSA9IGNjLmZpbmRfbGlicmFyeSgnZGwn
KQ0KPiA+ID4gIHpsaWIgPSBjYy5maW5kX2xpYnJhcnkoJ3onKQ0KPiA+ID4gK2lmIGNjLmxpbmtz
KCcnJw0KPiA+ID4gKyNpbmNsdWRlIDxzdGRpbnQuaD4NCj4gPiA+ICtpbnQgbWFpbih2b2lkKSB7
DQo+ID4gPiArICB1aW50MzJfdCB4MzIgPSAwOw0KPiA+ID4gKyAgdWludDY0X3QgeDY0ID0gMDsN
Cj4gPiA+ICsgIF9fYXRvbWljX2xvYWRfbigmeDMyLCBfX0FUT01JQ19TRVFfQ1NUKTsNCj4gPiA+
ICsgIF9fYXRvbWljX2xvYWRfbigmeDY0LCBfX0FUT01JQ19TRVFfQ1NUKTsNCj4gPiANCj4gPiBN
aW5vcjogbWF5YmUgd2UgY291bGQndmUgdXNlZCBzdGRhdG9taWMuaCdzIGF0b21pY18qIGZ1bmN0
aW9ucyAod2l0aG91dA0KPiA+IHRoZSAiX18iIHByZWZpeCkgZm9yIGNvbnNpc3RlbmN5IHdpdGgg
dGhlIGFjdHVhbCBJR1QgY29kZT8NCj4gDQo+IEkgYWN0dWFsbHkgdGhvdWdodCBpdCB3YXMgbW9y
ZSBjb3JyZWN0IHRvIHVzZSB0aGUgX19hdG9taWNfKg0KPiBmdW5jdGlvbnMgZGlyZWN0bHkgZnJv
bSB0aGUgbGliYXRvbWljIGxpYnJhcnkgYXMgdGhpcyBpcyBhIGxpbmtlcg0KPiB0ZXN0LiAgSWYg
Zm9yIGFueSByZWFzb24gc3RkYXRvbWljLmggY2hhbmdlcyBiZXR3ZWVuIHZlcnNpb25zIG9yDQo+
IGNvbXBpbGVycyBhbmQgdXNlcyBzb21ldGhpbmcgZWxzZSB0aGFuIGxpYmF0b21pYywgdGhlbiB0
aGlzIHRlc3QNCj4gd291bGQgYmVjb21lIGludmFsaWQuDQoNCkkgZG9uJ3Qga25vdyB3aGV0aGVy
IF9fYXRvbWljXyogZnVuY3Rpb25zIGFyZSBzdGFuZGFyZCBidWlsdGlucyBvciBpZg0KdGhleSBh
cmUganVzdCBhbiBpbXBsZW1lbnRhdGlvbiBkZXRhaWwuDQoNCklmIHRoZXkgYXJlIHN0YW5kYXJk
IGJ1aWx0aW5zLCBpdCBtYWtlcyBtb3JlIHNlbnNlIHRvIGNoZWNrIGZvciB0aGVtIGFzDQp0aGlz
IHBhdGNoIGRvZXMuDQoNCklmIHRoZXkgYXJlbid0LCB3ZSBpbnN0ZWFkIHNob3VsZCB0cnkgdG8g
bGluayBhIHByb2dyYW0gdXNpbmcNCnN0ZGF0b21pYy5oJ3MgYXRvbWljXyogZnVuY3Rpb25zLCBh
bmQgaWYgaXQgZG9lc24ndCB3b3JrIGFzc3VtZQ0KbGliYXRvbWljLnNvIGlzIHJlcXVpcmVkLg0K
DQo+ID4gPiArICByZXR1cm4gMDsNCj4gPiA+ICt9JycnLCBuYW1lIDogJ2J1aWx0LWluIGF0b21p
Y3MnKQ0KPiA+ID4gKwlsaWJhdG9taWMgPSBbXQ0KPiA+IA0KPiA+IFdlIGNvdWxkIHVzZSBudWxs
X2RlcCBpbnN0ZWFkLCB0byBtYWtlIGl0IGNvbnNpc3RlbnQgd2l0aCB0aGUgb3RoZXINCj4gPiBi
cmFuY2guDQo+IA0KPiBBY2ssIHdpbGwgZml4IHRoYXQgaW4gdjMuDQo+IA0KPiA+ID4gK2Vsc2UN
Cj4gPiA+ICsJbGliYXRvbWljID0gY2MuZmluZF9saWJyYXJ5KCdhdG9taWMnKQ0KPiA+ID4gK2Vu
ZGlmDQo+ID4gPiAgDQo+ID4gPiAgaWYgY2MuaGFzX2hlYWRlcignbGludXgva2QuaCcpDQo+ID4g
PiAgCWNvbmZpZy5zZXQoJ0hBVkVfTElOVVhfS0RfSCcsIDEpDQo+IA0KPiBUaGFua3MsDQo+IEd1
aWxsYXVtZQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
