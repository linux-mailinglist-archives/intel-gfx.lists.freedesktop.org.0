Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A1E1F7B0B
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 17:42:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A309C6E9D5;
	Fri, 12 Jun 2020 15:42:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC8FE6E9D9
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 15:42:40 +0000 (UTC)
IronPort-SDR: 5PMcRbacNRyx8QxDeTMkOrVabLVSct3Cr8RyGD2tdEvfDnUFGIlyuHXxiyoACt5Rgo2fcYzuok
 Wf+fY4GfNmYA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2020 08:42:39 -0700
IronPort-SDR: pubAGjIiLg/94AX8QjIsIAJ+2ZwNGHiNAh0gcGEy7RGXYjdnVv0792CjjPhwqGeA0YO7DUsxsi
 y8BEnlNUocdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,503,1583222400"; d="scan'208";a="419497748"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga004.jf.intel.com with ESMTP; 12 Jun 2020 08:42:39 -0700
Received: from fmsmsx124.amr.corp.intel.com (10.18.125.39) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 12 Jun 2020 08:42:39 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.171]) by
 fmsmsx124.amr.corp.intel.com ([169.254.8.63]) with mapi id 14.03.0439.000;
 Fri, 12 Jun 2020 08:42:39 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 2/6] drm/i915: Add plane damage clips property
Thread-Index: AQHWM6rICiszaD5S3kS0iZe4LaLKW6jVqW2AgAAB7ICAAAGNAIAAAbQA
Date: Fri, 12 Jun 2020 15:42:38 +0000
Message-ID: <9f850ea63769be659d984cbd934f5eecef4cf37a.camel@intel.com>
References: <20200526221447.64110-1-jose.souza@intel.com>
 <20200526221447.64110-2-jose.souza@intel.com>
 <20200612152531.GI6112@intel.com>
 <023ae7594ee3fa1e94d51686b778b55c12e99c96.camel@intel.com>
 <20200612153756.GJ6112@intel.com>
In-Reply-To: <20200612153756.GJ6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.254.12.77]
Content-ID: <2D022D6E586DC648AD6A98B11AF8998E@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915: Add plane damage clips
 property
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIwLTA2LTEyIGF0IDE4OjM3ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIEZyaSwgSnVuIDEyLCAyMDIwIGF0IDAzOjMwOjU5UE0gKzAwMDAsIFNvdXphLCBKb3Nl
IHdyb3RlOg0KPiA+IE9uIEZyaSwgMjAyMC0wNi0xMiBhdCAxODoyNSArMDMwMCwgVmlsbGUgU3ly
asOkbMOkIHdyb3RlOg0KPiA+ID4gT24gVHVlLCBNYXkgMjYsIDIwMjAgYXQgMDM6MTQ6NDNQTSAt
MDcwMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3cm90ZToNCj4gPiA+ID4gVGhpcyBwcm9wZXJ0
eSB3aWxsIGJlIHVzZWQgYnkgUFNSMiBzb2Z0d2FyZSB0cmFja2luZywgYWRkaW5nIGl0IHRvDQo+
ID4gPiA+IEdFTjEyKy4NCj4gPiA+IA0KPiA+ID4gSXMgdGhlcmUgYWN0dWFsIHVzZXJzcGFjZSB0
aGF0IHVzZXMgdGhpcz8NCj4gPiANCj4gPiBPbmx5IFdlc3RvbiBmb3Igbm93Og0KPiA+IA0KPiA+
IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy93YXlsYW5kL3dlc3Rvbi8tL21lcmdlX3Jl
cXVlc3RzLzE3DQo+IA0KPiBBbmQgd2hhdCBoYXBwZW5zIHdoZW4gdXNlcnNwYWNlIGRvZXNuJ3Qg
ZG8gdGhpcyBzdHVmZj8NCg0KSXQgdXBkYXRlcyB0aGUgd2hvbGUgYXJlYSBvZiB0aGUgcGxhbmUg
dGhhdCBmbGlwcGVkLg0KDQo+IA0KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRv
IGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiA+ID4gLS0tDQo+ID4gPiA+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDQgKysrKw0KPiA+
ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYyAgfCA0ICsr
KysNCj4gPiA+ID4gIDIgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspDQo+ID4gPiA+IA0K
PiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0K
PiA+ID4gPiBpbmRleCBmNDBiOTA5OTUyY2MuLmI2OTg3ODMzNDA0MCAxMDA2NDQNCj4gPiA+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiA+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4g
PiA+ID4gQEAgLTM1LDYgKzM1LDcgQEANCj4gPiA+ID4gICNpbmNsdWRlIDxkcm0vZHJtX2F0b21p
Yy5oPg0KPiA+ID4gPiAgI2luY2x1ZGUgPGRybS9kcm1fYXRvbWljX2hlbHBlci5oPg0KPiA+ID4g
PiAgI2luY2x1ZGUgPGRybS9kcm1fYXRvbWljX3VhcGkuaD4NCj4gPiA+ID4gKyNpbmNsdWRlIDxk
cm0vZHJtX2RhbWFnZV9oZWxwZXIuaD4NCj4gPiA+ID4gICNpbmNsdWRlIDxkcm0vZHJtX2RwX2hl
bHBlci5oPg0KPiA+ID4gPiAgI2luY2x1ZGUgPGRybS9kcm1fZWRpZC5oPg0KPiA+ID4gPiAgI2lu
Y2x1ZGUgPGRybS9kcm1fZm91cmNjLmg+DQo+ID4gPiA+IEBAIC0xNjQ3Niw2ICsxNjQ3Nyw5IEBA
IGludGVsX2N1cnNvcl9wbGFuZV9jcmVhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2LA0KPiA+ID4gPiAgCXpwb3MgPSBSVU5USU1FX0lORk8oZGV2X3ByaXYpLT5udW1fc3ByaXRl
c1twaXBlXSArIDE7DQo+ID4gPiA+ICAJZHJtX3BsYW5lX2NyZWF0ZV96cG9zX2ltbXV0YWJsZV9w
cm9wZXJ0eSgmY3Vyc29yLT5iYXNlLCB6cG9zKTsNCj4gPiA+ID4gIA0KPiA+ID4gPiArCWlmIChJ
TlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKQ0KPiA+ID4gPiArCQlkcm1fcGxhbmVfZW5hYmxlX2Zi
X2RhbWFnZV9jbGlwcygmY3Vyc29yLT5iYXNlKTsNCj4gPiA+ID4gKw0KPiA+ID4gPiAgCWRybV9w
bGFuZV9oZWxwZXJfYWRkKCZjdXJzb3ItPmJhc2UsICZpbnRlbF9wbGFuZV9oZWxwZXJfZnVuY3Mp
Ow0KPiA+ID4gPiAgDQo+ID4gPiA+ICAJcmV0dXJuIGN1cnNvcjsNCj4gPiA+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jDQo+ID4gPiA+IGluZGV4IDU3MWMz
NmY5MjliZC4uOGJlMDZjYjI1OTk5IDEwMDY0NA0KPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jDQo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMNCj4gPiA+ID4gQEAgLTM0LDYgKzM0LDcg
QEANCj4gPiA+ID4gICNpbmNsdWRlIDxkcm0vZHJtX2F0b21pY19oZWxwZXIuaD4NCj4gPiA+ID4g
ICNpbmNsdWRlIDxkcm0vZHJtX2NvbG9yX21nbXQuaD4NCj4gPiA+ID4gICNpbmNsdWRlIDxkcm0v
ZHJtX2NydGMuaD4NCj4gPiA+ID4gKyNpbmNsdWRlIDxkcm0vZHJtX2RhbWFnZV9oZWxwZXIuaD4N
Cj4gPiA+ID4gICNpbmNsdWRlIDxkcm0vZHJtX2ZvdXJjYy5oPg0KPiA+ID4gPiAgI2luY2x1ZGUg
PGRybS9kcm1fcGxhbmVfaGVscGVyLmg+DQo+ID4gPiA+ICAjaW5jbHVkZSA8ZHJtL2RybV9yZWN0
Lmg+DQo+ID4gPiA+IEBAIC0zMTUxLDYgKzMxNTIsOSBAQCBza2xfdW5pdmVyc2FsX3BsYW5lX2Ny
ZWF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ID4gPiA+ICANCj4gPiA+
ID4gIAlkcm1fcGxhbmVfY3JlYXRlX3pwb3NfaW1tdXRhYmxlX3Byb3BlcnR5KCZwbGFuZS0+YmFz
ZSwgcGxhbmVfaWQpOw0KPiA+ID4gPiAgDQo+ID4gPiA+ICsJaWYgKElOVEVMX0dFTihkZXZfcHJp
dikgPj0gMTIpDQo+ID4gPiA+ICsJCWRybV9wbGFuZV9lbmFibGVfZmJfZGFtYWdlX2NsaXBzKCZw
bGFuZS0+YmFzZSk7DQo+ID4gPiA+ICsNCj4gPiA+ID4gIAlkcm1fcGxhbmVfaGVscGVyX2FkZCgm
cGxhbmUtPmJhc2UsICZpbnRlbF9wbGFuZV9oZWxwZXJfZnVuY3MpOw0KPiA+ID4gPiAgDQo+ID4g
PiA+ICAJcmV0dXJuIHBsYW5lOw0KPiA+ID4gPiAtLSANCj4gPiA+ID4gMi4yNi4yDQo+ID4gPiA+
IA0KPiA+ID4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xw0KPiA+ID4gPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0DQo+ID4gPiA+IEludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcNCj4gPiA+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
