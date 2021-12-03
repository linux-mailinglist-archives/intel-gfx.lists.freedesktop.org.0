Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2FAF4678A0
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Dec 2021 14:40:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E308C7AD71;
	Fri,  3 Dec 2021 13:40:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE8517AD70
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Dec 2021 13:40:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10186"; a="235708502"
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="235708502"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 05:40:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="513713530"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga008.jf.intel.com with ESMTP; 03 Dec 2021 05:40:38 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 3 Dec 2021 05:40:37 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 3 Dec 2021 05:40:37 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2308.020;
 Fri, 3 Dec 2021 05:40:37 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 03/14] drm/i915: Get rid of the "sizes are 0
 based" stuff
Thread-Index: AQHX5sfeG/MsrmNBuUGccH5LUqKKtaweZ9GAgAE37ACAAa/CgA==
Date: Fri, 3 Dec 2021 13:40:37 +0000
Message-ID: <ae74b23814486b383cb07a4039c107cbdb7c2b95.camel@intel.com>
References: <20211201152552.7821-1-ville.syrjala@linux.intel.com>
 <20211201152552.7821-4-ville.syrjala@linux.intel.com>
 <be4aff86415959904384e811f0f9e894c52b84fb.camel@intel.com>
 <Yai0WiYIRLA/qJw7@intel.com>
In-Reply-To: <Yai0WiYIRLA/qJw7@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <A39FFD7F5E406348A1ADE0393E27B5C6@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 03/14] drm/i915: Get rid of the "sizes are 0
 based" stuff
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIxLTEyLTAyIGF0IDEzOjU2ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFdlZCwgRGVjIDAxLCAyMDIxIGF0IDA1OjE4OjU0UE0gKzAwMDAsIFNvdXphLCBKb3Nl
IHdyb3RlOg0KPiA+IE9uIFdlZCwgMjAyMS0xMi0wMSBhdCAxNzoyNSArMDIwMCwgVmlsbGUgU3ly
amFsYSB3cm90ZToNCj4gPiA+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+DQo+ID4gPiANCj4gPiA+IFJlcGxhY2UgdGhlICJzaXplcyBhcmUgMCBi
YXNlZCIgc3R1ZmYgd2l0aCBqdXN0IHN0cmFpZ2h0DQo+ID4gPiB1cCAtMSB3aGVyZSBuZWVkZWQu
IExlc3MgY29uZnVzaW5nIGFsbCBhcm91bmQuDQo+ID4gPiANCj4gPiA+IFNpZ25lZC1vZmYtYnk6
IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4gPiAt
LS0NCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jICAg
fCAyNiArKysrLS0tLS0tLS0tLS0tLS0tDQo+ID4gPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvc2ts
X3VuaXZlcnNhbF9wbGFuZS5jICAgIHwgIDYgKy0tLS0NCj4gPiA+ICAyIGZpbGVzIGNoYW5nZWQs
IDYgaW5zZXJ0aW9ucygrKSwgMjYgZGVsZXRpb25zKC0pDQo+ID4gPiANCj4gPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYw0KPiA+ID4gaW5kZXggMWI5OWE5
NTAxYTQ1Li4yMDY3YTdiY2E0YTggMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jDQo+ID4gPiBAQCAtNDMxLDEwICs0MzEsNiBAQCB2
bHZfc3ByaXRlX3VwZGF0ZV9ub2FybShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLA0KPiA+ID4g
IAl1MzIgY3J0Y19oID0gZHJtX3JlY3RfaGVpZ2h0KCZwbGFuZV9zdGF0ZS0+dWFwaS5kc3QpOw0K
PiA+ID4gIAl1bnNpZ25lZCBsb25nIGlycWZsYWdzOw0KPiA+ID4gIA0KPiA+ID4gLQkvKiBTaXpl
cyBhcmUgMCBiYXNlZCAqLw0KPiA+IA0KPiA+IEluIG15IG9waW5pb24gYXQgbGVhc3QgdGhpcyBj
b21tZW50IHNob3VsZCBzdGF5LCBoZWxwcyB1bmRlcnN0YW5kIHdoeSB0aGUgLTEuIA0KPiANCj4g
SXQncyBqdXN0IG5vcm1hbCBwcmFjdGljZSBmb3IgYWxtb3N0IGFsbCBzdWNoIHJlZ2lzdGVycy4N
Cj4gV2UgZG9uJ3QgaGF2ZSBzaW1pbGFyIGNvbW1lbnRzIGVsc2V3aGVyZSBlaXRoZXIuIEFsc28g
aWYgDQo+IHRoZSBjb2RlIGFscmVhZHkgc2F5cyAiZm9vLTEiIHRoZW4gSSBkb24ndCBzZWUgd2hh
dCBleHRyYQ0KPiB0aGUgY29tbWVudCBnZXRzIHlvdS4NCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJv
YmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+IA0KPiA+IA0KPiA+ID4g
LQljcnRjX3ctLTsNCj4gPiA+IC0JY3J0Y19oLS07DQo+ID4gPiAtDQo+ID4gPiAgCXNwaW5fbG9j
a19pcnFzYXZlKCZkZXZfcHJpdi0+dW5jb3JlLmxvY2ssIGlycWZsYWdzKTsNCj4gPiA+ICANCj4g
PiA+ICAJaW50ZWxfZGVfd3JpdGVfZncoZGV2X3ByaXYsIFNQU1RSSURFKHBpcGUsIHBsYW5lX2lk
KSwNCj4gPiA+IEBAIC00NDIsNyArNDM4LDcgQEAgdmx2X3Nwcml0ZV91cGRhdGVfbm9hcm0oc3Ry
dWN0IGludGVsX3BsYW5lICpwbGFuZSwNCj4gPiA+ICAJaW50ZWxfZGVfd3JpdGVfZncoZGV2X3By
aXYsIFNQUE9TKHBpcGUsIHBsYW5lX2lkKSwNCj4gPiA+ICAJCQkgIChjcnRjX3kgPDwgMTYpIHwg
Y3J0Y194KTsNCj4gPiA+ICAJaW50ZWxfZGVfd3JpdGVfZncoZGV2X3ByaXYsIFNQU0laRShwaXBl
LCBwbGFuZV9pZCksDQo+ID4gPiAtCQkJICAoY3J0Y19oIDw8IDE2KSB8IGNydGNfdyk7DQo+ID4g
PiArCQkJICAoKGNydGNfaCAtIDEpIDw8IDE2KSB8IChjcnRjX3cgLSAxKSk7DQo+ID4gPiAgDQo+
ID4gPiAgCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmRldl9wcml2LT51bmNvcmUubG9jaywgaXJx
ZmxhZ3MpOw0KPiA+ID4gIH0NCj4gPiA+IEBAIC04NjYsMjEgKzg2MiwxNSBAQCBpdmJfc3ByaXRl
X3VwZGF0ZV9ub2FybShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLA0KPiA+ID4gIAl1MzIgc3By
c2NhbGUgPSAwOw0KPiA+ID4gIAl1bnNpZ25lZCBsb25nIGlycWZsYWdzOw0KPiA+ID4gIA0KPiA+
ID4gLQkvKiBTaXplcyBhcmUgMCBiYXNlZCAqLw0KPiA+ID4gLQlzcmNfdy0tOw0KPiA+ID4gLQlz
cmNfaC0tOw0KPiA+ID4gLQljcnRjX3ctLTsNCj4gPiA+IC0JY3J0Y19oLS07DQo+ID4gPiAtDQo+
ID4gPiAgCWlmIChjcnRjX3cgIT0gc3JjX3cgfHwgY3J0Y19oICE9IHNyY19oKQ0KPiA+ID4gLQkJ
c3Byc2NhbGUgPSBTUFJJVEVfU0NBTEVfRU5BQkxFIHwgKHNyY193IDw8IDE2KSB8IHNyY19oOw0K
PiA+ID4gKwkJc3Byc2NhbGUgPSBTUFJJVEVfU0NBTEVfRU5BQkxFIHwgKChzcmNfdyAtIDEpIDw8
IDE2KSB8IChzcmNfaCAtIDEpOw0KPiA+ID4gIA0KPiA+ID4gIAlzcGluX2xvY2tfaXJxc2F2ZSgm
ZGV2X3ByaXYtPnVuY29yZS5sb2NrLCBpcnFmbGFncyk7DQo+ID4gPiAgDQo+ID4gPiAgCWludGVs
X2RlX3dyaXRlX2Z3KGRldl9wcml2LCBTUFJTVFJJREUocGlwZSksDQo+ID4gPiAgCQkJICBwbGFu
ZV9zdGF0ZS0+dmlldy5jb2xvcl9wbGFuZVswXS5tYXBwaW5nX3N0cmlkZSk7DQo+ID4gPiAgCWlu
dGVsX2RlX3dyaXRlX2Z3KGRldl9wcml2LCBTUFJQT1MocGlwZSksIChjcnRjX3kgPDwgMTYpIHwg
Y3J0Y194KTsNCj4gPiA+IC0JaW50ZWxfZGVfd3JpdGVfZncoZGV2X3ByaXYsIFNQUlNJWkUocGlw
ZSksIChjcnRjX2ggPDwgMTYpIHwgY3J0Y193KTsNCj4gPiA+ICsJaW50ZWxfZGVfd3JpdGVfZnco
ZGV2X3ByaXYsIFNQUlNJWkUocGlwZSksICgoY3J0Y19oIC0gMSkgPDwgMTYpIHwgKGNydGNfdyAt
IDEpKTsNCj4gPiA+ICAJaWYgKElTX0lWWUJSSURHRShkZXZfcHJpdikpDQo+ID4gPiAgCQlpbnRl
bF9kZV93cml0ZV9mdyhkZXZfcHJpdiwgU1BSU0NBTEUocGlwZSksIHNwcnNjYWxlKTsNCj4gPiA+
ICANCj4gPiA+IEBAIC0xMjA4LDIxICsxMTk4LDE1IEBAIGc0eF9zcHJpdGVfdXBkYXRlX25vYXJt
KHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsDQo+ID4gPiAgCXUzMiBkdnNzY2FsZSA9IDA7DQo+
ID4gPiAgCXVuc2lnbmVkIGxvbmcgaXJxZmxhZ3M7DQo+ID4gPiAgDQo+ID4gPiAtCS8qIFNpemVz
IGFyZSAwIGJhc2VkICovDQo+ID4gPiAtCXNyY193LS07DQo+ID4gPiAtCXNyY19oLS07DQo+ID4g
PiAtCWNydGNfdy0tOw0KPiA+ID4gLQljcnRjX2gtLTsNCj4gPiA+IC0NCj4gPiA+ICAJaWYgKGNy
dGNfdyAhPSBzcmNfdyB8fCBjcnRjX2ggIT0gc3JjX2gpDQo+ID4gPiAtCQlkdnNzY2FsZSA9IERW
U19TQ0FMRV9FTkFCTEUgfCAoc3JjX3cgPDwgMTYpIHwgc3JjX2g7DQo+ID4gPiArCQlkdnNzY2Fs
ZSA9IERWU19TQ0FMRV9FTkFCTEUgfCAoKHNyY193IC0gMSkgPDwgMTYpIHwgKHNyY19oIC0gMSk7
DQo+ID4gPiAgDQo+ID4gPiAgCXNwaW5fbG9ja19pcnFzYXZlKCZkZXZfcHJpdi0+dW5jb3JlLmxv
Y2ssIGlycWZsYWdzKTsNCj4gPiA+ICANCj4gPiA+ICAJaW50ZWxfZGVfd3JpdGVfZncoZGV2X3By
aXYsIERWU1NUUklERShwaXBlKSwNCj4gPiA+ICAJCQkgIHBsYW5lX3N0YXRlLT52aWV3LmNvbG9y
X3BsYW5lWzBdLm1hcHBpbmdfc3RyaWRlKTsNCj4gPiA+ICAJaW50ZWxfZGVfd3JpdGVfZncoZGV2
X3ByaXYsIERWU1BPUyhwaXBlKSwgKGNydGNfeSA8PCAxNikgfCBjcnRjX3gpOw0KPiA+ID4gLQlp
bnRlbF9kZV93cml0ZV9mdyhkZXZfcHJpdiwgRFZTU0laRShwaXBlKSwgKGNydGNfaCA8PCAxNikg
fCBjcnRjX3cpOw0KPiA+ID4gKwlpbnRlbF9kZV93cml0ZV9mdyhkZXZfcHJpdiwgRFZTU0laRShw
aXBlKSwgKChjcnRjX2ggLSAxKSA8PCAxNikgfCAoY3J0Y193IC0gMSkpOw0KPiA+ID4gIAlpbnRl
bF9kZV93cml0ZV9mdyhkZXZfcHJpdiwgRFZTU0NBTEUocGlwZSksIGR2c3NjYWxlKTsNCj4gPiA+
ICANCj4gPiA+ICAJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmZGV2X3ByaXYtPnVuY29yZS5sb2Nr
LCBpcnFmbGFncyk7DQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L3NrbF91bml2ZXJzYWxfcGxhbmUuYw0KPiA+ID4gaW5kZXggOWZmMjRhMGU3OWI0Li4wOTk0ODky
MjAxNmIgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3Nr
bF91bml2ZXJzYWxfcGxhbmUuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMNCj4gPiA+IEBAIC0xMDIyLDEwICsxMDIyLDYgQEAg
c2tsX3Byb2dyYW1fcGxhbmVfbm9hcm0oc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwNCj4gPiA+
ICAJdTMyIHNyY19oID0gZHJtX3JlY3RfaGVpZ2h0KCZwbGFuZV9zdGF0ZS0+dWFwaS5zcmMpID4+
IDE2Ow0KPiA+ID4gIAl1bnNpZ25lZCBsb25nIGlycWZsYWdzOw0KPiA+ID4gIA0KPiA+ID4gLQkv
KiBTaXplcyBhcmUgMCBiYXNlZCAqLw0KPiA+ID4gLQlzcmNfdy0tOw0KPiA+ID4gLQlzcmNfaC0t
Ow0KPiA+ID4gLQ0KPiA+ID4gIAkvKiBUaGUgc2NhbGVyIHdpbGwgaGFuZGxlIHRoZSBvdXRwdXQg
cG9zaXRpb24gKi8NCj4gPiA+ICAJaWYgKHBsYW5lX3N0YXRlLT5zY2FsZXJfaWQgPj0gMCkgew0K
PiA+ID4gIAkJY3J0Y194ID0gMDsNCj4gPiA+IEBAIC0xMDQ1LDcgKzEwNDEsNyBAQCBza2xfcHJv
Z3JhbV9wbGFuZV9ub2FybShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLA0KPiA+ID4gIAlpbnRl
bF9kZV93cml0ZV9mdyhkZXZfcHJpdiwgUExBTkVfUE9TKHBpcGUsIHBsYW5lX2lkKSwNCj4gPiA+
ICAJCQkgIChjcnRjX3kgPDwgMTYpIHwgY3J0Y194KTsNCj4gPiA+ICAJaW50ZWxfZGVfd3JpdGVf
ZncoZGV2X3ByaXYsIFBMQU5FX1NJWkUocGlwZSwgcGxhbmVfaWQpLA0KPiA+ID4gLQkJCSAgKHNy
Y19oIDw8IDE2KSB8IHNyY193KTsNCj4gPiA+ICsJCQkgICgoc3JjX2ggLSAxKSA8PCAxNikgfCAo
c3JjX3cgLSAxKSk7DQo+ID4gPiAgDQo+ID4gPiAgCWlmIChpbnRlbF9mYl9pc19yY19jY3NfY2Nf
bW9kaWZpZXIoZmItPm1vZGlmaWVyKSkgew0KPiA+ID4gIAkJaW50ZWxfZGVfd3JpdGVfZncoZGV2
X3ByaXYsIFBMQU5FX0NDX1ZBTChwaXBlLCBwbGFuZV9pZCwgMCksDQo+ID4gDQo+IA0KDQo=
