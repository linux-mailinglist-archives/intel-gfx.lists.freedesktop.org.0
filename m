Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BCE940FEDF
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 19:52:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7F176E041;
	Fri, 17 Sep 2021 17:52:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 146696E041
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 17:52:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10110"; a="209934735"
X-IronPort-AV: E=Sophos;i="5.85,302,1624345200"; d="scan'208";a="209934735"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 10:52:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,302,1624345200"; d="scan'208";a="584078222"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga004.jf.intel.com with ESMTP; 17 Sep 2021 10:52:46 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 17 Sep 2021 10:52:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 17 Sep 2021 10:52:45 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Fri, 17 Sep 2021 10:52:45 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2VyaWVzIHN0YXJ0aW5nIHdp?=
 =?utf-8?B?dGggW3YyLDEvNV0gZHJtL2k5MTUvZGlzcGxheS9hZGxwOiBGaXggUFNSMl9N?=
 =?utf-8?B?QU5fVFJLX0NUTF9TVV9SRUdJT05fRU5EX0FERFIgY2FsY3VsYXRpb24gKHJl?=
 =?utf-8?Q?v5)?=
Thread-Index: AQHXq3yL4Ex5gvE4TkKjlt5WKmDOTauo+Y6A
Date: Fri, 17 Sep 2021 17:52:45 +0000
Message-ID: <fc84c69795560d25272a2a0de59349fe6dbf5ddc.camel@intel.com>
References: <20210914212507.177511-1-jose.souza@intel.com>
 <163185294025.810.1401451389768027698@emeril.freedesktop.org>
In-Reply-To: <163185294025.810.1401451389768027698@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <019E345EF237D049AE83DF00E0855BC7@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/5=5D_drm/i915/display/adlp=3A_Fix_P?=
 =?utf-8?q?SR2=5FMAN=5FTRK=5FCTL=5FSU=5FREGION=5FEND=5FADDR_calculation_?=
 =?utf-8?b?KHJldjUp?=
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

T24gRnJpLCAyMDIxLTA5LTE3IGF0IDA0OjI5ICswMDAwLCBQYXRjaHdvcmsgd3JvdGU6DQo+IFBh
dGNoIERldGFpbHMNCj4gU2VyaWVzOglzZXJpZXMgc3RhcnRpbmcgd2l0aCBbdjIsMS81XSBkcm0v
aTkxNS9kaXNwbGF5L2FkbHA6IEZpeCBQU1IyX01BTl9UUktfQ1RMX1NVX1JFR0lPTl9FTkRfQURE
UiBjYWxjdWxhdGlvbiAocmV2NSkNCj4gVVJMOglodHRwczovL3BhdGNod29yay5mcmVlZGVza3Rv
cC5vcmcvc2VyaWVzLzk0Njc0Lw0KPiBTdGF0ZToJZmFpbHVyZQ0KPiBEZXRhaWxzOglodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18yMTA4Mi9pbmRleC5o
dG1sDQo+IENJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzEwNjAwX2Z1bGwgLT4gUGF0
Y2h3b3JrXzIxMDgyX2Z1bGwNCj4gU3VtbWFyeQ0KPiBGQUlMVVJFDQo+IA0KPiBTZXJpb3VzIHVu
a25vd24gY2hhbmdlcyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMjEwODJfZnVsbCBhYnNvbHV0ZWx5
IG5lZWQgdG8gYmUNCj4gdmVyaWZpZWQgbWFudWFsbHkuDQo+IA0KPiBJZiB5b3UgdGhpbmsgdGhl
IHJlcG9ydGVkIGNoYW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMNCj4g
aW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMjEwODJfZnVsbCwgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1
ZyB0ZWFtIHRvIGFsbG93IHRoZW0NCj4gdG8gZG9jdW1lbnQgdGhpcyBuZXcgZmFpbHVyZSBtb2Rl
LCB3aGljaCB3aWxsIHJlZHVjZSBmYWxzZSBwb3NpdGl2ZXMgaW4gQ0kuDQo+IA0KPiBQb3NzaWJs
ZSBuZXcgaXNzdWVzDQo+IEhlcmUgYXJlIHRoZSB1bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2
ZSBiZWVuIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzIxMDgyX2Z1bGw6DQo+IA0KPiBJR1QgY2hh
bmdlcw0KPiBQb3NzaWJsZSByZWdyZXNzaW9ucw0KPiBpZ3RAaTkxNV9wbV9ycG1AZ2VtLW1tYXAt
dHlwZToNCg0KQW5vdGhlciBJTkNPTVBMRVRFIGJlY2F1c2Ugb2YgYXVkaW8gaXNzdWVzLCBub3Qg
cmVsYXRlZC4NCg0KPiANCj4gc2hhcmQta2JsOiBOT1RSVU4gLT4gSU5DT01QTEVURQ0KPiBpZ3RA
a21zX2F0b21pY0BwbGFuZS1pbnZhbGlkLXBhcmFtczoNCj4gDQo+IHNoYXJkLWljbGI6IFBBU1Mg
LT4gRE1FU0ctV0FSTg0KDQpUaGlzIGlzIGEgbWlzc2luZyBGQkMgY2FzZSwgbm90IHJlbGF0ZWQg
dG8gdGhpcyBjaGFuZ2VzLg0KDQpQdXNoaW5nIHRoaXMgc2VyaWVzIGV2ZW4gd2l0aCBDSSBub3Qg
MTAwJSBiYWNrLCA0IG9mIDUgcGF0Y2hlcyBoZXJlIG9ubHkgYWZmZWN0cyBhIGZlYXR1cmUgdGhh
dCBpcyBub3QgZW5hYmxlZCBieSBkZWZhdWx0IHRoZSByZW1haW5pbmcgb25lIG9ubHkgbWFrZXMN
CnN1cmUgdGhhdCBFRFBfUFNSMl9GUkFNRV9CRUZPUkVfU1UoKSBtaW5pbXVtIGlzIDIgYW5kIG5v
dCAxLg0KDQpUaGUgZGlzY3Vzc2luZyBnb2luZyBpbiAnZHJtL2k5MTUvZGlzcGxheTogV29ya2Fy
b3VuZCBjdXJzb3IgbGVmdCBvdmVycyB3aXRoIFBTUjIgc2VsZWN0aXZlIGZldGNoIGVuYWJsZWQn
IGFyZSBub3Qgc3BlY2lmaWMgYWJvdXQgdGhhdCBwYXRjaC4NCg0KVGhhbmtzIGZvciB0aGUgcmV2
aWV3cyBHRy4NCg0KPiBLbm93biBpc3N1ZXMNCj4gSGVyZSBhcmUgdGhlIGNoYW5nZXMgZm91bmQg
aW4gUGF0Y2h3b3JrXzIxMDgyX2Z1bGwgdGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVzOg0KPiAN
Cj4gSUdUIGNoYW5nZXMNCj4gSXNzdWVzIGhpdA0KPiBpZ3RAZGV2aWNlX3Jlc2V0QHVuYmluZC1y
ZXNldC1yZWJpbmQ6DQo+IA0KPiBzaGFyZC1rYmw6IE5PVFJVTiAtPiBETUVTRy1XQVJOIChpOTE1
IzQxMzApDQo+IGlndEBmZWF0dXJlX2Rpc2NvdmVyeUBjaGFtZWxpdW06DQo+IA0KPiBzaGFyZC1z
a2w6IE5PVFJVTiAtPiBTS0lQIChmZG8jMTA5MjcxKSArMTggc2ltaWxhciBpc3N1ZXMNCj4gaWd0
QGdlbV9laW9AdW53ZWRnZS1zdHJlc3M6DQo+IA0KPiBzaGFyZC1za2w6IFBBU1MgLT4gVElNRU9V
VCAoaTkxNSMyMzY5IC8gaTkxNSMzMDYzKQ0KPiBpZ3RAZ2VtX2V4ZWNfZmFpckBiYXNpYy1ub25l
LXNvbG9AcmNzMDoNCj4gDQo+IHNoYXJkLXRnbGI6IE5PVFJVTiAtPiBGQUlMIChpOTE1IzI4NDIp
DQo+IGlndEBnZW1fZXhlY19mYWlyQGJhc2ljLXBhY2VAdmNzMDoNCj4gDQo+IHNoYXJkLWtibDog
UEFTUyAtPiBGQUlMIChpOTE1IzI4NDIpDQo+IGlndEBnZW1fZXhlY19mYWlyQGJhc2ljLXBhY2VA
dmNzMToNCj4gDQo+IHNoYXJkLWljbGI6IE5PVFJVTiAtPiBGQUlMIChpOTE1IzI4NDIpDQo+IGln
dEBnZW1fcHJlYWRAZXhoYXVzdGlvbjoNCj4gDQo+IHNoYXJkLXRnbGI6IE5PVFJVTiAtPiBXQVJO
IChpOTE1IzI2NTgpDQo+IA0KPiBzaGFyZC1rYmw6IE5PVFJVTiAtPiBXQVJOIChpOTE1IzI2NTgp
DQo+IA0KPiBpZ3RAZ2VtX3VzZXJwdHJfYmxpdHNAaW5wdXQtY2hlY2tpbmc6DQo+IA0KPiBzaGFy
ZC1rYmw6IE5PVFJVTiAtPiBETUVTRy1XQVJOIChpOTE1IzMwMDIpDQo+IGlndEBnZW45X2V4ZWNf
cGFyc2VAYmItc3RhcnQtY21kOg0KPiANCj4gc2hhcmQtdGdsYjogTk9UUlVOIC0+IFNLSVAgKGk5
MTUjMjg1NikNCj4gaWd0QGk5MTVfcG1fcmM2X3Jlc2lkZW5jeUBtZWRpYS1yYzYtYWNjdXJhY3k6
DQo+IA0KPiBzaGFyZC10Z2xiOiBOT1RSVU4gLT4gU0tJUCAoZmRvIzEwOTI4OSAvIGZkbyMxMTE3
MTkpDQo+IGlndEBpOTE1X3BtX3JwbUBtb2Rlc2V0LXBjOC1yZXNpZGVuY3ktc3RyZXNzOg0KPiAN
Cj4gc2hhcmQtdGdsYjogTk9UUlVOIC0+IFNLSVAgKGZkbyMxMDk1MDYgLyBpOTE1IzI0MTEpDQo+
IGlndEBpOTE1X3N1c3BlbmRAZmVuY2UtcmVzdG9yZS11bnRpbGVkOg0KPiANCj4gc2hhcmQta2Js
OiBOT1RSVU4gLT4gRE1FU0ctV0FSTiAoaTkxNSMxODApICsxIHNpbWlsYXIgaXNzdWUNCj4gaWd0
QGttc19hdG9taWNAY3J0Yy1pbnZhbGlkLXBhcmFtcy1mZW5jZToNCj4gDQo+IHNoYXJkLWljbGI6
IFBBU1MgLT4gRE1FU0ctV0FSTiAoaTkxNSMzNzI4KQ0KPiBpZ3RAa21zX2JpZ19mYkB4LXRpbGVk
LW1heC1ody1zdHJpZGUtMzJicHAtcm90YXRlLTAtaGZsaXA6DQo+IA0KPiBzaGFyZC1rYmw6IE5P
VFJVTiAtPiBTS0lQIChmZG8jMTA5MjcxIC8gaTkxNSMzNzc3KSArMSBzaW1pbGFyIGlzc3VlDQo+
IGlndEBrbXNfYmlnX2ZiQHktdGlsZWQtbWF4LWh3LXN0cmlkZS02NGJwcC1yb3RhdGUtMC1hc3lu
Yy1mbGlwOg0KPiANCj4gc2hhcmQtc2tsOiBOT1RSVU4gLT4gRkFJTCAoaTkxNSMzNzYzKQ0KPiBp
Z3RAa21zX2JpZ19mYkB5Zi10aWxlZC1tYXgtaHctc3RyaWRlLTMyYnBwLXJvdGF0ZS0wLWhmbGlw
LWFzeW5jLWZsaXA6DQo+IA0KPiBzaGFyZC10Z2xiOiBOT1RSVU4gLT4gU0tJUCAoZmRvIzExMTYx
NSkgKzEgc2ltaWxhciBpc3N1ZQ0KPiBpZ3RAa21zX2Njc0BwaXBlLWEtY2NzLW9uLWFub3RoZXIt
Ym8teV90aWxlZF9jY3M6DQo+IA0KPiBzaGFyZC10Z2xiOiBOT1RSVU4gLT4gU0tJUCAoaTkxNSMz
Njg5KQ0KPiBpZ3RAa21zX2Njc0BwaXBlLWEtY3JjLXByaW1hcnktcm90YXRpb24tMTgwLXlfdGls
ZWRfZ2VuMTJfcmNfY2NzX2NjOg0KPiANCj4gc2hhcmQta2JsOiBOT1RSVU4gLT4gU0tJUCAoZmRv
IzEwOTI3MSAvIGk5MTUjMzg4NikgKzYgc2ltaWxhciBpc3N1ZXMNCj4gaWd0QGttc19jY3NAcGlw
ZS1hLXJhbmRvbS1jY3MtZGF0YS15X3RpbGVkX2dlbjEyX21jX2NjczoNCj4gDQo+IHNoYXJkLXNr
bDogTk9UUlVOIC0+IFNLSVAgKGZkbyMxMDkyNzEgLyBpOTE1IzM4ODYpICsxIHNpbWlsYXIgaXNz
dWUNCj4gaWd0QGttc19jY3NAcGlwZS1iLWJhZC1hdXgtc3RyaWRlLXlfdGlsZWRfZ2VuMTJfbWNf
Y2NzOg0KPiANCj4gc2hhcmQtdGdsYjogTk9UUlVOIC0+IFNLSVAgKGk5MTUjMzY4OSAvIGk5MTUj
Mzg4NikgKzIgc2ltaWxhciBpc3N1ZXMNCj4gaWd0QGttc19jaGFtZWxpdW1AZHAtaHBkLXN0b3Jt
Og0KPiANCj4gc2hhcmQtc2tsOiBOT1RSVU4gLT4gU0tJUCAoZmRvIzEwOTI3MSAvIGZkbyMxMTE4
MjcpDQo+IGlndEBrbXNfY2hhbWVsaXVtQGhkbWktaHBkLWZvci1lYWNoLXBpcGU6DQo+IA0KPiBz
aGFyZC1rYmw6IE5PVFJVTiAtPiBTS0lQIChmZG8jMTA5MjcxIC8gZmRvIzExMTgyNykgKzEyIHNp
bWlsYXIgaXNzdWVzDQo+IGlndEBrbXNfY29sb3JfY2hhbWVsaXVtQHBpcGUtYy1nYW1tYToNCj4g
DQo+IHNoYXJkLXRnbGI6IE5PVFJVTiAtPiBTS0lQIChmZG8jMTA5Mjg0IC8gZmRvIzExMTgyNykg
KzYgc2ltaWxhciBpc3N1ZXMNCj4gaWd0QGttc19jdXJzb3JfY3JjQHBpcGUtYy1jdXJzb3ItNTEy
eDE3MC1yYXBpZC1tb3ZlbWVudDoNCj4gDQo+IHNoYXJkLXRnbGI6IE5PVFJVTiAtPiBTS0lQIChp
OTE1IzMzNTkpICsxIHNpbWlsYXIgaXNzdWUNCj4gaWd0QGttc19jdXJzb3JfY3JjQHBpcGUtZC1j
dXJzb3ItNTEyeDE3MC1zbGlkaW5nOg0KPiANCj4gc2hhcmQtdGdsYjogTk9UUlVOIC0+IFNLSVAg
KGZkbyMxMDkyNzkgLyBpOTE1IzMzNTkpDQo+IGlndEBrbXNfY3Vyc29yX2NyY0BwaXBlLWQtY3Vy
c29yLXN1c3BlbmQ6DQo+IA0KPiBzaGFyZC1rYmw6IE5PVFJVTiAtPiBTS0lQIChmZG8jMTA5Mjcx
KSArOTggc2ltaWxhciBpc3N1ZXMNCj4gaWd0QGttc19mbGlwQGZsaXAtdnMtZXhwaXJlZC12Ymxh
bmtAYS1lZHAxOg0KPiANCj4gc2hhcmQtc2tsOiBQQVNTIC0+IEZBSUwgKGk5MTUjNzkpICsxIHNp
bWlsYXIgaXNzdWUNCj4gaWd0QGttc19mbGlwQGZsaXAtdnMtc3VzcGVuZEBhLWVkcDE6DQo+IA0K
PiBzaGFyZC10Z2xiOiBQQVNTIC0+IElOQ09NUExFVEUgKGk5MTUjNDU2KSArMyBzaW1pbGFyIGlz
c3Vlcw0KPiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGZiYy0ycC1zY25kc2Nybi1jdXIt
aW5kZmItb25vZmY6DQo+IA0KPiBzaGFyZC10Z2xiOiBOT1RSVU4gLT4gU0tJUCAoZmRvIzExMTgy
NSkgKzEwIHNpbWlsYXIgaXNzdWVzDQo+IGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJj
cHNyLXN1c3BlbmQ6DQo+IA0KPiBzaGFyZC10Z2xiOiBQQVNTIC0+IElOQ09NUExFVEUgKGk5MTUj
MjQxMSAvIGk5MTUjNDU2KQ0KPiBpZ3RAa21zX2hkckBicGMtc3dpdGNoLWRwbXM6DQo+IA0KPiBz
aGFyZC1za2w6IFBBU1MgLT4gRkFJTCAoaTkxNSMxMTg4KQ0KPiBpZ3RAa21zX3BsYW5lQHBsYW5l
LXBhbm5pbmctYm90dG9tLXJpZ2h0LXN1c3BlbmRAcGlwZS1iLXBsYW5lczoNCj4gDQo+IHNoYXJk
LWtibDogUEFTUyAtPiBETUVTRy1XQVJOIChpOTE1IzE4MCkgKzQgc2ltaWxhciBpc3N1ZXMNCj4g
aWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWItY292ZXJhZ2UtN2VmYzoNCj4gDQo+IHNo
YXJkLXNrbDogUEFTUyAtPiBGQUlMIChmZG8jMTA4MTQ1IC8gaTkxNSMyNjUpICsxIHNpbWlsYXIg
aXNzdWUNCj4gaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWMtYWxwaGEtb3BhcXVlLWZi
Og0KPiANCj4gc2hhcmQta2JsOiBOT1RSVU4gLT4gRkFJTCAoZmRvIzEwODE0NSAvIGk5MTUjMjY1
KQ0KPiBpZ3RAa21zX3BsYW5lX2xvd3Jlc0BwaXBlLWMtdGlsaW5nLXg6DQo+IA0KPiBzaGFyZC10
Z2xiOiBOT1RSVU4gLT4gU0tJUCAoaTkxNSMzNTM2KQ0KPiBpZ3RAa21zX3BsYW5lX211bHRpcGxl
QGF0b21pYy1waXBlLWItdGlsaW5nLXlmOg0KPiANCj4gc2hhcmQtdGdsYjogTk9UUlVOIC0+IFNL
SVAgKGZkbyMxMTIwNTQpDQo+IGlndEBrbXNfcHNyMl9zZkBvdmVybGF5LXBsYW5lLXVwZGF0ZS1z
Zi1kbWctYXJlYS0zOg0KPiANCj4gc2hhcmQta2JsOiBOT1RSVU4gLT4gU0tJUCAoZmRvIzEwOTI3
MSAvIGk5MTUjNjU4KSArMiBzaW1pbGFyIGlzc3Vlcw0KPiBpZ3RAa21zX3BzckBwc3IyX25vX2Ry
cnM6DQo+IA0KPiBzaGFyZC1pY2xiOiBQQVNTIC0+IFNLSVAgKGZkbyMxMDk0NDEpDQo+IGlndEBr
bXNfc3lzZnNfZWRpZF90aW1pbmc6DQo+IA0KPiBzaGFyZC1rYmw6IE5PVFJVTiAtPiBGQUlMIChJ
R1QjMikNCj4gaWd0QG5vdXZlYXVfY3JjQHBpcGUtYi1jdHgtZmxpcC1kZXRlY3Rpb246DQo+IA0K
PiBzaGFyZC10Z2xiOiBOT1RSVU4gLT4gU0tJUCAoaTkxNSMyNTMwKQ0KPiBpZ3RAcGVyZkBwb2xs
aW5nLXNtYWxsLWJ1ZjoNCj4gDQo+IHNoYXJkLXRnbGI6IFBBU1MgLT4gRkFJTCAoaTkxNSMxNzIy
KQ0KPiBpZ3RAcHJpbWVfbnZfYXBpQGk5MTVfbnZfZG91YmxlX2ltcG9ydDoNCj4gDQo+IHNoYXJk
LXRnbGI6IE5PVFJVTiAtPiBTS0lQIChmZG8jMTA5MjkxKSArMiBzaW1pbGFyIGlzc3Vlcw0KPiBp
Z3RAc3lzZnNfY2xpZW50c0ByZWN5Y2xlOg0KPiANCj4gc2hhcmQta2JsOiBOT1RSVU4gLT4gU0tJ
UCAoZmRvIzEwOTI3MSAvIGk5MTUjMjk5NCkNCj4gUG9zc2libGUgZml4ZXMNCj4gaWd0QGdlbV9j
dHhfcGVyc2lzdGVuY2VAbWFueS1jb250ZXh0czoNCj4gDQo+IHNoYXJkLXRnbGI6IEZBSUwgKGk5
MTUjMjQxMCkgLT4gUEFTUw0KPiBpZ3RAZ2VtX2V4ZWNfZmFpckBiYXNpYy1ub25lLXNoYXJlQHJj
czA6DQo+IA0KPiBzaGFyZC1pY2xiOiBGQUlMIChpOTE1IzI4NDIpIC0+IFBBU1MNCj4gDQo+IHNo
YXJkLXRnbGI6IEZBSUwgKGk5MTUjMjg0MikgLT4gUEFTUyArMSBzaW1pbGFyIGlzc3VlDQo+IA0K
PiBpZ3RAZ2VuOV9leGVjX3BhcnNlQGFsbG93ZWQtc2luZ2xlOg0KPiANCj4gc2hhcmQtc2tsOiBE
TUVTRy1XQVJOIChpOTE1IzE0MzYgLyBpOTE1IzcxNikgLT4gUEFTUw0KPiBpZ3RAaTkxNV9wbV9y
cG1Ac3lzdGVtLXN1c3BlbmQtZXhlY2J1ZjoNCj4gDQo+IHNoYXJkLXRnbGI6IElOQ09NUExFVEUg
KGk5MTUjMjQxMSAvIGk5MTUjNDU2IC8gaTkxNSM3NTApIC0+IFBBU1MNCj4gaWd0QGttc19jdXJz
b3JfY3JjQHBpcGUtYS1jdXJzb3Itc3VzcGVuZDoNCj4gDQo+IHNoYXJkLWtibDogRE1FU0ctV0FS
TiAoaTkxNSMxODApIC0+IFBBU1MgKzkgc2ltaWxhciBpc3N1ZXMNCj4gaWd0QGttc19mbGlwQGZs
aXAtdnMtZXhwaXJlZC12YmxhbmtAYi1lZHAxOg0KPiANCj4gc2hhcmQtc2tsOiBGQUlMIChpOTE1
Izc5KSAtPiBQQVNTDQo+IGlndEBrbXNfcGlwZV9jcmNfYmFzaWNAc3VzcGVuZC1yZWFkLWNyYy1w
aXBlLWM6DQo+IA0KPiBzaGFyZC10Z2xiOiBJTkNPTVBMRVRFIChpOTE1IzI4MjggLyBpOTE1IzQ1
NikgLT4gUEFTUw0KPiBpZ3RAa21zX3BzcjJfc3VAZnJvbnRidWZmZXI6DQo+IA0KPiBzaGFyZC1p
Y2xiOiBTS0lQIChmZG8jMTA5NjQyIC8gZmRvIzExMTA2OCAvIGk5MTUjNjU4KSAtPiBQQVNTDQo+
IFdhcm5pbmdzDQo+IGlndEBnZW1fZXhlY19mYWlyQGJhc2ljLXBhY2VAdmVjczA6DQo+IA0KPiBz
aGFyZC1rYmw6IEZBSUwgKGk5MTUjMjg0MikgLT4gU0tJUCAoZmRvIzEwOTI3MSkNCj4gaWd0QGk5
MTVfcG1fcmM2X3Jlc2lkZW5jeUByYzYtZmVuY2U6DQo+IA0KPiBzaGFyZC1pY2xiOiBXQVJOIChp
OTE1IzE4MDQgLyBpOTE1IzI2ODQpIC0+IFdBUk4gKGk5MTUjMjY4NCkNCj4gaWd0QGttc19iaWdf
ZmJAeS10aWxlZC1tYXgtaHctc3RyaWRlLTMyYnBwLXJvdGF0ZS0wLWFzeW5jLWZsaXA6DQo+IA0K
PiBzaGFyZC1za2w6IEZBSUwgKGk5MTUjMzcyMikgLT4gRkFJTCAoaTkxNSMzNzQzKQ0KPiBpZ3RA
cnVubmVyQGFib3J0ZWQ6DQo+IA0KPiBzaGFyZC1rYmw6IChGQUlMLCBGQUlMLCBGQUlMLCBGQUlM
LCBGQUlMLCBGQUlMLCBGQUlMLCBGQUlMLCBGQUlMLCBGQUlMLCBGQUlMLCBGQUlMLCBGQUlMLCBG
QUlMKSAoZmRvIzEwOTI3MSAvIGk5MTUjMTQzNiAvIGk5MTUjMTgwIC8gaTkxNSMxODE0IC8NCmk5
MTUjMzAwMiAvIGk5MTUjMzM2MyAvIGk5MTUjNjAyKSAtPiAoRkFJTCwgRkFJTCwgRkFJTCwgRkFJ
TCwgRkFJTCwgRkFJTCwgRkFJTCwgRkFJTCwgRkFJTCwgRkFJTCwgRkFJTCwgRkFJTCwgRkFJTCkg
KGZkbyMxMDkyNzEgLyBpOTE1IzE0MzYgLyBpOTE1IzE4MA0KLyBpOTE1IzE4MTQgLyBpOTE1IzI3
MjIgLyBpOTE1IzMwMDIgLyBpOTE1IzMzNjMpDQo+IA0KPiBzaGFyZC1pY2xiOiAoRkFJTCwgRkFJ
TCkgKGk5MTUjMTgxNCAvIGk5MTUjMzAwMikgLT4gKEZBSUwsIEZBSUwsIEZBSUwsIEZBSUwpIChp
OTE1IzE4MTQgLyBpOTE1IzMwMDIgLyBpOTE1IzM3MjgpDQo+IA0KPiBzaGFyZC1za2w6IChGQUlM
LCBGQUlMLCBGQUlMKSAoaTkxNSMxNDM2IC8gaTkxNSMxODE0IC8gaTkxNSMzMDAyIC8gaTkxNSMz
MzYzKSAtPiAoRkFJTCwgRkFJTCkgKGk5MTUjMTgxNCAvIGk5MTUjMzAwMiAvIGk5MTUjMzM2MykN
Cj4gDQo+IHtuYW1lfTogVGhpcyBlbGVtZW50IGlzIHN1cHByZXNzZWQuIFRoaXMgbWVhbnMgaXQg
aXMgaWdub3JlZCB3aGVuIGNvbXB1dGluZw0KPiB0aGUgc3RhdHVzIG9mIHRoZSBkaWZmZXJlbmNl
IChTVUNDRVNTLCBXQVJOSU5HLCBvciBGQUlMVVJFKS4NCj4gDQo+IFBhcnRpY2lwYXRpbmcgaG9z
dHMgKDEwIC0+IDEwKQ0KPiBObyBjaGFuZ2VzIGluIHBhcnRpY2lwYXRpbmcgaG9zdHMNCj4gDQo+
IEJ1aWxkIGNoYW5nZXMNCj4gTGludXg6IENJX0RSTV8xMDYwMCAtPiBQYXRjaHdvcmtfMjEwODIN
Cj4gQ0ktMjAxOTA1Mjk6IDIwMTkwNTI5DQo+IENJX0RSTV8xMDYwMDogNmQwMzBkMmYxODgyMjJi
NzI4MzNkYjc2NDY2MjM5M2U4ZDQ5MjMyNSBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3Jn
L2dmeC1jaS9saW51eA0KPiBJR1RfNjIxMTogN2IyNzViM2ViMTdkZGY2ZTdjNWI3YjliYTM1OWI3
ZjUzNDVhNTMxMSBAIGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaWd0LWdwdS10
b29scy5naXQNCj4gUGF0Y2h3b3JrXzIxMDgyOiBiNmJlMGM0MjRhMjRlMGY0MDhkOWZmNTJiNWEy
YWUwNGYxMTUxM2YzIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4
DQo+IHBpZ2xpdF80NTA5OiBmZGM1YTRjYTExMTI0YWI4NDEzYzc5ODg4OTZlZWM0Yzk3MzM2Njk0
IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvcGlnbGl0DQo+IA0KPiANCg==
