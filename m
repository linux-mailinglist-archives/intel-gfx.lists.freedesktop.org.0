Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D5587885C1
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Aug 2019 00:20:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A4BE6EEDB;
	Fri,  9 Aug 2019 22:20:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8EC06EEDB
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2019 22:20:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Aug 2019 15:20:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,366,1559545200"; d="scan'208";a="374623472"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga005.fm.intel.com with ESMTP; 09 Aug 2019 15:20:37 -0700
Received: from fmsmsx119.amr.corp.intel.com (10.18.124.207) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 9 Aug 2019 15:20:37 -0700
Received: from fmsmsx106.amr.corp.intel.com ([169.254.5.251]) by
 FMSMSX119.amr.corp.intel.com ([169.254.14.98]) with mapi id 14.03.0439.000;
 Fri, 9 Aug 2019 15:20:36 -0700
From: "Tang, CQ" <cq.tang@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "Auld, Matthew"
 <matthew.auld@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 3/3] drm/i915/blt: bump the size restriction
Thread-Index: AQHVTvEuqaU/SvjP6kmZLzmwR+7IUKbzx1UA//+a2aA=
Date: Fri, 9 Aug 2019 22:20:36 +0000
Message-ID: <1D440B9B88E22A4ABEF89F9F1F81BC29E344EA73@FMSMSX106.amr.corp.intel.com>
References: <20190809202926.14545-1-matthew.auld@intel.com>
 <20190809202926.14545-4-matthew.auld@intel.com>
 <156538548651.32306.11960815152179224140@skylake-alporthouse-com>
In-Reply-To: <156538548651.32306.11960815152179224140@skylake-alporthouse-com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiODkzYjNhYWUtMjYwZi00Y2Q0LWJmMjEtMjU2NmJiYmE2OGFjIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiQTB5c2t4QzRFR1BwSytDS2RsZkxSQTZTb211T2lDQkV3eW5SOTJ0RU9qN1NPUVd4NlRnbkt6UTJsemxSWTNEYyJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.107]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/blt: bump the size restriction
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IFttYWls
dG86aW50ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnXSBPbiBCZWhhbGYNCj4g
T2YgQ2hyaXMgV2lsc29uDQo+IFNlbnQ6IEZyaWRheSwgQXVndXN0IDksIDIwMTkgMjoxOCBQTQ0K
PiBUbzogQXVsZCwgTWF0dGhldyA8bWF0dGhldy5hdWxkQGludGVsLmNvbT47IGludGVsLQ0KPiBn
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtZ2Z4XSBbUEFU
Q0ggMy8zXSBkcm0vaTkxNS9ibHQ6IGJ1bXAgdGhlIHNpemUgcmVzdHJpY3Rpb24NCj4gDQo+IFF1
b3RpbmcgTWF0dGhldyBBdWxkICgyMDE5LTA4LTA5IDIxOjI5OjI2KQ0KPiA+IEFzIHBvaW50ZWQg
b3V0IGJ5IENocmlzLCB3aXRoIG91ciBjdXJyZW50IGFwcHJvYWNoIHdlIGFyZSBhY3R1YWxseQ0K
PiA+IGxpbWl0ZWQgdG8gUzE2X01BWCAqIFBBR0VfU0laRSBmb3Igb3VyIHNpemUgd2hlbiB1c2lu
ZyB0aGUgYmx0IHRvDQo+ID4gY2xlYXIgcGFnZXMuIEtlZXBpbmcgdGhpbmdzIHNpbXBsZSB0cnkg
dG8gZml4IHRoaXMgYnkgcmVkdWNpbmcgdGhlDQo+ID4gY29weSB0byBhIHNlcXVlbmNlIG9mIFMx
Nl9NQVggKiBQQUdFX1NJWkUgYmxvY2tzLg0KDQpKdXN0IGEgZ2VuZXJhbCBxdWVzdGlvbi4gSWYg
dGhlIGFkZHJlc3Mgc3BhY2UgaXMgbGltaXRlZCB0byAxRywgZm9yIGV4YW1wbGUsIGFuZCB3ZSB3
YW50IHRvIGNvcHkgYmV0d2VlbiB0d28gMUctc2l6ZSBvYmplY3RzLg0KRG8gd2UgZG8gZnJhZ21l
bnRhdGlvbiBpbnNpZGUgdGhlIGJsaXR0ZXIgY29weWluZyByb3V0aW5lPw0KDQpUaGlzIGNvdWxk
IGhhcHBlbiBkdXJpbmcgc3dhcHBpbmcuIFdlIHByZS1hbGxvY2F0ZSAxRyBQUEdUVCwgYW5kIHJl
c2VydmUgdGhlIHJlc3Qgb2YgYWRkcmVzcyBzcGFjZSwgc28gb25seSAxRyBzcGFjZSBjYW4gYmUg
dXNlZC4NCg0KLS1DUQ0KDQoNCj4gPg0KPiA+IFJlcG9ydGVkLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBNYXR0aGV3IEF1bGQg
PG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+DQo+ID4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPg0KPiA+IC0tLQ0KPiA+ICAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9jbGllbnRfYmx0LmMgICAgfCAgMzEgKysrLQ0KPiA+ICAuLi4vZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9vYmplY3RfYmx0LmMgICAgfCAxMzkgKysrKysrKysrKysrKystLS0NCj4gLQ0K
PiA+ICAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfYmx0LmggICAgfCAgIDkg
Ky0NCj4gPiAgLi4uL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jbGllbnRfYmx0LmMgIHwg
IDE2ICstDQo+ID4gLi4uL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9vYmplY3RfYmx0LmMg
IHwgIDIyICsrLQ0KPiA+ICA1IGZpbGVzIGNoYW5nZWQsIDE3MCBpbnNlcnRpb25zKCspLCA0NyBk
ZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fY2xpZW50X2JsdC5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fY2xpZW50X2JsdC5jDQo+ID4gaW5kZXggMDhhODRjOTQwZDhkLi40YjA5NjMwOWE5
N2UgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2Ns
aWVudF9ibHQuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9j
bGllbnRfYmx0LmMNCj4gPiBAQCAtNSw2ICs1LDggQEANCj4gPg0KPiA+ICAjaW5jbHVkZSAiaTkx
NV9kcnYuaCINCj4gPiAgI2luY2x1ZGUgImd0L2ludGVsX2NvbnRleHQuaCINCj4gPiArI2luY2x1
ZGUgImd0L2ludGVsX2VuZ2luZV9wbS5oIg0KPiA+ICsjaW5jbHVkZSAiZ3QvaW50ZWxfZW5naW5l
X3Bvb2wuaCINCj4gPiAgI2luY2x1ZGUgImk5MTVfZ2VtX2NsaWVudF9ibHQuaCINCj4gPiAgI2lu
Y2x1ZGUgImk5MTVfZ2VtX29iamVjdF9ibHQuaCINCj4gPg0KPiA+IEBAIC0xNTYsNyArMTU4LDkg
QEAgc3RhdGljIHZvaWQgY2xlYXJfcGFnZXNfd29ya2VyKHN0cnVjdCB3b3JrX3N0cnVjdA0KPiAq
d29yaykNCj4gPiAgICAgICAgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdy0+Y2Ut
PmVuZ2luZS0+aTkxNTsNCj4gPiAgICAgICAgIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpv
YmogPSB3LT5zbGVldmUtPnZtYS0+b2JqOw0KPiA+ICAgICAgICAgc3RydWN0IGk5MTVfdm1hICp2
bWEgPSB3LT5zbGVldmUtPnZtYTsNCj4gPiArICAgICAgIHN0cnVjdCBpbnRlbF9lbmdpbmVfcG9v
bF9ub2RlICpwb29sOw0KPiA+ICAgICAgICAgc3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7DQo+ID4g
KyAgICAgICBzdHJ1Y3QgaTkxNV92bWEgKmJhdGNoOw0KPiA+ICAgICAgICAgaW50IGVyciA9IHct
PmRtYS5lcnJvcjsNCj4gPg0KPiA+ICAgICAgICAgaWYgKHVubGlrZWx5KGVycikpDQo+ID4gQEAg
LTE3NiwxMCArMTgwLDE3IEBAIHN0YXRpYyB2b2lkIGNsZWFyX3BhZ2VzX3dvcmtlcihzdHJ1Y3QN
Cj4gd29ya19zdHJ1Y3QgKndvcmspDQo+ID4gICAgICAgICBpZiAodW5saWtlbHkoZXJyKSkNCj4g
PiAgICAgICAgICAgICAgICAgZ290byBvdXRfdW5sb2NrOw0KPiA+DQo+ID4gKyAgICAgICBpbnRl
bF9lbmdpbmVfcG1fZ2V0KHctPmNlLT5lbmdpbmUpOw0KPiA+ICsgICAgICAgYmF0Y2ggPSBpbnRl
bF9lbWl0X3ZtYV9maWxsX2JsdCgmcG9vbCwgdy0+Y2UsIHZtYSwgdy0+dmFsdWUpOw0KPiANCj4g
SSBoYWQgdG8gc2VhcmNoIGZvciB3aGVyZSBwb29sIHdhcyBiZWluZyBzZXQhDQo+IA0KPiBIbW0s
IGJhdGNoIGlzIGZyb20gcG9vbCByaWdodD8gU28gd2UgYXJlIHRoZSBvd25lciBvZiB0aGUgYmF0
Y2gsIGFuZCB3ZQ0KPiBjb3VsZCBzZXQgYmF0Y2gtPnByaXZhdGUgPSBwb29sLg0KPiANCj4gPiAr
ICAgICAgIGlmIChJU19FUlIoYmF0Y2gpKSB7DQo+ID4gKyAgICAgICAgICAgICAgIGVyciA9IFBU
Ul9FUlIoYmF0Y2gpOw0KPiA+ICsgICAgICAgICAgICAgICBnb3RvIG91dF91bnBpbjsNCj4gPiAr
ICAgICAgIH0NCj4gPiArDQo+ID4gICAgICAgICBycSA9IGludGVsX2NvbnRleHRfY3JlYXRlX3Jl
cXVlc3Qody0+Y2UpOw0KPiA+ICAgICAgICAgaWYgKElTX0VSUihycSkpIHsNCj4gPiAgICAgICAg
ICAgICAgICAgZXJyID0gUFRSX0VSUihycSk7DQo+ID4gLSAgICAgICAgICAgICAgIGdvdG8gb3V0
X3VucGluOw0KPiA+ICsgICAgICAgICAgICAgICBnb3RvIG91dF9iYXRjaDsNCj4gPiAgICAgICAg
IH0NCj4gPg0KPiA+ICAgICAgICAgLyogVGhlcmUncyBubyB3YXkgdGhlIGZlbmNlIGhhcyBzaWdu
YWxsZWQgKi8gQEAgLTE4Nyw2ICsxOTgsMTYNCj4gPiBAQCBzdGF0aWMgdm9pZCBjbGVhcl9wYWdl
c193b3JrZXIoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQ0KPiA+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgY2xlYXJfcGFnZXNfZG1hX2ZlbmNlX2NiKSkNCj4gPiAgICAgICAg
ICAgICAgICAgR0VNX0JVR19PTigxKTsNCj4gPg0KPiA+ICsgICAgICAgaTkxNV92bWFfbG9jayhi
YXRjaCk7DQo+ID4gKyAgICAgICBlcnIgPSBpOTE1X3ZtYV9tb3ZlX3RvX2FjdGl2ZShiYXRjaCwg
cnEsIDApOw0KPiA+ICsgICAgICAgaTkxNV92bWFfdW5sb2NrKGJhdGNoKTsNCj4gPiArICAgICAg
IGlmICh1bmxpa2VseShlcnIpKQ0KPiA+ICsgICAgICAgICAgICAgICBnb3RvIG91dF9yZXF1ZXN0
Ow0KPiA+ICsNCj4gPiArICAgICAgIGVyciA9IGludGVsX2VuZ2luZV9wb29sX21hcmtfYWN0aXZl
KHBvb2wsIHJxKTsNCj4gPiArICAgICAgIGlmICh1bmxpa2VseShlcnIpKQ0KPiA+ICsgICAgICAg
ICAgICAgICBnb3RvIG91dF9yZXF1ZXN0Ow0KPiA+ICsNCj4gPiAgICAgICAgIGlmICh3LT5jZS0+
ZW5naW5lLT5lbWl0X2luaXRfYnJlYWRjcnVtYikgew0KPiA+ICAgICAgICAgICAgICAgICBlcnIg
PSB3LT5jZS0+ZW5naW5lLT5lbWl0X2luaXRfYnJlYWRjcnVtYihycSk7DQo+ID4gICAgICAgICAg
ICAgICAgIGlmICh1bmxpa2VseShlcnIpKQ0KPiA+IEBAIC0yMDIsNyArMjIzLDkgQEAgc3RhdGlj
IHZvaWQgY2xlYXJfcGFnZXNfd29ya2VyKHN0cnVjdCB3b3JrX3N0cnVjdA0KPiAqd29yaykNCj4g
PiAgICAgICAgIGlmIChlcnIpDQo+ID4gICAgICAgICAgICAgICAgIGdvdG8gb3V0X3JlcXVlc3Q7
DQo+ID4NCj4gPiAtICAgICAgIGVyciA9IGludGVsX2VtaXRfdm1hX2ZpbGxfYmx0KHJxLCB2bWEs
IHctPnZhbHVlKTsNCj4gPiArICAgICAgIGVyciA9IHctPmNlLT5lbmdpbmUtPmVtaXRfYmJfc3Rh
cnQocnEsDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJh
dGNoLT5ub2RlLnN0YXJ0LCBiYXRjaC0+bm9kZS5zaXplLA0KPiA+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAwKTsNCj4gPiAgb3V0X3JlcXVlc3Q6DQo+ID4gICAg
ICAgICBpZiAodW5saWtlbHkoZXJyKSkgew0KPiA+ICAgICAgICAgICAgICAgICBpOTE1X3JlcXVl
c3Rfc2tpcChycSwgZXJyKTsgQEAgLTIxMCw3ICsyMzMsMTEgQEANCj4gPiBzdGF0aWMgdm9pZCBj
bGVhcl9wYWdlc193b3JrZXIoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQ0KPiA+ICAgICAgICAg
fQ0KPiA+DQo+ID4gICAgICAgICBpOTE1X3JlcXVlc3RfYWRkKHJxKTsNCj4gPiArb3V0X2JhdGNo
Og0KPiA+ICsgICAgICAgaTkxNV92bWFfdW5waW4oYmF0Y2gpOw0KPiA+ICsgICAgICAgaW50ZWxf
ZW5naW5lX3Bvb2xfcHV0KHBvb2wpOw0KPiA+ICBvdXRfdW5waW46DQo+ID4gKyAgICAgICBpbnRl
bF9lbmdpbmVfcG1fcHV0KHctPmNlLT5lbmdpbmUpOw0KPiA+ICAgICAgICAgaTkxNV92bWFfdW5w
aW4odm1hKTsNCj4gPiAgb3V0X3VubG9jazoNCj4gPiAgICAgICAgIG11dGV4X3VubG9jaygmaTkx
NS0+ZHJtLnN0cnVjdF9tdXRleCk7DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfYmx0LmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9vYmplY3RfYmx0LmMNCj4gPiBpbmRleCBmYTkwYzM4YzhiMDcuLmMxZTVl
ZGQxZTM1OSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fb2JqZWN0X2JsdC5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX29iamVjdF9ibHQuYw0KPiA+IEBAIC01LDQ5ICs1LDEwMyBAQA0KPiA+DQo+ID4gICNpbmNs
dWRlICJpOTE1X2Rydi5oIg0KPiA+ICAjaW5jbHVkZSAiZ3QvaW50ZWxfY29udGV4dC5oIg0KPiA+
ICsjaW5jbHVkZSAiZ3QvaW50ZWxfZW5naW5lX3BtLmgiDQo+ID4gKyNpbmNsdWRlICJndC9pbnRl
bF9lbmdpbmVfcG9vbC5oIg0KPiA+ICsjaW5jbHVkZSAiZ3QvaW50ZWxfZ3QuaCINCj4gPiAgI2lu
Y2x1ZGUgImk5MTVfZ2VtX2NsZmx1c2guaCINCj4gPiAgI2luY2x1ZGUgImk5MTVfZ2VtX29iamVj
dF9ibHQuaCINCj4gPg0KPiA+IC1pbnQgaW50ZWxfZW1pdF92bWFfZmlsbF9ibHQoc3RydWN0IGk5
MTVfcmVxdWVzdCAqcnEsDQo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBp
OTE1X3ZtYSAqdm1hLA0KPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICB1MzIgdmFsdWUp
DQo+ID4gK3N0cnVjdCBpOTE1X3ZtYSAqaW50ZWxfZW1pdF92bWFfZmlsbF9ibHQoc3RydWN0IGlu
dGVsX2VuZ2luZV9wb29sX25vZGUNCj4gKipwLA0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgc3RydWN0IGludGVsX2NvbnRleHQgKmNlLA0KPiA+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGk5MTVfdm1hICp2bWEsDQo+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1MzIgdmFsdWUpDQo+
ID4gIHsNCj4gPiAtICAgICAgIHUzMiAqY3M7DQo+ID4gLQ0KPiA+IC0gICAgICAgY3MgPSBpbnRl
bF9yaW5nX2JlZ2luKHJxLCA4KTsNCj4gPiAtICAgICAgIGlmIChJU19FUlIoY3MpKQ0KPiA+IC0g
ICAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUihjcyk7DQo+ID4gLQ0KPiA+IC0gICAgICAgaWYg
KElOVEVMX0dFTihycS0+aTkxNSkgPj0gOCkgew0KPiA+IC0gICAgICAgICAgICAgICAqY3MrKyA9
IFhZX0NPTE9SX0JMVF9DTUQgfCBCTFRfV1JJVEVfUkdCQSB8ICg3IC0gMik7DQo+ID4gLSAgICAg
ICAgICAgICAgICpjcysrID0gQkxUX0RFUFRIXzMyIHwgQkxUX1JPUF9DT0xPUl9DT1BZIHwgUEFH
RV9TSVpFOw0KPiA+IC0gICAgICAgICAgICAgICAqY3MrKyA9IDA7DQo+ID4gLSAgICAgICAgICAg
ICAgICpjcysrID0gdm1hLT5zaXplID4+IFBBR0VfU0hJRlQgPDwgMTYgfCBQQUdFX1NJWkUgLyA0
Ow0KPiA+IC0gICAgICAgICAgICAgICAqY3MrKyA9IGxvd2VyXzMyX2JpdHModm1hLT5ub2RlLnN0
YXJ0KTsNCj4gPiAtICAgICAgICAgICAgICAgKmNzKysgPSB1cHBlcl8zMl9iaXRzKHZtYS0+bm9k
ZS5zdGFydCk7DQo+ID4gLSAgICAgICAgICAgICAgICpjcysrID0gdmFsdWU7DQo+ID4gLSAgICAg
ICAgICAgICAgICpjcysrID0gTUlfTk9PUDsNCj4gPiAtICAgICAgIH0gZWxzZSB7DQo+ID4gLSAg
ICAgICAgICAgICAgICpjcysrID0gWFlfQ09MT1JfQkxUX0NNRCB8IEJMVF9XUklURV9SR0JBIHwg
KDYgLSAyKTsNCj4gPiAtICAgICAgICAgICAgICAgKmNzKysgPSBCTFRfREVQVEhfMzIgfCBCTFRf
Uk9QX0NPTE9SX0NPUFkgfCBQQUdFX1NJWkU7DQo+ID4gLSAgICAgICAgICAgICAgICpjcysrID0g
MDsNCj4gPiAtICAgICAgICAgICAgICAgKmNzKysgPSB2bWEtPnNpemUgPj4gUEFHRV9TSElGVCA8
PCAxNiB8IFBBR0VfU0laRSAvIDQ7DQo+ID4gLSAgICAgICAgICAgICAgICpjcysrID0gdm1hLT5u
b2RlLnN0YXJ0Ow0KPiA+IC0gICAgICAgICAgICAgICAqY3MrKyA9IHZhbHVlOw0KPiA+IC0gICAg
ICAgICAgICAgICAqY3MrKyA9IE1JX05PT1A7DQo+ID4gLSAgICAgICAgICAgICAgICpjcysrID0g
TUlfTk9PUDsNCj4gPiArICAgICAgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gY2Ut
PnZtLT5pOTE1Ow0KPiA+ICsgICAgICAgY29uc3QgdTMyIGJsb2NrX3NpemUgPSBTMTZfTUFYICog
UEFHRV9TSVpFOw0KPiA+ICsgICAgICAgc3RydWN0IGludGVsX2VuZ2luZV9wb29sX25vZGUgKnBv
b2w7DQo+ID4gKyAgICAgICBzdHJ1Y3QgaTkxNV92bWEgKmJhdGNoOw0KPiA+ICsgICAgICAgdTY0
IG9mZnNldDsNCj4gPiArICAgICAgIHU2NCBjb3VudDsNCj4gPiArICAgICAgIHU2NCByZW07DQo+
ID4gKyAgICAgICB1MzIgc2l6ZTsNCj4gPiArICAgICAgIHUzMiAqY21kOw0KPiA+ICsgICAgICAg
aW50IGVycjsNCj4gPiArDQo+ID4gKyAgICAgICBjb3VudCA9IGRpdl91NjQodm1hLT5zaXplLCBi
bG9ja19zaXplKTsNCj4gPiArICAgICAgIHNpemUgPSAoMSArIDggKiBjb3VudCkgKiBzaXplb2Yo
dTMyKTsNCj4gPiArICAgICAgIHNpemUgPSByb3VuZF91cChzaXplLCBQQUdFX1NJWkUpOw0KPiA+
ICsgICAgICAgcG9vbCA9IGludGVsX2VuZ2luZV9wb29sX2dldCgmY2UtPmVuZ2luZS0+cG9vbCwg
c2l6ZSk7DQo+ID4gKyAgICAgICBpZiAoSVNfRVJSKHBvb2wpKQ0KPiA+ICsgICAgICAgICAgICAg
ICByZXR1cm4gRVJSX0NBU1QocG9vbCk7DQo+ID4gKw0KPiA+ICsgICAgICAgY21kID0gaTkxNV9n
ZW1fb2JqZWN0X3Bpbl9tYXAocG9vbC0+b2JqLCBJOTE1X01BUF9XQyk7DQo+ID4gKyAgICAgICBp
ZiAoSVNfRVJSKGNtZCkpIHsNCj4gPiArICAgICAgICAgICAgICAgZXJyID0gUFRSX0VSUihjbWQp
Ow0KPiA+ICsgICAgICAgICAgICAgICBnb3RvIG91dF9wdXQ7DQo+ID4gKyAgICAgICB9DQo+ID4g
Kw0KPiA+ICsgICAgICAgcmVtID0gdm1hLT5zaXplOw0KPiA+ICsgICAgICAgb2Zmc2V0ID0gdm1h
LT5ub2RlLnN0YXJ0Ow0KPiA+ICsNCj4gPiArICAgICAgIGRvIHsNCj4gPiArICAgICAgICAgICAg
ICAgdTMyIHNpemUgPSBtaW5fdCh1NjQsIHJlbSwgYmxvY2tfc2l6ZSk7DQo+ID4gKw0KPiA+ICsg
ICAgICAgICAgICAgICBHRU1fQlVHX09OKHNpemUgPj4gUEFHRV9TSElGVCA+IFMxNl9NQVgpOw0K
PiA+ICsNCj4gPiArICAgICAgICAgICAgICAgaWYgKElOVEVMX0dFTihpOTE1KSA+PSA4KSB7DQo+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgKmNtZCsrID0gWFlfQ09MT1JfQkxUX0NNRCB8IEJM
VF9XUklURV9SR0JBIHwgKDcgLSAyKTsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAqY21k
KysgPSBCTFRfREVQVEhfMzIgfCBCTFRfUk9QX0NPTE9SX0NPUFkgfA0KPiBQQUdFX1NJWkU7DQo+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgKmNtZCsrID0gMDsNCj4gPiArICAgICAgICAgICAg
ICAgICAgICAgICAqY21kKysgPSBzaXplID4+IFBBR0VfU0hJRlQgPDwgMTYgfCBQQUdFX1NJWkUg
LyA0Ow0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICpjbWQrKyA9IGxvd2VyXzMyX2JpdHMo
b2Zmc2V0KTsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAqY21kKysgPSB1cHBlcl8zMl9i
aXRzKG9mZnNldCk7DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgKmNtZCsrID0gdmFsdWU7
DQo+ID4gKyAgICAgICAgICAgICAgIH0gZWxzZSB7DQo+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgKmNtZCsrID0gWFlfQ09MT1JfQkxUX0NNRCB8IEJMVF9XUklURV9SR0JBIHwgKDYgLSAyKTsN
Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAqY21kKysgPSBCTFRfREVQVEhfMzIgfCBCTFRf
Uk9QX0NPTE9SX0NPUFkgfA0KPiBQQUdFX1NJWkU7DQo+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgKmNtZCsrID0gMDsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAqY21kKysgPSBzaXpl
ID4+IFBBR0VfU0hJRlQgPDwgMTYgfCBQQUdFX1NJWkUgLyA0Ow0KPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgICpjbWQrKyA9IG9mZnNldDsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAq
Y21kKysgPSB2YWx1ZTsNCj4gPiArICAgICAgICAgICAgICAgfQ0KPiA+ICsNCj4gPiArICAgICAg
ICAgICAgICAgLyogQWxsb3cgb3Vyc2VsdmVzIHRvIGJlIHByZWVtcHRlZCBpbiBiZXR3ZWVuIGJs
b2Nrcy4gKi8NCj4gPiArICAgICAgICAgICAgICAgKmNtZCsrID0gTUlfQVJCX0NIRUNLOw0KPiAN
Cj4gVGhhdCBJIHRob3VnaHQgd2FzIGEgbmljZSB0b3VjaC4NCj4gDQo+ID4gKw0KPiA+ICsgICAg
ICAgICAgICAgICBvZmZzZXQgKz0gc2l6ZTsNCj4gPiArICAgICAgICAgICAgICAgcmVtIC09IHNp
emU7DQo+ID4gKyAgICAgICB9IHdoaWxlIChyZW0pOw0KPiA+ICsNCj4gPiArICAgICAgICpjbWQg
PSBNSV9CQVRDSF9CVUZGRVJfRU5EOw0KPiA+ICsgICAgICAgaW50ZWxfZ3RfY2hpcHNldF9mbHVz
aChjZS0+dm0tPmd0KTsNCj4gPiArDQo+ID4gKyAgICAgICBpOTE1X2dlbV9vYmplY3RfdW5waW5f
bWFwKHBvb2wtPm9iaik7DQo+ID4gKw0KPiA+ICsgICAgICAgYmF0Y2ggPSBpOTE1X3ZtYV9pbnN0
YW5jZShwb29sLT5vYmosIGNlLT52bSwgTlVMTCk7DQo+ID4gKyAgICAgICBpZiAoSVNfRVJSKGJh
dGNoKSkgew0KPiA+ICsgICAgICAgICAgICAgICBlcnIgPSBQVFJfRVJSKGJhdGNoKTsNCj4gPiAr
ICAgICAgICAgICAgICAgZ290byBvdXRfcHV0Ow0KPiA+ICAgICAgICAgfQ0KPiA+DQo+ID4gLSAg
ICAgICBpbnRlbF9yaW5nX2FkdmFuY2UocnEsIGNzKTsNCj4gPiArICAgICAgIGVyciA9IGk5MTVf
dm1hX3BpbihiYXRjaCwgMCwgMCwgUElOX1VTRVIpOw0KPiA+ICsgICAgICAgaWYgKHVubGlrZWx5
KGVycikpDQo+ID4gKyAgICAgICAgICAgICAgIGdvdG8gb3V0X3B1dDsNCj4gPiArDQo+ID4gKyAg
ICAgICAqcCA9IHBvb2w7DQo+ID4gKyAgICAgICByZXR1cm4gYmF0Y2g7DQo+ID4NCj4gPiAtICAg
ICAgIHJldHVybiAwOw0KPiA+ICtvdXRfcHV0Og0KPiA+ICsgICAgICAgaW50ZWxfZW5naW5lX3Bv
b2xfcHV0KHBvb2wpOw0KPiA+ICsgICAgICAgcmV0dXJuIEVSUl9QVFIoZXJyKTsNCj4gPiAgfQ0K
PiA+DQo+ID4gIGludCBpOTE1X2dlbV9vYmplY3RfZmlsbF9ibHQoc3RydWN0IGRybV9pOTE1X2dl
bV9vYmplY3QgKm9iaiwNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBp
bnRlbF9jb250ZXh0ICpjZSwNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHUzMiB2
YWx1ZSkgIHsNCj4gPiArICAgICAgIHN0cnVjdCBpbnRlbF9lbmdpbmVfcG9vbF9ub2RlICpwb29s
Ow0KPiA+ICAgICAgICAgc3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7DQo+ID4gKyAgICAgICBzdHJ1
Y3QgaTkxNV92bWEgKmJhdGNoOw0KPiA+ICAgICAgICAgc3RydWN0IGk5MTVfdm1hICp2bWE7DQo+
ID4gICAgICAgICBpbnQgZXJyOw0KPiA+DQo+ID4gQEAgLTY1LDEyICsxMTksMjkgQEAgaW50IGk5
MTVfZ2VtX29iamVjdF9maWxsX2JsdChzdHJ1Y3QNCj4gZHJtX2k5MTVfZ2VtX29iamVjdCAqb2Jq
LA0KPiA+ICAgICAgICAgICAgICAgICBpOTE1X2dlbV9vYmplY3RfdW5sb2NrKG9iaik7DQo+ID4g
ICAgICAgICB9DQo+ID4NCj4gPiArICAgICAgIGludGVsX2VuZ2luZV9wbV9nZXQoY2UtPmVuZ2lu
ZSk7DQo+ID4gKyAgICAgICBiYXRjaCA9IGludGVsX2VtaXRfdm1hX2ZpbGxfYmx0KCZwb29sLCBj
ZSwgdm1hLCB2YWx1ZSk7DQo+ID4gKyAgICAgICBpZiAoSVNfRVJSKGJhdGNoKSkgew0KPiA+ICsg
ICAgICAgICAgICAgICBlcnIgPSBQVFJfRVJSKGJhdGNoKTsNCj4gPiArICAgICAgICAgICAgICAg
Z290byBvdXRfdW5waW47DQo+ID4gKyAgICAgICB9DQo+ID4gKw0KPiA+ICAgICAgICAgcnEgPSBp
bnRlbF9jb250ZXh0X2NyZWF0ZV9yZXF1ZXN0KGNlKTsNCj4gPiAgICAgICAgIGlmIChJU19FUlIo
cnEpKSB7DQo+ID4gICAgICAgICAgICAgICAgIGVyciA9IFBUUl9FUlIocnEpOw0KPiA+IC0gICAg
ICAgICAgICAgICBnb3RvIG91dF91bnBpbjsNCj4gPiArICAgICAgICAgICAgICAgZ290byBvdXRf
YmF0Y2g7DQo+ID4gICAgICAgICB9DQo+ID4NCj4gPiArICAgICAgIGk5MTVfdm1hX2xvY2soYmF0
Y2gpOw0KPiA+ICsgICAgICAgZXJyID0gaTkxNV92bWFfbW92ZV90b19hY3RpdmUoYmF0Y2gsIHJx
LCAwKTsNCj4gPiArICAgICAgIGk5MTVfdm1hX3VubG9jayhiYXRjaCk7DQo+ID4gKyAgICAgICBp
ZiAodW5saWtlbHkoZXJyKSkNCj4gPiArICAgICAgICAgICAgICAgZ290byBvdXRfcmVxdWVzdDsN
Cj4gPiArDQo+ID4gKyAgICAgICBlcnIgPSBpbnRlbF9lbmdpbmVfcG9vbF9tYXJrX2FjdGl2ZShw
b29sLCBycSk7DQo+ID4gKyAgICAgICBpZiAodW5saWtlbHkoZXJyKSkNCj4gPiArICAgICAgICAg
ICAgICAgZ290byBvdXRfcmVxdWVzdDsNCj4gPiArDQo+ID4gICAgICAgICBlcnIgPSBpOTE1X3Jl
cXVlc3RfYXdhaXRfb2JqZWN0KHJxLCBvYmosIHRydWUpOw0KPiA+ICAgICAgICAgaWYgKHVubGlr
ZWx5KGVycikpDQo+ID4gICAgICAgICAgICAgICAgIGdvdG8gb3V0X3JlcXVlc3Q7DQo+ID4gQEAg
LTg3LDEzICsxNTgsMTkgQEAgaW50IGk5MTVfZ2VtX29iamVjdF9maWxsX2JsdChzdHJ1Y3QNCj4g
ZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLA0KPiA+ICAgICAgICAgaWYgKHVubGlrZWx5KGVycikp
DQo+ID4gICAgICAgICAgICAgICAgIGdvdG8gb3V0X3JlcXVlc3Q7DQo+ID4NCj4gPiAtICAgICAg
IGVyciA9IGludGVsX2VtaXRfdm1hX2ZpbGxfYmx0KHJxLCB2bWEsIHZhbHVlKTsNCj4gPiArICAg
ICAgIGVyciA9IGNlLT5lbmdpbmUtPmVtaXRfYmJfc3RhcnQocnEsDQo+ID4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJhdGNoLT5ub2RlLnN0YXJ0LCBiYXRjaC0+bm9k
ZS5zaXplLA0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAwKTsN
Cj4gPiAgb3V0X3JlcXVlc3Q6DQo+ID4gICAgICAgICBpZiAodW5saWtlbHkoZXJyKSkNCj4gPiAg
ICAgICAgICAgICAgICAgaTkxNV9yZXF1ZXN0X3NraXAocnEsIGVycik7DQo+ID4NCj4gPiAgICAg
ICAgIGk5MTVfcmVxdWVzdF9hZGQocnEpOw0KPiA+ICtvdXRfYmF0Y2g6DQo+ID4gKyAgICAgICBp
OTE1X3ZtYV91bnBpbihiYXRjaCk7DQo+ID4gKyAgICAgICBpbnRlbF9lbmdpbmVfcG9vbF9wdXQo
cG9vbCk7DQo+ID4gIG91dF91bnBpbjoNCj4gPiArICAgICAgIGludGVsX2VuZ2luZV9wbV9wdXQo
Y2UtPmVuZ2luZSk7DQo+ID4gICAgICAgICBpOTE1X3ZtYV91bnBpbih2bWEpOw0KPiA+ICAgICAg
ICAgcmV0dXJuIGVycjsNCj4gPiAgfQ0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X2JsdC5oDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fb2JqZWN0X2JsdC5oDQo+ID4gaW5kZXggN2VjN2RlNmFjMGMwLi5hNzQy
NWMyMzRkNTAgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX29iamVjdF9ibHQuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9vYmplY3RfYmx0LmgNCj4gPiBAQCAtOSwxMyArOSwxNCBAQA0KPiA+ICAjaW5jbHVkZSA8
bGludXgvdHlwZXMuaD4NCj4gPg0KPiA+ICBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdDsNCj4g
PiArc3RydWN0IGludGVsX2VuZ2luZV9wb29sX25vZGU7DQo+ID4gIHN0cnVjdCBpbnRlbF9jb250
ZXh0Ow0KPiA+IC1zdHJ1Y3QgaTkxNV9yZXF1ZXN0Ow0KPiA+ICBzdHJ1Y3QgaTkxNV92bWE7DQo+
ID4NCj4gPiAtaW50IGludGVsX2VtaXRfdm1hX2ZpbGxfYmx0KHN0cnVjdCBpOTE1X3JlcXVlc3Qg
KnJxLA0KPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgaTkxNV92bWEgKnZt
YSwNCj4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgdTMyIHZhbHVlKTsNCj4gPiArc3Ry
dWN0IGk5MTVfdm1hICppbnRlbF9lbWl0X3ZtYV9maWxsX2JsdChzdHJ1Y3QgaW50ZWxfZW5naW5l
X3Bvb2xfbm9kZQ0KPiAqKnAsDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsDQo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgaTkxNV92bWEgKnZtYSwNCj4gPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHUzMiB2YWx1ZSk7DQo+ID4NCj4gPiAg
aW50IGk5MTVfZ2VtX29iamVjdF9maWxsX2JsdChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAq
b2JqLA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGludGVsX2NvbnRl
eHQgKmNlLCBkaWZmIC0tZ2l0DQo+ID4gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRl
c3RzL2k5MTVfZ2VtX2NsaWVudF9ibHQuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L3NlbGZ0ZXN0cy9pOTE1X2dlbV9jbGllbnRfYmx0LmMNCj4gPiBpbmRleCAyNzVjMjg5MjYwNjcu
LmQ4ODA0YTg0Nzk0NSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
c2VsZnRlc3RzL2k5MTVfZ2VtX2NsaWVudF9ibHQuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY2xpZW50X2JsdC5jDQo+ID4gQEAgLTksNiAr
OSw3IEBADQo+ID4NCj4gPiAgI2luY2x1ZGUgInNlbGZ0ZXN0cy9pZ3RfZmx1c2hfdGVzdC5oIg0K
PiA+ICAjaW5jbHVkZSAic2VsZnRlc3RzL21vY2tfZHJtLmgiDQo+ID4gKyNpbmNsdWRlICJodWdl
X2dlbV9vYmplY3QuaCINCj4gPiAgI2luY2x1ZGUgIm1vY2tfY29udGV4dC5oIg0KPiA+DQo+ID4g
IHN0YXRpYyBpbnQgaWd0X2NsaWVudF9maWxsKHZvaWQgKmFyZykgQEAgLTI0LDE1ICsyNSwxOSBA
QCBzdGF0aWMgaW50DQo+ID4gaWd0X2NsaWVudF9maWxsKHZvaWQgKmFyZykNCj4gPiAgICAgICAg
IHByYW5kb21fc2VlZF9zdGF0ZSgmcHJuZywgaTkxNV9zZWxmdGVzdC5yYW5kb21fc2VlZCk7DQo+
ID4NCj4gPiAgICAgICAgIGRvIHsNCj4gPiAtICAgICAgICAgICAgICAgdTMyIHN6ID0gcHJhbmRv
bV91MzJfc3RhdGUoJnBybmcpICUgU1pfMzJNOw0KPiA+ICsgICAgICAgICAgICAgICBjb25zdCB1
MzIgbWF4X2Jsb2NrX3NpemUgPSBTMTZfTUFYICogUEFHRV9TSVpFOw0KPiA+ICsgICAgICAgICAg
ICAgICB1MzIgc3ogPSBtaW5fdCh1NjQsIGNlLT52bS0+dG90YWwgPj4gNCwNCj4gcHJhbmRvbV91
MzJfc3RhdGUoJnBybmcpKTsNCj4gPiArICAgICAgICAgICAgICAgdTMyIHBoeXNfc3ogPSBzeiAl
IChtYXhfYmxvY2tfc2l6ZSArIDEpOw0KPiA+ICAgICAgICAgICAgICAgICB1MzIgdmFsID0gcHJh
bmRvbV91MzJfc3RhdGUoJnBybmcpOw0KPiA+ICAgICAgICAgICAgICAgICB1MzIgaTsNCj4gPg0K
PiA+ICAgICAgICAgICAgICAgICBzeiA9IHJvdW5kX3VwKHN6LCBQQUdFX1NJWkUpOw0KPiA+ICsg
ICAgICAgICAgICAgICBwaHlzX3N6ID0gcm91bmRfdXAocGh5c19zeiwgUEFHRV9TSVpFKTsNCj4g
Pg0KPiA+IC0gICAgICAgICAgICAgICBwcl9kZWJ1ZygiJXMgd2l0aCBzej0leCwgdmFsPSV4XG4i
LCBfX2Z1bmNfXywgc3osIHZhbCk7DQo+ID4gKyAgICAgICAgICAgICAgIHByX2RlYnVnKCIlcyB3
aXRoIHBoeXNfc3o9ICV4LCBzej0leCwgdmFsPSV4XG4iLCBfX2Z1bmNfXywNCj4gPiArICAgICAg
ICAgICAgICAgICAgICAgICAgcGh5c19zeiwgc3osIHZhbCk7DQo+ID4NCj4gPiAtICAgICAgICAg
ICAgICAgb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9pbnRlcm5hbChpOTE1LCBzeik7DQo+
ID4gKyAgICAgICAgICAgICAgIG9iaiA9IGh1Z2VfZ2VtX29iamVjdChpOTE1LCBwaHlzX3N6LCBz
eik7DQo+ID4gICAgICAgICAgICAgICAgIGlmIChJU19FUlIob2JqKSkgew0KPiA+ICAgICAgICAg
ICAgICAgICAgICAgICAgIGVyciA9IFBUUl9FUlIob2JqKTsNCj4gPiAgICAgICAgICAgICAgICAg
ICAgICAgICBnb3RvIGVycl9mbHVzaDsgQEAgLTU0LDcgKzU5LDggQEAgc3RhdGljIGludA0KPiA+
IGlndF9jbGllbnRfZmlsbCh2b2lkICphcmcpDQo+ID4gICAgICAgICAgICAgICAgICAqIHZhbHVl
cyBhZnRlciB3ZSBkbyB0aGUgc2V0X3RvX2NwdV9kb21haW4gYW5kIHBpY2sgaXQgdXAgYXMgYQ0K
PiA+ICAgICAgICAgICAgICAgICAgKiB0ZXN0IGZhaWx1cmUuDQo+ID4gICAgICAgICAgICAgICAg
ICAqLw0KPiA+IC0gICAgICAgICAgICAgICBtZW1zZXQzMih2YWRkciwgdmFsIF4gMHhkZWFkYmVh
Ziwgb2JqLT5iYXNlLnNpemUgLyBzaXplb2YodTMyKSk7DQo+ID4gKyAgICAgICAgICAgICAgIG1l
bXNldDMyKHZhZGRyLCB2YWwgXiAweGRlYWRiZWFmLA0KPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgICBodWdlX2dlbV9vYmplY3RfcGh5c19zaXplKG9iaikgLw0KPiA+ICsgc2l6ZW9mKHUzMikp
Ow0KPiA+DQo+ID4gICAgICAgICAgICAgICAgIGlmICghKG9iai0+Y2FjaGVfY29oZXJlbnQgJg0K
PiBJOTE1X0JPX0NBQ0hFX0NPSEVSRU5UX0ZPUl9XUklURSkpDQo+ID4gICAgICAgICAgICAgICAg
ICAgICAgICAgb2JqLT5jYWNoZV9kaXJ0eSA9IHRydWU7IEBAIC03MSw3ICs3Nyw3IEBADQo+ID4g
c3RhdGljIGludCBpZ3RfY2xpZW50X2ZpbGwodm9pZCAqYXJnKQ0KPiA+ICAgICAgICAgICAgICAg
ICBpZiAoZXJyKQ0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgIGdvdG8gZXJyX3VucGluOw0K
PiA+DQo+ID4gLSAgICAgICAgICAgICAgIGZvciAoaSA9IDA7IGkgPCBvYmotPmJhc2Uuc2l6ZSAv
IHNpemVvZih1MzIpOyArK2kpIHsNCj4gPiArICAgICAgICAgICAgICAgZm9yIChpID0gMDsgaSA8
IGh1Z2VfZ2VtX29iamVjdF9waHlzX3NpemUob2JqKSAvDQo+ID4gKyBzaXplb2YodTMyKTsgKytp
KSB7DQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgaWYgKHZhZGRyW2ldICE9IHZhbCkgew0K
PiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcHJfZXJyKCJ2YWRkclsldV09JXgs
IGV4cGVjdGVkPSV4XG4iLCBpLA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHZhZGRyW2ldLCB2YWwpOyBkaWZmIC0tZ2l0DQo+ID4gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX29iamVjdF9ibHQuYw0KPiA+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9vYmplY3RfYmx0LmMNCj4gPiBpbmRl
eCAxOTg0M2FjYzg0ZDMuLmM2ZTFlZWJlNTNmNSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX29iamVjdF9ibHQuYw0KPiA+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fb2JqZWN0X2JsdC5j
DQo+ID4gQEAgLTksNiArOSw3IEBADQo+ID4NCj4gPiAgI2luY2x1ZGUgInNlbGZ0ZXN0cy9pZ3Rf
Zmx1c2hfdGVzdC5oIg0KPiA+ICAjaW5jbHVkZSAic2VsZnRlc3RzL21vY2tfZHJtLmgiDQo+ID4g
KyNpbmNsdWRlICJodWdlX2dlbV9vYmplY3QuaCINCj4gPiAgI2luY2x1ZGUgIm1vY2tfY29udGV4
dC5oIg0KPiA+DQo+ID4gIHN0YXRpYyBpbnQgaWd0X2ZpbGxfYmx0KHZvaWQgKmFyZykNCj4gPiBA
QCAtMjMsMTYgKzI0LDI2IEBAIHN0YXRpYyBpbnQgaWd0X2ZpbGxfYmx0KHZvaWQgKmFyZykNCj4g
Pg0KPiA+ICAgICAgICAgcHJhbmRvbV9zZWVkX3N0YXRlKCZwcm5nLCBpOTE1X3NlbGZ0ZXN0LnJh
bmRvbV9zZWVkKTsNCj4gPg0KPiA+ICsgICAgICAgLyoNCj4gPiArICAgICAgICAqIFhYWDogbmVl
ZHMgc29tZSB0aHJlYWRzIHRvIHNjYWxlIGFsbCB0aGVzZSB0ZXN0cywgYWxzbyBtYXliZSB0aHJv
dw0KPiA+ICsgICAgICAgICogaW4gc3VibWlzc2lvbiBmcm9tIGhpZ2hlciBwcmlvcml0eSBjb250
ZXh0IHRvIHNlZSBpZiB3ZSBhcmUNCj4gPiArICAgICAgICAqIHByZWVtcHRlZCBmb3IgdmVyeSBs
YXJnZSBvYmplY3RzLi4uDQo+ID4gKyAgICAgICAgKi8NCj4gDQo+IEEgY2hhbGxlbmdlIQ0KPiAN
Cj4gPiArDQo+ID4gICAgICAgICBkbyB7DQo+ID4gLSAgICAgICAgICAgICAgIHUzMiBzeiA9IHBy
YW5kb21fdTMyX3N0YXRlKCZwcm5nKSAlIFNaXzMyTTsNCj4gPiArICAgICAgICAgICAgICAgY29u
c3QgdTMyIG1heF9ibG9ja19zaXplID0gUzE2X01BWCAqIFBBR0VfU0laRTsNCj4gPiArICAgICAg
ICAgICAgICAgdTMyIHN6ID0gbWluX3QodTY0LCBjZS0+dm0tPnRvdGFsID4+IDQsDQo+IHByYW5k
b21fdTMyX3N0YXRlKCZwcm5nKSk7DQo+ID4gKyAgICAgICAgICAgICAgIHUzMiBwaHlzX3N6ID0g
c3ogJSAobWF4X2Jsb2NrX3NpemUgKyAxKTsNCj4gPiAgICAgICAgICAgICAgICAgdTMyIHZhbCA9
IHByYW5kb21fdTMyX3N0YXRlKCZwcm5nKTsNCj4gPiAgICAgICAgICAgICAgICAgdTMyIGk7DQo+
ID4NCj4gPiAgICAgICAgICAgICAgICAgc3ogPSByb3VuZF91cChzeiwgUEFHRV9TSVpFKTsNCj4g
PiArICAgICAgICAgICAgICAgcGh5c19zeiA9IHJvdW5kX3VwKHBoeXNfc3osIFBBR0VfU0laRSk7
DQo+ID4NCj4gPiAtICAgICAgICAgICAgICAgcHJfZGVidWcoIiVzIHdpdGggc3o9JXgsIHZhbD0l
eFxuIiwgX19mdW5jX18sIHN6LCB2YWwpOw0KPiA+ICsgICAgICAgICAgICAgICBwcl9kZWJ1Zygi
JXMgd2l0aCBwaHlzX3N6PSAleCwgc3o9JXgsIHZhbD0leFxuIiwgX19mdW5jX18sDQo+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgIHBoeXNfc3osIHN6LCB2YWwpOw0KPiA+DQo+ID4gLSAgICAg
ICAgICAgICAgIG9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfaW50ZXJuYWwoaTkxNSwgc3op
Ow0KPiA+ICsgICAgICAgICAgICAgICBvYmogPSBodWdlX2dlbV9vYmplY3QoaTkxNSwgcGh5c19z
eiwgc3opOw0KPiA+ICAgICAgICAgICAgICAgICBpZiAoSVNfRVJSKG9iaikpIHsNCj4gPiAgICAg
ICAgICAgICAgICAgICAgICAgICBlcnIgPSBQVFJfRVJSKG9iaik7DQo+ID4gICAgICAgICAgICAg
ICAgICAgICAgICAgZ290byBlcnJfZmx1c2g7IEBAIC00OCw3ICs1OSw4IEBAIHN0YXRpYyBpbnQN
Cj4gPiBpZ3RfZmlsbF9ibHQodm9pZCAqYXJnKQ0KPiA+ICAgICAgICAgICAgICAgICAgKiBNYWtl
IHN1cmUgdGhlIHBvdGVudGlhbGx5IGFzeW5jIGNsZmx1c2ggZG9lcyBpdHMgam9iLCBpZg0KPiA+
ICAgICAgICAgICAgICAgICAgKiByZXF1aXJlZC4NCj4gPiAgICAgICAgICAgICAgICAgICovDQo+
ID4gLSAgICAgICAgICAgICAgIG1lbXNldDMyKHZhZGRyLCB2YWwgXiAweGRlYWRiZWFmLCBvYmot
PmJhc2Uuc2l6ZSAvIHNpemVvZih1MzIpKTsNCj4gPiArICAgICAgICAgICAgICAgbWVtc2V0MzIo
dmFkZHIsIHZhbCBeIDB4ZGVhZGJlYWYsDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgIGh1
Z2VfZ2VtX29iamVjdF9waHlzX3NpemUob2JqKSAvDQo+ID4gKyBzaXplb2YodTMyKSk7DQo+IA0K
PiBPaywgdXNpbmcgaHVnZV9vYmplY3QgaXMgYSBsaXR0bGUgaW50ZXJlc3RpbmcgZm9yIGEgZmls
bCBhcyB3ZSB3aWxsIHdyaXRlIHRoZSBzYW1lDQo+IHBhZ2VzIG92ZXIgYW5kIG92ZXIgYWdhaW4u
IERvZXNuJ3QgYnJlYWsgdGhlIHRlc3QsIGJ1dCBpdCB3aWxsIGJlIGltcG9ydGFudA0KPiB3aGVu
IGNvbnNpZGVyaW5nIGRvaW5nIGEgaHVnZSBjb3B5Lg0KPiANCj4gPiAgICAgICAgICAgICAgICAg
aWYgKCEob2JqLT5jYWNoZV9jb2hlcmVudCAmDQo+IEk5MTVfQk9fQ0FDSEVfQ09IRVJFTlRfRk9S
X1dSSVRFKSkNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICBvYmotPmNhY2hlX2RpcnR5ID0g
dHJ1ZTsgQEAgLTY1LDcgKzc3LDcgQEANCj4gPiBzdGF0aWMgaW50IGlndF9maWxsX2JsdCh2b2lk
ICphcmcpDQo+ID4gICAgICAgICAgICAgICAgIGlmIChlcnIpDQo+ID4gICAgICAgICAgICAgICAg
ICAgICAgICAgZ290byBlcnJfdW5waW47DQo+ID4NCj4gPiAtICAgICAgICAgICAgICAgZm9yIChp
ID0gMDsgaSA8IG9iai0+YmFzZS5zaXplIC8gc2l6ZW9mKHUzMik7ICsraSkgew0KPiA+ICsgICAg
ICAgICAgICAgICBmb3IgKGkgPSAwOyBpIDwgaHVnZV9nZW1fb2JqZWN0X3BoeXNfc2l6ZShvYmop
IC8NCj4gPiArIHNpemVvZih1MzIpOyArK2kpIHsNCj4gPiAgICAgICAgICAgICAgICAgICAgICAg
ICBpZiAodmFkZHJbaV0gIT0gdmFsKSB7DQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBwcl9lcnIoInZhZGRyWyV1XT0leCwgZXhwZWN0ZWQ9JXhcbiIsIGksDQo+ID4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdmFkZHJbaV0sIHZhbCk7DQo+IA0KPiBJ
IHRoaW5raW5nIHBhc3NpbmcgcG9vbCB2aWEgYmF0Y2gtPnByaXZhdGUgaXNuJ3QgdG9vIGJhZCBv
ZiBhbiBpZGVhIChJIGhhZCBhDQo+IGRvdWJsZSB0YWtlIHdoZW4gSSBjb3VsZG4ndCBzZWUgYW4g
YXNzaWdubWVudCB0byBwb29sKSwgYnV0IG5ldmVydGhlbGVzcw0KPiBSZXZpZXdlZC1ieTogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IC1DaHJpcw0KPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0DQo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
