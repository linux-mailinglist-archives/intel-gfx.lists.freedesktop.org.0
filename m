Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E5B8103674
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 10:17:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C42906E0B7;
	Wed, 20 Nov 2019 09:16:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A2586E0B7
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 09:16:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 01:16:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,221,1571727600"; d="scan'208";a="231863604"
Received: from irsmsx153.ger.corp.intel.com ([163.33.192.75])
 by fmsmga004.fm.intel.com with ESMTP; 20 Nov 2019 01:16:55 -0800
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.185]) by
 IRSMSX153.ger.corp.intel.com ([169.254.9.119]) with mapi id 14.03.0439.000;
 Wed, 20 Nov 2019 09:16:55 +0000
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [PATCH v12 2/2] drm/i915: Restrict qgv points which don't have
 enough bandwidth.
Thread-Index: AQHVm8Tm/X55Ttg+LECf+EtSDD8NwKeTOOMAgACVYgA=
Date: Wed, 20 Nov 2019 09:16:54 +0000
Message-ID: <e0975de2ff89293d39b63879cdd43f5ead1b9dbc.camel@intel.com>
References: <20191115145401.20709-1-stanislav.lisovskiy@intel.com>
 <20191115145401.20709-3-stanislav.lisovskiy@intel.com>
 <20191120001946.GC6381@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20191120001946.GC6381@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.89]
Content-ID: <16D59371913D0B458266D4026374EF84@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v12 2/2] drm/i915: Restrict qgv points which
 don't have enough bandwidth.
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDE5LTExLTE5IGF0IDE2OjE5IC0wODAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBP
biBGcmksIE5vdiAxNSwgMjAxOSBhdCAwNDo1NDowMVBNICswMjAwLCBTdGFuaXNsYXYgTGlzb3Zz
a2l5IHdyb3RlOg0KPiA+IEFjY29yZGluZyB0byBCU3BlYyA1Mzk5OCwgd2Ugc2hvdWxkIHRyeSB0
bw0KPiA+IHJlc3RyaWN0IHFndiBwb2ludHMsIHdoaWNoIGNhbid0IHByb3ZpZGUNCj4gPiBlbm91
Z2ggYmFuZHdpZHRoIGZvciBkZXNpcmVkIGRpc3BsYXkgY29uZmlndXJhdGlvbi4NCj4gPiANCj4g
PiBDdXJyZW50bHkgd2UgYXJlIGp1c3QgY29tcGFyaW5nIGFnYWluc3QgYWxsIG9mDQo+ID4gdGhv
c2UgYW5kIHRha2UgbWluaW11bSh3b3JzdCBjYXNlKS4NCj4gPiANCj4gPiB2MjogRml4ZWQgd3Jv
bmcgUENvZGUgcmVwbHkgbWFzaywgcmVtb3ZlZCBoYXJkY29kZWQNCj4gPiAgICAgdmFsdWVzLg0K
PiA+IA0KPiA+IHYzOiBGb3JiaWQgc2ltdWx0YW5lb3VzIGxlZ2FjeSBTQUdWIFBDb2RlIHJlcXVl
c3RzIGFuZA0KPiA+ICAgICByZXN0cmljdGluZyBxZ3YgcG9pbnRzLiBQdXQgdGhlIGFjdHVhbCBy
ZXN0cmljdGlvbg0KPiA+ICAgICB0byBjb21taXQgZnVuY3Rpb24sIGFkZGVkIHNlcmlhbGl6YXRp
b24odGhhbmtzIHRvIFZpbGxlKQ0KPiA+ICAgICB0byBwcmV2ZW50IGNvbW1pdCBiZWluZyBhcHBs
aWVkIG91dCBvZiBvcmRlciBpbiBjYXNlIG9mDQo+ID4gICAgIG5vbmJsb2NraW5nIGFuZC9vciBu
b21vZGVzZXQgY29tbWl0cy4NCj4gPiANCj4gPiB2NDoNCj4gPiAgICAgLSBNaW5vciBjb2RlIHJl
ZmFjdG9yaW5nLCBmaXhlZCBmZXcgdHlwb3ModGhhbmtzIHRvIEphbWVzDQo+ID4gQXVzbXVzKQ0K
PiA+ICAgICAtIENoYW5nZSB0aGUgbmFtaW5nIG9mIHFndiBwb2ludA0KPiA+ICAgICAgIG1hc2tp
bmcvdW5tYXNraW5nIGZ1bmN0aW9ucyhKYW1lcyBBdXNtdXMpLg0KPiA+ICAgICAtIFNpbXBsaWZ5
IHRoZSBtYXNraW5nL3VubWFza2luZyBvcGVyYXRpb24gaXRzZWxmLA0KPiA+ICAgICAgIGFzIHdl
IGRvbid0IG5lZWQgdG8gbWFzayBvbmx5IHNpbmdsZSBwb2ludCBwZXIgcmVxdWVzdChKYW1lcw0K
PiA+IEF1c211cykNCj4gPiAgICAgLSBSZWplY3QgYW5kIHN0aWNrIHRvIGhpZ2hlc3QgYmFuZHdp
ZHRoIHBvaW50IGlmIFNBR1YNCj4gPiAgICAgICBjYW4ndCBiZSBlbmFibGVkKEJTcGVjKQ0KPiA+
IA0KPiA+IHY1Og0KPiA+ICAgICAtIEFkZCBuZXcgbWFpbGJveCByZXBseSBjb2Rlcywgd2hpY2gg
c2VlbXMgdG8gaGFwcGVuIGR1cmluZw0KPiA+IGJvb3QNCj4gPiAgICAgICB0aW1lIGZvciBUR0wg
YW5kIGluZGljYXRlIHRoYXQgUUdWIHNldHRpbmcgaXMgbm90IHlldA0KPiA+IGF2YWlsYWJsZS4N
Cj4gPiANCj4gPiB2NjoNCj4gPiAgICAgLSBJbmNyZWFzZSBudW1iZXIgb2Ygc3VwcG9ydGVkIFFH
ViBwb2ludHMgdG8gYmUgaW4gc3luYyB3aXRoDQo+ID4gQlNwZWMuDQo+ID4gDQo+ID4gdjc6IC0g
UmViYXNlZCBhbmQgcmVzb2x2ZWQgY29uZmxpY3QgdG8gZml4IGJ1aWxkIGZhaWx1cmUuDQo+ID4g
ICAgIC0gRml4IE5VTV9RR1ZfUE9JTlRTIHRvIDggYW5kIG1vdmVkIHRoYXQgdG8gaGVhZGVyIGZp
bGUoSmFtZXMNCj4gPiBBdXNtdXMpDQo+ID4gDQo+ID4gdjg6IC0gRG9uJ3QgcmVwb3J0IGFuIGVy
cm9yIGlmIHdlIGNhbid0IHJlc3RyaWN0IHFndiBwb2ludHMsIGFzDQo+ID4gU0FHVg0KPiA+ICAg
ICAgIGNhbiBiZSBkaXNhYmxlZCBieSBCSU9TLCB3aGljaCBpcyBjb21wbGV0ZWx5IGxlZ2FsLiBT
byBkb24ndA0KPiA+ICAgICAgIG1ha2UgQ0kgcGFuaWMuIEluc3RlYWQgaWYgd2UgZGV0ZWN0IHRo
YXQgdGhlcmUgaXMgb25seSAxIFFHVg0KPiA+ICAgICAgIHBvaW50IGFjY2Vzc2libGUganVzdCBh
bmFseXplIGlmIHdlIGNhbiBmaXQgdGhlIHJlcXVpcmVkDQo+ID4gYmFuZHdpZHRoDQo+ID4gICAg
ICAgcmVxdWlyZW1lbnRzLCBidXQgbm8gbmVlZCBpbiByZXN0cmljdGluZy4NCj4gPiANCj4gPiB2
OTogLSBGaXggd3JvbmcgUUdWIHRyYW5zaXRpb24gaWYgd2UgaGF2ZSAwIHBsYW5lcyBhbmQgbm8g
U0FHVg0KPiA+ICAgICAgIHNpbXVsdGFuZW91c2x5Lg0KPiA+IA0KPiA+IHYxMDogLSBGaXggQ0RD
TEsgY29ycnVwdGlvbiwgYmVjYXVzZSBvZiBnbG9iYWwgc3RhdGUgZ2V0dGluZw0KPiA+IHNlcmlh
bGl6ZWQNCj4gPiAgICAgICAgd2l0aG91dCBtb2Rlc2V0LCB3aGljaCBjYXVzZWQgY29weWluZyBv
ZiBub24tY2FsY3VsYXRlZA0KPiA+IGNkY2xrDQo+ID4gICAgICAgIHRvIGJlIGNvcGllZCB0byBk
ZXZfcHJpdih0aGFua3MgdG8gVmlsbGUgZm9yIHRoZSBoaW50KS4NCj4gPiANCj4gPiB2MTE6IC0g
UmVtb3ZlIHVubmVlZGVkIGhlYWRlcnMgYW5kIHNwYWNlcyhNYXR0aGV3IFJvcGVyKQ0KPiA+ICAg
ICAgLSBSZW1vdmUgdW5uZWVkZWQgaW50ZWxfcWd2X2luZm8gcWkgc3RydWN0IGZyb20gYncgY2hl
Y2sgYW5kDQo+ID4gemVybw0KPiA+ICAgICAgICBvdXQgdGhlIG5lZWRlZCBvbmUoTWF0dGhldyBS
b3BlcikNCj4gPiAgICAgIC0gQ2hhbmdlZCBRR1YgZXJyb3IgbWVzc2FnZSB0byBoYXZlIG1vcmUg
Y2xlYXIgbWVhbmluZyhNYXR0aGV3DQo+ID4gUm9wZXIpDQo+ID4gICAgICAtIFVzZSBzdGF0ZS0+
bW9kZXNldF9zZXQgaW5zdGVhZCBvZiBhbnlfbXMoTWF0dGhldyBSb3BlcikNCj4gPiAgICAgIC0g
TW92ZWQgTlVNX1NBR1ZfUE9JTlRTIGZyb20gaTkxNV9yZWcuaCB0byBpOTE1X2Rydi5oIHdoZXJl
DQo+ID4gaXQncyB1c2VkDQo+ID4gICAgICAtIEtlZXAgdXNpbmcgY3J0Y19zdGF0ZS0+aHcuYWN0
aXZlIGluc3RlYWQgb2YgLmVuYWJsZShNYXR0aGV3DQo+ID4gUm9wZXIpDQo+ID4gICAgICAtIE1v
dmVkIHVucmVsYXRlZCBjaGFuZ2VzIHRvIG90aGVyIHBhdGNoKHVzaW5nIGxhdGVuY3kgYXMNCj4g
PiBwYXJhbWV0ZXINCj4gPiAgICAgICAgZm9yIHBsYW5lIHdtIGNhbGN1bGF0aW9uLCBtb3ZlZCB0
byBTQUdWIHJlZmFjdG9yaW5nIHBhdGNoKQ0KPiA+IA0KPiA+IFJldmlld2VkLWJ5OiBKYW1lcyBB
dXNtdXMgPGphbWVzLmF1c211c0BpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogU3Rhbmlz
bGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+DQo+ID4gQ2M6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBpbnRlbC5jb20+DQo+ID4gQ2M6IEphbWVzIEF1
c211cyA8amFtZXMuYXVzbXVzQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuaCAgIHwgICAyICsNCj4gPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jICAgICAgIHwgMTM0DQo+ID4gKysrKysrKysr
KysrKysrLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuaCAg
ICAgICB8ICAgMiArDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jICB8ICA5MSArKysrKysrKysrKy0NCj4gPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgICAzICsNCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuaCAgICAgICAgICAgICAgIHwgICA3ICstDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgICB8ICAgNSArDQo+ID4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3NpZGViYW5kLmMgICAgICAgICB8ICAyNyArKystDQo+ID4gIDggZmlsZXMg
Y2hhbmdlZCwgMjQxIGluc2VydGlvbnMoKyksIDMwIGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5oDQo+
ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5oDQo+ID4gaW5k
ZXggN2I0OTYyMzQxOWJhLi40MWEyYTg5YzliZGIgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmgNCj4gPiBAQCAtNDEsNiArNDEsOCBAQCB2
b2lkIGludGVsX2NydGNfY29weV9jb2xvcl9ibG9icyhzdHJ1Y3QNCj4gPiBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlKTsNCj4gPiAgc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKmludGVsX2F0
b21pY19zdGF0ZV9hbGxvYyhzdHJ1Y3QNCj4gPiBkcm1fZGV2aWNlICpkZXYpOw0KPiA+ICB2b2lk
IGludGVsX2F0b21pY19zdGF0ZV9jbGVhcihzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUp
Ow0KPiA+ICANCj4gPiAraW50IGludGVsX2F0b21pY19zZXJpYWxpemVfZ2xvYmFsX3N0YXRlKHN0
cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUNCj4gPiAqc3RhdGUpOw0KPiA+ICsNCj4gDQo+IFdlIGFw
cGVhciB0byBhbHJlYWR5IGhhdmUgdGhpcyBhIGZldyBsaW5lcyBsb3dlciBpbiB0aGUgZmlsZS4N
Cg0KVGhhbmtzIGZvciBzcG90dGluZyENCg0KPiANCj4gDQo+ID4gIHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICoNCj4gPiAgaW50ZWxfYXRvbWljX2dldF9jcnRjX3N0YXRlKHN0cnVjdCBkcm1fYXRv
bWljX3N0YXRlICpzdGF0ZSwNCj4gPiAgCQkJICAgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKTsN
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5j
DQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4gPiBpbmRl
eCAzZjZlMjlmNjEzMjMuLjgwOWZjMWJmOTljNSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4gPiBAQCAtOCw2ICs4LDkgQEANCj4gPiAgI2luY2x1
ZGUgImludGVsX2J3LmgiDQo+ID4gICNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3R5cGVzLmgiDQo+
ID4gICNpbmNsdWRlICJpbnRlbF9zaWRlYmFuZC5oIg0KPiA+ICsjaW5jbHVkZSAiaW50ZWxfYXRv
bWljLmgiDQo+ID4gKyNpbmNsdWRlICJpbnRlbF9wbS5oIg0KPiA+ICsNCj4gPiAgDQo+ID4gIC8q
IFBhcmFtZXRlcnMgZm9yIFFjbGsgR2V5c2VydmlsbGUgKFFHVikgKi8NCj4gPiAgc3RydWN0IGlu
dGVsX3Fndl9wb2ludCB7DQo+ID4gQEAgLTE1LDcgKzE4LDcgQEAgc3RydWN0IGludGVsX3Fndl9w
b2ludCB7DQo+ID4gIH07DQo+ID4gIA0KPiA+ICBzdHJ1Y3QgaW50ZWxfcWd2X2luZm8gew0KPiA+
IC0Jc3RydWN0IGludGVsX3Fndl9wb2ludCBwb2ludHNbM107DQo+ID4gKwlzdHJ1Y3QgaW50ZWxf
cWd2X3BvaW50IHBvaW50c1tOVU1fU0FHVl9QT0lOVFNdOw0KPiA+ICAJdTggbnVtX3BvaW50czsN
Cj4gPiAgCXU4IG51bV9jaGFubmVsczsNCj4gPiAgCXU4IHRfYmw7DQo+ID4gQEAgLTExMyw2ICsx
MTYsMjYgQEAgc3RhdGljIGludA0KPiA+IGljbF9wY29kZV9yZWFkX3Fndl9wb2ludF9pbmZvKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwNCj4gPiAgCXJldHVybiAwOw0KPiA+ICB9
DQo+ID4gIA0KPiA+ICtpbnQgaWNsX3Bjb2RlX3Jlc3RyaWN0X3Fndl9wb2ludHMoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUNCj4gPiAqZGV2X3ByaXYsDQo+ID4gKwkJCQkgIHUzMiBwb2ludHNfbWFz
aykNCj4gPiArew0KPiA+ICsJaW50IHJldDsNCj4gPiArDQo+ID4gKwkvKiBic3BlYyBzYXlzIHRv
IGtlZXAgcmV0cnlpbmcgZm9yIGF0IGxlYXN0IDEgbXMgKi8NCj4gPiArCXJldCA9IHNrbF9wY29k
ZV9yZXF1ZXN0KGRldl9wcml2LA0KPiA+IElDTF9QQ09ERV9TQUdWX0RFX01FTV9TU19DT05GSUcs
DQo+ID4gKwkJCQlwb2ludHNfbWFzaywNCj4gPiArCQkJCUdFTjExX1BDT0RFX1BPSU5UU19SRVNU
UklDVEVEX01BU0ssDQo+ID4gKwkJCQlHRU4xMV9QQ09ERV9QT0lOVFNfUkVTVFJJQ1RFRCwNCj4g
PiArCQkJCTEpOw0KPiA+ICsNCj4gPiArCWlmIChyZXQgPCAwKSB7DQo+ID4gKwkJRFJNX0VSUk9S
KCJGYWlsZWQgdG8gZGlzYWJsZSBxZ3YgcG9pbnRzICglZClcbiIsIHJldCk7DQo+ID4gKwkJcmV0
dXJuIHJldDsNCj4gPiArCX0NCj4gPiArDQo+ID4gKwlyZXR1cm4gMDsNCj4gPiArfQ0KPiA+ICsN
Cj4gPiAgc3RhdGljIGludCBpY2xfZ2V0X3Fndl9wb2ludHMoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2LA0KPiA+ICAJCQkgICAgICBzdHJ1Y3QgaW50ZWxfcWd2X2luZm8gKnFpKQ0K
PiA+ICB7DQo+ID4gQEAgLTI3MCwyMiArMjkzLDYgQEAgdm9pZCBpbnRlbF9id19pbml0X2h3KHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+ID4gKmRldl9wcml2KQ0KPiA+ICAJCWljbF9nZXRfYndf
aW5mbyhkZXZfcHJpdiwgJmljbF9zYV9pbmZvKTsNCj4gPiAgfQ0KPiA+ICANCj4gPiAtc3RhdGlj
IHVuc2lnbmVkIGludCBpbnRlbF9tYXhfZGF0YV9yYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
DQo+ID4gKmRldl9wcml2LA0KPiA+IC0JCQkJCWludCBudW1fcGxhbmVzKQ0KPiA+IC17DQo+ID4g
LQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkNCj4gPiAtCQkvKg0KPiA+IC0JCSAqIEZJ
WE1FIHdpdGggU0FHViBkaXNhYmxlZCBtYXliZSB3ZSBjYW4gYXNzdW1lDQo+ID4gLQkJICogcG9p
bnQgMSB3aWxsIGFsd2F5cyBiZSB1c2VkPyBTZWVtcyB0byBtYXRjaA0KPiA+IC0JCSAqIHRoZSBi
ZWhhdmlvdXIgb2JzZXJ2ZWQgaW4gdGhlIHdpbGQuDQo+ID4gLQkJICovDQo+ID4gLQkJcmV0dXJu
IG1pbjMoaWNsX21heF9idyhkZXZfcHJpdiwgbnVtX3BsYW5lcywgMCksDQo+ID4gLQkJCSAgICBp
Y2xfbWF4X2J3KGRldl9wcml2LCBudW1fcGxhbmVzLCAxKSwNCj4gPiAtCQkJICAgIGljbF9tYXhf
YncoZGV2X3ByaXYsIG51bV9wbGFuZXMsIDIpKTsNCj4gPiAtCWVsc2UNCj4gPiAtCQlyZXR1cm4g
VUlOVF9NQVg7DQo+ID4gLX0NCj4gPiAtDQo+ID4gIHN0YXRpYyB1bnNpZ25lZCBpbnQgaW50ZWxf
YndfY3J0Y19udW1fYWN0aXZlX3BsYW5lcyhjb25zdCBzdHJ1Y3QNCj4gPiBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlKQ0KPiA+ICB7DQo+ID4gIAkvKg0KPiA+IEBAIC0zNzcsNyArMzg0LDEx
IEBAIGludCBpbnRlbF9id19hdG9taWNfY2hlY2soc3RydWN0DQo+ID4gaW50ZWxfYXRvbWljX3N0
YXRlICpzdGF0ZSkNCj4gPiAgCXVuc2lnbmVkIGludCBkYXRhX3JhdGUsIG1heF9kYXRhX3JhdGU7
DQo+ID4gIAl1bnNpZ25lZCBpbnQgbnVtX2FjdGl2ZV9wbGFuZXM7DQo+ID4gIAlzdHJ1Y3QgaW50
ZWxfY3J0YyAqY3J0YzsNCj4gPiAtCWludCBpOw0KPiA+ICsJaW50IGksIHJldDsNCj4gPiArCXUz
MiBhbGxvd2VkX3BvaW50cyA9IDA7DQo+ID4gKwl1bnNpZ25lZCBpbnQgbWF4X2J3X3BvaW50ID0g
MCwgbWF4X2J3ID0gMDsNCj4gPiArCXVuc2lnbmVkIGludCBudW1fcWd2X3BvaW50cyA9IGRldl9w
cml2LQ0KPiA+ID5tYXhfYndbMF0ubnVtX3Fndl9wb2ludHM7DQo+ID4gKwl1MzIgbWFzayA9ICgx
IDw8IG51bV9xZ3ZfcG9pbnRzKSAtIDE7DQo+ID4gIA0KPiA+ICAJLyogRklYTUUgZWFybGllciBn
ZW5zIG5lZWQgc29tZSBjaGVja3MgdG9vICovDQo+ID4gIAlpZiAoSU5URUxfR0VOKGRldl9wcml2
KSA8IDExKQ0KPiA+IEBAIC00MjEsMTYgKzQzMiw5MyBAQCBpbnQgaW50ZWxfYndfYXRvbWljX2No
ZWNrKHN0cnVjdA0KPiA+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpDQo+ID4gIAlkYXRhX3Jh
dGUgPSBpbnRlbF9id19kYXRhX3JhdGUoZGV2X3ByaXYsIGJ3X3N0YXRlKTsNCj4gPiAgCW51bV9h
Y3RpdmVfcGxhbmVzID0gaW50ZWxfYndfbnVtX2FjdGl2ZV9wbGFuZXMoZGV2X3ByaXYsDQo+ID4g
Yndfc3RhdGUpOw0KPiA+ICANCj4gPiAtCW1heF9kYXRhX3JhdGUgPSBpbnRlbF9tYXhfZGF0YV9y
YXRlKGRldl9wcml2LA0KPiA+IG51bV9hY3RpdmVfcGxhbmVzKTsNCj4gPiAtDQo+ID4gIAlkYXRh
X3JhdGUgPSBESVZfUk9VTkRfVVAoZGF0YV9yYXRlLCAxMDAwKTsNCj4gPiAgDQo+ID4gLQlpZiAo
ZGF0YV9yYXRlID4gbWF4X2RhdGFfcmF0ZSkgew0KPiA+IC0JCURSTV9ERUJVR19LTVMoIkJhbmR3
aWR0aCAldSBNQi9zIGV4Y2VlZHMgbWF4IGF2YWlsYWJsZQ0KPiA+ICVkIE1CL3MgKCVkIGFjdGl2
ZSBwbGFuZXMpXG4iLA0KPiA+IC0JCQkgICAgICBkYXRhX3JhdGUsIG1heF9kYXRhX3JhdGUsDQo+
ID4gbnVtX2FjdGl2ZV9wbGFuZXMpOw0KPiA+ICsJZm9yIChpID0gMDsgaSA8IG51bV9xZ3ZfcG9p
bnRzOyBpKyspIHsNCj4gPiArCQltYXhfZGF0YV9yYXRlID0gaWNsX21heF9idyhkZXZfcHJpdiwg
bnVtX2FjdGl2ZV9wbGFuZXMsDQo+ID4gaSk7DQo+ID4gKwkJLyoNCj4gPiArCQkgKiBXZSBuZWVk
IHRvIGtub3cgd2hpY2ggcWd2IHBvaW50IGdpdmVzIHVzDQo+ID4gKwkJICogbWF4aW11bSBiYW5k
d2lkdGggaW4gb3JkZXIgdG8gZGlzYWJsZSBTQUdWDQo+ID4gKwkJICogaWYgd2UgZmluZCB0aGF0
IHdlIGV4Y2VlZCBTQUdWIGJsb2NrIHRpbWUNCj4gPiArCQkgKiB3aXRoIHdhdGVybWFya3MuIEJ5
IHRoYXQgbW9tZW50IHdlIGFscmVhZHkNCj4gPiArCQkgKiBoYXZlIHRob3NlLCBhcyBpdCBpcyBj
YWxjdWxhdGVkIGVhcmxpZXIgaW4NCj4gPiArCQkgKiBpbnRlbF9hdG9taWNfY2hlY2ssDQo+ID4g
KwkJICovDQo+ID4gKwkJaWYgKG1heF9kYXRhX3JhdGUgPiBtYXhfYncpIHsNCj4gPiArCQkJbWF4
X2J3X3BvaW50ID0gaTsNCj4gPiArCQkJbWF4X2J3ID0gbWF4X2RhdGFfcmF0ZTsNCj4gPiArCQl9
DQo+ID4gKwkJaWYgKG1heF9kYXRhX3JhdGUgPj0gZGF0YV9yYXRlKQ0KPiA+ICsJCQlhbGxvd2Vk
X3BvaW50cyB8PSBCSVQoaSk7DQo+ID4gKwkJRFJNX0RFQlVHX0tNUygiUUdWIHBvaW50ICVkOiBt
YXggYncgJWQgcmVxdWlyZWQgJWRcbiIsDQo+ID4gKwkJCSAgICAgIGksIG1heF9kYXRhX3JhdGUs
IGRhdGFfcmF0ZSk7DQo+ID4gKwl9DQo+ID4gKw0KPiA+ICsJLyoNCj4gPiArCSAqIEJTcGVjIHN0
YXRlcyB0aGF0IHdlIGFsd2F5cyBzaG91bGQgaGF2ZSBhdCBsZWFzdCBvbmUgYWxsb3dlZA0KPiA+
IHBvaW50DQo+ID4gKwkgKiBsZWZ0LCBzbyBpZiB3ZSBjb3VsZG4ndCAtIHNpbXBseSByZWplY3Qg
dGhlIGNvbmZpZ3VyYXRpb24NCj4gPiBmb3Igb2J2aW91cw0KPiA+ICsJICogcmVhc29ucy4NCj4g
PiArCSAqLw0KPiA+ICsJaWYgKGFsbG93ZWRfcG9pbnRzID09IDApIHsNCj4gPiArCQlEUk1fREVC
VUdfS01TKCJObyBRR1YgcG9pbnRzIHByb3ZpZGUgc3VmZmljaWVudCBtZW1vcnkiDQo+ID4gKwkJ
CSAgICAgICIgYmFuZHdpZHRoIGZvciBkaXNwbGF5DQo+ID4gY29uZmlndXJhdGlvbi5cbiIpOw0K
PiA+ICAJCXJldHVybiAtRUlOVkFMOw0KPiA+ICAJfQ0KPiA+ICANCj4gPiArCS8qDQo+ID4gKwkg
KiBJbiBjYXNlIGlmIFNBR1YgaXMgZGlzYWJsZWQgaW4gQklPUywgd2UgYWx3YXlzIGdldCAxDQo+
ID4gKwkgKiBTQUdWIHBvaW50LCBidXQgd2UgY2FuJ3Qgc2VuZCBQQ29kZSBjb21tYW5kcyB0byBy
ZXN0cmljdCBpdA0KPiA+ICsJICogYXMgaXQgd2lsbCBmYWlsIGFuZCBwb2ludGxlc3MgYW55d2F5
Lg0KPiA+ICsJICovDQo+ID4gKwlpZiAobnVtX3Fndl9wb2ludHMgPT0gMSkNCj4gPiArCQlkZXZf
cHJpdi0+c2Fndl9zdGF0dXMgPSBJOTE1X1NBR1ZfTk9UX0NPTlRST0xMRUQ7DQo+ID4gKwllbHNl
DQo+ID4gKwkJZGV2X3ByaXYtPnNhZ3Zfc3RhdHVzID0gSTkxNV9TQUdWX0VOQUJMRUQ7DQo+IA0K
PiBXZSBzaG91bGQgcHJvYmFibHkgYmUgZG9pbmcgdGhpcyBqdXN0IG9uY2UgaW4gaWNsX2dldF9i
d19pbmZvKCkuDQoNCk1ha2VzIHNlbnNlLg0KDQo+IA0KPiA+ICsNCj4gPiArCS8qDQo+ID4gKwkg
KiBMZWF2ZSBvbmx5IHNpbmdsZSBwb2ludCB3aXRoIGhpZ2hlc3QgYmFuZHdpZHRoLCBpZg0KPiA+
ICsJICogd2UgY2FuJ3QgZW5hYmxlIFNBR1YgYWNjb3JkaW5nIHRvIEJTcGVjLg0KPiANCj4gTWlu
b3Igbml0cGljazogIEknZCBzYXkgIi4uLmR1ZSB0byB0aGUgaW5jcmVhc2VkIG1lbW9yeSBsYXRl
bmN5IGl0DQo+IG1heQ0KPiBjYXVzZSIgcmF0aGVyIHRoYW4gIi4uLmFjY29yZGluZyB0byBCU3Bl
Yy4iDQo+IA0KPiA+ICsJICovDQo+ID4gKwlpZiAoIWludGVsX2Nhbl9lbmFibGVfc2FndihzdGF0
ZSkpIHsNCj4gPiArDQo+IA0KPiBOaXRwaWNrOiB1bm5lY2Vzc2FyeSBibGFuayBsaW5lLg0KPiAN
Cj4gPiArCQkvKg0KPiA+ICsJCSAqIFRoaXMgaXMgYSBib3JkZXIgbGluZSBjb25kaXRpb24gd2hl
biB3ZSBoYXZlIDANCj4gPiBwbGFuZXMNCj4gPiArCQkgKiBhbmQgU0FHViBub3QgZW5hYmxlZCBt
ZWFucyB0aGF0IHdlIHNob3VsZCBrZWVwIFFHVg0KPiA+IHdpdGgNCj4gPiArCQkgKiBoaWdoZXN0
IGJhbmR3aWR0aCwgaG93ZXZlciBhbGdvcml0aG0gcmV0dXJucyB3cm9uZw0KPiA+IHJlc3VsdA0K
PiA+ICsJCSAqIGZvciAwIHBsYW5lcyBhbmQgMCBkYXRhIHJhdGUsIHNvIGp1c3Qgc3RpY2sgdG8g
bGFzdA0KPiA+IGNvbmZpZw0KPiA+ICsJCSAqIHRoZW4uIE90aGVyd2lzZSB1c2UgdGhlIFFHViBw
b2ludCB3aXRoIGhpZ2hlc3QgQlcNCj4gPiBhY2NvcmRpbmcNCj4gPiArCQkgKiB0byBCU3BlYy4N
Cj4gDQo+IEknbSBub3Qgc3VyZSBJIGZvbGxvdyB0aGlzLiAgIlNBR1Ygbm90IGVuYWJsZWQiIGlu
IHRoZSBCSU9TIG9yDQo+IGJlY2F1c2UNCj4gd2UndmUgZXhwbGljaXRseSBkaXNhYmxlZCBpdCBv
dXJzZWx2ZXM/ICBJZiB0aGUgQklPUyBoYXMgaXQgdHVybmVkDQo+IG9mZiwNCj4gdGhlbiB3ZSBz
aG91bGQgb25seSBoYXZlIGEgc2luZ2xlIFFHViBwb2ludCwgcmlnaHQ/ICBBbmQgaWYgd2UgdHVy
bmVkDQo+IHRoZSBTQUdWIG9mZiwgdGhlbiBtYXliZSBpbnRlbF9jYW5fZW5hYmxlX3NhZ3YoKSB3
aWxsIHJldHVybiB0cnVlDQo+IGluc3RlYWQgb2YgZmFsc2UgaWYgd2UgZmxpcCBhcm91bmQgdGhl
IHNhZ3YgbWFzayBmcm9tIGFsbG93ZWQtcGlwZXMNCj4gdG8NCj4gcHJvaGliaXRlZCBwaXBlcyBs
aWtlIEkgc3VnZ2VzdGVkIG9uIHRoZSBwcmV2aW91cyBwYXRjaD8NCg0KU28gdGhlcmUgYXJlIGJh
c2ljYWxseSBmZXcgc3RhdGVzOiAxKSBTQUdWIG9uLCBldmVyeXRoaW5nIGlzIGdyZWF0LA0KMikg
U0FHViBpcyBvbiBidXQgd2UgY2FuJ3QgZW5hYmxlIGl0IGFzIGl0J3MgV00wIGRvZXNuJ3QgZml0
IGludG8gREJ1Zg0KMykgU0FHViBpcyBkaXNhYmxlZCBpbiBCSU9TDQoNCklmIFNBR1YgaXMgZGlz
YWJsZWQgd2UgYXJlIGluc3RydWN0ZWQgdG8gdGFrZSB0aGUgUUdWIHBvaW50IHdpdGggdGhlDQpo
aWdoZXN0IGJhbmR3aWR0aC4gU28gSSBkbyBwaWNrIG9uZSB3aXRoIGhpZ2hlc3QgYmFuZHdpZHRo
Lg0KVGhhdCBpcyBmaW5lLiBIb3dldmVyIEkgZGlzY292ZXJlZCB0aGF0IHNvbWV0aW1lcw0Kd2Ug
YXJlIGRvaW5nIGNvbW1pdCB3aXRoIDAgcGxhbmVzLCBzbyB3ZSBnZXQgMCBkYXRhIHJhdGUgYW5k
IGFsc28gDQphbGdvcml0aG0gcmV0dXJucyBzYW1lIG1heCBidyB2YWx1ZXMgZm9yIDAgcGxhbmVz
LiBTbyBpdCBlbmRzIHVwIA0KcGlja2luZyB0aGUgZmlyc3QgUUdWIHBvaW50LCBkZXNwaXRlIGl0
IG1pZ2h0IGJlIG5vdCB0aGUgYmVzdCBjaG9pY2UuDQpTbyBpbiB0aGF0IGNhc2UgaWYgdGhlcmUg
YXJlIG5vIGFjdGl2ZSBwbGFuZXMgSSBzaW1wbHkgdXNlIHRoZSBsYXN0IA0Kb25lLCB0byBwcmV2
ZW50IHRoaXMgd3JvbmcgdHJhbnNpdGlvbi4NCk1heSBiZSB0aGlzIGlzIHN0aWxsIG5vdCB0aGUg
YmVzdCB3YXkgdG8gZG8gdGhvdWdoLg0KDQo+IA0KPiA+ICsJCSAqLw0KPiA+ICsJCWlmICghZGF0
YV9yYXRlICYmICFudW1fYWN0aXZlX3BsYW5lcykgew0KPiA+ICsJCQlEUk1fREVCVUdfS01TKCJO
byBTQUdWLCB1c2luZyBvbGQgUUdWIG1hc2tcbiIpOw0KPiA+ICsJCQlhbGxvd2VkX3BvaW50cyA9
ICh+ZGV2X3ByaXYtPnFndl9wb2ludHNfbWFzaykgJg0KPiA+IG1hc2s7DQo+ID4gKwkJfSBlbHNl
IHsNCj4gPiArCQkJYWxsb3dlZF9wb2ludHMgPSAxIDw8IG1heF9id19wb2ludDsNCj4gPiArCQkJ
RFJNX0RFQlVHX0tNUygiTm8gU0FHViwgdXNpbmcgc2luZ2xlIFFHViBwb2ludA0KPiA+ICVkXG4i
LA0KPiA+ICsJCQkJICAgICAgbWF4X2J3X3BvaW50KTsNCj4gPiArCQl9DQo+ID4gKwl9DQo+ID4g
KwkvKg0KPiA+ICsJICogV2Ugc3RvcmUgdGhlIG9uZXMgd2hpY2ggbmVlZCB0byBiZSBtYXNrZWQg
YXMgdGhhdCBpcyB3aGF0DQo+ID4gUENvZGUNCj4gPiArCSAqIGFjdHVhbGx5IGFjY2VwdHMgYXMg
YSBwYXJhbWV0ZXIuDQo+ID4gKwkgKi8NCj4gPiArCXN0YXRlLT5xZ3ZfcG9pbnRzX21hc2sgPSAo
fmFsbG93ZWRfcG9pbnRzKSAmIG1hc2s7DQo+ID4gKw0KPiA+ICsJRFJNX0RFQlVHX0tNUygiTmV3
IHN0YXRlICVwIHFndiBtYXNrICV4XG4iLA0KPiA+ICsJCSAgICAgIHN0YXRlLCBzdGF0ZS0+cWd2
X3BvaW50c19tYXNrKTsNCj4gPiArDQo+ID4gKwkvKg0KPiA+ICsJICogSWYgdGhlIGFjdHVhbCBt
YXNrIGhhZCBjaGFuZ2VkIHdlIG5lZWQgdG8gbWFrZSBzdXJlIHRoYXQNCj4gPiArCSAqIHRoZSBj
b21taXRzIGFyZSBzZXJpYWxpemVkKGluIGNhc2UgdGhpcyBpcyBhIG5vbW9kZXNldCwNCj4gPiBu
b25ibG9ja2luZykNCj4gPiArCSAqLw0KPiA+ICsJaWYgKHN0YXRlLT5xZ3ZfcG9pbnRzX21hc2sg
IT0gZGV2X3ByaXYtPnFndl9wb2ludHNfbWFzaykgew0KPiA+ICsJCXJldCA9IGludGVsX2F0b21p
Y19zZXJpYWxpemVfZ2xvYmFsX3N0YXRlKHN0YXRlKTsNCj4gPiArCQlpZiAocmV0KSB7DQo+ID4g
KwkJCURSTV9ERUJVR19LTVMoIkNvdWxkIG5vdCBzZXJpYWxpemUgZ2xvYmFsDQo+ID4gc3RhdGVc
biIpOw0KPiA+ICsJCQlyZXR1cm4gcmV0Ow0KPiA+ICsJCX0NCj4gPiArCX0NCj4gPiArDQo+ID4g
IAlyZXR1cm4gMDsNCj4gPiAgfQ0KPiA+ICANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5oDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2J3LmgNCj4gPiBpbmRleCA5ZGIxMGFmMDEyZjQuLjY2YmY5YmMxMGI3MyAx
MDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmgN
Cj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmgNCj4gPiBA
QCAtMjgsNSArMjgsNyBAQCBpbnQgaW50ZWxfYndfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZQ0KPiA+ICpkZXZfcHJpdik7DQo+ID4gIGludCBpbnRlbF9id19hdG9taWNfY2hlY2soc3RydWN0
IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpOw0KPiA+ICB2b2lkIGludGVsX2J3X2NydGNfdXBk
YXRlKHN0cnVjdCBpbnRlbF9id19zdGF0ZSAqYndfc3RhdGUsDQo+ID4gIAkJCSAgY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOw0KPiA+ICtpbnQgaWNsX3Bjb2RlX3Jl
c3RyaWN0X3Fndl9wb2ludHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUNCj4gPiAqZGV2X3ByaXYs
DQo+ID4gKwkJCQkgIHUzMiBwb2ludHNfbWFzayk7DQo+ID4gIA0KPiA+ICAjZW5kaWYgLyogX19J
TlRFTF9CV19IX18gKi8NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jDQo+ID4gaW5kZXggN2YzMWUzM2QwYjE2Li5mZDM1ZDBiMDY5OWMgMTAw
NjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
Yw0KPiA+IEBAIC0xNDc1NSw2ICsxNDc1NSw4MCBAQCBzdGF0aWMgdm9pZA0KPiA+IGludGVsX2F0
b21pY19jbGVhbnVwX3dvcmsoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQ0KPiA+ICAJaW50ZWxf
YXRvbWljX2hlbHBlcl9mcmVlX3N0YXRlKGk5MTUpOw0KPiA+ICB9DQo+ID4gIA0KPiA+ICtzdGF0
aWMgdm9pZCBpbnRlbF9xZ3ZfcG9pbnRzX21hc2soc3RydWN0IGludGVsX2F0b21pY19zdGF0ZQ0K
PiA+ICpzdGF0ZSkNCj4gPiArew0KPiA+ICsJc3RydWN0IGRybV9kZXZpY2UgKmRldiA9IHN0YXRl
LT5iYXNlLmRldjsNCj4gPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRv
X2k5MTUoZGV2KTsNCj4gPiArCWludCByZXQ7DQo+ID4gKwl1MzIgbmV3X21hc2sgPSBkZXZfcHJp
di0+cWd2X3BvaW50c19tYXNrIHwgc3RhdGUtDQo+ID4gPnFndl9wb2ludHNfbWFzazsNCj4gPiAr
CXVuc2lnbmVkIGludCBudW1fcWd2X3BvaW50cyA9IGRldl9wcml2LQ0KPiA+ID5tYXhfYndbMF0u
bnVtX3Fndl9wb2ludHM7DQo+ID4gKwl1bnNpZ25lZCBpbnQgbWFzayA9ICgxIDw8IG51bV9xZ3Zf
cG9pbnRzKSAtIDE7DQo+ID4gKw0KPiA+ICsJLyoNCj4gPiArCSAqIEFzIHdlIGRvbid0IGtub3cg
aW5pdGlhbCBoYXJkd2FyZSBzdGF0ZSBkdXJpbmcgaW5pdGlhbA0KPiA+IGNvbW1pdA0KPiA+ICsJ
ICogd2Ugc2hvdWxkIG5vdCBkbyBhbnl0aGluZywgdW50aWwgd2UgYWN0dWFsbHkgZmlndXJlIG91
dCwNCj4gPiArCSAqIHdoYXQgYXJlIHRoZSBxZ3YgcG9pbnRzIHRvIG1hc2suDQo+ID4gKwkgKi8N
Cj4gPiArCWlmICghbmV3X21hc2spDQo+ID4gKwkJcmV0dXJuOw0KPiA+ICsNCj4gPiArCVdBUk5f
T04obmV3X21hc2sgPT0gbWFzayk7DQo+ID4gKw0KPiA+ICsJLyoNCj4gPiArCSAqIEp1c3QgcmV0
dXJuIGlmIHdlIGNhbid0IGNvbnRyb2wgU0FHViBvciBkb24ndCBoYXZlIGl0Lg0KPiA+ICsJICov
DQo+ID4gKwlpZiAoIWludGVsX2hhc19zYWd2KGRldl9wcml2KSkNCj4gPiArCQlyZXR1cm47DQo+
ID4gKw0KPiA+ICsJLyoNCj4gPiArCSAqIFJlc3RyaWN0IHJlcXVpcmVkIHFndiBwb2ludHMgYmVm
b3JlIHVwZGF0aW5nIHRoZQ0KPiA+IGNvbmZpZ3VyYXRpb24uDQo+ID4gKwkgKiBBY2NvcmRpbmcg
dG8gQlNwZWMgd2UgY2FuJ3QgbWFzayBhbmQgdW5tYXNrIHFndiBwb2ludHMgYXQNCj4gPiB0aGUg
c2FtZQ0KPiA+ICsJICogdGltZS4gQWxzbyBtYXNraW5nIHNob3VsZCBiZSBkb25lIGJlZm9yZSB1
cGRhdGluZyB0aGUNCj4gPiBjb25maWd1cmF0aW9uDQo+ID4gKwkgKiBhbmQgdW5tYXNraW5nIGFm
dGVyd2FyZHMuDQo+ID4gKwkgKi8NCj4gPiArCXJldCA9IGljbF9wY29kZV9yZXN0cmljdF9xZ3Zf
cG9pbnRzKGRldl9wcml2LCBuZXdfbWFzayk7DQo+ID4gKwlpZiAocmV0IDwgMCkNCj4gPiArCQlE
Uk1fREVCVUdfS01TKCJDb3VsZCBub3QgcmVzdHJpY3QgcmVxdWlyZWQgcWd2DQo+ID4gcG9pbnRz
KCVkKVxuIiwNCj4gPiArCQkJICAgICAgcmV0KTsNCj4gPiArCWVsc2UNCj4gPiArCQlkZXZfcHJp
di0+cWd2X3BvaW50c19tYXNrID0gbmV3X21hc2s7DQo+ID4gK30NCj4gPiArDQo+ID4gK3N0YXRp
YyB2b2lkIGludGVsX3Fndl9wb2ludHNfdW5tYXNrKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUN
Cj4gPiAqc3RhdGUpDQo+ID4gK3sNCj4gPiArCXN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSBzdGF0
ZS0+YmFzZS5kZXY7DQo+ID4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0
b19pOTE1KGRldik7DQo+ID4gKwlpbnQgcmV0Ow0KPiA+ICsJdTMyIG5ld19tYXNrID0gZGV2X3By
aXYtPnFndl9wb2ludHNfbWFzayAmIHN0YXRlLQ0KPiA+ID5xZ3ZfcG9pbnRzX21hc2s7DQo+ID4g
Kw0KPiA+ICsJLyoNCj4gPiArCSAqIEFzIHdlIGRvbid0IGtub3cgaW5pdGlhbCBoYXJkd2FyZSBz
dGF0ZSBkdXJpbmcgaW5pdGlhbA0KPiA+IGNvbW1pdA0KPiA+ICsJICogd2Ugc2hvdWxkIG5vdCBk
byBhbnl0aGluZywgdW50aWwgd2UgYWN0dWFsbHkgZmlndXJlIG91dCwNCj4gPiArCSAqIHdoYXQg
YXJlIHRoZSBxZ3YgcG9pbnRzIHRvIG1hc2suDQo+ID4gKwkgKi8NCj4gPiArCWlmICghbmV3X21h
c2spDQo+ID4gKwkJcmV0dXJuOw0KPiANCj4gVGhpcyBtYWtlcyBzZW5zZSBvbiB0aGUgbWFzaywg
YnV0IGl0IGRvZXNuJ3Qgc2VlbSBsaWtlIHdlJ2Qgd2FudCB0aGlzDQo+IG9uDQo+IHRoZSB1bm1h
c2suICBVbm1hc2sgaGFwcGVucyBvbmNlIHdlJ3ZlIGZpbmlzaGVkIHRoZSB0cmFuc2l0aW9uIHRv
IGENCj4gbmV3DQo+IHN0YXRlLCByaWdodD8gIEFsbG93aW5nIGFkZGl0aW9uYWwgcG9pbnRzIHRv
IGJlIHVzZWQgc2hvdWxkDQo+IGRlZmluaXRlbHkNCj4gYmUgc2FmZSB0aGVuLCByaWdodD8NCg0K
UmlnaHQsIHRoYW5rcyBmb3Igc3BvdHRpbmcgdGhpcyBjb25kaXRpb24gYWN0dWFsbHkgY2FtZSBv
bmNlDQpJIGRpc2NvdmVyZWQgaXNzdWVzIGluIENJLCB0aGF0IHdoZW4gaXQgbWFrZXMgaW5pdGlh
bCBjb21taXQNCml0IHNpbXBseSB0cmllcyB0byBjb21taXQgYWxsIDAgcmVnYXJkbGVzcyBvZiBy
ZWFsIGh3IHN0YXRlLA0KaGF2aW5nIHRoaXMgaGVyZSBpcyBkZWVwbHkgd3JvbmcgYXMgSSB3aWxs
IHRoZW4gZm9yYmlkIHVubWFza2luZw0KYWxsIHBvaW50cyBzYW1lIHRpbWUuDQpJIHdhcyBraW5k
IG9mIGJ1c3kgd2l0aCB0aGUgbWFpbiBTQUdWIGlzc3VlIGhlcmUoY29tbWl0IHNlcmlhbGl6YXRp
b24sDQp3aGljaCBzdGlsbCBkb2Vzbid0IHdvcmsgcHJvcGVybHkgZm9yIFNBR1YpIHRoYXQgZm9y
Z290IHRoaXMgdGhpbmcNCmNvbXBsZXRlbHkuLg0KDQo+IA0KPiA+ICsNCj4gPiArCS8qDQo+ID4g
KwkgKiBKdXN0IHJldHVybiBpZiB3ZSBjYW4ndCBjb250cm9sIFNBR1Ygb3IgZG9uJ3QgaGF2ZSBp
dC4NCj4gPiArCSAqLw0KPiA+ICsJaWYgKCFpbnRlbF9oYXNfc2FndihkZXZfcHJpdikpDQo+ID4g
KwkJcmV0dXJuOw0KPiA+ICsNCj4gPiArCS8qDQo+ID4gKwkgKiBBbGxvdyByZXF1aXJlZCBxZ3Yg
cG9pbnRzIGFmdGVyIHVwZGF0aW5nIHRoZSBjb25maWd1cmF0aW9uLg0KPiA+ICsJICogQWNjb3Jk
aW5nIHRvIEJTcGVjIHdlIGNhbid0IG1hc2sgYW5kIHVubWFzayBxZ3YgcG9pbnRzIGF0DQo+ID4g
dGhlIHNhbWUNCj4gPiArCSAqIHRpbWUuIEFsc28gbWFza2luZyBzaG91bGQgYmUgZG9uZSBiZWZv
cmUgdXBkYXRpbmcgdGhlDQo+ID4gY29uZmlndXJhdGlvbg0KPiA+ICsJICogYW5kIHVubWFza2lu
ZyBhZnRlcndhcmRzLg0KPiA+ICsJICovDQo+ID4gKwlyZXQgPSBpY2xfcGNvZGVfcmVzdHJpY3Rf
cWd2X3BvaW50cyhkZXZfcHJpdiwgbmV3X21hc2spOw0KPiA+ICsJaWYgKHJldCA8IDApDQo+ID4g
KwkJRFJNX0RFQlVHX0tNUygiQ291bGQgbm90IHJlc3RyaWN0IHJlcXVpcmVkIHFndg0KPiA+IHBv
aW50cyglZClcbiIsDQo+ID4gKwkJCSAgICAgIHJldCk7DQo+IA0KPiBUaGlzIG1lc3NhZ2Ugc2Vl
bXMgYSBiaXQgbWlzbGVhZGluZzsgd2UncmUgcmVtb3ZpbmcgcmVzdHJpY3Rpb25zIGhlcmUNCj4g
aW5zdGVhZCBvZiBhZGRpbmcgdGhlbS4NCg0KWWVzLg0KDQo+IA0KPiANCj4gTWF0dA0KPiANCj4g
PiArCWVsc2UNCj4gPiArCQlkZXZfcHJpdi0+cWd2X3BvaW50c19tYXNrID0gbmV3X21hc2s7DQo+
ID4gK30NCj4gPiArDQo+ID4gIHN0YXRpYyB2b2lkIGludGVsX2F0b21pY19jb21taXRfdGFpbChz
dHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlDQo+ID4gKnN0YXRlKQ0KPiA+ICB7DQo+ID4gIAlzdHJ1
Y3QgZHJtX2RldmljZSAqZGV2ID0gc3RhdGUtPmJhc2UuZGV2Ow0KPiA+IEBAIC0xNDc4Miw2ICsx
NDg1Niw5IEBAIHN0YXRpYyB2b2lkIGludGVsX2F0b21pY19jb21taXRfdGFpbChzdHJ1Y3QNCj4g
PiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQ0KPiA+ICAJCX0NCj4gPiAgCX0NCj4gPiAgDQo+
ID4gKwlpZiAoKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpKQ0KPiA+ICsJCWludGVsX3Fndl9w
b2ludHNfbWFzayhzdGF0ZSk7DQo+ID4gKw0KPiA+ICAJaW50ZWxfY29tbWl0X21vZGVzZXRfZGlz
YWJsZXMoc3RhdGUpOw0KPiA+ICANCj4gPiAgCS8qIEZJWE1FOiBFdmVudHVhbGx5IGdldCByaWQg
b2Ygb3VyIGNydGMtPmNvbmZpZyBwb2ludGVyICovDQo+ID4gQEAgLTE0ODAwLDggKzE0ODc3LDkg
QEAgc3RhdGljIHZvaWQgaW50ZWxfYXRvbWljX2NvbW1pdF90YWlsKHN0cnVjdA0KPiA+IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUpDQo+ID4gIAkJICogU0tMIHdvcmthcm91bmQ6IGJzcGVjIHJl
Y29tbWVuZHMgd2UgZGlzYWJsZSB0aGUgU0FHVg0KPiA+IHdoZW4gd2UNCj4gPiAgCQkgKiBoYXZl
IG1vcmUgdGhlbiBvbmUgcGlwZSBlbmFibGVkDQo+ID4gIAkJICovDQo+ID4gLQkJaWYgKCFpbnRl
bF9jYW5fZW5hYmxlX3NhZ3Yoc3RhdGUpKQ0KPiA+IC0JCQlpbnRlbF9kaXNhYmxlX3NhZ3YoZGV2
X3ByaXYpOw0KPiA+ICsJCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpIDwgMTEpDQo+ID4gKwkJCWlm
ICghaW50ZWxfY2FuX2VuYWJsZV9zYWd2KHN0YXRlKSkNCj4gPiArCQkJCWludGVsX2Rpc2FibGVf
c2FndihkZXZfcHJpdik7DQo+ID4gIA0KPiA+ICAJCWludGVsX21vZGVzZXRfdmVyaWZ5X2Rpc2Fi
bGVkKGRldl9wcml2LCBzdGF0ZSk7DQo+ID4gIAl9DQo+ID4gQEAgLTE0ODgzLDggKzE0OTYxLDEx
IEBAIHN0YXRpYyB2b2lkDQo+ID4gaW50ZWxfYXRvbWljX2NvbW1pdF90YWlsKHN0cnVjdCBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlKQ0KPiA+ICAJaWYgKHN0YXRlLT5tb2Rlc2V0KQ0KPiA+ICAJ
CWludGVsX3ZlcmlmeV9wbGFuZXMoc3RhdGUpOw0KPiA+ICANCj4gPiAtCWlmIChzdGF0ZS0+bW9k
ZXNldCAmJiBpbnRlbF9jYW5fZW5hYmxlX3NhZ3Yoc3RhdGUpKQ0KPiA+IC0JCWludGVsX2VuYWJs
ZV9zYWd2KGRldl9wcml2KTsNCj4gPiArCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpIDwgMTEpIHsN
Cj4gPiArCQlpZiAoc3RhdGUtPm1vZGVzZXQgJiYgaW50ZWxfY2FuX2VuYWJsZV9zYWd2KHN0YXRl
KSkNCj4gPiArCQkJaW50ZWxfZW5hYmxlX3NhZ3YoZGV2X3ByaXYpOw0KPiA+ICsJfSBlbHNlDQo+
ID4gKwkJaW50ZWxfcWd2X3BvaW50c191bm1hc2soc3RhdGUpOw0KPiA+ICANCj4gPiAgCWRybV9h
dG9taWNfaGVscGVyX2NvbW1pdF9od19kb25lKCZzdGF0ZS0+YmFzZSk7DQo+ID4gIA0KPiA+IEBA
IC0xNTAzMSw3ICsxNTExMiw3IEBAIHN0YXRpYyBpbnQgaW50ZWxfYXRvbWljX2NvbW1pdChzdHJ1
Y3QNCj4gPiBkcm1fZGV2aWNlICpkZXYsDQo+ID4gIAlpbnRlbF9zaGFyZWRfZHBsbF9zd2FwX3N0
YXRlKHN0YXRlKTsNCj4gPiAgCWludGVsX2F0b21pY190cmFja19mYnMoc3RhdGUpOw0KPiA+ICAN
Cj4gPiAtCWlmIChzdGF0ZS0+Z2xvYmFsX3N0YXRlX2NoYW5nZWQpIHsNCj4gPiArCWlmIChzdGF0
ZS0+Z2xvYmFsX3N0YXRlX2NoYW5nZWQgJiYgc3RhdGUtPm1vZGVzZXQpIHsNCj4gPiAgCQlhc3Nl
cnRfZ2xvYmFsX3N0YXRlX2xvY2tlZChkZXZfcHJpdik7DQo+ID4gIA0KPiA+ICAJCW1lbWNweShk
ZXZfcHJpdi0+bWluX2NkY2xrLCBzdGF0ZS0+bWluX2NkY2xrLA0KPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gPiBp
bmRleCA2YTMwMGNhYzg4M2YuLjM1MzU4NTdkZmVkMiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ID4gQEAg
LTUzNCw2ICs1MzQsOSBAQCBzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlIHsNCj4gPiAgCXN0cnVj
dCBpOTE1X3N3X2ZlbmNlIGNvbW1pdF9yZWFkeTsNCj4gPiAgDQo+ID4gIAlzdHJ1Y3QgbGxpc3Rf
bm9kZSBmcmVlZDsNCj4gPiArDQo+ID4gKwkvKiBHZW4xMSsgb25seSAqLw0KPiA+ICsJdTMyIHFn
dl9wb2ludHNfbWFzazsNCj4gPiAgfTsNCj4gPiAgDQo+ID4gIHN0cnVjdCBpbnRlbF9wbGFuZV9z
dGF0ZSB7DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgN
Cj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gPiBpbmRleCAwYWM5ZDdi
MDA2Y2EuLjU0NjU3YjY4MDEwYSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2Rydi5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaA0K
PiA+IEBAIC04NTAsNiArODUwLDkgQEAgZW51bSBpbnRlbF9waXBlX2NyY19zb3VyY2Ugew0KPiA+
ICAJSU5URUxfUElQRV9DUkNfU09VUkNFX01BWCwNCj4gPiAgfTsNCj4gPiAgDQo+ID4gKy8qIEJT
cGVjIHByZWNpc2VseSBkZWZpbmVzIHRoaXMgKi8NCj4gPiArI2RlZmluZSBOVU1fU0FHVl9QT0lO
VFMgOA0KPiA+ICsNCj4gPiAgI2RlZmluZSBJTlRFTF9QSVBFX0NSQ19FTlRSSUVTX05SCTEyOA0K
PiA+ICBzdHJ1Y3QgaW50ZWxfcGlwZV9jcmMgew0KPiA+ICAJc3BpbmxvY2tfdCBsb2NrOw0KPiA+
IEBAIC0xMjM4LDExICsxMjQxLDEzIEBAIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlIHsNCj4gPiAg
CX0gZHJhbV9pbmZvOw0KPiA+ICANCj4gPiAgCXN0cnVjdCBpbnRlbF9id19pbmZvIHsNCj4gPiAt
CQl1bnNpZ25lZCBpbnQgZGVyYXRlZGJ3WzNdOyAvKiBmb3IgZWFjaCBRR1YgcG9pbnQgKi8NCj4g
PiArCQl1bnNpZ25lZCBpbnQgZGVyYXRlZGJ3W05VTV9TQUdWX1BPSU5UU107IC8qIGZvciBlYWNo
DQo+ID4gUUdWIHBvaW50ICovDQo+ID4gIAkJdTggbnVtX3Fndl9wb2ludHM7DQo+ID4gIAkJdTgg
bnVtX3BsYW5lczsNCj4gPiAgCX0gbWF4X2J3WzZdOw0KPiA+ICANCj4gPiArCXUzMiBxZ3ZfcG9p
bnRzX21hc2s7DQo+ID4gKw0KPiA+ICAJc3RydWN0IGRybV9wcml2YXRlX29iaiBid19vYmo7DQo+
ID4gIA0KPiA+ICAJc3RydWN0IGludGVsX3J1bnRpbWVfcG0gcnVudGltZV9wbTsNCj4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiA+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiA+IGluZGV4IGE0ZTVhNGFlMzg4NS4uMmVhODNmZjY4
MWI5IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+ID4gQEAgLTg5ODEsNiAr
ODk4MSw4IEBAIGVudW0gew0KPiA+ICAjZGVmaW5lICAgICBHRU42X1BDT0RFX1VOSU1QTEVNRU5U
RURfQ01ECTB4RkYNCj4gPiAgI2RlZmluZSAgICAgR0VON19QQ09ERV9USU1FT1VUCQkJMHgyDQo+
ID4gICNkZWZpbmUgICAgIEdFTjdfUENPREVfSUxMRUdBTF9EQVRBCQkweDMNCj4gPiArI2RlZmlu
ZSAgICAgR0VOMTFfUENPREVfTUFJTF9CT1hfTE9DS0VECQkweDYNCj4gPiArI2RlZmluZSAgICAg
R0VOMTFfUENPREVfUkVKRUNURUQJCTB4MTENCj4gPiAgI2RlZmluZSAgICAgR0VON19QQ09ERV9N
SU5fRlJFUV9UQUJMRV9HVF9SQVRJT19PVVRfT0ZfUkFOR0UgMHgxMA0KPiA+ICAjZGVmaW5lICAg
R0VONl9QQ09ERV9XUklURV9SQzZWSURTCQkweDQNCj4gPiAgI2RlZmluZSAgIEdFTjZfUENPREVf
UkVBRF9SQzZWSURTCQkweDUNCj4gPiBAQCAtOTAwMiw2ICs5MDA0LDcgQEAgZW51bSB7DQo+ID4g
ICNkZWZpbmUgICBJQ0xfUENPREVfTUVNX1NVQlNZU1lTVEVNX0lORk8JMHhkDQo+ID4gICNkZWZp
bmUgICAgIElDTF9QQ09ERV9NRU1fU1NfUkVBRF9HTE9CQUxfSU5GTwkoMHgwIDw8IDgpDQo+ID4g
ICNkZWZpbmUgICAgIElDTF9QQ09ERV9NRU1fU1NfUkVBRF9RR1ZfUE9JTlRfSU5GTyhwb2ludCkJ
KCgocG9pbg0KPiA+IHQpIDw8IDE2KSB8ICgweDEgPDwgOCkpDQo+ID4gKyNkZWZpbmUgICBJQ0xf
UENPREVfU0FHVl9ERV9NRU1fU1NfQ09ORklHCTB4ZQ0KPiA+ICAjZGVmaW5lICAgR0VONl9QQ09E
RV9SRUFEX0RfQ09NUAkJMHgxMA0KPiA+ICAjZGVmaW5lICAgR0VONl9QQ09ERV9XUklURV9EX0NP
TVAJCTB4MTENCj4gPiAgI2RlZmluZSAgIEhTV19QQ09ERV9ERV9XUklURV9GUkVRX1JFUQkJMHgx
Nw0KPiA+IEBAIC05MDE0LDYgKzkwMTcsOCBAQCBlbnVtIHsNCj4gPiAgI2RlZmluZSAgICAgR0VO
OV9TQUdWX0lTX0RJU0FCTEVECQkweDENCj4gPiAgI2RlZmluZSAgICAgR0VOOV9TQUdWX0VOQUJM
RQkJCTB4Mw0KPiA+ICAjZGVmaW5lIEdFTjEyX1BDT0RFX1JFQURfU0FHVl9CTE9DS19USU1FX1VT
CTB4MjMNCj4gPiArI2RlZmluZSBHRU4xMV9QQ09ERV9QT0lOVFNfUkVTVFJJQ1RFRAkJMHgwDQo+
ID4gKyNkZWZpbmUgR0VOMTFfUENPREVfUE9JTlRTX1JFU1RSSUNURURfTUFTSwkweDENCj4gPiAg
I2RlZmluZSBHRU42X1BDT0RFX0RBVEEJCQkJX01NSU8oMHgxMzgxMjgpDQo+ID4gICNkZWZpbmUg
ICBHRU42X1BDT0RFX0ZSRVFfSUFfUkFUSU9fU0hJRlQJOA0KPiA+ICAjZGVmaW5lICAgR0VONl9Q
Q09ERV9GUkVRX1JJTkdfUkFUSU9fU0hJRlQJMTYNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfc2lkZWJhbmQuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfc2lkZWJhbmQuYw0KPiA+IGluZGV4IGUwNmIzNWI4NDRhMC4uZmY5ZGJlZDA5NGQ4IDEw
MDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3NpZGViYW5kLmMNCj4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zaWRlYmFuZC5jDQo+ID4gQEAgLTM3
MSw2ICszNzEsMjkgQEAgc3RhdGljIGlubGluZSBpbnQNCj4gPiBnZW43X2NoZWNrX21haWxib3hf
c3RhdHVzKHUzMiBtYm94KQ0KPiA+ICAJfQ0KPiA+ICB9DQo+ID4gIA0KPiA+ICtzdGF0aWMgaW5s
aW5lIGludCBnZW4xMV9jaGVja19tYWlsYm94X3N0YXR1cyh1MzIgbWJveCkNCj4gPiArew0KPiA+
ICsJc3dpdGNoIChtYm94ICYgR0VONl9QQ09ERV9FUlJPUl9NQVNLKSB7DQo+ID4gKwljYXNlIEdF
TjZfUENPREVfU1VDQ0VTUzoNCj4gPiArCQlyZXR1cm4gMDsNCj4gPiArCWNhc2UgR0VONl9QQ09E
RV9JTExFR0FMX0NNRDoNCj4gPiArCQlyZXR1cm4gLUVOWElPOw0KPiA+ICsJY2FzZSBHRU43X1BD
T0RFX1RJTUVPVVQ6DQo+ID4gKwkJcmV0dXJuIC1FVElNRURPVVQ7DQo+ID4gKwljYXNlIEdFTjdf
UENPREVfSUxMRUdBTF9EQVRBOg0KPiA+ICsJCXJldHVybiAtRUlOVkFMOw0KPiA+ICsJY2FzZSBH
RU43X1BDT0RFX01JTl9GUkVRX1RBQkxFX0dUX1JBVElPX09VVF9PRl9SQU5HRToNCj4gPiArCQly
ZXR1cm4gLUVPVkVSRkxPVzsNCj4gPiArCWNhc2UgR0VOMTFfUENPREVfTUFJTF9CT1hfTE9DS0VE
Og0KPiA+ICsJCXJldHVybiAtRUFHQUlOOw0KPiA+ICsJY2FzZSBHRU4xMV9QQ09ERV9SRUpFQ1RF
RDoNCj4gPiArCQlyZXR1cm4gLUVBQ0NFUzsNCj4gPiArCWRlZmF1bHQ6DQo+ID4gKwkJTUlTU0lO
R19DQVNFKG1ib3ggJiBHRU42X1BDT0RFX0VSUk9SX01BU0spOw0KPiA+ICsJCXJldHVybiAwOw0K
PiA+ICsJfQ0KPiA+ICt9DQo+ID4gKw0KPiA+ICBzdGF0aWMgaW50IF9fc2FuZHlicmlkZ2VfcGNv
ZGVfcncoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsDQo+ID4gIAkJCQkgIHUzMiBtYm94
LCB1MzIgKnZhbCwgdTMyICp2YWwxLA0KPiA+ICAJCQkJICBpbnQgZmFzdF90aW1lb3V0X3VzLA0K
PiA+IEBAIC00MDgsNyArNDMxLDkgQEAgc3RhdGljIGludCBfX3NhbmR5YnJpZGdlX3Bjb2RlX3J3
KHN0cnVjdA0KPiA+IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsDQo+ID4gIAlpZiAoaXNfcmVhZCAm
JiB2YWwxKQ0KPiA+ICAJCSp2YWwxID0gaW50ZWxfdW5jb3JlX3JlYWRfZncodW5jb3JlLCBHRU42
X1BDT0RFX0RBVEExKTsNCj4gPiAgDQo+ID4gLQlpZiAoSU5URUxfR0VOKGk5MTUpID4gNikNCj4g
PiArCWlmIChJTlRFTF9HRU4oaTkxNSkgPj0gMTEpDQo+ID4gKwkJcmV0dXJuIGdlbjExX2NoZWNr
X21haWxib3hfc3RhdHVzKG1ib3gpOw0KPiA+ICsJZWxzZSBpZiAoSU5URUxfR0VOKGk5MTUpID4g
NikNCj4gPiAgCQlyZXR1cm4gZ2VuN19jaGVja19tYWlsYm94X3N0YXR1cyhtYm94KTsNCj4gPiAg
CWVsc2UNCj4gPiAgCQlyZXR1cm4gZ2VuNl9jaGVja19tYWlsYm94X3N0YXR1cyhtYm94KTsNCj4g
PiAtLSANCj4gPiAyLjE3LjENCj4gPiANCj4gDQo+IA0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
