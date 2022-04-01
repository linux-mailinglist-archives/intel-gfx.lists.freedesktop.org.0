Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F02474EE81F
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Apr 2022 08:19:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E68210F4F5;
	Fri,  1 Apr 2022 06:19:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D1A810F4F5
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Apr 2022 06:19:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648793982; x=1680329982;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=xYMd6TBILG+cPgg6Vf+/otnlgl/OF4Xn9Ft2L1TH6j0=;
 b=Uo3yCJGHWG1vsTCZvch/Ehk2f4Bn6U8o5RTDihN9khvj0gHO1eNpfJYZ
 PEMeikOvzTRcSOPbVMsGAZa4MALIt7xGSiJOfRMPHEiYSz9uuKDz2QK19
 TaeQ9Z0tNQrKBwv4VjwemQpsseV0g/vONcAlQgtnVm5x5r3RbxXjl7bCQ
 mSF3I2avXEBzQPTQ41+U0xk1EJ7uQwKyaNse3IKt069JTu7LdDBH0UCdG
 /t8Td81CM0TaLnIywCj5xUQUDKO0/SogD+O+AD+C+FtHxkKOwkbpaZwsc
 9SuatI/bPioWoWb64Jm9q0YT1XKfposADzVrXUxIrkh7Aff4JR8Zm90ub g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10303"; a="239989708"
X-IronPort-AV: E=Sophos;i="5.90,226,1643702400"; d="scan'208";a="239989708"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 23:19:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,226,1643702400"; d="scan'208";a="655442026"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga004.jf.intel.com with ESMTP; 31 Mar 2022 23:19:41 -0700
Received: from bgsmsx601.gar.corp.intel.com (10.109.78.80) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 31 Mar 2022 23:19:40 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX601.gar.corp.intel.com (10.109.78.80) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 1 Apr 2022 11:49:38 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2308.027;
 Fri, 1 Apr 2022 11:49:38 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 01/12] drm/i915/dp: Extract
 intel_dp_tmds_clock_valid()
Thread-Index: AQHYPeRuISdV4cw7MkyvdBdxlLckjKzapOMQ
Date: Fri, 1 Apr 2022 06:19:38 +0000
Message-ID: <f019762e65884dd385c34349c98a4b87@intel.com>
References: <20220322120015.28074-1-ville.syrjala@linux.intel.com>
 <20220322120015.28074-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20220322120015.28074-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.401.20
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 01/12] drm/i915/dp: Extract
 intel_dp_tmds_clock_valid()
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZSBT
eXJqYWxhDQo+IFNlbnQ6IFR1ZXNkYXksIE1hcmNoIDIyLCAyMDIyIDU6MzAgUE0NCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVsLWdmeF0gW1BB
VENIIHYyIDAxLzEyXSBkcm0vaTkxNS9kcDogRXh0cmFjdA0KPiBpbnRlbF9kcF90bWRzX2Nsb2Nr
X3ZhbGlkKCkNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+DQo+IA0KPiBXZSdyZSBjdXJyZW50bHkgZHVwbGljYXRpbmcgdGhlIERGUCBt
aW4vbWF4IFRNRFMgY2xvY2sgY2hlY2tzIGluIC5tb2RlX3ZhbGlkKCkNCj4gYW5kIC5jb21wdXRl
X2NvbmZpZygpLiBFeHRyYWN0IGEgaGVscGVyIHN1aXRhYmxlIGZvciBib3RoIHVzZSBjYXNlcy4N
Cg0KTG9va3MgR29vZCB0byBtZS4NClJldmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5r
YXJAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jIHwgNTkgKysrKysrKysrKystLS0tLS0tLS0tLS0tLQ0KPiAgMSBm
aWxlIGNoYW5nZWQsIDI2IGluc2VydGlvbnMoKyksIDMzIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBpbmRleCA5ZTE5MTY1ZmQx
NzUuLmU4NzRkMmY3ODA4OCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYw0KPiBAQCAtODU2LDYgKzg1NiwyNSBAQCBzdGF0aWMgYm9vbCBpbnRlbF9kcF9oZGlz
cGxheV9iYWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUNCj4gKmRldl9wcml2LA0KPiAgCXJldHVy
biBoZGlzcGxheSA9PSA0MDk2ICYmICFIQVNfRERJKGRldl9wcml2KTsgIH0NCj4gDQo+ICtzdGF0
aWMgZW51bSBkcm1fbW9kZV9zdGF0dXMNCj4gK2ludGVsX2RwX3RtZHNfY2xvY2tfdmFsaWQoc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gKwkJCSAgaW50IGNsb2NrLCBpbnQgYnBjLCBib29s
IHljYmNyNDIwX291dHB1dCkgew0KPiArCWludCB0bWRzX2Nsb2NrOw0KPiArDQo+ICsJdG1kc19j
bG9jayA9IGludGVsX2hkbWlfdG1kc19jbG9jayhjbG9jaywgYnBjLCB5Y2JjcjQyMF9vdXRwdXQp
Ow0KPiArDQo+ICsJaWYgKGludGVsX2RwLT5kZnAubWluX3RtZHNfY2xvY2sgJiYNCj4gKwkgICAg
dG1kc19jbG9jayA8IGludGVsX2RwLT5kZnAubWluX3RtZHNfY2xvY2spDQo+ICsJCXJldHVybiBN
T0RFX0NMT0NLX0xPVzsNCj4gKw0KPiArCWlmIChpbnRlbF9kcC0+ZGZwLm1heF90bWRzX2Nsb2Nr
ICYmDQo+ICsJICAgIHRtZHNfY2xvY2sgPiBpbnRlbF9kcC0+ZGZwLm1heF90bWRzX2Nsb2NrKQ0K
PiArCQlyZXR1cm4gTU9ERV9DTE9DS19ISUdIOw0KPiArDQo+ICsJcmV0dXJuIE1PREVfT0s7DQo+
ICt9DQo+ICsNCj4gIHN0YXRpYyBlbnVtIGRybV9tb2RlX3N0YXR1cw0KPiAgaW50ZWxfZHBfbW9k
ZV92YWxpZF9kb3duc3RyZWFtKHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvciwNCj4g
IAkJCSAgICAgICBjb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZSwgQEAgLTg2Myw3
DQo+ICs4ODIsNiBAQCBpbnRlbF9kcF9tb2RlX3ZhbGlkX2Rvd25zdHJlYW0oc3RydWN0IGludGVs
X2Nvbm5lY3RvciAqY29ubmVjdG9yLCAgew0KPiAgCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAg
PSBpbnRlbF9hdHRhY2hlZF9kcChjb25uZWN0b3IpOw0KPiAgCWNvbnN0IHN0cnVjdCBkcm1fZGlz
cGxheV9pbmZvICppbmZvID0gJmNvbm5lY3Rvci0+YmFzZS5kaXNwbGF5X2luZm87DQo+IC0JaW50
IHRtZHNfY2xvY2s7DQo+IA0KPiAgCS8qIElmIFBDT04gc3VwcG9ydHMgRlJMIE1PREUsIGNoZWNr
IEZSTCBiYW5kd2lkdGggY29uc3RyYWludHMgKi8NCj4gIAlpZiAoaW50ZWxfZHAtPmRmcC5wY29u
X21heF9mcmxfYncpIHsNCj4gQEAgLTg4OSwxNyArOTA3LDggQEAgaW50ZWxfZHBfbW9kZV92YWxp
ZF9kb3duc3RyZWFtKHN0cnVjdCBpbnRlbF9jb25uZWN0b3INCj4gKmNvbm5lY3RvciwNCj4gIAkJ
cmV0dXJuIE1PREVfQ0xPQ0tfSElHSDsNCj4gDQo+ICAJLyogQXNzdW1lIDhicGMgZm9yIHRoZSBE
UCsrL0hETUkvRFZJIFRNRFMgY2xvY2sgY2hlY2sgKi8NCj4gLQl0bWRzX2Nsb2NrID0gaW50ZWxf
aGRtaV90bWRzX2Nsb2NrKHRhcmdldF9jbG9jaywgOCwNCj4gLQkJCQkJICAgZHJtX21vZGVfaXNf
NDIwX29ubHkoaW5mbywgbW9kZSkpOw0KPiAtDQo+IC0JaWYgKGludGVsX2RwLT5kZnAubWluX3Rt
ZHNfY2xvY2sgJiYNCj4gLQkgICAgdG1kc19jbG9jayA8IGludGVsX2RwLT5kZnAubWluX3RtZHNf
Y2xvY2spDQo+IC0JCXJldHVybiBNT0RFX0NMT0NLX0xPVzsNCj4gLQlpZiAoaW50ZWxfZHAtPmRm
cC5tYXhfdG1kc19jbG9jayAmJg0KPiAtCSAgICB0bWRzX2Nsb2NrID4gaW50ZWxfZHAtPmRmcC5t
YXhfdG1kc19jbG9jaykNCj4gLQkJcmV0dXJuIE1PREVfQ0xPQ0tfSElHSDsNCj4gLQ0KPiAtCXJl
dHVybiBNT0RFX09LOw0KPiArCXJldHVybiBpbnRlbF9kcF90bWRzX2Nsb2NrX3ZhbGlkKGludGVs
X2RwLCB0YXJnZXRfY2xvY2ssIDgsDQo+ICsJCQkJCSBkcm1fbW9kZV9pc180MjBfb25seShpbmZv
LCBtb2RlKSk7DQo+ICB9DQo+IA0KPiAgc3RhdGljIGJvb2wgaW50ZWxfZHBfbmVlZF9iaWdqb2lu
ZXIoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgQEAgLTExNDIsMzINCj4gKzExNTEsMTYgQEAg
c3RhdGljIGJvb2wgaW50ZWxfZHBfaGRtaV95Y2JjcjQyMChzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwLA0KPiAgCQkgaW50ZWxfZHAtPmRmcC55Y2Jjcl80NDRfdG9fNDIwKTsNCj4gIH0NCj4gDQo+
IC1zdGF0aWMgYm9vbCBpbnRlbF9kcF9oZG1pX3RtZHNfY2xvY2tfdmFsaWQoc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCwNCj4gLQkJCQkJICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUg
KmNydGNfc3RhdGUsDQo+IGludCBicGMpDQo+IC17DQo+IC0JaW50IGNsb2NrID0gY3J0Y19zdGF0
ZS0+aHcuYWRqdXN0ZWRfbW9kZS5jcnRjX2Nsb2NrOw0KPiAtCWludCB0bWRzX2Nsb2NrID0gaW50
ZWxfaGRtaV90bWRzX2Nsb2NrKGNsb2NrLCBicGMsDQo+IC0JCQkJCSAgICAgICBpbnRlbF9kcF9o
ZG1pX3ljYmNyNDIwKGludGVsX2RwLA0KPiBjcnRjX3N0YXRlKSk7DQo+IC0NCj4gLQlpZiAoaW50
ZWxfZHAtPmRmcC5taW5fdG1kc19jbG9jayAmJg0KPiAtCSAgICB0bWRzX2Nsb2NrIDwgaW50ZWxf
ZHAtPmRmcC5taW5fdG1kc19jbG9jaykNCj4gLQkJcmV0dXJuIGZhbHNlOw0KPiAtDQo+IC0JaWYg
KGludGVsX2RwLT5kZnAubWF4X3RtZHNfY2xvY2sgJiYNCj4gLQkgICAgdG1kc19jbG9jayA+IGlu
dGVsX2RwLT5kZnAubWF4X3RtZHNfY2xvY2spDQo+IC0JCXJldHVybiBmYWxzZTsNCj4gLQ0KPiAt
CXJldHVybiB0cnVlOw0KPiAtfQ0KPiAtDQo+ICBzdGF0aWMgYm9vbCBpbnRlbF9kcF9oZG1pX2Jw
Y19wb3NzaWJsZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiAgCQkJCSAgICAgICBjb25z
dCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gIAkJCQkgICAgICAgaW50
IGJwYykNCj4gIHsNCj4gKwlib29sIHljYmNyNDIwX291dHB1dCA9IGludGVsX2RwX2hkbWlfeWNi
Y3I0MjAoaW50ZWxfZHAsIGNydGNfc3RhdGUpOw0KPiArCWludCBjbG9jayA9IGNydGNfc3RhdGUt
Pmh3LmFkanVzdGVkX21vZGUuY3J0Y19jbG9jazsNCj4gDQo+IC0JcmV0dXJuIGludGVsX2hkbWlf
YnBjX3Bvc3NpYmxlKGNydGNfc3RhdGUsIGJwYywgaW50ZWxfZHAtPmhhc19oZG1pX3NpbmssDQo+
IC0JCQkJICAgICAgIGludGVsX2RwX2hkbWlfeWNiY3I0MjAoaW50ZWxfZHAsIGNydGNfc3RhdGUp
KQ0KPiAmJg0KPiAtCQlpbnRlbF9kcF9oZG1pX3RtZHNfY2xvY2tfdmFsaWQoaW50ZWxfZHAsIGNy
dGNfc3RhdGUsIGJwYyk7DQo+ICsJcmV0dXJuIGludGVsX2hkbWlfYnBjX3Bvc3NpYmxlKGNydGNf
c3RhdGUsIGJwYywNCj4gKwkJCQkgICAgICAgaW50ZWxfZHAtPmhhc19oZG1pX3NpbmssIHljYmNy
NDIwX291dHB1dCkgJiYNCj4gKwkJaW50ZWxfZHBfdG1kc19jbG9ja192YWxpZChpbnRlbF9kcCwg
Y2xvY2ssIGJwYywgeWNiY3I0MjBfb3V0cHV0KQ0KPiA9PQ0KPiArTU9ERV9PSzsNCj4gIH0NCj4g
DQo+ICBzdGF0aWMgaW50IGludGVsX2RwX21heF9icHAoc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCwNCj4gLS0NCj4gMi4zNC4xDQoNCg==
