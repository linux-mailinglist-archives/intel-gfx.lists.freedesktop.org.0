Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7451A1AE7A2
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 23:35:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86A286EB0F;
	Fri, 17 Apr 2020 21:35:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE1F56EB0F
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 21:35:40 +0000 (UTC)
IronPort-SDR: RoF1T7GIlTfeYpFMODZINy4pw8p+FXgiqcR2eQMcuQN5+zGZKZ9JlqG97LrqQXvDKCsjNmzwb/
 Ui5Gz1rY6Afw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2020 14:35:40 -0700
IronPort-SDR: 69q3iK2qKuxiu7hZ3nRMnisO2qK0J28IsU1yj3YGWqlsvpYVkBW07ckaRLIK1yaOmheXlqzuPY
 E4TOc564ZKVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,395,1580803200"; d="scan'208";a="401163302"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga004.jf.intel.com with ESMTP; 17 Apr 2020 14:35:39 -0700
Received: from fmsmsx112.amr.corp.intel.com (10.18.116.6) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 17 Apr 2020 14:35:17 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.191]) by
 FMSMSX112.amr.corp.intel.com ([169.254.5.239]) with mapi id 14.03.0439.000;
 Fri, 17 Apr 2020 14:35:16 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/3] drm/i915/display: Load
 DP_TP_CTL/STATUS offset before use it
Thread-Index: AQHWErDhhJvkbCxV4EG1ln+EcsXMiKh6Hp0AgAC+k4CAAzdXAIAAPBsA
Date: Fri, 17 Apr 2020 21:35:16 +0000
Message-ID: <2ebe203e189e23e4ae4423849438eca93b5e6ee1.camel@intel.com>
References: <20200414230442.262092-1-jose.souza@intel.com>
 <CAKi4VAKioYoXtZE8H9=feCDN3ToV4xwQ6O0ORnp=-Q8qr5_BcA@mail.gmail.com>
 <d4e308c36bcc7c8cf0081ccc28e0d20cfee6f5aa.camel@intel.com>
 <20200417180156.GR6112@intel.com>
In-Reply-To: <20200417180156.GR6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.254.49.43]
Content-ID: <C7B4EDD9821BFB42B73C12239C986925@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/display: Load DP_TP_CTL/STATUS
 offset before use it
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIwLTA0LTE3IGF0IDIxOjAxICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFdlZCwgQXByIDE1LCAyMDIwIGF0IDA0OjUzOjE5UE0gKzAwMDAsIFNvdXphLCBKb3Nl
IHdyb3RlOg0KPiA+IE9uIFR1ZSwgMjAyMC0wNC0xNCBhdCAyMjozMyAtMDcwMCwgTHVjYXMgRGUg
TWFyY2hpIHdyb3RlOg0KPiA+ID4gT24gVHVlLCBBcHIgMTQsIDIwMjAgYXQgNDowMyBQTSBKb3PD
qSBSb2JlcnRvIGRlIFNvdXphDQo+ID4gPiA8am9zZS5zb3V6YUBpbnRlbC5jb20+IHdyb3RlOg0K
PiA+ID4gPiBSaWdodCBub3cgZHAucmVncy5kcF90cF9jdGwvc3RhdHVzIGFyZSBvbmx5IHNldCBk
dXJpbmcgdGhlDQo+ID4gPiA+IGVuY29kZXINCj4gPiA+ID4gcHJlX2VuYWJsZSgpIGhvb2ssIHdo
YXQgaXMgY2F1c2luZyBhbGwgcmVhZHMgYW5kIHdyaXRlcyB0bw0KPiA+ID4gPiB0aG9zZQ0KPiA+
ID4gPiByZWdpc3RlcnMgdG8gZ28gdG8gb2Zmc2V0IDB4MCBiZWZvcmUgcHJlX2VuYWJsZSgpIGlz
IGV4ZWN1dGVkLg0KPiA+ID4gPiANCj4gPiA+ID4gU28gaWYgaTkxNSB0YWtlcyB0aGUgQklPUyBz
dGF0ZSBhbmQgZG9uJ3QgZG8gYSBtb2Rlc2V0IGFueQ0KPiA+ID4gPiBmb2xsb3dpbmcNCj4gPiA+
ID4gbGluayByZXRyYWluZyB3aWxsIGZhaWwuDQo+ID4gPiA+IA0KPiA+ID4gPiBJbiB0aGUgY2Fz
ZSB0aGF0IGk5MTUgbmVlZHMgdG8gZG8gYSBtb2Rlc2V0LCB0aGUgRERJIGRpc2FibGUNCj4gPiA+
ID4gc2VxdWVuY2UNCj4gPiA+ID4gd2lsbCB3cml0ZSB0byBhIHdyb25nIHJlZ2lzdGVyIG5vdCBk
aXNhYmxpbmcgRFAgJ1RyYW5zcG9ydA0KPiA+ID4gPiBFbmFibGUnDQo+ID4gPiA+IGluDQo+ID4g
PiA+IERQX1RQX0NUTCwgbWFraW5nIGEgSERNSSBtb2Rlc2V0IGluIHRoZSBzYW1lIHBvcnQvdHJh
bnNjb2RlciB0bw0KPiA+ID4gPiBub3QgbGlnaHQgdXAgdGhlIG1vbml0b3IuDQo+ID4gPiA+IA0K
PiA+ID4gPiBTbyBoZXJlIGZvciBHRU5zIG9sZGVyIHRoYW4gMTIsIHRoYXQgaGF2ZSB0aG9zZSBy
ZWdpc3RlcnMgZml4ZWQNCj4gPiA+ID4gYXQNCj4gPiA+ID4gcG9ydCBvZmZzZXQgcmFuZ2UgaXQg
aXMgbG9hZGluZyBhdCBlbmNvZGVyL3BvcnQgaW5pdCB3aGlsZSBmb3INCj4gPiA+ID4gR0VOMTIN
Cj4gPiA+ID4gaXQgd2lsbCBrZWVwIHNldHRpbmcgaXQgYXQgZW5jb2RlciBwcmVfZW5hYmxlKCkg
YW5kIGR1cmluZyBIVw0KPiA+ID4gPiBzdGF0ZQ0KPiA+ID4gPiByZWFkb3V0Lg0KPiA+ID4gPiAN
Cj4gPiA+ID4gRml4ZXM6IDQ0NDRkZjZlMjA1YiAoImRybS9pOTE1L3RnbDogbW92ZSBEUF9UUF8q
IHRvDQo+ID4gPiA+IHRyYW5zY29kZXIiKQ0KPiA+ID4gPiBDYzogTWF0dCBSb3BlciA8bWF0dGhl
dy5kLnJvcGVyQGludGVsLmNvbT4NCj4gPiA+ID4gQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMu
ZGVtYXJjaGlAaW50ZWwuY29tPg0KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRv
IGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiA+ID4gLS0tDQo+ID4gPiA+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgMTQgKysrKysrKysrKyst
LS0NCj4gPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyAgfCAg
NSArKy0tLQ0KPiA+ID4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCA2IGRl
bGV0aW9ucygtKQ0KPiA+ID4gPiANCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ID4gPiA+IGluZGV4IGJlNmM2MWJjYmM5Yy4uMWFhYjkz
YTk0ZjQwIDEwMDY0NA0KPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RkaS5jDQo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGRpLmMNCj4gPiA+ID4gQEAgLTMyNTIsOSArMzI1Miw2IEBAIHN0YXRpYyB2b2lkIGhz
d19kZGlfcHJlX2VuYWJsZV9kcChzdHJ1Y3QNCj4gPiA+ID4gaW50ZWxfYXRvbWljX3N0YXRlICpz
dGF0ZSwNCj4gPiA+ID4gICAgICAgICBpbnRlbF9kcF9zZXRfbGlua19wYXJhbXMoaW50ZWxfZHAs
IGNydGNfc3RhdGUtDQo+ID4gPiA+ID5wb3J0X2Nsb2NrLA0KPiA+ID4gPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBjcnRjX3N0YXRlLT5sYW5lX2NvdW50LA0KPiA+ID4gPiBpc19t
c3QpOw0KPiA+ID4gPiANCj4gPiA+ID4gLSAgICAgICBpbnRlbF9kcC0+cmVncy5kcF90cF9jdGwg
PSBEUF9UUF9DVEwocG9ydCk7DQo+ID4gPiA+IC0gICAgICAgaW50ZWxfZHAtPnJlZ3MuZHBfdHBf
c3RhdHVzID0gRFBfVFBfU1RBVFVTKHBvcnQpOw0KPiA+ID4gDQo+ID4gPiByZWFzb24gdG8gYmUg
d2hlcmUgaXQgd2FzIGlzIGJlY2F1c2Ugb2YgTVNULiBJIHRoaW5rIHdoYXQgeW91IGFyZQ0KPiA+
ID4gZG9pbmcgaGVyZSB3aWxsIGJyZWFrIGl0IHNpbmNlIG5vdyB0aGlzIGlzIHNldCBmb3IgdGhl
IHBvcnQgYW5kDQo+ID4gPiBub3QNCj4gPiA+IHRyYW5zY29kZXIuDQo+ID4gPiBpbnRlbF9tc3Rf
cHJlX2VuYWJsZV9kcCgpIHdvdWxkIGNhbGwgaGVyZSBvbmx5IGZvciB0aGUgZmlyc3QNCj4gPiA+
IHN0cmVhbSwNCj4gPiA+IHNvIGFsbCB0aGUgb3RoZXJzIHdvdWxkIHVzZSB0aGlzIHNhbWUgdHJh
bnNjb2Rlci4NCj4gPiANCj4gPiBGb3IgVEdMKyBpdCBtb3ZlZCB0byB0cmFuc2NvZGVyIGJ1dCBm
b3Igb3RoZXIgaXQgaXMgc3RpbGwgb24gcG9ydA0KPiA+IGFuZA0KPiA+IGl0IGlzIGtlcHQgaW4g
dGhpcyBwYXRjaC4gVGhlIGZpeCBoZXJlIGZvciBUR0wrIGlzIGxvYWQgdGhvc2UgMg0KPiA+IGR1
cmluZw0KPiA+IEhXIHN0YXRlIHJlYWRvdXQuDQo+ID4gSW5zaWRlIE1TVCBjb2RlIGl0IHdpbGwg
Y29udGludWUgdG8gZ2V0IGZyb20NCj4gPiBpbnRlbF9tc3QtPnByaW1hcnkuZHAuDQo+IA0KPiBG
WUkgbG9va3MgbGlrZSBJIGhhdmUgYSByZWFzb25hYmxlIHdheSB0byBnZXQgcmlkIG9mIHRoaXMg
YnkgZmluYWxseSANCj4gcGx1bWJpbmcgdGhlIGNydGNfc3RhdGUgYWxsIHRoZSB3YXkgZG93biBp
bnRvIGxpbmsgdHJhaW5pbmcgY29kZQ0KPiAoaGFzIGJlZW4gb24gdGhlIFRPRE8gbGlzdCBmb3Ig
eWVhcnMpLiBUaGlzIHNob3VsZCBhbHNvIGFsbG93IHVzIHRvDQo+IGVsbWluYXRlIHRoZSBlbmNv
ZGVyLT50eXBlIG1lc3MgaW4gdGhlIGRkaV9idWZfdHJhbnMgY29kZS4gQW5kIHdlDQo+IGdldCBy
aWQgb2Ygc29tZSBjcnRjLT5jb25maWcgc3R1ZmYgYXMgd2VsbC4NCg0KQ29vbCBhbmQgQ2hyaXMg
d2FzIGZhc3RlciBhbmQgYWxyZWFkeSByZXZpZXdlZCBpdC4NCg0KPiANCj4gTVNUIHJldHJhaW5p
bmcgd2FzIHRoZSBtYWluIG9ic3RhY2xlIGxlZnQuIEkgdGhpbmsgSSBtb3N0bHkgc29sdmVkDQo+
IGl0IHdpdGggdGhlIHBhdGNoIEkganVzdCBzZW50IHRvZGF5LiBUaGUgb25lIHJlbWFpbmluZyBp
c3N1ZSBJDQo+IHJlY2FsbCBpcyB0aGUgbGFuZV9tYXNrIGZvciBkcm1fZHBfY2hhbm5lbF9lcV9v
aygpLiBTbyBmYXIgSSBkb24ndA0KPiBoYXZlIGEgYmV0dGVyIHBsYW4gdGhhbiB0byBrZWVwIGlu
dGVsX2RwLT5sYW5lX2NvdW50LiBCdXQgbW9zdCBvZg0KPiB0aGUgb3RoZXIgYWQtaG9jIHN0YXRl
IHVuZGVyIGludGVsX2RwIGNhbiBob3BlZnVsbHkgYmUgbnVrZWQuDQoNCk9rYXkgYnV0IHdpbGwg
bWVyZ2UgdGhpcyB0byBmaXggaXNzdWVzIHRoYXQgd2UgaGF2ZSByaWdodCBub3csIHBsZWFzZQ0K
Q0MgbWUgd2hlbiB5b3Ugc2VuZCB0aG9zZS4NCg0KPiANCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
