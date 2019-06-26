Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5259357233
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 22:05:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA2566E501;
	Wed, 26 Jun 2019 20:05:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D7486E501
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 20:05:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jun 2019 13:05:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,421,1557212400"; d="scan'208";a="313537482"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga004.jf.intel.com with ESMTP; 26 Jun 2019 13:05:28 -0700
Received: from fmsmsx156.amr.corp.intel.com (10.18.116.74) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 26 Jun 2019 13:05:28 -0700
Received: from fmsmsx120.amr.corp.intel.com ([169.254.15.12]) by
 fmsmsx156.amr.corp.intel.com ([169.254.13.19]) with mapi id 14.03.0439.000;
 Wed, 26 Jun 2019 13:05:27 -0700
From: "Bloomfield, Jon" <jon.bloomfield@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, "Ceraolo Spurio, Daniele"
 <daniele.ceraolospurio@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>, "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/ehl: Add missing VECS engine
Thread-Index: AQHVIvl1QAzdc1tLqUSLYEsIS5oIJaacLVmAgBDW2wCAAGq8gIAAfoQAgAB+keA=
Date: Wed, 26 Jun 2019 20:05:27 +0000
Message-ID: <AD48BB7FB99B174FBCC69E228F58B3B68B365FC5@fmsmsx120.amr.corp.intel.com>
References: <20190614213749.15870-1-jose.souza@intel.com>
 <20190614221739.GF32200@mdroper-desk.amr.corp.intel.com>
 <20190625152648.GF24125@mdroper-desk.amr.corp.intel.com>
 <1acd81a6-e891-01e8-dcfe-e6912670bdbb@intel.com>
 <6f3e0d6b-cff1-6ba2-c7b6-4afe36bbbc66@linux.intel.com>
In-Reply-To: <6f3e0d6b-cff1-6ba2-c7b6-4afe36bbbc66@linux.intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYTlhODFkNDgtN2Y3Zi00ZmFlLTkzYjItODU3OTZlZTM0ODJkIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoibWJvbTAxOFNYazNCSnR4YUQyTWNvaWlsSStYZkd0S3pDaCtnemJ4aDd0RXhTVjJBTkhKbHMwaG4wM1c4d3FrdCJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.1.200.106]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Add missing VECS engine
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFR2cnRrbw0KPiBV
cnN1bGluDQo+IFNlbnQ6IFR1ZXNkYXksIEp1bmUgMjUsIDIwMTkgMTA6MjIgUE0NCj4gVG86IENl
cmFvbG8gU3B1cmlvLCBEYW5pZWxlIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPjsg
Um9wZXIsDQo+IE1hdHRoZXcgRCA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT47IFNvdXphLCBK
b3NlIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcNCj4gU3ViamVjdDogUmU6IFtJbnRlbC1nZnhdIFtQQVRDSF0gZHJtL2k5MTUvZWhs
OiBBZGQgbWlzc2luZyBWRUNTIGVuZ2luZQ0KPiANCj4gDQo+IE9uIDI1LzA2LzIwMTkgMjI6NDgs
IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gd3JvdGU6DQo+ID4gT24gNi8yNS8xOSA4OjI2IEFNLCBN
YXR0IFJvcGVyIHdyb3RlOg0KPiA+PiBPbiBGcmksIEp1biAxNCwgMjAxOSBhdCAwMzoxNzozOVBN
IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiA+Pj4gT24gRnJpLCBKdW4gMTQsIDIwMTkgYXQg
MDI6Mzc6NDlQTSAtMDcwMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3cm90ZToNCj4gPj4+PiBF
SEwgY2FuIGhhdmUgdXAgdG8gb25lIFZFQ1ModmlkZW8gZW5oYW5jZW1lbnQpIGVuZ2luZSwgc28g
YWRkIGl0IHRvDQo+ID4+Pj4gdGhlIGRldmljZV9pbmZvLg0KPiA+Pj4NCj4gPj4+IEJzcGVjIDI5
MTUwIGhhcyBhIGZvb3Rub3RlIG9uIFZFYm94IHRoYXQgaW5kaWNhdGVzICJQYXNzLXRocm91Z2gg
b25seSwNCj4gPj4+IG5vIFZFYm94IHByb2Nlc3NpbmcgbG9naWMuIsKgIFRoYXQgbm90ZSBzZWVt
cyBhIGJpdCB2YWd1ZSwgYnV0IEkgdGhpbmsgSQ0KPiA+Pj4gc2F3IHNvbWUgbW9yZSBkZXRhaWxl
ZCBpbmZvIGluIHRoZSBwYXN0IHNvbWV3aGVyZSB0aGF0IGluZGljYXRlZCB0aGUNCj4gPj4+IFZF
Q1MgY29tbWFuZCBzdHJlYW1lciBpcyBzdGlsbCB0ZWNobmljYWxseSBwcmVzZW50IGJ1dCBkb2Vz
bid0IGFjdHVhbGx5DQo+ID4+PiBkbyBhbnkgdmlkZW8gZW5oYW5jZW1lbnQgb24gRUhMOyBpdCBq
dXN0IHBhc3NlcyBjb250ZW50IHRocm91Z2ggdG8gU0ZDLg0KPiA+Pj4NCj4gPj4+IEknbSBub3Qg
dGVycmlibHkgcGx1Z2dlZCBpbnRvIHRoZSBtZWRpYSBzaWRlIG9mIHRoZSB3b3JsZCwgc28gSSdt
IG5vdA0KPiA+Pj4gc3VyZSBpZiB3ZSB3YW50IHRvIGV4cG9zZSBWRUNTIHRvIHVzZXJzcGFjZSBp
ZiBpdCdzIGJhc2ljYWxseSBhIG5vb3AgYW5kDQo+ID4+PiBkb2Vzbid0IGRvIHdoYXQgaXQgbm9y
bWFsbHkgZG9lcyBvbiBvdGhlciBwbGF0Zm9ybXMuwqAgQnNwZWMgcGFnZSA1MjI5DQo+ID4+PiBp
bXBsaWVzIHRoYXQgU0ZDIGNhbiBiZSBmZWQgZGlyZWN0bHkgYnkgdGhlIGRlY29kZSBlbmdpbmUg
d2l0aG91dCBnb2luZw0KPiA+Pj4gdGhyb3VnaCBWRUJPWCwgc28gSSdtIG5vdCBzdXJlIGlmIG1l
ZGlhIHVzZXJzcGFjZSB3b3VsZCBldmVyIGhhdmUgYSB1c2UNCj4gPj4+IGZvciB0aGUgcGFzc3Ro
cm91Z2gtb25seSBWRUNTIHN0cmVhbWVyLg0KPiA+Pj4NCj4gPj4+IFdlIHNob3VsZCBwcm9iYWJs
eSBhc2sgc29tZW9uZSBvbiB0aGUgbWVkaWEgdGVhbSB3aGF0IHRoZWlyIHRob3VnaHRzDQo+IGFy
ZQ0KPiA+Pj4gb24gdGhpcy4NCj4gPj4NCj4gPj4gU2luY2UgdGhlIG1lZGlhIHRlYW0gY29uZmly
bWVkIHRoYXQgdGhlcmUgaXMgaW5kZWVkIGEgdXNlIGNhc2UgZm9yIGENCj4gPj4gcGFzc3Rocm91
Z2gtb25seSBWRUNTLA0KPiA+Pg0KPiA+PiBSZXZpZXdlZC1ieTogTWF0dCBSb3BlciA8bWF0dGhl
dy5kLnJvcGVyQGludGVsLmNvbT4NCj4gPj4NCj4gPg0KPiA+IEEgYml0IGxhdGUgZm9yIGEgcXVl
c3Rpb24sIGJ1dCBob3cgZG9lcyB1c2Vyc3BhY2Uga25vdyB0aGF0IHRoaXMgaXMganVzdA0KPiA+
IGEgcGFzcy10aHJvdWdoIFZFQ1M/IEFyZSB3ZSBleHBlY3RpbmcgdGhlbSB0byBzd2l0Y2ggYmFz
ZWQgb24gcGxhdGZvcm0NCj4gPiBpbnN0ZWFkIG9mIGp1c3QgdXNpbmcgdGhlIGtlcm5lbCBBUEk/
IElNTyBpdCdkIGJlIGJldHRlciB0byBoaWRlIHRoZQ0KPiA+IGVuZ2luZSBpbiB0aGUgcXVlcnkg
aW9jdGwgYnkgZGVmYXVsdCBhbmQgb25seSBzaG93IGl0IGlmIHVzZXJzcGFjZQ0KPiA+IHBhc3Nl
cyBhbiBhcHByb3ByaWF0ZSBmbGFnLCBvdGhlcndpc2UgbGVnYWN5IGFwcHMgY291bGQgdHJ5IHRv
IHN1Ym1pdA0KPiA+IFZFQ1Mtc3BlY2lmaWMgY29tbWFuZHMgdG8gdGhlIGVuZ2luZS4NCj4gDQo+
IEkgaGF2ZSBhIHBhdGNoIHdoaWNoIHdvdWxkIGVuYWJsZSB0aGlzLCBndWVzcyBpdCdzIHRpbWUg
dG8gc2VuZCBpdC4uDQo+IA0KPiBJZiB3ZSBnbyB0aGlzIHJvdXRlIChoaWRlIHRoZSBlbmdpbmUg
YnkgZGVmYXVsdCksIHRoaXMgcGF0Y2ggd291bGQgbmVlZA0KPiB0byBhZGQgYSBuZXcgY2FwYWJp
bGl0eSBmbGFnLiBCdXQgd2hhdCB0byBjYWxsIGl0Pw0KPiBJOTE1X1ZJREVPX0VOSEFOQ0VfQ0xB
U1NfUEFTU1RIUk9VR0g/DQoNCkkgZG9uJ3QgZ2V0IHRoZSBsZWdhY3kgdXNlcnNwYWNlIHByb2Js
ZW0uIEl0J3Mgbm90IHJlYWxpc3RpYyB0byBleHBlY3QgdXNlcnNwYWNlIHRvICdqdXN0IHdvcmsn
IG9uIG5ldyBwbGF0Zm9ybXMuIEluc3RydWN0aW9ucyBhcmUgYWRkZWQgYW5kIHJlbW92ZWQgYXQg
ZWFjaCBuZXcgZ2VuLCBhbmQgdW1kIG5lZWRzIHRvIGtub3cgdGhhdC4gVGhlIGNhcGFiaWxpdGll
cyB3ZXJlIG5vdCByZWFsbHkgZGVzaWduZWQgdG8gaW5zdWxhdGUgdGhlIHVtZCdzIGZyb20gbWFr
aW5nIGRldmljZSBzcGVjaWZpYyBkZWNpc2lvbnMuIElmIHVtZCBjYW4gZWFzaWx5IGRlZHVjZSBh
IGNhcGFiaWxpdHkgZnJvbSB0aGUgZGV2aWNlLWlkLCBpdCBzaG91bGQgYmUgZG9pbmcgc28uDQoN
ClRoZSBjYXBhYmlsaXRpZXMgd2lsbCBiZWNvbWUgdW53aWVsZHkgdmVyeSBxdWlja2x5IGlmIHdl
IHN0YXJ0IHBva2luZyBpbiBuZXcgb25lcyBmb3IgZXZlcnkgY2hhbmdlIGluIGhhcmR3YXJlIHNo
YXBlLiBDYXBzIHNob3VsZCBiZSBsaW1pdGVkIHRvIHRoaW5ncyB0aGF0IGNhbm5vdCBiZSBlYXNp
bHkgZGVkdWNlZCwgb3IgdGhhdCBjYW4gYmUgZGlmZmVyZW50IG9uIGRpZmZlcmVudCBTS1UncyBv
ZiB0aGUgc2FtZSBkZXZpY2UgKGUuZy4gZnVzaW5nKS4NCg0KVGhlIFNGQyBjYXAgaXMgbmVlZGVk
IGJlY2F1c2Ugd2UgZG9uJ3QgZXhwb3NlIGV4cGxpY2l0IGVuZ2luZSBudW1iZXJzIHRvIHVzZXJz
cGFjZSwgc28gaXQgaGFzIG5vIGVhc3kgd2F5IHRvIGRldGVybWluZSB3aGljaCBWREJveCdzIGhh
dmUgU0ZDIGFuZCB3aGljaCBkbyBub3QuIEhlcmUsIHdlJ3JlIHRhbGtpbmcgYWJvdXQgYW4gZWFz
aWx5IGRlZHVjaWJsZSBmZWF0dXJlLg0KDQo+IA0KPiBSZWdhcmRzLA0KPiANCj4gVHZydGtvDQo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IEludGVs
LWdmeCBtYWlsaW5nIGxpc3QNCj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
