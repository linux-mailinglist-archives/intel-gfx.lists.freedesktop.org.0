Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D121A17E3
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 00:20:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C8866E91F;
	Tue,  7 Apr 2020 22:20:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C371C6E91F
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 22:20:08 +0000 (UTC)
IronPort-SDR: xDGKY8JeViAcL+HWTOsJE9DJdU24vdr8jK8BUPQ7XImeIvVQkIv6VXWRuikxoLklrYG6vK4KVI
 XuqEeL2YSwXA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 15:20:04 -0700
IronPort-SDR: 8/8WtItWrJf+WjxcgjkDzU8FiGvnC1nuKvv30LIzO/SURssWm5B/XImwyH7F7kxtMud9OixOGL
 WSZ7lTwmvquw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,356,1580803200"; d="scan'208";a="251374835"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga003.jf.intel.com with ESMTP; 07 Apr 2020 15:20:03 -0700
Received: from fmsmsx124.amr.corp.intel.com (10.18.125.39) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 7 Apr 2020 15:20:03 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.62]) by
 fmsmsx124.amr.corp.intel.com ([169.254.8.220]) with mapi id 14.03.0439.000;
 Tue, 7 Apr 2020 15:20:03 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH v3 4/8] drm/i915/tc/icl: Implement TC cold sequences
Thread-Index: AQHWDSTf4cnQ96MzVECmxmcmo4ygzKhuq+AAgAAFAAA=
Date: Tue, 7 Apr 2020 22:20:02 +0000
Message-ID: <b0f5944b4cddb06f3f7bba3b5a9d019eb1a8c7d4.camel@intel.com>
References: <20200407214000.342933-1-jose.souza@intel.com>
 <20200407214000.342933-4-jose.souza@intel.com>
 <20200407220346.GC23597@ideak-desk.fi.intel.com>
In-Reply-To: <20200407220346.GC23597@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.135.56.68]
Content-ID: <6E5B20874FABF14A8EEDAABD61558870@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 4/8] drm/i915/tc/icl: Implement TC cold
 sequences
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
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "kai.heng.feng@canonical.com" <kai.heng.feng@canonical.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIwLTA0LTA4IGF0IDAxOjAzICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE9u
IFR1ZSwgQXByIDA3LCAyMDIwIGF0IDAyOjM5OjU2UE0gLTA3MDAsIEpvc8OpIFJvYmVydG8gZGUg
U291emENCj4gd3JvdGU6DQo+ID4gVGhpcyBpcyByZXF1aXJlZCBmb3IgbGVnYWN5L3N0YXRpYyBU
QyBwb3J0cyBhcyBJT00gaXMgbm90IGF3YXJlIG9mDQo+ID4gdGhlIGNvbm5lY3Rpb24gYW5kIHdp
bGwgbm90IHRyaWdnZXIgdGhlIFRDIGNvbGQgZXhpdC4NCj4gPiANCj4gPiBKdXN0IHJlcXVlc3Qg
UENPREUgdG8gZXhpdCBUQ0NPTEQgaXMgbm90IGVub3VnaCBhcyBpdCBjb3VsZCBlbnRlcg0KPiA+
IGFnYWluIGJlZm9yZSBkcml2ZXIgbWFrZXMgdXNlIG9mIHRoZSBwb3J0LCB0byBwcmV2ZW50IGl0
IEJTcGVjDQo+ID4gc3RhdGVzDQo+ID4gdGhhdCBhdXggcG93ZXJ3ZWxsIHNob3VsZCBiZSBoZWxk
Lg0KPiA+IA0KPiA+IFNvIGhlcmUgZW1iZWRkaW5nIHRoZSBUQyBjb2xkIGV4aXQgc2VxdWVuY2Ug
aW50byBJQ0wgYXV4IGVuYWJsZSwNCj4gPiBpdCB3aWxsIGVuYWJsZSBhdXggYW5kIHRoZW4gcmVx
dWVzdCBUQyBjb2xkIHRvIGV4aXQuDQo+ID4gDQo+ID4gVGhlIFRDIGNvbGQgYmxvY2soZXhpdCBh
bmQgYXV4IGhvbGQpIGFuZCB1bmJsb2NrIHdhcyBhZGRlZCB0byBzb21lDQo+ID4gZXhwb3J0ZWQg
VEMgZnVuY3Rpb25zIGZvciB0aGUgb3RoZXJzIGFuZCB0byBhY2Nlc3MgUEhZIHJlZ2lzdGVycywN
Cj4gPiBjYWxsZXJzIHNob3VsZCBlbmFibGUgYW5kIGtlZXAgYXV4IHBvd2Vyd2VsbCBlbmFibGVk
IGR1cmluZyBhY2Nlc3MuDQo+ID4gDQo+ID4gQWxzbyBhZGRpbmcgVEMgY29sZCBjaGVjayBhbmQg
d2FybmlnIGluIHRjX3BvcnRfbG9hZF9maWFfcGFyYW1zKCkNCj4gPiBhcw0KPiA+IGF0IHRoaXMg
cG9pbnQgb2YgdGhlIGRyaXZlciBpbml0aWFsaXphdGlvbiB3ZSBjYW4ndCByZXF1ZXN0IHBvd2Vy
DQo+ID4gd2VsbHMsIGlmIHdlIGdldCB0aGlzIHdhcm5pbmcgd2Ugd2lsbCBuZWVkIHRvIGZpZ3Vy
ZSBvdXQgaG93IHRvDQo+ID4gaGFuZGxlDQo+ID4gaXQuDQo+ID4gDQo+ID4gdjI6DQo+ID4gLSBt
b3ZlZCBJQ0wgVEMgY29sZCBleGl0IGZ1bmN0aW9uIHRvIGludGVsX2Rpc3BsYXlfcG93ZXINCj4g
PiAtIHVzaW5nIGRpZ19wb3J0LT50Y19sZWdhY3lfcG9ydCB0byBvbmx5IGV4ZWN1dGUgc2VxdWVu
Y2VzIGZvcg0KPiA+IGxlZ2FjeQ0KPiA+IHBvcnRzLCBob3BlZnVsbHkgVkJUcyB3aWxsIGhhdmUg
dGhpcyByaWdodA0KPiA+IC0gZml4ZWQgY2hlY2sgdG8gY2FsbCBfaHN3X3Bvd2VyX3dlbGxfY29u
dGludWVfZW5hYmxlKCkNCj4gPiAtIGNhbGxpbmcgX2hzd19wb3dlcl93ZWxsX2NvbnRpbnVlX2Vu
YWJsZSgpIHVuY29uZGl0aW9uYWxseSBpbg0KPiA+IGljbF90Y19waHlfYXV4X3Bvd2VyX3dlbGxf
ZW5hYmxlKCksIGlmIG5lZWRlZCB3ZSB3aWxsIHN1cnByZXNzDQo+ID4gdGltZW91dA0KPiA+IHdh
cm5pbmdzIG9mIFRDIGxlZ2FjeSBwb3J0cw0KPiA+IC0gb25seSBibG9ja2luZyBUQyBjb2xkIGFy
b3VuZCBmaWEgYWNjZXNzDQo+ID4gDQo+ID4gdjM6DQo+ID4gLSBhZGRlZCB0aW1lb3V0IG9mIDVt
c2VjIHRvIG5vdCBsb29wIGZvcmV2ZXIgaWYNCj4gPiBzYW5keWJyaWRnZV9wY29kZV93cml0ZV90
aW1lb3V0KCkga2VlcHMgcmV0dXJuaW5nIC1FQUdBSU4NCj4gPiByZXR1cm5pbmcgLUVBR0FJTiBp
biBpbiBpY2xfdGNfY29sZF9leGl0KCkNCj4gPiAtIHJlbW92ZWQgbGVmdG92ZXIgdGNfY29sZF93
YWtlcmVmDQo+ID4gLSBhZGRlZCBvbmUgbXNlYyBzbGVlcCB3aGVuIFBDT0RFIHJldHVybnMgLUVB
R0FJTg0KPiA+IA0KPiA+IEJTcGVjOiAyMTc1MA0KPiA+IEZpeGVzOiBodHRwczovL2dpdGxhYi5m
cmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy8xMjk2DQo+ID4gQ2M6IEltcmUgRGVhayA8
aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gPiBDYzogQ29vcGVyIENoaW91IDxjb29wZXIuY2hpb3VA
aW50ZWwuY29tPg0KPiA+IENjOiBLYWktSGVuZyBGZW5nIDxrYWkuaGVuZy5mZW5nQGNhbm9uaWNh
bC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5z
b3V6YUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfcG93ZXIuYyAgICB8IDI0ICsrKysrKy0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF90Yy5jICAgICAgIHwgNjQNCj4gPiArKysrKysrKysrKysrKysrKy0t
DQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgICB8ICAx
ICsNCj4gPiAgMyBmaWxlcyBjaGFuZ2VkLCA4MiBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygt
KQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfcG93ZXIuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3Bvd2VyLmMNCj4gPiBpbmRleCAxY2QyNzFkMGYxMTQuLjJkN2IyOTk5NTYx
YSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfcG93ZXIuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV9wb3dlci5jDQo+ID4gQEAgLTU3NSw2ICs1NzUsMjcgQEAgc3RhdGljIHZvaWQg
aWNsX3RjX3BvcnRfYXNzZXJ0X3JlZl9oZWxkKHN0cnVjdA0KPiA+IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2LA0KPiA+ICANCj4gPiAgI2RlZmluZSBUR0xfQVVYX1BXX1RPX1RDX1BPUlQocHdf
aWR4KQkoKHB3X2lkeCkgLQ0KPiA+IFRHTF9QV19DVExfSURYX0FVWF9UQzEpDQo+ID4gIA0KPiA+
ICtzdGF0aWMgdm9pZCBpY2xfdGNfY29sZF9leGl0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1KQ0KPiA+ICt7DQo+ID4gKwljb25zdCBrdGltZV90IHRpbWVvdXQgPSBrdGltZV9hZGRfbXMo
a3RpbWVfZ2V0X3JhdygpLCA1KTsNCj4gPiArCWludCByZXQ7DQo+ID4gKw0KPiA+ICsJZG8gew0K
PiA+ICsJCXJldCA9IHNhbmR5YnJpZGdlX3Bjb2RlX3dyaXRlX3RpbWVvdXQoaTkxNSwNCj4gPiAr
CQkJCQkJICAgICAgSUNMX1BDT0RFX0VYSVRfVEMNCj4gPiBDT0xELA0KPiA+ICsJCQkJCQkgICAg
ICAwLCAyNTAsIDEpOw0KPiA+ICsJCWlmIChyZXQgPT0gLUVBR0FJTikNCj4gPiArCQkJbXNsZWVw
KDEpOw0KPiA+ICsJfSB3aGlsZSAocmV0ID09IC1FQUdBSU4gJiYga3RpbWVfY29tcGFyZSh0aW1l
b3V0LA0KPiA+IGt0aW1lX2dldF9yYXcoKSkgPiAwKTsNCj4gDQo+IHRoaXMgY291bGQgZXhpdCBh
ZnRlciBhIHNpbmdsZSBwY29kZV93cml0ZSgpIHRoYXQgcG9sbGVkIGZvciAxbXMsIGFuZA0KPiBt
c2xlZXAoMSk7IGlzIG5vdCBuZWVkZWQgaW4gdGhlIGxhc3QgaXRlcmF0aW9uLiBSZXRyeWluZyAz
IHRpbWVzIGFzDQo+IGRpc2N1c3NlZCBlYXJsaWVyIHdvdWxkIHNvbHZlIHRoYXQuDQo+IA0KPiA+
ICsNCj4gPiArCS8qIFNwZWMgc3RhdGVzIHRoYXQgVEMgY29sZCBleGl0IGNhbiB0YWtlIHVwIHRv
IDFtcyB0byBjb21wbGV0ZQ0KPiA+ICovDQo+ID4gKwlpZiAoIXJldCkNCj4gPiArCQltc2xlZXAo
MSk7DQo+ID4gKw0KPiA+ICsJZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwgIlRDIGNvbGQgYmxvY2sg
JXNcbiIsIHJldCA/ICJmYWlsZWQiIDoNCj4gPiArCQkgICAgInN1Y2NlZWRlZCIpOw0KPiANCj4g
WW91IG1pc3NlZCB0dXJuaW5nIHRoaXMgdG8gYW4gZXJyb3IuDQoNCkNhbiB3ZSBwb3N0cG9uZSB0
aGlzIGF0IGxlYXN0IGZvciBJQ0w/DQoNClRoZSBJQ0wgbWFjaGluZXMgaW4gQ0kgZG9uJ3QgaGF2
ZQ0KdGhlIElGV0kgdGhhdCBoYXZlIHRoaXMgUENPREUgY29tbWFuZCwgc28gaXQgaXMgZmFpbGlu
Zy4NCkkgaGF2ZSBhc2tlZCB0bw0KQ0kgdGVhbSBkbyB1cGRhdGUgYnV0IGl0IGlzIGdvaW5nIHRv
IHRha2UgYSB3aGlsZS4gVkxLLTkwNDANCg0KPiANCj4gPiArfQ0KPiA+ICsNCj4gPiAgc3RhdGlj
IHZvaWQNCj4gPiAgaWNsX3RjX3BoeV9hdXhfcG93ZXJfd2VsbF9lbmFibGUoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUNCj4gPiAqZGV2X3ByaXYsDQo+ID4gIAkJCQkgc3RydWN0IGk5MTVfcG93ZXJf
d2VsbCAqcG93ZXJfd2VsbCkNCj4gPiBAQCAtNTkzLDcgKzYxNCw4IEBAIGljbF90Y19waHlfYXV4
X3Bvd2VyX3dlbGxfZW5hYmxlKHN0cnVjdA0KPiA+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LA0KPiA+ICANCj4gPiAgCWhzd19wb3dlcl93ZWxsX2VuYWJsZV9wcmVwYXJlKGRldl9wcml2LCBw
b3dlcl93ZWxsKTsNCj4gPiAgDQo+ID4gLQkvKiBUT0RPIElDTCBUQyBjb2xkIGhhbmRsaW5nICov
DQo+ID4gKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA9PSAxMSAmJiBkaWdfcG9ydC0+dGNfbGVn
YWN5X3BvcnQpDQo+ID4gKwkJaWNsX3RjX2NvbGRfZXhpdChkZXZfcHJpdik7DQo+ID4gIA0KPiA+
ICAJaHN3X3Bvd2VyX3dlbGxfZW5hYmxlX2NvbXBsZXRlKGRldl9wcml2LCBwb3dlcl93ZWxsKTsN
Cj4gPiAgDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfdGMuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+
ID4gaW5kZXggOWI4NTBjMTFhYTc4Li43NDA2MWJmOWIyYjkgMTAwNjQ0DQo+ID4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+ID4gQEAgLTM0LDYgKzM0LDcgQEAgdGNf
cG9ydF9sb2FkX2ZpYV9wYXJhbXMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUNCj4gPiAqaTkxNSwN
Cj4gPiAgCWlmIChJTlRFTF9JTkZPKGk5MTUpLT5kaXNwbGF5Lmhhc19tb2R1bGFyX2ZpYSkgew0K
PiA+ICAJCW1vZHVsYXJfZmlhID0gaW50ZWxfdW5jb3JlX3JlYWQoJmk5MTUtPnVuY29yZSwNCj4g
PiAgCQkJCQkJUE9SVF9UWF9ERkxFWERQU1AoRklBMSkNCj4gPiApOw0KPiA+ICsJCWRybV9XQVJO
X09OKCZpOTE1LT5kcm0sIG1vZHVsYXJfZmlhID09IDB4ZmZmZmZmZmYpOw0KPiA+ICAJCW1vZHVs
YXJfZmlhICY9IE1PRFVMQVJfRklBX01BU0s7DQo+ID4gIAl9IGVsc2Ugew0KPiA+ICAJCW1vZHVs
YXJfZmlhID0gMDsNCj4gPiBAQCAtNTIsNiArNTMsMzcgQEAgdGNfcG9ydF9sb2FkX2ZpYV9wYXJh
bXMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUNCj4gPiAqaTkxNSwNCj4gPiAgCX0NCj4gPiAgfQ0K
PiA+ICANCj4gPiArc3RhdGljIGludGVsX3dha2VyZWZfdA0KPiA+ICt0Y19jb2xkX2Jsb2NrKHN0
cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQ0KPiA+ICt7DQo+ID4gKwlzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoZGlnX3BvcnQtDQo+ID4gPmJhc2UuYmFz
ZS5kZXYpOw0KPiA+ICsJZW51bSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbiBkb21haW47DQo+
ID4gKw0KPiA+ICsJaWYgKElOVEVMX0dFTihpOTE1KSAhPSAxMSB8fCAhZGlnX3BvcnQtPnRjX2xl
Z2FjeV9wb3J0KQ0KPiA+ICsJCXJldHVybiAwOw0KPiA+ICsNCj4gPiArCWRvbWFpbiA9IGludGVs
X2xlZ2FjeV9hdXhfdG9fcG93ZXJfZG9tYWluKGRpZ19wb3J0LT5hdXhfY2gpOw0KPiA+ICsJcmV0
dXJuIGludGVsX2Rpc3BsYXlfcG93ZXJfZ2V0KGk5MTUsIGRvbWFpbik7DQo+ID4gK30NCj4gPiAr
DQo+ID4gK3N0YXRpYyB2b2lkDQo+ID4gK3RjX2NvbGRfdW5ibG9jayhzdHJ1Y3QgaW50ZWxfZGln
aXRhbF9wb3J0ICpkaWdfcG9ydCwNCj4gPiBpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZikNCj4gPiAr
ew0KPiA+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGRpZ19wb3J0
LQ0KPiA+ID5iYXNlLmJhc2UuZGV2KTsNCj4gPiArCWVudW0gaW50ZWxfZGlzcGxheV9wb3dlcl9k
b21haW4gZG9tYWluOw0KPiA+ICsNCj4gPiArCS8qDQo+ID4gKwkgKiB3YWtlcmVmID09IC0xLCBt
ZWFucyBzb21lIGVycm9yIGhhcHBlbmVkIHNhdmluZw0KPiA+IHNhdmVfZGVwb3Rfc3RhY2sgYnV0
DQo+ID4gKwkgKiBwb3dlciBzaG91bGQgc3RpbGwgYmUgcHV0IGRvd24gYW5kIDAgaXMgYSBpbnZh
bGlkDQo+ID4gc2F2ZV9kZXBvdF9zdGFjaw0KPiA+ICsJICogaWQgc28gY2FuIGJlIHVzZWQgdG8g
c2tpcCBpdCBmb3Igbm9uIFRDIGxlZ2FjeSBwb3J0cy4NCj4gPiArCSAqLw0KPiA+ICsJaWYgKHdh
a2VyZWYgPT0gMCkNCj4gPiArCQlyZXR1cm47DQo+ID4gKw0KPiA+ICsJZG9tYWluID0gaW50ZWxf
bGVnYWN5X2F1eF90b19wb3dlcl9kb21haW4oZGlnX3BvcnQtPmF1eF9jaCk7DQo+ID4gKwlpbnRl
bF9kaXNwbGF5X3Bvd2VyX3B1dF9hc3luYyhpOTE1LCBkb21haW4sIHdha2VyZWYpOw0KPiA+ICt9
DQo+ID4gKw0KPiA+ICB1MzIgaW50ZWxfdGNfcG9ydF9nZXRfbGFuZV9tYXNrKHN0cnVjdCBpbnRl
bF9kaWdpdGFsX3BvcnQNCj4gPiAqZGlnX3BvcnQpDQo+ID4gIHsNCj4gPiAgCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShkaWdfcG9ydC0NCj4gPiA+YmFzZS5iYXNlLmRl
dik7DQo+ID4gQEAgLTQxNSw5ICs0NDcsMTQgQEAgc3RhdGljIHZvaWQgaW50ZWxfdGNfcG9ydF9y
ZXNldF9tb2RlKHN0cnVjdA0KPiA+IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQsDQo+ID4g
IAllbnVtIHRjX3BvcnRfbW9kZSBvbGRfdGNfbW9kZSA9IGRpZ19wb3J0LT50Y19tb2RlOw0KPiA+
ICANCj4gPiAgCWludGVsX2Rpc3BsYXlfcG93ZXJfZmx1c2hfd29yayhpOTE1KTsNCj4gPiAtCWRy
bV9XQVJOX09OKCZpOTE1LT5kcm0sDQo+ID4gLQkJICAgIGludGVsX2Rpc3BsYXlfcG93ZXJfaXNf
ZW5hYmxlZChpOTE1LA0KPiA+IC0JCQkJCWludGVsX2F1eF9wb3dlcl9kb21haW4oZGlnX3BvcnQN
Cj4gPiApKSk7DQo+ID4gKwlpZiAoSU5URUxfR0VOKGk5MTUpICE9IDExIHx8ICFkaWdfcG9ydC0+
dGNfbGVnYWN5X3BvcnQpIHsNCj4gPiArCQllbnVtIGludGVsX2Rpc3BsYXlfcG93ZXJfZG9tYWlu
IGF1eF9kb21haW47DQo+ID4gKwkJYm9vbCBhdXhfcG93ZXJlZDsNCj4gPiArDQo+ID4gKwkJYXV4
X2RvbWFpbiA9IGludGVsX2F1eF9wb3dlcl9kb21haW4oZGlnX3BvcnQpOw0KPiA+ICsJCWF1eF9w
b3dlcmVkID0gaW50ZWxfZGlzcGxheV9wb3dlcl9pc19lbmFibGVkKGk5MTUsDQo+ID4gYXV4X2Rv
bWFpbik7DQo+ID4gKwkJZHJtX1dBUk5fT04oJmk5MTUtPmRybSwgYXV4X3Bvd2VyZWQpOw0KPiA+
ICsJfQ0KPiA+ICANCj4gPiAgCWljbF90Y19waHlfZGlzY29ubmVjdChkaWdfcG9ydCk7DQo+ID4g
IAlpY2xfdGNfcGh5X2Nvbm5lY3QoZGlnX3BvcnQsIHJlcXVpcmVkX2xhbmVzKTsNCj4gPiBAQCAt
NDM5LDkgKzQ3NiwxMSBAQCBpbnRlbF90Y19wb3J0X2xpbmtfaW5pdF9yZWZjb3VudChzdHJ1Y3QN
Cj4gPiBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0LA0KPiA+ICB2b2lkIGludGVsX3RjX3Bv
cnRfc2FuaXRpemUoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpDQo+ID4gIHsN
Cj4gPiAgCXN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyID0gJmRpZ19wb3J0LT5iYXNlOw0K
PiA+ICsJaW50ZWxfd2FrZXJlZl90IHRjX2NvbGRfd3JlZjsNCj4gPiAgCWludCBhY3RpdmVfbGlu
a3MgPSAwOw0KPiA+ICANCj4gPiAgCW11dGV4X2xvY2soJmRpZ19wb3J0LT50Y19sb2NrKTsNCj4g
PiArCXRjX2NvbGRfd3JlZiA9IHRjX2NvbGRfYmxvY2soZGlnX3BvcnQpOw0KPiA+ICANCj4gPiAg
CWRpZ19wb3J0LT50Y19tb2RlID0gaW50ZWxfdGNfcG9ydF9nZXRfY3VycmVudF9tb2RlKGRpZ19w
b3J0KTsNCj4gPiAgCWlmIChkaWdfcG9ydC0+ZHAuaXNfbXN0KQ0KPiA+IEBAIC00NjYsNiArNTA1
LDcgQEAgdm9pZCBpbnRlbF90Y19wb3J0X3Nhbml0aXplKHN0cnVjdA0KPiA+IGludGVsX2RpZ2l0
YWxfcG9ydCAqZGlnX3BvcnQpDQo+ID4gIAkJICAgICAgZGlnX3BvcnQtPnRjX3BvcnRfbmFtZSwN
Cj4gPiAgCQkgICAgICB0Y19wb3J0X21vZGVfbmFtZShkaWdfcG9ydC0+dGNfbW9kZSkpOw0KPiA+
ICANCj4gPiArCXRjX2NvbGRfdW5ibG9jayhkaWdfcG9ydCwgdGNfY29sZF93cmVmKTsNCj4gPiAg
CW11dGV4X3VubG9jaygmZGlnX3BvcnQtPnRjX2xvY2spOw0KPiA+ICB9DQo+ID4gIA0KPiA+IEBA
IC00ODcsMTAgKzUyNywxNSBAQCBzdGF0aWMgYm9vbCBpbnRlbF90Y19wb3J0X25lZWRzX3Jlc2V0
KHN0cnVjdA0KPiA+IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpDQo+ID4gIGJvb2wgaW50
ZWxfdGNfcG9ydF9jb25uZWN0ZWQoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQp
DQo+ID4gIHsNCj4gPiAgCWJvb2wgaXNfY29ubmVjdGVkOw0KPiA+ICsJaW50ZWxfd2FrZXJlZl90
IHRjX2NvbGRfd3JlZjsNCj4gPiAgDQo+ID4gIAlpbnRlbF90Y19wb3J0X2xvY2soZGlnX3BvcnQp
Ow0KPiA+ICsJdGNfY29sZF93cmVmID0gdGNfY29sZF9ibG9jayhkaWdfcG9ydCk7DQo+ID4gKw0K
PiA+ICAJaXNfY29ubmVjdGVkID0gdGNfcG9ydF9saXZlX3N0YXR1c19tYXNrKGRpZ19wb3J0KSAm
DQo+ID4gIAkJICAgICAgIEJJVChkaWdfcG9ydC0+dGNfbW9kZSk7DQo+ID4gKw0KPiA+ICsJdGNf
Y29sZF91bmJsb2NrKGRpZ19wb3J0LCB0Y19jb2xkX3dyZWYpOw0KPiA+ICAJaW50ZWxfdGNfcG9y
dF91bmxvY2soZGlnX3BvcnQpOw0KPiA+ICANCj4gPiAgCXJldHVybiBpc19jb25uZWN0ZWQ7DQo+
ID4gQEAgLTUwNiw5ICs1NTEsMTYgQEAgc3RhdGljIHZvaWQgX19pbnRlbF90Y19wb3J0X2xvY2so
c3RydWN0DQo+ID4gaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCwNCj4gPiAgDQo+ID4gIAlt
dXRleF9sb2NrKCZkaWdfcG9ydC0+dGNfbG9jayk7DQo+ID4gIA0KPiA+IC0JaWYgKCFkaWdfcG9y
dC0+dGNfbGlua19yZWZjb3VudCAmJg0KPiA+IC0JICAgIGludGVsX3RjX3BvcnRfbmVlZHNfcmVz
ZXQoZGlnX3BvcnQpKQ0KPiA+IC0JCWludGVsX3RjX3BvcnRfcmVzZXRfbW9kZShkaWdfcG9ydCwg
cmVxdWlyZWRfbGFuZXMpOw0KPiA+ICsJaWYgKCFkaWdfcG9ydC0+dGNfbGlua19yZWZjb3VudCkg
ew0KPiA+ICsJCWludGVsX3dha2VyZWZfdCB0Y19jb2xkX3dyZWY7DQo+ID4gKw0KPiA+ICsJCXRj
X2NvbGRfd3JlZiA9IHRjX2NvbGRfYmxvY2soZGlnX3BvcnQpOw0KPiA+ICsNCj4gPiArCQlpZiAo
aW50ZWxfdGNfcG9ydF9uZWVkc19yZXNldChkaWdfcG9ydCkpDQo+ID4gKwkJCWludGVsX3RjX3Bv
cnRfcmVzZXRfbW9kZShkaWdfcG9ydCwNCj4gPiByZXF1aXJlZF9sYW5lcyk7DQo+ID4gKw0KPiA+
ICsJCXRjX2NvbGRfdW5ibG9jayhkaWdfcG9ydCwgdGNfY29sZF93cmVmKTsNCj4gPiArCX0NCj4g
PiAgDQo+ID4gIAlkcm1fV0FSTl9PTigmaTkxNS0+ZHJtLCBkaWdfcG9ydC0+dGNfbG9ja193YWtl
cmVmKTsNCj4gPiAgCWRpZ19wb3J0LT50Y19sb2NrX3dha2VyZWYgPSB3YWtlcmVmOw0KPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+ID4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+ID4gaW5kZXggMWE3YmQ2ZGIxNjRiLi4wMzg5YWZh
MjM2MWYgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0K
PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gPiBAQCAtOTEwOCw2
ICs5MTA4LDcgQEAgZW51bSB7DQo+ID4gICNkZWZpbmUgICAgIElDTF9QQ09ERV9NRU1fU1NfUkVB
RF9RR1ZfUE9JTlRfSU5GTyhwb2ludCkJKCgocG9pbg0KPiA+IHQpIDw8IDE2KSB8ICgweDEgPDwg
OCkpDQo+ID4gICNkZWZpbmUgICBHRU42X1BDT0RFX1JFQURfRF9DT01QCQkweDEwDQo+ID4gICNk
ZWZpbmUgICBHRU42X1BDT0RFX1dSSVRFX0RfQ09NUAkJMHgxMQ0KPiA+ICsjZGVmaW5lICAgSUNM
X1BDT0RFX0VYSVRfVENDT0xECQkJMHgxMg0KPiA+ICAjZGVmaW5lICAgSFNXX1BDT0RFX0RFX1dS
SVRFX0ZSRVFfUkVRCQkweDE3DQo+ID4gICNkZWZpbmUgICBESVNQTEFZX0lQU19DT05UUk9MCQkJ
MHgxOQ0KPiA+ICAgICAgICAgICAgICAvKiBTZWUgYWxzbyBJUFNfQ1RMICovDQo+ID4gLS0gDQo+
ID4gMi4yNi4wDQo+ID4gDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
