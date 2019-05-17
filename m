Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46EC021948
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 15:38:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BFB789893;
	Fri, 17 May 2019 13:38:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F35B389893
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 13:38:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 06:38:34 -0700
X-ExtLoop1: 1
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga007.jf.intel.com with ESMTP; 17 May 2019 06:38:34 -0700
Received: from fmsmsx151.amr.corp.intel.com (10.18.125.4) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 17 May 2019 06:38:34 -0700
Received: from bgsmsx154.gar.corp.intel.com (10.224.48.47) by
 FMSMSX151.amr.corp.intel.com (10.18.125.4) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 17 May 2019 06:38:34 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.115]) by
 BGSMSX154.gar.corp.intel.com ([169.254.7.83]) with mapi id 14.03.0415.000;
 Fri, 17 May 2019 19:08:32 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQWRkIEhE?=
 =?utf-8?B?UiBNZXRhZGF0YSBQYXJzaW5nIGFuZCBoYW5kbGluZyBpbiBEUk0gbGF5ZXIg?=
 =?utf-8?Q?(rev10)?=
Thread-Index: AQHVCrzeYyf1ESxjxEC/81+ixJ/58aZvTi2w//+nz4CAAF5v4A==
Date: Fri, 17 May 2019 13:38:32 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F8202C054@BGSMSX104.gar.corp.intel.com>
References: <1557855394-12214-1-git-send-email-uma.shankar@intel.com>
 <20190515012353.20126.60826@emeril.freedesktop.org>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F8202A337@BGSMSX104.gar.corp.intel.com>
 <20190515193213.GH24299@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F8202AD52@BGSMSX104.gar.corp.intel.com>
 <20190516131501.GL24299@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F8202B07F@BGSMSX104.gar.corp.intel.com>
 <20190517130401.GO24299@intel.com>
 <56A4AB1F0E1B5D4C83D27F43C50F662E58F9DDC9@IRSMSX107.ger.corp.intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F8202BFFC@BGSMSX104.gar.corp.intel.com>
 <20190517132419.GP24299@intel.com>
In-Reply-To: <20190517132419.GP24299@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYjg5Mjc5YmQtOTFlZC00NzE3LThhYTItNTdmNTljOTI4ZWE4IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiMDBxcU5mQ0JKdWFLNkpRd3hsM1N2T3d5WmJaVGJqWDhqUCs4ODZWckJ1SUNNQVFhTkNXdVIxc09nUThSRGpVYyJ9
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Peres,
 Martin" <martin.peres@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IFZpbGxlIFN5cmrDpGzDpCBb
bWFpbHRvOnZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tXQ0KPlNlbnQ6IEZyaWRheSwgTWF5
IDE3LCAyMDE5IDY6NTQgUE0NCj5UbzogU2hhbmthciwgVW1hIDx1bWEuc2hhbmthckBpbnRlbC5j
b20+DQo+Q2M6IFBlcmVzLCBNYXJ0aW4gPG1hcnRpbi5wZXJlc0BpbnRlbC5jb20+OyBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+U3ViamVjdDogUmU6IFtJbnRlbC1nZnhdIOKclyBG
aS5DSS5JR1Q6IGZhaWx1cmUgZm9yIEFkZCBIRFIgTWV0YWRhdGEgUGFyc2luZyBhbmQgaGFuZGxp
bmcNCj5pbiBEUk0gbGF5ZXIgKHJldjEwKQ0KPg0KPk9uIEZyaSwgTWF5IDE3LCAyMDE5IGF0IDAx
OjE3OjA1UE0gKzAwMDAsIFNoYW5rYXIsIFVtYSB3cm90ZToNCj4+DQo+Pg0KPj4gPi0tLS0tT3Jp
Z2luYWwgTWVzc2FnZS0tLS0tDQo+PiA+RnJvbTogUGVyZXMsIE1hcnRpbg0KPj4gPlNlbnQ6IEZy
aWRheSwgTWF5IDE3LCAyMDE5IDY6MzkgUE0NCj4+ID5UbzogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT47IFNoYW5rYXIsIFVtYQ0KPj4gPjx1bWEuc2hhbmth
ckBpbnRlbC5jb20+DQo+PiA+Q2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4+
ID5TdWJqZWN0OiBSZTogW0ludGVsLWdmeF0g4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQWRk
IEhEUiBNZXRhZGF0YQ0KPj4gPlBhcnNpbmcgYW5kIGhhbmRsaW5nIGluIERSTSBsYXllciAocmV2
MTApDQo+PiA+DQo+PiA+T24gMTcvMDUvMjAxOSAxNjowNCwgVmlsbGUgU3lyasOkbMOkIHdyb3Rl
Og0KPj4gPj4gT24gVGh1LCBNYXkgMTYsIDIwMTkgYXQgMDE6MTg6MTVQTSArMDAwMCwgU2hhbmth
ciwgVW1hIHdyb3RlOg0KPj4gPj4+DQo+PiA+Pj4NCj4+ID4+Pj4+DQo+PiA+Pj4+Pj4gLS0tLS1P
cmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4+ID4+Pj4+PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgW21h
aWx0bzp2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbV0NCj4+ID4+Pj4+PiBTZW50OiBUaHVy
c2RheSwgTWF5IDE2LCAyMDE5IDE6MDIgQU0NCj4+ID4+Pj4+PiBUbzogU2hhbmthciwgVW1hIDx1
bWEuc2hhbmthckBpbnRlbC5jb20+DQo+PiA+Pj4+Pj4gQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcNCj4+ID4+Pj4+PiBTdWJqZWN0OiBSZTogW0ludGVsLWdmeF0g4pyXIEZpLkNJ
LklHVDogZmFpbHVyZSBmb3IgQWRkIEhEUg0KPj4gPj4+Pj4+IE1ldGFkYXRhIFBhcnNpbmcgYW5k
IGhhbmRsaW5nIGluIERSTSBsYXllciAocmV2MTApDQo+PiA+Pj4+Pj4NCj4+ID4+Pj4+PiBPbiBX
ZWQsIE1heSAxNSwgMjAxOSBhdCAwODo1OTozN0FNICswMDAwLCBTaGFua2FyLCBVbWEgd3JvdGU6
DQo+PiA+Pj4+Pj4+DQo+PiA+Pj4+Pj4+DQo+PiA+Pj4+Pj4+PiAtLS0tLU9yaWdpbmFsIE1lc3Nh
Z2UtLS0tLQ0KPj4gPj4+Pj4+Pj4gRnJvbTogUGF0Y2h3b3JrIFttYWlsdG86cGF0Y2h3b3JrQGVt
ZXJpbC5mcmVlZGVza3RvcC5vcmddDQo+PiA+Pj4+Pj4+PiBTZW50OiBXZWRuZXNkYXksIE1heSAx
NSwgMjAxOSA2OjU0IEFNDQo+PiA+Pj4+Pj4+PiBUbzogU2hhbmthciwgVW1hIDx1bWEuc2hhbmth
ckBpbnRlbC5jb20+DQo+PiA+Pj4+Pj4+PiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZw0KPj4gPj4+Pj4+Pj4gU3ViamVjdDog4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQWRk
IEhEUiBNZXRhZGF0YSBQYXJzaW5nDQo+PiA+Pj4+Pj4+PiBhbmQgaGFuZGxpbmcgaW4gRFJNIGxh
eWVyDQo+PiA+Pj4+Pj4+PiAocmV2MTApDQo+PiA+Pj4+Pj4+Pg0KPj4gPj4+Pj4+Pj4gPT0gU2Vy
aWVzIERldGFpbHMgPT0NCj4+ID4+Pj4+Pj4+DQo+PiA+Pj4+Pj4+PiBTZXJpZXM6IEFkZCBIRFIg
TWV0YWRhdGEgUGFyc2luZyBhbmQgaGFuZGxpbmcgaW4gRFJNIGxheWVyIChyZXYxMCkNCj4+ID4+
Pj4+Pj4+IFVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8y
NTA5MS8NCj4+ID4+Pj4+Pj4+IFN0YXRlIDogZmFpbHVyZQ0KPj4gPj4+Pj4+Pj4NCj4+ID4+Pj4+
Pj4+ID09IFN1bW1hcnkgPT0NCj4+ID4+Pj4+Pj4+DQo+PiA+Pj4+Pj4+PiBDSSBCdWcgTG9nIC0g
Y2hhbmdlcyBmcm9tIENJX0RSTV82MDgxX2Z1bGwgLT4NCj4+ID4+Pj4+Pj4+IFBhdGNod29ya18x
MzAxN19mdWxsDQo+PiA+Pj4+Pj4+PiA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09DQo+PiA+Pj4+Pj4+Pg0KPj4gPj4+Pj4+Pj4gU3VtbWFyeQ0KPj4g
Pj4+Pj4+Pj4gLS0tLS0tLQ0KPj4gPj4+Pj4+Pj4NCj4+ID4+Pj4+Pj4+ICAqKkZBSUxVUkUqKg0K
Pj4gPj4+Pj4+Pj4NCj4+ID4+Pj4+Pj4+ICBTZXJpb3VzIHVua25vd24gY2hhbmdlcyBjb21pbmcg
d2l0aCBQYXRjaHdvcmtfMTMwMTdfZnVsbA0KPj4gPj4+Pj4+Pj4gYWJzb2x1dGVseSBuZWVkIHRv
IGJlICB2ZXJpZmllZCBtYW51YWxseS4NCj4+ID4+Pj4+Pj4+DQo+PiA+Pj4+Pj4+PiAgSWYgeW91
IHRoaW5rIHRoZSByZXBvcnRlZCBjaGFuZ2VzIGhhdmUgbm90aGluZyB0byBkbyB3aXRoDQo+PiA+
Pj4+Pj4+PiB0aGUgY2hhbmdlcyAgaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTMwMTdfZnVsbCwg
cGxlYXNlDQo+PiA+Pj4+Pj4+PiBub3RpZnkgeW91ciBidWcgdGVhbSB0byBhbGxvdyB0aGVtICB0
byBkb2N1bWVudCB0aGlzIG5ldw0KPj4gPj4+Pj4+Pj4gZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxs
IHJlZHVjZSBmYWxzZQ0KPj4gPj4+Pj4+IHBvc2l0aXZlcyBpbiBDSS4NCj4+ID4+Pj4+Pj4+DQo+
PiA+Pj4+Pj4+Pg0KPj4gPj4+Pj4+Pj4NCj4+ID4+Pj4+Pj4+IFBvc3NpYmxlIG5ldyBpc3N1ZXMN
Cj4+ID4+Pj4+Pj4+IC0tLS0tLS0tLS0tLS0tLS0tLS0NCj4+ID4+Pj4+Pj4+DQo+PiA+Pj4+Pj4+
PiAgSGVyZSBhcmUgdGhlIHVua25vd24gY2hhbmdlcyB0aGF0IG1heSBoYXZlIGJlZW4gaW50cm9k
dWNlZA0KPj4gPj4+Pj4+Pj4gaW4NCj4+ID4+Pj4+Pj4+IFBhdGNod29ya18xMzAxN19mdWxsOg0K
Pj4gPj4+Pj4+Pj4NCj4+ID4+Pj4+Pj4+ICMjIyBJR1QgY2hhbmdlcyAjIyMNCj4+ID4+Pj4+Pj4+
DQo+PiA+Pj4+Pj4+PiAjIyMjIFBvc3NpYmxlIHJlZ3Jlc3Npb25zICMjIyMNCj4+ID4+Pj4+Pj4+
DQo+PiA+Pj4+Pj4+PiAgKiBpZ3RAZ2VtX2V4ZWNfc3VzcGVuZEBiYXNpYy1zMzoNCj4+ID4+Pj4+
Pj4+ICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bMV0gLT4gW1NLSVBdWzJdICs0MyBz
aW1pbGFyIGlzc3Vlcw0KPj4gPj4+Pj4+Pj4gICBbMV06DQo+PiA+Pj4+Pj4+PiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV82MDgxL3NoYXJkLQ0KPj4gPj4+
Pj4+Pj4gaWNsYjYvaWd0QGdlbV9leGVjX3N1c3BlbmRAYmFzaWMtczMuaHRtbA0KPj4gPj4+Pj4+
Pj4gICBbMl06DQo+PiA+Pj4+Pj4+PiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xMzAxNy9zaGFyDQo+PiA+Pj4+Pj4+PiBkLSBpY2xiNS9pZ3RAZ2Vt
X2V4ZWNfc3VzcGVuZEBiYXNpYy1zMy5odG1sDQo+PiA+Pj4+Pj4+Pg0KPj4gPj4+Pj4+Pj4gICog
aWd0QGttc19wcm9wX2Jsb2JAaW52YWxpZC1zZXQtcHJvcC1hbnk6DQo+PiA+Pj4+Pj4+PiAgICAt
IHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzNdIC0+IFtGQUlMXVs0XQ0KPj4gPj4+Pj4+Pj4g
ICBbM106DQo+PiA+Pj4+Pj4+PiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV82MDgxL3NoYXJkLQ0KPj4gPj4+Pj4+Pj4gaWNsYjYvaWd0QGttc19wcm9wX2Js
b2JAaW52YWxpZC1zZXQtcHJvcC1hbnkuaHRtbA0KPj4gPj4+Pj4+Pj4gICBbNF06DQo+PiA+Pj4+
Pj4+PiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
MzAxNy9zaGFyDQo+PiA+Pj4+Pj4+PiBkLSBpY2xiNS9pZ3RAa21zX3Byb3BfYmxvYkBpbnZhbGlk
LXNldC1wcm9wLWFueS5odG1sDQo+PiA+Pj4+Pj4+Pg0KPj4gPj4+Pj4+Pg0KPj4gPj4+Pj4+PiBI
aSBNYXJ0aW4sDQo+PiA+Pj4+Pj4+IFRoZXNlIGlzc3VlcyBhcmUgdW5yZWxhdGVkIHRvIHRoZSBj
aGFuZ2VzIG1hZGUgaW4gdGhpcyBzZXJpZXMuDQo+PiA+Pj4+Pj4+IENhbiB5b3UgcGxlYXNlIGhh
dmUgYSBsb29rIGFuZCBjb25maXJtLg0KPj4gPj4+Pj4+DQo+PiA+Pj4+Pj4gVGhlIGttc19wcm9w
IGZhaWxzIGF0IGxlYXN0IGFyZSByZWFsLiBQcm9iYWJseSBkdWUgdG8gdGhlIGJvZ3VzDQo+PiA+
Pj4+Pj4gZnVuY3Rpb24gYXJndWVtZW50cyB0byB0aGUgcmVwbGFjZV9ibG9iKCkgdGhpbmcgSSBw
b2ludGVkIG91dC4NCj4+ID4+Pj4+DQo+PiA+Pj4+PiBUaGUgQ0kgSUdUIGhhdmUgYSBjbGVhbiBQ
QVNTIG5vdy4NCj4+ID4+Pj4NCj4+ID4+Pj4gWW91IG1lYW4gaXQgd2VudCBmcm9tIEZBSUwgdG8g
UEFTUyBvbiBpdHMgb3duPyBXaHkgZGlkIHRoYXQgaGFwcGVuPw0KPj4gPj4+DQo+PiA+Pj4gSXQg
d2FzIGdpdmluZyBhIFBBU1Mgb24gZWFybGllciB2ZXJzaW9uIHY5IHdpdGggc2FtZSBjaGFuZ2Vz
LiBCdXQNCj4+ID4+PiBvbg0KPj4gPj4+IHYxMCBpdCBnYXZlIHRoaXMgZXJyb3IuIEkgd2FzIHRo
aW5raW5nIGl0IHdhcyByZS1ydW4sIG9uIGNoZWNraW5nDQo+PiA+Pj4gd2l0aCBKYW5pIE4gaGUg
Y2xhcmlmaWVkIHRoYXQgaXQgd2FzIHJlLXJlcG9ydGVkLg0KPj4gPj4NCj4+ID4+IERpZCB5b3Ug
ZXZlbiB0cnkgdG8gYW5hbHlzZSB0aGUgZmFpbHVyZXMgYXQgYWxsIG9yIGp1c3QgYXNzdW1lZA0K
Pj4gPj4gdGhleSB3ZXJlIGJvZ3VzIGFuZCBhc2tlZCBmb3IgYSByZXJ1bj8NCj4+ID4+DQo+PiA+
PiBJJ20gc3RpbGwgaW4gdGhlIGRhcmsgYXMgdG8gd2h5IHRoZXNlIGZhaWx1cmVzIHdlcmUgZGVl
bWVkIHRvIG5vdA0KPj4gPj4gYmUgcmVsZXZhbnQuDQo+PiA+Pg0KPj4gPg0KPj4gPlRoaXMgaXMg
Y29tcGxldGVseSB1bnJlbGF0ZWQgdG8gdGhpcyBzZXJpZXMuIFdlIGhhdmUgYSBidWcgZm9yIHRo
aXMNCj4+ID5pc3N1ZSBhbHJlYWR5LCBzbyBubyB3b3JyaWVzIHRoZXJlLg0KPj4gPg0KPj4gPkhv
d2V2ZXIsIHRoYW5rcyBmb3IgY2FyaW5nIHNvIG11Y2ggYWJvdXQgdGhpcy4gSSBzaG91bGQgaGF2
ZQ0KPj4gPmNsYXJpZmllZCB3aGF0IEkgd2FzIGRvaW5nLi4uDQo+Pg0KPj4gSGkgVmlsbGUsDQo+
PiBXZSBoYWQgYSBQQVNTIG9uIGVhcmxpZXIgdmVyc2lvbnMgb2YgdGhlIHNlcmllcyB3aXRoIHNh
bWUgY2hhbmdlIGFuZA0KPj4gZXZlbiBsb2NhbGx5IC4vdGVzdHMva21zX3Byb3BfYmxvYiBnYXZl
IFNVQ0NFU1MgZm9yIGFsbCBzdWJ0ZXN0cy4NCj4NCj5JIGRvbid0IGNhcmUuIFRoZXJlIHdhcyBh
IGZhaWx1cmUgaW4gYSB0ZXN0IHRoYXQgaXMgYWN0dWFsbHkgcmVsZXZhbnQgZm9yIHRoZSBjb2Rl
IGJlaW5nDQo+Y2hhbmdlZCwgc28gaXQgc2hvdWxkIGhhdmUgYmVlbiBhbmFseXplZCBhbmQgdGhl
IHJlc3VsdHMgb2YgdGhhdCBhbmFseXNpcyBzaGFyZWQgb24NCj50aGUgbGlzdC4gV2l0aG91dCB0
aGF0IEknbSBqdXN0IGdvaW5nIHRvIGFzc3VtZSB0aGVyZSBpcyBhIHBvdGVudGlhbCBidWcgaW4g
dGhlIG5ldyBjb2RlDQo+YW5kIG5vdCBtZXJnZSB0aGUgdGhpbmcuDQoNClNpbmNlIHRoaXMgY2Ft
ZSBhcyBhbiBpc3N1ZSB3aGljaCBkaWRuJ3QgcmVwcm9kdWNlZCBsb2NhbGx5IGFuZCBhbHNvIG9s
ZGVyIHZlcnNpb25zIG9mIHRoZQ0Kc2VyaWVzIGFsc28gd29ya2VkLCBJIGFza2VkIGZvciBhIHJl
LXJ1biB0byBiZSBzdXJlIChvciBpZiBpdCdzIGFscmVhZHkga25vd24gaXNzdWUgaGFwcGVuaW5n
IGR1ZSB0bw0Kc29tZXRoaW5nIHdoaWNoIHBlb3BsZSBhcmUgYWxyZWFkeSBhd2FyZSBvZikuIEFs
c28gSSBuZXZlciBkb3VidGVkIHRoYXQgc29tZXRoaW5nIGlzIHdyb25nIGluDQpibG9iIGhhbmRp
bmcgc2luY2UgaXQgd2FzIGRvbmUgbGlrZSB0aGF0IGZyb20gdGhlIGJlZ2lubmluZyBvZiB0aGlz
IHNlcmllcy4gSSB3aWxsIGJlIG1vcmUNCmNhcmVmdWwgZ29pbmcgZm9yd2FyZCB0byBhZGQgdGhl
c2UgZGV0YWlscyBhbmQgZXhwbGFuYXRpb25zIHdoaWxlIGFza2luZyBmb3IgYSByZS1ydW4uIA0K
DQpSZWdhcmRzLA0KVW1hIFNoYW5rYXINCg0KPi0tDQo+VmlsbGUgU3lyasOkbMOkDQo+SW50ZWwN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
