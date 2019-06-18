Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C71B04A419
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 16:37:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D478189A9F;
	Tue, 18 Jun 2019 14:37:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFABC897D0;
 Tue, 18 Jun 2019 14:37:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 07:37:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,389,1557212400"; d="scan'208";a="357875486"
Received: from irsmsx108.ger.corp.intel.com ([163.33.3.3])
 by fmsmga005.fm.intel.com with ESMTP; 18 Jun 2019 07:37:02 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.143]) by
 IRSMSX108.ger.corp.intel.com ([169.254.11.46]) with mapi id 14.03.0439.000;
 Tue, 18 Jun 2019 15:37:01 +0100
From: "Ser, Simon" <simon.ser@intel.com>
To: "guillaume.tucker@collabora.com" <guillaume.tucker@collabora.com>
Thread-Topic: [PATCH i-g-t v3 1/4] meson: add libatomic dependency
Thread-Index: AQHVJdFZXMaE7dfInU2P3MOpN9u/QaahVPSAgAAK14CAAAp3AA==
Date: Tue, 18 Jun 2019 14:37:00 +0000
Message-ID: <3500e46eef3a29c9bb80da69231b85270964abcd.camel@intel.com>
References: <20190618122746.61310-1-guillaume.tucker@collabora.com>
 <20190618122746.61310-2-guillaume.tucker@collabora.com>
 <db85b6b438cbd4434e19ba1dd9556591e2618d1b.camel@intel.com>
 <e429449a-da1b-80d3-d07f-b17b5c348cbf@collabora.com>
In-Reply-To: <e429449a-da1b-80d3-d07f-b17b5c348cbf@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.181]
Content-ID: <C13A6004FE9755449D1F5541A250CC7B@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t v3 1/4] meson: add libatomic dependency
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

T24gVHVlLCAyMDE5LTA2LTE4IGF0IDE0OjU5ICswMTAwLCBHdWlsbGF1bWUgVHVja2VyIHdyb3Rl
Og0KPiBPbiAxOC8wNi8yMDE5IDE0OjIwLCBTZXIsIFNpbW9uIHdyb3RlOg0KPiA+IE9uIFR1ZSwg
MjAxOS0wNi0xOCBhdCAxMzoyNyArMDEwMCwgR3VpbGxhdW1lIFR1Y2tlciB3cm90ZToNCj4gPiA+
IEFkZCBjb25kaXRpb25hbCBkZXBlbmRlbmN5IG9uIGxpYmF0b21pYyBpbiBvcmRlciB0byBiZSBh
YmxlIHRvIHVzZSB0aGUNCj4gPiA+IF9fYXRvbWljXyogZnVuY3Rpb25zIGluc3RlYWQgb2YgdGhl
IG9sZGVyIF9fc3luY18qIG9uZXMuICBUaGUNCj4gPiA+IGxpYmF0b21pYyBsaWJyYXJ5IGlzIG9u
bHkgbmVlZGVkIHdoZW4gdGhlcmUgYXJlbid0IGFueSBuYXRpdmUgc3VwcG9ydA0KPiA+ID4gb24g
dGhlIGN1cnJlbnQgYXJjaGl0ZWN0dXJlLCBzbyBhIGxpbmtlciB0ZXN0IGlzIHVzZWQgZm9yIHRo
aXMNCj4gPiA+IHB1cnBvc2UuICBUaGlzIGVuYWJsZXMgYXRvbWljIG9wZXJhdGlvbnMgdG8gYmUg
b24gYSB3aWRlciBudW1iZXIgb2YNCj4gPiA+IGFyY2hpdGVjdHVyZXMgaW5jbHVkaW5nIE1JUFMu
DQo+ID4gPiANCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEd1aWxsYXVtZSBUdWNrZXIgPGd1aWxsYXVt
ZS50dWNrZXJAY29sbGFib3JhLmNvbT4NCj4gPiA+IC0tLQ0KPiA+ID4gDQo+ID4gPiBOb3RlczoN
Cj4gPiA+ICAgICB2MjogYWRkIGxpbmtlciB0ZXN0IGZvciBsaWJhdG9taWMNCj4gPiA+ICAgICB2
MzogdXNlIG51bGxfZGVwDQo+ID4gPiANCj4gPiA+ICBtZXNvbi5idWlsZCB8IDE0ICsrKysrKysr
KysrKysrDQo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKykNCj4gPiA+IA0K
PiA+ID4gZGlmZiAtLWdpdCBhL21lc29uLmJ1aWxkIGIvbWVzb24uYnVpbGQNCj4gPiA+IGluZGV4
IDYyNjhjNThkMzYzNC4uMTE4YWQ2NjdmZmI1IDEwMDY0NA0KPiA+ID4gLS0tIGEvbWVzb24uYnVp
bGQNCj4gPiA+ICsrKyBiL21lc29uLmJ1aWxkDQo+ID4gPiBAQCAtMTgwLDYgKzE4MCwyMCBAQCBy
ZWFsdGltZSA9IGNjLmZpbmRfbGlicmFyeSgncnQnKQ0KPiA+ID4gIGRsc3ltID0gY2MuZmluZF9s
aWJyYXJ5KCdkbCcpDQo+ID4gPiAgemxpYiA9IGNjLmZpbmRfbGlicmFyeSgneicpDQo+ID4gPiAg
DQo+ID4gPiAraWYgY2MubGlua3MoJycnDQo+ID4gPiArI2luY2x1ZGUgPHN0ZGludC5oPg0KPiA+
ID4gK2ludCBtYWluKHZvaWQpIHsNCj4gPiA+ICsgIHVpbnQzMl90IHgzMiA9IDA7DQo+ID4gPiAr
ICB1aW50NjRfdCB4NjQgPSAwOw0KPiA+ID4gKyAgX19hdG9taWNfbG9hZF9uKCZ4MzIsIF9fQVRP
TUlDX1NFUV9DU1QpOw0KPiA+ID4gKyAgX19hdG9taWNfbG9hZF9uKCZ4NjQsIF9fQVRPTUlDX1NF
UV9DU1QpOw0KPiA+IA0KPiA+IFNlZSBteSByZXBseSBmb3IgdjIuIEkndmUgbG9va2VkIGludG8g
dGhpcyBhIGxpdHRsZSBiaXQgbW9yZSBhbmQgaXQNCj4gPiBsb29rcyBsaWtlIF9fYXRvbWljXyog
ZnVuY3Rpb25zIGFyZSBhIEdDQyBpbXBsZW1lbnRhdGlvbiBkZXRhaWwuIE9Jbg0KPiA+IG90aGVy
IHdvcmRzLCB0aGUgQzExIHN0YW5kYXJkIFsxXSBkZWZpbmVzIG9ubHkgYXRvbWljXyogZnVuY3Rp
b25zLCBhbmQNCj4gPiBHQ0MgaW1wbGVtZW50cyB0aGVtIHdpdGggX19hdG9taWNfKiBidWlsdGlu
cyB3aGVuIHRoZSBwbGF0Zm9ybSBzdXBwb3J0cw0KPiA+IGl0LCBidXQgb3RoZXIgY29tcGlsZXJz
IG1pZ2h0IG5vdCBleHBvc2UgdGhvc2UgYnVpbHRpbnMgYW5kIHN0aWxsDQo+ID4gc3VwcG9ydCBh
dG9taWNfKiBmdW5jdGlvbnMgd2l0aG91dCB0aGVtLiBUaGlzIGFsc28gc2VlbXMgdG8gYmUgd2hh
dCBbMl0NCj4gPiBleHBsYWluczoNCj4gPiANCj4gPiA+IFRoZSBmaXJzdCBzZXQgb2YgbGlicmFy
eSBmdW5jdGlvbnMgYXJlIG5hbWVkIF9fYXRvbWljXyouIFRoaXMgc2V0IGhhcw0KPiA+ID4gYmVl
biDigJxzdGFuZGFyZGl6ZWTigJ0gYnkgR0NDLCBhbmQgaXMgZGVzY3JpYmVkIGJlbG93LiAoU2Vl
IGFsc28gR0ND4oCZcw0KPiA+ID4gZG9jdW1lbnRhdGlvbikNCj4gPiANCj4gPiAoTm90aWNlIHRo
ZSBxdW90ZXMgYXJvdW5kIOKAnHN0YW5kYXJkaXplZOKAnSwgbWVhbmluZyB0aGV5IGFyZSBhIEdD
Qw0KPiA+IGV4dGVuc2lvbikNCj4gDQo+IFF1aXRlLCBhbmQgd2hpbGUgdGhlIHN0ZGF0b21pYy5o
IEFQSSBpcyBwYXJ0IG9mIHRoZSBDMTEgc3RhbmRhcmQsDQo+IGxpYmF0b21pYyBpcyBwYXJ0IG9m
IEdDQy4gIFNvIHRoaXMgdGVzdCBpcyB0byBkZXRlcm1pbmUgd2hldGhlcg0KPiBsaW5raW5nIGFn
YWluc3QgR0NDJ3MgbGliYXRvbWljLnNvIGlzIG5lZWRlZCBmb3IgaXRzIF9fYXRvbWljXyoNCj4g
ZmFsbGJhY2sgaW1wbGVtZW50YXRpb24uDQo+IA0KPiBJdCByYWlzZXMgdGhlIHF1ZXN0aW9uIG9m
IHdoYXQgdG8gZG8gd2l0aCBvdGhlciBjb21waWxlcnMsIGJ1dA0KPiBpZ3QgaGFzIG90aGVyIGJ1
aWxkIGVycm9ycyB3aXRoIGNsYW5nIG9uIG1pcHMgYXQgdGhlIG1vbWVudC4NCj4gV2l0aCBhIHF1
aWNrIHNlYXJjaCwgaXQgbG9va3MgbGlrZSBpdHMgX19hdG9taWNfKiBmdW5jdGlvbnMgYXJlDQo+
IHBhcnQgb2YgbGliY2xhbmcuc28gZm9yIGNsYW5nLg0KDQpJIGRvbid0IHNlZSBhbnl0aGluZyBp
biBgcmVhZGVsZiAtcyAvdXNyL2xpYi9saWJjbGFuZy5zby44YC4NCg0KPiBNYXliZSB0aGlzIHRl
c3Qgc2hvdWxkIG9ubHkgYmUgdXNlZCB3aGVuIHRoZSBjb21waWxlciBuYW1lIGlzDQo+IGdjYz8g
IEluIHByYWN0aWNlIGl0IGRvZXMgd29yayB3aXRoIGJvdGggZ2NjIGFuZCBjbGFuZyB0aG91Z2gs
IGFzDQo+IHRoZXkgYm90aCB1c2UgdGhlIHNhbWUgbmFtaW5nIGNvbnZlbnRpb24gZm9yIGF0b21p
YyBidWlsdC1pbnMuDQoNCkhtbS4gSSdtIHN0aWxsIG5vdCBxdWl0ZSBzdXJlIEkgdW5kZXJzdGFu
ZCB3aHkgY2hlY2tpbmcgd2l0aCBfX2F0b21pY18qDQppcyBwcmVmZXJyZWQuDQoNCi0gSWYgdGhl
IGNvbXBpbGVyIGhhcyBfX2F0b21pY18qIGJ1aWx0aW5zOiB0aGlzIHdvbid0IGxpbmsgd2l0aA0K
ICBsaWJhdG9taWMNCi0gSWYgdGhlIGNvbXBpbGVyIGRvZXNuJ3QgaGF2ZSBfX2F0b21pY18qIGJ1
aWx0aW5zOiB0aGlzIHdpbGwgbGluayB3aXRoDQogIGxpYmF0b21pYyBldmVuIGlmIHN0ZGF0b21p
Yy5oIHdvcmtzIHdpdGhvdXQgaXQNCg0KV2hhdCB3ZSdyZSByZWFsbHkgaW50ZXJlc3RlZCBpbiBp
cyBzdGRhdG9taWMuaCBzdXBwb3J0LCBub3QgX19hdG9taWNfKi4NClNvIEkgc3RpbGwgdGhpbmsg
Y2hlY2tpbmcgZm9yIGF0b21pY18qIGlzIGJldHRlciB0aGFuIF9fYXRvbWljXyouIEFtIEkNCm1p
c3Npbmcgc29tZXRoaW5nPw0KDQo+IEd1aWxsYXVtZQ0KPiANCj4gPiBbMV06IGh0dHA6Ly93d3cu
b3Blbi1zdGQub3JnL2p0YzEvc2MyMi93ZzE0L3d3dy9kb2NzL24xNTQ4LnBkZg0KPiA+IFsyXTog
aHR0cHM6Ly9sbHZtLm9yZy9kb2NzL0F0b21pY3MuaHRtbA0KPiA+IA0KPiA+ID4gKyAgcmV0dXJu
IDA7DQo+ID4gPiArfScnJywgbmFtZSA6ICdidWlsdC1pbiBhdG9taWNzJykNCj4gPiA+ICsJbGli
YXRvbWljID0gbnVsbF9kZXANCj4gPiA+ICtlbHNlDQo+ID4gPiArCWxpYmF0b21pYyA9IGNjLmZp
bmRfbGlicmFyeSgnYXRvbWljJykNCj4gPiA+ICtlbmRpZg0KPiA+ID4gKw0KPiA+ID4gIGlmIGNj
Lmhhc19oZWFkZXIoJ2xpbnV4L2tkLmgnKQ0KPiA+ID4gIAljb25maWcuc2V0KCdIQVZFX0xJTlVY
X0tEX0gnLCAxKQ0KPiA+ID4gIGVuZGlmDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
