Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC0A8F0AD
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 18:35:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E203C6E431;
	Thu, 15 Aug 2019 16:35:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 387CA6E431
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 16:35:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 09:35:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,389,1559545200"; d="scan'208";a="194796586"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga001.fm.intel.com with ESMTP; 15 Aug 2019 09:35:39 -0700
Received: from fmsmsx111.amr.corp.intel.com (10.18.116.5) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 15 Aug 2019 09:35:39 -0700
Received: from fmsmsx106.amr.corp.intel.com ([169.254.5.251]) by
 fmsmsx111.amr.corp.intel.com ([169.254.12.8]) with mapi id 14.03.0439.000;
 Thu, 15 Aug 2019 09:35:39 -0700
From: "Tang, CQ" <cq.tang@intel.com>
To: Daniel Vetter <daniel@ffwll.ch>
Thread-Topic: [Intel-gfx] [PATCH v2 03/37] drm/i915/region: support basic
 eviction
Thread-Index: AQHVRvOJmH6s2kc5i0qFD+BcWADtu6b8lUYAgAA9GgD//5EXwIAAjrMA//+N8dA=
Date: Thu, 15 Aug 2019 16:35:38 +0000
Message-ID: <1D440B9B88E22A4ABEF89F9F1F81BC29E3454B28@FMSMSX106.amr.corp.intel.com>
References: <20190627205633.1143-1-matthew.auld@intel.com>
 <20190627205633.1143-4-matthew.auld@intel.com>
 <20190730162605.GC7444@phenom.ffwll.local>
 <CAM0jSHOXWzhLa4rjf68yuLHdU5x1duEbtL+uzhWDg0dQg+XWiQ@mail.gmail.com>
 <CAKMK7uEzui+WGbpV+Br-Uq8d_MXOyAcTDc6ygO9DvvbO_EtoRw@mail.gmail.com>
 <1D440B9B88E22A4ABEF89F9F1F81BC29E3454A30@FMSMSX106.amr.corp.intel.com>
 <CAKMK7uExy4M+9iC54XQ-ah+w1sG65bf6iP8CHmgQJ6z=-VTVnA@mail.gmail.com>
In-Reply-To: <CAKMK7uExy4M+9iC54XQ-ah+w1sG65bf6iP8CHmgQJ6z=-VTVnA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZWMwNmZhY2YtZGY4NS00OTdjLTg5NTQtYjMxNmIyZDNjNjNjIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoibStoUzBDVlNwRFp6SVAyaVBpVlRtOHdQUjhaZmJLVnNiMFNHa1lnWUtaXC8raTZDUWdHR2N6aVpSdVwvRkdTOEJyIn0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.107]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 03/37] drm/i915/region: support basic
 eviction
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>, "Auld,
 Matthew" <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogRGFuaWVsIFZldHRlciBb
bWFpbHRvOmRhbmllbEBmZndsbC5jaF0NCj4gU2VudDogVGh1cnNkYXksIEF1Z3VzdCAxNSwgMjAx
OSA5OjIxIEFNDQo+IFRvOiBUYW5nLCBDUSA8Y3EudGFuZ0BpbnRlbC5jb20+DQo+IENjOiBNYXR0
aGV3IEF1bGQgPG1hdHRoZXcud2lsbGlhbS5hdWxkQGdtYWlsLmNvbT47IEludGVsIEdyYXBoaWNz
DQo+IERldmVsb3BtZW50IDxpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPjsgQXVsZCwg
TWF0dGhldw0KPiA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtJbnRl
bC1nZnhdIFtQQVRDSCB2MiAwMy8zN10gZHJtL2k5MTUvcmVnaW9uOiBzdXBwb3J0IGJhc2ljDQo+
IGV2aWN0aW9uDQo+IA0KPiBPbiBUaHUsIEF1ZyAxNSwgMjAxOSBhdCA0OjU4IFBNIFRhbmcsIENR
IDxjcS50YW5nQGludGVsLmNvbT4gd3JvdGU6DQo+ID4NCj4gPg0KPiA+DQo+ID4gPiAtLS0tLU9y
aWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+ID4gRnJvbTogSW50ZWwtZ2Z4IFttYWlsdG86aW50ZWwt
Z2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnXSBPbg0KPiA+ID4gQmVoYWxmIE9mIERh
bmllbCBWZXR0ZXINCj4gPiA+IFNlbnQ6IFRodXJzZGF5LCBBdWd1c3QgMTUsIDIwMTkgNzoyNyBB
TQ0KPiA+ID4gVG86IE1hdHRoZXcgQXVsZCA8bWF0dGhldy53aWxsaWFtLmF1bGRAZ21haWwuY29t
Pg0KPiA+ID4gQ2M6IEludGVsIEdyYXBoaWNzIERldmVsb3BtZW50IDxpbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnPjsNCj4gPiA+IEF1bGQsIE1hdHRoZXcgPG1hdHRoZXcuYXVsZEBpbnRl
bC5jb20+DQo+ID4gPiBTdWJqZWN0OiBSZTogW0ludGVsLWdmeF0gW1BBVENIIHYyIDAzLzM3XSBk
cm0vaTkxNS9yZWdpb246IHN1cHBvcnQNCj4gPiA+IGJhc2ljIGV2aWN0aW9uDQo+ID4gPg0KPiA+
ID4gT24gVGh1LCBBdWcgMTUsIDIwMTkgYXQgMTI6NDggUE0gTWF0dGhldyBBdWxkDQo+ID4gPiA8
bWF0dGhldy53aWxsaWFtLmF1bGRAZ21haWwuY29tPiB3cm90ZToNCj4gPiA+ID4NCj4gPiA+ID4g
T24gVHVlLCAzMCBKdWwgMjAxOSBhdCAxNzoyNiwgRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xs
LmNoPiB3cm90ZToNCj4gPiA+ID4gPg0KPiA+ID4gPiA+IE9uIFRodSwgSnVuIDI3LCAyMDE5IGF0
IDA5OjU1OjU5UE0gKzAxMDAsIE1hdHRoZXcgQXVsZCB3cm90ZToNCj4gPiA+ID4gPiA+IFN1cHBv
cnQgYmFzaWMgZXZpY3Rpb24gZm9yIHJlZ2lvbnMuDQo+ID4gPiA+ID4gPg0KPiA+ID4gPiA+ID4g
U2lnbmVkLW9mZi1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPg0KPiA+
ID4gPiA+ID4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVs
LmNvbT4NCj4gPiA+ID4gPiA+IENjOiBBYmRpZWwgSmFudWxndWUgPGFiZGllbC5qYW51bGd1ZUBs
aW51eC5pbnRlbC5jb20+DQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBTbyBmcm9tIGEgdmVyeSBoaWdo
IGxldmVsIHRoaXMgbG9va3MgbGlrZSBpdCB3YXMgbGFyZ2VseQ0KPiA+ID4gPiA+IG1vZGVsbGVk
IGFmdGVyIGk5MTVfZ2VtX3Nocmluay5jIGFuZCBub3QgaTkxNV9nZW1fZXZpY3QuYyAob3VyDQo+
ID4gPiA+ID4gb3RoZXIgIm1ha2Ugcm9vbSwgd2UncmUgcnVubmluZyBvdXQgb2Ygc3R1ZmYiIGNv
ZGUpLiBBbnkgc3BlY2lmaWMNCj4gcmVhc29ucz8NCj4gPiA+ID4NCj4gPiA+ID4gSUlSQyBJIHRo
aW5rIGl0IHdhcyBvcmlnaW5hbGx5IGJhc2VkIG9uIHRoZSBwYXRjaGVzIHRoYXQgZXhwb3NlZA0K
PiA+ID4gPiBzdG9sZW4tbWVtb3J5IHRvIHVzZXJzcGFjZSBmcm9tIGEgZmV3IHllYXJzIGFnby4N
Cj4gPiA+ID4NCj4gPiA+ID4gPg0KPiA+ID4gPiA+IEkgdGhpbmsgaTkxNV9nZW1fZXZpY3QgaXMg
YSBsb3QgY2xvc2VyIG1hdGNoIGZvciB3aGF0IHdlIHdhbnQNCj4gPiA+ID4gPiBmb3IgdnJhbSAo
aXQgc3RhcnRlZCBvdXQgdG8gbWFuYWdlIHNldmVyZWx5IGxpbWl0dGVkIEdUVCBvbg0KPiA+ID4g
PiA+IGdlbjIvMy80KSBhZnRlciBhbGwuIFdpdGggdGhlIGNvbXBsaWNhdGlvbiB0aGF0IHdlJ2xs
IGhhdmUgdG8NCj4gPiA+ID4gPiBtYW5hZ2UgcGh5c2ljYWwgbWVtb3J5IHdpdGggbXVsdGlwbGUg
dmlydHVhbCBtYXBwaW5ncyBvZiBpdCBvbg0KPiA+ID4gPiA+IHRvcCwgc28gdW5mb3J0dW5hdGVs
eSB3ZSBjYW4ndCBqdXN0IHJldXNlIHRoZSBsb2NraW5nIHBhdHRlcg0KPiA+ID4gPiA+IENocmlz
IGhhcyBjb21lIHVwIHdpdGggaW4gaGlzDQo+ID4gPiBzdHJ1Y3RfbXV0ZXgtcmVtb3ZhbCBicmFu
Y2guDQo+ID4gPiA+ID4gQnV0IGF0IGxlYXN0IGNvbmNlcHR1YWxseSBpdCBzaG91bGQgYmUgYSBs
b3QgY2xvc2VyLg0KPiA+ID4gPg0KPiA+ID4gPiBXaGVuIHlvdSBzYXkgbWFrZSBpdCBtb3JlIGxp
a2UgaTkxNV9nZW1fZXZpY3QsIHdoYXQgZG9lcyB0aGF0IG1lYW4/DQo+ID4gPiA+IEFyZSB5b3Ug
dGFsa2luZyBhYm91dCB0aGUgZXZpY3Rpb24gcm9zdGVyIHN0dWZmLCBvciB0aGUNCj4gPiA+ID4g
cGxhY2VtZW50L2xvY2tpbmcgb2YgdGhlIGV2aWN0aW9uIGxvZ2ljLCB3aXRoIGl0IGJlaW5nIGRl
ZXAgZG93bg0KPiA+ID4gPiBpbiBnZXRfcGFnZXM/DQo+ID4gPg0KPiA+ID4gU28gdGhlcmUncyBr
aW5kYSB0d28gYXNwZWN0cyBoZXJlIHRoYXQgSSBtZWFudC4NCj4gPiA+DQo+ID4gPiBGaXJzdCBp
cyB0aGUgaGlnaC1sZXZlbCBhcHByb2FjaCBvZiB0aGUgc2hyaW5rZXIsIHdoaWNoIGlzIGEgZGly
ZWN0DQo+ID4gPiByZWZsZWN0aW9uIG9mIGNvcmUgbW0gbG93IG1lbW9yeSBoYW5kbGluZyBwcmlu
Y2lwbGVzOiBDb3JlIG1tIGp1c3QNCj4gPiA+IHRyaWVzIHRvIGVxdWFsbHkgc2hyaW5rIGV2ZXJ5
b25lIHdoZW4gdGhlcmUncyBsb3cgbWVtb3J5LCB3aGljaCBpcw0KPiA+ID4gbWFuYWdlZCBieSB3
YXRlcm1hcmtzLCBhbmQgYSBmZXcgb3RoZXIgdHJpY2tzLiBUaGlzIGlzIGFsbCBvbmx5DQo+ID4g
PiBiZXN0LWVmZm9ydCwgYW5kIGlmIG11bHRpcGxlIHRocmVhZHMgd2FudCBhIGxvdCBvZiBtZW1v
cnkgYXQgdGhlDQo+ID4gPiBzYW1lIHRpbWUgdGhlbiBpdCdzIGFsbCBnb2luZyB0byBmYWlsIHdp
dGggRU5PTUVNLg0KPiA+ID4NCj4gPiA+IE9uIGdwdXMgb3RvaCwgYW5kIHdoYXQgd2UgZG8gaW4g
aTkxNV9nZW1fZXZpY3Rpb24uYyBmb3IgZ3R0IChhbmQNCj4gPiA+IHZlcnkgbXVjaCBuZWVkZWQg
d2l0aCB0aGUgdGlueSBndHQgZm9yIGV2ZXJ5dGhpbmcgaW4gZ2VuMi8zLzQvNSkgaXMNCj4gPiA+
IHRoYXQgd2hlbiB3ZSBydW4gb3V0IG9mIHNwYWNlLCB3ZSBzdGFsbCwgdGhyb3cgb3V0IGV2ZXJ5
b25lIGVsc2UsDQo+ID4gPiBhbmQgaGF2ZSBleGNsdXNpdmUgYWNjZXNzIHRvIHRoZSBlbnRpcmUg
Z3B1IHNwYWNlLiBUaGVuIHRoZSBuZXh0DQo+ID4gPiBiYXRjaGJ1ZmZlciBnb2VzIHRocm91Z2gg
dGhlIHNhbWUgZGFuY2UuIFdpdGggdGhpcyB5b3UgZ3VhcmFudGVlDQo+ID4gPiB0aGF0IGlmIHlv
dSBoYXZlIGEgc2VyaWVzIG9mIGJhdGNoYnVmZmVycyB3aGljaCBhbGwgbmVlZCBlLmcuIDYwJSBv
Zg0KPiA+ID4gbG1lbSwgdGhleSB3aWxsIGFsbCBiZSBhYmxlIHRvIGV4ZWN1dGUuIFdpdGggdGhl
IHNocmlua2VyLXN0eWxlIG9mDQo+ID4gPiBsb3ctbWVtb3J5IGhhbmRsaW5nIGV2ZW50dWFsbHkg
eW91J3JlIHVubHVja3ksIGJvdGggdGhyZWFkcyB3aWxsIG9ubHkNCj4gZ2V0IHVwIHRvIDUwJSwg
ZmFpbCB3aXRoIEVOT1NQQywgYW5kIHVzZXJzcGFjZSBjcmFzaGVzLg0KPiA+ID4gV2hpY2ggaXMg
bm90IGdvb2QuDQo+ID4gPg0KPiA+ID4gVGhlIG90aGVyIGJpdCBpcyBsb2NraW5nLiBTaW5jZSB3
ZSBuZWVkIHRvIGZyZWUgcGFnZXMgZnJvbSB0aGUNCj4gPiA+IHNocmlua2VyIHRoZXJlJ3MgdHJp
Y2t5IGxvY2tpbmcgcnVsZXMgaW52b2x2ZWQuIFdvcnNlLCB3ZSBjYW5ub3QNCj4gPiA+IGJhY2sg
b2ZmIGZyb20gdGhlIHNocmlua2VyIGRvd24gdG8gZS5nLiB0aGUga21hbGxvYyBvciBhbGxvY19w
YWdlcw0KPiA+ID4gY2FsbGVkIHRoYXQgcHV0IHVzIGludG8gcmVjbGFpbS4gV2hpY2ggbWVhbnMg
dGhlIHVzdWFsIGRlYWRsb2NrDQo+ID4gPiBhdm9pZGFuY2UgdHJpY2sgb2YgaGF2aW5nIGEgc2xv
d3BhdGggd2hlcmUgeW91IGZpcnN0IGRyb3AgYWxsIHRoZQ0KPiA+ID4gbG9ja3MsIHRoZW4gcmVh
Y3F1aXJlIHRoZW0gaW4gdGhlIHJpZ2h0IG9yZGVyIGRvZXNuJ3Qgd29yayAtIGluIHNvbWUNCj4g
PiA+IGNhc2VzIHRoZSBjYWxsZXIgb2Yga21hbGxvYyBvciBhbGxvY19wYWdlcyBjb3VsZCBiZSBo
b2xkaW5nIGEgbG9jaw0KPiA+ID4gdGhhdCB3ZSdkIG5lZWQgdG8gdW5sb2NrIGZpcnN0LiBIZW5j
ZSB3aHkgdGhlIHNocmlua2VyIHVzZXMgdGhlIGJlc3QtDQo+IGVmZm9ydC1taWdodC1mYWlsIHNv
bHV0aW9uIG9mIHRyeWxvY2tzLCBlbmNvZGVkIGluIHNocmlua2VyX2xvY2suDQo+ID4gPg0KPiA+
ID4gQnV0IGZvciBsbWVtIHdlIGRvbid0IGhhdmUgc3VjaCBhbiBleGN1c2UsIGJlY2F1c2UgaXQn
cyBhbGwgb3VyIG93biBjb2RlLg0KPiA+ID4gVGhlIGxvY2tpbmcgZGVzaWduIGNhbiAoYW5kIHNo
b3VsZCEpIGFzc3VtZSB0aGF0IGl0IGNhbiBnZXQgb3V0IG9mDQo+ID4gPiBhbnkgZGVhZGxvY2sg
YW5kIGFsd2F5cyBhY3F1aXJlIGFsbCB0aGUgbG9ja3MgaXQgbmVlZHMuIFdpdGhvdXQgdGhhdA0K
PiA+ID4geW91IGNhbid0IGFjaGl2ZSB0aGUgZmlyc3QgcGFydCBhYm91dCBndWFyYW50ZWVpbmcg
ZXhlY3V0aW9uIG9mDQo+ID4gPiBiYXRjaGVzIHdoaWNoIGNvbGxlY3RpdmVseSBuZWVkIG1vcmUg
dGhhbiAxMDAlIG9mIGxtZW0sIGJ1dA0KPiA+ID4gaW5kaXZpZHVhbGx5IGFsbCBmaXQuIEFzIGFu
IGV4YW1wbGUgaWYgeW91IGxvb2sgYXQgdGhlIGFtZGdwdQ0KPiA+ID4gY29tbWFuZCBzdWJtaXNz
aW9uIGlvY3RsLCB0aGF0IHBhc3NlcyBhcm91bmQgdHRtX29wZXJhdGlvbl9jdHggd2hpY2gNCj4g
PiA+IHRyYWNrcyBhIGZldyB0aGluZ3MgYWJvdXQgbG9ja3MgYW5kIG90aGVyIGJpdHMsIGFuZCBp
ZiB0aGV5IGhpdCBhDQo+ID4gPiBwb3NzaWJsZSBkZWFkbG9jayBzaXR1YXRpb24gdGhleSBjYW4g
dW53aW5kIHRoZSBlbnRpcmUgQ1MgYW5kIHJlc3RhcnQgYnkNCj4gdGFraW5nIHRoZSBsb2NrcyBp
biB0aGUgcmlnaHQgb3JkZXIuDQo+ID4NCj4gPiBUaGFuayB5b3UgZm9yIHRoZSBleHBsYW5hdGlv
bi4NCj4gPg0KPiA+IFdoYXQgZG9lcyBvdXIgJ3N0cnVjdF9tdXRleCcgcHJvdGVjdCBmb3IgZXhh
Y3RseT8gIEFzIGV4YW1wbGUsIEkgc2VlIHdoZW4NCj4gYmxpdHRlciBlbmdpbmUgZnVuY3Rpb25z
IGFyZSBjYWxsZWQsIHdlIGhvbGQgJ3N0cnVjdF9tdXRleCIgZmlyc3QuDQo+ID4NCj4gPiBDYW4g
d2UgcmVwbGFjZSAnc3RydWN0X211dGV4JyB3aXRoIHNvbWUgZmluZS1ncmFpbiBsb2NrcyBzbyB0
aGF0IHdlIGNhbg0KPiBsb2NrIG9iai0+bW0ubG9jayBmaXJzdCwgYW5kIHRoZW4gbG9jayB0aGVz
ZSBmaW5lLWdyYWluIGxvY2tzPw0KPiANCj4gU3VyZS4gV2l0aCBsb3RzIG9mIGVmZm9ydHMuDQo+
IA0KPiA+IEkgbmVlZCBzb21lIGJhY2tncm91bmQgaW5mbyBhYm91dCAnc3RydWN0X211dGV4JyBk
ZXNpZ24uDQo+IA0KPiBUaGVyZSdzIG5vdCByZWFsbHkgYSBkZXNpZ24gYmVoaW5kIGl0LCBpdCdz
IGp1c3QgMTArIHllYXJzIG9mIGV2b2x1dGlvbi4NCg0KWWVzLCBpbiBvbGQgZGF5cywgYSBiaWcg
Y29hcnNlLWdyYWluIGxvY2sgd2FzIE9LLiBOb3cgd2l0aCBzbyBtYW55IGVuZ2luZXMgaW4gbmV3
IGhhcmR3YXJlIGZvciBuZXcgY29tcHV0YXRpb24gd29ya2xvYWRzLCB3ZSBtaWdodCBuZWVkIHRv
IGRvIGZpbmUtZ3JhaW4gbG9ja3MNCg0KLS1DUQ0KDQoNCj4gLURhbmllbA0KPiANCj4gPiAtLUNR
DQo+ID4NCj4gPiA+DQo+ID4gPiBJIHRob3VnaHQgSSB0eXBlZCB0aGF0IHVwIHNvbWV3aGVyZSwg
YnV0IEkgZ3Vlc3MgaXQgZ290IGxvc3QgLi4uDQo+ID4gPg0KPiA+ID4gQ2hlZXJzLCBEYW5pZWwN
Cj4gPiA+DQo+ID4gPiA+DQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBCdXQgSSBtaWdodCBiZSBlbnRp
cmVseSBvZmYgdGhlIHRyYWNrIHdpdGggcmVjb25zdHJ1Y3RpbmcgaG93DQo+ID4gPiA+ID4gdGhp
cyBjb2RlIGNhbWUgdG8gYmUsIHNvIHBsZWFzZSBlbGFib3JhdGUgYSBiaXQuDQo+ID4gPiA+ID4N
Cj4gPiA+ID4gPiBUaGFua3MsIERhbmllbA0KPiA+ID4NCj4gPiA+DQo+ID4gPg0KPiA+ID4gLS0N
Cj4gPiA+IERhbmllbCBWZXR0ZXINCj4gPiA+IFNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jw
b3JhdGlvbg0KPiA+ID4gKzQxICgwKSA3OSAzNjUgNTcgNDggLSBodHRwOi8vYmxvZy5mZndsbC5j
aA0KPiA+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18N
Cj4gPiA+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QNCj4gPiA+IEludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcNCj4gPiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4DQo+IA0KPiANCj4gDQo+IC0tDQo+IERhbmllbCBWZXR0ZXINCj4g
U29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uDQo+ICs0MSAoMCkgNzkgMzY1IDU3
IDQ4IC0gaHR0cDovL2Jsb2cuZmZ3bGwuY2gNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
