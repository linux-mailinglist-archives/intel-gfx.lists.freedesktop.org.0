Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3368532F455
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Mar 2021 21:02:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DDC76EC39;
	Fri,  5 Mar 2021 20:02:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0D216EC39
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Mar 2021 20:01:59 +0000 (UTC)
IronPort-SDR: HErB7dWO5XOsEVQT3CM2FwHNPLsJaFunU331V0nJ5Yz5EySTPUr32pf9pTlgZRzDGwyx9M0dR8
 ieJdY7UMN5tA==
X-IronPort-AV: E=McAfee;i="6000,8403,9914"; a="187779248"
X-IronPort-AV: E=Sophos;i="5.81,226,1610438400"; d="scan'208";a="187779248"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2021 12:01:57 -0800
IronPort-SDR: YDIkJs8ujxQzxJPMKLtvhHpEbyrsfX5Tgg8o80yvdWWzWg+iCTtmpvopHJPL6Wy03XtRPG/pr7
 +NNMW87N57Ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,226,1610438400"; d="scan'208";a="429518461"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 05 Mar 2021 12:01:57 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 5 Mar 2021 12:01:57 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 5 Mar 2021 12:01:55 -0800
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.2106.013;
 Fri, 5 Mar 2021 20:01:54 +0000
From: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH 3/3] drm/i915/display: Introduce new
 intel_psr_pause/resume function
Thread-Index: AQHXEFfSVNMBhZ60vk64cFFuip4FAqp11BaA
Date: Fri, 5 Mar 2021 20:01:54 +0000
Message-ID: <fd0c0cfd872e64ec9e3c24c1362cf5f37ce4c5a5.camel@intel.com>
References: <20210303164201.31301-1-gwan-gyeong.mun@intel.com>
 <20210303164201.31301-3-gwan-gyeong.mun@intel.com>
 <b8446421fbc53983438fad20d41235d49ead8716.camel@intel.com>
In-Reply-To: <b8446421fbc53983438fad20d41235d49ead8716.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.184.70.1]
Content-ID: <A625D9DECFB4F5438BF09A21DFDA10EB@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/display: Introduce new
 intel_psr_pause/resume function
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIxLTAzLTAzIGF0IDEwOjA1IC0wODAwLCBTb3V6YSwgSm9zZSB3cm90ZToNCj4g
cGF0Y2ggMSBpcyBhIG5hY2sgZm9yIHRoZSByZWFzb25zIHRoYXQgVmlsbGUgZXhwbGFpbmVkLg0K
PiANCj4gVGhpcyBvbmUgY291bGQgYmUgc2ltcGxpZmllZCBldmVuIG1vcmUuDQo+IA0KPiBpbnRl
bF9wc3JfZW5hYmxlX2xvY2tlZCgpIHNob3VsZCBoYXZlIGFsbCB0aGUgZGV2X3ByaXYtPnBzci4q
DQo+IGluaXRpYWxpemF0aW9uIGZyb20gY3J0Y19zdGF0ZSArIGludGVsX2RwX2NvbXB1dGVfcHNy
X3ZzY19zZHAoKS4NCj4gVGhlbiBhZGQgYSBmdW5jdGlvbihfaW50ZWxfcHNyX2VuYWJsZV9sb2Nr
ZWQoKSBvciBvdGhlciBiZXR0ZXIgbmFtZQ0KPiB0aGF0IHlvdSBjYW4gdGhpbmspIHdpdGggdGhl
IGVycm9yIGNoZWNraW5nICsgaW50ZWxfd3JpdGVfZHBfdnNjX3NkcCgpDQo+ICsNCj4gaW50ZWxf
cHNyX2VuYWJsZV9zaW5rKCkgKyBpbnRlbF9wc3JfZW5hYmxlX3NvdXJjZSgpICsNCj4gaW50ZWxf
cHNyX2FjdGl2YXRlKCkuLi4NCj4gDQo+IGludGVsX3Bzcl9yZXN1bWUoKQ0KPiDCoMKgwqDCoMKg
wqDCoMKgdGFrZSBsb29jaw0KPiDCoMKgwqDCoMKgwqDCoMKgY2hlY2tzDQo+IMKgwqDCoMKgwqDC
oMKgwqBfaW50ZWxfcHNyX2VuYWJsZV9sb2NrZWQoKQ0KPiDCoMKgwqDCoMKgwqDCoMKgdW5sb2Nr
KCkNCj4gwqDCoMKgwqDCoMKgwqDCoA0KPiANCkhpLCB0aGFua3MgZm9yIGNoZWNraW5nIGl0Lg0K
SSdsbCBmbG9hdCBhIG5ldyBwYXRjaCB0aGF0IGFkZHJlc3NlcyB5b3VyIGNvbW1lbnRzLg0KDQo+
IA0KPiBPbiBXZWQsIDIwMjEtMDMtMDMgYXQgMTg6NDIgKzAyMDAsIEd3YW4tZ3llb25nIE11biB3
cm90ZToNCj4gPiBUaGlzIGludHJvZHVjZXMgdGhlIGZvbGxvd2luZyBmdW5jdGlvbiB0aGF0IGNh
biBlbmFibGUgYW5kIGRpc2FibGUNCj4gPiBwc3INCj4gPiB3aXRob3V0IGludGVsX2NydGNfc3Rh
dGUgd2hlbiBpbnRlbF9wc3IgaXMgYWxyZWFkeSBlbmFibGVkIHdpdGgNCj4gPiBjdXJyZW50DQo+
ID4gaW50ZWxfY3J0Y19zdGF0ZSBpbmZvcm1hdGlvbi4NCj4gPiANCj4gPiAtIGludGVsX3Bzcl9w
YXVzZSgpOiBQYXVzZSBjdXJyZW50IFBTUi4gaXQgZGVhY3RpdmF0ZXMgY3VycmVudCBwc3INCj4g
PiBzdGF0ZS4NCj4gPiAtIGludGVsX3Bzcl9yZXN1bWUoKTogUmVzdW1lIHBhdXNlZCBQU1Igd2l0
aG91dCBpbnRlbF9jcnRjX3N0YXRlLg0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgSXQgYWN0aXZhdGVzIHBhdXNlZCBwc3Igc3RhdGUuDQo+ID4gDQo+ID4g
Q2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiA+IENj
OiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4NCj4g
PiBTaWduZWQtb2ZmLWJ5OiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5j
b20+DQo+ID4gLS0tDQo+ID4gwqAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5
cGVzLmjCoMKgwqAgfMKgwqAgMSArDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jwqDCoMKgwqDCoCB8IDExMSArKysrKysrKysrKysrKystDQo+ID4gLS0NCj4g
PiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmjCoMKgwqDCoMKgIHzC
oMKgIDIgKw0KPiA+IMKgMyBmaWxlcyBjaGFuZ2VkLCA5NyBpbnNlcnRpb25zKCspLCAxNyBkZWxl
dGlvbnMoLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ID4gaW5kZXggZjY5YmQxY2FlYmJmLi5kNDli
NzlhMDY5MWEgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+IEBAIC0xNDU0LDYgKzE0NTQsNyBAQCBzdHJ1
Y3QgaW50ZWxfcHNyIHsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgdTE2IHN1X3hfZ3JhbnVsYXJpdHk7
DQo+ID4gwqDCoMKgwqDCoMKgwqDCoHUzMiBkYzNjb19leGl0bGluZTsNCj4gPiDCoMKgwqDCoMKg
wqDCoMKgdTMyIGRjM2NvX2V4aXRfZGVsYXk7DQo+ID4gK8KgwqDCoMKgwqDCoMKgYm9vbCBwYXVz
ZWQ7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBkZWxheWVkX3dvcmsgZGMzY29fd29yazsN
Cj4gPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9kcF92c2Nfc2RwIHZzYzsNCj4gPiDCoH07
DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBp
bmRleCBlYThmOTU5OGU2YTMuLjUzM2ZjMjFmNDM1MiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IEBAIC05NTcsMjYgKzk1NywxMSBAQCBz
dGF0aWMgdm9pZCBpbnRlbF9wc3JfZW5hYmxlX3NvdXJjZShzdHJ1Y3QNCj4gPiBpbnRlbF9kcCAq
aW50ZWxfZHApDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgSUdOT1JFX1BTUjJfSFdfVFJBQ0tJTkcgOiAwKTsNCj4gPiDCoH0NCj4g
PiDCoA0KPiA+IA0KPiA+IC1zdGF0aWMgdm9pZCBpbnRlbF9wc3JfZW5hYmxlX2xvY2tlZChzdHJ1
Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZQ0KPiA+ICpjcnRjX3N0YXRlLA0KPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb25zdCBz
dHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZQ0KPiA+ICpjb25uX3N0YXRlKQ0KPiA+ICtzdGF0aWMg
Ym9vbCBwc3JfaW50ZXJydXB0X2Vycm9yX2NoZWNrKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAp
DQo+ID4gwqB7DQo+ID4gLcKgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAq
ZGlnX3BvcnQgPQ0KPiA+IGRwX3RvX2RpZ19wb3J0KGludGVsX2RwKTsNCj4gPiDCoMKgwqDCoMKg
wqDCoMKgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gZHBfdG9faTkxNShpbnRl
bF9kcCk7DQo+ID4gLcKgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIg
PSAmZGlnX3BvcnQtPmJhc2U7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoHUzMiB2YWw7DQo+ID4gwqAN
Cj4gPiANCj4gPiAtwqDCoMKgwqDCoMKgwqBkcm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwgaW50
ZWxfZHAtPnBzci5lbmFibGVkKTsNCj4gPiAtDQo+ID4gLcKgwqDCoMKgwqDCoMKgaW50ZWxfZHAt
PnBzci5wc3IyX2VuYWJsZWQgPSBjcnRjX3N0YXRlLT5oYXNfcHNyMjsNCj4gPiAtwqDCoMKgwqDC
oMKgwqBpbnRlbF9kcC0+cHNyLmJ1c3lfZnJvbnRidWZmZXJfYml0cyA9IDA7DQo+ID4gLcKgwqDC
oMKgwqDCoMKgaW50ZWxfZHAtPnBzci5waXBlID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT51
YXBpLmNydGMpLQ0KPiA+ID5waXBlOw0KPiA+IC3CoMKgwqDCoMKgwqDCoGludGVsX2RwLT5wc3Iu
dHJhbnNjb2RlciA9IGNydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyOw0KPiA+IC3CoMKgwqDCoMKg
wqDCoC8qIERDNS9EQzYgcmVxdWlyZXMgYXQgbGVhc3QgNiBpZGxlIGZyYW1lcyAqLw0KPiA+IC3C
oMKgwqDCoMKgwqDCoHZhbCA9IHVzZWNzX3RvX2ppZmZpZXMoaW50ZWxfZ2V0X2ZyYW1lX3RpbWVf
dXMoY3J0Y19zdGF0ZSkgKg0KPiA+IDYpOw0KPiA+IC3CoMKgwqDCoMKgwqDCoGludGVsX2RwLT5w
c3IuZGMzY29fZXhpdF9kZWxheSA9IHZhbDsNCj4gPiAtwqDCoMKgwqDCoMKgwqBpbnRlbF9kcC0+
cHNyLnBzcjJfc2VsX2ZldGNoX2VuYWJsZWQgPSBjcnRjX3N0YXRlLQ0KPiA+ID5lbmFibGVfcHNy
Ml9zZWxfZmV0Y2g7DQo+ID4gLQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqAvKg0KPiA+IMKgwqDCoMKg
wqDCoMKgwqAgKiBJZiBhIFBTUiBlcnJvciBoYXBwZW5lZCBhbmQgdGhlIGRyaXZlciBpcyByZWxv
YWRlZCwgdGhlDQo+ID4gRURQX1BTUl9JSVINCj4gPiDCoMKgwqDCoMKgwqDCoMKgICogd2lsbCBz
dGlsbCBrZWVwIHRoZSBlcnJvciBzZXQgZXZlbiBhZnRlciB0aGUgcmVzZXQgZG9uZSBpbg0KPiA+
IHRoZQ0KPiA+IEBAIC05OTcsOSArOTgyLDM2IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9lbmFi
bGVfbG9ja2VkKHN0cnVjdA0KPiA+IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVsX2RwLT5wc3Iuc2lua19ub3RfcmVsaWFibGUgPSB0
cnVlOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZHJtX2RiZ19rbXMoJmRl
dl9wcml2LT5kcm0sDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgICJQU1IgaW50ZXJydXB0aW9uIGVycm9yIHNldCwgbm90IGVuYWJsaW5n
DQo+ID4gUFNSXG4iKTsNCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJu
Ow0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gZmFsc2U7DQo+ID4g
wqDCoMKgwqDCoMKgwqDCoH0NCj4gPiDCoA0KPiA+IA0KPiA+ICvCoMKgwqDCoMKgwqDCoHJldHVy
biB0cnVlOw0KPiA+ICt9DQo+ID4gKw0KPiA+ICtzdGF0aWMgdm9pZCBpbnRlbF9wc3JfZW5hYmxl
X2xvY2tlZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb25z
dCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ICpjcnRjX3N0YXRlLA0KPiA+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBjb25zdCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZQ0KPiA+ICpjb25uX3N0YXRlKQ0K
PiA+ICt7DQo+ID4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGln
X3BvcnQgPQ0KPiA+IGRwX3RvX2RpZ19wb3J0KGludGVsX2RwKTsNCj4gPiArwqDCoMKgwqDCoMKg
wqBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90b19pOTE1KGludGVsX2Rw
KTsNCj4gPiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciA9ICZk
aWdfcG9ydC0+YmFzZTsNCj4gPiArwqDCoMKgwqDCoMKgwqB1MzIgdmFsOw0KPiA+ICsNCj4gPiAr
wqDCoMKgwqDCoMKgwqBkcm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwgaW50ZWxfZHAtPnBzci5l
bmFibGVkKTsNCj4gPiArDQo+ID4gK8KgwqDCoMKgwqDCoMKgaW50ZWxfZHAtPnBzci5wc3IyX2Vu
YWJsZWQgPSBjcnRjX3N0YXRlLT5oYXNfcHNyMjsNCj4gPiArwqDCoMKgwqDCoMKgwqBpbnRlbF9k
cC0+cHNyLmJ1c3lfZnJvbnRidWZmZXJfYml0cyA9IDA7DQo+ID4gK8KgwqDCoMKgwqDCoMKgaW50
ZWxfZHAtPnBzci5waXBlID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT51YXBpLmNydGMpLQ0K
PiA+ID5waXBlOw0KPiA+ICvCoMKgwqDCoMKgwqDCoGludGVsX2RwLT5wc3IudHJhbnNjb2RlciA9
IGNydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyOw0KPiA+ICvCoMKgwqDCoMKgwqDCoC8qIERDNS9E
QzYgcmVxdWlyZXMgYXQgbGVhc3QgNiBpZGxlIGZyYW1lcyAqLw0KPiA+ICvCoMKgwqDCoMKgwqDC
oHZhbCA9IHVzZWNzX3RvX2ppZmZpZXMoaW50ZWxfZ2V0X2ZyYW1lX3RpbWVfdXMoY3J0Y19zdGF0
ZSkgKg0KPiA+IDYpOw0KPiA+ICvCoMKgwqDCoMKgwqDCoGludGVsX2RwLT5wc3IuZGMzY29fZXhp
dF9kZWxheSA9IHZhbDsNCj4gPiArwqDCoMKgwqDCoMKgwqBpbnRlbF9kcC0+cHNyLnBzcjJfc2Vs
X2ZldGNoX2VuYWJsZWQgPSBjcnRjX3N0YXRlLQ0KPiA+ID5lbmFibGVfcHNyMl9zZWxfZmV0Y2g7
DQo+ID4gK8KgwqDCoMKgwqDCoMKgaW50ZWxfZHAtPnBzci5wYXVzZWQgPSBmYWxzZTsNCj4gPiAr
DQo+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKCFwc3JfaW50ZXJydXB0X2Vycm9yX2NoZWNrKGludGVs
X2RwKSkNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuOw0KPiA+ICsN
Cj4gPiDCoMKgwqDCoMKgwqDCoMKgZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sICJFbmFibGlu
ZyBQU1Ilc1xuIiwNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBp
bnRlbF9kcC0+cHNyLnBzcjJfZW5hYmxlZCA/ICIyIiA6ICIxIik7DQo+ID4gwqDCoMKgwqDCoMKg
wqDCoGludGVsX2RwX2NvbXB1dGVfcHNyX3ZzY19zZHAoaW50ZWxfZHAsIGNydGNfc3RhdGUsDQo+
ID4gY29ubl9zdGF0ZSwNCj4gPiBAQCAtMTE0OSw2ICsxMTYxLDcxIEBAIHZvaWQgaW50ZWxfcHNy
X2Rpc2FibGUoc3RydWN0IGludGVsX2RwDQo+ID4gKmludGVsX2RwLA0KPiA+IMKgwqDCoMKgwqDC
oMKgwqBjYW5jZWxfZGVsYXllZF93b3JrX3N5bmMoJmludGVsX2RwLT5wc3IuZGMzY29fd29yayk7
DQo+ID4gwqB9DQo+ID4gwqANCj4gPiANCj4gPiArLyoqDQo+ID4gKyAqIGludGVsX3Bzcl9wYXVz
ZSAtIFBhdXNlIFBTUg0KPiA+ICsgKiBAaW50ZWxfZHA6IEludGVsIERQDQo+ID4gKyAqDQo+ID4g
KyAqIFRoaXMgZnVuY3Rpb24gbmVlZCB0byBiZSBjYWxsZWQgYWZ0ZXIgZW5hYmxpbmcgcHNyLg0K
PiA+ICsgKi8NCj4gPiArdm9pZCBpbnRlbF9wc3JfcGF1c2Uoc3RydWN0IGludGVsX2RwICppbnRl
bF9kcCkNCj4gPiArew0KPiA+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9wc3IgKnBzciA9
ICZpbnRlbF9kcC0+cHNyOw0KPiA+ICsNCj4gPiArwqDCoMKgwqDCoMKgwqBpZiAoIUNBTl9QU1Io
aW50ZWxfZHApKQ0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm47DQo+
ID4gKw0KPiA+ICvCoMKgwqDCoMKgwqDCoG11dGV4X2xvY2soJnBzci0+bG9jayk7DQo+ID4gKw0K
PiA+ICvCoMKgwqDCoMKgwqDCoGlmICghcHNyLT5lbmFibGVkIHx8IHBzci0+cGF1c2VkKSB7DQo+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoG11dGV4X3VubG9jaygmcHNyLT5sb2Nr
KTsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuOw0KPiA+ICvCoMKg
wqDCoMKgwqDCoH0NCj4gPiArDQo+ID4gK8KgwqDCoMKgwqDCoMKgaW50ZWxfcHNyX2Rpc2FibGVf
bG9ja2VkKGludGVsX2RwKTsNCj4gPiArwqDCoMKgwqDCoMKgwqBwc3ItPnBhdXNlZCA9IHRydWU7
DQo+ID4gKw0KPiA+ICvCoMKgwqDCoMKgwqDCoG11dGV4X3VubG9jaygmcHNyLT5sb2NrKTsNCj4g
PiArDQo+ID4gK8KgwqDCoMKgwqDCoMKgY2FuY2VsX3dvcmtfc3luYygmcHNyLT53b3JrKTsNCj4g
PiArwqDCoMKgwqDCoMKgwqBjYW5jZWxfZGVsYXllZF93b3JrX3N5bmMoJnBzci0+ZGMzY29fd29y
ayk7DQo+ID4gK30NCj4gPiArDQo+ID4gKy8qKg0KPiA+ICsgKiBpbnRlbF9wc3JfcmVzdW1lIC0g
UmVzdW1lIFBTUg0KPiA+ICsgKiBAaW50ZWxfZHA6IEludGVsIERQDQo+ID4gKyAqDQo+ID4gKyAq
IFRoaXMgZnVuY3Rpb24gbmVlZCB0byBiZSBjYWxsZWQgYWZ0ZXIgcGF1c2luZyBwc3IuDQo+ID4g
KyAqLw0KPiA+ICt2b2lkIGludGVsX3Bzcl9yZXN1bWUoc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCkNCj4gPiArew0KPiA+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOw0KPiA+ICvCoMKgwqDCoMKgwqDCoHN0cnVj
dCBpbnRlbF9wc3IgKnBzciA9ICZpbnRlbF9kcC0+cHNyOw0KPiA+ICsNCj4gPiArwqDCoMKgwqDC
oMKgwqBpZiAoIUNBTl9QU1IoaW50ZWxfZHApKQ0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqByZXR1cm47DQo+ID4gKw0KPiA+ICvCoMKgwqDCoMKgwqDCoG11dGV4X2xvY2soJnBz
ci0+bG9jayk7DQo+ID4gKw0KPiA+ICvCoMKgwqDCoMKgwqDCoGlmIChwc3ItPmVuYWJsZWQgfHwg
IXBzci0+cGF1c2VkKQ0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBnb3RvIHVu
bG9jazsNCj4gPiArDQo+ID4gK8KgwqDCoMKgwqDCoMKgcHNyLT5wYXVzZWQgPSBmYWxzZTsNCj4g
PiArDQo+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKCFwc3JfaW50ZXJydXB0X2Vycm9yX2NoZWNrKGlu
dGVsX2RwKSkNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZ290byB1bmxvY2s7
DQo+ID4gKw0KPiA+ICvCoMKgwqDCoMKgwqDCoGRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLCAi
RW5hYmxpbmcgUFNSJXNcbiIsDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBwc3ItPnBzcjJfZW5hYmxlZCA/ICIyIiA6ICIxIik7DQo+ID4gK8KgwqDCoMKgwqDCoMKg
aW50ZWxfcHNyX2VuYWJsZV9zaW5rKGludGVsX2RwKTsNCj4gPiArwqDCoMKgwqDCoMKgwqBpbnRl
bF9wc3JfZW5hYmxlX3NvdXJjZShpbnRlbF9kcCk7DQo+ID4gK8KgwqDCoMKgwqDCoMKgaW50ZWxf
ZHAtPnBzci5lbmFibGVkID0gdHJ1ZTsNCj4gPiArDQo+ID4gK8KgwqDCoMKgwqDCoMKgaW50ZWxf
cHNyX2FjdGl2YXRlKGludGVsX2RwKTsNCj4gPiArDQo+ID4gK3VubG9jazoNCj4gPiArwqDCoMKg
wqDCoMKgwqBtdXRleF91bmxvY2soJnBzci0+bG9jayk7DQo+ID4gK30NCj4gPiArDQo+ID4gwqBz
dGF0aWMgdm9pZCBwc3JfZm9yY2VfaHdfdHJhY2tpbmdfZXhpdChzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwKQ0KPiA+IMKgew0KPiA+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYgPSBkcF90b19pOTE1KGludGVsX2RwKTsNCj4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaA0KPiA+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaA0KPiA+IGluZGV4IDA0OTFhNDlmZmQ1MC4u
OGNjNWU3OGZiMWQyIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5oDQo+ID4gQEAgLTQ4LDUgKzQ4LDcgQEAgdm9pZCBpbnRlbF9wc3IyX3Byb2dyYW1f
cGxhbmVfc2VsX2ZldGNoKHN0cnVjdA0KPiA+IGludGVsX3BsYW5lICpwbGFuZSwNCj4gPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gKmNy
dGNfc3RhdGUsDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjb25zdCBzdHJ1Y3QNCj4gPiBp
bnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUsDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBpbnQgY29sb3JfcGxhbmUpOw0KPiA+ICt2b2lkIGludGVsX3Bzcl9wYXVzZShzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwKTsNCj4gPiArdm9pZCBpbnRlbF9wc3JfcmVzdW1lKHN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHApOw0KPiA+IMKgDQo+ID4gDQo+ID4gwqAjZW5kaWYgLyogX19JTlRFTF9Q
U1JfSF9fICovDQo+IA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
