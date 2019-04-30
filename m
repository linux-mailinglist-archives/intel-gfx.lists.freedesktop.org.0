Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD79F38D
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 11:58:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6976589012;
	Tue, 30 Apr 2019 09:58:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 957FC89012
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 09:58:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 02:58:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,413,1549958400"; d="scan'208";a="166216271"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
 by fmsmga002.fm.intel.com with ESMTP; 30 Apr 2019 02:58:04 -0700
Received: from irsmsx112.ger.corp.intel.com (10.108.20.5) by
 IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Tue, 30 Apr 2019 10:58:03 +0100
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.235]) by
 irsmsx112.ger.corp.intel.com ([169.254.1.101]) with mapi id 14.03.0415.000;
 Tue, 30 Apr 2019 10:58:03 +0100
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915: Corrupt DSI picture fix for
 GeminiLake
Thread-Index: AQHU/x/mV3yHwGTb5EyxhWINc4+BYKZUQeSAgAAE0ACAADFQwA==
Date: Tue, 30 Apr 2019 09:58:02 +0000
Message-ID: <43D4F724E12AB6478FC1572B3FBE89D07668B5C6@IRSMSX106.ger.corp.intel.com>
References: <20190430064206.32443-1-stanislav.lisovskiy@intel.com>
 <8736m0rl8o.fsf@intel.com>
 <a563ef46c6cc28727999d2968423f7c6ba8a14ae.camel@intel.com>
In-Reply-To: <a563ef46c6cc28727999d2968423f7c6ba8a14ae.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMmZjZWNjYTktMzQyNS00OWUzLTg5NmMtMDgzYTk2ZDliMWE2IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiVmdWOEx0NE5JcGo4T0lGV2pkZGhuc2twWFhcL0xtSU9TdU9rVlcxYXhMa1ErS1BWa3I3MUY0STkrVFwvWlpkR01XIn0=
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Corrupt DSI picture fix for
 GeminiLake
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
Cc: "Peres, Martin" <martin.peres@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SEksIA0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBMaXNvdnNraXksIFN0
YW5pc2xhdg0KPiBTZW50OiB0aWlzdGFpIDMwLiBodWh0aWt1dXRhIDIwMTkgMTEuMDENCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGphbmkubmlrdWxhQGxpbnV4LmludGVs
LmNvbQ0KPiBDYzogU2FhcmluZW4sIEphbmkgPGphbmkuc2FhcmluZW5AaW50ZWwuY29tPjsgUGVy
ZXMsIE1hcnRpbg0KPiA8bWFydGluLnBlcmVzQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtJ
bnRlbC1nZnhdIFtQQVRDSCB2Ml0gZHJtL2k5MTU6IENvcnJ1cHQgRFNJIHBpY3R1cmUgZml4IGZv
ciBHZW1pbmlMYWtlDQo+IA0KPiBPbiBUdWUsIDIwMTktMDQtMzAgYXQgMTA6NDMgKzAzMDAsIEph
bmkgTmlrdWxhIHdyb3RlOg0KPiA+IE9uIFR1ZSwgMzAgQXByIDIwMTksIFN0YW5pc2xhdiBMaXNv
dnNraXkgPA0KPiA+IHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPiB3cm90ZToNCj4gPiA+
IEN1cnJlbnRseSBkdWUgdG8gcmVncmVzc2lvbiBDSSBtYWNoaW5lIGRpc3BsYXlzIHNob3cgY29y
cnVwdA0KPiA+ID4gcGljdHVyZS4NCj4gPiA+IFByb2JsZW0gaXMgd2hlbiBDRENMSyBpcyBhcyBs
b3cgYXMgNzkyMDAsIHBpY3R1cmUgZ2V0cyB1bnN0YWJsZSwNCj4gPiA+IHdoaWxlIERTSSBhbmQg
REUgcGxsIHZhbHVlcyB3ZXJlIGNvbmZpcm1lZCB0byBiZSBjb3JyZWN0Lg0KPiA+ID4gTGltaXRp
bmcgdG8gMTU4NDAwIGFzIGFncmVlZCB3aXRoIFZpbGxlLg0KPiA+ID4NCj4gPiA+IFdlIGNvdWxk
IG5vdCBjb21lIHVwIHdpdGggYW55IGJldHRlciBzb2x1dGlvbiB5ZXQsIGFzIFBMTCBkaXZpZGVy
DQo+ID4gPiB2YWx1ZXMgYm90aCBmb3IgTUlQSShEU0kgUExMKSBhbmQgQ0RDTEsoREUgUExMKSBh
cmUgY29ycmVjdCwgaG93ZXZlcg0KPiA+ID4gc2VlbXMgdGhhdCBkdWUgdG8gc29tZSBib3VuZGFy
eSBjb25kaXRpb25zLCB3aGVuIGNsb2NraW5nIGlzIHRvbyBsb3cNCj4gPiA+IHdlIGdldCB3cm9u
ZyB0aW1pbmdzIGZvciBEU0kgZGlzcGxheS4NCj4gPiA+IFNpbWlsYXIgd29ya2Fyb3VuZCBleGlz
dHMgZm9yIFZMViB0aG91Z2gsIHNvIGp1c3QgdG9vayBzaW1pbGFyDQo+ID4gPiBjb25kaXRpb24g
aW50byB1c2UuIEF0IGxlYXN0IHRoYXQgd2F5IEdMSyBwbGF0Zm9ybSB3aWxsIHN0YXJ0IHRvIGJl
DQo+ID4gPiB1c2FibGUgYWdhaW4sIHdpdGggY3VycmVudCBkcm0tdGlwLg0KPiA+ID4NCj4gPiA+
IHYyOiBGaXhlZCBjb21taXQgc3ViamVjdCBhcyBzdWdnZXN0ZWQuDQo+ID4gPg0KPiA+ID4gU2ln
bmVkLW9mZi1ieTogU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRl
bC5jb20+DQo+ID4gPiBBY2tlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4NCj4gPg0KPiA+IERvIHdlIGhhdmUgYSBidWd6aWxsYSBsaW5rPw0KPiA+
DQo+ID4gQlIsDQo+ID4gSmFuaS4NCj4gDQo+IE5vLCBvciBhdCBsZWFzdCBJJ20gbm90IGF3YXJl
IG9mLiBJIGp1c3QgZ290IGEgbWFjaGluZSBmcm9tIENJIGZvciBpbnZlc3RpZ2F0aW9uIDopIEkN
Cj4gZ3Vlc3MgaXQgbWlnaHQgYmUgd29ydGggdG8gY3JlYXRlIGEgYnVnIGZvciB0aGF0Lg0KPiAN
Cj4gDQo+IE1hcnRpbjogZG8gd2UgaGF2ZSBhIGJ1ZyBmb3IgQ0kgR0xLIGlzc3VlPw0KV2UgZGlk
IGhhZCBzb21lIGJ1Z3MsIGJ1dCBub3Qgc3VyZSBpZiB0aG9zZSBhcmUgcmVsYXRlZCB0byB0aGlz
IGlzc3VlLiANCg0KPiANCj4gLVN0YW5pc2xhdg0KPiANCj4gPg0KPiA+DQo+ID4gPiAtLS0NCj4g
PiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jZGNsay5jIHwgOSArKysrKysrKysNCj4g
PiA+ICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspDQo+ID4gPg0KPiA+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NkY2xrLmMNCj4gPiA+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfY2RjbGsuYw0KPiA+ID4gaW5kZXggYWU0MGE4Njc5MzE0Li4y
YjIzZjg1MDAzNjIgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9jZGNsay5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jZGNsay5j
DQo+ID4gPiBAQCAtMjI3Nyw2ICsyMjc3LDE1IEBAIGludCBpbnRlbF9jcnRjX2NvbXB1dGVfbWlu
X2NkY2xrKGNvbnN0DQo+ID4gPiBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkN
Cj4gPiA+ICAJICAgIElTX1ZBTExFWVZJRVcoZGV2X3ByaXYpKQ0KPiA+ID4gIAkJbWluX2NkY2xr
ID0gbWF4KDMyMDAwMCwgbWluX2NkY2xrKTsNCj4gPiA+DQo+ID4gPiArCS8qDQo+ID4gPiArCSAq
IE9uIEdlbWluaWxha2Ugb25jZSB0aGUgQ0RDTEsgZ2V0cyBhcyBsb3cgYXMgNzkyMDANCj4gPiA+
ICsJICogcGljdHVyZSBnZXRzIHVuc3RhYmxlLCBkZXNwaXRlIHRoYXQgdmFsdWVzIGFyZQ0KPiA+
ID4gKwkgKiBjb3JyZWN0IGZvciBEU0kgUExMIGFuZCBERSBQTEwuDQo+ID4gPiArCSAqLw0KPiA+
ID4gKwlpZiAoaW50ZWxfY3J0Y19oYXNfdHlwZShjcnRjX3N0YXRlLCBJTlRFTF9PVVRQVVRfRFNJ
KSAmJg0KPiA+ID4gKwkgICAgSVNfR0VNSU5JTEFLRShkZXZfcHJpdikpDQo+ID4gPiArCQltaW5f
Y2RjbGsgPSBtYXgoMTU4NDAwLCBtaW5fY2RjbGspOw0KPiA+ID4gKw0KPiA+ID4gIAlpZiAobWlu
X2NkY2xrID4gZGV2X3ByaXYtPm1heF9jZGNsa19mcmVxKSB7DQo+ID4gPiAgCQlEUk1fREVCVUdf
S01TKCJyZXF1aXJlZCBjZGNsayAoJWQga0h6KSBleGNlZWRzIG1heCAoJWQNCj4ga0h6KVxuIiwN
Cj4gPiA+ICAJCQkgICAgICBtaW5fY2RjbGssIGRldl9wcml2LT5tYXhfY2RjbGtfZnJlcSk7DQo+
ID4NCj4gPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
