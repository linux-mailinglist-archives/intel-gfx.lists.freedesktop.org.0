Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E917D30521E
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 06:29:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03FA96E52E;
	Wed, 27 Jan 2021 05:29:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A9056E52E
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 05:29:51 +0000 (UTC)
IronPort-SDR: bfIW233iJksa1Go9L4KJJ86GGcgvbpY0FBA7d19eUJ6yT4V6DO2uW4Lp81RIqRMsCLdYn8P0oo
 yckAQzAwFTng==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="167116086"
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="167116086"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 21:29:50 -0800
IronPort-SDR: /IhnfUYTzbSewezvPhLWShLJ86uW5CiAU0i4n7WU9IqT+p8GG/fPAX2SvrVi7Mk1fGfQBaF9gO
 lJlcE5CmQKJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="393962497"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP; 26 Jan 2021 21:29:50 -0800
Received: from bgsmsx603.gar.corp.intel.com (10.109.78.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 26 Jan 2021 21:29:37 -0800
Received: from pgsmsx602.gar.corp.intel.com (10.108.199.137) by
 BGSMSX603.gar.corp.intel.com (10.109.78.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 27 Jan 2021 10:59:34 +0530
Received: from pgsmsx602.gar.corp.intel.com ([10.108.199.137]) by
 pgsmsx602.gar.corp.intel.com ([10.108.199.137]) with mapi id 15.01.1713.004;
 Wed, 27 Jan 2021 13:29:34 +0800
From: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5?=
 =?utf-8?B?MTUvaGRjcDogRGlzYWJsZSB0aGUgUVNFUyBjaGVjayBmb3IgSERDUCAxLjQg?=
 =?utf-8?Q?over_MST_(rev2)?=
Thread-Index: AQHW8GhgXA0Ib8oqwkuOBeETmZhDl6o4e16AgAAdrwCAAlwv0IAAAnEQ
Date: Wed, 27 Jan 2021 05:29:34 +0000
Message-ID: <15ac9308013f44b59f7fce1c9bbcd505@intel.com>
References: <20210106223909.34476-1-sean@poorly.run>
 <161128337637.14036.11941412627307128800@emeril.freedesktop.org>
 <1fc478adfaab48daa99274b11305a80a@intel.com>
 <743c338632c44d968124aca0ed91a324@intel.com>
 <b2ffe29075af49369d31d04f02e9db1d@intel.com>
In-Reply-To: <b2ffe29075af49369d31d04f02e9db1d@intel.com>
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
 =?utf-8?q?/i915/hdcp=3A_Disable_the_QSES_check_for_HDCP_1=2E4_over_MST_?=
 =?utf-8?b?KHJldjIp?=
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

UmUtcmVwb3J0aW5nIHdpbGwganVzdCByZS1yZXBvcnQgdGhlIHJlc3VsdHMgb25jZSBtb3JlIHRp
bWUuIFJlLXJlcG9ydGluZyB3aWxsIHJlLWNoZWNrIGlmIHRoZXJlIGlzIGFuIGV4aXN0aW5nIGJ1
ZyBmb3IgdGhlIHJlZ3Jlc3Npb24gZmFpbHVyZXMgb3Igbm90LiBJZiBhIGJ1ZyBpcyBmb3VuZCwg
c2VyaWVzIHNob3dzIGFzIHN1Y2Nlc3MgKGFzIHRoZSBmYWlsdXJlIGlzIG5vdCBhIHJlZ3Jlc3Np
b24pLiBSZWdyZXNzaW9uIGZhaWx1cmVzIHdpbGwgZmluZCBhIGJ1ZyB3aGVuIGEgcmUtcmVwb3J0
IGFzIEkgZWl0aGVyIGZpbGUgYSBuZXcgYnVnIG9yIEkgd2lsbCBhc3NvY2lhdGUgdGhlIHJlZ3Jl
c3Npb24gZmFpbHVyZSB0byBhbiBleGlzdGluZyBidWcgYmVmb3JlIEkgcmUtcmVwb3J0Lg0KDQpC
dXQgcmUtcmVwb3J0aW5nIHdpbGwgbm90IHRyaWdnZXIgcmUtcnVuIHRvIHNlZSB2ZXJzaW9uIDIg
cmVzdWx0cy4gTGV0IG1lIGtub3cgaWYgeW91IGhhdmUgYW55IGZ1cnRoZXIgcXVlc3Rpb25zLg0K
DQpUaGFua3MsDQpMYWtzaG1pLg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEd1
cHRhLCBBbnNodW1hbiA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tPiANClNlbnQ6IFR1ZXNkYXks
IEphbnVhcnkgMjYsIDIwMjEgOToyMCBQTQ0KVG86IFZ1ZHVtLCBMYWtzaG1pbmFyYXlhbmEgPGxh
a3NobWluYXJheWFuYS52dWR1bUBpbnRlbC5jb20+OyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnDQpDYzogU2VhbiBQYXVsIDxzZWFuQHBvb3JseS5ydW4+DQpTdWJqZWN0OiBSRTogW0lu
dGVsLWdmeF0g4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvaGRjcDogRGlzYWJs
ZSB0aGUgUVNFUyBjaGVjayBmb3IgSERDUCAxLjQgb3ZlciBNU1QgKHJldjIpDQoNClRoYW5rcyBM
YWtzaG1pIGZvciByZS1yZXBvcnRpbmcgaXQuDQpNYXkgSSBrbm93IHRoYXQgcmUtcmVwb3J0aW5n
IHdpbGwgYWxzbyB0cmlnZ2VyIGEgQ0ktSUdUIHJ1bi4NCkkgYW0gbm90IGFibGUgdG8gc2VlIHRo
aXMgc2VyaWVzIGluIENJIFF1ZXVlIGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy9xdWV1ZS9p
bmRleC5odG1sDQpDdXJyZW50bHkgdGhpcyBwYXRjaCBSZXYyIGlzIG5vdCBzaG93aW5nIGFueSBD
SS1JR1QgcmVzdWx0cy4NCg0KQnIsDQpBbnNodW1hbg0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2Fn
ZS0tLS0tDQo+IEZyb206IFZ1ZHVtLCBMYWtzaG1pbmFyYXlhbmEgPGxha3NobWluYXJheWFuYS52
dWR1bUBpbnRlbC5jb20+DQo+IFNlbnQ6IE1vbmRheSwgSmFudWFyeSAyNSwgMjAyMSAxMDo0MCBQ
TQ0KPiBUbzogR3VwdGEsIEFuc2h1bWFuIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+OyBpbnRl
bC0gDQo+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IFNlYW4gUGF1bCA8c2VhbkBw
b29ybHkucnVuPg0KPiBTdWJqZWN0OiBSRTogW0ludGVsLWdmeF0g4pyXIEZpLkNJLkJBVDogZmFp
bHVyZSBmb3IgZHJtL2k5MTUvaGRjcDogDQo+IERpc2FibGUgdGhlIFFTRVMgY2hlY2sgZm9yIEhE
Q1AgMS40IG92ZXIgTVNUIChyZXYyKQ0KPiANCj4gUmUtcmVwb3J0ZWQuDQo+IA0KPiAtLS0tLU9y
aWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBHdXB0YSwgQW5zaHVtYW4gPGFuc2h1bWFuLmd1
cHRhQGludGVsLmNvbT4NCj4gU2VudDogTW9uZGF5LCBKYW51YXJ5IDI1LCAyMDIxIDc6MjYgQU0N
Cj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IFZ1ZHVtLCBMYWtzaG1pbmFy
YXlhbmEgDQo+IDxsYWtzaG1pbmFyYXlhbmEudnVkdW1AaW50ZWwuY29tPg0KPiBDYzogU2VhbiBQ
YXVsIDxzZWFuQHBvb3JseS5ydW4+DQo+IFN1YmplY3Q6IFJFOiBbSW50ZWwtZ2Z4XSDinJcgRmku
Q0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS9oZGNwOiANCj4gRGlzYWJsZSB0aGUgUVNFUyBj
aGVjayBmb3IgSERDUCAxLjQgb3ZlciBNU1QgKHJldjIpDQo+IA0KPiBIaSBMYWtzaG1pICwNCj4g
V2UgbmVlZCB0byBtZXJnZSB0aGUgcGF0Y2gNCj4gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0
b3Aub3JnL3Nlcmllcy84NTU1NS8NCj4gQmVsb3cgYXJlIHRoZSBnZW0gZmFpbHVyZXMgY2F1c2lu
ZyB0aGUgQkFUIHRvIGZhaWwgLCB0aG9zZSB3ZXJlIG5vdCANCj4gc2VlbiBvbg0KPiBSZXYxIG9m
IHRoaXMgcGF0Y2guDQo+IENvdWxkIHlvdSBwbGVhc2UgcmVyZXBvcnQtdGhlIHJlc3VsdHMgdG8g
dHJpZ2dlciBDSS1JR1QgcnVuLg0KPiBUaGFua3MsDQo+IEFuc2h1bWFuIEd1cHRhLg0KPiANCj4g
RnJvbTogSW50ZWwtZ2Z4IDxpbnRlbC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+
IE9uIEJlaGFsZiBPZiANCj4gUGF0Y2h3b3JrDQo+IFNlbnQ6IEZyaWRheSwgSmFudWFyeSAyMiwg
MjAyMSA4OjEzIEFNDQo+IFRvOiBTZWFuIFBhdWwgPHNlYW5AcG9vcmx5LnJ1bj4NCj4gQ2M6IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVsLWdmeF0g4pyX
IEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvaGRjcDogRGlzYWJsZSANCj4gdGhlIFFT
RVMgY2hlY2sgZm9yIEhEQ1AgMS40IG92ZXIgTVNUIChyZXYyKQ0KPiANCj4gUGF0Y2ggRGV0YWls
cw0KPiBTZXJpZXM6DQo+IGRybS9pOTE1L2hkY3A6IERpc2FibGUgdGhlIFFTRVMgY2hlY2sgZm9y
IEhEQ1AgMS40IG92ZXIgTVNUIChyZXYyKQ0KPiBVUkw6DQo+IGh0dHBzOi8vcGF0Y2h3b3JrLmZy
ZWVkZXNrdG9wLm9yZy9zZXJpZXMvODU1NTUvDQo+IFN0YXRlOg0KPiBmYWlsdXJlDQo+IERldGFp
bHM6DQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzE5NDQ3L2luZGV4Lmh0bWwNCj4gQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fOTY2
NiAtPiBQYXRjaHdvcmtfMTk0NDcgU3VtbWFyeSANCj4gRkFJTFVSRSBTZXJpb3VzIHVua25vd24g
Y2hhbmdlcyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMTk0NDcgYWJzb2x1dGVseSANCj4gbmVlZCB0
byBiZSB2ZXJpZmllZCBtYW51YWxseS4NCj4gSWYgeW91IHRoaW5rIHRoZSByZXBvcnRlZCBjaGFu
Z2VzIGhhdmUgbm90aGluZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2VzIA0KPiBpbnRyb2R1Y2VkIGlu
IFBhdGNod29ya18xOTQ0NywgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1ZyB0ZWFtIHRvIGFsbG93IA0K
PiB0aGVtIHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1
Y2UgZmFsc2UgcG9zaXRpdmVzIGluIENJLg0KPiBFeHRlcm5hbCBVUkw6IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS0NCj4gdGlwL1BhdGNod29ya18xOTQ0Ny9pbmRleC5odG1s
DQo+IFBvc3NpYmxlIG5ldyBpc3N1ZXMNCj4gSGVyZSBhcmUgdGhlIHVua25vd24gY2hhbmdlcyB0
aGF0IG1heSBoYXZlIGJlZW4gaW50cm9kdWNlZCBpbg0KPiBQYXRjaHdvcmtfMTk0NDc6DQo+IElH
VCBjaGFuZ2VzDQo+IFBvc3NpYmxlIHJlZ3Jlc3Npb25zDQo+IOKAoiBpZ3RAaTkxNV9zZWxmdGVz
dEBsaXZlQGd0X2xyYzoNCj4gbyBmaS1ic3ctbjMwNTA6IA0KPiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV85NjY2L2ZpLQ0KPiBic3ctbjMwNTAvaWd0QGk5
MTVfc2VsZnRlc3RAbGl2ZUBndF9scmMuaHRtbCAtPiBodHRwczovL2ludGVsLWdmeC0NCj4gY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTk0NDcvZmktYnN3LQ0KPiBuMzA1MC9pZ3RA
aTkxNV9zZWxmdGVzdEBsaXZlQGd0X2xyYy5odG1sDQo+IEtub3duIGlzc3Vlcw0KPiBIZXJlIGFy
ZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtfMTk0NDcgdGhhdCBjb21lIGZyb20ga25v
d24NCj4gaXNzdWVzOg0KPiBJR1QgY2hhbmdlcw0KPiBJc3N1ZXMgaGl0DQo+IOKAoiBpZ3RAZ2Vt
X21tYXBfZ3R0QGJhc2ljOg0KPiBvIGZpLXRnbC15OiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fOTY2Ni9maS10Z2wtDQo+IHkvaWd0QGdlbV9tbWFw
X2d0dEBiYXNpYy5odG1sIC0+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS0N
Cj4gdGlwL1BhdGNod29ya18xOTQ0Ny9maS10Z2wteS9pZ3RAZ2VtX21tYXBfZ3R0QGJhc2ljLmh0
bWwNCj4gKGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzQw
MikgKzIgc2ltaWxhciANCj4gaXNzdWVzIOKAog0KPiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGh1
Z2VwYWdlczoNCj4gbyBmaS1ic3ctbjMwNTA6IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV85NjY2L2ZpLQ0KPiBic3ctbjMwNTAvaWd0QGk5MTVfc2Vs
ZnRlc3RAbGl2ZUBodWdlcGFnZXMuaHRtbCAtPiBodHRwczovL2ludGVsLWdmeC0NCj4gY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTk0NDcvZmktYnN3LQ0KPiBuMzA1MC9pZ3RAaTkx
NV9zZWxmdGVzdEBsaXZlQGh1Z2VwYWdlcy5odG1sDQo+IChodHRwczovL2J1Z3MuZnJlZWRlc2t0
b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDkyNzEpICsyMCBzaW1pbGFyIA0KPiBpc3N1ZXMg4oCi
IGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAcmluZ19zdWJtaXNzaW9uOg0KPiBvIGZpLWJzdy1uMzA1
MDogTk9UUlVOIC0+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS0NCj4gdGlw
L1BhdGNod29ya18xOTQ0Ny9maS1ic3ctDQo+IG4zMDUwL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVA
cmluZ19zdWJtaXNzaW9uLmh0bWwNCj4gKGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hv
d19idWcuY2dpP2lkPTEwOTI3MSkgKzIgc2ltaWxhciANCj4gaXNzdWVzIOKAoiBpZ3RAa21zX2No
YW1lbGl1bUBkcC1jcmMtZmFzdDoNCj4gbyBmaS1rYmwtNzUwMHU6IA0KPiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV85NjY2L2ZpLQ0KPiBrYmwtNzUwMHUv
aWd0QGttc19jaGFtZWxpdW1AZHAtY3JjLWZhc3QuaHRtbCAtPiBodHRwczovL2ludGVsLWdmeC0N
Cj4gY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTk0NDcvZmkta2JsLQ0KPiA3NTAw
dS9pZ3RAa21zX2NoYW1lbGl1bUBkcC1jcmMtZmFzdC5odG1sDQo+IChodHRwczovL2dpdGxhYi5m
cmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy8xMTYxIC8NCj4gaHR0cHM6Ly9naXRsYWIu
ZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvMjYyKQ0KPiBQb3NzaWJsZSBmaXhlcw0K
PiDigKIgaWd0QGdlbV90aWxlZF9ibGl0c0BiYXNpYzoNCj4gbyBmaS10Z2wteTogDQo+IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzk2NjYvZmktdGdsLQ0K
PiB5L2lndEBnZW1fdGlsZWRfYmxpdHNAYmFzaWMuaHRtbA0KPiAoaHR0cHM6Ly9naXRsYWIuZnJl
ZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvNDAyKSAtPiANCj4gaHR0cHM6Ly9pbnRlbC1n
ZngtDQo+IGNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE5NDQ3L2ZpLXRnbC0NCj4g
eS9pZ3RAZ2VtX3RpbGVkX2JsaXRzQGJhc2ljLmh0bWwgKzEgc2ltaWxhciBpc3N1ZSBXYXJuaW5n
cyDigKINCj4gaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBleGVjbGlzdHM6DQo+IG8gZmktYnN3LW4z
MDUwOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
OTY2Ni9maS0NCj4gYnN3LW4zMDUwL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAZXhlY2xpc3RzLmh0
bWwNCj4gKGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzI5
NDApIC0+IA0KPiBodHRwczovL2ludGVsLWdmeC0NCj4gY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTk0NDcvZmktYnN3LQ0KPiBuMzA1MC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGV4
ZWNsaXN0cy5odG1sDQo+IChodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNn
aT9pZD0xMDkyNzEpDQo+IFBhcnRpY2lwYXRpbmcgaG9zdHMgKDQxIC0+IDM3KQ0KPiBNaXNzaW5n
ICg0KTogZmktaWxrLW01NDAgZmktYnN3LWN5YW4gZmktYmR3LXNhbXVzIGZpLWhzdy00MjAwdSBC
dWlsZCANCj4gY2hhbmdlcyDigKIgTGludXg6IENJX0RSTV85NjY2IC0+IFBhdGNod29ya18xOTQ0
Nw0KPiBDSS0yMDE5MDUyOTogMjAxOTA1MjkNCj4gQ0lfRFJNXzk2NjY6IDljY2JjNjUzYmYyOTQ4
ZDFmN2U5ZmYzMDBkZDc2NzliODg4ZmZhMjUgQCANCj4gZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3Rv
cC5vcmcvZ2Z4LWNpL2xpbnV4DQo+IElHVF81OTYyOiAyMmUzZGFhZWQ4MmFiNzg5MDAxOGEyZjJh
YWJmNTA4MmNkNTM2MDIzIEAgDQo+IGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3hvcmcv
YXBwL2ludGVsLWdwdS10b29scw0KPiBQYXRjaHdvcmtfMTk0NDc6IDY5ZDdkYjAwM2ZhNDA2ZGY3
ODUxYWIwODIzOWRkNDA5YTc4ZjQ0MjEgQCANCj4gZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5v
cmcvZ2Z4LWNpL2xpbnV4DQo+ID09IExpbnV4IGNvbW1pdHMgPT0NCj4gNjlkN2RiMDAzZmE0IGRy
bS9pOTE1L2hkY3A6IERpc2FibGUgdGhlIFFTRVMgY2hlY2sgZm9yIEhEQ1AgMS40IG92ZXIgDQo+
IE1TVA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
