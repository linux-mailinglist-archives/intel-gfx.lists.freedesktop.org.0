Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C5D2D7417
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Dec 2020 11:45:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C41AD6ED92;
	Fri, 11 Dec 2020 10:45:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCC966ED92
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Dec 2020 10:45:42 +0000 (UTC)
IronPort-SDR: 6BMiagE4UwlN7WWzV5N7cJ7uRXlLPml/XYAoR+MiEOOyqTr+j0/vd2S6DScbKuOGZaR5ymftJS
 ycTu2JLOE6UQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9831"; a="154222046"
X-IronPort-AV: E=Sophos;i="5.78,411,1599548400"; d="scan'208";a="154222046"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2020 02:45:42 -0800
IronPort-SDR: Gr1/qv0yn4bmfKMc0ZzbDDCkyyx4aULlk5PaimrWRV9SvjiCaz0TQa5Gzdhceo7MRsTjecSBgq
 uR/0zLDgl18Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,411,1599548400"; d="scan'208";a="365359634"
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137])
 by orsmga008.jf.intel.com with ESMTP; 11 Dec 2020 02:45:41 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 11 Dec 2020 10:45:40 +0000
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.1713.004;
 Fri, 11 Dec 2020 10:45:40 +0000
From: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v4 2/2] drm/i915/display: Support Multiple
 Transcoders' PSR status on debugfs
Thread-Index: AQHWtCW5lp9pblo9/Eu7pjI8FAEe2anNzvUAgCQeMYA=
Date: Fri, 11 Dec 2020 10:45:40 +0000
Message-ID: <a3ed2ff26f0a8e6eed6d59c80783a117633c4a9b.camel@intel.com>
References: <20201106101443.686053-1-gwan-gyeong.mun@intel.com>
 <20201106101443.686053-2-gwan-gyeong.mun@intel.com>
 <878sayq5qb.fsf@intel.com>
In-Reply-To: <878sayq5qb.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-ID: <8C2E1EEB58B54A4BBBDF6077DEAF409A@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v4 2/2] drm/i915/display: Support Multiple
 Transcoders' PSR status on debugfs
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

T24gV2VkLCAyMDIwLTExLTE4IGF0IDEzOjExICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gRnJpLCAwNiBOb3YgMjAyMCwgR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50
ZWwuY29tPg0KPiB3cm90ZToNCj4gPiBJbiBvcmRlciB0byBzdXBwb3J0IHRoZSBQU1Igc3RhdGUg
b2YgZWFjaCB0cmFuc2NvZGVyLCBpdCBhZGRzDQo+ID4gaTkxNV9wc3Jfc3RhdHVzIHRvIHN1Yi1k
aXJlY3Rvcnkgb2YgZWFjaCB0cmFuc2NvZGVyLg0KPiA+IA0KPiA+IHYyOiBDaGFuZ2UgdXNpbmcg
b2YgU3ltYm9saWMgcGVybWlzc2lvbnMgJ1NfSVJVR08nIHRvIHVzaW5nIG9mDQo+ID4gb2N0YWwN
Cj4gPiAgICAgcGVybWlzc2lvbnMgJzA0NDQnDQo+ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTogR3dh
bi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPg0KPiA+IENjOiBKb3PDqSBS
b2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgLi4u
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMgIHwgMjMNCj4gPiArKysr
KysrKysrKysrKysrKysrDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyMyBpbnNlcnRpb25zKCspDQo+
ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV9kZWJ1Z2ZzLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMNCj4gPiBpbmRleCA4NDAyZTZhYzlmNzYuLjM3ODA1NjE1YTIy
MSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfZGVidWdmcy5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X2RlYnVnZnMuYw0KPiA+IEBAIC0yMDkzLDYgKzIwOTMsMjMgQEAgc3RhdGlj
IGludA0KPiA+IGk5MTVfaGRjcF9zaW5rX2NhcGFiaWxpdHlfc2hvdyhzdHJ1Y3Qgc2VxX2ZpbGUg
Km0sIHZvaWQgKmRhdGEpDQo+ID4gIH0NCj4gPiAgREVGSU5FX1NIT1dfQVRUUklCVVRFKGk5MTVf
aGRjcF9zaW5rX2NhcGFiaWxpdHkpOw0KPiA+ICANCj4gPiArc3RhdGljIGludCBpOTE1X3Bzcl9z
dGF0dXNfc2hvdyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKmRhdGEpDQo+ID4gK3sNCj4gPiAr
CXN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IgPSBtLT5wcml2YXRlOw0KPiA+ICsJc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCA9DQo+ID4gKwkJaW50ZWxfYXR0YWNoZWRfZHAodG9faW50
ZWxfY29ubmVjdG9yKGNvbm5lY3RvcikpOw0KPiA+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7DQo+ID4gKw0KPiA+ICsJaWYgKGNvbm5l
Y3Rvci0+c3RhdHVzICE9IGNvbm5lY3Rvcl9zdGF0dXNfY29ubmVjdGVkKQ0KPiA+ICsJCXJldHVy
biAtRU5PREVWOw0KPiA+ICsNCj4gPiArCWlmICghSEFTX1BTUihkZXZfcHJpdikpDQo+ID4gKwkJ
cmV0dXJuIC1FTk9ERVY7DQo+ID4gKw0KPiA+ICsJcmV0dXJuIGludGVsX3Bzcl9zdGF0dXMobSwg
aW50ZWxfZHApOw0KPiA+ICt9DQo+ID4gK0RFRklORV9TSE9XX0FUVFJJQlVURShpOTE1X3Bzcl9z
dGF0dXMpOw0KPiA+ICsNCj4gPiAgI2RlZmluZSBMUFNQX0NBUEFCTEUoQ09ORCkgKENPTkQgPyBz
ZXFfcHV0cyhtLCAiTFBTUDogY2FwYWJsZVxuIikNCj4gPiA6IFwNCj4gPiAgCQkJCXNlcV9wdXRz
KG0sICJMUFNQOiBpbmNhcGFibGVcbiIpKQ0KPiA+ICANCj4gPiBAQCAtMjI2OCw2ICsyMjg1LDEy
IEBAIGludCBpbnRlbF9jb25uZWN0b3JfZGVidWdmc19hZGQoc3RydWN0DQo+ID4gZHJtX2Nvbm5l
Y3RvciAqY29ubmVjdG9yKQ0KPiA+ICAJCQkJICAgIGNvbm5lY3RvciwNCj4gPiAmaTkxNV9wc3Jf
c2lua19zdGF0dXNfZm9wcyk7DQo+ID4gIAl9DQo+ID4gIA0KPiA+ICsJaWYgKElOVEVMX0dFTihk
ZXZfcHJpdikgPj0gMTIgJiYNCj4gDQo+IEknZCBhZGQgdGhpcyBmb3IgYWxsIGdlbmVyYXRpb25z
IHRvIHVuaWZ5IHRoZSBkZWJ1Z2ZzLCBhbmQgZXZlbnR1YWxseQ0KPiBwaGFzZSBvdXQgdGhlIG5v
biBjb25uZWN0b3Igc3BlY2lmaWMgZGVidWdmcyBmaWxlLg0KPiANCj4gQW5kIEknZCBhZGQgSEFT
X1BTUigpIGNoZWNrIGhlcmUgdG8gbm90IGNyZWF0ZSB0aGUgZmlsZSBpZiBpdCdzIG5vdA0KPiBw
b3NzaWJsZSBpbnN0ZWFkIG9mIGhhdmluZyB0aGUgY2hlY2sgaW4gaTkxNV9wc3Jfc3RhdHVzX3No
b3coKS4NCj4gDQpIaSBKYW5pLA0KVGhhbmsgeW91IGZvciBjaGVja2luZyB0aGUgcGF0Y2guDQpJ
J2xsIHVwZGF0ZSB0aGUgY29kZSBhcyBwZXIgeW91ciByZWNvbW1lbmRhdGlvbnMuDQo+IEJSLA0K
PiBKYW5pLg0KPiANCj4gPiArCSAgICBjb25uZWN0b3ItPmNvbm5lY3Rvcl90eXBlID09IERSTV9N
T0RFX0NPTk5FQ1RPUl9lRFApIHsNCj4gPiArCQlkZWJ1Z2ZzX2NyZWF0ZV9maWxlKCJpOTE1X3Bz
cl9zdGF0dXMiLCAwNDQ0LCByb290LA0KPiA+ICsJCQkJICAgIGNvbm5lY3RvciwgJmk5MTVfcHNy
X3N0YXR1c19mb3BzKTsNCj4gPiArCX0NCj4gPiArDQo+ID4gIAlpZiAoY29ubmVjdG9yLT5jb25u
ZWN0b3JfdHlwZSA9PSBEUk1fTU9ERV9DT05ORUNUT1JfRGlzcGxheVBvcnQNCj4gPiB8fA0KPiA+
ICAJICAgIGNvbm5lY3Rvci0+Y29ubmVjdG9yX3R5cGUgPT0gRFJNX01PREVfQ09OTkVDVE9SX0hE
TUlBIHx8DQo+ID4gIAkgICAgY29ubmVjdG9yLT5jb25uZWN0b3JfdHlwZSA9PSBEUk1fTU9ERV9D
T05ORUNUT1JfSERNSUIpIHsNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
