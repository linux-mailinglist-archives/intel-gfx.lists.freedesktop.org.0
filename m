Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5351207D7
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2019 15:18:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5DB689337;
	Thu, 16 May 2019 13:18:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39CB289337
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2019 13:18:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 May 2019 06:18:23 -0700
X-ExtLoop1: 1
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga001.fm.intel.com with ESMTP; 16 May 2019 06:18:23 -0700
Received: from fmsmsx151.amr.corp.intel.com (10.18.125.4) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Thu, 16 May 2019 06:18:23 -0700
Received: from BGSMSX107.gar.corp.intel.com (10.223.4.191) by
 FMSMSX151.amr.corp.intel.com (10.18.125.4) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Thu, 16 May 2019 06:18:23 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.115]) by
 BGSMSX107.gar.corp.intel.com ([169.254.9.118]) with mapi id 14.03.0415.000;
 Thu, 16 May 2019 18:48:15 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQWRkIEhE?=
 =?utf-8?B?UiBNZXRhZGF0YSBQYXJzaW5nIGFuZCBoYW5kbGluZyBpbiBEUk0gbGF5ZXIg?=
 =?utf-8?Q?(rev10)?=
Thread-Index: AQHVCrzeYyf1ESxjxEC/81+ixJ/58aZr41OAgABUyoCAASPEsIAABS2AgABceOA=
Date: Thu, 16 May 2019 13:18:15 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F8202B07F@BGSMSX104.gar.corp.intel.com>
References: <1557855394-12214-1-git-send-email-uma.shankar@intel.com>
 <20190515012353.20126.60826@emeril.freedesktop.org>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F8202A337@BGSMSX104.gar.corp.intel.com>
 <20190515193213.GH24299@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F8202AD52@BGSMSX104.gar.corp.intel.com>
 <20190516131501.GL24299@intel.com>
In-Reply-To: <20190516131501.GL24299@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZDA3OThhNjktM2Q2NC00ODQ0LThiNmQtYzM0MjdlZTk5NTgwIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiVTRJUlwvdGNnQ0RQRFdpWmV0MFY5dG96Tk1GRjB2ZWJlc1V1SmVudVF4THppZ3YzeEhcL2NOTGViNVNWZ1d5eCtrIn0=
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

DQoNCj4+DQo+PiA+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4+ID5Gcm9tOiBWaWxsZSBT
eXJqw6Rsw6QgW21haWx0bzp2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbV0NCj4+ID5TZW50
OiBUaHVyc2RheSwgTWF5IDE2LCAyMDE5IDE6MDIgQU0NCj4+ID5UbzogU2hhbmthciwgVW1hIDx1
bWEuc2hhbmthckBpbnRlbC5jb20+DQo+PiA+Q2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCj4+ID5TdWJqZWN0OiBSZTogW0ludGVsLWdmeF0g4pyXIEZpLkNJLklHVDogZmFpbHVy
ZSBmb3IgQWRkIEhEUiBNZXRhZGF0YQ0KPj4gPlBhcnNpbmcgYW5kIGhhbmRsaW5nIGluIERSTSBs
YXllciAocmV2MTApDQo+PiA+DQo+PiA+T24gV2VkLCBNYXkgMTUsIDIwMTkgYXQgMDg6NTk6MzdB
TSArMDAwMCwgU2hhbmthciwgVW1hIHdyb3RlOg0KPj4gPj4NCj4+ID4+DQo+PiA+PiA+LS0tLS1P
cmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4+ID4+ID5Gcm9tOiBQYXRjaHdvcmsgW21haWx0bzpwYXRj
aHdvcmtAZW1lcmlsLmZyZWVkZXNrdG9wLm9yZ10NCj4+ID4+ID5TZW50OiBXZWRuZXNkYXksIE1h
eSAxNSwgMjAxOSA2OjU0IEFNDQo+PiA+PiA+VG86IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJA
aW50ZWwuY29tPg0KPj4gPj4gPkNjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+
PiA+PiA+U3ViamVjdDog4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQWRkIEhEUiBNZXRhZGF0
YSBQYXJzaW5nIGFuZA0KPj4gPj4gPmhhbmRsaW5nIGluIERSTSBsYXllcg0KPj4gPj4gPihyZXYx
MCkNCj4+ID4+ID4NCj4+ID4+ID49PSBTZXJpZXMgRGV0YWlscyA9PQ0KPj4gPj4gPg0KPj4gPj4g
PlNlcmllczogQWRkIEhEUiBNZXRhZGF0YSBQYXJzaW5nIGFuZCBoYW5kbGluZyBpbiBEUk0gbGF5
ZXIgKHJldjEwKQ0KPj4gPj4gPlVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Au
b3JnL3Nlcmllcy8yNTA5MS8NCj4+ID4+ID5TdGF0ZSA6IGZhaWx1cmUNCj4+ID4+ID4NCj4+ID4+
ID49PSBTdW1tYXJ5ID09DQo+PiA+PiA+DQo+PiA+PiA+Q0kgQnVnIExvZyAtIGNoYW5nZXMgZnJv
bSBDSV9EUk1fNjA4MV9mdWxsIC0+IFBhdGNod29ya18xMzAxN19mdWxsDQo+PiA+PiA+PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQ0KPj4gPj4gPg0K
Pj4gPj4gPlN1bW1hcnkNCj4+ID4+ID4tLS0tLS0tDQo+PiA+PiA+DQo+PiA+PiA+ICAqKkZBSUxV
UkUqKg0KPj4gPj4gPg0KPj4gPj4gPiAgU2VyaW91cyB1bmtub3duIGNoYW5nZXMgY29taW5nIHdp
dGggUGF0Y2h3b3JrXzEzMDE3X2Z1bGwNCj4+ID4+ID4gYWJzb2x1dGVseSBuZWVkIHRvIGJlICB2
ZXJpZmllZCBtYW51YWxseS4NCj4+ID4+ID4NCj4+ID4+ID4gIElmIHlvdSB0aGluayB0aGUgcmVw
b3J0ZWQgY2hhbmdlcyBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUNCj4+ID4+ID4gY2hhbmdl
cyAgaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTMwMTdfZnVsbCwgcGxlYXNlIG5vdGlmeSB5b3Vy
DQo+PiA+PiA+IGJ1ZyB0ZWFtIHRvIGFsbG93IHRoZW0gIHRvIGRvY3VtZW50IHRoaXMgbmV3IGZh
aWx1cmUgbW9kZSwgd2hpY2gNCj4+ID4+ID4gd2lsbCByZWR1Y2UgZmFsc2UNCj4+ID5wb3NpdGl2
ZXMgaW4gQ0kuDQo+PiA+PiA+DQo+PiA+PiA+DQo+PiA+PiA+DQo+PiA+PiA+UG9zc2libGUgbmV3
IGlzc3Vlcw0KPj4gPj4gPi0tLS0tLS0tLS0tLS0tLS0tLS0NCj4+ID4+ID4NCj4+ID4+ID4gIEhl
cmUgYXJlIHRoZSB1bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJvZHVjZWQg
aW4NCj4+ID4+ID5QYXRjaHdvcmtfMTMwMTdfZnVsbDoNCj4+ID4+ID4NCj4+ID4+ID4jIyMgSUdU
IGNoYW5nZXMgIyMjDQo+PiA+PiA+DQo+PiA+PiA+IyMjIyBQb3NzaWJsZSByZWdyZXNzaW9ucyAj
IyMjDQo+PiA+PiA+DQo+PiA+PiA+ICAqIGlndEBnZW1fZXhlY19zdXNwZW5kQGJhc2ljLXMzOg0K
Pj4gPj4gPiAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1NdWzFdIC0+IFtTS0lQXVsyXSAr
NDMgc2ltaWxhciBpc3N1ZXMNCj4+ID4+ID4gICBbMV06DQo+PiA+PiA+aHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjA4MS9zaGFyZC0NCj4+ID4+ID5pY2xi
Ni9pZ3RAZ2VtX2V4ZWNfc3VzcGVuZEBiYXNpYy1zMy5odG1sDQo+PiA+PiA+ICAgWzJdOg0KPj4g
Pj4gPmh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEz
MDE3L3NoYXJkLQ0KPj4gPj4gPmljbGI1L2lndEBnZW1fZXhlY19zdXNwZW5kQGJhc2ljLXMzLmh0
bWwNCj4+ID4+ID4NCj4+ID4+ID4gICogaWd0QGttc19wcm9wX2Jsb2JAaW52YWxpZC1zZXQtcHJv
cC1hbnk6DQo+PiA+PiA+ICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11bM10gLT4gW0ZB
SUxdWzRdDQo+PiA+PiA+ICAgWzNdOg0KPj4gPj4gPmh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzYwODEvc2hhcmQtDQo+PiA+PiA+aWNsYjYvaWd0QGttc19w
cm9wX2Jsb2JAaW52YWxpZC1zZXQtcHJvcC1hbnkuaHRtbA0KPj4gPj4gPiAgIFs0XToNCj4+ID4+
ID5odHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzAx
Ny9zaGFyZC0NCj4+ID4+ID5pY2xiNS9pZ3RAa21zX3Byb3BfYmxvYkBpbnZhbGlkLXNldC1wcm9w
LWFueS5odG1sDQo+PiA+PiA+DQo+PiA+Pg0KPj4gPj4gSGkgTWFydGluLA0KPj4gPj4gVGhlc2Ug
aXNzdWVzIGFyZSB1bnJlbGF0ZWQgdG8gdGhlIGNoYW5nZXMgbWFkZSBpbiB0aGlzIHNlcmllcy4g
Q2FuDQo+PiA+PiB5b3UgcGxlYXNlIGhhdmUgYSBsb29rIGFuZCBjb25maXJtLg0KPj4gPg0KPj4g
PlRoZSBrbXNfcHJvcCBmYWlscyBhdCBsZWFzdCBhcmUgcmVhbC4gUHJvYmFibHkgZHVlIHRvIHRo
ZSBib2d1cw0KPj4gPmZ1bmN0aW9uIGFyZ3VlbWVudHMgdG8gdGhlIHJlcGxhY2VfYmxvYigpIHRo
aW5nIEkgcG9pbnRlZCBvdXQuDQo+Pg0KPj4gVGhlIENJIElHVCBoYXZlIGEgY2xlYW4gUEFTUyBu
b3cuDQo+DQo+WW91IG1lYW4gaXQgd2VudCBmcm9tIEZBSUwgdG8gUEFTUyBvbiBpdHMgb3duPyBX
aHkgZGlkIHRoYXQgaGFwcGVuPw0KDQpJdCB3YXMgZ2l2aW5nIGEgUEFTUyBvbiBlYXJsaWVyIHZl
cnNpb24gdjkgd2l0aCBzYW1lIGNoYW5nZXMuIEJ1dCBvbiB2MTAgaXQgZ2F2ZQ0KdGhpcyBlcnJv
ci4gSSB3YXMgdGhpbmtpbmcgaXQgd2FzIHJlLXJ1biwgb24gY2hlY2tpbmcgd2l0aCBKYW5pIE4g
aGUgY2xhcmlmaWVkIHRoYXQgaXQNCndhcyByZS1yZXBvcnRlZC4gDQoNCj4+IFdpbGwgYW55d2F5
cyB1cGRhdGUgdGhlIGZ1bmN0aW9uIGFyZ3VtZW50cyBhbmQgbWFrZSBpdCBjb25zaXN0ZW50Lg0K
Pj4NCj4+IFJlZ2FyZHMsDQo+PiBVbWEgU2hhbmthcg0KPj4NCj4+ID4tLQ0KPj4gPlZpbGxlIFN5
cmrDpGzDpA0KPj4gPkludGVsDQo+DQo+LS0NCj5WaWxsZSBTeXJqw6Rsw6QNCj5JbnRlbA0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
