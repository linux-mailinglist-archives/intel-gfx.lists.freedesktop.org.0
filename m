Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3092B40B167
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Sep 2021 16:40:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D7D189801;
	Tue, 14 Sep 2021 14:40:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55D0C89801
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Sep 2021 14:40:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10106"; a="221682052"
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="221682052"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 07:40:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="528909907"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 14 Sep 2021 07:40:21 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 14 Sep 2021 07:40:21 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 14 Sep 2021 07:40:19 -0700
Received: from bgsmsx602.gar.corp.intel.com ([10.109.78.81]) by
 BGSMSX602.gar.corp.intel.com ([10.109.78.81]) with mapi id 15.01.2242.012;
 Tue, 14 Sep 2021 20:10:17 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "Lisovskiy, Stanislav"
 <stanislav.lisovskiy@intel.com>
CC: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Navare, 
 Manasi D" <manasi.d.navare@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Enable second VDSC engine
 for higher moderates
Thread-Index: AQHXqK0inD+P6mZa3kyDbF0BuUUoBquixrYAgABcbgD//6kzAIAAE+QAgAAzeICAABDVgIAAB9CAgAAIagCAAF7qcA==
Date: Tue, 14 Sep 2021 14:40:17 +0000
Message-ID: <c3813f0b1b18411abfdd9004378f2329@intel.com>
References: <20210913143923.21119-1-vandita.kulkarni@intel.com>
 <YUBPJrm1IZWwukS5@intel.com> <9dd78b35e9bf41f8816a0e7dedf75c64@intel.com>
 <YUBT3ljaDzwtXkwq@intel.com> <20210914085958.GA27514@intel.com>
 <87k0jj2wjo.fsf@intel.com> <20210914130425.GA27850@intel.com>
 <20210914133223.GA28709@intel.com> <87bl4v2r2h.fsf@intel.com>
In-Reply-To: <87bl4v2r2h.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Enable second VDSC engine
 for higher moderates
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBOaWt1bGEsIEphbmkgPGphbmku
bmlrdWxhQGludGVsLmNvbT4NCj4gU2VudDogVHVlc2RheSwgU2VwdGVtYmVyIDE0LCAyMDIxIDc6
MzMgUE0NCj4gVG86IExpc292c2tpeSwgU3RhbmlzbGF2IDxzdGFuaXNsYXYubGlzb3Zza2l5QGlu
dGVsLmNvbT4NCj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+OyBLdWxrYXJuaSwgVmFuZGl0YQ0KPiA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+
OyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBOYXZhcmUsDQo+IE1hbmFzaSBEIDxt
YW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW0ludGVsLWdmeF0gW1BB
VENIXSBkcm0vaTkxNS9kaXNwbGF5OiBFbmFibGUgc2Vjb25kIFZEU0MNCj4gZW5naW5lIGZvciBo
aWdoZXIgbW9kZXJhdGVzDQo+IA0KPiBPbiBUdWUsIDE0IFNlcCAyMDIxLCAiTGlzb3Zza2l5LCBT
dGFuaXNsYXYiIDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4NCj4gd3JvdGU6DQo+ID4g
T24gVHVlLCBTZXAgMTQsIDIwMjEgYXQgMDQ6MDQ6MjVQTSArMDMwMCwgTGlzb3Zza2l5LCBTdGFu
aXNsYXYgd3JvdGU6DQo+ID4+IE9uIFR1ZSwgU2VwIDE0LCAyMDIxIGF0IDAzOjA0OjExUE0gKzAz
MDAsIEphbmkgTmlrdWxhIHdyb3RlOg0KPiA+PiA+IE9uIFR1ZSwgMTQgU2VwIDIwMjEsICJMaXNv
dnNraXksIFN0YW5pc2xhdiINCj4gPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPiB3cm90
ZToNCj4gPj4gPiA+IE9uIFR1ZSwgU2VwIDE0LCAyMDIxIGF0IDEwOjQ4OjQ2QU0gKzAzMDAsIFZp
bGxlIFN5cmrDpGzDpCB3cm90ZToNCj4gPj4gPiA+PiBPbiBUdWUsIFNlcCAxNCwgMjAyMSBhdCAw
NzozMTo0NkFNICswMDAwLCBLdWxrYXJuaSwgVmFuZGl0YSB3cm90ZToNCj4gPj4gPiA+PiA+ID4g
LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPj4gPiA+PiA+ID4gRnJvbTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPj4gPiA+PiA+ID4gU2Vu
dDogVHVlc2RheSwgU2VwdGVtYmVyIDE0LCAyMDIxIDEyOjU5IFBNDQo+ID4+ID4gPj4gPiA+IFRv
OiBLdWxrYXJuaSwgVmFuZGl0YSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+DQo+ID4+ID4g
Pj4gPiA+IENjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBOaWt1bGEsIEphbmkN
Cj4gPj4gPiA+PiA+ID4gPGphbmkubmlrdWxhQGludGVsLmNvbT47IE5hdmFyZSwgTWFuYXNpIEQN
Cj4gPj4gPiA+PiA+ID4gPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+DQo+ID4+ID4gPj4gPiA+
IFN1YmplY3Q6IFJlOiBbSW50ZWwtZ2Z4XSBbUEFUQ0hdIGRybS9pOTE1L2Rpc3BsYXk6IEVuYWJs
ZQ0KPiA+PiA+ID4+ID4gPiBzZWNvbmQgVkRTQyBlbmdpbmUgZm9yIGhpZ2hlciBtb2RlcmF0ZXMN
Cj4gPj4gPiA+PiA+ID4NCj4gPj4gPiA+PiA+ID4gT24gTW9uLCBTZXAgMTMsIDIwMjEgYXQgMDg6
MDk6MjNQTSArMDUzMCwgVmFuZGl0YSBLdWxrYXJuaQ0KPiB3cm90ZToNCj4gPj4gPiA+PiA+ID4g
PiBFYWNoIFZEU0Mgb3BlcmF0ZXMgd2l0aCAxcHBjIHRocm91Z2hwdXQsIGhlbmNlIGVuYWJsZSB0
aGUNCj4gPj4gPiA+PiA+ID4gPiBzZWNvbmQgVkRTQyBlbmdpbmUgd2hlbiBtb2RlcmF0ZSBpcyBo
aWdoZXIgdGhhdCB0aGUgY3VycmVudA0KPiBjZGNsay4NCj4gPj4gPiA+PiA+ID4gPg0KPiA+PiA+
ID4+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IFZhbmRpdGEgS3Vsa2FybmkNCj4gPj4gPiA+PiA+ID4g
PiA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+DQo+ID4+ID4gPj4gPiA+ID4gLS0tDQo+ID4+
ID4gPj4gPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDEy
ICsrKysrKysrKystLQ0KPiA+PiA+ID4+ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gPj4gPiA+PiA+ID4gPg0KPiA+PiA+ID4+ID4gPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4g
Pj4gPiA+PiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0K
PiA+PiA+ID4+ID4gPiA+IGluZGV4IDE2MWMzM2IyYzg2OS4uNTU4NzhmNjVmNzI0IDEwMDY0NA0K
PiA+PiA+ID4+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYw0KPiA+PiA+ID4+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYw0KPiA+PiA+ID4+ID4gPiA+IEBAIC03MCw2ICs3MCw3IEBADQo+ID4+ID4gPj4g
PiA+ID4gICNpbmNsdWRlICJpbnRlbF90Yy5oIg0KPiA+PiA+ID4+ID4gPiA+ICAjaW5jbHVkZSAi
aW50ZWxfdmRzYy5oIg0KPiA+PiA+ID4+ID4gPiA+ICAjaW5jbHVkZSAiaW50ZWxfdnJyLmgiDQo+
ID4+ID4gPj4gPiA+ID4gKyNpbmNsdWRlICJpbnRlbF9jZGNsay5oIg0KPiA+PiA+ID4+ID4gPiA+
DQo+ID4+ID4gPj4gPiA+ID4gICNkZWZpbmUgRFBfRFBSWF9FU0lfTEVOIDE0DQo+ID4+ID4gPj4g
PiA+ID4NCj4gPj4gPiA+PiA+ID4gPiBAQCAtMTI5MSwxMCArMTI5MiwxMyBAQCBzdGF0aWMgaW50
DQo+ID4+ID4gPj4gPiA+ID4gaW50ZWxfZHBfZHNjX2NvbXB1dGVfY29uZmlnKHN0cnVjdA0KPiA+
PiA+ID4+ID4gPiBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4+ID4gPj4gPiA+ID4gIAkJCQkgICAg
ICAgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUNCj4gKmNvbm5fc3RhdGUsDQo+ID4+ID4gPj4g
PiA+ID4gIAkJCQkgICAgICAgc3RydWN0IGxpbmtfY29uZmlnX2xpbWl0cyAqbGltaXRzKSAgew0K
PiA+PiA+ID4+ID4gPiA+ICsJc3RydWN0IGludGVsX2NkY2xrX3N0YXRlICpjZGNsa19zdGF0ZTsN
Cj4gPj4gPiA+PiA+ID4gPiAgCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0ID0N
Cj4gZHBfdG9fZGlnX3BvcnQoaW50ZWxfZHApOw0KPiA+PiA+ID4+ID4gPiA+ICAJc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShkaWdfcG9ydC0NCj4gPj4gPiA+PiA+
ID4gPmJhc2UuYmFzZS5kZXYpOw0KPiA+PiA+ID4+ID4gPiA+ICAJY29uc3Qgc3RydWN0IGRybV9k
aXNwbGF5X21vZGUgKmFkanVzdGVkX21vZGUgPQ0KPiA+PiA+ID4+ID4gPiA+ICAJCSZwaXBlX2Nv
bmZpZy0+aHcuYWRqdXN0ZWRfbW9kZTsNCj4gPj4gPiA+PiA+ID4gPiArCXN0cnVjdCBpbnRlbF9h
dG9taWNfc3RhdGUgKnN0YXRlID0NCj4gPj4gPiA+PiA+ID4gPiArCQkJCXRvX2ludGVsX2F0b21p
Y19zdGF0ZShwaXBlX2NvbmZpZy0NCj4gPj4gPiA+PiA+ID4gPnVhcGkuc3RhdGUpOw0KPiA+PiA+
ID4+ID4gPiA+ICAJaW50IHBpcGVfYnBwOw0KPiA+PiA+ID4+ID4gPiA+ICAJaW50IHJldDsNCj4g
Pj4gPiA+PiA+ID4gPg0KPiA+PiA+ID4+ID4gPiA+IEBAIC0xMzczLDEyICsxMzc3LDE2IEBAIHN0
YXRpYyBpbnQNCj4gPj4gPiA+PiA+ID4gPiBpbnRlbF9kcF9kc2NfY29tcHV0ZV9jb25maWcoc3Ry
dWN0DQo+ID4+ID4gPj4gPiA+IGludGVsX2RwICppbnRlbF9kcCwNCj4gPj4gPiA+PiA+ID4gPiAg
CQl9DQo+ID4+ID4gPj4gPiA+ID4gIAl9DQo+ID4+ID4gPj4gPiA+ID4NCj4gPj4gPiA+PiA+ID4g
PiArCWNkY2xrX3N0YXRlID0gaW50ZWxfYXRvbWljX2dldF9jZGNsa19zdGF0ZShzdGF0ZSk7DQo+
ID4+ID4gPj4gPiA+ID4gKwlpZiAoSVNfRVJSKGNkY2xrX3N0YXRlKSkNCj4gPj4gPiA+PiA+ID4g
PiArCQlyZXR1cm4gUFRSX0VSUihjZGNsa19zdGF0ZSk7DQo+ID4+ID4gPj4gPiA+ID4gKw0KPiA+
PiA+ID4+ID4gPiA+ICAJLyoNCj4gPj4gPiA+PiA+ID4gPiAgCSAqIFZEU0MgZW5naW5lIG9wZXJh
dGVzIGF0IDEgUGl4ZWwgcGVyIGNsb2NrLCBzbyBpZiBwZWFrIHBpeGVsDQo+IHJhdGUNCj4gPj4g
PiA+PiA+ID4gPiAtCSAqIGlzIGdyZWF0ZXIgdGhhbiB0aGUgbWF4aW11bSBDZGNsb2NrIGFuZCBp
ZiBzbGljZSBjb3VudCBpcw0KPiBldmVuDQo+ID4+ID4gPj4gPiA+ID4gKwkgKiBpcyBncmVhdGVy
IHRoYW4gdGhlIGN1cnJlbnQgQ2RjbG9jayBhbmQgaWYgc2xpY2UNCj4gPj4gPiA+PiA+ID4gPiAr
Y291bnQgaXMgZXZlbg0KPiA+PiA+ID4+ID4gPiA+ICAJICogdGhlbiB3ZSBuZWVkIHRvIHVzZSAy
IFZEU0MgaW5zdGFuY2VzLg0KPiA+PiA+ID4+ID4gPiA+ICAJICovDQo+ID4+ID4gPj4gPiA+ID4g
LQlpZiAoYWRqdXN0ZWRfbW9kZS0+Y3J0Y19jbG9jayA+IGRldl9wcml2LT5tYXhfY2RjbGtfZnJl
cQ0KPiB8fA0KPiA+PiA+ID4+ID4gPiA+ICsJaWYgKGFkanVzdGVkX21vZGUtPmNydGNfY2xvY2sg
Pg0KPiA+PiA+ID4+ID4gPiA+ICtjZGNsa19zdGF0ZS0+YWN0dWFsLmNkY2xrIHx8DQo+ID4+ID4g
Pj4gPiA+DQo+ID4+ID4gPj4gPiA+IFRoaXMgaXMgd3JvbmcuIFdlIGNvbXB1dGUgdGhlIGNkY2xr
IGJhc2VkIG9uIHRoZQ0KPiA+PiA+ID4+ID4gPiByZXF1aXJlbWVudHMgb2YgdGhlIG1vZGUvZXRj
Liwgbm90IHRoZSBvdGhlciB3YXkgYXJvdW5kLg0KPiA+PiA+ID4NCj4gPj4gPiA+IEFjY29yZGlu
ZyB0byBCU3BlYyBndWlkZWxpbmUsIHdlIGRlY2lkZSB3aGV0aGVyIHdlIGVuYWJsZSBvcg0KPiA+
PiA+ID4gZGlzYWJsZSBzZWNvbmQgVkRTQyBlbmdpbmUsIGJhc2VkIG9uIHRoYXQgY29uZGl0aW9u
LiBBcyBJDQo+ID4+ID4gPiB1bmRlcnN0YW5kIHRoYXQgb25lIGlzIGFib3V0IERTQyBjb25maWcg
Y2FsY3VsYXRpb24sIGJhc2VkIG9uIENEQ0xLDQo+IHdoaWNoIHdhcyBjYWxjdWxhdGVkLg0KPiA+
PiA+DQo+ID4+ID4gUG9pbnQgaXMsIGF0IHRoZSB0aW1lIGNvbXB1dGVfY29uZmlnIGdldHMgY2Fs
bGVkLCB3aGF0IGd1YXJhbnRlZXMNCj4gPj4gPiBhcmUgdGhlcmUgdGhhdCBjZGNsa19zdGF0ZS0+
YWN0dWFsLmNkY2xrIGNvbnRhaW5zIGFueXRoaW5nIHVzZWZ1bD8NCj4gPj4gPiBUaGlzIGlzIHRo
ZSBkZXNpZ24gd2UgaGF2ZS4NCj4gPj4NCj4gPj4gVGhhdCBpcyBhY3R1YWxseSBnb29kIHF1ZXN0
aW9uLCB3YXMgd2lsbGluZyB0byBjaGVjayB0aGF0IGFzIHdlbGwuDQo+ID4+DQo+ID4+ID4NCj4g
Pj4gPiA+IElmIHdlIGJ1bXAgdXAgQ0RDTEssIHRvIGF2b2lkIHRoaXMsIHdpbGwgd2UgZXZlbiB0
aGVuIHVzZSBhIHNlY29uZA0KPiBWRFNDIGV2ZXI/DQo+ID4+ID4NCj4gPj4gPiBJIHRoaW5rIHdl
J2xsIGV2ZW50dWFsbHkgbmVlZCBiZXR0ZXIgbG9naWMgdGhhbiB1bmNvbmRpdGlvbmFsbHkNCj4g
Pj4gPiBidW1waW5nIHRvIG1heCwgYW5kIGl0IG5lZWRzIHRvIHRha2UgKmJvdGgqIHRoZSBjZGNs
ayBhbmQgdGhlDQo+ID4+ID4gbnVtYmVyIG9mIGRzYyBlbmdpbmVzIGludG8gYWNjb3VudC4gVGhl
IHJlZmVyZW5jZWQgYnNwZWMgb25seSBoYXMNCj4gPj4gPiB0aGUgdmRzYyBjbG9jayBwZXJzcGVj
dGl2ZSwgbm90IG92ZXJhbGwgcGVyc3BlY3RpdmUuDQo+ID4+DQo+ID4+IFdoYXQgd2UgbmVlZCB0
byBjbGFyaWZ5IGhlcmUgaXMgdGhhdCBob3cgdGhpcyBpcyBzdXBwb3NlZCB0byB3b3JrIGluDQo+
IHRoZW9yeS4NCj4gPj4gQmFzaWNhbGx5IHNhbWUgaXNzdWUgY2FuIGJlIGZpeGVkIGJ5IGJvdGgg
aW5jcmVhc2luZyB0aGUgQ0RDTEsgb3INCj4gPj4gZW5hYmxpbmcgMm5kIFZEU0MgZW5naW5lLg0K
PiA+PiBUaGVyZSBzaG91bGQgYmUgc29tZSBndWlkZWxpbmUgdGVsbGluZyB1cywgaG93IHRvIHBy
aW9yaXRpemUuDQo+ID4+IEZyb20gb3ZlcmFsbCBwZXJzcGVjdGl2ZSBhcyBJIHVuZGVyc3RhbmQs
IGJ5IGRlZmF1bHQsIHdlIGFyZSBhYmxlIHRvDQo+ID4+IGtlZXAgQ0RDTEsgMiB0aW1lcyBsZXNz
IHRoYW4gcGl4ZWwgcmF0ZShzZWUNCj4gPj4gaW50ZWxfcGl4ZWxfcmF0ZV90b19jZGNsayksIGhv
d2V2ZXIgZHVlIHRvIHRoYXQgVkRTQyBsaW1pdGF0aW9uIHRoYXQNCj4gPj4gaXQgY2FuIHVzZSBv
bmx5IDEgcHBjIHRoaXMgYmVjb21lcywgbm90IGFwcGxpY2FibGUgYW55bW9yZShhdCBsZWFzdA0K
PiA+PiBhcyBvZiBCU3BlYyA0OTI1OSksIHNvIHdlIGhhdmUgdG8gaW5jcmVhc2UgYW1vdW50IG9m
IFZEU0MgaW5zdGFuY2VzDQo+IHRoZW4uDQo+ID4+DQo+ID4+IFNvIHRoZSBxdWVzdGlvbiBpcyBu
b3cgLSB3aGF0IGlzIG1vcmUgb3B0aW1hbCBoZXJlPw0KPiA+PiBBbHNvIGlmIHdlIGJ1bXAgdXAg
Q0RDTEsod2hpY2ggd2UgaGF2ZSBkb25lIG1hbnkgdGltZXMgYWxyZWFkeSBpbg0KPiA+PiBmYWN0
KSwgd2UgdGhlbiBuZWVkIHRvIGFkZCBzb21lIGxvZ2ljIHRvIGludGVsX2NvbXB1dGVfbWluX2Nk
Y2xrIHRvDQo+ID4+IGNoZWNrIGlmIHdlIGFyZSB1c2luZyBEU0Mgb3Igbm90LCBiZWNhdXNlIG90
aGVyd2lzZSB3ZSBkb24ndCByZWFsbHkgbmVlZA0KPiB0byBkbyB0aGF0Lg0KPiANCj4gaW50ZWxf
Y29tcHV0ZV9taW5fY2RjbGsoKSBhbHJlYWR5IG5lZWRzIHRvIGJlIGRzYyBhd2FyZSB3aGVuIHNs
aWNlIGNvdW50DQo+IGlzIDEgYW5kIHdlIGNhbid0IHVzZSB0d28gZHNjIGVuZ2luZXMgYW55d2F5
LiBTZWUgdGhlIHJlY2VudCBjb21taXQNCj4gZmUwMTg4M2ZkY2VmICgiZHJtL2k5MTU6IEdldCBw
cm9wZXIgbWluIGNkY2xrIGlmIHZEU0MgZW5hYmxlZCIpLg0KPiANCj4gTG9va2luZyBhZ2Fpbiwg
SSdtIG5vdCBzdXJlIHRoYXQgZG9lcyB0aGUgcmlnaHQgZGVjaXNpb24gZm9yIHdoZW4NCj4gZHNj
LnNsaWNlX2NvdW50ID4gMSwgYnV0IGRzYy5zcGxpdCA9PSBmYWxzZS4gSXQgc2hvdWxkIHByb2Jh
Ymx5IHVzZSBkc2Muc3BsaXQgZm9yDQo+IHRoZSBkZWNpc2lvbi4NCj4gDQo+ID4+DQo+ID4+IFN0
YW4NCj4gPg0KPiA+IENoZWNrZWQgYW5kIGluZGVlZCwgZW5jb2Rlci0+Y29tcHV0ZV9jb25maWcg
aXMgY2FsbGVkIHdheSBiZWZvcmUsDQo+ID4gYmFzaWNhbGx5IENEQ0xLIGNhbGN1bGF0aW9uIGlz
IGNhbGxlZCBhbG1vc3QgaW4gdGhlIGVuZCBvZg0KPiA+IGF0b21pY19jaGVjaywgc28gaW4gY29t
cHV0ZV9jb25maWcsIHRoZXJlIHdvdWxkIGJlIGFuIG9sZCBDRENMSyB2YWx1ZQ0KPiA+IGNvcGll
ZCBmcm9tIHByZXZpb3VzIGNkY2xrIHN0YXRlLCBidXQgbm90IHRoZSBsYXN0IG9uZS4NCj4gPg0K
PiA+IFZhbmRpdGEsIHRoaXMgbWVhbnMgd2UgYWN0dWFsbHkgY2FuJ3QgZG8gaXQgdGhhdCB3YXks
IGlmIHlvdSB3YW50IHRvDQo+ID4gZG8gYW55dGhpbmcgd2l0aCBWRFNDIGJhc2VkIG9uIENEQ0xL
IHRoaXMgaGFzIHRvIGJlIGRvbmUgX2FmdGVyXw0KPiA+IGludGVsX2NvbXB1dGVfbWluX2NkY2xr
IHdhcyBjYWxsZWQuIFdoaWNoIGlzIG5vdCB2ZXJ5IHN3ZWV0LCBJIGd1ZXNzLg0KPiA+DQo+ID4g
U28gYXMgb2YgY3VycmVudCBhcmNoaXRlY3R1cmUsIGl0IHNlZW1zIHRoYXQgdGhlIGVhc2llc3Qg
d2F5IGlzIGluZGVlZA0KPiA+IHRvIGJ1bXAgdGhlIENEQ0xLIG9yIHdlIG5lZWQgdG8gZmlndXJl
IHRoZSB3YXkgaG93IHRvIGVuYWJsZSAybmQgVkRTQw0KPiA+IHNvbWV3aGVyZSBlbHNlLCBhZnRl
ciBDRENMSyB3YXMgY2FsY3VsYXRlZC4NCj4gDQo+IEFsdGVybmF0aXZlbHksIHdlIGNvdWxkIHVz
ZSB0d28gZHNjIGVuZ2luZXMgbW9yZSBhZ2dyZXNzaXZlbHksIGJ1dCB0aGF0DQo+IGRlY2lzaW9u
IGN1cnJlbnRseSBjYW4ndCB0YWtlIG92ZXJhbGwgY2hvc2VuIGNkY2xrIGludG8gYWNjb3VudC4N
Cj4gDQo+IFdlJ2xsIGVuZCB1cCBzb21ldGltZXMgdW5uZWNlc3NhcmlseSB1c2luZyBhIHRvbyBo
aWdoIGNkY2xrIG9yIHR3byBkc2MNCj4gZW5naW5lcywganVzdCBoYXZlIHRvIHBpY2sgdGhlIHBv
aXNvbi4NCj4gDQo+IEkgdGhpbmsgdHJ5aW5nIHRvIGRvIGRzYyBkZWNpc2lvbnMgYWZ0ZXIgaW50
ZWxfY29tcHV0ZV9taW5fY2RjbGsoKSBnZXRzIHdheQ0KPiB0b28gY29tcGxpY2F0ZWQuDQoNCklu
IHRoaXMgY2FzZSwgY2FuIHdlIGp1c3QgdXNlIHRoZSAybmQgVkRTQyBlbmdpbmUgaWYgc2xpY2Vf
Y291bnQgaXMgMiBvciBtb3JlPw0KV2hpY2ggd291bGQgbWVhbiB3ZSBhbHdheXMgb3BlcmF0ZSBp
biBqb2luZXIgZW5hYmxlZCBtb2RlKHNtYWxsIGpvaW5lcikgb2YgYWxsIHRoZSBjb21wcmVzc2lv
biBtb2RlcyBvZiBvcGVyYXRpb24NCm1lbnRpb25lZCBpbiB0aGUgdGFibGUgYnNwZWM6IDQ5MjU5
DQpCZWNhdXNlIHdlIGFyZSBzdGlsbCBnb2luZyB0byBoaXQgdGhlIG1heCBjZGNsayByZXN0cmlj
dGlvbiBmb3IgaGlnaGVyIHJlc29sdXRpb25zLCBhbmQgbWFueSBsb3dlciByZXNvbHV0aW9ucyB3
b3VsZG7igJl0IG5lZWQgbWF4IGNkY2xrLg0KQW5kIGV2ZW50dWFsbHkgb25jZSB3ZSBoYXZlIG1v
cmUgZGV0YWlscyBvbiBjZCBjbGsgdnMgMlZEU0MgZW5naW5lIHdlIGNvdWxkIGFkZA0KdGhlIGxv
Z2ljIHRvIGNob29zZSBvbmUgb3ZlciB0aGUgb3RoZXI/DQoNCkkgc2VlIHRoYXQgaW4gY2FzZSBv
ZiBEU0kgd2UgZG8gc3BsaXQgPSB0cnVlLCBmb3Igc2xpY2VfY291bnQgPiAxIGJ1dCB0aGF0IHdv
dWxkIG5lZWQgYSBkaWZmZXJlbnQgc2V0IG9mIGNoZWNrcywgdGhhdHMgYSBUQkQuDQoNCk9yIERv
IHlvdSBzdWdnZXN0IEkganVzdCBkbyB0aGlzIGZvciBub3cgbWF4IGNkY2xrIHdoZW4gc2xpY2Vf
Y291bnQgPTEgICh3aGF0IHdlIGFyZSBkb2luZyBub3cpIHJlcGxhY2Ugd2l0aCBjb21wcmVzc2lv
biA9IHRydWUgYW5kIHNwbGl0ID0gZmFsc2UNCiANClRoYW5rcywNClZhbmRpdGENCj4gDQo+IEJS
LA0KPiBKYW5pDQo+IA0KPiANCj4gDQo+IA0KPiA+DQo+ID4gU3Rhbg0KPiA+DQo+ID4+DQo+ID4+
ID4NCj4gPj4gPiBCUiwNCj4gPj4gPiBKYW5pLg0KPiA+PiA+DQo+ID4+ID4gPiBBbm90aGVyIHRo
aW5nIGlzIHRoYXQgcHJvYmFibHkgZW5hYmxpbmcgc2Vjb25kIFZEU0MgaXMgY2hlYXBlciBpbg0K
PiA+PiA+ID4gdGVybXMgb2YgcG93ZXIgY29uc3VtcHRpb24sIHRoYW4gYnVtcGluZyB1cCB0aGUg
Q0RDTEsuDQo+ID4+ID4gPg0KPiA+PiA+ID4gU3Rhbg0KPiA+PiA+ID4NCj4gPj4gPiA+PiA+DQo+
ID4+ID4gPj4gPiBPa2F5ICwgU28geW91IHN1Z2dlc3QgdGhhdCB3ZSBzZXQgdGhlIGNkIGNsb2Nr
IHRvIG1heCB3aGVuIHdlDQo+IGhhdmUgc3VjaCByZXF1aXJlbWVudCwgdGhhbiBlbmFibGluZyB0
aGUgc2Vjb25kIGVuZ2luZT8NCj4gPj4gPiA+Pg0KPiA+PiA+ID4+IFRoYXQgc2VlbXMgbGlrZSB0
aGUgZWFzaWVzdCBzb2x1dGlvbi4gQW5vdGhlciBvcHRpb24gbWlnaHQgYmUgdG8NCj4gPj4gPiA+
PiBjb21lIHVwIHdpdGggc29tZSBsb3dlciBkb3RjbG9jayBsaW1pdCBmb3IgdGhlIHVzZSBvZiB0
aGUgc2Vjb25kDQo+ID4+ID4gPj4gdmRzYy4gQnV0IG5vdCBzdXJlIHdlIGtub3cgd2hlcmUgdGhl
IHRpcHBpbmcgcG9pbnQgaXMgd3J0LiBwb3dyDQo+IGNvbnN1bXB0aW9uLg0KPiA+PiA+ID4+DQo+
ID4+ID4gPj4gLS0NCj4gPj4gPiA+PiBWaWxsZSBTeXJqw6Rsw6QNCj4gPj4gPiA+PiBJbnRlbA0K
PiA+PiA+DQo+ID4+ID4gLS0NCj4gPj4gPiBKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2Ug
R3JhcGhpY3MgQ2VudGVyDQo+IA0KPiAtLQ0KPiBKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3Vy
Y2UgR3JhcGhpY3MgQ2VudGVyDQo=
