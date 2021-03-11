Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B38E033790A
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 17:18:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECF276EE50;
	Thu, 11 Mar 2021 16:18:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D77E66EE50
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 16:18:16 +0000 (UTC)
IronPort-SDR: 25RoTHsBLOkhww2X5Jl4gKs4OusoA8ohR2QBOl3xGxbLgacT4alCIz7S8bt5L9F3itq/puCFif
 Vbg4PrOB/8mQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="186312784"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="186312784"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 08:18:06 -0800
IronPort-SDR: 4zPhtsF3eqLr7i1pFF1XoDyqvjf97dY+HIK8WV1x/J7CyTTFExwRyETvMzympY5CqEboQGrXbG
 5d21qx27Mpig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="370594641"
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137])
 by orsmga003.jf.intel.com with ESMTP; 11 Mar 2021 08:18:05 -0800
Received: from pgsmsx602.gar.corp.intel.com (10.108.199.137) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 11 Mar 2021 16:18:04 +0000
Received: from pgsmsx602.gar.corp.intel.com ([10.108.199.137]) by
 pgsmsx602.gar.corp.intel.com ([10.108.199.137]) with mapi id 15.01.2106.013;
 Fri, 12 Mar 2021 00:18:01 +0800
From: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTU6IFVuaW5pdCB0?=
 =?utf-8?Q?he_DMC_FW_loader_state_during_shutdown?=
Thread-Index: AQHXFo7DLY0D+Dg6nk+psTAKp50FjKp+9wsA
Date: Thu, 11 Mar 2021 16:18:01 +0000
Message-ID: <ced0bb10643440afb2bf1c58b76ff8ab@intel.com>
References: <20210311144529.3059024-1-imre.deak@intel.com>
 <161547655141.28798.8712045346239571090@emeril.freedesktop.org>
 <20210311155359.GB2970909@ideak-desk.fi.intel.com>
In-Reply-To: <20210311155359.GB2970909@ideak-desk.fi.intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Uninit_the_DMC_FW_loader_state_during_shutdown?=
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

UmUtcmVwb3J0ZWQuDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBEZWFrLCBJ
bXJlIDxpbXJlLmRlYWtAaW50ZWwuY29tPiANClNlbnQ6IFRodXJzZGF5LCBNYXJjaCAxMSwgMjAy
MSA3OjU0IEFNDQpUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgVnVkdW0sIExh
a3NobWluYXJheWFuYSA8bGFrc2htaW5hcmF5YW5hLnZ1ZHVtQGludGVsLmNvbT4NClN1YmplY3Q6
IFJlOiDinJcgRmkuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNTogVW5pbml0IHRoZSBETUMg
RlcgbG9hZGVyIHN0YXRlIGR1cmluZyBzaHV0ZG93bg0KDQpIaSBMYWtzaG1pLA0KDQpPbiBUaHUs
IE1hciAxMSwgMjAyMSBhdCAwMzoyOToxMVBNICswMDAwLCBQYXRjaHdvcmsgd3JvdGU6DQo+ID09
IFNlcmllcyBEZXRhaWxzID09DQo+IA0KPiBTZXJpZXM6IGRybS9pOTE1OiBVbmluaXQgdGhlIERN
QyBGVyBsb2FkZXIgc3RhdGUgZHVyaW5nIHNodXRkb3duDQo+IFVSTCAgIDogaHR0cHM6Ly9wYXRj
aHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy84Nzg4My8NCj4gU3RhdGUgOiBmYWlsdXJlDQo+
IA0KPiA9PSBTdW1tYXJ5ID09DQo+IA0KPiBDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RS
TV85ODQ5IC0+IFBhdGNod29ya18xOTc4MSANCj4gPT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PQ0KPiANCj4gU3VtbWFyeQ0KPiAtLS0tLS0tDQo+IA0K
PiAgICoqRkFJTFVSRSoqDQo+IA0KPiAgIFNlcmlvdXMgdW5rbm93biBjaGFuZ2VzIGNvbWluZyB3
aXRoIFBhdGNod29ya18xOTc4MSBhYnNvbHV0ZWx5IG5lZWQgdG8gYmUNCj4gICB2ZXJpZmllZCBt
YW51YWxseS4NCj4gICANCj4gICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVkIGNoYW5nZXMgaGF2
ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMNCj4gICBpbnRyb2R1Y2VkIGluIFBhdGNo
d29ya18xOTc4MSwgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1ZyB0ZWFtIHRvIGFsbG93IHRoZW0NCj4g
ICB0byBkb2N1bWVudCB0aGlzIG5ldyBmYWlsdXJlIG1vZGUsIHdoaWNoIHdpbGwgcmVkdWNlIGZh
bHNlIHBvc2l0aXZlcyBpbiBDSS4NCj4gDQo+ICAgRXh0ZXJuYWwgVVJMOiANCj4gaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTk3ODEvaW5kZXguaHRt
bA0KPiANCj4gUG9zc2libGUgbmV3IGlzc3Vlcw0KPiAtLS0tLS0tLS0tLS0tLS0tLS0tDQo+IA0K
PiAgIEhlcmUgYXJlIHRoZSB1bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJv
ZHVjZWQgaW4gUGF0Y2h3b3JrXzE5NzgxOg0KPiANCj4gIyMjIElHVCBjaGFuZ2VzICMjIw0KPiAN
Cj4gIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9ucyAjIyMjDQo+IA0KPiAgICogaWd0QGdlbV9leGVj
X3N1c3BlbmRAYmFzaWMtczM6DQo+ICAgICAtIGZpLWJzdy1uMzA1MDogICAgICAgTk9UUlVOIC0+
IFtJTkNPTVBMRVRFXVsxXQ0KPiAgICBbMV06IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xOTc4MS9maS1ic3ctbjMwNTAvDQo+IGlndEBnZW1f
ZXhlY19zdXNwZW5kQGJhc2ljLXMzLmh0bWwNCg0KdGhpcyBpcyB1bnJlbGF0ZWQgKHN1c3BlbmQg
dnMuIHBvd2VyLW9mZi9yZWJvb3QpIGFuZCB0cmFja2VkIGF0Og0KaHR0cHM6Ly9naXRsYWIuZnJl
ZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy8zMTU5DQoNCi0tSW1yZQ0KDQo+IA0KPiAg
IA0KPiBLbm93biBpc3N1ZXMNCj4gLS0tLS0tLS0tLS0tDQo+IA0KPiAgIEhlcmUgYXJlIHRoZSBj
aGFuZ2VzIGZvdW5kIGluIFBhdGNod29ya18xOTc4MSB0aGF0IGNvbWUgZnJvbSBrbm93biBpc3N1
ZXM6DQo+IA0KPiAjIyMgSUdUIGNoYW5nZXMgIyMjDQo+IA0KPiAjIyMjIElzc3VlcyBoaXQgIyMj
Iw0KPiANCj4gICAqIGlndEBnZW1fZXhlY19ndHRmaWxsQGJhc2ljOg0KPiAgICAgLSBmaS1ic3ct
bjMwNTA6ICAgICAgIE5PVFJVTiAtPiBbU0tJUF1bMl0gKFtmZG8jMTA5MjcxXSkNCj4gICAgWzJd
OiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTk3ODEvZmktYnN3LW4zMDUwLw0KPiBpZ3RAZ2VtX2V4ZWNfZ3R0ZmlsbEBiYXNpYy5odG1sDQo+
IA0KPiAgICogaWd0QGdlbV90aWxlZF9mZW5jZV9ibGl0c0BiYXNpYzoNCj4gICAgIC0gZmkta2Js
LTg4MDlnOiAgICAgICBbUEFTU11bM10gLT4gW1RJTUVPVVRdWzRdIChbaTkxNSMzMTQ1XSkNCj4g
ICAgWzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV85
ODQ5L2ZpLWtibC04ODA5Zy9pZ3RAZ2VtX3RpbGVkX2ZlbmNlX2JsaXRzQGJhc2ljLmh0bWwNCj4g
ICAgWzRdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTk3ODEvZmkta2JsLTg4MDlnLw0KPiBpZ3RAZ2VtX3RpbGVkX2ZlbmNlX2JsaXRzQGJh
c2ljLmh0bWwNCj4gDQo+ICAgDQo+ICAge25hbWV9OiBUaGlzIGVsZW1lbnQgaXMgc3VwcHJlc3Nl
ZC4gVGhpcyBtZWFucyBpdCBpcyBpZ25vcmVkIHdoZW4gY29tcHV0aW5nDQo+ICAgICAgICAgICB0
aGUgc3RhdHVzIG9mIHRoZSBkaWZmZXJlbmNlIChTVUNDRVNTLCBXQVJOSU5HLCBvciBGQUlMVVJF
KS4NCj4gDQo+ICAgW2ZkbyMxMDkyNzFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3No
b3dfYnVnLmNnaT9pZD0xMDkyNzENCj4gICBbaTkxNSMxMjIyXTogaHR0cHM6Ly9naXRsYWIuZnJl
ZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvMTIyMg0KPiAgIFtpOTE1IzE5ODJdOiBodHRw
czovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy8xOTgyDQo+ICAgW2k5
MTUjMzE0NV06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVz
LzMxNDUNCj4gDQo+IA0KPiBQYXJ0aWNpcGF0aW5nIGhvc3RzICg0NSAtPiA0MSkNCj4gLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+IA0KPiAgIEFkZGl0aW9uYWwgKDEpOiBmaS1ic3ct
bjMwNTAgDQo+ICAgTWlzc2luZyAgICAoNSk6IGZpLWlsay1tNTQwIGZpLWhzdy00MjAwdSBmaS1i
c3ctY3lhbiBmaS1jdGctcDg2MDAgZmktYmR3LXNhbXVzIA0KPiANCj4gDQo+IEJ1aWxkIGNoYW5n
ZXMNCj4gLS0tLS0tLS0tLS0tLQ0KPiANCj4gICAqIExpbnV4OiBDSV9EUk1fOTg0OSAtPiBQYXRj
aHdvcmtfMTk3ODENCj4gDQo+ICAgQ0ktMjAxOTA1Mjk6IDIwMTkwNTI5DQo+ICAgQ0lfRFJNXzk4
NDk6IDEyM2ViZjAzNzljYTkwYzJmNjRiZmY3M2ZmMzJjN2MyMTQwZDJiOWMgQCBnaXQ6Ly9hbm9u
Z2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgNCj4gICBJR1RfNjAzMDogZTExZTRiZmI5
MWZlYzlhZjcxYzM5MDk5OTZjNjZlNTY2NjI3MGUwNyBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0
b3Aub3JnL3hvcmcvYXBwL2ludGVsLWdwdS10b29scw0KPiAgIFBhdGNod29ya18xOTc4MTogZGYy
ZDYzYjhmMmI3ZDMwZWVhYTc4YjFlNWEyNTUwMzc3OWJlM2Y1OSBAIA0KPiBnaXQ6Ly9hbm9uZ2l0
LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgNCj4gDQo+IA0KPiA9PSBMaW51eCBjb21taXRz
ID09DQo+IA0KPiBkZjJkNjNiOGYyYjcgZHJtL2k5MTU6IFVuaW5pdCB0aGUgRE1DIEZXIGxvYWRl
ciBzdGF0ZSBkdXJpbmcgc2h1dGRvd24NCj4gDQo+ID09IExvZ3MgPT0NCj4gDQo+IEZvciBtb3Jl
IGRldGFpbHMgc2VlOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTk3ODEvaW5kZXguaHRtbA0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
