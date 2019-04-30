Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3BAEE57
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 03:25:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 821F389358;
	Tue, 30 Apr 2019 01:25:15 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E1EC89358
 for <Intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 01:25:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Apr 2019 18:25:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,411,1549958400"; d="scan'208";a="341958771"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga005.fm.intel.com with ESMTP; 29 Apr 2019 18:25:13 -0700
Received: from fmsmsx152.amr.corp.intel.com (10.18.125.5) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Mon, 29 Apr 2019 18:25:13 -0700
Received: from shsmsx101.ccr.corp.intel.com (10.239.4.153) by
 FMSMSX152.amr.corp.intel.com (10.18.125.5) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Mon, 29 Apr 2019 18:25:13 -0700
Received: from shsmsx104.ccr.corp.intel.com ([169.254.5.33]) by
 SHSMSX101.ccr.corp.intel.com ([169.254.1.129]) with mapi id 14.03.0415.000;
 Tue, 30 Apr 2019 09:25:10 +0800
From: "Li, Xiaogang" <xiaogang.li@intel.com>
To: Anuj Phogat <anuj.phogat@gmail.com>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915/icl: Whitelist
 GEN9_SLICE_COMMON_ECO_CHICKEN1
Thread-Index: AQHU9c5y61QHotu9CkaoskHqnctYpKZNnkUAgAAFBICAAI2KAIAD/l4AgAC9qgCAAQ52oA==
Date: Tue, 30 Apr 2019 01:25:10 +0000
Message-ID: <FA77FB7EDEB59746A3005AB0E91C2CBC3CD1EE43@SHSMSX104.ccr.corp.intel.com>
References: <20190415114307.1356-1-tvrtko.ursulin@linux.intel.com>
 <20190418100634.984-1-tvrtko.ursulin@linux.intel.com>
 <e1cd2a87-02ac-78d8-ea03-f92bd0ac5f06@intel.com>
 <155626751547.18613.8543320833419448551@jlahtine-desk.ger.corp.intel.com>
 <89f0b59e-29e3-1259-2549-f2daa0b4c00c@intel.com>
 <836034a4-4060-9f40-3a63-729e7b1d4a72@linux.intel.com>
 <CAP5d04F8Wi6zwjnSFS6nLer92bxjE0kCtUcgs3rzrt9JR=d_xQ@mail.gmail.com>
In-Reply-To: <CAP5d04F8Wi6zwjnSFS6nLer92bxjE0kCtUcgs3rzrt9JR=d_xQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMWVjODY0OTEtNmVlOC00Yjg1LWFiMWQtMzU3MWQ0YWYzZGQ4IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoid2ZOQVRrNDRPNkxPVUgzY0Y5cGNPTTdWU2tnS283TEllMWt2RWt5MkxNTXBwbURDb2tcL01pSythc2x4K3NzaWkifQ==
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/icl: Whitelist
 GEN9_SLICE_COMMON_ECO_CHICKEN1
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
Cc: Intel GFX <Intel-gfx@lists.freedesktop.org>, "Phogat,
 Anuj" <anuj.phogat@intel.com>, "Ma, Kevin" <kevin.ma@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U28gd2UgY2FuIGNoZWNrIGluIHRoaXMgcGF0Y2ggcmlnaHQgbm93LCByaWdodD8NCg0KLS0tLS1P
cmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEFudWogUGhvZ2F0IFttYWlsdG86YW51ai5waG9n
YXRAZ21haWwuY29tXSANClNlbnQ6IFR1ZXNkYXksIEFwcmlsIDMwLCAyMDE5IDE6MTcgQU0NClRv
OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AbGludXguaW50ZWwuY29tPg0KQ2M6IFBo
b2dhdCwgQW51aiA8YW51ai5waG9nYXRAaW50ZWwuY29tPjsgSm9vbmFzIExhaHRpbmVuIDxqb29u
YXMubGFodGluZW5AbGludXguaW50ZWwuY29tPjsgSW50ZWwgR0ZYIDxJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnPjsgTGFuZHdlcmxpbiwgTGlvbmVsIEcgPGxpb25lbC5nLmxhbmR3ZXJs
aW5AaW50ZWwuY29tPjsgTWEsIEtldmluIDxrZXZpbi5tYUBpbnRlbC5jb20+OyBMaSwgWGlhb2dh
bmcgPHhpYW9nYW5nLmxpQGludGVsLmNvbT4NClN1YmplY3Q6IFJlOiBbSW50ZWwtZ2Z4XSBbUEFU
Q0ggdjJdIGRybS9pOTE1L2ljbDogV2hpdGVsaXN0IEdFTjlfU0xJQ0VfQ09NTU9OX0VDT19DSElD
S0VOMQ0KDQpPbiBTdW4sIEFwciAyOCwgMjAxOSBhdCAxMDo1NyBQTSBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AbGludXguaW50ZWwuY29tPiB3cm90ZToNCj4NCj4NCj4gT24gMjYvMDQv
MjAxOSAxNzo1OCwgQW51aiBQaG9nYXQgd3JvdGU6DQo+ID4NCj4gPiBKb29uYXMsDQo+ID4NCj4g
PiBNZXNhIG5vdyBhcHBsaWVzIHRoaXMgV0Egb24gSUNMIGFuZCB3ZSdyZSBub3Qgc2VlaW5nIGFu
eSByZWdyZXNzaW9ucyBpbiBDSS4NCj4gPiBJIHRlc3RlZCBNZXNhIHdpdGggYW5kIHdpdGhvdXQg
dGhpcyBwYXRjaCBhcHBsaWVkIHRvIGtlcm5lbC4gSSBkb24ndCANCj4gPiBzZWUgYW55IHBlcmZv
cm1hbmNlIGltcGFjdCB0byBNYW5oYXR0YW4gZnJvbSBHZnhCZW5jaDUuIEknbSBsaXR0bGUgDQo+
ID4gc3VycHJpc2VkIHRvIHNlZSBpdCdzIG5vdCByZWFsbHkgaGVscGluZyBiZW5jaG1hcmsgcGVy
Zm9ybWFuY2UgaW4gDQo+ID4gTWVzYS4gSSdsbCBkaWcgYml0IG1vcmUgdG8gZmlndXJlIG91dCBh
IHBvc3NpYmxlIGV4cGxhbmF0aW9uLiBJIA0KPiA+IGhhdmVuJ3QgdHJpZWQgYW55IG90aGVyIGJl
bmNobWFya3Mgd2l0aCB0aGlzIHBhdGNoLg0KPg0KPiBJIHRoaW5rIHRoZSBjb25jZXJuIHdhcywg
aWYgdXNlciBpcyBydW5uaW5nIG9sZCBNZXNhIChubyBXQSkgb24gbmV3IA0KPiBrZXJuZWwgKG5v
IFdBKSB0aGVyZSB3b3VsZG4ndCBiZSBhbnkgR1BVIGhhbmdzLCBqdXN0IHRoZW9yZXRpY2FsICh5
ZXQNCj4gdW5tZWFzdXJlZCkgcGVyZiBkcm9wPw0KPg0KSSBhbHNvIHRlc3RlZCBNYW5oYXR0YW4g
d2l0aCBNZXNhIChubyBXQSkgYW5kIEtlcm5lbCAobm8gV0EpIGFuZCBkaWRuJ3Qgc2VlIGEgR1BV
IGhhbmcgb3IgYW55IHBlcmYgZHJvcC4gVGhlIG5vIGNoYW5nZSBpbiBwZXJmIG1pZ2h0IGJlIGR1
ZSB0byBjdXJyZW50bHkgdXNlZCBMMyBjb25maWd1cmF0aW9uIGluIE1lc2Egd2hpY2ggZG9lc24n
dCBhbGxvY2F0ZSBhbnl0aGluZyB0byAgQ1MgQ29tbWFuZCBidWZmZXIgc2VjdGlvbi4gTWVzYSBu
b3cgY2FycmllcyB0aGUgV0EgaW4gY2FzZSB3ZSBjaG9vc2UgdG8gdXNlIGEgZGlmZmVyZW50IEwz
IGNvbmZpZyBpbiBmdXR1cmUuDQoNCj4gUmVnYXJkcywNCj4NCj4gVHZydGtvDQo+DQo+ID4NCj4g
PiBUaGFua3MNCj4gPiBBbnVqDQo+ID4gT24gMDQvMjYvMjAxOSAwMTozMSBBTSwgSm9vbmFzIExh
aHRpbmVuIHdyb3RlOg0KPiA+PiArIEFudWoNCj4gPj4NCj4gPj4gUXVvdGluZyBMaW9uZWwgTGFu
ZHdlcmxpbiAoMjAxOS0wNC0yNiAxMToxMzo1OCkNCj4gPj4+IE9uIDE4LzA0LzIwMTkgMTg6MDYs
IFR2cnRrbyBVcnN1bGluIHdyb3RlOg0KPiA+Pj4+IEZyb206IFR2cnRrbyBVcnN1bGluIDx0dnJ0
a28udXJzdWxpbkBpbnRlbC5jb20+DQo+ID4+Pj4NCj4gPj4+PiBXYUVuYWJsZVN0YXRlQ2FjaGVS
ZWRpcmVjdFRvQ1MgY29udGV4dCB3b3JrYXJvdW5kIGNvbmZpZ3VyZXMgdGhlIA0KPiA+Pj4+IEwz
IGNhY2hlIHRvIGJlbmVmaXQgM2Qgd29ya2xvYWRzIGJ1dCBtZWRpYSBoYXMgZGlmZmVyZW50IA0K
PiA+Pj4+IHJlcXVpcmVtZW50cy4NCj4gPj4+Pg0KPiA+Pj4+IFJlbW92ZSB0aGUgd29ya2Fyb3Vu
ZCBhbmQgd2hpdGVsaXN0IHRoZSByZWdpc3RlciB0byBhbGxvdyBhbnkgDQo+ID4+Pj4gdXNlcnNw
YWNlIGNvbmZpZ3VyZSB0aGUgYmVoYXZpb3VyIHRvIHRoZWlyIGxpa2luZy4NCj4gPj4+Pg0KPiA+
Pj4+IHYyOg0KPiA+Pj4+ICAgICogUmVtb3ZlIHRoZSB3b3JrYXJvdW5kIGFwYXJ0IGZyb20gYWRk
aW5nIHRoZSB3aGl0ZWxpc3QuDQo+ID4+Pj4NCj4gPj4+PiBTaWduZWQtb2ZmLWJ5OiBUdnJ0a28g
VXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPg0KPiA+Pj4+IENjOiBMaW9uZWwgTGFu
ZHdlcmxpbiA8bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5jb20+DQo+ID4+Pj4gQ2M6IGtldmlu
Lm1hQGludGVsLmNvbQ0KPiA+Pj4+IENjOiB4aWFvZ2FuZy5saUBpbnRlbC5jb20NCj4gPj4+DQo+
ID4+PiBBY2tlZC1ieTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50
ZWwuY29tPg0KPiA+Pj4NCj4gPj4+DQo+ID4+PiBNZXNhIGNvbW1pdHMgOg0KPiA+Pj4NCj4gPj4+
IGNvbW1pdCBkYjViMzcyYmI5ZjVhMGRmZWE4NjYxOGY4Zjk4MzJmMjVkOWVhZjcxIChhbnYpDQo+
ID4+Pg0KPiA+Pj4gY29tbWl0IGVhYWRiNjJjOWVhOThmODQxZDdmZmMyNmMxNDM0MWFiZGY4NGQy
ZDYgKGk5NjUpDQo+ID4+Pg0KPiA+Pj4gY29tbWl0IGQxYmU2N2RiMzk0NjNiNDgzNjljYjcxOTc5
ZWQxODY2MmIyYzE1N2UgKGlyaXMpDQo+ID4+IENvdWxkIHNvbWVib2R5IGNvbmZpcm0gdGhhdCBh
cHBseWluZyB0aGlzIHBhdGNoIGRvZXMgbm90IGNhdXNlIA0KPiA+PiBoYW5ncyBpbiBvbGRlciBt
ZXNhLCBhbmQgdGhlIHBlcmZvcm1hbmNlIGRyb3AgKGlmIGFueSkgaXMgaW5zaWduaWZpY2FudD8N
Cj4gPj4NCj4gPj4gQmVzdCBSZWdhcmRzLA0KPiA+PiBKb29uYXMNCj4gPg0KPiA+DQo+ID4NCj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdA0KPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IGh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4DQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
