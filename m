Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E542FFB21
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 04:33:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A4196E987;
	Fri, 22 Jan 2021 03:33:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E061F6E987
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 03:33:45 +0000 (UTC)
IronPort-SDR: 7hb6frdQhIa9kc4Jp88w7KZdTdqCO7xaF3SqCnXUjP30DoS+tkCehKRFzuPdGFAqS/cXyTsVbR
 ohwZDN7DZcBw==
X-IronPort-AV: E=McAfee;i="6000,8403,9871"; a="166484496"
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; d="scan'208";a="166484496"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 19:33:44 -0800
IronPort-SDR: 2KefipuVKOtS67XfI6qubxeJrAlMpyUHK/mwZjSwEF1KDVlXLfuDCxVN03JjTqGh68tYhlxp20
 XdUeOg7Ia8QA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; d="scan'208";a="356769446"
Received: from irsmsx603.ger.corp.intel.com ([163.33.146.9])
 by fmsmga008.fm.intel.com with ESMTP; 21 Jan 2021 19:33:43 -0800
Received: from pgsmsx602.gar.corp.intel.com (10.108.199.137) by
 irsmsx603.ger.corp.intel.com (163.33.146.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 22 Jan 2021 03:33:42 +0000
Received: from pgsmsx602.gar.corp.intel.com ([10.108.199.137]) by
 pgsmsx602.gar.corp.intel.com ([10.108.199.137]) with mapi id 15.01.1713.004;
 Fri, 22 Jan 2021 11:33:39 +0800
From: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvZ2VuMTI6IEFk?=
 =?utf-8?B?ZCBkaXNwbGF5IHJlbmRlciBjbGVhciBjb2xvciBkZWNvbXByZXNzaW9uIHN1?=
 =?utf-8?Q?pport_(rev5)?=
Thread-Index: AQHW7/T+UVTJ41f6yEq+N6U2K+BKtaoy/jFA
Date: Fri, 22 Jan 2021 03:33:39 +0000
Message-ID: <8a07743b71a3444ba9948cd6b06ae167@intel.com>
References: <20210114201314.783648-1-imre.deak@intel.com>
 <161118500467.8788.11104068564145310110@emeril.freedesktop.org>
 <20210121125728.GA1443302@ideak-desk.fi.intel.com>
In-Reply-To: <20210121125728.GA1443302@ideak-desk.fi.intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
x-originating-ip: [10.1.200.100]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gen12=3A_Add_display_render_clear_color_decompression_sup?=
 =?utf-8?q?port_=28rev5=29?=
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

SGkgSW1yZSwgSSBoYXZlIHJlcG9ydGVkIGEgbmV3IGlzc3VlIGFuZCByZS1yZXBvcnRlZC4NCg0K
TGFrc2htaS4NCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBJbXJlIERlYWsgPGlt
cmUuZGVha0BpbnRlbC5jb20+IA0KU2VudDogVGh1cnNkYXksIEphbnVhcnkgMjEsIDIwMjEgNDo1
NyBBTQ0KVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IFZ1ZHVtLCBMYWtzaG1p
bmFyYXlhbmEgPGxha3NobWluYXJheWFuYS52dWR1bUBpbnRlbC5jb20+DQpTdWJqZWN0OiBSZTog
4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvZ2VuMTI6IEFkZCBkaXNwbGF5IHJl
bmRlciBjbGVhciBjb2xvciBkZWNvbXByZXNzaW9uIHN1cHBvcnQgKHJldjUpDQoNCkhpIExha3No
bWksDQoNCk9uIFdlZCwgSmFuIDIwLCAyMDIxIGF0IDExOjIzOjI0UE0gKzAwMDAsIFBhdGNod29y
ayB3cm90ZToNCj4gPT0gU2VyaWVzIERldGFpbHMgPT0NCj4gDQo+IFNlcmllczogZHJtL2k5MTUv
Z2VuMTI6IEFkZCBkaXNwbGF5IHJlbmRlciBjbGVhciBjb2xvciBkZWNvbXByZXNzaW9uIHN1cHBv
cnQgKHJldjUpDQo+IFVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nl
cmllcy84NTg3Ny8NCj4gU3RhdGUgOiBmYWlsdXJlDQo+IA0KPiA9PSBTdW1tYXJ5ID09DQo+IA0K
PiBDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV85NjUwIC0+IFBhdGNod29ya18xOTQz
MyANCj4gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PQ0KPiANCj4gU3VtbWFyeQ0KPiAtLS0tLS0tDQo+IA0KPiAgICoqRkFJTFVSRSoqDQo+IA0KPiAg
IFNlcmlvdXMgdW5rbm93biBjaGFuZ2VzIGNvbWluZyB3aXRoIFBhdGNod29ya18xOTQzMyBhYnNv
bHV0ZWx5IG5lZWQgdG8gYmUNCj4gICB2ZXJpZmllZCBtYW51YWxseS4NCj4gICANCj4gICBJZiB5
b3UgdGhpbmsgdGhlIHJlcG9ydGVkIGNoYW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhl
IGNoYW5nZXMNCj4gICBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xOTQzMywgcGxlYXNlIG5vdGlm
eSB5b3VyIGJ1ZyB0ZWFtIHRvIGFsbG93IHRoZW0NCj4gICB0byBkb2N1bWVudCB0aGlzIG5ldyBm
YWlsdXJlIG1vZGUsIHdoaWNoIHdpbGwgcmVkdWNlIGZhbHNlIHBvc2l0aXZlcyBpbiBDSS4NCj4g
DQo+ICAgRXh0ZXJuYWwgVVJMOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTk0MzMvaW5kZXguaHRtbA0KPiANCj4gUG9zc2libGUgbmV3IGlz
c3Vlcw0KPiAtLS0tLS0tLS0tLS0tLS0tLS0tDQo+IA0KPiAgIEhlcmUgYXJlIHRoZSB1bmtub3du
IGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzE5NDMz
Og0KPiANCj4gIyMjIElHVCBjaGFuZ2VzICMjIw0KPiANCj4gIyMjIyBQb3NzaWJsZSByZWdyZXNz
aW9ucyAjIyMjDQo+IA0KPiAgICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBoYW5nY2hlY2s6DQo+
ICAgICAtIGZpLWJzdy1uaWNrOiAgICAgICAgW1BBU1NdWzFdIC0+IFtJTkNPTVBMRVRFXVsyXQ0K
PiAgICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
Xzk2NTAvZmktYnN3LW5pY2svaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBoYW5nY2hlY2suaHRtbA0K
PiAgICBbMl06IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xOTQzMy9maS1ic3ctbmljay9pDQo+IGd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBoYW5n
Y2hlY2suaHRtbA0KDQpUaGUgYWJvdmUgaXMgb24gYW4gdW5yZWxhdGVkIHBsYXRmb3JtLCBjb3Vs
ZCB5b3UgY2hlY2sgaWYgdGhlcmUncyBhIHJlbGF0ZWQgdGlja2V0IGZvciBpdCBhbHJlYWR5Pw0K
DQpUaGFua3MsDQpJbXJlDQoNCj4gDQo+ICAgDQo+IEtub3duIGlzc3Vlcw0KPiAtLS0tLS0tLS0t
LS0NCj4gDQo+ICAgSGVyZSBhcmUgdGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzE5NDMz
IHRoYXQgY29tZSBmcm9tIGtub3duIGlzc3VlczoNCj4gDQo+ICMjIyBJR1QgY2hhbmdlcyAjIyMN
Cj4gDQo+ICMjIyMgSXNzdWVzIGhpdCAjIyMjDQo+IA0KPiAgICogaWd0QGFtZGdwdS9hbWRfYmFz
aWNAbWVtb3J5LWFsbG9jOg0KPiAgICAgLSBmaS10Z2wteTogICAgICAgICAgIE5PVFJVTiAtPiBb
U0tJUF1bM10gKFtmZG8jMTA5MzE1XSAvIFtpOTE1IzI1NzVdKSArMiBzaW1pbGFyIGlzc3Vlcw0K
PiAgICBbM106IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xOTQzMy9maS10Z2wteS9pZ3RADQo+IGFtZGdwdS9hbWRfYmFzaWNAbWVtb3J5LWFs
bG9jLmh0bWwNCj4gDQo+ICAgKiBpZ3RAYW1kZ3B1L2FtZF9wcmltZUBpOTE1LXRvLWFtZDoNCj4g
ICAgIC0gZmktc25iLTI1MjBtOiAgICAgICBOT1RSVU4gLT4gW1NLSVBdWzRdIChbZmRvIzEwOTI3
MV0pICsxNyBzaW1pbGFyIGlzc3Vlcw0KPiAgICBbNF06IA0KPiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xOTQzMy9maS1zbmItMjUyMG0vDQo+IGln
dEBhbWRncHUvYW1kX3ByaW1lQGk5MTUtdG8tYW1kLmh0bWwNCj4gDQo+ICAgKiBpZ3RAZ2VtX2V4
ZWNfc3VzcGVuZEBiYXNpYy1zMzoNCj4gICAgIC0gZmktdGdsLXk6ICAgICAgICAgICBbUEFTU11b
NV0gLT4gW0RNRVNHLVdBUk5dWzZdIChbaTkxNSMyNDExXSAvIFtpOTE1IzQwMl0pDQo+ICAgIFs1
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fOTY1MC9m
aS10Z2wteS9pZ3RAZ2VtX2V4ZWNfc3VzcGVuZEBiYXNpYy1zMy5odG1sDQo+ICAgIFs2XTogDQo+
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE5NDMz
L2ZpLXRnbC15L2lndEANCj4gZ2VtX2V4ZWNfc3VzcGVuZEBiYXNpYy1zMy5odG1sDQo+IA0KPiAg
ICogaWd0QGttc19jaGFtZWxpdW1AaGRtaS1jcmMtZmFzdDoNCj4gICAgIC0gZmkta2JsLTc1MDB1
OiAgICAgICBbUEFTU11bN10gLT4gW0RNRVNHLVdBUk5dWzhdIChbaTkxNSMyODY4XSkNCj4gICAg
WzddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV85NjUw
L2ZpLWtibC03NTAwdS9pZ3RAa21zX2NoYW1lbGl1bUBoZG1pLWNyYy1mYXN0Lmh0bWwNCj4gICAg
WzhdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTk0MzMvZmkta2JsLTc1MDB1Lw0KPiBpZ3RAa21zX2NoYW1lbGl1bUBoZG1pLWNyYy1mYXN0
Lmh0bWwNCj4gDQo+ICAgKiBpZ3RAcHJpbWVfc2VsZl9pbXBvcnRAYmFzaWMtd2l0aF9vbmVfYm86
DQo+ICAgICAtIGZpLXRnbC15OiAgICAgICAgICAgW1BBU1NdWzldIC0+IFtETUVTRy1XQVJOXVsx
MF0gKFtpOTE1IzQwMl0pDQo+ICAgIFs5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fOTY1MC9maS10Z2wteS9pZ3RAcHJpbWVfc2VsZl9pbXBvcnRAYmFz
aWMtd2l0aF9vbmVfYm8uaHRtbA0KPiAgICBbMTBdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTk0MzMvZmktdGdsLXkvaWd0QA0KPiBwcmlt
ZV9zZWxmX2ltcG9ydEBiYXNpYy13aXRoX29uZV9iby5odG1sDQo+IA0KPiAgICogaWd0QHJ1bm5l
ckBhYm9ydGVkOg0KPiAgICAgLSBmaS1ic3ctbmljazogICAgICAgIE5PVFJVTiAtPiBbRkFJTF1b
MTFdIChbaTkxNSMxNDM2XSkNCj4gICAgWzExXTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE5NDMzL2ZpLWJzdy1uaWNrL2kNCj4gZ3RAcnVu
bmVyQGFib3J0ZWQuaHRtbA0KPiANCj4gICANCj4gIyMjIyBQb3NzaWJsZSBmaXhlcyAjIyMjDQo+
IA0KPiAgICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBoYW5nY2hlY2s6DQo+ICAgICAtIGZpLXNu
Yi0yNTIwbTogICAgICAgW0lOQ09NUExFVEVdWzEyXSAtPiBbUEFTU11bMTNdDQo+ICAgIFsxMl06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzk2NTAvZmkt
c25iLTI1MjBtL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAaGFuZ2NoZWNrLmh0bWwNCj4gICAgWzEz
XTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzE5NDMzL2ZpLXNuYi0yNTIwbS8NCj4gaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBoYW5nY2hlY2su
aHRtbA0KPiANCj4gICAqIGlndEBwcmltZV9zZWxmX2ltcG9ydEBiYXNpYy13aXRoX29uZV9ib190
d29fZmlsZXM6DQo+ICAgICAtIGZpLXRnbC15OiAgICAgICAgICAgW0RNRVNHLVdBUk5dWzE0XSAo
W2k5MTUjNDAyXSkgLT4gW1BBU1NdWzE1XQ0KPiAgICBbMTRdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV85NjUwL2ZpLXRnbC15L2lndEBwcmltZV9zZWxm
X2ltcG9ydEBiYXNpYy13aXRoX29uZV9ib190d29fZmlsZXMuaHRtbA0KPiAgICBbMTVdOiANCj4g
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTk0MzMv
ZmktdGdsLXkvaWd0QA0KPiBwcmltZV9zZWxmX2ltcG9ydEBiYXNpYy13aXRoX29uZV9ib190d29f
ZmlsZXMuaHRtbA0KPiANCj4gICANCj4gICB7bmFtZX06IFRoaXMgZWxlbWVudCBpcyBzdXBwcmVz
c2VkLiBUaGlzIG1lYW5zIGl0IGlzIGlnbm9yZWQgd2hlbiBjb21wdXRpbmcNCj4gICAgICAgICAg
IHRoZSBzdGF0dXMgb2YgdGhlIGRpZmZlcmVuY2UgKFNVQ0NFU1MsIFdBUk5JTkcsIG9yIEZBSUxV
UkUpLg0KPiANCj4gICBbZmRvIzEwOTI3MV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcv
c2hvd19idWcuY2dpP2lkPTEwOTI3MQ0KPiAgIFtmZG8jMTA5MzE1XTogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5MzE1DQo+ICAgW2k5MTUjMTQzNl06IGh0
dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzE0MzYNCj4gICBb
aTkxNSMyNDExXTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1
ZXMvMjQxMQ0KPiAgIFtpOTE1IzI1NzVdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcv
ZHJtL2ludGVsL2lzc3Vlcy8yNTc1DQo+ICAgW2k5MTUjMjg2OF06IGh0dHBzOi8vZ2l0bGFiLmZy
ZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzI4NjgNCj4gICBbaTkxNSM0MDJdOiBodHRw
czovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy80MDINCj4gDQo+IA0K
PiBQYXJ0aWNpcGF0aW5nIGhvc3RzICg0MyAtPiAzOCkNCj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tDQo+IA0KPiAgIE1pc3NpbmcgICAgKDUpOiBmaS1pbGstbTU0MCBmaS1oc3ctNDIw
MHUgZmktYnN3LWN5YW4gZmktY3RnLXA4NjAwIGZpLWJkdy1zYW11cyANCj4gDQo+IA0KPiBCdWls
ZCBjaGFuZ2VzDQo+IC0tLS0tLS0tLS0tLS0NCj4gDQo+ICAgKiBMaW51eDogQ0lfRFJNXzk2NTAg
LT4gUGF0Y2h3b3JrXzE5NDMzDQo+IA0KPiAgIENJLTIwMTkwNTI5OiAyMDE5MDUyOQ0KPiAgIENJ
X0RSTV85NjUwOiAzZjk4OWQxYmI0Y2ZkOTFlMjU1NDlmOWZkN2E3NTA0MTI1ODFkY2M0IEAgZ2l0
Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4DQo+ICAgSUdUXzU5NjA6IGFj
ZTgyZmNkNWYzNjIzZjhkZGU3YzIyMGE4MjU4NzNkYzUzZGZhZTQgQCBnaXQ6Ly9hbm9uZ2l0LmZy
ZWVkZXNrdG9wLm9yZy94b3JnL2FwcC9pbnRlbC1ncHUtdG9vbHMNCj4gICBQYXRjaHdvcmtfMTk0
MzM6IDM0Y2RhMGM3ZDU0YzRhYjEwYjE2N2Y5MDAzYjE4ZjYxODM4NDliODUgQCANCj4gZ2l0Oi8v
YW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4DQo+IA0KPiANCj4gPT0gTGludXgg
Y29tbWl0cyA9PQ0KPiANCj4gMzRjZGEwYzdkNTRjIGRybS9pOTE1L3RnbDogQWRkIENsZWFyIENv
bG9yIHN1cHBvcnQgZm9yIFRHTCBSZW5kZXIgDQo+IERlY29tcHJlc3Npb24NCj4gODgxNTAzNWJm
NzA2IGRybS9pOTE1L2dlbTogQWRkIGEgaGVscGVyIHRvIHJlYWQgZGF0YSBmcm9tIGEgR0VNIG9i
amVjdCANCj4gcGFnZQ0KPiAyNDlkYTAwNmVkNzYgZHJtL2ZyYW1lYnVmZmVyOiBGb3JtYXQgbW9k
aWZpZXIgZm9yIEludGVsIEdlbiAxMiByZW5kZXIgDQo+IGNvbXByZXNzaW9uIHdpdGggQ2xlYXIg
Q29sb3INCj4gDQo+ID09IExvZ3MgPT0NCj4gDQo+IEZvciBtb3JlIGRldGFpbHMgc2VlOiANCj4g
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTk0MzMv
aW5kZXguaHRtbA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
