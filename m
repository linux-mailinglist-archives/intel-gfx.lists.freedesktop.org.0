Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50CF586AC4
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 21:48:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6A9C6E8B6;
	Thu,  8 Aug 2019 19:48:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 721456E8B7
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 19:48:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Aug 2019 12:48:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,362,1559545200"; d="scan'208";a="326417180"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga004.jf.intel.com with ESMTP; 08 Aug 2019 12:48:49 -0700
Received: from fmsmsx157.amr.corp.intel.com (10.18.116.73) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 8 Aug 2019 12:48:49 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.88]) by
 FMSMSX157.amr.corp.intel.com ([169.254.14.33]) with mapi id 14.03.0439.000;
 Thu, 8 Aug 2019 12:48:49 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0gIOKclyBGaS5DSS5JR1Q6IGZhaWx1cmUgZm9yIHNlcmll?=
 =?utf-8?B?cyBzdGFydGluZyB3aXRoIFt2NCwxLzJdIGRybS9pOTE1OiBHZXQgdHJhbnNj?=
 =?utf-8?Q?oder_power_domain_before_reading_its_register?=
Thread-Index: AQHVTfApDqDVwuYUjUK7v0V8rW2UhabyD4oAgAAOgAA=
Date: Thu, 8 Aug 2019 19:48:48 +0000
Message-ID: <573ab99e532a500cb3fac5bd89827edef6bc1817.camel@intel.com>
References: <20190808004935.1787-1-jose.souza@intel.com>
 <20190808134954.4817.31260@emeril.freedesktop.org>
 <4ff9aaf7b9a636fa0a43ec128f979ea42bdf4dda.camel@intel.com>
In-Reply-To: <4ff9aaf7b9a636fa0a43ec128f979ea42bdf4dda.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.51]
Content-ID: <827CB6319D95AE42A8F5AF3A7B6255F3@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv4=2C1/2=5D_drm/i915=3A_Get_transcoder_pow?=
 =?utf-8?q?er_domain_before_reading_its_register?=
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

T24gVGh1LCAyMDE5LTA4LTA4IGF0IDE4OjU2ICswMDAwLCBTb3V6YSwgSm9zZSB3cm90ZToNCj4g
T24gVGh1LCAyMDE5LTA4LTA4IGF0IDEzOjQ5ICswMDAwLCBQYXRjaHdvcmsgd3JvdGU6DQo+ID4g
PT0gU2VyaWVzIERldGFpbHMgPT0NCj4gPiANCj4gPiBTZXJpZXM6IHNlcmllcyBzdGFydGluZyB3
aXRoIFt2NCwxLzJdIGRybS9pOTE1OiBHZXQgdHJhbnNjb2Rlcg0KPiA+IHBvd2VyDQo+ID4gZG9t
YWluIGJlZm9yZSByZWFkaW5nIGl0cyByZWdpc3Rlcg0KPiA+IFVSTCAgIDogaHR0cHM6Ly9wYXRj
aHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82NDg3Ny8NCj4gPiBTdGF0ZSA6IGZhaWx1cmUN
Cj4gPiANCj4gPiA9PSBTdW1tYXJ5ID09DQo+ID4gDQo+ID4gQ0kgQnVnIExvZyAtIGNoYW5nZXMg
ZnJvbSBDSV9EUk1fNjY1Ml9mdWxsIC0+IFBhdGNod29ya18xMzkwOV9mdWxsDQo+ID4gPT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQ0KPiA+IA0KPiA+
IFN1bW1hcnkNCj4gPiAtLS0tLS0tDQo+ID4gDQo+ID4gICAqKkZBSUxVUkUqKg0KPiA+IA0KPiA+
ICAgU2VyaW91cyB1bmtub3duIGNoYW5nZXMgY29taW5nIHdpdGggUGF0Y2h3b3JrXzEzOTA5X2Z1
bGwNCj4gPiBhYnNvbHV0ZWx5DQo+ID4gbmVlZCB0byBiZQ0KPiA+ICAgdmVyaWZpZWQgbWFudWFs
bHkuDQo+ID4gICANCj4gPiAgIElmIHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hhbmdlcyBoYXZl
IG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUNCj4gPiBjaGFuZ2VzDQo+ID4gICBpbnRyb2R1Y2VkIGlu
IFBhdGNod29ya18xMzkwOV9mdWxsLCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0NCj4gPiB0
bw0KPiA+IGFsbG93IHRoZW0NCj4gPiAgIHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9k
ZSwgd2hpY2ggd2lsbCByZWR1Y2UgZmFsc2UNCj4gPiBwb3NpdGl2ZXMgaW4gQ0kuDQo+ID4gDQo+
ID4gICANCj4gPiANCj4gPiBQb3NzaWJsZSBuZXcgaXNzdWVzDQo+ID4gLS0tLS0tLS0tLS0tLS0t
LS0tLQ0KPiA+IA0KPiA+ICAgSGVyZSBhcmUgdGhlIHVua25vd24gY2hhbmdlcyB0aGF0IG1heSBo
YXZlIGJlZW4gaW50cm9kdWNlZCBpbg0KPiA+IFBhdGNod29ya18xMzkwOV9mdWxsOg0KPiA+IA0K
PiA+ICMjIyBJR1QgY2hhbmdlcyAjIyMNCj4gPiANCj4gPiAjIyMjIFBvc3NpYmxlIHJlZ3Jlc3Np
b25zICMjIyMNCj4gPiANCj4gPiAgICogaWd0QGdlbV9leGVjX3NjaGVkdWxlQHByZWVtcHQtcXVl
dWUtYnNkOg0KPiA+ICAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzFdIC0+IFtTS0lQ
XVsyXQ0KPiA+ICAgIFsxXTogDQo+ID4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fNjY1Mi9zaGFyZC1pY2xiNy9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcHJl
ZW1wdC1xdWV1ZS1ic2QuaHRtbA0KPiA+ICAgIFsyXTogDQo+ID4gaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM5MDkvc2hhcmQtaWNsYjIvaWd0QGdl
bV9leGVjX3NjaGVkdWxlQHByZWVtcHQtcXVldWUtYnNkLmh0bWwNCj4gDQo+IE5vdCByZWxhdGVk
DQo+IA0KPiA+ICAgKiBpZ3RAa21zX2ZsaXBAYmFzaWMtZmxpcC12cy13Zl92Ymxhbms6DQo+ID4g
ICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBbUEFTU11bM10gLT4gW0RNRVNHLVdBUk5dWzRdDQo+
ID4gICAgWzNdOiANCj4gPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV82NjUyL3NoYXJkLWFwbDEvaWd0QGttc19mbGlwQGJhc2ljLWZsaXAtdnMtd2ZfdmJs
YW5rLmh0bWwNCj4gPiAgICBbNF06IA0KPiA+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzOTA5L3NoYXJkLWFwbDEvaWd0QGttc19mbGlwQGJhc2lj
LWZsaXAtdnMtd2ZfdmJsYW5rLmh0bWwNCj4gPiANCj4gDQo+IFRoaXMgaGF2ZSBIRENQIHdhcm5p
bmdzLCBub3QgcmVsYXRlZCBhdCBhbGwuDQo+IA0KPiA+ICAgKiBpZ3RAcnVubmVyQGFib3J0ZWQ6
DQo+ID4gICAgIC0gc2hhcmQtaHN3OiAgICAgICAgICBOT1RSVU4gLT4gW0ZBSUxdWzVdDQo+ID4g
ICAgWzVdOiANCj4gPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xMzkwOS9zaGFyZC1oc3c0L2lndEBydW5uZXJAYWJvcnRlZC5odG1sDQo+IA0KPiBB
bHNvIG5vdCByZWxhdGVkIHdpdGggdGhpcyBjaGFuZ2VzLg0KPiANCj4gPiAgIA0KPiA+ICMjIyMg
V2FybmluZ3MgIyMjIw0KPiA+IA0KPiA+ICAgKiBpZ3RAZ2VtX21vY3Nfc2V0dGluZ3NAbW9jcy1z
ZXR0aW5ncy1ic2QyOg0KPiA+ICAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1NLSVBdWzZdIChb
ZmRvIzEwOTI3Nl0pIC0+IFtGQUlMXVs3XQ0KPiA+ICAgIFs2XTogDQo+ID4gaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjY1Mi9zaGFyZC1pY2xiNy9pZ3RA
Z2VtX21vY3Nfc2V0dGluZ3NAbW9jcy1zZXR0aW5ncy1ic2QyLmh0bWwNCj4gPiAgICBbN106IA0K
PiA+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEz
OTA5L3NoYXJkLWljbGIyL2lndEBnZW1fbW9jc19zZXR0aW5nc0Btb2NzLXNldHRpbmdzLWJzZDIu
aHRtbA0KPiANCj4gTm90IHJlbGF0ZWQgYW5kIGFscmVhZHkgaGF2ZSBhIEZETy4NCj4gDQo+IA0K
PiBTbyBwdXNoaW5nIHRoaXMgY2hhbmdlcyB0byBkaW5xLg0KDQoNClB1c2hlZCwgdGhhbmtzIGZv
ciB0aGUgcmV2aWV3IEx1Y2FzLg0KDQo+IA0KPiA+ICAgDQo+ID4gS25vd24gaXNzdWVzDQo+ID4g
LS0tLS0tLS0tLS0tDQo+ID4gDQo+ID4gICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQ
YXRjaHdvcmtfMTM5MDlfZnVsbCB0aGF0IGNvbWUgZnJvbQ0KPiA+IGtub3duIGlzc3VlczoNCj4g
PiANCj4gPiAjIyMgSUdUIGNoYW5nZXMgIyMjDQo+ID4gDQo+ID4gIyMjIyBJc3N1ZXMgaGl0ICMj
IyMNCj4gPiANCj4gPiAgICogaWd0QGdlbV9leGVjX3NjaGVkdWxlQGluLW9yZGVyLWJzZDoNCj4g
PiAgICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVs4XSAtPiBbU0tJUF1bOV0gKFtmZG8j
MTExMzI1XSkgKzQNCj4gPiBzaW1pbGFyIGlzc3Vlcw0KPiA+ICAgIFs4XTogDQo+ID4gaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjY1Mi9zaGFyZC1pY2xi
OC9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAaW4tb3JkZXItYnNkLmh0bWwNCj4gPiAgICBbOV06IA0K
PiA+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEz
OTA5L3NoYXJkLWljbGIxL2lndEBnZW1fZXhlY19zY2hlZHVsZUBpbi1vcmRlci1ic2QuaHRtbA0K
PiA+IA0KPiA+ICAgKiBpZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcHJlZW1wdC1xdWV1ZS1jaGFpbi1y
ZW5kZXI6DQo+ID4gICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bMTBdIC0+IFtJTkNP
TVBMRVRFXVsxMV0NCj4gPiAoW2ZkbyMxMDc3MTNdKQ0KPiA+ICAgIFsxMF06IA0KPiA+IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY2NTIvc2hhcmQtaWNs
YjYvaWd0QGdlbV9leGVjX3NjaGVkdWxlQHByZWVtcHQtcXVldWUtY2hhaW4tcmVuZGVyLmh0bWwN
Cj4gPiAgICBbMTFdOiANCj4gPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xMzkwOS9zaGFyZC1pY2xiMS9pZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAcHJl
ZW1wdC1xdWV1ZS1jaGFpbi1yZW5kZXIuaHRtbA0KPiA+IA0KPiA+ICAgKiBpZ3RAaTkxNV9wbV9y
cHNAcmVzZXQ6DQo+ID4gICAgIC0gc2hhcmQtZ2xrOiAgICAgICAgICBbUEFTU11bMTJdIC0+IFtG
QUlMXVsxM10gKFtmZG8jMTAyMjUwXSkNCj4gPiAgICBbMTJdOiANCj4gPiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NjUyL3NoYXJkLWdsazYvaWd0QGk5
MTVfcG1fcnBzQHJlc2V0Lmh0bWwNCj4gPiAgICBbMTNdOiANCj4gPiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzkwOS9zaGFyZC1nbGs3L2lndEBp
OTE1X3BtX3Jwc0ByZXNldC5odG1sDQo+ID4gDQo+ID4gICAqIGlndEBrbXMNCj4gPiBfYXRvbWlj
X3RyYW5zaXRpb25AMXgtbW9kZXNldC10cmFuc2l0aW9ucy1ub25ibG9ja2luZy1mZW5jaW5nOg0K
PiA+ICAgICAtIHNoYXJkLWtibDogICAgICAgICAgW1BBU1NdWzE0XSAtPiBbRkFJTF1bMTVdIChb
ZmRvIzEwOTY2MF0pDQo+ID4gICAgWzE0XTogDQo+ID4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjY1Mi9zaGFyZC1rYmwyL2lndEBrbXNfYXRvbWljX3Ry
YW5zaXRpb25AMXgtbW9kZXNldC10cmFuc2l0aW9ucy1ub25ibG9ja2luZy1mZW5jaW5nLmh0bWwN
Cj4gPiAgICBbMTVdOiANCj4gPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xMzkwOS9zaGFyZC1rYmwyL2lndEBrbXNfYXRvbWljX3RyYW5zaXRpb25A
MXgtbW9kZXNldC10cmFuc2l0aW9ucy1ub25ibG9ja2luZy1mZW5jaW5nLmh0bWwNCj4gPiANCj4g
PiAgICogaWd0QGttcw0KPiA+IF9mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmMtMXAtcHJpbXNjcm4t
c3ByLWluZGZiLWRyYXctcmVuZGVyOg0KPiA+ICAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BB
U1NdWzE2XSAtPiBbRkFJTF1bMTddIChbZmRvIzEwMzE2N10pDQo+ID4gKzENCj4gPiBzaW1pbGFy
IGlzc3VlDQo+ID4gICAgWzE2XTogDQo+ID4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fNjY1Mi9zaGFyZC1pY2xiMi9pZ3RAa21zX2Zyb250YnVmZmVyX3Ry
YWNraW5nQGZiYy0xcC1wcmltc2Nybi1zcHItaW5kZmItZHJhdy1yZW5kZXIuaHRtbA0KPiA+ICAg
IFsxN106IA0KPiA+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzEzOTA5L3NoYXJkLWljbGI3L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJj
LTFwLXByaW1zY3JuLXNwci1pbmRmYi1kcmF3LXJlbmRlci5odG1sDQo+ID4gDQo+ID4gICAqIGln
dEBrbXNfcGxhbmVAcGxhbmUtcGFubmluZy1ib3R0b20tcmlnaHQtc3VzcGVuZC1waXBlLWEtcGxh
bmVzOg0KPiA+ICAgICAtIHNoYXJkLWFwbDogICAgICAgICAgW1BBU1NdWzE4XSAtPiBbRE1FU0ct
V0FSTl1bMTldDQo+ID4gKFtmZG8jMTA4NTY2XSkgKzMgc2ltaWxhciBpc3N1ZXMNCj4gPiAgICBb
MThdOiANCj4gPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV82NjUyL3NoYXJkLWFwbDYvaWd0QGttc19wbGFuZUBwbGFuZS1wYW5uaW5nLWJvdHRvbS1yaWdo
dC1zdXNwZW5kLXBpcGUtYS1wbGFuZXMuaHRtbA0KPiA+ICAgIFsxOV06IA0KPiA+IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzOTA5L3NoYXJkLWFw
bDgvaWd0QGttc19wbGFuZUBwbGFuZS1wYW5uaW5nLWJvdHRvbS1yaWdodC1zdXNwZW5kLXBpcGUt
YS1wbGFuZXMuaHRtbA0KPiA+IA0KPiA+ICAgKiBpZ3RAa21zX3BzckBwc3IyX3Nwcml0ZV9wbGFu
ZV9tb3ZlOg0KPiA+ICAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzIwXSAtPiBbU0tJ
UF1bMjFdIChbZmRvIzEwOTQ0MV0pDQo+ID4gKzENCj4gPiBzaW1pbGFyIGlzc3VlDQo+ID4gICAg
WzIwXTogDQo+ID4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fNjY1Mi9zaGFyZC1pY2xiMi9pZ3RAa21zX3BzckBwc3IyX3Nwcml0ZV9wbGFuZV9tb3ZlLmh0
bWwNCj4gPiAgICBbMjFdOiANCj4gPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xMzkwOS9zaGFyZC1pY2xiNS9pZ3RAa21zX3BzckBwc3IyX3Nwcml0
ZV9wbGFuZV9tb3ZlLmh0bWwNCj4gPiANCj4gPiAgICogaWd0QHBlcmZfcG11QGJ1c3ktaWRsZS1u
by1zZW1hcGhvcmVzLXZlY3MwOg0KPiA+ICAgICAtIHNoYXJkLWhzdzogICAgICAgICAgW1BBU1Nd
WzIyXSAtPiBbRE1FU0ctV0FSTl1bMjNdDQo+ID4gKFtmZG8jMTExMjk1XSkNCj4gPiAgICBbMjJd
OiANCj4gPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82
NjUyL3NoYXJkLWhzdzgvaWd0QHBlcmZfcG11QGJ1c3ktaWRsZS1uby1zZW1hcGhvcmVzLXZlY3Mw
Lmh0bWwNCj4gPiAgICBbMjNdOiANCj4gPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xMzkwOS9zaGFyZC1oc3c0L2lndEBwZXJmX3BtdUBidXN5LWlk
bGUtbm8tc2VtYXBob3Jlcy12ZWNzMC5odG1sDQo+ID4gDQo+ID4gICAqIGlndEBwcmltZV9idXN5
QGhhbmctYnNkMjoNCj4gPiAgICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVsyNF0gLT4g
W1NLSVBdWzI1XSAoW2ZkbyMxMDkyNzZdKQ0KPiA+ICsxNA0KPiA+IHNpbWlsYXIgaXNzdWVzDQo+
ID4gICAgWzI0XTogDQo+ID4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNjY1Mi9zaGFyZC1pY2xiMS9pZ3RAcHJpbWVfYnVzeUBoYW5nLWJzZDIuaHRtbA0K
PiA+ICAgIFsyNV06IA0KPiA+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzEzOTA5L3NoYXJkLWljbGI2L2lndEBwcmltZV9idXN5QGhhbmctYnNkMi5o
dG1sDQo+ID4gDQo+ID4gICANCj4gPiAjIyMjIFBvc3NpYmxlIGZpeGVzICMjIyMNCj4gPiANCj4g
PiAgICogaWd0QGdlbV9jdHhfaXNvbGF0aW9uQHJjczAtczM6DQo+ID4gICAgIC0gc2hhcmQtYXBs
OiAgICAgICAgICBbRE1FU0ctV0FSTl1bMjZdIChbZmRvIzEwODU2Nl0pIC0+DQo+ID4gW1BBU1Nd
WzI3XSArNSBzaW1pbGFyIGlzc3Vlcw0KPiA+ICAgIFsyNl06IA0KPiA+IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY2NTIvc2hhcmQtYXBsNi9pZ3RAZ2Vt
X2N0eF9pc29sYXRpb25AcmNzMC1zMy5odG1sDQo+ID4gICAgWzI3XTogDQo+ID4gaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM5MDkvc2hhcmQtYXBs
Mi9pZ3RAZ2VtX2N0eF9pc29sYXRpb25AcmNzMC1zMy5odG1sDQo+ID4gDQo+ID4gICAqIGlndEBn
ZW1fZXhlY19zY2hlZHVsZUBvdXQtb3JkZXItYnNkMjoNCj4gPiAgICAgLSBzaGFyZC1pY2xiOiAg
ICAgICAgIFtTS0lQXVsyOF0gKFtmZG8jMTA5Mjc2XSkgLT4gW1BBU1NdWzI5XQ0KPiA+ICsxMg0K
PiA+IHNpbWlsYXIgaXNzdWVzDQo+ID4gICAgWzI4XTogDQo+ID4gaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjY1Mi9zaGFyZC1pY2xiOC9pZ3RAZ2VtX2V4
ZWNfc2NoZWR1bGVAb3V0LW9yZGVyLWJzZDIuaHRtbA0KPiA+ICAgIFsyOV06IA0KPiA+IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzOTA5L3NoYXJk
LWljbGIxL2lndEBnZW1fZXhlY19zY2hlZHVsZUBvdXQtb3JkZXItYnNkMi5odG1sDQo+ID4gDQo+
ID4gICAqIGlndEBnZW1fZXhlY19zY2hlZHVsZUBwaS1yaW5nZnVsbC1ic2Q6DQo+ID4gICAgIC0g
c2hhcmQtaWNsYjogICAgICAgICBbU0tJUF1bMzBdIC0+IFtQQVNTXVszMV0gKzEgc2ltaWxhciBp
c3N1ZQ0KPiA+ICAgIFszMF06IA0KPiA+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzY2NTIvc2hhcmQtaWNsYjIvaWd0QGdlbV9leGVjX3NjaGVkdWxlQHBp
LXJpbmdmdWxsLWJzZC5odG1sDQo+ID4gICAgWzMxXTogDQo+ID4gaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM5MDkvc2hhcmQtaWNsYjUvaWd0QGdl
bV9leGVjX3NjaGVkdWxlQHBpLXJpbmdmdWxsLWJzZC5odG1sDQo+ID4gDQo+ID4gICAqIGlndEBn
ZW1fZXhlY19zY2hlZHVsZUBwcmVlbXB0LW90aGVyLWNoYWluLWJzZDoNCj4gPiAgICAgLSBzaGFy
ZC1pY2xiOiAgICAgICAgIFtTS0lQXVszMl0gKFtmZG8jMTExMzI1XSkgLT4gW1BBU1NdWzMzXQ0K
PiA+ICs3DQo+ID4gc2ltaWxhciBpc3N1ZXMNCj4gPiAgICBbMzJdOiANCj4gPiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NjUyL3NoYXJkLWljbGI0L2ln
dEBnZW1fZXhlY19zY2hlZHVsZUBwcmVlbXB0LW90aGVyLWNoYWluLWJzZC5odG1sDQo+ID4gICAg
WzMzXTogDQo+ID4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTM5MDkvc2hhcmQtaWNsYjcvaWd0QGdlbV9leGVjX3NjaGVkdWxlQHByZWVtcHQtb3Ro
ZXItY2hhaW4tYnNkLmh0bWwNCj4gPiANCj4gPiAgICogaWd0QGdlbV9leGVjX3NjaGVkdWxlQHNl
bWFwaG9yZS1ub3NraXA6DQo+ID4gICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbRkFJTF1bMzRd
IChbZmRvIzExMDk0Nl0pIC0+IFtQQVNTXVszNV0NCj4gPiArMQ0KPiA+IHNpbWlsYXIgaXNzdWUN
Cj4gPiAgICBbMzRdOiANCj4gPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV82NjUyL3NoYXJkLWljbGI0L2lndEBnZW1fZXhlY19zY2hlZHVsZUBzZW1hcGhv
cmUtbm9za2lwLmh0bWwNCj4gPiAgICBbMzVdOiANCj4gPiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzkwOS9zaGFyZC1pY2xiOC9pZ3RAZ2VtX2V4
ZWNfc2NoZWR1bGVAc2VtYXBob3JlLW5vc2tpcC5odG1sDQo+ID4gDQo+ID4gICAqIGlndEBnZW1f
c29mdHBpbkBub3JlbG9jLXMzOg0KPiA+ICAgICAtIHNoYXJkLWtibDogICAgICAgICAgW0RNRVNH
LVdBUk5dWzM2XSAoW2ZkbyMxMDg1NjZdKSAtPg0KPiA+IFtQQVNTXVszN10NCj4gPiAgICBbMzZd
OiANCj4gPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82
NjUyL3NoYXJkLWtibDIvaWd0QGdlbV9zb2Z0cGluQG5vcmVsb2MtczMuaHRtbA0KPiA+ICAgIFsz
N106IA0KPiA+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzEzOTA5L3NoYXJkLWtibDcvaWd0QGdlbV9zb2Z0cGluQG5vcmVsb2MtczMuaHRtbA0KPiA+
IA0KPiA+ICAgKiBpZ3RAa21zX2ZiY29uX2ZidEBwc3Itc3VzcGVuZDoNCj4gPiAgICAgLSBzaGFy
ZC1za2w6ICAgICAgICAgIFtJTkNPTVBMRVRFXVszOF0gKFtmZG8jMTA0MTA4XSkgLT4NCj4gPiBb
UEFTU11bMzldDQo+ID4gICAgWzM4XTogDQo+ID4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNjY1Mi9zaGFyZC1za2wyL2lndEBrbXNfZmJjb25fZmJ0QHBz
ci1zdXNwZW5kLmh0bWwNCj4gPiAgICBbMzldOiANCj4gPiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzkwOS9zaGFyZC1za2wxMC9pZ3RAa21zX2Zi
Y29uX2ZidEBwc3Itc3VzcGVuZC5odG1sDQo+ID4gDQo+ID4gICAqIGlndEBrbXNfZmxpcEBmbGlw
LXZzLWV4cGlyZWQtdmJsYW5rOg0KPiA+ICAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW0ZBSUxd
WzQwXSAoW2ZkbyMxMDUzNjNdKSAtPiBbUEFTU11bNDFdDQo+ID4gICAgWzQwXTogDQo+ID4gaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjY1Mi9zaGFyZC1z
a2wxMC9pZ3RAa21zX2ZsaXBAZmxpcC12cy1leHBpcmVkLXZibGFuay5odG1sDQo+ID4gICAgWzQx
XTogDQo+ID4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTM5MDkvc2hhcmQtc2tsOS9pZ3RAa21zX2ZsaXBAZmxpcC12cy1leHBpcmVkLXZibGFuay5o
dG1sDQo+ID4gDQo+ID4gICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLXBy
aW1zY3JuLXNwci1pbmRmYi1kcmF3LWJsdA0KPiA+IDoNCj4gPiAgICAgLSBzaGFyZC1pY2xiOiAg
ICAgICAgIFtGQUlMXVs0Ml0gKFtmZG8jMTAzMTY3XSkgLT4gW1BBU1NdWzQzXQ0KPiA+ICs3DQo+
ID4gc2ltaWxhciBpc3N1ZXMNCj4gPiAgICBbNDJdOiANCj4gPiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NjUyL3NoYXJkLWljbGIyL2lndEBrbXNfZnJv
bnRidWZmZXJfdHJhY2tpbmdAZmJjLTFwLXByaW1zY3JuLXNwci1pbmRmYi1kcmF3LWJsdC5odG1s
DQo+ID4gICAgWzQzXTogDQo+ID4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9QYXRjaHdvcmtfMTM5MDkvc2hhcmQtaWNsYjUvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFj
a2luZ0BmYmMtMXAtcHJpbXNjcm4tc3ByLWluZGZiLWRyYXctYmx0Lmh0bWwNCj4gPiANCj4gPiAg
ICogaWd0QGttc19wc3JAcHNyMl9ub19kcnJzOg0KPiA+ICAgICAtIHNoYXJkLWljbGI6ICAgICAg
ICAgW1NLSVBdWzQ0XSAoW2ZkbyMxMDk0NDFdKSAtPiBbUEFTU11bNDVdDQo+ID4gKzENCj4gPiBz
aW1pbGFyIGlzc3VlDQo+ID4gICAgWzQ0XTogDQo+ID4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjY1Mi9zaGFyZC1pY2xiNy9pZ3RAa21zX3BzckBwc3Iy
X25vX2RycnMuaHRtbA0KPiA+ICAgIFs0NV06IA0KPiA+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzOTA5L3NoYXJkLWljbGIyL2lndEBrbXNfcHNy
QHBzcjJfbm9fZHJycy5odG1sDQo+ID4gDQo+ID4gICAqIGlndEBwZXJmQG9hLWV4cG9uZW50czoN
Cj4gPiAgICAgLSBzaGFyZC1nbGs6ICAgICAgICAgIFtGQUlMXVs0Nl0gKFtmZG8jMTA1NDgzXSkg
LT4gW1BBU1NdWzQ3XQ0KPiA+ICAgIFs0Nl06IA0KPiA+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY2NTIvc2hhcmQtZ2xrOS9pZ3RAcGVyZkBvYS1leHBv
bmVudHMuaHRtbA0KPiA+ICAgIFs0N106IA0KPiA+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzOTA5L3NoYXJkLWdsazMvaWd0QHBlcmZAb2EtZXhw
b25lbnRzLmh0bWwNCj4gPiANCj4gPiAgIA0KPiA+ICMjIyMgV2FybmluZ3MgIyMjIw0KPiA+IA0K
PiA+ICAgKiBpZ3RAZ2VtX2N0eF9pc29sYXRpb25AdmNzMS1ub25wcml2Og0KPiA+ICAgICAtIHNo
YXJkLWljbGI6ICAgICAgICAgW1NLSVBdWzQ4XSAoW2ZkbyMxMDkyNzZdKSAtPiBbRkFJTF1bNDld
DQo+ID4gKFtmZG8jMTExMzI5XSkNCj4gPiAgICBbNDhdOiANCj4gPiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NjUyL3NoYXJkLWljbGIzL2lndEBnZW1f
Y3R4X2lzb2xhdGlvbkB2Y3MxLW5vbnByaXYuaHRtbA0KPiA+ICAgIFs0OV06IA0KPiA+IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzOTA5L3NoYXJk
LWljbGI0L2lndEBnZW1fY3R4X2lzb2xhdGlvbkB2Y3MxLW5vbnByaXYuaHRtbA0KPiA+IA0KPiA+
ICAgKiBpZ3RAZ2VtX2N0eF9zaGFyZWRAZXhlYy1zaW5nbGUtdGltZWxpbmUtYnNkMjoNCj4gPiAg
ICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtGQUlMXVs1MF0gKFtmZG8jMTExMzI3XSkgLT4gW1NL
SVBdWzUxXQ0KPiA+IChbZmRvIzEwOTI3Nl0pDQo+ID4gICAgWzUwXTogDQo+ID4gaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjY1Mi9zaGFyZC1pY2xiNC9p
Z3RAZ2VtX2N0eF9zaGFyZWRAZXhlYy1zaW5nbGUtdGltZWxpbmUtYnNkMi5odG1sDQo+ID4gICAg
WzUxXTogDQo+ID4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTM5MDkvc2hhcmQtaWNsYjUvaWd0QGdlbV9jdHhfc2hhcmVkQGV4ZWMtc2luZ2xlLXRp
bWVsaW5lLWJzZDIuaHRtbA0KPiA+IA0KPiA+ICAgKiBpZ3RAZ2VtX2V4ZWNfc2NoZWR1bGVAaW5k
ZXBlbmRlbnQtYnNkMjoNCj4gPiAgICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtTS0lQXVs1Ml0g
KFtmZG8jMTA5Mjc2XSkgLT4gW0ZBSUxdWzUzXQ0KPiA+IChbZmRvIzExMDk0Nl0pICsxIHNpbWls
YXIgaXNzdWUNCj4gPiAgICBbNTJdOiANCj4gPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV82NjUyL3NoYXJkLWljbGI4L2lndEBnZW1fZXhlY19zY2hlZHVs
ZUBpbmRlcGVuZGVudC1ic2QyLmh0bWwNCj4gPiAgICBbNTNdOiANCj4gPiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzkwOS9zaGFyZC1pY2xiMS9p
Z3RAZ2VtX2V4ZWNfc2NoZWR1bGVAaW5kZXBlbmRlbnQtYnNkMi5odG1sDQo+ID4gDQo+ID4gICAq
IGlndEBnZW1fbW9jc19zZXR0aW5nc0Btb2NzLWlzb2xhdGlvbi1ic2QyOg0KPiA+ICAgICAtIHNo
YXJkLWljbGI6ICAgICAgICAgW0ZBSUxdWzU0XSAoW2ZkbyMxMTEzMzBdKSAtPiBbU0tJUF1bNTVd
DQo+ID4gKFtmZG8jMTA5Mjc2XSkNCj4gPiAgICBbNTRdOiANCj4gPiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82NjUyL3NoYXJkLWljbGIxL2lndEBnZW1f
bW9jc19zZXR0aW5nc0Btb2NzLWlzb2xhdGlvbi1ic2QyLmh0bWwNCj4gPiAgICBbNTVdOiANCj4g
PiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzkw
OS9zaGFyZC1pY2xiNi9pZ3RAZ2VtX21vY3Nfc2V0dGluZ3NAbW9jcy1pc29sYXRpb24tYnNkMi5o
dG1sDQo+ID4gDQo+ID4gICANCj4gPiAgIHtuYW1lfTogVGhpcyBlbGVtZW50IGlzIHN1cHByZXNz
ZWQuIFRoaXMgbWVhbnMgaXQgaXMgaWdub3JlZCB3aGVuDQo+ID4gY29tcHV0aW5nDQo+ID4gICAg
ICAgICAgIHRoZSBzdGF0dXMgb2YgdGhlIGRpZmZlcmVuY2UgKFNVQ0NFU1MsIFdBUk5JTkcsIG9y
DQo+ID4gRkFJTFVSRSkuDQo+ID4gDQo+ID4gICBbZmRvIzEwMjI1MF06IGh0dHBzOi8vYnVncy5m
cmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMjI1MA0KPiA+ICAgW2ZkbyMxMDMxNjdd
OiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDMxNjcNCj4g
PiAgIFtmZG8jMTA0MTA4XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTA0MTA4DQo+ID4gICBbZmRvIzEwNTM2M106IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNTM2Mw0KPiA+ICAgW2ZkbyMxMDU0ODNdOiBodHRwczov
L2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDU0ODMNCj4gPiAgIFtmZG8j
MTA3NzEzXTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA3
NzEzDQo+ID4gICBbZmRvIzEwODU2Nl06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hv
d19idWcuY2dpP2lkPTEwODU2Ng0KPiA+ICAgW2ZkbyMxMDkyNzZdOiBodHRwczovL2J1Z3MuZnJl
ZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDkyNzYNCj4gPiAgIFtmZG8jMTA5NDQxXTog
aHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5NDQxDQo+ID4g
ICBbZmRvIzEwOTY2MF06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTEwOTY2MA0KPiA+ICAgW2ZkbyMxMTA5NDZdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Au
b3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA5NDYNCj4gPiAgIFtmZG8jMTExMjk1XTogaHR0cHM6Ly9i
dWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMjk1DQo+ID4gICBbZmRvIzEx
MTMyNV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTMy
NQ0KPiA+ICAgW2ZkbyMxMTEzMjddOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3df
YnVnLmNnaT9pZD0xMTEzMjcNCj4gPiAgIFtmZG8jMTExMzI5XTogaHR0cHM6Ly9idWdzLmZyZWVk
ZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMzI5DQo+ID4gICBbZmRvIzExMTMzMF06IGh0
dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTMzMA0KPiA+IA0K
PiA+IA0KPiA+IFBhcnRpY2lwYXRpbmcgaG9zdHMgKDEwIC0+IDEwKQ0KPiA+IC0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiA+IA0KPiA+ICAgTm8gY2hhbmdlcyBpbiBwYXJ0aWNpcGF0
aW5nIGhvc3RzDQo+ID4gDQo+ID4gDQo+ID4gQnVpbGQgY2hhbmdlcw0KPiA+IC0tLS0tLS0tLS0t
LS0NCj4gPiANCj4gPiAgICogQ0k6IENJLTIwMTkwNTI5IC0+IE5vbmUNCj4gPiAgICogTGludXg6
IENJX0RSTV82NjUyIC0+IFBhdGNod29ya18xMzkwOQ0KPiA+IA0KPiA+ICAgQ0ktMjAxOTA1Mjk6
IDIwMTkwNTI5DQo+ID4gICBDSV9EUk1fNjY1MjogMWRmNmM0YzYzNzM0Nzc3OWM5MTc1ODA4ZjYw
M2IxNTc0ZTJjZGRjOSBADQo+ID4gZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNp
L2xpbnV4DQo+ID4gICBJR1RfNTEyNTogMzVkODFkMDFiMTU5OWI0YmM0ZGYwZTA5ZTI1ZjZmNTMx
ZWVkNGY4YSBADQo+ID4gZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcveG9yZy9hcHAvaW50
ZWwtZ3B1LXRvb2xzDQo+ID4gICBQYXRjaHdvcmtfMTM5MDk6IDBjYjA4YThiMGZmY2I4M2M5MGJh
YTc2OTE1N2IzZmVlNWUyMWFiNzQgQA0KPiA+IGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3Jn
L2dmeC1jaS9saW51eA0KPiA+ICAgcGlnbGl0XzQ1MDk6IGZkYzVhNGNhMTExMjRhYjg0MTNjNzk4
ODg5NmVlYzRjOTczMzY2OTQgQA0KPiA+IGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3Bp
Z2xpdA0KPiA+IA0KPiA+ID09IExvZ3MgPT0NCj4gPiANCj4gPiBGb3IgbW9yZSBkZXRhaWxzIHNl
ZTogDQo+ID4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTM5MDkvDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fDQo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QNCj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZw0KPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
