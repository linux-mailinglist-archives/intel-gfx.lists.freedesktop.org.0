Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 876B82003F
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2019 09:28:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0324A891D1;
	Thu, 16 May 2019 07:28:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB7E1891D1
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2019 07:28:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 May 2019 00:28:47 -0700
X-ExtLoop1: 1
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga008.fm.intel.com with ESMTP; 16 May 2019 00:28:47 -0700
Received: from fmsmsx111.amr.corp.intel.com (10.18.116.5) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Thu, 16 May 2019 00:28:47 -0700
Received: from bgsmsx152.gar.corp.intel.com (10.224.48.50) by
 fmsmsx111.amr.corp.intel.com (10.18.116.5) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Thu, 16 May 2019 00:28:46 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.115]) by
 BGSMSX152.gar.corp.intel.com ([169.254.6.102]) with mapi id 14.03.0415.000;
 Thu, 16 May 2019 12:58:43 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQWRkIEhE?=
 =?utf-8?B?UiBNZXRhZGF0YSBQYXJzaW5nIGFuZCBoYW5kbGluZyBpbiBEUk0gbGF5ZXIg?=
 =?utf-8?Q?(rev10)?=
Thread-Index: AQHVCrzeYyf1ESxjxEC/81+ixJ/58aZr41OAgABUyoCAASPEsA==
Date: Thu, 16 May 2019 07:28:43 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F8202AD52@BGSMSX104.gar.corp.intel.com>
References: <1557855394-12214-1-git-send-email-uma.shankar@intel.com>
 <20190515012353.20126.60826@emeril.freedesktop.org>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F8202A337@BGSMSX104.gar.corp.intel.com>
 <20190515193213.GH24299@intel.com>
In-Reply-To: <20190515193213.GH24299@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMjIxYjFmYzctMDA4OS00YWUxLTk0MDQtOWE3MDMyOTQwMDUxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiQnNCdzY2WUExWjlPQU1yalwvXC9WVEQwa3A0UXA5a0tSMnI5NE5kbGZtZFwvdWxEcGtJQWdIWUsxWlhjSEVYQmtnaSJ9
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
bWFpbHRvOnZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tXQ0KPlNlbnQ6IFRodXJzZGF5LCBN
YXkgMTYsIDIwMTkgMTowMiBBTQ0KPlRvOiBTaGFua2FyLCBVbWEgPHVtYS5zaGFua2FyQGludGVs
LmNvbT4NCj5DYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPlN1YmplY3Q6IFJl
OiBbSW50ZWwtZ2Z4XSDinJcgRmkuQ0kuSUdUOiBmYWlsdXJlIGZvciBBZGQgSERSIE1ldGFkYXRh
IFBhcnNpbmcgYW5kIGhhbmRsaW5nDQo+aW4gRFJNIGxheWVyIChyZXYxMCkNCj4NCj5PbiBXZWQs
IE1heSAxNSwgMjAxOSBhdCAwODo1OTozN0FNICswMDAwLCBTaGFua2FyLCBVbWEgd3JvdGU6DQo+
Pg0KPj4NCj4+ID4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPj4gPkZyb206IFBhdGNod29y
ayBbbWFpbHRvOnBhdGNod29ya0BlbWVyaWwuZnJlZWRlc2t0b3Aub3JnXQ0KPj4gPlNlbnQ6IFdl
ZG5lc2RheSwgTWF5IDE1LCAyMDE5IDY6NTQgQU0NCj4+ID5UbzogU2hhbmthciwgVW1hIDx1bWEu
c2hhbmthckBpbnRlbC5jb20+DQo+PiA+Q2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcNCj4+ID5TdWJqZWN0OiDinJcgRmkuQ0kuSUdUOiBmYWlsdXJlIGZvciBBZGQgSERSIE1ldGFk
YXRhIFBhcnNpbmcgYW5kDQo+PiA+aGFuZGxpbmcgaW4gRFJNIGxheWVyDQo+PiA+KHJldjEwKQ0K
Pj4gPg0KPj4gPj09IFNlcmllcyBEZXRhaWxzID09DQo+PiA+DQo+PiA+U2VyaWVzOiBBZGQgSERS
IE1ldGFkYXRhIFBhcnNpbmcgYW5kIGhhbmRsaW5nIGluIERSTSBsYXllciAocmV2MTApDQo+PiA+
VVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzI1MDkxLw0K
Pj4gPlN0YXRlIDogZmFpbHVyZQ0KPj4gPg0KPj4gPj09IFN1bW1hcnkgPT0NCj4+ID4NCj4+ID5D
SSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV82MDgxX2Z1bGwgLT4gUGF0Y2h3b3JrXzEz
MDE3X2Z1bGwNCj4+ID49PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09DQo+PiA+DQo+PiA+U3VtbWFyeQ0KPj4gPi0tLS0tLS0NCj4+ID4NCj4+ID4gICoq
RkFJTFVSRSoqDQo+PiA+DQo+PiA+ICBTZXJpb3VzIHVua25vd24gY2hhbmdlcyBjb21pbmcgd2l0
aCBQYXRjaHdvcmtfMTMwMTdfZnVsbCBhYnNvbHV0ZWx5DQo+PiA+IG5lZWQgdG8gYmUgIHZlcmlm
aWVkIG1hbnVhbGx5Lg0KPj4gPg0KPj4gPiAgSWYgeW91IHRoaW5rIHRoZSByZXBvcnRlZCBjaGFu
Z2VzIGhhdmUgbm90aGluZyB0byBkbyB3aXRoIHRoZQ0KPj4gPiBjaGFuZ2VzICBpbnRyb2R1Y2Vk
IGluIFBhdGNod29ya18xMzAxN19mdWxsLCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnDQo+PiA+IHRl
YW0gdG8gYWxsb3cgdGhlbSAgdG8gZG9jdW1lbnQgdGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3aGlj
aCB3aWxsIHJlZHVjZSBmYWxzZQ0KPnBvc2l0aXZlcyBpbiBDSS4NCj4+ID4NCj4+ID4NCj4+ID4N
Cj4+ID5Qb3NzaWJsZSBuZXcgaXNzdWVzDQo+PiA+LS0tLS0tLS0tLS0tLS0tLS0tLQ0KPj4gPg0K
Pj4gPiAgSGVyZSBhcmUgdGhlIHVua25vd24gY2hhbmdlcyB0aGF0IG1heSBoYXZlIGJlZW4gaW50
cm9kdWNlZCBpbg0KPj4gPlBhdGNod29ya18xMzAxN19mdWxsOg0KPj4gPg0KPj4gPiMjIyBJR1Qg
Y2hhbmdlcyAjIyMNCj4+ID4NCj4+ID4jIyMjIFBvc3NpYmxlIHJlZ3Jlc3Npb25zICMjIyMNCj4+
ID4NCj4+ID4gICogaWd0QGdlbV9leGVjX3N1c3BlbmRAYmFzaWMtczM6DQo+PiA+ICAgIC0gc2hh
cmQtaWNsYjogICAgICAgICBbUEFTU11bMV0gLT4gW1NLSVBdWzJdICs0MyBzaW1pbGFyIGlzc3Vl
cw0KPj4gPiAgIFsxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fNjA4MS9zaGFyZC0NCj4+ID5pY2xiNi9pZ3RAZ2VtX2V4ZWNfc3VzcGVuZEBiYXNpYy1z
My5odG1sDQo+PiA+ICAgWzJdOg0KPj4gPmh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzEzMDE3L3NoYXJkLQ0KPj4gPmljbGI1L2lndEBnZW1fZXhlY19z
dXNwZW5kQGJhc2ljLXMzLmh0bWwNCj4+ID4NCj4+ID4gICogaWd0QGttc19wcm9wX2Jsb2JAaW52
YWxpZC1zZXQtcHJvcC1hbnk6DQo+PiA+ICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbUEFTU11b
M10gLT4gW0ZBSUxdWzRdDQo+PiA+ICAgWzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV82MDgxL3NoYXJkLQ0KPj4gPmljbGI2L2lndEBrbXNfcHJvcF9i
bG9iQGludmFsaWQtc2V0LXByb3AtYW55Lmh0bWwNCj4+ID4gICBbNF06DQo+PiA+aHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTMwMTcvc2hhcmQtDQo+
PiA+aWNsYjUvaWd0QGttc19wcm9wX2Jsb2JAaW52YWxpZC1zZXQtcHJvcC1hbnkuaHRtbA0KPj4g
Pg0KPj4NCj4+IEhpIE1hcnRpbiwNCj4+IFRoZXNlIGlzc3VlcyBhcmUgdW5yZWxhdGVkIHRvIHRo
ZSBjaGFuZ2VzIG1hZGUgaW4gdGhpcyBzZXJpZXMuIENhbiB5b3UNCj4+IHBsZWFzZSBoYXZlIGEg
bG9vayBhbmQgY29uZmlybS4NCj4NCj5UaGUga21zX3Byb3AgZmFpbHMgYXQgbGVhc3QgYXJlIHJl
YWwuIFByb2JhYmx5IGR1ZSB0byB0aGUgYm9ndXMgZnVuY3Rpb24gYXJndWVtZW50cw0KPnRvIHRo
ZSByZXBsYWNlX2Jsb2IoKSB0aGluZyBJIHBvaW50ZWQgb3V0Lg0KDQpUaGUgQ0kgSUdUIGhhdmUg
YSBjbGVhbiBQQVNTIG5vdy4gV2lsbCBhbnl3YXlzIHVwZGF0ZSB0aGUgZnVuY3Rpb24gYXJndW1l
bnRzIGFuZCBtYWtlDQppdCBjb25zaXN0ZW50Lg0KDQpSZWdhcmRzLA0KVW1hIFNoYW5rYXINCg0K
Pi0tDQo+VmlsbGUgU3lyasOkbMOkDQo+SW50ZWwNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
