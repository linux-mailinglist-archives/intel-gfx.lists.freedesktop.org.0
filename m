Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70770250648
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Aug 2020 19:31:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0577C6E067;
	Mon, 24 Aug 2020 17:31:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF1806E067
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Aug 2020 17:31:02 +0000 (UTC)
IronPort-SDR: GK7LeJbY9frhZSc6VPcWgsPCOStqdLieWlavM/A2Hv37Dd14RmWNU2U9Eudrg51mAteKdPYK/Q
 Olo6xknde5RA==
X-IronPort-AV: E=McAfee;i="6000,8403,9723"; a="173996447"
X-IronPort-AV: E=Sophos;i="5.76,349,1592895600"; d="scan'208";a="173996447"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2020 10:31:02 -0700
IronPort-SDR: afV2EJuNAUt9W+ADxPBMw+aG7ZZtkt3eIRe8FBwR4U/LRovAekcisODNf8XtuI/OakSpDOiKxz
 gf5eYXSdutwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,349,1592895600"; d="scan'208";a="474010896"
Received: from fmsmsx603-2.cps.intel.com (HELO fmsmsx603.amr.corp.intel.com)
 ([10.18.84.213])
 by orsmga005.jf.intel.com with ESMTP; 24 Aug 2020 10:31:02 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 24 Aug 2020 10:31:01 -0700
Received: from fmsmsx156.amr.corp.intel.com (10.18.116.74) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 24 Aug 2020 10:31:01 -0700
Received: from fmsmsx107.amr.corp.intel.com ([169.254.6.136]) by
 fmsmsx156.amr.corp.intel.com ([169.254.13.232]) with mapi id 14.03.0439.000;
 Mon, 24 Aug 2020 10:31:00 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915/drrs: Disable DRRS when
 needed in fastsets
Thread-Index: AQHWdxZXsBPU7E5R3EiNhfGxQdB2lKlHbrAAgACR4gA=
Date: Mon, 24 Aug 2020 17:31:00 +0000
Message-ID: <7ab804641e1de61e30c29d736380a8f9c06550e8.camel@intel.com>
References: <20200820172353.15773-1-jose.souza@intel.com>
 <20200820172353.15773-2-jose.souza@intel.com>
 <20200824085127.GE25390@intel.com>
In-Reply-To: <20200824085127.GE25390@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.240.12]
Content-ID: <D4D3651B7566BB49AF1672BF52219542@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/drrs: Disable DRRS when needed
 in fastsets
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Pandey, Hariom" <hariom.pandey@intel.com>, "K,
 SrinivasX" <srinivasx.k@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIwLTA4LTI0IGF0IDE0OjIxICswNTMwLCBBbnNodW1hbiBHdXB0YSB3cm90ZToN
Cj4gT24gMjAyMC0wOC0yMCBhdCAyMjo1Mzo1MyArMDUzMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6
YSB3cm90ZToNCj4gPiBDaGFuZ2VzIGluIHRoZSBjb25maWd1cmF0aW9uIGNvdWxkIGNhdXNlIFBT
UiB0byBiZSBjb21wYXRpYmxlIGFuZA0KPiA+IGVuYWJsZWQgc28gZHJpdmVyIG11c3QgYWxzbyBi
ZSBhYmxlIHRvIGRpc2FibGUgRFJSUyB3aGVuIGRvaW5nDQo+ID4gZmFzdHNldHMuDQo+ID4gDQo+
ID4gQ2xvc2VzOiANCj4gPiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVs
Ly0vaXNzdWVzLzIwOQ0KPiA+IA0KPiA+IENsb3NlczogDQo+ID4gaHR0cHM6Ly9naXRsYWIuZnJl
ZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy8xNzMNCj4gPiANCj4gPiBDbG9zZXM6IA0K
PiA+IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvLS9pc3N1ZXMvMjA5
DQo+ID4gDQo+ID4gQ2M6IFNyaW5pdmFzIEsgPA0KPiA+IHNyaW5pdmFzeC5rQGludGVsLmNvbQ0K
PiA+ID4NCj4gPiBDYzogSGFyaW9tIFBhbmRleSA8DQo+ID4gaGFyaW9tLnBhbmRleUBpbnRlbC5j
b20NCj4gPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8DQo+
ID4gam9zZS5zb3V6YUBpbnRlbC5jb20NCj4gPiA+DQo+IA0KPiBvdmVyYWxsIHBhdGNoIGxvb2tz
IGdvb29kIHRvIG1lLA0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RkaS5jIHwgIDIgKy0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcC5jICB8IDg0ICsrKysrKysrKysrKysrKysrKystLS0tLQ0KPiA+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmggIHwgIDIgKw0KPiA+ICAzIGZpbGVzIGNoYW5n
ZWQsIDcxIGluc2VydGlvbnMoKyksIDE3IGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiA+IGluZGV4IGRlNWIyMTY1NjFkOC4u
ZmYwNWE4NTI0MTdjIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGRpLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RkaS5jDQo+ID4gQEAgLTQwMTIsNyArNDAxMiw3IEBAIHN0YXRpYyB2b2lkIGludGVsX2Rk
aV91cGRhdGVfcGlwZV9kcChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiAg
DQo+ID4gIAlpbnRlbF9wc3JfdXBkYXRlKGludGVsX2RwLCBjcnRjX3N0YXRlLCBjb25uX3N0YXRl
KTsNCj4gPiAgCWludGVsX2RwX3NldF9pbmZvZnJhbWVzKGVuY29kZXIsIHRydWUsIGNydGNfc3Rh
dGUsIGNvbm5fc3RhdGUpOw0KPiA+IC0JaW50ZWxfZWRwX2RycnNfZW5hYmxlKGludGVsX2RwLCBj
cnRjX3N0YXRlKTsNCj4gPiArCWludGVsX2VkcF9kcnJzX3VwZGF0ZShpbnRlbF9kcCwgY3J0Y19z
dGF0ZSk7DQo+ID4gIA0KPiA+ICAJaW50ZWxfcGFuZWxfdXBkYXRlX2JhY2tsaWdodChzdGF0ZSwg
ZW5jb2RlciwgY3J0Y19zdGF0ZSwgY29ubl9zdGF0ZSk7DQo+ID4gIH0NCj4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gaW5kZXggM2JmNTBiMWFlOTgzLi5kZTJj
OTg1MTM5NWQgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcC5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jDQo+ID4gQEAgLTI1NzYsOSArMjU3Niw5IEBAIGludGVsX2RwX2NvbXB1dGVfaGRyX21ldGFk
YXRhX2luZm9mcmFtZV9zZHAoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiAgfQ0KPiA+
ICANCj4gPiAgc3RhdGljIHZvaWQNCj4gPiAtaW50ZWxfZHBfZHJyc19jb21wdXRlX2NvbmZpZyhz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+IC0JCQkgICAgIHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpwaXBlX2NvbmZpZywNCj4gPiAtCQkJICAgICBpbnQgb3V0cHV0X2JwcCwgYm9vbCBj
b25zdGFudF9uKQ0KPiA+ICtpbnRlbF9kcF9jb21wdXRlX2RycnMoc3RydWN0IGludGVsX2RwICpp
bnRlbF9kcCwNCj4gPiArCQkgICAgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25m
aWcsDQo+ID4gKwkJICAgICAgaW50IG91dHB1dF9icHAsIGJvb2wgY29uc3RhbnRfbikNCj4gDQo+
IGludGVsX2RwX2RycnNfY29tcHV0ZV9jb25maWcgbG9va3MgYSBiZXR0ZXIgbmFtZSB3aGljaCB1
IGhhdmUgaW50cm9kdWNlZCBpbiBwYXRjaCAxIG9mIHRoaXMgc2VyaWVzLg0KPiBhbnkgcmVhc29u
IHRvIGNoYW5nZSB0aGUgZnVuY3Rpb24gbmFtZSBpbiBzZWNvbmQgcGF0Y2ggPw0KDQpUaGFua3Mg
Zm9yIGNhdGNoaW5nIHRoaXMsIGNoYW5naW5nIGJhY2sgdG8gdGhlIG5hbWUgaW4gcGF0Y2ggMS4N
Cg0KPiA+ICB7DQo+ID4gIAlzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICppbnRlbF9jb25uZWN0b3Ig
PSBpbnRlbF9kcC0+YXR0YWNoZWRfY29ubmVjdG9yOw0KPiA+ICAJc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7DQo+ID4gQEAgLTI1ODYsOCAr
MjU4Niw4IEBAIGludGVsX2RwX2RycnNfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2RwICpp
bnRlbF9kcCwNCj4gPiAgCS8qDQo+ID4gIAkgKiBEUlJTIGFuZCBQU1IgY2FuJ3QgYmUgZW5hYmxl
IHRvZ2V0aGVyLCBzbyBnaXZpbmcgcHJlZmVyZW5jZSB0byBQU1INCj4gPiAgCSAqIGFzIGl0IGFs
bG93cyBtb3JlIHBvd2VyLXNhdmluZ3MgYnkgY29tcGxldGUgc2h1dHRpbmcgZG93biBkaXNwbGF5
LA0KPiA+IC0JICogc28gdG8gZ3VhcmFudGVlIHRoaXMsIGludGVsX2RwX2RycnNfY29tcHV0ZV9j
b25maWcoKSBtdXN0IGJlIGNhbGxlZA0KPiA+IC0JICogYWZ0ZXIgaW50ZWxfcHNyX2NvbXB1dGVf
Y29uZmlnKCkuDQo+ID4gKwkgKiBzbyB0byBndWFyYW50ZWUgdGhpcywgaW50ZWxfZHBfY29tcHV0
ZV9kcnJzKCkgbXVzdCBiZSBjYWxsZWQgYWZ0ZXINCj4gPiArCSAqIGludGVsX3Bzcl9jb21wdXRl
X2NvbmZpZygpLg0KPiA+ICAJICovDQo+ID4gIAlpZiAocGlwZV9jb25maWctPmhhc19wc3IpDQo+
ID4gIAkJcmV0dXJuOw0KPiA+IEBAIC0yNjg4LDggKzI2ODgsNyBAQCBpbnRlbF9kcF9jb21wdXRl
X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gPiAgCQlpbnRlbF9kcF9z
ZXRfY2xvY2soZW5jb2RlciwgcGlwZV9jb25maWcpOw0KPiA+ICANCj4gPiAgCWludGVsX3Bzcl9j
b21wdXRlX2NvbmZpZyhpbnRlbF9kcCwgcGlwZV9jb25maWcpOw0KPiA+IC0JaW50ZWxfZHBfZHJy
c19jb21wdXRlX2NvbmZpZyhpbnRlbF9kcCwgcGlwZV9jb25maWcsIG91dHB1dF9icHAsDQo+ID4g
LQkJCQkgICAgIGNvbnN0YW50X24pOw0KPiA+ICsJaW50ZWxfZHBfY29tcHV0ZV9kcnJzKGludGVs
X2RwLCBwaXBlX2NvbmZpZywgb3V0cHV0X2JwcCwgY29uc3RhbnRfbik7DQo+ID4gIAlpbnRlbF9k
cF9jb21wdXRlX3ZzY19zZHAoaW50ZWxfZHAsIHBpcGVfY29uZmlnLCBjb25uX3N0YXRlKTsNCj4g
PiAgCWludGVsX2RwX2NvbXB1dGVfaGRyX21ldGFkYXRhX2luZm9mcmFtZV9zZHAoaW50ZWxfZHAs
IHBpcGVfY29uZmlnLCBjb25uX3N0YXRlKTsNCj4gPiAgDQo+ID4gQEAgLTc3MzYsNiArNzczNSwx
NSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kcF9zZXRfZHJyc19zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsDQo+ID4gIAkJICAgIHJlZnJlc2hfcmF0ZSk7DQo+ID4gIH0NCj4g
PiAgDQo+ID4gK3N0YXRpYyB2b2lkDQo+ID4gK2ludGVsX2VkcF9kcnJzX2VuYWJsZV9sb2NrZWQo
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gPiArew0KPiA+ICsJc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7DQo+ID4gKw0KPiA+ICsJ
ZGV2X3ByaXYtPmRycnMuYnVzeV9mcm9udGJ1ZmZlcl9iaXRzID0gMDsNCj4gPiArCWRldl9wcml2
LT5kcnJzLmRwID0gaW50ZWxfZHA7DQo+ID4gK30NCj4gPiArDQo+ID4gIC8qKg0KPiA+ICAgKiBp
bnRlbF9lZHBfZHJyc19lbmFibGUgLSBpbml0IGRycnMgc3RydWN0IGlmIHN1cHBvcnRlZA0KPiA+
ICAgKiBAaW50ZWxfZHA6IERQIHN0cnVjdA0KPiA+IEBAIC03NzUyLDE5ICs3NzYwLDM0IEBAIHZv
aWQgaW50ZWxfZWRwX2RycnNfZW5hYmxlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4g
IAkJcmV0dXJuOw0KPiA+ICANCj4gPiAgCW11dGV4X2xvY2soJmRldl9wcml2LT5kcnJzLm11dGV4
KTsNCj4gPiArDQo+ID4gIAlpZiAoZGV2X3ByaXYtPmRycnMuZHApIHsNCj4gPiAtCQlkcm1fZGJn
X2ttcygmZGV2X3ByaXYtPmRybSwgIkRSUlMgYWxyZWFkeSBlbmFibGVkXG4iKTsNCj4gPiArCQlk
cm1fd2FybigmZGV2X3ByaXYtPmRybSwgIkRSUlMgYWxyZWFkeSBlbmFibGVkXG4iKTsNCj4gPiAg
CQlnb3RvIHVubG9jazsNCj4gPiAgCX0NCj4gPiAgDQo+ID4gLQlkZXZfcHJpdi0+ZHJycy5idXN5
X2Zyb250YnVmZmVyX2JpdHMgPSAwOw0KPiA+IC0NCj4gPiAtCWRldl9wcml2LT5kcnJzLmRwID0g
aW50ZWxfZHA7DQo+ID4gKwlpbnRlbF9lZHBfZHJyc19lbmFibGVfbG9ja2VkKGludGVsX2RwKTsN
Cj4gPiAgDQo+ID4gIHVubG9jazoNCj4gPiAgCW11dGV4X3VubG9jaygmZGV2X3ByaXYtPmRycnMu
bXV0ZXgpOw0KPiA+ICB9DQo+ID4gIA0KPiA+ICtzdGF0aWMgdm9pZA0KPiA+ICtpbnRlbF9lZHBf
ZHJyc19kaXNhYmxlX2xvY2tlZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+ICsJCQkg
ICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gPiArew0K
PiA+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gZHBfdG9faTkxNShpbnRl
bF9kcCk7DQo+ID4gKw0KPiA+ICsJaWYgKGRldl9wcml2LT5kcnJzLnJlZnJlc2hfcmF0ZV90eXBl
ID09IERSUlNfTE9XX1JSKSB7DQo+ID4gKwkJaW50IHJlZnJlc2g7DQo+ID4gKw0KPiA+ICsJCXJl
ZnJlc2ggPSBkcm1fbW9kZV92cmVmcmVzaChpbnRlbF9kcC0+YXR0YWNoZWRfY29ubmVjdG9yLT5w
YW5lbC5maXhlZF9tb2RlKTsNCj4gPiArCQlpbnRlbF9kcF9zZXRfZHJyc19zdGF0ZShkZXZfcHJp
diwgY3J0Y19zdGF0ZSwgcmVmcmVzaCk7DQo+ID4gKwl9DQo+ID4gKw0KPiA+ICsJZGV2X3ByaXYt
PmRycnMuZHAgPSBOVUxMOw0KPiA+ICt9DQo+ID4gKw0KPiA+ICAvKioNCj4gPiAgICogaW50ZWxf
ZWRwX2RycnNfZGlzYWJsZSAtIERpc2FibGUgRFJSUw0KPiA+ICAgKiBAaW50ZWxfZHA6IERQIHN0
cnVjdA0KPiA+IEBAIC03Nzg1LDE2ICs3ODA4LDQ1IEBAIHZvaWQgaW50ZWxfZWRwX2RycnNfZGlz
YWJsZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+ICAJCXJldHVybjsNCj4gPiAgCX0N
Cj4gPiAgDQo+ID4gLQlpZiAoZGV2X3ByaXYtPmRycnMucmVmcmVzaF9yYXRlX3R5cGUgPT0gRFJS
U19MT1dfUlIpDQo+ID4gLQkJaW50ZWxfZHBfc2V0X2RycnNfc3RhdGUoZGV2X3ByaXYsIG9sZF9j
cnRjX3N0YXRlLA0KPiA+IC0JCQlkcm1fbW9kZV92cmVmcmVzaChpbnRlbF9kcC0+YXR0YWNoZWRf
Y29ubmVjdG9yLT5wYW5lbC5maXhlZF9tb2RlKSk7DQo+ID4gLQ0KPiA+IC0JZGV2X3ByaXYtPmRy
cnMuZHAgPSBOVUxMOw0KPiA+ICsJaW50ZWxfZWRwX2RycnNfZGlzYWJsZV9sb2NrZWQoaW50ZWxf
ZHAsIG9sZF9jcnRjX3N0YXRlKTsNCj4gPiAgCW11dGV4X3VubG9jaygmZGV2X3ByaXYtPmRycnMu
bXV0ZXgpOw0KPiA+ICANCj4gPiAgCWNhbmNlbF9kZWxheWVkX3dvcmtfc3luYygmZGV2X3ByaXYt
PmRycnMud29yayk7DQo+ID4gIH0NCj4gPiAgDQo+ID4gKy8qKg0KPiA+ICsgKiBpbnRlbF9lZHBf
ZHJyc191cGRhdGUgLSBVcGRhdGUgRFJSUyBzdGF0ZQ0KPiA+ICsgKiBAaW50ZWxfZHA6IEludGVs
IERQDQo+ID4gKyAqIEBjcnRjX3N0YXRlOiBuZXcgQ1JUQyBzdGF0ZQ0KPiA+ICsgKg0KPiA+ICsg
KiBUaGlzIGZ1bmN0aW9uIHdpbGwgdXBkYXRlIERSUlMgc3RhdGVzLCBkaXNhYmxpbmcgb3IgZW5h
YmxpbmcgRFJSUyB3aGVuDQo+ID4gKyAqIGV4ZWN1dGluZyBmYXN0c2V0cy4gRm9yIGZ1bGwgbW9k
ZXNldCwgaW50ZWxfZWRwX2RycnNfZGlzYWJsZSgpIGFuZA0KPiA+ICsgKiBpbnRlbF9lZHBfZHJy
c19lbmFibGUoKSBzaG91bGQgYmUgY2FsbGVkIGluc3RlYWQuDQo+ID4gKyAqLw0KPiA+ICt2b2lk
DQo+ID4gK2ludGVsX2VkcF9kcnJzX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0K
PiA+ICsJCSAgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0K
PiA+ICt7DQo+ID4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90b19p
OTE1KGludGVsX2RwKTsNCj4gPiArDQo+ID4gKwlpZiAoZGV2X3ByaXYtPmRycnMudHlwZSAhPSBT
RUFNTEVTU19EUlJTX1NVUFBPUlQpDQo+ID4gKwkJcmV0dXJuOw0KPiA+ICsNCj4gPiArCW11dGV4
X2xvY2soJmRldl9wcml2LT5kcnJzLm11dGV4KTsNCj4gPiArDQo+ID4gKwkvKiBOZXcgc3RhdGUg
bWF0Y2hlcyBjdXJyZW50IG9uZT8gKi8NCj4gPiArCWlmIChjcnRjX3N0YXRlLT5oYXNfZHJycyA9
PSAhIWRldl9wcml2LT5kcnJzLmRwKQ0KPiA+ICsJCWdvdG8gdW5sb2NrOw0KPiA+ICsNCj4gPiAr
CWlmIChjcnRjX3N0YXRlLT5oYXNfZHJycykNCj4gPiArCQlpbnRlbF9lZHBfZHJyc19lbmFibGVf
bG9ja2VkKGludGVsX2RwKTsNCj4gPiArCWVsc2UNCj4gPiArCQlpbnRlbF9lZHBfZHJyc19kaXNh
YmxlX2xvY2tlZChpbnRlbF9kcCwgY3J0Y19zdGF0ZSk7DQo+ID4gKw0KPiA+ICt1bmxvY2s6DQo+
ID4gKwltdXRleF91bmxvY2soJmRldl9wcml2LT5kcnJzLm11dGV4KTsNCj4gPiArfQ0KPiA+ICsN
Cj4gPiAgc3RhdGljIHZvaWQgaW50ZWxfZWRwX2RycnNfZG93bmNsb2NrX3dvcmsoc3RydWN0IHdv
cmtfc3RydWN0ICp3b3JrKQ0KPiA+ICB7DQo+ID4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYgPQ0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmgNCj4g
PiBpbmRleCBiOTAxYWI4NTBjYmQuLjA1N2IyYzE1MmNiZCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmgNCj4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmgNCj4gPiBAQCAtODEsNiArODEsOCBAQCB2b2lk
IGludGVsX2VkcF9kcnJzX2VuYWJsZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+ICAJ
CQkgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7DQo+ID4gIHZv
aWQgaW50ZWxfZWRwX2RycnNfZGlzYWJsZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+
ICAJCQkgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOw0KPiA+
ICt2b2lkIGludGVsX2VkcF9kcnJzX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0K
PiA+ICsJCQkgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7DQo+
ID4gIHZvaWQgaW50ZWxfZWRwX2RycnNfaW52YWxpZGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYsDQo+ID4gIAkJCSAgICAgICB1bnNpZ25lZCBpbnQgZnJvbnRidWZmZXJfYml0
cyk7DQo+ID4gIHZvaWQgaW50ZWxfZWRwX2RycnNfZmx1c2goc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2LA0KPiA+IC0tIA0KPiA+IDIuMjguMA0KPiA+IA0KPiA+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+ID4gSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdA0KPiA+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiANCj4gPiBo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA0K
PiA+IA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
