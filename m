Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56113A6B30
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2019 16:22:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B036B894EB;
	Tue,  3 Sep 2019 14:21:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 964EF894E3;
 Tue,  3 Sep 2019 14:21:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Sep 2019 07:21:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,463,1559545200"; d="scan'208";a="357748481"
Received: from irsmsx106.ger.corp.intel.com ([163.33.3.31])
 by orsmga005.jf.intel.com with ESMTP; 03 Sep 2019 07:21:52 -0700
Received: from irsmsx105.ger.corp.intel.com ([169.254.7.73]) by
 IRSMSX106.ger.corp.intel.com ([169.254.8.187]) with mapi id 14.03.0439.000;
 Tue, 3 Sep 2019 15:21:51 +0100
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "daniel@ffwll.ch" <daniel@ffwll.ch>
Thread-Topic: [PATCH v3 0/3] Send a hotplug when edid changes
Thread-Index: AQHVTFZ9Xb5ovM3/BU6v/tV6RvEfjacCMIaAgBeWVYCAAAcOAIAAI0uAgAAqmYA=
Date: Tue, 3 Sep 2019 14:21:51 +0000
Message-ID: <eca857469a28e0909a533eb0a3b81650369496c4.camel@intel.com>
References: <20190806125551.25761-1-stanislav.lisovskiy@intel.com>
 <20190806135150.GZ7444@phenom.ffwll.local>
 <8614f54fd742f9f35979768997e416d36b69563a.camel@intel.com>
 <CAKMK7uHgfviXTqkHsCVmZX97dWFfbysCHtiRVDpSzJ3aheTQkw@mail.gmail.com>
 <5e7dcb14e618796e9cb8a9503cec9d9985c5fd4d.camel@intel.com>
 <20190807210702.GG7444@phenom.ffwll.local>
 <cab2f3a9f9827a993069e402feecc9a9853560a1.camel@intel.com>
 <56A4AB1F0E1B5D4C83D27F43C50F662E590292A2@IRSMSX107.ger.corp.intel.com>
 <ce9f67ad10a2b1f07ab79bc4ac328ef2bd9a2cf4.camel@intel.com>
 <2d8527f7e982148eec6dc8dd80470d4daf4cfa82.camel@intel.com>
 <20190903094052.GP2112@phenom.ffwll.local>
 <ff5ad889af108e1d78be513e8705c033d16cf994.camel@intel.com>
In-Reply-To: <ff5ad889af108e1d78be513e8705c033d16cf994.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.89]
Content-ID: <E581BA65036793488258721A61FBAA32@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 0/3] Send a hotplug when edid changes
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Peres,
 Martin" <martin.peres@intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDE5LTA5LTAzIGF0IDExOjQ5ICswMDAwLCBMaXNvdnNraXksIFN0YW5pc2xhdiB3
cm90ZToNCj4gT24gVHVlLCAyMDE5LTA5LTAzIGF0IDExOjQwICswMjAwLCBEYW5pZWwgVmV0dGVy
IHdyb3RlOg0KPiA+IA0KPiA+ID4gPiBJbiBmYWN0IEkgd2FzIHdyb25nIC0gd2hlbiBpdCB3b3Jr
ZWQsIGl0IHdhcyB1c2luZyBleGFjdGx5DQo+ID4gPiA+IHRob3NlDQo+ID4gPiA+IHBhdGNoZXMg
OikuIFdpdGggY2xlYW4gZHJtLXRpcCAtIGl0IHNlZW1zIHRvIHdvcmsgb2Nhc3Npb25hbGx5DQo+
ID4gPiA+IGFuZCBpdA0KPiA+ID4gPiBkb2Vzbid0IHVwZGF0ZSB0aGUgYWN0dWFsIGRpc3BsYXkg
ZWRpZCBhbmQgb3RoZXIgc3R1ZmYsIHNvIGV2ZW4NCj4gPiA+ID4gd2hlbg0KPiA+ID4gPiBkaXNw
bGF5cyBhcmUgY2hhbmdlZCB3ZSBzdGlsbCBzZWUgdGhlIG9sZCBpbmZvL2VkaWQgZnJvbQ0KPiA+
ID4gPiB1c2Vyc3BhY2UuDQo+ID4gPiA+IA0KPiA+ID4gPiBXZSBhbHdheXMgZ2V0IGEgaHBkIGly
cSB3aGVuIHN1c3BlbmQvcmVzdW1lIGhvd2V2ZXIgaXQgZG9lc24ndA0KPiA+ID4gPiBhbHdheXMN
Cj4gPiA+ID4gcmVzdWx0IGluIHVldmVudCBiZWluZyBzZW50LiBTbyB0aGVyZSBpcyBhIHJlYWwg
bmVlZCBpbiB0aG9zZQ0KPiA+ID4gPiBwYXRjaGVzLg0KPiA+ID4gPiANCj4gPiA+IA0KPiA+ID4g
SnVzdCBkZWNpZGVkIHRvICJwaW5nIiB0aGlzIGRpc2N1c3Npb24gYWdhaW4uIFRoZSBpc3N1ZSBp
cw0KPiA+ID4gYWxyZWFkeQ0KPiA+ID4gc29tZQ0KPiA+ID4geWVhcnMgb2xkIGFuZCBzdGlsbCBu
b3RoaW5nIGlzIGZpeGVkLiBJIGRvIGFncmVlIHRoYXQgbWF5IGJlDQo+ID4gPiBzb21ldGhpbmcN
Cj4gPiA+IG5lZWRzIHRvIGJlIGZpeGVkL2NoYW5nZWQgaGVyZSBpbiB0aG9zZSBwYXRjaGVzLCBi
dXQgc29tZXRoaW5nDQo+ID4gPiBtdXN0DQo+ID4gPiBiZQ0KPiA+ID4gYWdyZWVkIGF0IGxlYXN0
IEkgZ3Vlc3MsIGFzIGRpc2N1c3Npb25zIHRoZW1zZWxmIGRvIG5vdCBmaXggYnVncy4NCj4gPiA+
IEN1cnJlbnRseSB0aG9zZSBwYXRjaGVzIGFkZHJlc3MgYSBwYXJ0aWN1bGFyIGlzc3VlIHdoaWNo
IG9jY3VycywNCj4gPiA+IGlmDQo+ID4gPiBkaXNwbGF5IGlzIGNoYW5nZWQgZHVyaW5nIHN1c3Bl
bmQuIA0KPiA+ID4gT24gb2Nhc3Npb25hbCBiYXNpcywgdXNlcnNwYWNlIG1pZ2h0IG5vdCBnZXQg
YSBob3RwbHVnIGV2ZW50IGF0DQo+ID4gPiBhbGwsDQo+ID4gPiBjYXVzaW5nIGRpZmZlcmVudCBr
aW5kIG9mIHByb2JsZW1zKGxpa2Ugd3JvbmcgbW9kZSBzZXQgb24gZGlzcGxheQ0KPiA+ID4gb3IN
Cj4gPiA+IGRpYXBseSBub3Qgd29ya2luZyBhdCBhbGwpLiBBbHNvIHNvbWUga21zX2NoYW1lbGl1
bSBob3RwbHVnIHRlc3RzDQo+ID4gPiBmYWlsDQo+ID4gPiBiZWNhdXNlIG9mIHRoYXQuIA0KPiA+
IA0KPiA+IEkgc3RpbGwgdGhpbmsgd2UnbGwgbG9uZy10ZXJtIHJlZ3JldCB0aGlzIGlmIHdlIGp1
c3QgZHVjdC10YXBlIG1vcmUNCj4gPiBzdHVmZg0KPiA+IG9uIHRvcCwgaW5zdGVhZCBvZiBnaXZp
bmcgdXNlcnNwYWNlIGEgbW9yZSBpbmZvcm1hdGl2ZSB1ZXZlbnQuIFRoaXMNCj4gPiB3aWxsDQo+
ID4gc2VuZCBtb3JlIHVldmVudHMgdG8gdXNlcnNwYWNlLCBzbyBtYXliZSB0aGVuIHVzZXJzcGFj
ZSB0cmllcyB0bw0KPiA+IGZpbHRlcg0KPiA+IG1vcmUgYW5kIGJlIGNsZXZlciwgd2hpY2ggbmV2
ZXIgd29ya3MsIGFuZCB3ZSdyZSBiYWNrIHRvIHRlYXJzLg0KPiANCj4gQnV0IGhlcmUgd2UgYWN0
dWFsbHkgZG8gbmVlZCBhIHVldmVudCBhcyBjdXJyZW50bHkgd2UgZG9uJ3QgZ2V0IGFueQ0KPiBh
dA0KPiBhbGwsIGlmIGVkaWQgY2hhbmdlcyBkdXJpbmcgc3VzcGVuZC4gSWYgdXNlcnNwYWNlIHdp
bGwgdHJ5IHRvIGZpbHRlcg0KPiB0aGlzIG91dCAtIGl0J3MganVzdCBzdHVwaWQsIGhvd2V2ZXIg
d2Ugc3RpbGwgbmVlZCB0byBkbyB0aGluZ3MNCj4gY29ycmVjdGx5Lg0KPiANCj4gPiANCj4gPiBB
bnl3YXksIG9uIHRoZSBhcHByb2FjaCBpdHNlbGY6IEl0J3MgZXh0cmVtZWx5IGk5MTUgc3BlY2lm
aWMsIGFuZA0KPiA+IGl0DQo+ID4gcmVxdWlyZXMgdGhhdCBhbGwgZHJpdmVycyByb2xsIG91dCBk
cm1fZWRpZF9lcXVhbCBjaGVja3MgYW5kIG5vdA0KPiA+IGZvcmdldCB0bw0KPiA+IGluY3JlbWVu
dCB0aGUgZXBvY2ggY291bnRlci4NCj4gPiANCj4gPiBXaGF0IEkgaGFkIGluIG1pbmQgaXMgdGhh
dCB3aGVuIHdlIHNldCB0aGUgZWRpZCBmb3IgYSBjb25uZWN0b3INCj4gPiB3aXRoDQo+ID4gZHJt
X2Nvbm5lY3Rvcl91cGRhdGVfZWRpZF9wcm9wZXJ0eSgpIG9yIHdoYXRldmVyLCB0aGVuIHRoZSBl
cG9jaA0KPiA+IGNvdW50ZXINCj4gPiB3b3VsZCBhdXRvLWluY3JlbWVudCBpZiBhbnl0aGluZyBo
YXMgY2hhbmdlZC4gU2ltaWxhcmx5IChsb25nLXRlcm0NCj4gPiBpZGVhIGF0DQo+ID4gbGVhc3Qp
IGlmIGFueXRoaW5nIGltcG9ydGFudCB3aXRoIERQIHJlZ2lzdGVycyBoYXMgY2hhbmdlZC4NCj4g
PiANCj4gPiBDYW4ndCB3ZSBkbyB0aGF0LCBpbnN0ZWFkIG9mIHRoaXMgc3ViLW9wdGltYWwgc29s
dXRpb24gb2YgcmVxdWlyaW5nDQo+ID4gYWxsDQo+ID4gZHJpdmVycyB0byByb2xsIG91dCBsb3Rz
IG9mIGNvZGU/DQoNClNvIG9uY2UgYWdhaW4sIGp1c3QgdG8gc3VtbWFyaXplIHRoaW5nczoNCg0K
MSkgV2UgdXBkYXRlIGVkaWQgaW4gaW50ZWxfZHBfc2V0X2VkaWQsIHdoaWNoIGlzIGNhbGxlZCBm
cm9tDQppbnRlbF9kcF9kZXRlY3QoZHJtX2Nvbm5lY3Rvcl9oZWxwZXJfZnVuY3MtPmRldGVjdF9j
dHggaG9vaykgd2hpY2ggaXMNCmNhbGxlZCBmcm9tIGRybV9oZWxwZXJfcHJvYmVfZGV0ZWN0LiBU
aGF0IG9uZSBpcyBjYWxsZWQgZWl0aGVyIGZyb20NCnNwZWNpZmljIGludGVsX2VuY29kZXItPmhv
dHBsdWcgaG9vayBpbiBpOTE1X2hvdHBsdWdfd29ya19mdW5jIG9yIGJ5DQp1c2Vyc3BhY2UgcmVx
dWVzdCBkdXJpbmcgcmVwcm9iZS4NCg0KMikgQ3VycmVudGx5IHdlIGFyZSBzaW1wbHkgdXBkYXRp
bmcgZWRpZCBpbiBpbnRlbF9kcF9zZXRfZWRpZCB3aXRob3V0DQpjYXJpbmcgaWYgaXQgaXMgdGhl
IHNhbWUgb3Igbm90IGFuZCBob3RwbHVnIGV2ZW50IGlzIHNlbnQgb25seSBvbmNlDQpjb25uZWN0
aW9uX3N0YXR1cyBoYWQgY2hhbmdlZC4gDQoNCjMpIGRybV9jb25uZWN0b3JfdXBkYXRlX2VkaWRf
cHJvcGVydHkgaXMgY2FsbGVkIGZyb20gY29ubmVjdG9yLQ0KPmdldF9tb2RlcyBob29rKGxldHMg
c2F5IGludGVsX2RwX2dldF9tb2RlcyBmbyBkcCkgaG93ZXZlciBpdCBzaW1wbHkNCnVzZXMgcmVz
dWx0cyBvZg0KZHJtX2hlbHBlcl9wcm9iZV9kZXRlY3Qgc28gd2l0aG91dCBhY3R1YWwgY29tcGFy
aXNvbiBpdCB3b3VsZCBub3QgYmUNCmFibGUgdG8gZGV0ZWN0IGlmIHdlIHJlYWxseSBuZWVkIHRv
IHVwZGF0ZSBlcG9jaF9jb3VudGVyIG9yIG5vdC4NCg0KQmVjYXVzZSBhcyBJIHNhaWQgY3VycmVu
dGx5IGludGVsX2RwX3NldF9lZGlkIHNpbXBseSBhc3NpZ25zIGl0IHdpdGhvdXQNCmNoZWNraW5n
LCBzbyB0aGF0IHdheSB5b3Ugd2lsbCBnZXQgZXBvY2hfY291bnRlciB1cGRhdGVkIGV2ZXJ5IHRp
bWUsDQppLmUgZXhhY3RseSB3aGF0IHlvdSB3YW50ZWQgdG8gYXZvaWQgaGVyZS4NCg0KU28gd2Ug
cmVhbGx5IG5lZWQgc29tZXdheSB0byBkZXRlcm1pbmUgaWYgZWRpZCBoYWQgY2hhbmdlZCwgaW5z
dGVhZCBvZg0Kc2ltcGx5IGFzc2lnbmluZyBpdCBhbGwgdGhlIHRpbWUgLSB0aGF0IGlzIHdoeSBJ
IGhhZCB0byBpbXBsZW1lbnQNCmRybV9lZGlkX2VxdWFsIGZ1bmN0aW9uLg0KDQoNCi0gU3Rhbmlz
bGF2DQoNCg0KPiANCj4gDQo+ID4gLURhbmllbA0KPiA+IA0KPiA+ID4gDQo+ID4gPiA+ID4gDQo+
ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IC0gU3RhbmlzbGF2DQo+ID4gPiA+ID4gPiANCj4gPiA+
ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4g
PiA+IC1TdGFuaXNsYXYNCj4gPiA+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gPiA+IA0KPiA+
ID4gPiA+ID4gPiA+ID4gQ2hlZXJzLCBEYW5pZWwNCj4gPiA+ID4gPiA+ID4gPiA+IA0KPiA+ID4g
PiA+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiA+ID4gPiA+
IC1TdGFuaXNsYXYNCj4gPiA+ID4gPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiA+ID4gPiA+IA0K
PiA+ID4gPiA+ID4gPiA+ID4gPiA+IC1EYW5pZWwNCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiANCj4g
PiA+ID4gPiA+ID4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gU3RhbmlzbGF2
IExpc292c2tpeSAoMyk6DQo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiAgIGRybTogQWRkIGhlbHBl
ciB0byBjb21wYXJlIGVkaWRzLg0KPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gICBkcm06IEludHJv
ZHVjZSBjaGFuZ2UgY291bnRlciB0bw0KPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gZHJtX2Nvbm5l
Y3Rvcg0KPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gICBkcm0vaTkxNTogU2VuZCBob3RwbHVnIGV2
ZW50IGlmIGVkaWQgaGFkDQo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiBjaGFuZ2VkLg0KPiA+ID4g
PiA+ID4gPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiAgZHJpdmVycy9ncHUv
ZHJtL2RybV9jb25uZWN0b3IuYyAgICAgICAgICAgICAgfA0KPiA+ID4gPiA+ID4gPiA+ID4gPiA+
ID4gICANCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IDEgKw0KPiA+ID4gPiA+ID4gPiA+ID4gPiA+
ID4gIGRyaXZlcnMvZ3B1L2RybS9kcm1fZWRpZC5jICAgICAgICAgICAgICAgICAgIHwNCj4gPiA+
ID4gPiA+ID4gPiA+ID4gPiA+IDMzDQo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiArKysrKysrKysr
KysrKysrKysrKw0KPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9kcm1f
cHJvYmVfaGVscGVyLmMgICAgICAgICAgIHwNCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IDI5DQo+
ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiArKysrKysrKysrKysrKystDQo+ID4gPiA+ID4gPiA+ID4g
PiA+ID4gPiAtDQo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jICAgICAgfA0KPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gMTYNCj4g
PiA+ID4gPiA+ID4gPiA+ID4gPiA+ICsrKysrKysrKy0NCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyAgICB8DQo+ID4gPiA+
ID4gPiA+ID4gPiA+ID4gPiAxNg0KPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gKysrKysrKystLQ0K
PiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfaG90cGx1Zy5jIHwNCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IDIxDQo+ID4gPiA+ID4gPiA+
ID4gPiA+ID4gPiArKysrKysrKysrDQo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiAtLS0NCj4gPiA+
ID4gPiA+ID4gPiA+ID4gPiA+ICBpbmNsdWRlL2RybS9kcm1fY29ubmVjdG9yLmggICAgICAgICAg
ICAgICAgICB8DQo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiAgIA0KPiA+ID4gPiA+ID4gPiA+ID4g
PiA+ID4gMyArKw0KPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gIGluY2x1ZGUvZHJtL2RybV9lZGlk
LmggICAgICAgICAgICAgICAgICAgICAgIHwNCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ICAgDQo+
ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA5DQo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiArKysrKysN
Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ICA4IGZpbGVzIGNoYW5nZWQsIDExNyBpbnNlcnRpb25z
KCspLCAxMQ0KPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gZGVsZXRpb25zKC0pDQo+ID4gPiA+ID4g
PiA+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IC0tDQo+ID4gPiA+ID4gPiA+
ID4gPiA+ID4gPiAyLjE3LjENCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4g
PiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gPiA+ID4gDQo+
ID4gPiA+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gPiANCj4g
PiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gDQo+ID4gPiA+IA0KPiA+ID4gPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiA+ID4gPiBk
cmktZGV2ZWwgbWFpbGluZyBsaXN0DQo+ID4gPiA+IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCj4gPiA+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9kcmktZGV2ZWwNCj4gPiANCj4gPiANCj4gDQo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fDQo+IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QNCj4gZHJp
LWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbA0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
