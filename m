Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C2C218FF
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 15:17:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDFCE897EE;
	Fri, 17 May 2019 13:17:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D175897EE
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 13:17:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 06:17:09 -0700
X-ExtLoop1: 1
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga004.fm.intel.com with ESMTP; 17 May 2019 06:17:09 -0700
Received: from bgsmsx102.gar.corp.intel.com (10.223.4.172) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 17 May 2019 06:17:08 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.115]) by
 BGSMSX102.gar.corp.intel.com ([169.254.2.127]) with mapi id 14.03.0415.000;
 Fri, 17 May 2019 18:47:06 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Peres, Martin" <martin.peres@intel.com>, =?utf-8?B?VmlsbGUgU3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQWRkIEhE?=
 =?utf-8?B?UiBNZXRhZGF0YSBQYXJzaW5nIGFuZCBoYW5kbGluZyBpbiBEUk0gbGF5ZXIg?=
 =?utf-8?Q?(rev10)?=
Thread-Index: AQHVCrzeYyf1ESxjxEC/81+ixJ/58aZvTi2w
Date: Fri, 17 May 2019 13:17:05 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F8202BFFC@BGSMSX104.gar.corp.intel.com>
References: <1557855394-12214-1-git-send-email-uma.shankar@intel.com>
 <20190515012353.20126.60826@emeril.freedesktop.org>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F8202A337@BGSMSX104.gar.corp.intel.com>
 <20190515193213.GH24299@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F8202AD52@BGSMSX104.gar.corp.intel.com>
 <20190516131501.GL24299@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F8202B07F@BGSMSX104.gar.corp.intel.com>
 <20190517130401.GO24299@intel.com>
 <56A4AB1F0E1B5D4C83D27F43C50F662E58F9DDC9@IRSMSX107.ger.corp.intel.com>
In-Reply-To: <56A4AB1F0E1B5D4C83D27F43C50F662E58F9DDC9@IRSMSX107.ger.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMDU0ZDM0ZGEtMWEzNi00ZWMyLTg5M2QtYTgzZTRiYzlhYzAxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiWVVuNDRVXC9NVjh0SXB2TE11VGZsZlRTbEloQmdISWJ1U2t0RUJZT1JmTFE3WFZXRTRsTUQ1TFZFdVpYQnBRd1wvIn0=
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQWRk?=
 =?utf-8?q?_HDR_Metadata_Parsing_and_handling_in_DRM_layer_=28rev10=29?=
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

DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IFBlcmVzLCBNYXJ0aW4NCj5T
ZW50OiBGcmlkYXksIE1heSAxNywgMjAxOSA2OjM5IFBNDQo+VG86IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+OyBTaGFua2FyLCBVbWENCj48dW1hLnNoYW5r
YXJAaW50ZWwuY29tPg0KPkNjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+U3Vi
amVjdDogUmU6IFtJbnRlbC1nZnhdIOKclyBGaS5DSS5JR1Q6IGZhaWx1cmUgZm9yIEFkZCBIRFIg
TWV0YWRhdGEgUGFyc2luZyBhbmQgaGFuZGxpbmcNCj5pbiBEUk0gbGF5ZXIgKHJldjEwKQ0KPg0K
Pk9uIDE3LzA1LzIwMTkgMTY6MDQsIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToNCj4+IE9uIFRodSwg
TWF5IDE2LCAyMDE5IGF0IDAxOjE4OjE1UE0gKzAwMDAsIFNoYW5rYXIsIFVtYSB3cm90ZToNCj4+
Pg0KPj4+DQo+Pj4+Pg0KPj4+Pj4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+Pj4+Pj4g
RnJvbTogVmlsbGUgU3lyasOkbMOkIFttYWlsdG86dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b21dDQo+Pj4+Pj4gU2VudDogVGh1cnNkYXksIE1heSAxNiwgMjAxOSAxOjAyIEFNDQo+Pj4+Pj4g
VG86IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KPj4+Pj4+IENjOiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+Pj4+Pj4gU3ViamVjdDogUmU6IFtJbnRlbC1n
ZnhdIOKclyBGaS5DSS5JR1Q6IGZhaWx1cmUgZm9yIEFkZCBIRFIgTWV0YWRhdGENCj4+Pj4+PiBQ
YXJzaW5nIGFuZCBoYW5kbGluZyBpbiBEUk0gbGF5ZXIgKHJldjEwKQ0KPj4+Pj4+DQo+Pj4+Pj4g
T24gV2VkLCBNYXkgMTUsIDIwMTkgYXQgMDg6NTk6MzdBTSArMDAwMCwgU2hhbmthciwgVW1hIHdy
b3RlOg0KPj4+Pj4+Pg0KPj4+Pj4+Pg0KPj4+Pj4+Pj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0t
LS0NCj4+Pj4+Pj4+IEZyb206IFBhdGNod29yayBbbWFpbHRvOnBhdGNod29ya0BlbWVyaWwuZnJl
ZWRlc2t0b3Aub3JnXQ0KPj4+Pj4+Pj4gU2VudDogV2VkbmVzZGF5LCBNYXkgMTUsIDIwMTkgNjo1
NCBBTQ0KPj4+Pj4+Pj4gVG86IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0K
Pj4+Pj4+Pj4gQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4+Pj4+Pj4+IFN1
YmplY3Q6IOKclyBGaS5DSS5JR1Q6IGZhaWx1cmUgZm9yIEFkZCBIRFIgTWV0YWRhdGEgUGFyc2lu
ZyBhbmQNCj4+Pj4+Pj4+IGhhbmRsaW5nIGluIERSTSBsYXllcg0KPj4+Pj4+Pj4gKHJldjEwKQ0K
Pj4+Pj4+Pj4NCj4+Pj4+Pj4+ID09IFNlcmllcyBEZXRhaWxzID09DQo+Pj4+Pj4+Pg0KPj4+Pj4+
Pj4gU2VyaWVzOiBBZGQgSERSIE1ldGFkYXRhIFBhcnNpbmcgYW5kIGhhbmRsaW5nIGluIERSTSBs
YXllciAocmV2MTApDQo+Pj4+Pj4+PiBVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNr
dG9wLm9yZy9zZXJpZXMvMjUwOTEvDQo+Pj4+Pj4+PiBTdGF0ZSA6IGZhaWx1cmUNCj4+Pj4+Pj4+
DQo+Pj4+Pj4+PiA9PSBTdW1tYXJ5ID09DQo+Pj4+Pj4+Pg0KPj4+Pj4+Pj4gQ0kgQnVnIExvZyAt
IGNoYW5nZXMgZnJvbSBDSV9EUk1fNjA4MV9mdWxsIC0+DQo+Pj4+Pj4+PiBQYXRjaHdvcmtfMTMw
MTdfZnVsbA0KPj4+Pj4+Pj4gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PQ0KPj4+Pj4+Pj4NCj4+Pj4+Pj4+IFN1bW1hcnkNCj4+Pj4+Pj4+IC0tLS0t
LS0NCj4+Pj4+Pj4+DQo+Pj4+Pj4+PiAgKipGQUlMVVJFKioNCj4+Pj4+Pj4+DQo+Pj4+Pj4+PiAg
U2VyaW91cyB1bmtub3duIGNoYW5nZXMgY29taW5nIHdpdGggUGF0Y2h3b3JrXzEzMDE3X2Z1bGwN
Cj4+Pj4+Pj4+IGFic29sdXRlbHkgbmVlZCB0byBiZSAgdmVyaWZpZWQgbWFudWFsbHkuDQo+Pj4+
Pj4+Pg0KPj4+Pj4+Pj4gIElmIHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hhbmdlcyBoYXZlIG5v
dGhpbmcgdG8gZG8gd2l0aCB0aGUNCj4+Pj4+Pj4+IGNoYW5nZXMgIGludHJvZHVjZWQgaW4gUGF0
Y2h3b3JrXzEzMDE3X2Z1bGwsIHBsZWFzZSBub3RpZnkgeW91cg0KPj4+Pj4+Pj4gYnVnIHRlYW0g
dG8gYWxsb3cgdGhlbSAgdG8gZG9jdW1lbnQgdGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3aGljaA0K
Pj4+Pj4+Pj4gd2lsbCByZWR1Y2UgZmFsc2UNCj4+Pj4+PiBwb3NpdGl2ZXMgaW4gQ0kuDQo+Pj4+
Pj4+Pg0KPj4+Pj4+Pj4NCj4+Pj4+Pj4+DQo+Pj4+Pj4+PiBQb3NzaWJsZSBuZXcgaXNzdWVzDQo+
Pj4+Pj4+PiAtLS0tLS0tLS0tLS0tLS0tLS0tDQo+Pj4+Pj4+Pg0KPj4+Pj4+Pj4gIEhlcmUgYXJl
IHRoZSB1bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJvZHVjZWQgaW4NCj4+
Pj4+Pj4+IFBhdGNod29ya18xMzAxN19mdWxsOg0KPj4+Pj4+Pj4NCj4+Pj4+Pj4+ICMjIyBJR1Qg
Y2hhbmdlcyAjIyMNCj4+Pj4+Pj4+DQo+Pj4+Pj4+PiAjIyMjIFBvc3NpYmxlIHJlZ3Jlc3Npb25z
ICMjIyMNCj4+Pj4+Pj4+DQo+Pj4+Pj4+PiAgKiBpZ3RAZ2VtX2V4ZWNfc3VzcGVuZEBiYXNpYy1z
MzoNCj4+Pj4+Pj4+ICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bMV0gLT4gW1NLSVBd
WzJdICs0MyBzaW1pbGFyIGlzc3Vlcw0KPj4+Pj4+Pj4gICBbMV06DQo+Pj4+Pj4+PiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MDgxL3NoYXJkLQ0KPj4+
Pj4+Pj4gaWNsYjYvaWd0QGdlbV9leGVjX3N1c3BlbmRAYmFzaWMtczMuaHRtbA0KPj4+Pj4+Pj4g
ICBbMl06DQo+Pj4+Pj4+PiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xMzAxNy9zaGFyZC0NCj4+Pj4+Pj4+IGljbGI1L2lndEBnZW1fZXhlY19zdXNw
ZW5kQGJhc2ljLXMzLmh0bWwNCj4+Pj4+Pj4+DQo+Pj4+Pj4+PiAgKiBpZ3RAa21zX3Byb3BfYmxv
YkBpbnZhbGlkLXNldC1wcm9wLWFueToNCj4+Pj4+Pj4+ICAgIC0gc2hhcmQtaWNsYjogICAgICAg
ICBbUEFTU11bM10gLT4gW0ZBSUxdWzRdDQo+Pj4+Pj4+PiAgIFszXToNCj4+Pj4+Pj4+IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzYwODEvc2hhcmQtDQo+
Pj4+Pj4+PiBpY2xiNi9pZ3RAa21zX3Byb3BfYmxvYkBpbnZhbGlkLXNldC1wcm9wLWFueS5odG1s
DQo+Pj4+Pj4+PiAgIFs0XToNCj4+Pj4+Pj4+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzMDE3L3NoYXJkLQ0KPj4+Pj4+Pj4gaWNsYjUvaWd0QGtt
c19wcm9wX2Jsb2JAaW52YWxpZC1zZXQtcHJvcC1hbnkuaHRtbA0KPj4+Pj4+Pj4NCj4+Pj4+Pj4N
Cj4+Pj4+Pj4gSGkgTWFydGluLA0KPj4+Pj4+PiBUaGVzZSBpc3N1ZXMgYXJlIHVucmVsYXRlZCB0
byB0aGUgY2hhbmdlcyBtYWRlIGluIHRoaXMgc2VyaWVzLg0KPj4+Pj4+PiBDYW4geW91IHBsZWFz
ZSBoYXZlIGEgbG9vayBhbmQgY29uZmlybS4NCj4+Pj4+Pg0KPj4+Pj4+IFRoZSBrbXNfcHJvcCBm
YWlscyBhdCBsZWFzdCBhcmUgcmVhbC4gUHJvYmFibHkgZHVlIHRvIHRoZSBib2d1cw0KPj4+Pj4+
IGZ1bmN0aW9uIGFyZ3VlbWVudHMgdG8gdGhlIHJlcGxhY2VfYmxvYigpIHRoaW5nIEkgcG9pbnRl
ZCBvdXQuDQo+Pj4+Pg0KPj4+Pj4gVGhlIENJIElHVCBoYXZlIGEgY2xlYW4gUEFTUyBub3cuDQo+
Pj4+DQo+Pj4+IFlvdSBtZWFuIGl0IHdlbnQgZnJvbSBGQUlMIHRvIFBBU1Mgb24gaXRzIG93bj8g
V2h5IGRpZCB0aGF0IGhhcHBlbj8NCj4+Pg0KPj4+IEl0IHdhcyBnaXZpbmcgYSBQQVNTIG9uIGVh
cmxpZXIgdmVyc2lvbiB2OSB3aXRoIHNhbWUgY2hhbmdlcy4gQnV0IG9uDQo+Pj4gdjEwIGl0IGdh
dmUgdGhpcyBlcnJvci4gSSB3YXMgdGhpbmtpbmcgaXQgd2FzIHJlLXJ1biwgb24gY2hlY2tpbmcN
Cj4+PiB3aXRoIEphbmkgTiBoZSBjbGFyaWZpZWQgdGhhdCBpdCB3YXMgcmUtcmVwb3J0ZWQuDQo+
Pg0KPj4gRGlkIHlvdSBldmVuIHRyeSB0byBhbmFseXNlIHRoZSBmYWlsdXJlcyBhdCBhbGwgb3Ig
anVzdCBhc3N1bWVkIHRoZXkNCj4+IHdlcmUgYm9ndXMgYW5kIGFza2VkIGZvciBhIHJlcnVuPw0K
Pj4NCj4+IEknbSBzdGlsbCBpbiB0aGUgZGFyayBhcyB0byB3aHkgdGhlc2UgZmFpbHVyZXMgd2Vy
ZSBkZWVtZWQgdG8gbm90IGJlDQo+PiByZWxldmFudC4NCj4+DQo+DQo+VGhpcyBpcyBjb21wbGV0
ZWx5IHVucmVsYXRlZCB0byB0aGlzIHNlcmllcy4gV2UgaGF2ZSBhIGJ1ZyBmb3IgdGhpcyBpc3N1
ZSBhbHJlYWR5LCBzbyBubw0KPndvcnJpZXMgdGhlcmUuDQo+DQo+SG93ZXZlciwgdGhhbmtzIGZv
ciBjYXJpbmcgc28gbXVjaCBhYm91dCB0aGlzLiBJIHNob3VsZCBoYXZlIGNsYXJpZmllZCB3aGF0
IEkgd2FzDQo+ZG9pbmcuLi4NCg0KSGkgVmlsbGUsDQpXZSBoYWQgYSBQQVNTIG9uIGVhcmxpZXIg
dmVyc2lvbnMgb2YgdGhlIHNlcmllcyB3aXRoIHNhbWUgY2hhbmdlIGFuZCBldmVuIGxvY2FsbHkN
Ci4vdGVzdHMva21zX3Byb3BfYmxvYiBnYXZlIFNVQ0NFU1MgZm9yIGFsbCBzdWJ0ZXN0cy4gU28g
SSByZXBvcnRlZCB0aGlzIHRvIE1hcnRpbiBhbmQNCkphbmksIGFuZCBNYXJ0aW4gaGVscGVkIHRv
IGZpeCB0aGlzLCB3cnQgZ2V0dGluZyByZXBvcnRlZCBjb3JyZWN0bHkuDQoNClJlZ2FyZHMsDQpV
bWEgU2hhbmthcg0KDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
