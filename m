Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3516426D3BC
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Sep 2020 08:36:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A98089D7D;
	Thu, 17 Sep 2020 06:35:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7632289D7D
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Sep 2020 06:35:57 +0000 (UTC)
IronPort-SDR: atqbsr5Yw0XL41EOaPto2I7Ix2GTwQzlRPo85rv3xj7u3g+VcpDnBOiLixfbVCfjYWH4g9kKZO
 Mtpk6+NFxHrw==
X-IronPort-AV: E=McAfee;i="6000,8403,9746"; a="139146466"
X-IronPort-AV: E=Sophos;i="5.76,435,1592895600"; d="scan'208";a="139146466"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 23:35:56 -0700
IronPort-SDR: XIMfB1E7ir+UdL/7bAzLhBP8vdD8LNF0Wa3Y7Bv+VHsc/PlEsdzDLCxZ6tzdMs7eT7cw50zsX0
 YRFTdaUY0bSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,435,1592895600"; d="scan'208";a="288624845"
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138])
 by fmsmga008.fm.intel.com with ESMTP; 16 Sep 2020 23:35:55 -0700
Received: from irsmsx603.ger.corp.intel.com (163.33.146.9) by
 IRSMSX605.ger.corp.intel.com (163.33.146.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 17 Sep 2020 07:35:55 +0100
Received: from irsmsx603.ger.corp.intel.com ([163.33.146.9]) by
 irsmsx603.ger.corp.intel.com ([163.33.146.9]) with mapi id 15.01.1713.004;
 Thu, 17 Sep 2020 07:35:55 +0100
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "Harrison, John C" <john.c.harrison@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Latvala, Petri" <petri.latvala@intel.com>, "Szwichtenberg, Radoslaw"
 <radoslaw.szwichtenberg@intel.com>, "Sarvela, Tomi P"
 <tomi.p.sarvela@intel.com>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvZ3VjOiBVcGRh?=
 =?utf-8?Q?te_to_GuC_v49?=
Thread-Index: AQHWjJENxpOcSM8tcESFByY0RtMs1KlsYGOw
Date: Thu, 17 Sep 2020 06:35:55 +0000
Message-ID: <c9bcad3f211c410f8bfa41f18dbe8872@intel.com>
References: <20200916171653.2021483-1-John.C.Harrison@Intel.com>
 <160028134210.19374.12969903715505955797@emeril.freedesktop.org>
 <b2366829-8040-075e-59f8-9a92e749ed99@Intel.com>
In-Reply-To: <b2366829-8040-075e-59f8-9a92e749ed99@Intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-reaction: no-action
dlp-product: dlpe-windows
x-originating-ip: [163.33.253.164]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_Update_to_GuC_v49?=
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

KyBUb21pDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSm9obiBIYXJy
aXNvbiA8Sm9obi5DLkhhcnJpc29uQEludGVsLmNvbT4NCj4gU2VudDogdG9yc3RhaSAxNy4gc3l5
c2t1dXRhIDIwMjAgNC4yMw0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsg
TGF0dmFsYSwgUGV0cmkgPHBldHJpLmxhdHZhbGFAaW50ZWwuY29tPjsNCj4gU2FhcmluZW4sIEph
bmkgPGphbmkuc2FhcmluZW5AaW50ZWwuY29tPjsgU3p3aWNodGVuYmVyZywgUmFkb3NsYXcNCj4g
PHJhZG9zbGF3LnN6d2ljaHRlbmJlcmdAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTog4pyXIEZp
LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvZ3VjOiBVcGRhdGUgdG8gR3VDIHY0OQ0KPiAN
Cj4gSGVsbG8sDQo+IA0KPiBUaGUgZmFpbHVyZXMgYmVsb3cgYWxsIGFwcGVhciB0byBiZSBiZWNh
dXNlIHRoZSBuZXcgR3VDIGZpcm13YXJlIHdhcyBub3QgZm91bmQgb24NCj4gdGhlIHRlc3Qgc3lz
dGVtLg0KPiANCj4gTXkgdW5kZXJzdGFuZGluZyBpcyB0aGF0IGFsbCB3ZSBuZWVkIHRvIGRvIHRv
IGdldCB0aGUgQ0kgc3lzdGVtIHRvIHVwZGF0ZSB3aXRoIG5ldw0KPiBmaXJtd2FyZXMgaXMgdG8g
cHVzaCB0aGUgZmlybXdhcmUgdG8gYSBicmFuY2ggb24gdGhlIEZETyBkcm0tZmlybXdhcmUgcmVw
byBhbmQNCj4gdGhlbiBzZW5kIGEgcHVsbCByZXF1ZXN0IHRvIHRoaXMgbWFpbGluZyBsaXN0LiBU
aGF0IHdhcyBkb25lIHllc3RlcmRheS4NCj4gDQo+IElzIHRoZXJlIHNvbWUgb3RoZXIgc3RlcCB3
ZSBuZWVkIHRvIGRvPyBPciBkbyBJIGp1c3QgbmVlZCB0byB3YWl0IGxvbmdlciBiZXR3ZWVuDQo+
IHRoZSBQUiBhbmQgc2VuZGluZyB0aGUgcGF0Y2hlcz8NCj4gDQo+IEpvaG4uDQo+IA0KPiANCj4g
T24gOS8xNi8yMDIwIDExOjM1LCBQYXRjaHdvcmsgd3JvdGU6DQo+IA0KPiANCj4gCVBhdGNoIERl
dGFpbHMNCj4gU2VyaWVzOgkgZHJtL2k5MTUvZ3VjOiBVcGRhdGUgdG8gR3VDIHY0OQ0KPiBVUkw6
CSBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzgxNzYxLw0KPiBTdGF0
ZToJIGZhaWx1cmUNCj4gRGV0YWlsczoJIGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE4NTE2L2luZGV4Lmh0bWwNCj4gDQo+IAlDSSBCdWcgTG9nIC0g
Y2hhbmdlcyBmcm9tIENJX0RSTV85MDE5IC0+IFBhdGNod29ya18xODUxNg0KPiANCj4gDQo+IAlT
dW1tYXJ5DQo+IA0KPiANCj4gCUZBSUxVUkUNCj4gDQo+IAlTZXJpb3VzIHVua25vd24gY2hhbmdl
cyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMTg1MTYgYWJzb2x1dGVseSBuZWVkIHRvDQo+IGJlDQo+
IAl2ZXJpZmllZCBtYW51YWxseS4NCj4gDQo+IAlJZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVkIGNo
YW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMNCj4gCWludHJvZHVjZWQg
aW4gUGF0Y2h3b3JrXzE4NTE2LCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gdG8gYWxsb3cg
dGhlbQ0KPiAJdG8gZG9jdW1lbnQgdGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJl
ZHVjZSBmYWxzZSBwb3NpdGl2ZXMgaW4gQ0kuDQo+IA0KPiAJRXh0ZXJuYWwgVVJMOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9QYXRjaHdvcmtfMTg1MTYvaW5k
ZXguaHRtbA0KPiANCj4gDQo+IAlQb3NzaWJsZSBuZXcgaXNzdWVzDQo+IA0KPiANCj4gCUhlcmUg
YXJlIHRoZSB1bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJvZHVjZWQgaW4N
Cj4gUGF0Y2h3b3JrXzE4NTE2Og0KPiANCj4gDQo+IAlJR1QgY2hhbmdlcw0KPiANCj4gDQo+IAlQ
b3NzaWJsZSByZWdyZXNzaW9ucw0KPiANCj4gDQo+IAkqCWlndEBnZW1faHVjX2NvcHlAaHVjLWNv
cHk6DQo+IA0KPiAJCSoJZmktY2ZsLWd1YzogUEFTUyA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLQ0KPiB0aXAvQ0lfRFJNXzkwMTkvZmktY2ZsLWd1Yy9pZ3RAZ2VtX2h1Y19j
b3B5QGh1Yy1jb3B5Lmh0bWw+ICAtPiBGQUlMDQo+IDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xODUxNi9maS1jZmwtDQo+IGd1Yy9pZ3RAZ2VtX2h1
Y19jb3B5QGh1Yy1jb3B5Lmh0bWw+DQo+IA0KPiAJCSoJZmkta2JsLWd1YzogUEFTUyA8aHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLQ0KPiB0aXAvQ0lfRFJNXzkwMTkvZmkta2Js
LWd1Yy9pZ3RAZ2VtX2h1Y19jb3B5QGh1Yy1jb3B5Lmh0bWw+ICAtPiBGQUlMDQo+IDxodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xODUxNi9maS1rYmwt
DQo+IGd1Yy9pZ3RAZ2VtX2h1Y19jb3B5QGh1Yy1jb3B5Lmh0bWw+DQo+IA0KPiAJCSoJZmktc2ts
LWd1YzogUEFTUyA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLQ0KPiB0aXAv
Q0lfRFJNXzkwMTkvZmktc2tsLWd1Yy9pZ3RAZ2VtX2h1Y19jb3B5QGh1Yy1jb3B5Lmh0bWw+ICAt
PiBGQUlMDQo+IDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xODUxNi9maS1za2wtDQo+IGd1Yy9pZ3RAZ2VtX2h1Y19jb3B5QGh1Yy1jb3B5Lmh0bWw+
DQo+IA0KPiANCj4gCVdhcm5pbmdzDQo+IA0KPiANCj4gCSoJaWd0QGdlbV9odWNfY29weUBodWMt
Y29weToNCj4gDQo+IAkJKglmaS1jbWwtdTI6IFNLSVAgPGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS0NCj4gdGlwL0NJX0RSTV85MDE5L2ZpLWNtbC11Mi9pZ3RAZ2VtX2h1Y19j
b3B5QGh1Yy1jb3B5Lmh0bWw+ICAoaTkxNSMyMTkwDQo+IDxodHRwczovL2dpdGxhYi5mcmVlZGVz
a3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy8yMTkwPiApIC0+IFNLSVAgPGh0dHBzOi8vaW50ZWwt
Z2Z4LQ0KPiBjaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xODUxNi9maS1jbWwtdTIv
aWd0QGdlbV9odWNfY29weUBodWMtDQo+IGNvcHkuaHRtbD4NCj4gDQo+IAkJKglmaS1jbWwtczog
U0tJUCA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLQ0KPiB0aXAvQ0lfRFJN
XzkwMTkvZmktY21sLXMvaWd0QGdlbV9odWNfY29weUBodWMtY29weS5odG1sPiAgKGk5MTUjMjE5
MA0KPiA8aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvMjE5
MD4gKSAtPiBTS0lQIDxodHRwczovL2ludGVsLWdmeC0NCj4gY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTg1MTYvZmktY21sLXMvaWd0QGdlbV9odWNfY29weUBodWMtDQo+IGNvcHku
aHRtbD4NCj4gDQo+IAkJKglmaS1pY2wteTogU0tJUCA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLQ0KPiB0aXAvQ0lfRFJNXzkwMTkvZmktaWNsLXkvaWd0QGdlbV9odWNfY29w
eUBodWMtY29weS5odG1sPiAgKGk5MTUjMjE5MA0KPiA8aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0
b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvMjE5MD4gKSAtPiBGQUlMIDxodHRwczovL2ludGVsLWdm
eC0NCj4gY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTg1MTYvZmktaWNsLXkvaWd0
QGdlbV9odWNfY29weUBodWMtDQo+IGNvcHkuaHRtbD4NCj4gDQo+IAkJKglmaS1pY2wtdTI6IFNL
SVAgPGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS0NCj4gdGlwL0NJX0RSTV85
MDE5L2ZpLWljbC11Mi9pZ3RAZ2VtX2h1Y19jb3B5QGh1Yy1jb3B5Lmh0bWw+ICAoaTkxNSMyMTkw
DQo+IDxodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy8yMTkw
PiApIC0+IEZBSUwgPGh0dHBzOi8vaW50ZWwtZ2Z4LQ0KPiBjaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xODUxNi9maS1pY2wtdTIvaWd0QGdlbV9odWNfY29weUBodWMtDQo+IGNvcHku
aHRtbD4NCj4gDQo+IA0KPiAJU3VwcHJlc3NlZA0KPiANCj4gDQo+IAlUaGUgZm9sbG93aW5nIHJl
c3VsdHMgY29tZSBmcm9tIHVudHJ1c3RlZCBtYWNoaW5lcywgdGVzdHMsIG9yIHN0YXR1c2VzLg0K
PiAJVGhleSBkbyBub3QgYWZmZWN0IHRoZSBvdmVyYWxsIHJlc3VsdC4NCj4gDQo+IAkqCWlndEBn
ZW1faHVjX2NvcHlAaHVjLWNvcHk6DQo+IA0KPiAJCSoJe2ZpLWVobC0xfTogU0tJUCA8aHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLQ0KPiB0aXAvQ0lfRFJNXzkwMTkvZmktZWhs
LTEvaWd0QGdlbV9odWNfY29weUBodWMtY29weS5odG1sPiAgKGk5MTUjMjE5MA0KPiA8aHR0cHM6
Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvMjE5MD4gKSAtPiBGQUlM
IDxodHRwczovL2ludGVsLWdmeC0NCj4gY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTg1MTYvZmktZWhsLTEvaWd0QGdlbV9odWNfY29weUBodWMtDQo+IGNvcHkuaHRtbD4NCj4gDQo+
IAkJKgl7ZmktdGdsLWRzaX06IFNLSVAgPGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS0NCj4gdGlwL0NJX0RSTV85MDE5L2ZpLXRnbC1kc2kvaWd0QGdlbV9odWNfY29weUBodWMt
Y29weS5odG1sPiAgKGk5MTUjMjE5MA0KPiA8aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3Jn
L2RybS9pbnRlbC9pc3N1ZXMvMjE5MD4gKSAtPiBGQUlMIDxodHRwczovL2ludGVsLWdmeC0NCj4g
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTg1MTYvZmktdGdsLWRzaS9pZ3RAZ2Vt
X2h1Y19jb3B5QGh1Yy0NCj4gY29weS5odG1sPg0KPiANCj4gDQo+IAlLbm93biBpc3N1ZXMNCj4g
DQo+IA0KPiAJSGVyZSBhcmUgdGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzE4NTE2IHRo
YXQgY29tZSBmcm9tIGtub3duDQo+IGlzc3VlczoNCj4gDQo+IA0KPiAJSUdUIGNoYW5nZXMNCj4g
DQo+IA0KPiAJSXNzdWVzIGhpdA0KPiANCj4gDQo+IAkqCWlndEBnZW1faHVjX2NvcHlAaHVjLWNv
cHk6DQo+IA0KPiAJCSoJZmktdGdsLXk6IFBBU1MgPGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS0NCj4gdGlwL0NJX0RSTV85MDE5L2ZpLXRnbC15L2lndEBnZW1faHVjX2NvcHlA
aHVjLWNvcHkuaHRtbD4gIC0+IERNRVNHLUZBSUwNCj4gPGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE4NTE2L2ZpLXRnbC0NCj4geS9pZ3RAZ2VtX2h1
Y19jb3B5QGh1Yy1jb3B5Lmh0bWw+ICAoaTkxNSM0MDINCj4gPGh0dHBzOi8vZ2l0bGFiLmZyZWVk
ZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzQwMj4gKQ0KPiANCj4gCQkqCWZpLWFwbC1ndWM6
IFBBU1MgPGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS0NCj4gdGlwL0NJX0RS
TV85MDE5L2ZpLWFwbC1ndWMvaWd0QGdlbV9odWNfY29weUBodWMtY29weS5odG1sPiAgLT4gRkFJ
TA0KPiA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTg1MTYvZmktYXBsLQ0KPiBndWMvaWd0QGdlbV9odWNfY29weUBodWMtY29weS5odG1sPiAgKGk5
MTUjMTYzNQ0KPiA8aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1
ZXMvMTYzNT4gKQ0KPiANCj4gCSoJaWd0QGk5MTVfcG1fcnBtQGJhc2ljLXBjaS1kMy1zdGF0ZToN
Cj4gDQo+IAkJKglmaS1ieXQtajE5MDA6IFBBU1MgPGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS0NCj4gdGlwL0NJX0RSTV85MDE5L2ZpLWJ5dC1qMTkwMC9pZ3RAaTkxNV9wbV9y
cG1AYmFzaWMtcGNpLWQzLXN0YXRlLmh0bWw+ICAtPg0KPiBETUVTRy1XQVJOIDxodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xODUxNi9maS1ieXQtDQo+
IGoxOTAwL2lndEBpOTE1X3BtX3JwbUBiYXNpYy1wY2ktZDMtc3RhdGUuaHRtbD4gIChpOTE1IzE5
ODINCj4gPGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzE5
ODI+ICkNCj4gDQo+IAkqCWlndEBrbXNfY3Vyc29yX2xlZ2FjeUBiYXNpYy1idXN5LWZsaXAtYmVm
b3JlLWN1cnNvci1sZWdhY3k6DQo+IA0KPiAJCSoJZmktaWNsLXUyOiBQQVNTIDxodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9DSV9EUk1fOTAxOS9maS1pY2wtdTIv
aWd0QGttc19jdXJzb3JfbGVnYWN5QGJhc2ljLWJ1c3ktZmxpcC1iZWZvcmUtY3Vyc29yLQ0KPiBs
ZWdhY3kuaHRtbD4gIC0+IERNRVNHLVdBUk4gPGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS0NCj4gdGlwL1BhdGNod29ya18xODUxNi9maS1pY2wtdTIvaWd0QGttc19jdXJzb3Jf
bGVnYWN5QGJhc2ljLWJ1c3ktZmxpcC1iZWZvcmUtDQo+IGN1cnNvci1sZWdhY3kuaHRtbD4gIChp
OTE1IzE5ODINCj4gPGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNz
dWVzLzE5ODI+ICkNCj4gDQo+IAkqCWlndEBrbXNfcGlwZV9jcmNfYmFzaWNAcmVhZC1jcmMtcGlw
ZS1jOg0KPiANCj4gCQkqCWZpLXRnbC15OiBQQVNTIDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tDQo+IHRpcC9DSV9EUk1fOTAxOS9maS10Z2wteS9pZ3RAa21zX3BpcGVfY3Jj
X2Jhc2ljQHJlYWQtY3JjLXBpcGUtYy5odG1sPiAgLT4NCj4gRE1FU0ctV0FSTiA8aHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTg1MTYvZmktdGdsLQ0K
PiB5L2lndEBrbXNfcGlwZV9jcmNfYmFzaWNAcmVhZC1jcmMtcGlwZS1jLmh0bWw+ICAoaTkxNSMx
OTgyDQo+IDxodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy8x
OTgyPiApICsxIHNpbWlsYXIgaXNzdWUNCj4gDQo+IA0KPiAJUG9zc2libGUgZml4ZXMNCj4gDQo+
IA0KPiAJKglpZ3RAZ2VtX3RpbGVkX2ZlbmNlX2JsaXRzQGJhc2ljOg0KPiANCj4gCQkqCWZpLXRn
bC15OiBETUVTRy1XQVJOIDxodHRwczovL2ludGVsLWdmeC0NCj4gY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fOTAxOS9maS10Z2wtDQo+IHkvaWd0QGdlbV90aWxlZF9mZW5jZV9ibGl0c0Bi
YXNpYy5odG1sPiAgKGk5MTUjNDAyDQo+IDxodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcv
ZHJtL2ludGVsL2lzc3Vlcy80MDI+ICkgLT4gUEFTUyA8aHR0cHM6Ly9pbnRlbC1nZngtDQo+IGNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE4NTE2L2ZpLXRnbC0NCj4geS9pZ3RAZ2Vt
X3RpbGVkX2ZlbmNlX2JsaXRzQGJhc2ljLmh0bWw+DQo+IA0KPiAJKglpZ3RAaTkxNV9tb2R1bGVf
bG9hZEByZWxvYWQ6DQo+IA0KPiAJCSoJe2ZpLXRnbC1kc2l9OiBETUVTRy1XQVJOIDxodHRwczov
L2ludGVsLWdmeC0NCj4gY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fOTAxOS9maS10Z2wt
DQo+IGRzaS9pZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQuaHRtbD4gIChpOTE1IzE5ODINCj4g
PGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzE5ODI+ICAv
IGsub3JnIzIwNTM3OQ0KPiA8aHR0cHM6Ly9idWd6aWxsYS5rZXJuZWwub3JnL3Nob3dfYnVnLmNn
aT9pZD0yMDUzNzk+ICkgLT4gUEFTUyA8aHR0cHM6Ly9pbnRlbC1nZngtDQo+IGNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE4NTE2L2ZpLXRnbC0NCj4gZHNpL2lndEBpOTE1X21vZHVs
ZV9sb2FkQHJlbG9hZC5odG1sPg0KPiANCj4gCQkqCWZpLWJ5dC1qMTkwMDogRE1FU0ctV0FSTiA8
aHR0cHM6Ly9pbnRlbC1nZngtDQo+IGNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzkwMTkv
ZmktYnl0LQ0KPiBqMTkwMC9pZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQuaHRtbD4gIChpOTE1
IzE5ODINCj4gPGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVz
LzE5ODI+ICkgLT4gUEFTUyA8aHR0cHM6Ly9pbnRlbC1nZngtDQo+IGNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE4NTE2L2ZpLWJ5dC0NCj4gajE5MDAvaWd0QGk5MTVfbW9kdWxlX2xv
YWRAcmVsb2FkLmh0bWw+ICArMiBzaW1pbGFyIGlzc3Vlcw0KPiANCj4gCQkqCWZpLWFwbC1ndWM6
IERNRVNHLVdBUk4gPGh0dHBzOi8vaW50ZWwtZ2Z4LQ0KPiBjaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV85MDE5L2ZpLWFwbC0NCj4gZ3VjL2lndEBpOTE1X21vZHVsZV9sb2FkQHJlbG9hZC5o
dG1sPiAgKGk5MTUjMTYzNQ0KPiA8aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9p
bnRlbC9pc3N1ZXMvMTYzNT4gIC8gaTkxNSMxOTgyDQo+IDxodHRwczovL2dpdGxhYi5mcmVlZGVz
a3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy8xOTgyPiApIC0+IFBBU1MgPGh0dHBzOi8vaW50ZWwt
Z2Z4LQ0KPiBjaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xODUxNi9maS1hcGwtDQo+
IGd1Yy9pZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQuaHRtbD4gICsxIHNpbWlsYXIgaXNzdWUN
Cj4gDQo+IAkJKglmaS10Z2wteTogRE1FU0ctV0FSTiA8aHR0cHM6Ly9pbnRlbC1nZngtDQo+IGNp
LjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzkwMTkvZmktdGdsLXkvaWd0QGk5MTVfbW9kdWxl
X2xvYWRAcmVsb2FkLmh0bWw+DQo+IChpOTE1IzE5ODIgPGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNr
dG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzE5ODI+ICAvIGsub3JnIzIwNTM3OQ0KPiA8aHR0cHM6
Ly9idWd6aWxsYS5rZXJuZWwub3JnL3Nob3dfYnVnLmNnaT9pZD0yMDUzNzk+ICkgLT4gUEFTUyA8
aHR0cHM6Ly9pbnRlbC1nZngtDQo+IGNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE4
NTE2L2ZpLXRnbC0NCj4geS9pZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQuaHRtbD4NCj4gDQo+
IAkqCWlndEBrbXNfYnVzeUBiYXNpY0Btb2Rlc2V0Og0KPiANCj4gCQkqCWZpLXRnbC15OiBETUVT
Ry1XQVJOIDxodHRwczovL2ludGVsLWdmeC0NCj4gY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fOTAxOS9maS10Z2wtDQo+IHkvaWd0QGttc19idXN5QGJhc2ljQG1vZGVzZXQuaHRtbD4gIChp
OTE1IzE5ODINCj4gPGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNz
dWVzLzE5ODI+ICkgLT4gUEFTUyA8aHR0cHM6Ly9pbnRlbC1nZngtDQo+IGNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE4NTE2L2ZpLXRnbC0NCj4geS9pZ3RAa21zX2J1c3lAYmFzaWNA
bW9kZXNldC5odG1sPiAgKzIgc2ltaWxhciBpc3N1ZXMNCj4gDQo+IAkqCWlndEBrbXNfZmxpcEBi
YXNpYy1mbGlwLXZzLXdmX3ZibGFua0BjLWVkcDE6DQo+IA0KPiAJCSoJZmktaWNsLXUyOiBETUVT
Ry1XQVJOIDxodHRwczovL2ludGVsLWdmeC0NCj4gY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fOTAxOS9maS1pY2wtdTIvaWd0QGttc19mbGlwQGJhc2ljLWZsaXAtdnMtDQo+IHdmX3ZibGFu
a0BjLWVkcDEuaHRtbD4gIChpOTE1IzE5ODINCj4gPGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9w
Lm9yZy9kcm0vaW50ZWwvaXNzdWVzLzE5ODI+ICkgLT4gUEFTUyA8aHR0cHM6Ly9pbnRlbC1nZngt
DQo+IGNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE4NTE2L2ZpLWljbC11Mi9pZ3RA
a21zX2ZsaXBAYmFzaWMtZmxpcC12cy0NCj4gd2ZfdmJsYW5rQGMtZWRwMS5odG1sPg0KPiANCj4g
DQo+IAlXYXJuaW5ncw0KPiANCj4gDQo+IAkqCWlndEBnZW1faHVjX2NvcHlAaHVjLWNvcHk6DQo+
IA0KPiAJCSoJZmktc2tsLTY2MDB1OiBTS0lQIDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tDQo+IHRpcC9DSV9EUk1fOTAxOS9maS1za2wtNjYwMHUvaWd0QGdlbV9odWNfY29w
eUBodWMtY29weS5odG1sPiAgKGZkbyMxMDkyNzENCj4gPGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTI3MT4gIC8gaTkxNSMyMTkwDQo+IDxodHRwczovL2dp
dGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy8yMTkwPiApIC0+IFNLSVAgPGh0
dHBzOi8vaW50ZWwtZ2Z4LQ0KPiBjaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xODUx
Ni9maS1za2wtNjYwMHUvaWd0QGdlbV9odWNfY29weUBodWMtDQo+IGNvcHkuaHRtbD4gIChmZG8j
MTA5MjcxIDxodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDky
NzE+ICkNCj4gDQo+IAkJKglmaS1rYmwtc29yYWthOiBTS0lQIDxodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9DSV9EUk1fOTAxOS9maS1rYmwtc29yYWthL2lndEBn
ZW1faHVjX2NvcHlAaHVjLWNvcHkuaHRtbD4gIChmZG8jMTA5MjcxDQo+IDxodHRwczovL2J1Z3Mu
ZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDkyNzE+ICAvIGk5MTUjMjE5MA0KPiA8
aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvMjE5MD4gKSAt
PiBTS0lQIDxodHRwczovL2ludGVsLWdmeC0NCj4gY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTg1MTYvZmkta2JsLXNvcmFrYS9pZ3RAZ2VtX2h1Y19jb3B5QGh1Yy0NCj4gY29weS5o
dG1sPiAgKGZkbyMxMDkyNzEgPGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTEwOTI3MT4gKQ0KPiANCj4gCQkqCWZpLXNrbC1sbWVtOiBTS0lQIDxodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9DSV9EUk1fOTAxOS9maS1za2wtbG1l
bS9pZ3RAZ2VtX2h1Y19jb3B5QGh1Yy1jb3B5Lmh0bWw+ICAoZmRvIzEwOTI3MQ0KPiA8aHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5MjcxPiAgLyBpOTE1IzIx
OTANCj4gPGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzIx
OTA+ICkgLT4gU0tJUCA8aHR0cHM6Ly9pbnRlbC1nZngtDQo+IGNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE4NTE2L2ZpLXNrbC1sbWVtL2lndEBnZW1faHVjX2NvcHlAaHVjLQ0KPiBj
b3B5Lmh0bWw+ICAoZmRvIzEwOTI3MSA8aHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93
X2J1Zy5jZ2k/aWQ9MTA5MjcxPiApDQo+IA0KPiAJCSoJZmktZ2xrLWRzaTogU0tJUCA8aHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLQ0KPiB0aXAvQ0lfRFJNXzkwMTkvZmktZ2xr
LWRzaS9pZ3RAZ2VtX2h1Y19jb3B5QGh1Yy1jb3B5Lmh0bWw+ICAoZmRvIzEwOTI3MQ0KPiA8aHR0
cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5MjcxPiAgLyBpOTE1
IzIxOTANCj4gPGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVz
LzIxOTA+ICkgLT4gU0tJUCA8aHR0cHM6Ly9pbnRlbC1nZngtDQo+IGNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE4NTE2L2ZpLWdsay1kc2kvaWd0QGdlbV9odWNfY29weUBodWMtDQo+
IGNvcHkuaHRtbD4gIChmZG8jMTA5MjcxIDxodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3No
b3dfYnVnLmNnaT9pZD0xMDkyNzE+ICkNCj4gDQo+IAkJKglmaS1rYmwteDEyNzU6IFNLSVAgPGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS0NCj4gdGlwL0NJX0RSTV85MDE5L2Zp
LWtibC14MTI3NS9pZ3RAZ2VtX2h1Y19jb3B5QGh1Yy1jb3B5Lmh0bWw+ICAoZmRvIzEwOTI3MQ0K
PiA8aHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5MjcxPiAg
LyBpOTE1IzIxOTANCj4gPGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwv
aXNzdWVzLzIxOTA+ICkgLT4gU0tJUCA8aHR0cHM6Ly9pbnRlbC1nZngtDQo+IGNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE4NTE2L2ZpLWtibC14MTI3NS9pZ3RAZ2VtX2h1Y19jb3B5
QGh1Yy0NCj4gY29weS5odG1sPiAgKGZkbyMxMDkyNzEgPGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTI3MT4gKQ0KPiANCj4gCQkqCWZpLWtibC03NTAwdTog
U0tJUCA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLQ0KPiB0aXAvQ0lfRFJN
XzkwMTkvZmkta2JsLTc1MDB1L2lndEBnZW1faHVjX2NvcHlAaHVjLWNvcHkuaHRtbD4gIChmZG8j
MTA5MjcxDQo+IDxodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0x
MDkyNzE+ICAvIGk5MTUjMjE5MA0KPiA8aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2Ry
bS9pbnRlbC9pc3N1ZXMvMjE5MD4gKSAtPiBTS0lQIDxodHRwczovL2ludGVsLWdmeC0NCj4gY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTg1MTYvZmkta2JsLTc1MDB1L2lndEBnZW1f
aHVjX2NvcHlAaHVjLQ0KPiBjb3B5Lmh0bWw+ICAoZmRvIzEwOTI3MSA8aHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5MjcxPiApDQo+IA0KPiAJCSoJZmkta2Js
LXI6IFNLSVAgPGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS0NCj4gdGlwL0NJ
X0RSTV85MDE5L2ZpLWtibC1yL2lndEBnZW1faHVjX2NvcHlAaHVjLWNvcHkuaHRtbD4gIChmZG8j
MTA5MjcxDQo+IDxodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0x
MDkyNzE+ICAvIGk5MTUjMjE5MA0KPiA8aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2Ry
bS9pbnRlbC9pc3N1ZXMvMjE5MD4gKSAtPiBTS0lQIDxodHRwczovL2ludGVsLWdmeC0NCj4gY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTg1MTYvZmkta2JsLXIvaWd0QGdlbV9odWNf
Y29weUBodWMtDQo+IGNvcHkuaHRtbD4gIChmZG8jMTA5MjcxIDxodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDkyNzE+ICkNCj4gDQo+IAkJKglmaS1jZmwtODEw
OXU6IFNLSVAgPGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS0NCj4gdGlwL0NJ
X0RSTV85MDE5L2ZpLWNmbC04MTA5dS9pZ3RAZ2VtX2h1Y19jb3B5QGh1Yy1jb3B5Lmh0bWw+ICAo
ZmRvIzEwOTI3MQ0KPiA8aHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/
aWQ9MTA5MjcxPiAgLyBpOTE1IzIxOTANCj4gPGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9y
Zy9kcm0vaW50ZWwvaXNzdWVzLzIxOTA+ICkgLT4gU0tJUCA8aHR0cHM6Ly9pbnRlbC1nZngtDQo+
IGNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE4NTE2L2ZpLWNmbC04MTA5dS9pZ3RA
Z2VtX2h1Y19jb3B5QGh1Yy0NCj4gY29weS5odG1sPiAgKGZkbyMxMDkyNzEgPGh0dHBzOi8vYnVn
cy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTI3MT4gKQ0KPiANCj4gCQkqCWZp
LWJ4dC1kc2k6IFNLSVAgPGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS0NCj4g
dGlwL0NJX0RSTV85MDE5L2ZpLWJ4dC1kc2kvaWd0QGdlbV9odWNfY29weUBodWMtY29weS5odG1s
PiAgKGZkbyMxMDkyNzENCj4gPGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTEwOTI3MT4gIC8gaTkxNSMxNjM1DQo+IDxodHRwczovL2dpdGxhYi5mcmVlZGVza3Rv
cC5vcmcvZHJtL2ludGVsL2lzc3Vlcy8xNjM1PiAgLyBpOTE1IzIxOTANCj4gPGh0dHBzOi8vZ2l0
bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzIxOTA+ICkgLT4gU0tJUCA8aHR0
cHM6Ly9pbnRlbC1nZngtDQo+IGNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE4NTE2
L2ZpLWJ4dC1kc2kvaWd0QGdlbV9odWNfY29weUBodWMtDQo+IGNvcHkuaHRtbD4gIChmZG8jMTA5
MjcxIDxodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDkyNzE+
DQo+IC8gaTkxNSMxNjM1IDxodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVs
L2lzc3Vlcy8xNjM1PiApDQo+IA0KPiAJCSoJZmktY2ZsLTg3MDBrOiBTS0lQIDxodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9DSV9EUk1fOTAxOS9maS1jZmwtODcw
MGsvaWd0QGdlbV9odWNfY29weUBodWMtY29weS5odG1sPiAgKGZkbyMxMDkyNzENCj4gPGh0dHBz
Oi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTI3MT4gIC8gaTkxNSMy
MTkwDQo+IDxodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy8y
MTkwPiApIC0+IFNLSVAgPGh0dHBzOi8vaW50ZWwtZ2Z4LQ0KPiBjaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xODUxNi9maS1jZmwtODcwMGsvaWd0QGdlbV9odWNfY29weUBodWMtDQo+
IGNvcHkuaHRtbD4gIChmZG8jMTA5MjcxIDxodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3No
b3dfYnVnLmNnaT9pZD0xMDkyNzE+ICkNCj4gDQo+IAkqCWlndEBpOTE1X21vZHVsZV9sb2FkQHJl
bG9hZDoNCj4gDQo+IAkJKglmaS1rYmwteDEyNzU6IERNRVNHLVdBUk4gPGh0dHBzOi8vaW50ZWwt
Z2Z4LQ0KPiBjaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV85MDE5L2ZpLWtibC0NCj4geDEy
NzUvaWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2FkLmh0bWw+ICAoaTkxNSM2Mg0KPiA8aHR0cHM6
Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvNjI+ICAvIGk5MTUjOTIN
Cj4gPGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzkyPiAp
IC0+IERNRVNHLVdBUk4NCj4gPGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE4NTE2L2ZpLWtibC0NCj4geDEyNzUvaWd0QGk5MTVfbW9kdWxlX2xvYWRA
cmVsb2FkLmh0bWw+ICAoaTkxNSM2Mg0KPiA8aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3Jn
L2RybS9pbnRlbC9pc3N1ZXMvNjI+ICAvIGk5MTUjOTINCj4gPGh0dHBzOi8vZ2l0bGFiLmZyZWVk
ZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzkyPiAgLyBpOTE1Izk1DQo+IDxodHRwczovL2dp
dGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy85NT4gKQ0KPiANCj4gCSoJaWd0
QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQ6DQo+IA0KPiAJCSoJZmkta2JsLXgxMjc1OiBETUVT
Ry1GQUlMIDxodHRwczovL2ludGVsLWdmeC0NCj4gY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fOTAxOS9maS1rYmwteDEyNzUvaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS0NCj4gcmVsb2FkLmh0
bWw+ICAoaTkxNSM2MiA8aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9p
c3N1ZXMvNjI+ICkgLT4NCj4gRE1FU0ctRkFJTCA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTg1MTYvZmkta2JsLQ0KPiB4MTI3NS9pZ3RAaTkxNV9w
bV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sPiAgKGk5MTUjNjINCj4gPGh0dHBzOi8vZ2l0bGFiLmZy
ZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzYyPiAgLyBpOTE1Izk1DQo+IDxodHRwczov
L2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy85NT4gKQ0KPiANCj4gCQkq
CWZpLWtibC1ndWM6IERNRVNHLVdBUk4gPGh0dHBzOi8vaW50ZWwtZ2Z4LQ0KPiBjaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV85MDE5L2ZpLWtibC1ndWMvaWd0QGk5MTVfcG1fcnBtQG1vZHVs
ZS0NCj4gcmVsb2FkLmh0bWw+ICAoaTkxNSMyMjAzIDxodHRwczovL2dpdGxhYi5mcmVlZGVza3Rv
cC5vcmcvZHJtL2ludGVsL2lzc3Vlcy8yMjAzPiApIC0NCj4gPiBTS0lQIDxodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xODUxNi9maS1rYmwtDQo+IGd1
Yy9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sPiAgKGZkbyMxMDkyNzENCj4gPGh0
dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTI3MT4gKQ0KPiAN
Cj4gCSoJaWd0QGttc19waXBlX2NyY19iYXNpY0Bjb21wYXJlLWNyYy1zYW5pdHljaGVjay1waXBl
LWM6DQo+IA0KPiAJCSoJZmkta2JsLXgxMjc1OiBETUVTRy1XQVJOIDxodHRwczovL2ludGVsLWdm
eC0NCj4gY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fOTAxOS9maS1rYmwtDQo+IHgxMjc1
L2lndEBrbXNfcGlwZV9jcmNfYmFzaWNAY29tcGFyZS1jcmMtc2FuaXR5Y2hlY2stcGlwZS1jLmh0
bWw+ICAoaTkxNSM2Mg0KPiA8aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRl
bC9pc3N1ZXMvNjI+ICAvIGk5MTUjOTINCj4gPGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9y
Zy9kcm0vaW50ZWwvaXNzdWVzLzkyPiAgLyBpOTE1Izk1DQo+IDxodHRwczovL2dpdGxhYi5mcmVl
ZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy85NT4gKSAtPiBETUVTRy1XQVJODQo+IDxodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xODUxNi9maS1r
YmwtDQo+IHgxMjc1L2lndEBrbXNfcGlwZV9jcmNfYmFzaWNAY29tcGFyZS1jcmMtc2FuaXR5Y2hl
Y2stcGlwZS1jLmh0bWw+ICAoaTkxNSM2Mg0KPiA8aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Au
b3JnL2RybS9pbnRlbC9pc3N1ZXMvNjI+ICAvIGk5MTUjOTINCj4gPGh0dHBzOi8vZ2l0bGFiLmZy
ZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzkyPiApICsyIHNpbWlsYXIgaXNzdWVzDQo+
IA0KPiAJe25hbWV9OiBUaGlzIGVsZW1lbnQgaXMgc3VwcHJlc3NlZC4gVGhpcyBtZWFucyBpdCBp
cyBpZ25vcmVkIHdoZW4NCj4gY29tcHV0aW5nDQo+IAl0aGUgc3RhdHVzIG9mIHRoZSBkaWZmZXJl
bmNlIChTVUNDRVNTLCBXQVJOSU5HLCBvciBGQUlMVVJFKS4NCj4gDQo+IA0KPiAJUGFydGljaXBh
dGluZyBob3N0cyAoNDUgLT4gMzkpDQo+IA0KPiANCj4gCUFkZGl0aW9uYWwgKDEpOiBmaS1za2wt
NjcwMGsyDQo+IAlNaXNzaW5nICg3KTogZmktaWxrLW01NDAgZmktaHN3LTQyMDB1IGZpLWJ5dC1z
cXVhd2tzIGZpLWJzdy1jeWFuIGZpLWN0Zy0NCj4gcDg2MDAgZmktYnl0LWNsYXBwZXIgZmktYmR3
LXNhbXVzDQo+IA0KPiANCj4gCUJ1aWxkIGNoYW5nZXMNCj4gDQo+IA0KPiAJKglMaW51eDogQ0lf
RFJNXzkwMTkgLT4gUGF0Y2h3b3JrXzE4NTE2DQo+IA0KPiAJQ0ktMjAxOTA1Mjk6IDIwMTkwNTI5
DQo+IAlDSV9EUk1fOTAxOTogMDM4YzIyODQ3NWNlMTBhNmY5Y2M0MDUyMjUwYTEzMTVmM2M3YzYy
NyBADQo+IGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eA0KPiAJSUdU
XzU3ODY6IDIyMjA1MTAyNmI5NzhlYmJjMGRjNThkYjYyZDdhMWYyOTcyOGY5NWYgQA0KPiBnaXQ6
Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy94b3JnL2FwcC9pbnRlbC1ncHUtdG9vbHMNCj4gCVBh
dGNod29ya18xODUxNjogZWE1N2YwZjU4ZDJiOTg3NjI2Y2YxOTFmZTA0N2UzMTU0MDEzMzJkNiBA
DQo+IGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eA0KPiANCj4gCT09
IExpbnV4IGNvbW1pdHMgPT0NCj4gDQo+IAllYTU3ZjBmNThkMmIgZHJtL2k5MTUvdWM6IHR1cm4g
b24gR3VDL0h1QyBhdXRvIG1vZGUgYnkgZGVmYXVsdA0KPiAJNDRiMmFkNTk4NDUxIGRybS9pOTE1
L2d1YzogQ2xlYXIgcG9pbnRlcnMgb24gZnJlZQ0KPiAJNGU3Yzg0ODM5MDRmIGRybS9pOTE1L2d1
YzogSW1wcm92ZWQgcmVwb3J0aW5nIHdoZW4gR3VDIGZhaWxzIHRvIGxvYWQNCj4gCWY2MWM3NDZi
MTY0ZiBkcm0vaTkxNS9ndWM6IFVwZGF0ZSBmaXJtd2FyZSB0byB2NDkuMC4xDQo+IAkwZWU4Yzlj
Y2JjODEgZHJtL2k5MTUvZ3VjOiBJbmNyZWFzZWQgZW5naW5lIGNsYXNzZXMgaW4gQURTDQo+IAli
ZmIyOTkyNjBlZTYgZHJtL2k5MTUvZ3VjOiBTZXR1cCBkb29yYmVsbHMgZGF0YSBpbiBBRFMNCj4g
CWY5M2JlZmYxODJiNiBkcm0vaTkxNS9ndWM6IEFEUyBjaGFuZ2VzIGZvciBHdUMgdjQyDQo+IAk2
NGFlOTQyN2I3ZDcgZHJtL2k5MTUvZ3VjOiBLaWxsIGd1Y19hZHMucmVnX3N0YXRlX2J1ZmZlcg0K
PiAJNWY0MjNhY2E1NjhiIGRybS9pOTE1L2d1YzogUmVtb3ZlIEdVQ19DVExfQ1RYSU5GTyBpbml0
IHBhcmFtDQo+IAlhMDE3N2Q1N2JiMzggZHJtL2k5MTUvZ3VjOiBTZXR1cCBwcml2YXRlX2RhdGEg
cG9pbnRlciBpbiBHdUMgQURTDQo+IAk5MjNkYThkZmM3MDAgZHJtL2k5MTUvZ3VjOiBTdXBwb3J0
IGxvZ2ljYWwgZW5naW5lIG1hcHBpbmcgdGFibGUgaW4gQURTDQo+IAliODUyNDdlZWMwZDUgZHJt
L2k5MTUvZ3VjOiBOZXcgR3VDIElEcyBiYXNlZCBvbiBlbmdpbmUgY2xhc3MgYW5kDQo+IGluc3Rh
bmNlDQo+IA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
