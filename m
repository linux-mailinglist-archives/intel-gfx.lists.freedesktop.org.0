Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC62318981
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 12:34:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 183566E0ED;
	Thu, 11 Feb 2021 11:34:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BC626E0ED
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Feb 2021 11:34:10 +0000 (UTC)
IronPort-SDR: eYIN5Ola+PFq242iX32OF/c3wX6MXAKW1Ju9R1lQROqqeDh16RlCMG6zlMrOps7HJST8SLR3fd
 H3CzbhqyyCMQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="161370372"
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="161370372"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 03:34:07 -0800
IronPort-SDR: LB6RSdTUebG7DFHxCUpwylOYM8ZXYS96u0KkNJPmijigpQ0MUfOiWtSbcBCNqnCJcadSXGeaoV
 my9g9eFEDJTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="588775345"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga005.fm.intel.com with ESMTP; 11 Feb 2021 03:34:07 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 11 Feb 2021 03:34:06 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 11 Feb 2021 03:34:05 -0800
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.2106.002;
 Thu, 11 Feb 2021 11:34:04 +0000
From: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH 1/4] drm/i915/display: Rename
 for_each_intel_encoder.*_can_psr to for_each_intel_encoder.*_with_psr
Thread-Index: AQHW/w9B6r4PTzyHs0KXVLD9MFOsF6pS1bQA
Date: Thu, 11 Feb 2021 11:34:03 +0000
Message-ID: <c669e34decfdf4165b0128d9e24c3176179f0c24.camel@intel.com>
References: <20210209181439.215104-1-jose.souza@intel.com>
In-Reply-To: <20210209181439.215104-1-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-ID: <E3FD9193EA565443A7C4454DEB376590@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/display: Rename
 for_each_intel_encoder.*_can_psr to for_each_intel_encoder.*_with_psr
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

T24gVHVlLCAyMDIxLTAyLTA5IGF0IDEwOjE0IC0wODAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBmb3JfZWFjaF9pbnRlbF9lbmNvZGVyLipfImNhbl9wc3IiIHNvdW5kcyBzdHJh
bmdlLCBpbiBteSBvcGluaW9uDQo+ICJ3aXRoX3BzciIgaXMgYmV0dGVyLg0KPiANCj4gQ2M6IEd3
YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcubXVuQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1i
eTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IC0tLQ0K
PiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5owqDCoMKgwqDC
oMKgwqDCoCB8wqAgNCArKy0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X2RlYnVnZnMuYyB8wqAgNiArKystLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMTIgKysrKysr
LS0tLQ0KPiAtLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmPCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDQgKystLQ0KPiDCoDQgZmlsZXMg
Y2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgNCj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaA0KPiBpbmRleCBlMzc1
N2VjYWJiZjcuLmM2MGE1OGJhNjBlZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgNCj4gQEAgLTQxOCw3ICs0MTgsNyBAQCBlbnVtIHBoeV9m
aWEgew0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGZvcl9lYWNoX2lmKChlbmNv
ZGVyX21hc2spDQo+ICbCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoFwNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGRybV9lbmNvZGVyX21hc2soJmludGVsX2VuY29kZXItPmJhc2UpKQ0K
PiDCoA0KPiAtI2RlZmluZSBmb3JfZWFjaF9pbnRlbF9lbmNvZGVyX21hc2tfY2FuX3BzcihkZXYs
IGludGVsX2VuY29kZXIsDQo+IGVuY29kZXJfbWFzaykgXA0KPiArI2RlZmluZSBmb3JfZWFjaF9p
bnRlbF9lbmNvZGVyX21hc2tfd2l0aF9wc3IoZGV2LCBpbnRlbF9lbmNvZGVyLA0KPiBlbmNvZGVy
X21hc2spIFwNCj4gwqDCoMKgwqDCoMKgwqDCoGxpc3RfZm9yX2VhY2hfZW50cnkoKGludGVsX2Vu
Y29kZXIpLCAmKGRldiktDQo+ID5tb2RlX2NvbmZpZy5lbmNvZGVyX2xpc3QsIGJhc2UuaGVhZCkg
XA0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGZvcl9lYWNoX2lmKCgoZW5jb2Rl
cl9tYXNrKSAmDQo+IGRybV9lbmNvZGVyX21hc2soJihpbnRlbF9lbmNvZGVyKS0+YmFzZSkpICYm
IFwNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGludGVsX2VuY29kZXJfY2FuX3BzcihpbnRlbF9lbmNvZGVyKSkNCj4gQEAgLTQyNyw3ICs0
MjcsNyBAQCBlbnVtIHBoeV9maWEgew0KPiDCoMKgwqDCoMKgwqDCoMKgZm9yX2VhY2hfaW50ZWxf
ZW5jb2RlcihkZXYsIGludGVsX2VuY29kZXIpwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoFwN
Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBmb3JfZWFjaF9pZihpbnRlbF9lbmNv
ZGVyX2lzX2RwKGludGVsX2VuY29kZXIpKQ0KPiDCoA0KPiAtI2RlZmluZSBmb3JfZWFjaF9pbnRl
bF9lbmNvZGVyX2Nhbl9wc3IoZGV2LCBpbnRlbF9lbmNvZGVyKSBcDQo+ICsjZGVmaW5lIGZvcl9l
YWNoX2ludGVsX2VuY29kZXJfd2l0aF9wc3IoZGV2LCBpbnRlbF9lbmNvZGVyKSBcDQo+IMKgwqDC
oMKgwqDCoMKgwqBmb3JfZWFjaF9pbnRlbF9lbmNvZGVyKChkZXYpLCAoaW50ZWxfZW5jb2Rlcikp
IFwNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBmb3JfZWFjaF9pZihpbnRlbF9l
bmNvZGVyX2Nhbl9wc3IoaW50ZWxfZW5jb2RlcikpDQo+IMKgDQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jDQo+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMuYw0KPiBpbmRl
eCBkNmU0YTkyMzdiZGEuLjdjZTExZDg1MTE2MyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMuYw0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jDQo+IEBAIC00Mzcs
NyArNDM3LDcgQEAgc3RhdGljIGludCBpOTE1X2VkcF9wc3Jfc3RhdHVzKHN0cnVjdCBzZXFfZmls
ZQ0KPiAqbSwgdm9pZCAqZGF0YSkNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBy
ZXR1cm4gLUVOT0RFVjsNCj4gwqANCj4gwqDCoMKgwqDCoMKgwqDCoC8qIEZpbmQgdGhlIGZpcnN0
IEVEUCB3aGljaCBzdXBwb3J0cyBQU1IgKi8NCj4gLcKgwqDCoMKgwqDCoMKgZm9yX2VhY2hfaW50
ZWxfZW5jb2Rlcl9jYW5fcHNyKCZkZXZfcHJpdi0+ZHJtLCBlbmNvZGVyKSB7DQo+ICvCoMKgwqDC
oMKgwqDCoGZvcl9lYWNoX2ludGVsX2VuY29kZXJfd2l0aF9wc3IoJmRldl9wcml2LT5kcm0sIGVu
Y29kZXIpIHsNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9kcCA9IGVu
Y190b19pbnRlbF9kcChlbmNvZGVyKTsNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBicmVhazsNCj4gwqDCoMKgwqDCoMKgwqDCoH0NCj4gQEAgLTQ1OSw3ICs0NTksNyBAQCBpOTE1
X2VkcF9wc3JfZGVidWdfc2V0KHZvaWQgKmRhdGEsIHU2NCB2YWwpDQo+IMKgwqDCoMKgwqDCoMKg
wqBpZiAoIUhBU19QU1IoZGV2X3ByaXYpKQ0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoHJldHVybiByZXQ7DQo+IMKgDQo+IC3CoMKgwqDCoMKgwqDCoGZvcl9lYWNoX2ludGVsX2Vu
Y29kZXJfY2FuX3BzcigmZGV2X3ByaXYtPmRybSwgZW5jb2Rlcikgew0KPiArwqDCoMKgwqDCoMKg
wqBmb3JfZWFjaF9pbnRlbF9lbmNvZGVyX3dpdGhfcHNyKCZkZXZfcHJpdi0+ZHJtLCBlbmNvZGVy
KSB7DQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2RwICpp
bnRlbF9kcCA9IGVuY190b19pbnRlbF9kcChlbmNvZGVyKTsNCj4gwqANCj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwgIlNldHRpbmcg
UFNSIGRlYnVnIHRvDQo+ICVsbHhcbiIsIHZhbCk7DQo+IEBAIC00ODQsNyArNDg0LDcgQEAgaTkx
NV9lZHBfcHNyX2RlYnVnX2dldCh2b2lkICpkYXRhLCB1NjQgKnZhbCkNCj4gwqDCoMKgwqDCoMKg
wqDCoGlmICghSEFTX1BTUihkZXZfcHJpdikpDQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgcmV0dXJuIC1FTk9ERVY7DQo+IMKgDQo+IC3CoMKgwqDCoMKgwqDCoGZvcl9lYWNoX2lu
dGVsX2VuY29kZXJfY2FuX3BzcigmZGV2X3ByaXYtPmRybSwgZW5jb2Rlcikgew0KPiArwqDCoMKg
wqDCoMKgwqBmb3JfZWFjaF9pbnRlbF9lbmNvZGVyX3dpdGhfcHNyKCZkZXZfcHJpdi0+ZHJtLCBl
bmNvZGVyKSB7DQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCA9IGVuY190b19pbnRlbF9kcChlbmNvZGVyKTsNCj4gwqANCj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAvLyBUT0RPOiBzcGxpdCB0byBlYWNoIHRyYW5zY29k
ZXIncyBQU1IgZGVidWcgc3RhdGUNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jDQo+IGluZGV4IGJmMjE0ZDBlMmRlYy4uMWQzOTAzNjEyZmNiIDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTEyMzIsOCArMTIz
Miw4IEBAIHZvaWQgaW50ZWxfcHNyMl9wcm9ncmFtX3RyYW5zX21hbl90cmtfY3RsKGNvbnN0DQo+
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0DQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgIWNydGNfc3RhdGUtPmVuYWJsZV9wc3IyX3NlbF9mZXRjaCkNCj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqByZXR1cm47DQo+IMKgDQo+IC3CoMKgwqDCoMKgwqDCoGZvcl9lYWNo
X2ludGVsX2VuY29kZXJfbWFza19jYW5fcHNyKCZkZXZfcHJpdi0+ZHJtLCBlbmNvZGVyLA0KPiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNydGNfc3RhdGUtDQo+ID51YXBpLmVuY29kZXJf
bWFzaykgew0KPiArwqDCoMKgwqDCoMKgwqBmb3JfZWFjaF9pbnRlbF9lbmNvZGVyX21hc2tfd2l0
aF9wc3IoJmRldl9wcml2LT5kcm0sIGVuY29kZXIsDQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBjcnRjX3N0YXRlLQ0KPiA+dWFwaS5lbmNvZGVyX21hc2spIHsNCj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gZW5jX3Rv
X2ludGVsX2RwKGVuY29kZXIpOw0KPiDCoA0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoGlmICghaW50ZWxfZHAtPnBzci5lbmFibGVkKQ0KPiBAQCAtMTUxNSw4ICsxNTE1LDggQEAg
dm9pZCBpbnRlbF9wc3Jfd2FpdF9mb3JfaWRsZShjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19z
dGF0ZSAqbmV3X2NydGNfc3RhdGUpDQo+IMKgwqDCoMKgwqDCoMKgwqBpZiAoIW5ld19jcnRjX3N0
YXRlLT5oYXNfcHNyKQ0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybjsN
Cj4gwqANCj4gLcKgwqDCoMKgwqDCoMKgZm9yX2VhY2hfaW50ZWxfZW5jb2Rlcl9tYXNrX2Nhbl9w
c3IoJmRldl9wcml2LT5kcm0sIGVuY29kZXIsDQo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgbmV3X2NydGNfc3RhdGUtDQo+ID51YXBpLmVuY29kZXJfbWFzaykgew0KPiArwqDCoMKgwqDC
oMKgwqBmb3JfZWFjaF9pbnRlbF9lbmNvZGVyX21hc2tfd2l0aF9wc3IoJmRldl9wcml2LT5kcm0s
IGVuY29kZXIsDQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBuZXdfY3J0Y19zdGF0
ZS0NCj4gPnVhcGkuZW5jb2Rlcl9tYXNrKSB7DQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9IGVuY190b19pbnRlbF9kcChlbmNvZGVy
KTsNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB1MzIgcHNyX3N0YXR1czsNCj4g
wqANCj4gQEAgLTE3MzAsNyArMTczMCw3IEBAIHZvaWQgaW50ZWxfcHNyX2ludmFsaWRhdGUoc3Ry
dWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiDCoMKgwqDCoMKgwqDCoMKgaWYg
KG9yaWdpbiA9PSBPUklHSU5fRkxJUCkNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqByZXR1cm47DQo+IMKgDQo+IC3CoMKgwqDCoMKgwqDCoGZvcl9lYWNoX2ludGVsX2VuY29kZXJf
Y2FuX3BzcigmZGV2X3ByaXYtPmRybSwgZW5jb2Rlcikgew0KPiArwqDCoMKgwqDCoMKgwqBmb3Jf
ZWFjaF9pbnRlbF9lbmNvZGVyX3dpdGhfcHNyKCZkZXZfcHJpdi0+ZHJtLCBlbmNvZGVyKSB7DQo+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdW5zaWduZWQgaW50IHBpcGVfZnJvbnRi
dWZmZXJfYml0cyA9DQo+IGZyb250YnVmZmVyX2JpdHM7DQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9IGVuY190b19pbnRlbF9kcChl
bmNvZGVyKTsNCj4gwqANCj4gQEAgLTE4MDIsNyArMTgwMiw3IEBAIHZvaWQgaW50ZWxfcHNyX2Zs
dXNoKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+ICpkZXZfcHJpdiwNCj4gwqB7DQo+IMKgwqDC
oMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcjsNCj4gwqANCj4gLcKgwqDC
oMKgwqDCoMKgZm9yX2VhY2hfaW50ZWxfZW5jb2Rlcl9jYW5fcHNyKCZkZXZfcHJpdi0+ZHJtLCBl
bmNvZGVyKSB7DQo+ICvCoMKgwqDCoMKgwqDCoGZvcl9lYWNoX2ludGVsX2VuY29kZXJfd2l0aF9w
c3IoJmRldl9wcml2LT5kcm0sIGVuY29kZXIpIHsNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqB1bnNpZ25lZCBpbnQgcGlwZV9mcm9udGJ1ZmZlcl9iaXRzID0NCj4gZnJvbnRidWZm
ZXJfYml0czsNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwID0gZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpOw0KPiDCoA0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYw0KPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfaXJxLmMNCj4gaW5kZXggOTgxNDVhN2YyOGE0Li44ZjZiNjA2NjFhNGQgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYw0KPiBAQCAtMjA5Niw3ICsyMDk2LDcgQEAgc3Rh
dGljIHZvaWQgaXZiX2Rpc3BsYXlfaXJxX2hhbmRsZXIoc3RydWN0DQo+IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2LA0KPiDCoMKgwqDCoMKgwqDCoMKgaWYgKGRlX2lpciAmIERFX0VEUF9QU1Jf
SU5UX0hTVykgew0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRl
bF9lbmNvZGVyICplbmNvZGVyOw0KPiDCoA0KPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgZm9yX2VhY2hfaW50ZWxfZW5jb2Rlcl9jYW5fcHNyKCZkZXZfcHJpdi0+ZHJtLA0KPiBlbmNv
ZGVyKSB7DQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBmb3JfZWFjaF9pbnRlbF9l
bmNvZGVyX3dpdGhfcHNyKCZkZXZfcHJpdi0+ZHJtLA0KPiBlbmNvZGVyKSB7DQo+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHAgPQ0KPiBlbmNfdG9faW50ZWxfZHAoZW5jb2Rlcik7DQo+IMKgDQo+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHUzMiBwc3JfaWlyID0gaW50
ZWxfdW5jb3JlX3JlYWQoJmRldl9wcml2LQ0KPiA+dW5jb3JlLA0KPiBAQCAtMjMyMyw3ICsyMzIz
LDcgQEAgZ2VuOF9kZV9taXNjX2lycV9oYW5kbGVyKHN0cnVjdA0KPiBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwgdTMyIGlpcikNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB1
MzIgcHNyX2lpcjsNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpOTE1X3JlZ190
IGlpcl9yZWc7DQo+IMKgDQo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBmb3JfZWFj
aF9pbnRlbF9lbmNvZGVyX2Nhbl9wc3IoJmRldl9wcml2LT5kcm0sDQo+IGVuY29kZXIpIHsNCj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGZvcl9lYWNoX2ludGVsX2VuY29kZXJfd2l0
aF9wc3IoJmRldl9wcml2LT5kcm0sDQo+IGVuY29kZXIpIHsNCj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9
DQo+IGVuY190b19pbnRlbF9kcChlbmNvZGVyKTsNCj4gwqANCj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0g
MTIpDQoNClJldmlld2VkLWJ5OiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRl
bC5jb20+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
