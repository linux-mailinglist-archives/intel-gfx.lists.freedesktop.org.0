Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D0A3310C2C
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 14:50:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6F846F444;
	Fri,  5 Feb 2021 13:50:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B42F6F444
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Feb 2021 13:50:53 +0000 (UTC)
IronPort-SDR: rmxcZsaFKyFPSV8TfBx+qOFipaYoP2/2PRnbvCMn7S3JvB0PMpdOMMQh2E+c9dWJDCBmx0oqhC
 0MlRTmfmffMA==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="161187606"
X-IronPort-AV: E=Sophos;i="5.81,155,1610438400"; d="scan'208";a="161187606"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 05:50:49 -0800
IronPort-SDR: ggcClzXn9iWgOqZB6agpdRr+QXy0Vjk58/d9Q9EVfYw9q6cv+f5xaiGbCOiEde5HrNSY+Kq+Nn
 yq7H7iVTAMCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,155,1610438400"; d="scan'208";a="373398698"
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7])
 by orsmga002.jf.intel.com with ESMTP; 05 Feb 2021 05:50:48 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 5 Feb 2021 13:50:47 +0000
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.1713.004;
 Fri, 5 Feb 2021 13:50:47 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915: Use intel_hdmi_port_clock()
 more
Thread-Index: AQHW+prQ76ODXavgZEurWMUHU6t3rKpJlnxg
Date: Fri, 5 Feb 2021 13:50:47 +0000
Message-ID: <902d92aea0ed4130923bb5e4ec0e33ab@intel.com>
References: <20210204020846.2094-1-ville.syrjala@linux.intel.com>
 <20210204020846.2094-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20210204020846.2094-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.0.76
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [163.33.253.164]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Use intel_hdmi_port_clock()
 more
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFRodXJzZGF5LCBGZWJydWFyeSA0LCAyMDIxIDQ6MDkgQU0NCj4g
VG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVsLWdm
eF0gW1BBVENIIDIvMl0gZHJtL2k5MTU6IFVzZSBpbnRlbF9oZG1pX3BvcnRfY2xvY2soKSBtb3Jl
DQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPg0KPiANCj4gUmVwbGFjZSB0aGUgaGFuZCByb2xsZWQgaW50ZWxfaGRtaV9wb3J0X2Nsb2Nr
KCkgc3R1ZmYgd2l0aCB0aGUgcmVhbCB0aGluZy4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQoNClJldmlld2VkLWJ5
OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+IC0tLQ0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMgfCAyNyArKysrKysrKysrKystLS0t
LS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9u
cygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfaGRtaS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMN
Cj4gaW5kZXggNjZlMWFjMzg4N2M2Li40NTdhMTZjODgwM2EgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jDQo+IEBAIC0yMjI5LDYgKzIyMjksMTYgQEAg
aGRtaV9wb3J0X2Nsb2NrX3ZhbGlkKHN0cnVjdCBpbnRlbF9oZG1pICpoZG1pLA0KPiAgCXJldHVy
biBNT0RFX09LOw0KPiAgfQ0KPiANCj4gK3N0YXRpYyBpbnQgaW50ZWxfaGRtaV9wb3J0X2Nsb2Nr
KGludCBjbG9jaywgaW50IGJwYykgew0KPiArCS8qDQo+ICsJICogTmVlZCB0byBhZGp1c3QgdGhl
IHBvcnQgbGluayBieToNCj4gKwkgKiAgMS41eCBmb3IgMTJicGMNCj4gKwkgKiAgMS4yNXggZm9y
IDEwYnBjDQo+ICsJICovDQo+ICsJcmV0dXJuIGNsb2NrICogYnBjIC8gODsNCj4gK30NCj4gKw0K
PiAgc3RhdGljIGVudW0gZHJtX21vZGVfc3RhdHVzDQo+ICBpbnRlbF9oZG1pX21vZGVfdmFsaWQo
c3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwNCj4gIAkJICAgICAgc3RydWN0IGRybV9k
aXNwbGF5X21vZGUgKm1vZGUpDQo+IEBAIC0yMjYwLDE3ICsyMjcwLDE4IEBAIGludGVsX2hkbWlf
bW9kZV92YWxpZChzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcg0KPiAqY29ubmVjdG9yLA0KPiAgCQljbG9j
ayAvPSAyOw0KPiANCj4gIAkvKiBjaGVjayBpZiB3ZSBjYW4gZG8gOGJwYyAqLw0KPiAtCXN0YXR1
cyA9IGhkbWlfcG9ydF9jbG9ja192YWxpZChoZG1pLCBjbG9jaywgdHJ1ZSwgaGFzX2hkbWlfc2lu
ayk7DQo+ICsJc3RhdHVzID0gaGRtaV9wb3J0X2Nsb2NrX3ZhbGlkKGhkbWksIGludGVsX2hkbWlf
cG9ydF9jbG9jayhjbG9jaywNCj4gOCksDQo+ICsJCQkJICAgICAgIHRydWUsIGhhc19oZG1pX3Np
bmspOw0KPiANCj4gIAlpZiAoaGFzX2hkbWlfc2luaykgew0KPiAgCQkvKiBpZiB3ZSBjYW4ndCBk
byA4YnBjIHdlIG1heSBzdGlsbCBiZSBhYmxlIHRvIGRvIDEyYnBjICovDQo+ICAJCWlmIChzdGF0
dXMgIT0gTU9ERV9PSyAmJiAhSEFTX0dNQ0goZGV2X3ByaXYpKQ0KPiAtCQkJc3RhdHVzID0gaGRt
aV9wb3J0X2Nsb2NrX3ZhbGlkKGhkbWksIGNsb2NrICogMyAvIDIsDQo+ICsJCQlzdGF0dXMgPSBo
ZG1pX3BvcnRfY2xvY2tfdmFsaWQoaGRtaSwNCj4gaW50ZWxfaGRtaV9wb3J0X2Nsb2NrKGNsb2Nr
LA0KPiArMTIpLA0KPiAgCQkJCQkJICAgICAgIHRydWUsIGhhc19oZG1pX3NpbmspOw0KPiANCj4g
IAkJLyogaWYgd2UgY2FuJ3QgZG8gOCwxMmJwYyB3ZSBtYXkgc3RpbGwgYmUgYWJsZSB0byBkbyAx
MGJwYyAqLw0KPiAgCQlpZiAoc3RhdHVzICE9IE1PREVfT0sgJiYgSU5URUxfR0VOKGRldl9wcml2
KSA+PSAxMSkNCj4gLQkJCXN0YXR1cyA9IGhkbWlfcG9ydF9jbG9ja192YWxpZChoZG1pLCBjbG9j
ayAqIDUgLyA0LA0KPiArCQkJc3RhdHVzID0gaGRtaV9wb3J0X2Nsb2NrX3ZhbGlkKGhkbWksDQo+
IGludGVsX2hkbWlfcG9ydF9jbG9jayhjbG9jaywNCj4gKzEwKSwNCj4gIAkJCQkJCSAgICAgICB0
cnVlLCBoYXNfaGRtaV9zaW5rKTsNCj4gIAl9DQo+ICAJaWYgKHN0YXR1cyAhPSBNT0RFX09LKQ0K
PiBAQCAtMjM3OCwxNiArMjM4OSw2IEBAIGludGVsX2hkbWlfeWNiY3I0MjBfY29uZmlnKHN0cnVj
dA0KPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiAgCXJldHVybiBpbnRlbF9wY2hf
cGFuZWxfZml0dGluZyhjcnRjX3N0YXRlLCBjb25uX3N0YXRlKTsgIH0NCj4gDQo+IC1zdGF0aWMg
aW50IGludGVsX2hkbWlfcG9ydF9jbG9jayhpbnQgY2xvY2ssIGludCBicGMpIC17DQo+IC0JLyoN
Cj4gLQkgKiBOZWVkIHRvIGFkanVzdCB0aGUgcG9ydCBsaW5rIGJ5Og0KPiAtCSAqICAxLjV4IGZv
ciAxMmJwYw0KPiAtCSAqICAxLjI1eCBmb3IgMTBicGMNCj4gLQkgKi8NCj4gLQlyZXR1cm4gY2xv
Y2sgKiBicGMgLyA4Ow0KPiAtfQ0KPiAtDQo+ICBzdGF0aWMgaW50IGludGVsX2hkbWlfY29tcHV0
ZV9icGMoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ICAJCQkJICBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gIAkJCQkgIGludCBjbG9jaykNCj4gLS0NCj4g
Mi4yNi4yDQo+IA0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXw0KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0DQo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcNCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
