Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97513A607D
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2019 07:24:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEA6D89998;
	Tue,  3 Sep 2019 05:24:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6128C89998;
 Tue,  3 Sep 2019 05:24:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Sep 2019 22:24:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,461,1559545200"; d="scan'208";a="187147593"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
 by orsmga006.jf.intel.com with ESMTP; 02 Sep 2019 22:24:18 -0700
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.187]) by
 IRSMSX104.ger.corp.intel.com ([169.254.5.21]) with mapi id 14.03.0439.000;
 Tue, 3 Sep 2019 06:24:17 +0100
From: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 5/6] drm/i915/dp: Program an Infoframe SDP Header
 and DB for HDR Static Metadata
Thread-Index: AQHVXEar5G8oTI3/pU6Ekk7oXKU476cZZlcA
Date: Tue, 3 Sep 2019 05:24:17 +0000
Message-ID: <6b3795cf4aa789b35b24d7ad577582a11f507d06.camel@intel.com>
References: <20190823095232.28908-1-gwan-gyeong.mun@intel.com>
 <20190823095232.28908-6-gwan-gyeong.mun@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F821D1E74@BGSMSX104.gar.corp.intel.com>
In-Reply-To: <E7C9878FBA1C6D42A1CA3F62AEB6945F821D1E74@BGSMSX104.gar.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.66.149]
Content-ID: <983A2CF2BEE00E4ABF19F1F174949A93@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 5/6] drm/i915/dp: Program an Infoframe
 SDP Header and DB for HDR Static Metadata
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
Cc: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDE5LTA4LTI3IGF0IDAxOjE0ICswNTMwLCBTaGFua2FyLCBVbWEgd3JvdGU6DQo+
ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBNdW4sIEd3YW4tZ3llb25n
DQo+ID4gU2VudDogRnJpZGF5LCBBdWd1c3QgMjMsIDIwMTkgMzoyMyBQTQ0KPiA+IFRvOiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmc7IFNoYW5rYXIsIFVtYSA8DQo+ID4gdW1hLnNoYW5rYXJAaW50ZWwuY29tPjsN
Cj4gPiBTaGFybWEsIFNoYXNoYW5rIDxzaGFzaGFuay5zaGFybWFAaW50ZWwuY29tPg0KPiA+IFN1
YmplY3Q6IFtQQVRDSCB2MiA1LzZdIGRybS9pOTE1L2RwOiBQcm9ncmFtIGFuIEluZm9mcmFtZSBT
RFANCj4gPiBIZWFkZXIgYW5kIERCIGZvcg0KPiA+IEhEUiBTdGF0aWMgTWV0YWRhdGENCj4gPiAN
Cj4gPiBGdW5jdGlvbiBpbnRlbF9kcF9zZXR1cF9oZHJfbWV0YWRhdGFfaW5mb2ZyYW1lX3NkcCBo
YW5kbGVzDQo+ID4gSW5mb2ZyYW1lIFNEUA0KPiA+IGhlYWRlciBhbmQgZGF0YSBibG9jayBzZXR1
cCBmb3IgSERSIFN0YXRpYyBNZXRhZGF0YS4gSXQgZW5hYmxlcw0KPiA+IHdyaXRpbmcgb2YgSERS
DQo+ID4gbWV0YWRhdGEgaW5mb2ZyYW1lIFNEUCB0byBwYW5lbC4gU3VwcG9ydCBmb3IgSERSIHZp
ZGVvIHdhcw0KPiA+IGludHJvZHVjZWQgaW4NCj4gPiBEaXNwbGF5UG9ydCAxLjQuIEl0IGltcGxl
bWVudHMgdGhlIENUQS04NjEtRyBzdGFuZGFyZCBmb3IgdHJhbnNwb3J0DQo+ID4gb2Ygc3RhdGlj
IEhEUg0KPiA+IG1ldGFkYXRhLiBUaGUgSERSIE1ldGFkYXRhIHdpbGwgYmUgcHJvdmlkZWQgYnkg
dXNlcnNwYWNlDQo+ID4gY29tcG9zaXRvcnMsIGJhc2VkIG9uDQo+ID4gYmxlbmRpbmcgcG9saWNp
ZXMgYW5kIHBhc3NlZCB0byB0aGUgZHJpdmVyIHRocm91Z2ggYSBibG9iIHByb3BlcnR5Lg0KPiA+
IA0KPiA+IEJlY2F1c2UgZWFjaCBvZiBHRU4xMSBhbmQgcHJpb3IgR0VOMTEgaGF2ZSBkaWZmZXJl
bnQgcmVnaXN0ZXIgc2l6ZQ0KPiA+IGZvciBIRFINCj4gPiBNZXRhZGF0YSBJbmZvZnJhbWUgU0RQ
IHBhY2tldCwgaXQgYWRkcyBhbmQgdXNlcyBkaWZmZXJlbnQgcmVnaXN0ZXINCj4gPiBzaXplLg0K
PiA+IA0KPiA+IFNldHVwIEluZm9mcmFtZSBTRFAgaGVhZGVyIGFuZCBkYXRhIGJsb2NrIGluIGZ1
bmN0aW9uDQo+ID4gaW50ZWxfZHBfc2V0dXBfaGRyX21ldGFkYXRhX2luZm9mcmFtZV9zZHAgZm9y
IEhEUiBTdGF0aWMgTWV0YWRhdGENCj4gPiBhcyBwZXIgZHAgMS40DQo+ID4gc3BlYyBhbmQgQ1RB
LTg2MS1GIHNwZWMuDQo+ID4gQXMgcGVyIERQIDEuNCBzcGVjLCAyLjIuMi41IFNEUCBGb3JtYXRz
LiBJdCBlbmFibGVzIER5bmFtaWMgUmFuZ2UNCj4gPiBhbmQgTWFzdGVyaW5nDQo+ID4gSW5mb2Zy
YW1lIGZvciBIRFIgY29udGVudCwgd2hpY2ggaXMgZGVmaW5lZCBpbiBDVEEtODYxLUYgc3BlYy4N
Cj4gPiBBY2NvcmRpbmcgdG8gRFAgMS40IHNwZWMgYW5kIENFQS04NjEtRiBzcGVjIFRhYmxlIDUs
IGluIG9yZGVyIHRvDQo+ID4gdHJhbnNtaXQgc3RhdGljIEhEUg0KPiA+IG1ldGFkYXRhLCB3ZSBo
YXZlIHRvIHVzZSBOb24tYXVkaW8gSU5GT0ZSQU1FIFNEUCB2MS4zLg0KPiA+IA0KPiA+ICstLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tKw0KPiA+ID4gICAgICBbIFBhY2tldCBUeXBlIFZhbHVlIF0gICAgIHwgICAgICAgWyBQYWNr
ZXQgVHlwZSBdICAgICAgICAgfA0KPiA+ICstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LSstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKw0KPiA+ID4gODBoICsgTm9uLWF1ZGlv
IElORk9GUkFNRSBUeXBlIHwgQ0VBLTg2MS1GIE5vbi1hdWRpbyBJTkZPRlJBTUUgfA0KPiA+ICst
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tKw0KPiA+ID4gICAgICBbVHJhbnNtaXNzaW9uIFRpbWluZ10gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgfA0KPiA+ICstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKw0KPiA+ID4gQXMgcGVyIENFQS04
NjEtRiBmb3IgSU5GT0ZSQU1FLCBpbmNsdWRpbmcgQ0VBLTg2MS4zIHdpdGhpbiAgICAgfA0KPiA+
ID4gd2hpY2ggRHluYW1pYyBSYW5nZSBhbmQgTWFzdGVyaW5nIElORk9GUkFNRSBhcmUgZGVmaW5l
ZCAgICAgICAgfA0KPiA+ICstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKw0KPiA+IA0KPiA+IHYyOiBBZGQgYSBtaXNzZWQgYmxh
bmsgbGluZSBhZnRlciBmdW5jdGlvbiBkZWNsYXJhdGlvbi4NCj4gPiANCj4gPiBTaWduZWQtb2Zm
LWJ5OiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+DQo+ID4gLS0t
DQo+ID4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8ICAxICsNCj4g
PiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgIHwgOTENCj4gPiArKysr
KysrKysrKysrKysrKysrKysrKysNCj4gPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmggIHwgIDMgKw0KPiA+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAg
ICAgICAgfCAgMSArDQo+ID4gNCBmaWxlcyBjaGFuZ2VkLCA5NiBpbnNlcnRpb25zKCspDQo+ID4g
DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRp
LmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gPiBp
bmRleCA1YzQyYjU4YzFjMmYuLjlmNWJlYTk0MWJjZCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiA+IEBAIC0zNDc4LDYgKzM0NzgsNyBAQCBz
dGF0aWMgdm9pZCBpbnRlbF9lbmFibGVfZGRpX2RwKHN0cnVjdA0KPiA+IGludGVsX2VuY29kZXIN
Cj4gPiAqZW5jb2RlciwNCj4gPiAJaW50ZWxfZWRwX2JhY2tsaWdodF9vbihjcnRjX3N0YXRlLCBj
b25uX3N0YXRlKTsNCj4gPiAJaW50ZWxfcHNyX2VuYWJsZShpbnRlbF9kcCwgY3J0Y19zdGF0ZSk7
DQo+ID4gCWludGVsX2RwX3ZzY19lbmFibGUoaW50ZWxfZHAsIGNydGNfc3RhdGUsIGNvbm5fc3Rh
dGUpOw0KPiA+ICsJaW50ZWxfZHBfaGRyX21ldGFkYXRhX2VuYWJsZShpbnRlbF9kcCwgY3J0Y19z
dGF0ZSwgY29ubl9zdGF0ZSk7DQo+ID4gCWludGVsX2VkcF9kcnJzX2VuYWJsZShpbnRlbF9kcCwg
Y3J0Y19zdGF0ZSk7DQo+ID4gDQo+ID4gCWlmIChjcnRjX3N0YXRlLT5oYXNfYXVkaW8pDQo+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gaW5kZXggNzIx
OGUxNTlmNTVkLi4wMGRhODIyMWVhYmEgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gQEAgLTQ1NTQsNiArNDU1NCw4NSBAQCBpbnRlbF9kcF9z
ZXR1cF92c2Nfc2RwKHN0cnVjdCBpbnRlbF9kcA0KPiA+ICppbnRlbF9kcCwNCj4gPiAJCQljcnRj
X3N0YXRlLCBEUF9TRFBfVlNDLCAmdnNjX3NkcCwNCj4gPiBzaXplb2YodnNjX3NkcCkpOyAgfQ0K
PiA+IA0KPiA+ICtzdGF0aWMgaW50DQo+ID4gK2ludGVsX2RwX3NldHVwX2hkcl9tZXRhZGF0YV9p
bmZvZnJhbWVfc2RwKHN0cnVjdCBpbnRlbF9kcA0KPiA+ICppbnRlbF9kcCwNCj4gPiArCQkJCQkg
IGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gKmNydGNfc3RhdGUsDQo+ID4gKwkJ
CQkJICBjb25zdCBzdHJ1Y3QNCj4gPiBkcm1fY29ubmVjdG9yX3N0YXRlDQo+IA0KPiBUaGUgcmV0
dXJuIHZhbHVlIGlzIG5vdCBoYW5kbGVkLCB5b3UgbWF5IGNvbnZlcnQgaXQgYXMgdm9pZC4NCj4g
DQpPa2F5LCBJJ2xsIHJlbW92ZSB0aGUgcmV0dXJuIHZhbHVlcyB3aGljaCBpcyBub3QgaGFuZGxl
ZCBmcm9tDQppbnRlbF9kcF9zZXR1cF9oZHJfbWV0YWRhdGFfaW5mb2ZyYW1lX3NkcCgpLg0KDQo+
ID4gKmNvbm5fc3RhdGUpIHsNCj4gPiArCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVs
X2RpZ19wb3J0ID0NCj4gPiBkcF90b19kaWdfcG9ydChpbnRlbF9kcCk7DQo+ID4gKwlzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGludGVsX2RpZ19wb3J0LQ0KPiA+
ID5iYXNlLmJhc2UuZGV2KTsNCj4gPiArCXN0cnVjdCBkcF9zZHAgaW5mb2ZyYW1lX3NkcCA9IHt9
Ow0KPiA+ICsJc3RydWN0IGhkbWlfZHJtX2luZm9mcmFtZSBkcm1faW5mb2ZyYW1lID0ge307DQo+
ID4gKwljb25zdCBpbnQgaW5mb2ZyYW1lX3NpemUgPSBIRE1JX0lORk9GUkFNRV9IRUFERVJfU0la
RSArDQo+ID4gSERNSV9EUk1fSU5GT0ZSQU1FX1NJWkU7DQo+ID4gKwl1bnNpZ25lZCBjaGFyIGJ1
ZltIRE1JX0lORk9GUkFNRV9IRUFERVJfU0laRSArDQo+ID4gSERNSV9EUk1fSU5GT0ZSQU1FX1NJ
WkVdOw0KPiA+ICsJc3NpemVfdCBsZW47DQo+ID4gKwlpbnQgcmV0Ow0KPiA+ICsNCj4gPiArCXJl
dCA9IGRybV9oZG1pX2luZm9mcmFtZV9zZXRfaGRyX21ldGFkYXRhKCZkcm1faW5mb2ZyYW1lLA0K
PiA+IGNvbm5fc3RhdGUpOw0KPiA+ICsJaWYgKHJldCkgew0KPiA+ICsJCURSTV9ERUJVR19LTVMo
ImNvdWxkbid0IHNldCBIRFIgbWV0YWRhdGEgaW4NCj4gPiBpbmZvZnJhbWVcbiIpOw0KPiA+ICsJ
CXJldHVybiByZXQ7DQo+ID4gKwl9DQo+ID4gKw0KPiA+ICsJbGVuID0gaGRtaV9kcm1faW5mb2Zy
YW1lX3BhY2tfb25seSgmZHJtX2luZm9mcmFtZSwgYnVmLA0KPiA+IHNpemVvZihidWYpKTsNCj4g
PiArCWlmIChsZW4gPCAwKSB7DQo+ID4gKwkJRFJNX0RFQlVHX0tNUygiYnVmZmVyIHNpemUgaXMg
c21hbGxlciB0aGFuIGhkciBtZXRhZGF0YQ0KPiA+IGluZm9mcmFtZVxuIik7DQo+ID4gKwkJcmV0
dXJuIChpbnQpbGVuOw0KPiANCj4gSWYgbWFkZSB2b2lkLCB0aGlzIHdpbGwgbm90IGJlIHJlcXVp
cmVkLg0KPiANCj4gPiArCX0NCj4gPiArDQo+ID4gKwlpZiAobGVuICE9IGluZm9mcmFtZV9zaXpl
KSB7DQo+ID4gKwkJRFJNX0RFQlVHX0tNUygid3Jvbmcgc3RhdGljIGhkciBtZXRhZGF0YSBzaXpl
XG4iKTsNCj4gPiArCQlyZXR1cm4gLUVJTlZBTDsNCj4gPiArCX0NCj4gPiArDQo+ID4gKwkvKg0K
PiA+ICsJICogU2V0IHVwIHRoZSBpbmZvZnJhbWUgc2RwIHBhY2tldCBmb3IgSERSIHN0YXRpYyBt
ZXRhZGF0YS4NCj4gPiArCSAqIFByZXBhcmUgVlNDIEhlYWRlciBmb3IgU1UgYXMgcGVyIERQIDEu
NGEgc3BlYywNCj4gPiArCSAqIFRhYmxlIDItMTAwIGFuZCBUYWJsZSAyLTEwMQ0KPiA+ICsJICov
DQo+ID4gKw0KPiA+ICsJLyogUGFja2V0IElELCAwMGggZm9yIG5vbi1BdWRpbyBJTkZPRlJBTUUg
Ki8NCj4gPiArCWluZm9mcmFtZV9zZHAuc2RwX2hlYWRlci5IQjAgPSAwOw0KPiA+ICsJLyoNCj4g
PiArCSAqIFBhY2tldCBUeXBlIDgwaCArIE5vbi1hdWRpbyBJTkZPRlJBTUUgVHlwZSB2YWx1ZQ0K
PiA+ICsJICogSERNSV9JTkZPRlJBTUVfVFlQRV9EUk06IDB4ODcsDQo+ID4gKwkgKi8NCj4gPiAr
CWluZm9mcmFtZV9zZHAuc2RwX2hlYWRlci5IQjEgPSBkcm1faW5mb2ZyYW1lLnR5cGU7DQo+ID4g
KwkvKg0KPiA+ICsJICogTGVhc3QgU2lnbmlmaWNhbnQgRWlnaHQgQml0cyBvZiAoRGF0YSBCeXRl
IENvdW50IOKAkyAxKQ0KPiA+ICsJICogaW5mb2ZyYW1lX3NpemUgLSAxLA0KPiA+ICsJICovDQo+
ID4gKwlpbmZvZnJhbWVfc2RwLnNkcF9oZWFkZXIuSEIyID0gMHgxRDsNCj4gPiArCS8qIElORk9G
UkFNRSBTRFAgVmVyc2lvbiBOdW1iZXIgKi8NCj4gPiArCWluZm9mcmFtZV9zZHAuc2RwX2hlYWRl
ci5IQjMgPSAoMHgxMyA8PCAyKTsNCj4gPiArCS8qIENUQSBIZWFkZXIgQnl0ZSAyIChJTkZPRlJB
TUUgVmVyc2lvbiBOdW1iZXIpICovDQo+ID4gKwlpbmZvZnJhbWVfc2RwLmRiWzBdID0gZHJtX2lu
Zm9mcmFtZS52ZXJzaW9uOw0KPiA+ICsJLyogQ1RBIEhlYWRlciBCeXRlIDMgKExlbmd0aCBvZiBJ
TkZPRlJBTUUpOg0KPiA+IEhETUlfRFJNX0lORk9GUkFNRV9TSVpFDQo+ID4gKi8NCj4gPiArCWlu
Zm9mcmFtZV9zZHAuZGJbMV0gPSBkcm1faW5mb2ZyYW1lLmxlbmd0aDsNCj4gPiArCS8qDQo+ID4g
KwkgKiBDb3B5IEhETUlfRFJNX0lORk9GUkFNRV9TSVpFIHNpemUgZnJvbSBhIGJ1ZmZlciBhZnRl
cg0KPiA+ICsJICogSERNSV9JTkZPRlJBTUVfSEVBREVSX1NJWkUNCj4gPiArCSAqLw0KPiA+ICsJ
bWVtY3B5KCZpbmZvZnJhbWVfc2RwLmRiWzJdLCAmYnVmW0hETUlfSU5GT0ZSQU1FX0hFQURFUl9T
SVpFXSwNCj4gPiArCSAgICAgICBIRE1JX0RSTV9JTkZPRlJBTUVfU0laRSk7DQo+ID4gKw0KPiA+
ICsJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpDQo+ID4gKwkJaW50ZWxfZGlnX3BvcnQt
PndyaXRlX2luZm9mcmFtZSgmaW50ZWxfZGlnX3BvcnQtPmJhc2UsDQo+ID4gKwkJCQkJCWNydGNf
c3RhdGUsDQo+ID4gKw0KPiA+IAlIRE1JX1BBQ0tFVF9UWVBFX0dBTVVUX01FVEFEQVRBLA0KPiA+
ICsJCQkJCQkmaW5mb2ZyYW1lX3NkcCwNCj4gPiArCQkJCQkJVklERU9fRElQX0dNUF9EQVRBX1NJ
WkUNCj4gPiApOw0KPiANCj4gVGhpcyBuZXcgVklERU9fRElQX0dNUF9EQVRBX1NJWkUgZG9lc24n
dCBzZWVtIHRvIGJlIGhhbmRsZWQgaW4NCj4gaHN3X3dyaXRlX2luZm9mcmFtZQ0KPiAoaHN3X2Rp
cF9kYXRhX3NpemUpLiBDYW4geW91IHBsZWFzZSBjaGVjayB0aGlzLg0KPiANCk9rYXksIEknbGwg
YWRkIG1pc3NlZCBoYW5kbGluZyBvZiBWSURFT19ESVBfR01QX0RBVEFfU0laRSBvbg0KaHN3X2Rp
cF9kYXRhX3NpemUoKS4NCj4gPiArCWVsc2UNCj4gPiArCQkvKiBQcmlvciB0byBHRU4xMSwgSGVh
ZGVyIHNpemU6IDQgYnl0ZXMsIERhdGEgc2l6ZTogMjgNCj4gPiBieXRlcyAqLw0KPiA+ICsJCWlu
dGVsX2RpZ19wb3J0LT53cml0ZV9pbmZvZnJhbWUoJmludGVsX2RpZ19wb3J0LT5iYXNlLA0KPiA+
ICsJCQkJCQljcnRjX3N0YXRlLA0KPiA+ICsNCj4gPiAJSERNSV9QQUNLRVRfVFlQRV9HQU1VVF9N
RVRBREFUQSwNCj4gPiArCQkJCQkJJmluZm9mcmFtZV9zZHAsDQo+ID4gKwkJCQkJCVZJREVPX0RJ
UF9EQVRBX1NJWkUpOw0KPiA+ICsNCj4gDQo+IEFsc28gY2FuIHlvdSB1cGRhdGUgdGhlIHNlcmll
cyB0byBoYW5kbGUgc3RhdGUgY2hlY2tpbmcgYWxzbyBmb3INCj4gbWV0YWRhdGEgc2VudCB0byBE
UCBzaW5rLg0KPiANCkRvZXMgaXQgbWVhbiBhIHNpbWlsYXIgbG9naWMgb2YgImludGVsX3JlYWRf
aW5mb2ZyYW1lKGVuY29kZXIsDQpwaXBlX2NvbmZpZywgIEhETUlfSU5GT0ZSQU1FX1RZUEVfRFJN
LCAmcGlwZV9jb25maWctPmluZm9mcmFtZXMuZHJtKTsiDQoNCmlmIHRoZW4sIGJlY2F1c2UgY3Vy
cmVudCBEUCBwYWNrZXQgcmVsYXRlZCBpbXBsZW1lbnRhdGlvbiBvZiBpOTE1IGRvZXMNCm5vdCBo
b2xkIERQIHBhY2tldHMgKGV4LiBWU0MgU0RQLCBIRFIgTWV0YWRhdGEgSW5mb2ZyYW1lIFNEUC4u
LikgdG8gdGhlDQpwaXBlIHN0YXRlIHN0cnVjdHVyZS4gSW4gbXkgb3BpbmlvbiwgYXMgYSBkaWZm
ZW5lbnQgc2VyaWVzLCBmaXJzdCwgaXQNCndvdWxkIGJlIGJldHRlciB0byBhZGQgYSBzdG9yaW5n
IG9mIGluZm9mcmFtZSBwYWNrZXRzIHRvIHBpcGVfc3RhdGUNCnN0cnVjdHVyZSBmb3IgbGF0ZXIg
Y29tcGFyaW5nIGNhbGwgKGV4LiAgaW50ZWxfcGlwZV9jb25maWdfY29tcGFyZSgpICkuDQphZnRl
ciB0aGVuIHdlIGNhbiBjb21wYXJlIHRoZW0uDQoNCj4gPiArCXJldHVybiAwOw0KPiA+ICt9DQo+
ID4gKw0KPiA+IHZvaWQgaW50ZWxfZHBfdnNjX2VuYWJsZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwLA0KPiA+IAkJCSBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwN
Cj4gPiAJCQkgY29uc3Qgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGUpDQo+
ID4gQEAgLQ0KPiA+IDQ1NjUsNiArNDY0NCwxOCBAQCB2b2lkIGludGVsX2RwX3ZzY19lbmFibGUo
c3RydWN0IGludGVsX2RwDQo+ID4gKmludGVsX2RwLA0KPiA+IAlpbnRlbF9kcF9zZXR1cF92c2Nf
c2RwKGludGVsX2RwLCBjcnRjX3N0YXRlLCBjb25uX3N0YXRlKTsgIH0NCj4gPiANCj4gPiArdm9p
ZCBpbnRlbF9kcF9oZHJfbWV0YWRhdGFfZW5hYmxlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAs
DQo+ID4gKwkJCQkgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gKmNydGNfc3Rh
dGUsDQo+ID4gKwkJCQkgIGNvbnN0IHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlDQo+ID4gKmNv
bm5fc3RhdGUpIHsNCj4gPiArCWlmICghY29ubl9zdGF0ZS0+aGRyX291dHB1dF9tZXRhZGF0YSkN
Cj4gPiArCQlyZXR1cm47DQo+ID4gKw0KPiA+ICsJaW50ZWxfZHBfc2V0dXBfaGRyX21ldGFkYXRh
X2luZm9mcmFtZV9zZHAoaW50ZWxfZHAsDQo+ID4gKwkJCQkJCSAgY3J0Y19zdGF0ZSwNCj4gPiAr
CQkJCQkJICBjb25uX3N0YXRlKTsNCj4gPiArfQ0KPiA+ICsNCj4gPiBzdGF0aWMgdTggaW50ZWxf
ZHBfYXV0b3Rlc3RfbGlua190cmFpbmluZyhzdHJ1Y3QgaW50ZWxfZHANCj4gPiAqaW50ZWxfZHAp
ICB7DQo+ID4gCWludCBzdGF0dXMgPSAwOw0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuaA0KPiA+IGluZGV4IGIyZGE3Yzk5OThmNy4uYzM1OTM2OTFkZDM4IDEw
MDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaA0K
PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaA0KPiA+IEBA
IC0xMTUsNiArMTE1LDkgQEAgYm9vbCBpbnRlbF9kcF9uZWVkc192c2NfY29sb3JpbWV0cnkodTMy
DQo+ID4gY29sb3JzcGFjZSk7ICB2b2lkDQo+ID4gaW50ZWxfZHBfdnNjX2VuYWJsZShzdHJ1Y3Qg
aW50ZWxfZHAgKmludGVsX2RwLA0KPiA+IAkJCSBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSwNCj4gPiAJCQkgY29uc3Qgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUg
KmNvbm5fc3RhdGUpOw0KPiA+ICt2b2lkIGludGVsX2RwX2hkcl9tZXRhZGF0YV9lbmFibGUoc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiArCQkJCSAgY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUNCj4gPiAqY3J0Y19zdGF0ZSwNCj4gPiArCQkJCSAgY29uc3Qgc3RydWN0IGRybV9j
b25uZWN0b3Jfc3RhdGUNCj4gPiAqY29ubl9zdGF0ZSk7DQo+ID4gYm9vbCBpbnRlbF9kaWdpdGFs
X3BvcnRfY29ubmVjdGVkKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKTsNCj4gPiANCj4g
PiBzdGF0aWMgaW5saW5lIHVuc2lnbmVkIGludCBpbnRlbF9kcF91bnVzZWRfbGFuZV9tYXNrKGlu
dA0KPiA+IGxhbmVfY291bnQpIGRpZmYgLS1naXQNCj4gPiBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+ID4gaW5kZXgN
Cj4gPiBlYTJmMGZhMjQwMmQuLjkyODg1NDE2ZDUzOSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaA0KPiA+IEBAIC00NjQ1LDYgKzQ2NDUsNyBAQCBlbnVtIHsNCj4gPiAgKiAoSGFz
d2VsbCBhbmQgbmV3ZXIpIHRvIHNlZSB3aGljaCBWSURFT19ESVBfREFUQSBieXRlIGNvcnJlc3Bv
bmRzDQo+ID4gdG8gZWFjaCBieXRlDQo+ID4gICogb2YgdGhlIGluZm9mcmFtZSBzdHJ1Y3R1cmUg
c3BlY2lmaWVkIGJ5IENFQS04NjEuICovDQo+ID4gI2RlZmluZSAgIFZJREVPX0RJUF9EQVRBX1NJ
WkUJMzINCj4gPiArI2RlZmluZSAgIFZJREVPX0RJUF9HTVBfREFUQV9TSVpFCTM2DQo+ID4gI2Rl
ZmluZSAgIFZJREVPX0RJUF9WU0NfREFUQV9TSVpFCTM2DQo+ID4gI2RlZmluZSAgIFZJREVPX0RJ
UF9QUFNfREFUQV9TSVpFCTEzMg0KPiA+ICNkZWZpbmUgVklERU9fRElQX0NUTAkJX01NSU8oMHg2
MTE3MCkNCj4gPiAtLQ0KPiA+IDIuMjIuMA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
