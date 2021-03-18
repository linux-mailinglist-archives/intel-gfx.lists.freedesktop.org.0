Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 264CC340FBE
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Mar 2021 22:22:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CF826E175;
	Thu, 18 Mar 2021 21:22:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4586B6E175
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Mar 2021 21:22:34 +0000 (UTC)
IronPort-SDR: kFZ7AFpPWa4Qpne4IljK3PUnzGIWSS4EJd3VPBeU8nq/RYOAsE1hy2eGL79gIQ80QxfVmsUjX0
 xVhyTb3g+UvQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9927"; a="251126766"
X-IronPort-AV: E=Sophos;i="5.81,259,1610438400"; d="scan'208";a="251126766"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2021 14:22:33 -0700
IronPort-SDR: bPu5BvdMhVeXUfV99LHVFZtNFRVCyIuR3Xs2FOZYkXCIE8O1WOJHqGpdV3giy98WnH4BddWOF3
 Kqq9UZw2sIoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,259,1610438400"; d="scan'208";a="412058716"
Received: from kmsmsx602.gar.corp.intel.com ([172.21.219.142])
 by orsmga007.jf.intel.com with ESMTP; 18 Mar 2021 14:22:32 -0700
Received: from pgsmsx602.gar.corp.intel.com (10.108.199.137) by
 kmsmsx602.gar.corp.intel.com (172.21.219.142) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 19 Mar 2021 05:22:31 +0800
Received: from pgsmsx602.gar.corp.intel.com ([10.108.199.137]) by
 pgsmsx602.gar.corp.intel.com ([10.108.199.137]) with mapi id 15.01.2106.013;
 Fri, 19 Mar 2021 05:22:31 +0800
From: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2VyaWVzIHN0YXJ0aW5nIHdp?=
 =?utf-8?B?dGggWzEvMl0gZHJtL2k5MTU6IEZpeCBwcmUtc2tsIERQIEFVWCBwcmVjaGFy?=
 =?utf-8?Q?ge_length?=
Thread-Index: AQHXHDiiW/djG2K8y0amUD5wQnOY+KqKQSBg
Date: Thu, 18 Mar 2021 21:22:31 +0000
Message-ID: <0653b5f63f1843638439fcf28d93af71@intel.com>
References: <20210318181039.17260-1-ville.syrjala@linux.intel.com>
 <161609818377.12738.9441142796604021229@emeril.freedesktop.org>
 <YFO9kkfDd7R6ZHeS@intel.com>
In-Reply-To: <YFO9kkfDd7R6ZHeS@intel.com>
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
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Fix_pre-skl_DP_AUX_prec?=
 =?utf-8?q?harge_length?=
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

UmUtcmVwb3J0ZWQuDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPiANClNlbnQ6IFRodXJzZGF5
LCBNYXJjaCAxOCwgMjAyMSAxOjUzIFBNDQpUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZw0KQ2M6IFZ1ZHVtLCBMYWtzaG1pbmFyYXlhbmEgPGxha3NobWluYXJheWFuYS52dWR1bUBp
bnRlbC5jb20+DQpTdWJqZWN0OiBSZTog4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2VyaWVz
IHN0YXJ0aW5nIHdpdGggWzEvMl0gZHJtL2k5MTU6IEZpeCBwcmUtc2tsIERQIEFVWCBwcmVjaGFy
Z2UgbGVuZ3RoDQoNCk9uIFRodSwgTWFyIDE4LCAyMDIxIGF0IDA4OjA5OjQzUE0gLTAwMDAsIFBh
dGNod29yayB3cm90ZToNCj4gPT0gU2VyaWVzIERldGFpbHMgPT0NCj4gDQo+IFNlcmllczogc2Vy
aWVzIHN0YXJ0aW5nIHdpdGggWzEvMl0gZHJtL2k5MTU6IEZpeCBwcmUtc2tsIERQIEFVWCBwcmVj
aGFyZ2UgbGVuZ3RoDQo+IFVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3Jn
L3Nlcmllcy84ODEzMi8NCj4gU3RhdGUgOiBmYWlsdXJlDQo+IA0KPiA9PSBTdW1tYXJ5ID09DQo+
IA0KPiBDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV85ODcwIC0+IFBhdGNod29ya18x
OTgwNyANCj4gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PQ0KPiANCj4gU3VtbWFyeQ0KPiAtLS0tLS0tDQo+IA0KPiAgICoqRkFJTFVSRSoqDQo+IA0K
PiAgIFNlcmlvdXMgdW5rbm93biBjaGFuZ2VzIGNvbWluZyB3aXRoIFBhdGNod29ya18xOTgwNyBh
YnNvbHV0ZWx5IG5lZWQgdG8gYmUNCj4gICB2ZXJpZmllZCBtYW51YWxseS4NCj4gICANCj4gICBJ
ZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVkIGNoYW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGgg
dGhlIGNoYW5nZXMNCj4gICBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xOTgwNywgcGxlYXNlIG5v
dGlmeSB5b3VyIGJ1ZyB0ZWFtIHRvIGFsbG93IHRoZW0NCj4gICB0byBkb2N1bWVudCB0aGlzIG5l
dyBmYWlsdXJlIG1vZGUsIHdoaWNoIHdpbGwgcmVkdWNlIGZhbHNlIHBvc2l0aXZlcyBpbiBDSS4N
Cj4gDQo+ICAgRXh0ZXJuYWwgVVJMOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTk4MDcvaW5kZXguaHRtbA0KPiANCj4gUG9zc2libGUgbmV3
IGlzc3Vlcw0KPiAtLS0tLS0tLS0tLS0tLS0tLS0tDQo+IA0KPiAgIEhlcmUgYXJlIHRoZSB1bmtu
b3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzE5
ODA3Og0KPiANCj4gIyMjIElHVCBjaGFuZ2VzICMjIw0KPiANCj4gIyMjIyBQb3NzaWJsZSByZWdy
ZXNzaW9ucyAjIyMjDQo+IA0KPiAgICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBleGVjbGlzdHM6
DQo+ICAgICAtIGZpLWtibC1zb3Jha2E6ICAgICAgW1BBU1NdWzFdIC0+IFtETUVTRy1XQVJOXVsy
XQ0KPiAgICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzk4NzAvZmkta2JsLXNvcmFrYS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGV4ZWNsaXN0cy5o
dG1sDQo+ICAgIFsyXTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE5ODA3L2ZpLWtibC1zb3Jha2ENCj4gL2lndEBpOTE1X3NlbGZ0ZXN0QGxp
dmVAZXhlY2xpc3RzLmh0bWwNCg0KPDM+IFsxMDE5LjA5MDg0Nl0gaTkxNSAwMDAwOjAwOjAyLjA6
IFtkcm1dICpFUlJPUiogQVVYIEIvRERJIEIvUEhZIEI6IGRpZCBub3QgY29tcGxldGUgb3IgdGlt
ZW91dCB3aXRoaW4gMTBtcyAoc3RhdHVzIDB4YWQ0MDAzZmYpDQoNClVucmVsYXRlZCB0byB0aGUg
cGF0Y2ggc2luY2UgaXQgZG9lc24ndCB0b3VjaCB0aGUgc2tsKyBBVVggY29kZSBhbmQgdGhpcyBt
YWNoaW5lIGlzIGEga2JsLiBTbyBzZWVtcyB0byBiZSBqdXN0IHNvbWUgcmFuZG9tIGZhaWwuDQoN
Cj4gDQo+ICAgDQo+IEtub3duIGlzc3Vlcw0KPiAtLS0tLS0tLS0tLS0NCj4gDQo+ICAgSGVyZSBh
cmUgdGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzE5ODA3IHRoYXQgY29tZSBmcm9tIGtu
b3duIGlzc3VlczoNCj4gDQo+ICMjIyBJR1QgY2hhbmdlcyAjIyMNCj4gDQo+ICMjIyMgSXNzdWVz
IGhpdCAjIyMjDQo+IA0KPiAgICogaWd0QGNvcmVfaG90dW5wbHVnQHVuYmluZC1yZWJpbmQ6DQo+
ICAgICAtIGZpLWJ3ci0yMTYwOiAgICAgICAgW1BBU1NdWzNdIC0+IFtGQUlMXVs0XSAoW2k5MTUj
MzE5NF0pDQo+ICAgIFszXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fOTg3MC9maS1id3ItMjE2MC9pZ3RAY29yZV9ob3R1bnBsdWdAdW5iaW5kLXJlYmlu
ZC5odG1sDQo+ICAgIFs0XTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE5ODA3L2ZpLWJ3ci0yMTYwL2kNCj4gZ3RAY29yZV9ob3R1bnBsdWdA
dW5iaW5kLXJlYmluZC5odG1sDQo+IA0KPiAgIA0KPiAgIFtpOTE1IzMxOTRdOiBodHRwczovL2dp
dGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy8zMTk0DQo+IA0KPiANCj4gUGFy
dGljaXBhdGluZyBob3N0cyAoNDQgLT4gNDApDQo+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLQ0KPiANCj4gICBNaXNzaW5nICAgICg0KTogZmktaWxrLW01NDAgZmktYnN3LWN5YW4gZmkt
YmR3LXNhbXVzIGZpLWhzdy00MjAwdSANCj4gDQo+IA0KPiBCdWlsZCBjaGFuZ2VzDQo+IC0tLS0t
LS0tLS0tLS0NCj4gDQo+ICAgKiBMaW51eDogQ0lfRFJNXzk4NzAgLT4gUGF0Y2h3b3JrXzE5ODA3
DQo+IA0KPiAgIENJLTIwMTkwNTI5OiAyMDE5MDUyOQ0KPiAgIENJX0RSTV85ODcwOiBhOWE1ZWQ4
ZDI0MzJlNTMzNWU2YzI2MTE4Y2VmYjJjZmZmMjhhZTM3IEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVz
a3RvcC5vcmcvZ2Z4LWNpL2xpbnV4DQo+ICAgSUdUXzYwMzY6IDViNTM1NDk0YWJjZGY1Y2UyYjli
ZTk5YjdiYjVkZjhhYjQ3MzMwODMgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy94b3Jn
L2FwcC9pbnRlbC1ncHUtdG9vbHMNCj4gICBQYXRjaHdvcmtfMTk4MDc6IDg5YzljZTliY2ZiZjcy
ODZjMmVjMjVmZmFhMjYwNDE5MDllYzg0ZDYgQCANCj4gZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3Rv
cC5vcmcvZ2Z4LWNpL2xpbnV4DQo+IA0KPiANCj4gPT0gTGludXggY29tbWl0cyA9PQ0KPiANCj4g
ODljOWNlOWJjZmJmIGRybS9pOTE1OiBSZW1vdmUgc3RyYXkgbmV3bGluZXMNCj4gNmIzZjllN2Vk
N2Y2IGRybS9pOTE1OiBGaXggcHJlLXNrbCBEUCBBVVggcHJlY2hhcmdlIGxlbmd0aA0KPiANCj4g
PT0gTG9ncyA9PQ0KPiANCj4gRm9yIG1vcmUgZGV0YWlscyBzZWU6IA0KPiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xOTgwNy9pbmRleC5odG1sDQoN
Ci0tDQpWaWxsZSBTeXJqw6Rsw6QNCkludGVsDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
