Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB621C4932
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 23:43:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFFC689842;
	Mon,  4 May 2020 21:43:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3130989736
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 May 2020 21:43:23 +0000 (UTC)
IronPort-SDR: r8YKTxP1Y2rODdCJ5YWz7k9eRPJh5G1ilSuqdJIbELxYDBnhymsOKTr+/fOzJkPzBHwLbGZ6uU
 7PIAUlpybbiQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 14:43:22 -0700
IronPort-SDR: GvTP/WR9syG77GMv8fmLSCIou/JX8Vgis2MBmPHym3dasVFzVKWjZ9vsq2HamBerDylmQVb4k2
 OLBa5T5YL5PQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,353,1583222400"; d="scan'208";a="461155143"
Received: from irsmsx108.ger.corp.intel.com ([163.33.3.3])
 by fmsmga006.fm.intel.com with ESMTP; 04 May 2020 14:43:21 -0700
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 IRSMSX108.ger.corp.intel.com (163.33.3.3) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Mon, 4 May 2020 22:43:20 +0100
Received: from irsmsx601.ger.corp.intel.com (163.33.146.7) by
 IRSMSX605.ger.corp.intel.com (163.33.146.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 4 May 2020 22:43:20 +0100
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7]) by
 irsmsx601.ger.corp.intel.com ([163.33.146.7]) with mapi id 15.01.1713.004;
 Mon, 4 May 2020 22:43:20 +0100
From: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvdGdsKzogRml4?=
 =?utf-8?Q?_interrupt_handling_for_DP_AUX_transactions?=
Thread-Index: AQHWIkp9b+opW1IxzkSmZXFOfBohzKiYdTkg
Date: Mon, 4 May 2020 21:43:20 +0000
Message-ID: <80295f2ed4b345c990bda0ea0be71f4b@intel.com>
References: <20200504075828.20348-1-imre.deak@intel.com>
 <158861706607.5815.10204156884010687612@emeril.freedesktop.org>
 <20200504192954.GA7978@ideak-desk.fi.intel.com>
In-Reply-To: <20200504192954.GA7978@ideak-desk.fi.intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNWNhM2Y4OWMtNDE2Ny00MGM5LWEwNTktMDM4ZDI5MDRjN2QxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoicSs3MUhrQVZ5Mk1HZVdSaW16XC9XWEFXSkxwQVwvN0hqY3RuZzdUcVdKbDFDUFFFem9hTWlzZUlmY2hZYjkrSWVqIn0=
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
dlp-reaction: no-action
dlp-version: 11.2.0.6
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl+=3A_Fix_interrupt_handling_for_DP_AUX_transactions?=
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgSW1yZSwgWWVzLCBJIGhhdmUgYWRkcmVzc2VkIHRoZSBpc3N1ZSBhbmQgcmUtcmVwb3J0ZWQu
DQoNClRoYW5rcywNCkxha3NobWkuDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9t
OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+IA0KU2VudDogTW9uZGF5LCBNYXkgNCwg
MjAyMCAxMDozMCBQTQ0KVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IFZ1ZHVt
LCBMYWtzaG1pbmFyYXlhbmEgPGxha3NobWluYXJheWFuYS52dWR1bUBpbnRlbC5jb20+DQpTdWJq
ZWN0OiBSZTog4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvdGdsKzogRml4IGlu
dGVycnVwdCBoYW5kbGluZyBmb3IgRFAgQVVYIHRyYW5zYWN0aW9ucw0KDQpIaSBMYWtzaG1pLA0K
DQpPbiBNb24sIE1heSAwNCwgMjAyMCBhdCAwNjozMTowNlBNICswMDAwLCBQYXRjaHdvcmsgd3Jv
dGU6DQo+ID09IFNlcmllcyBEZXRhaWxzID09DQo+IA0KPiBTZXJpZXM6IGRybS9pOTE1L3RnbCs6
IEZpeCBpbnRlcnJ1cHQgaGFuZGxpbmcgZm9yIERQIEFVWCB0cmFuc2FjdGlvbnMNCj4gVVJMICAg
OiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzc2ODkyLw0KPiBTdGF0
ZSA6IGZhaWx1cmUNCj4gDQo+ID09IFN1bW1hcnkgPT0NCj4gDQo+IENJIEJ1ZyBMb2cgLSBjaGFu
Z2VzIGZyb20gQ0lfRFJNXzg0MTZfZnVsbCAtPiBQYXRjaHdvcmtfMTc1NjRfZnVsbCANCj4gPT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQ0KPiANCj4g
U3VtbWFyeQ0KPiAtLS0tLS0tDQo+IA0KPiAgICoqRkFJTFVSRSoqDQo+IA0KPiAgIFNlcmlvdXMg
dW5rbm93biBjaGFuZ2VzIGNvbWluZyB3aXRoIFBhdGNod29ya18xNzU2NF9mdWxsIGFic29sdXRl
bHkgbmVlZCB0byBiZQ0KPiAgIHZlcmlmaWVkIG1hbnVhbGx5Lg0KPiAgIA0KPiAgIElmIHlvdSB0
aGluayB0aGUgcmVwb3J0ZWQgY2hhbmdlcyBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUgY2hh
bmdlcw0KPiAgIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzE3NTY0X2Z1bGwsIHBsZWFzZSBub3Rp
ZnkgeW91ciBidWcgdGVhbSB0byBhbGxvdyB0aGVtDQo+ICAgdG8gZG9jdW1lbnQgdGhpcyBuZXcg
ZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJlZHVjZSBmYWxzZSBwb3NpdGl2ZXMgaW4gQ0kuDQo+
IA0KPiAgIA0KPiANCj4gUG9zc2libGUgbmV3IGlzc3Vlcw0KPiAtLS0tLS0tLS0tLS0tLS0tLS0t
DQo+IA0KPiAgIEhlcmUgYXJlIHRoZSB1bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVu
IGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzE3NTY0X2Z1bGw6DQo+IA0KPiAjIyMgSUdUIGNoYW5n
ZXMgIyMjDQo+IA0KPiAjIyMjIFBvc3NpYmxlIHJlZ3Jlc3Npb25zICMjIyMNCj4gDQo+ICAgKiBp
Z3RAa21zX2F0b21pY190cmFuc2l0aW9uQHBsYW5lLXRvZ2dsZS1tb2Rlc2V0LXRyYW5zaXRpb246
DQo+ICAgICAtIHNoYXJkLWFwbDogICAgICAgICAgW1BBU1NdWzFdIC0+IFtJTkNPTVBMRVRFXVsy
XQ0KPiAgICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzg0MTYvc2hhcmQtYXBsOC9pZ3RAa21zX2F0b21pY190cmFuc2l0aW9uQHBsYW5lLXRvZ2ds
ZS1tb2Rlc2V0LXRyYW5zaXRpb24uaHRtbA0KPiAgICBbMl06IA0KPiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNzU2NC9zaGFyZC1hcGw4L2lnDQo+
IHRAa21zX2F0b21pY190cmFuc2l0aW9uQHBsYW5lLXRvZ2dsZS1tb2Rlc2V0LXRyYW5zaXRpb24u
aHRtbA0KDQpPbiBHRU45IG5vdGhpbmcgY2hhbmdlZCwgc28gdGhpcyBtdXN0IGJlIHVucmVsYXRl
ZC4gSSBjb3VsZG4ndCBmaW5kIGFueSBzaW1pbGFyIGlzc3VlcyBvbiBnaXRsYWIsIHNvIGNvdWxk
IHlvdSBhZGQgdGhlcmUgYSBuZXcgdGlja2V0IGZvciBpdD8NCg0KVGhhbmtzLA0KSW1yZQ0KDQo+
IA0KPiAgIA0KPiBLbm93biBpc3N1ZXMNCj4gLS0tLS0tLS0tLS0tDQo+IA0KPiAgIEhlcmUgYXJl
IHRoZSBjaGFuZ2VzIGZvdW5kIGluIFBhdGNod29ya18xNzU2NF9mdWxsIHRoYXQgY29tZSBmcm9t
IGtub3duIGlzc3VlczoNCj4gDQo+ICMjIyBJR1QgY2hhbmdlcyAjIyMNCj4gDQo+ICMjIyMgSXNz
dWVzIGhpdCAjIyMjDQo+IA0KPiAgICogaWd0QGdlbV9leGVjX2ZsdXNoQGJhc2ljLXdiLXJvLWJl
Zm9yZS1kZWZhdWx0Og0KPiAgICAgLSBzaGFyZC1oc3c6ICAgICAgICAgIFtQQVNTXVszXSAtPiBb
SU5DT01QTEVURV1bNF0gKFtpOTE1IzYxXSkNCj4gICAgWzNdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV84NDE2L3NoYXJkLWhzdzYvaWd0QGdlbV9leGVj
X2ZsdXNoQGJhc2ljLXdiLXJvLWJlZm9yZS1kZWZhdWx0Lmh0bWwNCj4gICAgWzRdOiANCj4gaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTc1NjQvc2hh
cmQtaHN3MS9pZw0KPiB0QGdlbV9leGVjX2ZsdXNoQGJhc2ljLXdiLXJvLWJlZm9yZS1kZWZhdWx0
Lmh0bWwNCj4gDQo+ICAgKiBpZ3RAZ2VtX3dvcmthcm91bmRzQHN1c3BlbmQtcmVzdW1lLWZkOg0K
PiAgICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtQQVNTXVs1XSAtPiBbRE1FU0ctV0FSTl1bNl0g
KFtpOTE1IzE4MF0pDQo+ICAgIFs1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fODQxNi9zaGFyZC1hcGw0L2lndEBnZW1fd29ya2Fyb3VuZHNAc3VzcGVu
ZC1yZXN1bWUtZmQuaHRtbA0KPiAgICBbNl06IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNzU2NC9zaGFyZC1hcGw2L2lnDQo+IHRAZ2VtX3dv
cmthcm91bmRzQHN1c3BlbmQtcmVzdW1lLWZkLmh0bWwNCj4gDQo+ICAgKiBpZ3RAa21zX2N1cnNv
cl9jcmNAcGlwZS1jLWN1cnNvci02NHgyMS1vbnNjcmVlbjoNCj4gICAgIC0gc2hhcmQtZ2xrOiAg
ICAgICAgICBbUEFTU11bN10gLT4gW0ZBSUxdWzhdIChbaTkxNSM1NF0pDQo+ICAgIFs3XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fODQxNi9zaGFyZC1n
bGs4L2lndEBrbXNfY3Vyc29yX2NyY0BwaXBlLWMtY3Vyc29yLTY0eDIxLW9uc2NyZWVuLmh0bWwN
Cj4gICAgWzhdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTc1NjQvc2hhcmQtZ2xrMi9pZw0KPiB0QGttc19jdXJzb3JfY3JjQHBpcGUtYy1j
dXJzb3ItNjR4MjEtb25zY3JlZW4uaHRtbA0KPiANCj4gICAqIGlndEBrbXNfY3Vyc29yX2VkZ2Vf
d2Fsa0BwaXBlLWEtMjU2eDI1Ni1ib3R0b20tZWRnZToNCj4gICAgIC0gc2hhcmQtYXBsOiAgICAg
ICAgICBbUEFTU11bOV0gLT4gW0ZBSUxdWzEwXSAoW2k5MTUjNzBdIC8gW2k5MTUjOTVdKQ0KPiAg
ICBbOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzg0
MTYvc2hhcmQtYXBsMy9pZ3RAa21zX2N1cnNvcl9lZGdlX3dhbGtAcGlwZS1hLTI1NngyNTYtYm90
dG9tLWVkZ2UuaHRtbA0KPiAgICBbMTBdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTc1NjQvc2hhcmQtYXBsNC9pZw0KPiB0QGttc19jdXJz
b3JfZWRnZV93YWxrQHBpcGUtYS0yNTZ4MjU2LWJvdHRvbS1lZGdlLmh0bWwNCj4gDQo+ICAgKiBp
Z3RAa21zX2ZsaXBfdGlsaW5nQGZsaXAtY2hhbmdlcy10aWxpbmcteToNCj4gICAgIC0gc2hhcmQt
YXBsOiAgICAgICAgICBbUEFTU11bMTFdIC0+IFtGQUlMXVsxMl0gKFtpOTE1Izk1XSkNCj4gICAg
WzExXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fODQx
Ni9zaGFyZC1hcGwxL2lndEBrbXNfZmxpcF90aWxpbmdAZmxpcC1jaGFuZ2VzLXRpbGluZy15Lmh0
bWwNCj4gICAgWzEyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTc1NjQvc2hhcmQtYXBsMy9pZ3RAa21zX2ZsaXBfdGlsaW5nQGZsaXAtY2hhbmdl
cy10aWxpbmcteS5odG1sDQo+ICAgICAtIHNoYXJkLWtibDogICAgICAgICAgW1BBU1NdWzEzXSAt
PiBbRkFJTF1bMTRdIChbaTkxNSM2OTldIC8gW2k5MTUjOTNdIC8gW2k5MTUjOTVdKQ0KPiAgICBb
MTNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV84NDE2
L3NoYXJkLWtibDEvaWd0QGttc19mbGlwX3RpbGluZ0BmbGlwLWNoYW5nZXMtdGlsaW5nLXkuaHRt
bA0KPiAgICBbMTRdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTc1NjQvc2hhcmQta2JsNi9pZw0KPiB0QGttc19mbGlwX3RpbGluZ0BmbGlw
LWNoYW5nZXMtdGlsaW5nLXkuaHRtbA0KPiANCj4gICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJh
Y2tpbmdAcHNyLTFwLXByaW1zY3JuLXByaS1pbmRmYi1kcmF3LXJlbmRlcjoNCj4gICAgIC0gc2hh
cmQtc2tsOiAgICAgICAgICBbUEFTU11bMTVdIC0+IFtGQUlMXVsxNl0gKFtpOTE1IzQ5XSkNCj4g
ICAgWzE1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
ODQxNi9zaGFyZC1za2w5L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAcHNyLTFwLXByaW1z
Y3JuLXByaS1pbmRmYi1kcmF3LXJlbmRlci5odG1sDQo+ICAgIFsxNl06IA0KPiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNzU2NC9zaGFyZC1za2w4
L2lnDQo+IHRAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQHBzci0xcC1wcmltc2Nybi1wcmktaW5k
ZmItZHJhdy1yZW5kZXIuaHRtbA0KPiANCj4gICAqIGlndEBrbXNfcGlwZV9jcmNfYmFzaWNAaGFu
Zy1yZWFkLWNyYy1waXBlLWE6DQo+ICAgICAtIHNoYXJkLXNuYjogICAgICAgICAgW1BBU1NdWzE3
XSAtPiBbU0tJUF1bMThdIChbZmRvIzEwOTI3MV0pICszIHNpbWlsYXIgaXNzdWVzDQo+ICAgIFsx
N106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzg0MTYv
c2hhcmQtc25iNi9pZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQGhhbmctcmVhZC1jcmMtcGlwZS1hLmh0
bWwNCj4gICAgWzE4XTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE3NTY0L3NoYXJkLXNuYjIvaWcNCj4gdEBrbXNfcGlwZV9jcmNfYmFzaWNA
aGFuZy1yZWFkLWNyYy1waXBlLWEuaHRtbA0KPiANCj4gICAqIGlndEBrbXNfcGxhbmVfYWxwaGFf
YmxlbmRAcGlwZS1hLWNvdmVyYWdlLTdlZmM6DQo+ICAgICAtIHNoYXJkLXNrbDogICAgICAgICAg
W1BBU1NdWzE5XSAtPiBbRkFJTF1bMjBdIChbZmRvIzEwODE0NV0gLyBbaTkxNSMyNjVdKQ0KPiAg
ICBbMTldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV84
NDE2L3NoYXJkLXNrbDkvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWEtY292ZXJhZ2Ut
N2VmYy5odG1sDQo+ICAgIFsyMF06IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNzU2NC9zaGFyZC1za2w4L2lnDQo+IHRAa21zX3BsYW5lX2Fs
cGhhX2JsZW5kQHBpcGUtYS1jb3ZlcmFnZS03ZWZjLmh0bWwNCj4gDQo+ICAgKiBpZ3RAa21zX3Bz
ckBwc3IyX3ByaW1hcnlfbW1hcF9ndHQ6DQo+ICAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BB
U1NdWzIxXSAtPiBbU0tJUF1bMjJdIChbZmRvIzEwOTQ0MV0pICsxIHNpbWlsYXIgaXNzdWUNCj4g
ICAgWzIxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
ODQxNi9zaGFyZC1pY2xiMi9pZ3RAa21zX3BzckBwc3IyX3ByaW1hcnlfbW1hcF9ndHQuaHRtbA0K
PiAgICBbMjJdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTc1NjQvc2hhcmQtaWNsYjUvaQ0KPiBndEBrbXNfcHNyQHBzcjJfcHJpbWFyeV9t
bWFwX2d0dC5odG1sDQo+IA0KPiAgICogaWd0QGttc192YmxhbmtAcGlwZS1iLXRzLWNvbnRpbnVh
dGlvbi1zdXNwZW5kOg0KPiAgICAgLSBzaGFyZC1rYmw6ICAgICAgICAgIFtQQVNTXVsyM10gLT4g
W0RNRVNHLVdBUk5dWzI0XSAoW2k5MTUjMTgwXSkgKzEgc2ltaWxhciBpc3N1ZQ0KPiAgICBbMjNd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV84NDE2L3No
YXJkLWtibDMvaWd0QGttc192YmxhbmtAcGlwZS1iLXRzLWNvbnRpbnVhdGlvbi1zdXNwZW5kLmh0
bWwNCj4gICAgWzI0XTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE3NTY0L3NoYXJkLWtibDQvaWcNCj4gdEBrbXNfdmJsYW5rQHBpcGUtYi10
cy1jb250aW51YXRpb24tc3VzcGVuZC5odG1sDQo+IA0KPiAgICogaWd0QGttc192YmxhbmtAcGlw
ZS1jLXRzLWNvbnRpbnVhdGlvbi1zdXNwZW5kOg0KPiAgICAgLSBzaGFyZC1rYmw6ICAgICAgICAg
IFtQQVNTXVsyNV0gLT4gW0lOQ09NUExFVEVdWzI2XSAoW2k5MTUjMTU1XSAvIFtpOTE1Izc5NF0p
DQo+ICAgIFsyNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzg0MTYvc2hhcmQta2JsNy9pZ3RAa21zX3ZibGFua0BwaXBlLWMtdHMtY29udGludWF0aW9u
LXN1c3BlbmQuaHRtbA0KPiAgICBbMjZdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTc1NjQvc2hhcmQta2JsMS9pZw0KPiB0QGttc192Ymxh
bmtAcGlwZS1jLXRzLWNvbnRpbnVhdGlvbi1zdXNwZW5kLmh0bWwNCj4gDQo+ICAgDQo+ICMjIyMg
UG9zc2libGUgZml4ZXMgIyMjIw0KPiANCj4gICAqIGlndEBnZW45X2V4ZWNfcGFyc2VAYWxsb3dl
ZC1hbGw6DQo+ICAgICAtIHNoYXJkLWFwbDogICAgICAgICAgW0RNRVNHLVdBUk5dWzI3XSAoW2k5
MTUjNzE2XSkgLT4gW1BBU1NdWzI4XQ0KPiAgICBbMjddOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV84NDE2L3NoYXJkLWFwbDgvaWd0QGdlbjlfZXhlY19w
YXJzZUBhbGxvd2VkLWFsbC5odG1sDQo+ICAgIFsyOF06IA0KPiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNzU2NC9zaGFyZC1hcGw2L2lnDQo+IHRA
Z2VuOV9leGVjX3BhcnNlQGFsbG93ZWQtYWxsLmh0bWwNCj4gDQo+ICAgKiBpZ3RAa21zX2N1cnNv
cl9jcmNAcGlwZS1hLWN1cnNvci1zdXNwZW5kOg0KPiAgICAgLSBzaGFyZC1za2w6ICAgICAgICAg
IFtGQUlMXVsyOV0gKFtpOTE1IzU0XSkgLT4gW1BBU1NdWzMwXQ0KPiAgICBbMjldOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV84NDE2L3NoYXJkLXNrbDUv
aWd0QGttc19jdXJzb3JfY3JjQHBpcGUtYS1jdXJzb3Itc3VzcGVuZC5odG1sDQo+ICAgIFszMF06
IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
NzU2NC9zaGFyZC1za2wxL2lnDQo+IHRAa21zX2N1cnNvcl9jcmNAcGlwZS1hLWN1cnNvci1zdXNw
ZW5kLmh0bWwNCj4gDQo+ICAgKiBpZ3RAa21zX2RyYXdfY3JjQGRyYXctbWV0aG9kLXhyZ2I4ODg4
LXB3cml0ZS11bnRpbGVkOg0KPiAgICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtGQUlMXVszMV0g
KFtpOTE1IzE3N10gLyBbaTkxNSM1Ml0gLyBbaTkxNSM1NF0pIC0+IFtQQVNTXVszMl0NCj4gICAg
WzMxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fODQx
Ni9zaGFyZC1za2w2L2lndEBrbXNfZHJhd19jcmNAZHJhdy1tZXRob2QteHJnYjg4ODgtcHdyaXRl
LXVudGlsZWQuaHRtbA0KPiAgICBbMzJdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTc1NjQvc2hhcmQtc2tsNS9pZw0KPiB0QGttc19kcmF3
X2NyY0BkcmF3LW1ldGhvZC14cmdiODg4OC1wd3JpdGUtdW50aWxlZC5odG1sDQo+IA0KPiAgICog
e2lndEBrbXNfZmxpcEBmbGlwLXZzLXN1c3BlbmQtaW50ZXJydXB0aWJsZUBhLWVkcDF9Og0KPiAg
ICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtJTkNPTVBMRVRFXVszM10gKFtpOTE1IzE5OF0pIC0+
IFtQQVNTXVszNF0NCj4gICAgWzMzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fODQxNi9zaGFyZC1za2w1L2lndEBrbXNfZmxpcEBmbGlwLXZzLXN1c3Bl
bmQtaW50ZXJydXB0aWJsZUBhLWVkcDEuaHRtbA0KPiAgICBbMzRdOiANCj4gaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTc1NjQvc2hhcmQtc2tsMS9p
Zw0KPiB0QGttc19mbGlwQGZsaXAtdnMtc3VzcGVuZC1pbnRlcnJ1cHRpYmxlQGEtZWRwMS5odG1s
DQo+IA0KPiAgICoge2lndEBrbXNfZmxpcEBmbGlwLXZzLXN1c3BlbmRAYy1kcDF9Og0KPiAgICAg
LSBzaGFyZC1rYmw6ICAgICAgICAgIFtETUVTRy1XQVJOXVszNV0gKFtpOTE1IzE4MF0pIC0+IFtQ
QVNTXVszNl0gKzYgc2ltaWxhciBpc3N1ZXMNCj4gICAgWzM1XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fODQxNi9zaGFyZC1rYmw2L2lndEBrbXNfZmxp
cEBmbGlwLXZzLXN1c3BlbmRAYy1kcDEuaHRtbA0KPiAgICBbMzZdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNzU2NC9zaGFyZC1rYmw0L2lndEBr
bXNfZmxpcEBmbGlwLXZzLXN1c3BlbmRAYy1kcDEuaHRtbA0KPiAgICAgLSBzaGFyZC1hcGw6ICAg
ICAgICAgIFtETUVTRy1XQVJOXVszN10gKFtpOTE1IzE4MF0pIC0+IFtQQVNTXVszOF0gKzEgc2lt
aWxhciBpc3N1ZQ0KPiAgICBbMzddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV84NDE2L3NoYXJkLWFwbDgvaWd0QGttc19mbGlwQGZsaXAtdnMtc3VzcGVu
ZEBjLWRwMS5odG1sDQo+ICAgIFszOF06IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xNzU2NC9zaGFyZC1hcGw4L2lnDQo+IHRAa21zX2ZsaXBA
ZmxpcC12cy1zdXNwZW5kQGMtZHAxLmh0bWwNCj4gDQo+ICAgKiBpZ3RAa21zX3BsYW5lX2FscGhh
X2JsZW5kQHBpcGUtYy1jb3ZlcmFnZS03ZWZjOg0KPiAgICAgLSBzaGFyZC1za2w6ICAgICAgICAg
IFtGQUlMXVszOV0gKFtmZG8jMTA4MTQ1XSAvIFtpOTE1IzI2NV0pIC0+IFtQQVNTXVs0MF0gKzEg
c2ltaWxhciBpc3N1ZQ0KPiAgICBbMzldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV84NDE2L3NoYXJkLXNrbDcvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVu
ZEBwaXBlLWMtY292ZXJhZ2UtN2VmYy5odG1sDQo+ICAgIFs0MF06IA0KPiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNzU2NC9zaGFyZC1za2wzL2ln
DQo+IHRAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBpcGUtYy1jb3ZlcmFnZS03ZWZjLmh0bWwNCj4g
DQo+ICAgKiBpZ3RAa21zX3BzckBwc3IyX2N1cnNvcl9tbWFwX2NwdToNCj4gICAgIC0gc2hhcmQt
aWNsYjogICAgICAgICBbU0tJUF1bNDFdIChbZmRvIzEwOTQ0MV0pIC0+IFtQQVNTXVs0Ml0gKzIg
c2ltaWxhciBpc3N1ZXMNCj4gICAgWzQxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fODQxNi9zaGFyZC1pY2xiNi9pZ3RAa21zX3BzckBwc3IyX2N1cnNv
cl9tbWFwX2NwdS5odG1sDQo+ICAgIFs0Ml06IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNzU2NC9zaGFyZC1pY2xiMi9pDQo+IGd0QGttc19w
c3JAcHNyMl9jdXJzb3JfbW1hcF9jcHUuaHRtbA0KPiANCj4gICAqIHtpZ3RAcGVyZkBibG9ja2lu
Zy1wYXJhbWV0ZXJpemVkfToNCj4gICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBbRkFJTF1bNDNd
IChbaTkxNSMxNTQyXSkgLT4gW1BBU1NdWzQ0XQ0KPiAgICBbNDNdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV84NDE2L3NoYXJkLWtibDEvaWd0QHBlcmZA
YmxvY2tpbmctcGFyYW1ldGVyaXplZC5odG1sDQo+ICAgIFs0NF06IA0KPiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNzU2NC9zaGFyZC1rYmw2L2ln
DQo+IHRAcGVyZkBibG9ja2luZy1wYXJhbWV0ZXJpemVkLmh0bWwNCj4gDQo+ICAgKiB7aWd0QHBl
cmZAcG9sbGluZy1wYXJhbWV0ZXJpemVkfToNCj4gICAgIC0gc2hhcmQtaHN3OiAgICAgICAgICBb
RkFJTF1bNDVdIChbaTkxNSMxNTQyXSkgLT4gW1BBU1NdWzQ2XQ0KPiAgICBbNDVdOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV84NDE2L3NoYXJkLWhzdzYv
aWd0QHBlcmZAcG9sbGluZy1wYXJhbWV0ZXJpemVkLmh0bWwNCj4gICAgWzQ2XTogDQo+IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE3NTY0L3NoYXJk
LWhzdzEvaWcNCj4gdEBwZXJmQHBvbGxpbmctcGFyYW1ldGVyaXplZC5odG1sDQo+IA0KPiAgIA0K
PiAjIyMjIFdhcm5pbmdzICMjIyMNCj4gDQo+ICAgKiBpZ3RAaTkxNV9wbV9kY0BkYzYtZHBtczoN
Cj4gICAgIC0gc2hhcmQtdGdsYjogICAgICAgICBbRkFJTF1bNDddIChbaTkxNSM0NTRdKSAtPiBb
U0tJUF1bNDhdIChbaTkxNSM0NjhdKQ0KPiAgICBbNDddOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV84NDE2L3NoYXJkLXRnbGI3L2lndEBpOTE1X3BtX2Rj
QGRjNi1kcG1zLmh0bWwNCj4gICAgWzQ4XTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE3NTY0L3NoYXJkLXRnbGIyL2kNCj4gZ3RAaTkxNV9w
bV9kY0BkYzYtZHBtcy5odG1sDQo+IA0KPiAgIA0KPiAgIHtuYW1lfTogVGhpcyBlbGVtZW50IGlz
IHN1cHByZXNzZWQuIFRoaXMgbWVhbnMgaXQgaXMgaWdub3JlZCB3aGVuIGNvbXB1dGluZw0KPiAg
ICAgICAgICAgdGhlIHN0YXR1cyBvZiB0aGUgZGlmZmVyZW5jZSAoU1VDQ0VTUywgV0FSTklORywg
b3IgRkFJTFVSRSkuDQo+IA0KPiAgIFtmZG8jMTA4MTQ1XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNr
dG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA4MTQ1DQo+ICAgW2ZkbyMxMDkyNzFdOiBodHRwczov
L2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDkyNzENCj4gICBbZmRvIzEw
OTQ0MV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTQ0
MQ0KPiAgIFtpOTE1IzE1NDJdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2lu
dGVsL2lzc3Vlcy8xNTQyDQo+ICAgW2k5MTUjMTU1XTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0
b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvMTU1DQo+ICAgW2k5MTUjMTc3XTogaHR0cHM6Ly9naXRs
YWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvMTc3DQo+ICAgW2k5MTUjMTgwXTog
aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvMTgwDQo+ICAg
W2k5MTUjMTk4XTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1
ZXMvMTk4DQo+ICAgW2k5MTUjMjY1XTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2Ry
bS9pbnRlbC9pc3N1ZXMvMjY1DQo+ICAgW2k5MTUjNDU0XTogaHR0cHM6Ly9naXRsYWIuZnJlZWRl
c2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvNDU0DQo+ICAgW2k5MTUjNDY4XTogaHR0cHM6Ly9n
aXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvNDY4DQo+ICAgW2k5MTUjNDld
OiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy80OQ0KPiAg
IFtpOTE1IzUyXTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1
ZXMvNTINCj4gICBbaTkxNSM1NF06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0v
aW50ZWwvaXNzdWVzLzU0DQo+ICAgW2k5MTUjNjFdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3Rv
cC5vcmcvZHJtL2ludGVsL2lzc3Vlcy82MQ0KPiAgIFtpOTE1IzY5OV06IGh0dHBzOi8vZ2l0bGFi
LmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzY5OQ0KPiAgIFtpOTE1IzcwXTogaHR0
cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvNzANCj4gICBbaTkx
NSM3MTZdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy83
MTYNCj4gICBbaTkxNSM3OV06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50
ZWwvaXNzdWVzLzc5DQo+ICAgW2k5MTUjNzk0XTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Au
b3JnL2RybS9pbnRlbC9pc3N1ZXMvNzk0DQo+ICAgW2k5MTUjOTNdOiBodHRwczovL2dpdGxhYi5m
cmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy85Mw0KPiAgIFtpOTE1Izk1XTogaHR0cHM6
Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvOTUNCj4gDQo+IA0KPiBQ
YXJ0aWNpcGF0aW5nIGhvc3RzICgxMCAtPiAxMCkNCj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tDQo+IA0KPiAgIE5vIGNoYW5nZXMgaW4gcGFydGljaXBhdGluZyBob3N0cw0KPiANCj4g
DQo+IEJ1aWxkIGNoYW5nZXMNCj4gLS0tLS0tLS0tLS0tLQ0KPiANCj4gICAqIENJOiBDSS0yMDE5
MDUyOSAtPiBOb25lDQo+ICAgKiBMaW51eDogQ0lfRFJNXzg0MTYgLT4gUGF0Y2h3b3JrXzE3NTY0
DQo+IA0KPiAgIENJLTIwMTkwNTI5OiAyMDE5MDUyOQ0KPiAgIENJX0RSTV84NDE2OiA0YWEyNWFi
MDMzMWM0MGY1ZDQ3NWM2NTFmNWY0ZTM4MDFiMDdmMjhkIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVz
a3RvcC5vcmcvZ2Z4LWNpL2xpbnV4DQo+ICAgSUdUXzU2Mjg6IDY1MmEzZmQ4OTY2MzQ1ZmE1NDk4
OTA0Y2U4MGEyMDI3YTY3ODI3ODMgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy94b3Jn
L2FwcC9pbnRlbC1ncHUtdG9vbHMNCj4gICBQYXRjaHdvcmtfMTc1NjQ6IDUwNDU1MTRhZmYzMGU4
M2U1OTk5ZGJjOTg3MjVlN2UxN2U4MGY0NmYgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9y
Zy9nZngtY2kvbGludXgNCj4gICBwaWdsaXRfNDUwOTogZmRjNWE0Y2ExMTEyNGFiODQxM2M3OTg4
ODk2ZWVjNGM5NzMzNjY5NCBAIA0KPiBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9waWds
aXQNCj4gDQo+ID09IExvZ3MgPT0NCj4gDQo+IEZvciBtb3JlIGRldGFpbHMgc2VlOiANCj4gaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTc1NjQvaW5k
ZXguaHRtbA0KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tCkludGVsIEZpbmxhbmQgT3kKUmVnaXN0ZXJlZCBBZGRyZXNz
OiBQTCAyODEsIDAwMTgxIEhlbHNpbmtpIApCdXNpbmVzcyBJZGVudGl0eSBDb2RlOiAwMzU3NjA2
IC0gNCAKRG9taWNpbGVkIGluIEhlbHNpbmtpIAoKVGhpcyBlLW1haWwgYW5kIGFueSBhdHRhY2ht
ZW50cyBtYXkgY29udGFpbiBjb25maWRlbnRpYWwgbWF0ZXJpYWwgZm9yCnRoZSBzb2xlIHVzZSBv
ZiB0aGUgaW50ZW5kZWQgcmVjaXBpZW50KHMpLiBBbnkgcmV2aWV3IG9yIGRpc3RyaWJ1dGlvbgpi
eSBvdGhlcnMgaXMgc3RyaWN0bHkgcHJvaGliaXRlZC4gSWYgeW91IGFyZSBub3QgdGhlIGludGVu
ZGVkCnJlY2lwaWVudCwgcGxlYXNlIGNvbnRhY3QgdGhlIHNlbmRlciBhbmQgZGVsZXRlIGFsbCBj
b3BpZXMuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
