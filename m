Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9AEF77AD
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 16:31:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 737D66E92B;
	Mon, 11 Nov 2019 15:31:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D3D56E92B
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 15:31:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Nov 2019 07:31:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,293,1569308400"; d="scan'208";a="193967894"
Received: from irsmsx151.ger.corp.intel.com ([163.33.192.59])
 by orsmga007.jf.intel.com with ESMTP; 11 Nov 2019 07:31:43 -0800
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.185]) by
 IRSMSX151.ger.corp.intel.com ([169.254.4.59]) with mapi id 14.03.0439.000;
 Mon, 11 Nov 2019 15:31:42 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Split a setting of MSA to MST
 and SST
Thread-Index: AQHVlOjq4PEbWgudUEipwIruYHl1sKeAN0yAgAWpNgCAADhEgIAAB5Tw
Date: Mon, 11 Nov 2019 15:31:41 +0000
Message-ID: <43D4F724E12AB6478FC1572B3FBE89D0769C8C77@IRSMSX106.ger.corp.intel.com>
References: <20191106212636.502471-1-gwan-gyeong.mun@intel.com>
 <68185bc5724ff087943287a2a66540b421d9c2a7.camel@intel.com>
 <43D4F724E12AB6478FC1572B3FBE89D0769C7C45@IRSMSX106.ger.corp.intel.com>
 <c47a0b0b062cd7fc68ee44fea6152917b4b0b0b1.camel@intel.com>
In-Reply-To: <c47a0b0b062cd7fc68ee44fea6152917b4b0b0b1.camel@intel.com>
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

SGksIA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IE11biwgR3dhbi1n
eWVvbmcgPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+DQo+IFNlbnQ6IG1hYW5hbnRhaSAxMS4g
bWFycmFza3V1dGEgMjAxOSAxNy4wNA0KPiBUbzogU2FhcmluZW4sIEphbmkgPGphbmkuc2Fhcmlu
ZW5AaW50ZWwuY29tPjsgTmlrdWxhLCBKYW5pIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ow0KPiBp
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBTb3V6YSwgSm9zZSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtZ2Z4XSBbUEFUQ0hdIGRybS9pOTE1OiBT
cGxpdCBhIHNldHRpbmcgb2YgTVNBIHRvIE1TVCBhbmQgU1NUDQo+IA0KPiBPbiBNb24sIDIwMTkt
MTEtMTEgYXQgMTE6NDYgKzAwMDAsIFNhYXJpbmVuLCBKYW5pIHdyb3RlOg0KPiA+IEhpLA0KPiA+
DQo+ID4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+ID4gRnJvbTogSW50ZWwtZ2Z4
IDxpbnRlbC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZg0KPiA+
ID4gT2YgU291emEsIEpvc2UNCj4gPiA+IFNlbnQ6IHRvcnN0YWkgNy4gbWFycmFza3V1dGEgMjAx
OSAyMy4xNg0KPiA+ID4gVG86IE11biwgR3dhbi1neWVvbmcgPGd3YW4tZ3llb25nLm11bkBpbnRl
bC5jb20+OyBpbnRlbC0NCj4gPiA+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiA+IFN1
YmplY3Q6IFJlOiBbSW50ZWwtZ2Z4XSBbUEFUQ0hdIGRybS9pOTE1OiBTcGxpdCBhIHNldHRpbmcg
b2YgTVNBIHRvDQo+ID4gPiBNU1QgYW5kIFNTVA0KPiA+ID4NCj4gPiA+IE9uIFdlZCwgMjAxOS0x
MS0wNiBhdCAyMzoyNiArMDIwMCwgR3dhbi1neWVvbmcgTXVuIHdyb3RlOg0KPiA+ID4gPiBUaGUg
c2V0dGluZyBvZiBNU0EgaXMgZG9uZSBieSB0aGUgRERJIC5wcmVfZW5hYmxlKCkgaG9vay4gQW5k
IHdoZW4NCj4gPiA+ID4gd2UgYXJlIHVzaW5nIE1TVCwgdGhlIE1TQSBpcyBvbmx5IHNldCB0byBm
aXJzdCBtc3Qgc3RyZWFtIGJ5DQo+ID4gPiA+IGNhbGxpbmcgb2YgRERJIC5wcmVfZWFuYmxlKCkg
aG9vay4gSXQgcmFpZXMgaXNzdWVzIHRvIG5vbi1maXJzdA0KPiA+ID4gPiBtc3Qgc3RyZWFtcy4N
Cj4gPiA+ID4gV3JvbmcgTVNBIG9yIG1pc3NlZCBNU0EgcGFja2V0cyBtaWdodCBzaG93IHNjcmFt
YmxlZCBzY3JlZW4gb3INCj4gPiA+ID4gd3Jvbmcgc2NyZWVuLg0KPiA+ID4gPg0KPiA+ID4gPiBU
aGlzIHNwbGl0cyBhIHNldHRpbmcgb2YgTVNBIHRvIE1TVCBhbmQgU1NUIGNhc2VzLiBBbmQgSW4g
dGhlIE1TVA0KPiA+ID4gPiBjYXNlIGl0IHdpbGwgY2FsbCBhIHNldHRpbmcgb2YgTVNBIGFmdGVy
IGFuIGFsbG9jYXRpbmcgb2YgVmlydHVhbA0KPiA+ID4gPiBDaGFubmVsIGZyb20gTVNUIGVuY29k
ZXIgcHJlX2VuYWJsZSBjYWxsYmFjay4NCj4gPiA+DQo+ID4gPiBSZXZpZXdlZC1ieTogSm9zw6kg
Um9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+ID4gQWxzbyBUZXN0ZWQt
Ynk6IEphbmkgU2FhcmluZW4gPGphbmkuc2FhcmluZW5AaW50ZWwuY29tPiBPbiBEZWxsIFhQUw0K
PiA+IHdpdGhvdXQgcGF0Y2ggZXZlbiBib290aW5nIHdpdGggY29uc29sZSAocnVubGV2ZWwgMykg
c2NyZWVuIGJsYWNrIG9uDQo+ID4gc2Vjb25kIG1vbml0b3IgYWZ0ZXIgRFAgTVNUIG1vbml0b3Iu
DQo+ID4gRGVsbCBYUFMgIChLQkwpID4gVHlwZUMtdG8gRFAgdHAgRGVsbCA0SyBNU1QgbW9uaXRv
ciBhbmQgZnJvbSB0aGF0IHRvDQo+ID4gRFAgbW9uaXRvciAoRGVsbCkgYW5kIHRoaXMgbGFzdCBp
biB0aGUgY2hhaW4gYmxhY2suDQo+ID4gQnV0IHdpdGggcGF0Y2hlZCBrZXJuZWwgc2NyZWVuIHZp
c2libGUuDQo+ID4NCj4gPiBHRywgaXMgaXNzdWVzIHNlZW4gaW4gU2hhcmRzIHJlYWwgb3IgY2Fu
IHRoaXMgYmUgbWVyZ2VkIG5vdz8NCj4gSGkgSmFuaSBTYWFyaW5lbiwNCj4gSU1ITywgdGhlIHJl
cG9ydGVkIHBvc3NpYmxlIHJlZ3Jlc3Npb24gc2VlbWVkIG5vdCByZWxhdGVkIHRvIHRoaXMgcGF0
Y2guDQo+IEkgY29tbWVudGVkIGFuZCByZXBsaWVkIHRvIHRoZSByZWdyZXNzaW9uIHJlcG9ydCBt
YWlsIG9mIFJldiAzLg0KPiANCj4gSmFuaSBOLCBpZiB5b3UgYXJlIGF2YWlsYWJsZSwgY291bGQg
eW91IHJldmlldyBhbmQgbWVyZ2UgdGhlIHBhdGNoPw0KVmlsbGUgYWxyZWFkeSBkaWQg8J+YiSAN
Cg0KPiANCj4gQnIsDQo+IA0KPiBHLkcuDQo+ID4gPiA+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiA+ID4gPiBDYzogU3RhbmlzbGF2IExpc292
c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+DQo+ID4gPiA+IEJ1Z3ppbGxhOiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTIyMTINCj4gPiA+
ID4gRml4ZXM6IDBjMDZmYTE1NjAwNiAoImRybS9pOTE1L2RwOiBBZGQgc3VwcG9ydCBvZiBCVC4y
MDIwDQo+ID4gPiA+IENvbG9yaW1ldHJ5IHRvIERQIE1TQSIpDQo+ID4gPiA+IEZpeGVzOiBkNGE0
MTVkY2RhMzUgKCJkcm0vaTkxNTogRml4IE1TVCBvb3BzIGR1ZSB0byBNU0EgY2hhbmdlcyIpDQo+
ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcubXVuQGlu
dGVsLmNvbT4NCj4gPiA+ID4gLS0tDQo+ID4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RkaS5jICAgIHwgMTAgKysrKysrLS0tLQ0KPiA+ID4gPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYyB8ICAzICsrKw0KPiA+ID4gPiAgMiBmaWxl
cyBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+ID4gPiA+DQo+ID4g
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5j
DQo+ID4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiA+
ID4gPiBpbmRleCBjOTE1MjFiY2YwNmEuLmVmNDFmYTBmNzdmMCAxMDA2NDQNCj4gPiA+ID4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiA+ID4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ID4gPiA+IEBAIC0x
Nzk0LDEwICsxNzk0LDggQEAgdm9pZCBpbnRlbF9kZGlfc2V0X2RwX21zYShjb25zdCBzdHJ1Y3QN
Cj4gPiA+ID4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gPiA+ID4gIAkgKiBvZiBD
b2xvciBFbmNvZGluZyBGb3JtYXQgYW5kIENvbnRlbnQgQ29sb3IgR2FtdXRdIHdoaWxlDQo+ID4g
PiBzZW5kaW5nDQo+ID4gPiA+ICAJICogWUNCQ1IgNDIwLCBIRFIgQlQuMjAyMCBzaWduYWxzIHdl
IHNob3VsZCBwcm9ncmFtIE1TQSBNSVNDMQ0KPiA+ID4gZmllbGRzDQo+ID4gPiA+ICAJICogd2hp
Y2ggaW5kaWNhdGUgVlNDIFNEUCBmb3IgdGhlIFBpeGVsIEVuY29kaW5nL0NvbG9yaW1ldHJ5DQo+
ID4gPiBGb3JtYXQuDQo+ID4gPiA+IC0JICoNCj4gPiA+ID4gLQkgKiBGSVhNRSBNU1QgZG9lc24n
dCBwYXNzIGluIHRoZSBjb25uX3N0YXRlDQo+ID4gPiA+ICAJICovDQo+ID4gPiA+IC0JaWYgKGNv
bm5fc3RhdGUgJiYgaW50ZWxfZHBfbmVlZHNfdnNjX3NkcChjcnRjX3N0YXRlLA0KPiA+ID4gPiBj
b25uX3N0YXRlKSkNCj4gPiA+ID4gKwlpZiAoaW50ZWxfZHBfbmVlZHNfdnNjX3NkcChjcnRjX3N0
YXRlLCBjb25uX3N0YXRlKSkNCj4gPiA+ID4gIAkJdGVtcCB8PSBEUF9NU0FfTUlTQ19DT0xPUl9W
U0NfU0RQOw0KPiA+ID4gPg0KPiA+ID4gPiAgCUk5MTVfV1JJVEUoVFJBTlNfTVNBX01JU0MoY3B1
X3RyYW5zY29kZXIpLCB0ZW1wKTsgQEAgLQ0KPiA+ID4gMzYwNiw3DQo+ID4gPiA+ICszNjA0LDEx
IEBAIHN0YXRpYyB2b2lkIGludGVsX2RkaV9wcmVfZW5hYmxlX2RwKHN0cnVjdA0KPiA+ID4gPiBp
bnRlbF9lbmNvZGVyDQo+ID4gPiA+ICplbmNvZGVyLA0KPiA+ID4gPiAgCWVsc2UNCj4gPiA+ID4g
IAkJaHN3X2RkaV9wcmVfZW5hYmxlX2RwKGVuY29kZXIsIGNydGNfc3RhdGUsDQo+ID4gPiBjb25u
X3N0YXRlKTsNCj4gPiA+ID4gLQlpbnRlbF9kZGlfc2V0X2RwX21zYShjcnRjX3N0YXRlLCBjb25u
X3N0YXRlKTsNCj4gPiA+ID4gKwkvKiBNU1Qgd2lsbCBjYWxsIGEgc2V0dGluZyBvZiBNU0EgYWZ0
ZXIgYW4gYWxsb2NhdGluZyBvZg0KPiA+ID4gPiBWaXJ0dWFsIENoYW5uZWwNCj4gPiA+ID4gKwkg
KiBmcm9tIE1TVCBlbmNvZGVyIHByZV9lbmFibGUgY2FsbGJhY2suDQo+ID4gPiA+ICsJICovDQo+
ID4gPiA+ICsJaWYgKCFpbnRlbF9jcnRjX2hhc190eXBlKGNydGNfc3RhdGUsIElOVEVMX09VVFBV
VF9EUF9NU1QpKQ0KPiA+ID4gPiArCQlpbnRlbF9kZGlfc2V0X2RwX21zYShjcnRjX3N0YXRlLCBj
b25uX3N0YXRlKTsNCj4gPiA+ID4gIH0NCj4gPiA+ID4NCj4gPiA+ID4gIHN0YXRpYyB2b2lkIGlu
dGVsX2RkaV9wcmVfZW5hYmxlX2hkbWkoc3RydWN0IGludGVsX2VuY29kZXINCj4gPiA+ID4gKmVu
Y29kZXIsIGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
X21zdC5jDQo+ID4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9t
c3QuYw0KPiA+ID4gPiBpbmRleCA1ZTI2N2M1YjRjMjAuLmNiNzdmODA3MjgyMCAxMDA2NDQNCj4g
PiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYw0K
PiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5j
DQo+ID4gPiA+IEBAIC0zNDUsNiArMzQ1LDkgQEAgc3RhdGljIHZvaWQgaW50ZWxfbXN0X3ByZV9l
bmFibGVfZHAoc3RydWN0DQo+ID4gPiA+IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ID4gPiA+
ICAJICovDQo+ID4gPiA+ICAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPCAxMiB8fCAhZmlyc3Rf
bXN0X3N0cmVhbSkNCj4gPiA+ID4gIAkJaW50ZWxfZGRpX2VuYWJsZV9waXBlX2Nsb2NrKHBpcGVf
Y29uZmlnKTsNCj4gPiA+ID4gKw0KPiA+ID4gPiArCWludGVsX2RkaV9zZXRfZHBfbXNhKHBpcGVf
Y29uZmlnLCBjb25uX3N0YXRlKTsNCj4gPiA+ID4gKw0KPiA+ID4gPiAgfQ0KPiA+ID4gPg0KPiA+
ID4gPiAgc3RhdGljIHZvaWQgaW50ZWxfbXN0X2VuYWJsZV9kcChzdHJ1Y3QgaW50ZWxfZW5jb2Rl
ciAqZW5jb2RlciwNCj4gPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fDQo+ID4gPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0DQo+ID4gPiBJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
