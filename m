Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB2FF735F
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 12:46:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 928F96E8CE;
	Mon, 11 Nov 2019 11:46:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 125396E8CE
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 11:46:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Nov 2019 03:46:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,292,1569308400"; d="scan'208";a="197643907"
Received: from irsmsx110.ger.corp.intel.com ([163.33.3.25])
 by orsmga008.jf.intel.com with ESMTP; 11 Nov 2019 03:46:51 -0800
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.185]) by
 irsmsx110.ger.corp.intel.com ([169.254.15.37]) with mapi id 14.03.0439.000;
 Mon, 11 Nov 2019 11:46:50 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>, "Mun, Gwan-gyeong"
 <gwan-gyeong.mun@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Nikula, Jani" <jani.nikula@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Split a setting of MSA to MST
 and SST
Thread-Index: AQHVlOjq4PEbWgudUEipwIruYHl1sKeAN0yAgAWpNgA=
Date: Mon, 11 Nov 2019 11:46:50 +0000
Message-ID: <43D4F724E12AB6478FC1572B3FBE89D0769C7C45@IRSMSX106.ger.corp.intel.com>
References: <20191106212636.502471-1-gwan-gyeong.mun@intel.com>
 <68185bc5724ff087943287a2a66540b421d9c2a7.camel@intel.com>
In-Reply-To: <68185bc5724ff087943287a2a66540b421d9c2a7.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Split a setting of MSA to MST and
 SST
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksIA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLWdmeCA8
aW50ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgU291
emEsDQo+IEpvc2UNCj4gU2VudDogdG9yc3RhaSA3LiBtYXJyYXNrdXV0YSAyMDE5IDIzLjE2DQo+
IFRvOiBNdW4sIEd3YW4tZ3llb25nIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPjsgaW50ZWwt
DQo+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUmU6IFtJbnRlbC1nZnhd
IFtQQVRDSF0gZHJtL2k5MTU6IFNwbGl0IGEgc2V0dGluZyBvZiBNU0EgdG8gTVNUIGFuZCBTU1QN
Cj4gDQo+IE9uIFdlZCwgMjAxOS0xMS0wNiBhdCAyMzoyNiArMDIwMCwgR3dhbi1neWVvbmcgTXVu
IHdyb3RlOg0KPiA+IFRoZSBzZXR0aW5nIG9mIE1TQSBpcyBkb25lIGJ5IHRoZSBEREkgLnByZV9l
bmFibGUoKSBob29rLiBBbmQgd2hlbiB3ZQ0KPiA+IGFyZSB1c2luZyBNU1QsIHRoZSBNU0EgaXMg
b25seSBzZXQgdG8gZmlyc3QgbXN0IHN0cmVhbSBieSBjYWxsaW5nIG9mDQo+ID4gRERJIC5wcmVf
ZWFuYmxlKCkgaG9vay4gSXQgcmFpZXMgaXNzdWVzIHRvIG5vbi1maXJzdCBtc3Qgc3RyZWFtcy4N
Cj4gPiBXcm9uZyBNU0Egb3IgbWlzc2VkIE1TQSBwYWNrZXRzIG1pZ2h0IHNob3cgc2NyYW1ibGVk
IHNjcmVlbiBvciB3cm9uZw0KPiA+IHNjcmVlbi4NCj4gPg0KPiA+IFRoaXMgc3BsaXRzIGEgc2V0
dGluZyBvZiBNU0EgdG8gTVNUIGFuZCBTU1QgY2FzZXMuIEFuZCBJbiB0aGUgTVNUIGNhc2UNCj4g
PiBpdCB3aWxsIGNhbGwgYSBzZXR0aW5nIG9mIE1TQSBhZnRlciBhbiBhbGxvY2F0aW5nIG9mIFZp
cnR1YWwgQ2hhbm5lbA0KPiA+IGZyb20gTVNUIGVuY29kZXIgcHJlX2VuYWJsZSBjYWxsYmFjay4N
Cj4gDQo+IFJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGlu
dGVsLmNvbT4NCkFsc28gVGVzdGVkLWJ5OiBKYW5pIFNhYXJpbmVuIDxqYW5pLnNhYXJpbmVuQGlu
dGVsLmNvbT4NCk9uIERlbGwgWFBTIHdpdGhvdXQgcGF0Y2ggZXZlbiBib290aW5nIHdpdGggY29u
c29sZSAocnVubGV2ZWwgMykgc2NyZWVuIGJsYWNrIG9uIHNlY29uZCBtb25pdG9yIGFmdGVyIERQ
IE1TVCBtb25pdG9yLg0KRGVsbCBYUFMgIChLQkwpID4gVHlwZUMtdG8gRFAgdHAgRGVsbCA0SyBN
U1QgbW9uaXRvciBhbmQgZnJvbSB0aGF0IHRvIERQIG1vbml0b3IgKERlbGwpIGFuZCB0aGlzIGxh
c3QgaW4gdGhlIGNoYWluIGJsYWNrLg0KQnV0IHdpdGggcGF0Y2hlZCBrZXJuZWwgc2NyZWVuIHZp
c2libGUuIA0KDQpHRywgaXMgaXNzdWVzIHNlZW4gaW4gU2hhcmRzIHJlYWwgb3IgY2FuIHRoaXMg
YmUgbWVyZ2VkIG5vdz8gDQo+IA0KPiA+DQo+ID4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4gQ2M6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0
YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPg0KPiA+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3Mu
ZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTIyMTINCj4gPiBGaXhlczogMGMwNmZh
MTU2MDA2ICgiZHJtL2k5MTUvZHA6IEFkZCBzdXBwb3J0IG9mIEJULjIwMjAgQ29sb3JpbWV0cnkN
Cj4gPiB0byBEUCBNU0EiKQ0KPiA+IEZpeGVzOiBkNGE0MTVkY2RhMzUgKCJkcm0vaTkxNTogRml4
IE1TVCBvb3BzIGR1ZSB0byBNU0EgY2hhbmdlcyIpDQo+ID4gU2lnbmVkLW9mZi1ieTogR3dhbi1n
eWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jICAgIHwgMTAgKysrKysrLS0tLQ0K
PiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jIHwgIDMgKysr
DQo+ID4gIDIgZmlsZXMgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0K
PiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGRpLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4g
PiBpbmRleCBjOTE1MjFiY2YwNmEuLmVmNDFmYTBmNzdmMCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiA+IEBAIC0xNzk0LDEwICsxNzk0LDgg
QEAgdm9pZCBpbnRlbF9kZGlfc2V0X2RwX21zYShjb25zdCBzdHJ1Y3QNCj4gPiBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlLA0KPiA+ICAJICogb2YgQ29sb3IgRW5jb2RpbmcgRm9ybWF0IGFu
ZCBDb250ZW50IENvbG9yIEdhbXV0XSB3aGlsZQ0KPiBzZW5kaW5nDQo+ID4gIAkgKiBZQ0JDUiA0
MjAsIEhEUiBCVC4yMDIwIHNpZ25hbHMgd2Ugc2hvdWxkIHByb2dyYW0gTVNBIE1JU0MxDQo+IGZp
ZWxkcw0KPiA+ICAJICogd2hpY2ggaW5kaWNhdGUgVlNDIFNEUCBmb3IgdGhlIFBpeGVsIEVuY29k
aW5nL0NvbG9yaW1ldHJ5DQo+IEZvcm1hdC4NCj4gPiAtCSAqDQo+ID4gLQkgKiBGSVhNRSBNU1Qg
ZG9lc24ndCBwYXNzIGluIHRoZSBjb25uX3N0YXRlDQo+ID4gIAkgKi8NCj4gPiAtCWlmIChjb25u
X3N0YXRlICYmIGludGVsX2RwX25lZWRzX3ZzY19zZHAoY3J0Y19zdGF0ZSwNCj4gPiBjb25uX3N0
YXRlKSkNCj4gPiArCWlmIChpbnRlbF9kcF9uZWVkc192c2Nfc2RwKGNydGNfc3RhdGUsIGNvbm5f
c3RhdGUpKQ0KPiA+ICAJCXRlbXAgfD0gRFBfTVNBX01JU0NfQ09MT1JfVlNDX1NEUDsNCj4gPg0K
PiA+ICAJSTkxNV9XUklURShUUkFOU19NU0FfTUlTQyhjcHVfdHJhbnNjb2RlciksIHRlbXApOyBA
QCAtDQo+IDM2MDYsNw0KPiA+ICszNjA0LDExIEBAIHN0YXRpYyB2b2lkIGludGVsX2RkaV9wcmVf
ZW5hYmxlX2RwKHN0cnVjdCBpbnRlbF9lbmNvZGVyDQo+ID4gKmVuY29kZXIsDQo+ID4gIAllbHNl
DQo+ID4gIAkJaHN3X2RkaV9wcmVfZW5hYmxlX2RwKGVuY29kZXIsIGNydGNfc3RhdGUsDQo+IGNv
bm5fc3RhdGUpOw0KPiA+DQo+ID4gLQlpbnRlbF9kZGlfc2V0X2RwX21zYShjcnRjX3N0YXRlLCBj
b25uX3N0YXRlKTsNCj4gPiArCS8qIE1TVCB3aWxsIGNhbGwgYSBzZXR0aW5nIG9mIE1TQSBhZnRl
ciBhbiBhbGxvY2F0aW5nIG9mDQo+ID4gVmlydHVhbCBDaGFubmVsDQo+ID4gKwkgKiBmcm9tIE1T
VCBlbmNvZGVyIHByZV9lbmFibGUgY2FsbGJhY2suDQo+ID4gKwkgKi8NCj4gPiArCWlmICghaW50
ZWxfY3J0Y19oYXNfdHlwZShjcnRjX3N0YXRlLCBJTlRFTF9PVVRQVVRfRFBfTVNUKSkNCj4gPiAr
CQlpbnRlbF9kZGlfc2V0X2RwX21zYShjcnRjX3N0YXRlLCBjb25uX3N0YXRlKTsNCj4gPiAgfQ0K
PiA+DQo+ID4gIHN0YXRpYyB2b2lkIGludGVsX2RkaV9wcmVfZW5hYmxlX2hkbWkoc3RydWN0IGlu
dGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHBfbXN0LmMNCj4gPiBpbmRleCA1ZTI2N2M1YjRjMjAuLmNiNzdmODA3Mjgy
MCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
X21zdC5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9t
c3QuYw0KPiA+IEBAIC0zNDUsNiArMzQ1LDkgQEAgc3RhdGljIHZvaWQgaW50ZWxfbXN0X3ByZV9l
bmFibGVfZHAoc3RydWN0DQo+ID4gaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gPiAgCSAqLw0K
PiA+ICAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPCAxMiB8fCAhZmlyc3RfbXN0X3N0cmVhbSkN
Cj4gPiAgCQlpbnRlbF9kZGlfZW5hYmxlX3BpcGVfY2xvY2socGlwZV9jb25maWcpOw0KPiA+ICsN
Cj4gPiArCWludGVsX2RkaV9zZXRfZHBfbXNhKHBpcGVfY29uZmlnLCBjb25uX3N0YXRlKTsNCj4g
PiArDQo+ID4gIH0NCj4gPg0KPiA+ICBzdGF0aWMgdm9pZCBpbnRlbF9tc3RfZW5hYmxlX2RwKHN0
cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXw0KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0DQo+IEludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
