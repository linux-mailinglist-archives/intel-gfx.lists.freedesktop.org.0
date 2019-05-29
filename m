Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A53B2D5B1
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 08:48:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C91B789AAD;
	Wed, 29 May 2019 06:48:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58AE689AAD
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2019 06:48:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 May 2019 23:48:11 -0700
X-ExtLoop1: 1
Received: from irsmsx108.ger.corp.intel.com ([163.33.3.3])
 by orsmga003.jf.intel.com with ESMTP; 28 May 2019 23:48:10 -0700
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.166]) by
 IRSMSX108.ger.corp.intel.com ([169.254.11.19]) with mapi id 14.03.0415.000;
 Wed, 29 May 2019 07:48:10 +0100
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "Summers, Stuart" <stuart.summers@intel.com>, "Navare, Manasi D"
 <manasi.d.navare@intel.com>
Thread-Topic: [Intel-gfx] [CI 0/5] Refactor to expand subslice mask
Thread-Index: AQHVEkcc78brkmR+L02a9bbTgxfSVqaA0h0AgAAAKACAAN3fYA==
Date: Wed, 29 May 2019 06:48:08 +0000
Message-ID: <43D4F724E12AB6478FC1572B3FBE89D076707E67@IRSMSX106.ger.corp.intel.com>
References: <20190524154022.13575-1-stuart.summers@intel.com>
 <20190528183234.GA10989@intel.com>
 <ef092fee011695c74d03e0ea42701f03e240c9a3.camel@intel.com>
In-Reply-To: <ef092fee011695c74d03e0ea42701f03e240c9a3.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNGMwNmIxNmMtMzIwMS00MGI4LTg5NDQtYjRiODkyODM5ZTAwIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiOTdGYkFIZlV5ZEJqOFBOS1lFSWFmMWVkR0hlTnBXNWlaMmVuMlkyc3ozenpYWWF6QitBSlo3T3NRWGVrRys5NiJ9
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [CI 0/5] Refactor to expand subslice mask
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

SGksIA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLWdmeCBb
bWFpbHRvOmludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZ10gT24gQmVoYWxm
IE9mDQo+IFN1bW1lcnMsIFN0dWFydA0KPiBTZW50OiB0aWlzdGFpIDI4LiB0b3Vrb2t1dXRhIDIw
MTkgMjEuMzMNCj4gVG86IE5hdmFyZSwgTWFuYXNpIEQgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5j
b20+DQo+IENjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJl
OiBbSW50ZWwtZ2Z4XSBbQ0kgMC81XSBSZWZhY3RvciB0byBleHBhbmQgc3Vic2xpY2UgbWFzaw0K
PiANCj4gT24gVHVlLCAyMDE5LTA1LTI4IGF0IDExOjMyIC0wNzAwLCBNYW5hc2kgTmF2YXJlIHdy
b3RlOg0KPiA+IFB1c2hlZCB0byBkaW5xLCB0aGFua3MgZm9yIHRoZSBwYXRjaGVzIGFuZCB0aGUg
cmV2aWV3cyENCj4gDQo+IFRoYW5rcyBmb3IgdGhlIHB1c2ggTWFuYXNpIGFuZCB0aGUgcmV2aWV3
cyBEYW5pZWxlIGFuZCBvdGhlcnMhDQpUaGlzIGJyb2tlIGFsbCB0aGUgSUNMIHN5c3RlbXMgYmVj
YXVzZSBDSSBkYXRhIHdhcyBub3QgbG9va2VkIHRoYXQgdGhleSBkaWQgbm90IGFjdHVhbGx5IGV2
ZW4gYm9vdCBhdCBhbGwuDQpBbGwgSUNMJ3MgaW4gQkFUIGFuZCB3aG9sZSBJQ0wgc2hhcmRzLiAN
Cg0KDQo+IA0KPiAtU3R1YXJ0DQo+IA0KPiA+DQo+ID4gUmVnYXJkcw0KPiA+IE1hbmFzaQ0KPiA+
DQo+ID4gT24gRnJpLCBNYXkgMjQsIDIwMTkgYXQgMDg6NDA6MTdBTSAtMDcwMCwgU3R1YXJ0IFN1
bW1lcnMgd3JvdGU6DQo+ID4gPiBUaGlzIHBhdGNoIHNlcmllcyBjb250YWlucyBhIGZldyBjb2Rl
IGNsZWFuLXVwIHBhdGNoZXMsIGZvbGxvd2VkIGJ5DQo+ID4gPiBhIHBhdGNoIHdoaWNoIGNoYW5n
ZXMgdGhlIHN0b3JhZ2Ugb2YgdGhlIHN1YnNsaWNlIG1hc2sgdG8gYmV0dGVyDQo+ID4gPiBtYXRj
aCB0aGUgdXNlcnNwYWNlIGFjY2VzcyB0aHJvdWdoIHRoZSBJOTE1X1FVRVJZX1RPUE9MT0dZX0lO
Rk8NCj4gPiA+IGlvY3RsLiBUaGUgaW5kZXggaW50byB0aGUgc3Vic2xpY2VfbWFzayBhcnJheSBp
cyB0aGVuIGNhbGN1bGF0ZWQ6DQo+ID4gPiAgIHNsaWNlICogc3Vic2xpY2Ugc3RyaWRlICsgc3Vi
c2xpY2UgaW5kZXggLyA4DQo+ID4gPg0KPiA+ID4gdjI6IGZpeCBpOTE1X3BtX3NzZXUgdGVzdCBm
YWlsdXJlDQo+ID4gPiB2Mzogbm8gY2hhbmdlcyB0byBwYXRjaGVzIGluIHRoZSBzZXJpZXMsIGp1
c3QgcmVzZW5kaW5nIHRvIHBpY2sgdXANCj4gPiA+ICAgICBpbiBDSSBjb3JyZWN0bHkNCj4gPiA+
IHY0OiByZWJhc2UNCj4gPiA+IHY1OiBmaXggaGVhZGVyIHRlc3QNCj4gPiA+IHY2OiBhZGRyZXNz
IHJldmlldyBjb21tZW50cyBmcm9tIEphcmkNCj4gPiA+ICAgICBhZGRyZXNzIG1pbm9yIGNoZWNr
cGF0Y2ggd2FybmluZyBpbiBleGlzdGluZyBjb2RlDQo+ID4gPiAgICAgdXNlIGV1X3N0cmlkZSBm
b3IgRVUgZGl2LWJ5LTgNCj4gPiA+IHY3OiBhbm90aGVyIHJlYmFzZQ0KPiA+ID4gdjg6IGFkZHJl
c3MgcmV2aWV3IGNvbW1lbnRzIGZyb20gVHZydGtvIGFuZCBEYW5pZWxlDQo+ID4gPiB2OTogYWRk
cmVzcyByZXZpZXcgY29tbWVudHMgZnJvbSBEYW5pZWxlDQo+ID4gPiB2MTA6IGFkZCByZXZpZXdl
ZC1ieSBvbiBsYXN0IHBhdGNoIHdpdGggbWlub3Igc3VnZ2VzdGVkIGNoYW5nZSwNCj4gPiA+ICAg
ICAgcmViYXNlLCBhbmQgcmVwb3N0IGZvciBDSQ0KPiA+ID4NCj4gPiA+IFN0dWFydCBTdW1tZXJz
ICg1KToNCj4gPiA+ICAgZHJtL2k5MTU6IFVzZSBsb2NhbCB2YXJpYWJsZSBmb3IgU1NFVSBpbmZv
IGluIEdFVFBBUkFNIGlvY3RsDQo+ID4gPiAgIGRybS9pOTE1OiBBZGQgbWFjcm8gZm9yIFNTRVUg
c3RyaWRlIGNhbGN1bGF0aW9uDQo+ID4gPiAgIGRybS9pOTE1OiBNb3ZlIGNhbGN1bGF0aW9uIG9m
IHN1YnNsaWNlcyBwZXIgc2xpY2UgdG8gbmV3IGZ1bmN0aW9uDQo+ID4gPiAgIGRybS9pOTE1OiBS
ZWZhY3RvciBzc2V1IGhlbHBlciBmdW5jdGlvbnMNCj4gPiA+ICAgZHJtL2k5MTU6IEV4cGFuZCBz
dWJzbGljZSBtYXNrDQo+ID4gPg0KPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2VuZ2luZV9jcy5jICAgIHwgIDI0ICsrLQ0KPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2VuZ2luZV90eXBlcy5oIHwgIDMwICsrLS0NCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9oYW5nY2hlY2suYyAgICB8ICAgMyArLQ0KPiA+ID4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX3NzZXUuYyAgICAgICAgIHwgIDYyICsrKysrKysNCj4gPiA+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1LmggICAgICAgICB8ICAzNSArKystDQo+
ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyAgfCAgIDIg
Ky0NCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyAgICAgICAgICB8
ICA0NiArKy0tLQ0KPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgICAgICAg
ICAgICAgIHwgIDE1ICstDQo+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJy
b3IuYyAgICAgICAgfCAgIDUgKy0NCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3F1
ZXJ5LmMgICAgICAgICAgICB8ICAxNSArLQ0KPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2RldmljZV9pbmZvLmMgICAgIHwgMTc2ICsrKysrKysrKysrLS0NCj4gPiA+IC0tLS0tLQ0K
PiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmggICAgIHwgIDQ3
IC0tLS0tDQo+ID4gPiAgMTIgZmlsZXMgY2hhbmdlZCwgMjgwIGluc2VydGlvbnMoKyksIDE4MCBk
ZWxldGlvbnMoLSkNCj4gPiA+DQo+ID4gPiAtLQ0KPiA+ID4gMi4yMS4wLjUuZ2FlYjU4MmE5ODMN
Cj4gPiA+DQo+ID4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXw0KPiA+ID4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdA0KPiA+ID4gSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZw0KPiA+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
