Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26999253543
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 18:47:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEE486E187;
	Wed, 26 Aug 2020 16:47:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06CD36E187
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 16:47:39 +0000 (UTC)
IronPort-SDR: qJw9TLAXqeSGru5bY6aklIpmf7S6sL8NE46cZFFQnULwHXw+t4QncIqO9XSMz8/sFYQ25kZ22q
 2Nuq7ij5J+xg==
X-IronPort-AV: E=McAfee;i="6000,8403,9725"; a="153755436"
X-IronPort-AV: E=Sophos;i="5.76,356,1592895600"; d="scan'208";a="153755436"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2020 09:47:39 -0700
IronPort-SDR: Bmgs1j9zIJnHsgxHCYPIRhqUzos7wMIqVr2twNyWRk97/JRyd9caSCbBfe7b5knMPSjB+expzF
 nn4XjjZL68xA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,356,1592895600"; d="scan'208";a="403117589"
Received: from fmsmsx604-2.cps.intel.com (HELO fmsmsx604.amr.corp.intel.com)
 ([10.18.84.214])
 by fmsmga001.fm.intel.com with ESMTP; 26 Aug 2020 09:47:39 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 26 Aug 2020 09:47:39 -0700
Received: from fmsmsx156.amr.corp.intel.com (10.18.116.74) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 26 Aug 2020 09:47:39 -0700
Received: from fmsmsx107.amr.corp.intel.com ([169.254.6.136]) by
 fmsmsx156.amr.corp.intel.com ([169.254.13.232]) with mapi id 14.03.0439.000;
 Wed, 26 Aug 2020 09:47:38 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Thread-Topic: [PATCH v3 1/3] drm/i915/display: Compute has_drrs after
 compute has_psr
Thread-Index: AQHWewK7TdV8Va12DUuAIIPr2/G+46lKc54AgACdqYA=
Date: Wed, 26 Aug 2020 16:47:38 +0000
Message-ID: <34a474ae62850d9300a526a0fbd50babca1fefa8.camel@intel.com>
References: <20200825171331.17971-1-jose.souza@intel.com>
 <20200826072559.GJ25390@intel.com>
In-Reply-To: <20200826072559.GJ25390@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.240.12]
Content-ID: <1BB23AD524673647A41863347FB0EC29@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 1/3] drm/i915/display: Compute has_drrs
 after compute has_psr
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

T24gV2VkLCAyMDIwLTA4LTI2IGF0IDEyOjU2ICswNTMwLCBBbnNodW1hbiBHdXB0YSB3cm90ZToN
Cj4gT24gMjAyMC0wOC0yNSBhdCAxMDoxMzoyOSAtMDcwMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6
YSB3cm90ZToNCj4gPiBEUlJTIGFuZCBQU1IgY2FuJ3QgYmUgZW5hYmxlIHRvZ2V0aGVyLCBzbyBn
aXZpbmcgcHJlZmVyZW5jZSB0byBQU1INCj4gPiBhcyBpdCBhbGxvd3MgbW9yZSBwb3dlci1zYXZp
bmdzIGJ5IGNvbXBsZXRlIHNodXR0aW5nIGRvd24gZGlzcGxheSwNCj4gPiBzbyB0byBndWFyYW50
ZWUgdGhpcywgaXQgc2hvdWxkIGNvbXB1dGUgRFJSUyBzdGF0ZSBhZnRlciBjb21wdXRlIFBTUi4N
Cj4gPiANCj4gPiBDYzogU3Jpbml2YXMgSyA8DQo+ID4gc3Jpbml2YXN4LmtAaW50ZWwuY29tDQo+
ID4gPg0KPiA+IENjOiBIYXJpb20gUGFuZGV5IDwNCj4gPiBoYXJpb20ucGFuZGV5QGludGVsLmNv
bQ0KPiA+ID4NCj4gPiBSZXZpZXdlZC1ieTogQW5zaHVtYW4gR3VwdGEgPA0KPiA+IGFuc2h1bWFu
Lmd1cHRhQGludGVsLmNvbQ0KPiA+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRv
IGRlIFNvdXphIDwNCj4gPiBqb3NlLnNvdXphQGludGVsLmNvbQ0KPiA+ID4NCj4gPiAtLS0NCj4g
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgNTIgKysrKysrKysr
KysrKysrLS0tLS0tLS0tLQ0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMzIgaW5zZXJ0aW9ucygrKSwg
MjAgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYw0KPiA+IGluZGV4IDc5YzI3ZjkxZjQyYy4uYTA4ZDAzYzYxYjAyIDEwMDY0NA0KPiA+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+IEBAIC0yNTc1LDYg
KzI1NzUsMzQgQEAgaW50ZWxfZHBfY29tcHV0ZV9oZHJfbWV0YWRhdGFfaW5mb2ZyYW1lX3NkcChz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+ICAJCWludGVsX2hkbWlfaW5mb2ZyYW1lX2Vu
YWJsZShIRE1JX1BBQ0tFVF9UWVBFX0dBTVVUX01FVEFEQVRBKTsNCj4gPiAgfQ0KPiA+ICANCj4g
PiArc3RhdGljIHZvaWQNCj4gPiAraW50ZWxfZHBfZHJyc19jb21wdXRlX2NvbmZpZyhzdHJ1Y3Qg
aW50ZWxfZHAgKmludGVsX2RwLA0KPiA+ICsJCQkgICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpwaXBlX2NvbmZpZywNCj4gPiArCQkJICAgICBpbnQgb3V0cHV0X2JwcCwgYm9vbCBjb25zdGFu
dF9uKQ0KPiA+ICt7DQo+ID4gKwlzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICppbnRlbF9jb25uZWN0
b3IgPSBpbnRlbF9kcC0+YXR0YWNoZWRfY29ubmVjdG9yOw0KPiA+ICsJc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7DQo+ID4gKw0KPiA+ICsJ
LyoNCj4gPiArCSAqIERSUlMgYW5kIFBTUiBjYW4ndCBiZSBlbmFibGUgdG9nZXRoZXIsIHNvIGdp
dmluZyBwcmVmZXJlbmNlIHRvIFBTUg0KPiA+ICsJICogYXMgaXQgYWxsb3dzIG1vcmUgcG93ZXIt
c2F2aW5ncyBieSBjb21wbGV0ZSBzaHV0dGluZyBkb3duIGRpc3BsYXksDQo+ID4gKwkgKiBzbyB0
byBndWFyYW50ZWUgdGhpcywgaW50ZWxfZHBfZHJyc19jb21wdXRlX2NvbmZpZygpIG11c3QgYmUg
Y2FsbGVkDQo+ID4gKwkgKiBhZnRlciBpbnRlbF9wc3JfY29tcHV0ZV9jb25maWcoKS4NCj4gPiAr
CSAqLw0KPiA+ICsJaWYgKHBpcGVfY29uZmlnLT5oYXNfcHNyKQ0KPiA+ICsJCXJldHVybjsNCj4g
PiArDQo+ID4gKwlpZiAoIWludGVsX2Nvbm5lY3Rvci0+cGFuZWwuZG93bmNsb2NrX21vZGUgfHwN
Cj4gPiArCSAgICBkZXZfcHJpdi0+ZHJycy50eXBlICE9IFNFQU1MRVNTX0RSUlNfU1VQUE9SVCkN
Cj4gPiArCQlyZXR1cm47DQo+ID4gKw0KPiA+ICsJcGlwZV9jb25maWctPmhhc19kcnJzID0gdHJ1
ZTsNCj4gPiArCWludGVsX2xpbmtfY29tcHV0ZV9tX24ob3V0cHV0X2JwcCwgcGlwZV9jb25maWct
PmxhbmVfY291bnQsDQo+ID4gKwkJCSAgICAgICBpbnRlbF9jb25uZWN0b3ItPnBhbmVsLmRvd25j
bG9ja19tb2RlLT5jbG9jaywNCj4gPiArCQkJICAgICAgIHBpcGVfY29uZmlnLT5wb3J0X2Nsb2Nr
LCAmcGlwZV9jb25maWctPmRwX20yX24yLA0KPiA+ICsJCQkgICAgICAgY29uc3RhbnRfbiwgcGlw
ZV9jb25maWctPmZlY19lbmFibGUpOw0KPiA+ICt9DQo+ID4gKw0KPiA+ICBpbnQNCj4gPiAgaW50
ZWxfZHBfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ID4g
IAkJCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZywNCj4gPiBAQCAtMjYwNSw3
ICsyNjMzLDYgQEAgaW50ZWxfZHBfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2VuY29kZXIg
KmVuY29kZXIsDQo+ID4gIAlpZiAocmV0KQ0KPiA+ICAJCXJldHVybiByZXQ7DQo+ID4gIA0KPiA+
IC0JcGlwZV9jb25maWctPmhhc19kcnJzID0gZmFsc2U7DQo+IA0KPiBJTUhPIHRoaXMgYXNzaWdu
bWVudCBpcyByZXF1aXJlZCwgaSB3YXMgdGhpbmtpbmcgYSBjYXNlLCB3aGVuIGEgY3J0YyBpcyBh
dHRhY2hlZCB0byBtb3JlIHRoYW4gDQo+IG9uZSBjb25uZWN0b3IsIHN1cHBvc2UgZmlyc3QgZURQ
IGNvbm5lY3RvciBzdXBwb3J0cyBEUlJTIGZyb20gcGFuZWwuZG93bmNsb2NrX21vZGUgYW5kDQo+
IGRycnMudHlwZSBidXQgYW5vdGhlciBEUCBjb25uZWN0b3Igd29uJ3Qgc3VwcG9ydCBpdCBpbiB0
aGF0IGNhc2UgaGFzX2RycnMgd2lsbCBiZSBzdGlsbA0KPiB0cnVlLg0KPiBQbGVhc2UgY29ycmVj
dCBtZSBpZiBpIGFtIHdyb25nIGhlcmUuIA0KDQppOTE1IG9ubHkgc3VwcG9ydHMgb25lIGNvbm5l
Y3RvciBwZXIgcGlwZS9DUlRDLCBpZiB0aGF0IHdhcyB0aGUgY2FzZSBhbGwgb3RoZXIgZmxhZ3Mg
aW4gaW50ZWxfY3J0Y19zdGF0ZSB3b3VsZCBhbHNvIGhhdmUgdGhlIHNhbWUgYmVoYXZpb3VyIGFz
DQpoYXNfZHJycy4NCg0KPiBUaGFua3MsDQo+IEFuc2h1bWFuIEd1cHRhLg0KPiA+ICAJaWYgKCFp
bnRlbF9kcF9wb3J0X2hhc19hdWRpbyhkZXZfcHJpdiwgcG9ydCkpDQo+ID4gIAkJcGlwZV9jb25m
aWctPmhhc19hdWRpbyA9IGZhbHNlOw0KPiA+ICAJZWxzZSBpZiAoaW50ZWxfY29ubl9zdGF0ZS0+
Zm9yY2VfYXVkaW8gPT0gSERNSV9BVURJT19BVVRPKQ0KPiA+IEBAIC0yNjU3LDIxICsyNjg0LDEy
IEBAIGludGVsX2RwX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVy
LA0KPiA+ICAJCQkgICAgICAgJnBpcGVfY29uZmlnLT5kcF9tX24sDQo+ID4gIAkJCSAgICAgICBj
b25zdGFudF9uLCBwaXBlX2NvbmZpZy0+ZmVjX2VuYWJsZSk7DQo+ID4gIA0KPiA+IC0JaWYgKGlu
dGVsX2Nvbm5lY3Rvci0+cGFuZWwuZG93bmNsb2NrX21vZGUgIT0gTlVMTCAmJg0KPiA+IC0JCWRl
dl9wcml2LT5kcnJzLnR5cGUgPT0gU0VBTUxFU1NfRFJSU19TVVBQT1JUKSB7DQo+ID4gLQkJCXBp
cGVfY29uZmlnLT5oYXNfZHJycyA9IHRydWU7DQo+ID4gLQkJCWludGVsX2xpbmtfY29tcHV0ZV9t
X24ob3V0cHV0X2JwcCwNCj4gPiAtCQkJCQkgICAgICAgcGlwZV9jb25maWctPmxhbmVfY291bnQs
DQo+ID4gLQkJCQkJICAgICAgIGludGVsX2Nvbm5lY3Rvci0+cGFuZWwuZG93bmNsb2NrX21vZGUt
PmNsb2NrLA0KPiA+IC0JCQkJCSAgICAgICBwaXBlX2NvbmZpZy0+cG9ydF9jbG9jaywNCj4gPiAt
CQkJCQkgICAgICAgJnBpcGVfY29uZmlnLT5kcF9tMl9uMiwNCj4gPiAtCQkJCQkgICAgICAgY29u
c3RhbnRfbiwgcGlwZV9jb25maWctPmZlY19lbmFibGUpOw0KPiA+IC0JfQ0KPiA+IC0NCj4gPiAg
CWlmICghSEFTX0RESShkZXZfcHJpdikpDQo+ID4gIAkJaW50ZWxfZHBfc2V0X2Nsb2NrKGVuY29k
ZXIsIHBpcGVfY29uZmlnKTsNCj4gPiAgDQo+ID4gIAlpbnRlbF9wc3JfY29tcHV0ZV9jb25maWco
aW50ZWxfZHAsIHBpcGVfY29uZmlnKTsNCj4gPiArCWludGVsX2RwX2RycnNfY29tcHV0ZV9jb25m
aWcoaW50ZWxfZHAsIHBpcGVfY29uZmlnLCBvdXRwdXRfYnBwLA0KPiA+ICsJCQkJICAgICBjb25z
dGFudF9uKTsNCj4gPiAgCWludGVsX2RwX2NvbXB1dGVfdnNjX3NkcChpbnRlbF9kcCwgcGlwZV9j
b25maWcsIGNvbm5fc3RhdGUpOw0KPiA+ICAJaW50ZWxfZHBfY29tcHV0ZV9oZHJfbWV0YWRhdGFf
aW5mb2ZyYW1lX3NkcChpbnRlbF9kcCwgcGlwZV9jb25maWcsIGNvbm5fc3RhdGUpOw0KPiA+ICAN
Cj4gPiBAQCAtNzczMCwxNiArNzc0OCwxMCBAQCB2b2lkIGludGVsX2VkcF9kcnJzX2VuYWJsZShz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+ICB7DQo+ID4gIAlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90b19pOTE1KGludGVsX2RwKTsNCj4gPiAgDQo+ID4gLQlp
ZiAoIWNydGNfc3RhdGUtPmhhc19kcnJzKSB7DQo+ID4gLQkJZHJtX2RiZ19rbXMoJmRldl9wcml2
LT5kcm0sICJQYW5lbCBkb2Vzbid0IHN1cHBvcnQgRFJSU1xuIik7DQo+ID4gKwlpZiAoIWNydGNf
c3RhdGUtPmhhc19kcnJzKQ0KPiA+ICAJCXJldHVybjsNCj4gPiAtCX0NCj4gPiAgDQo+ID4gLQlp
ZiAoZGV2X3ByaXYtPnBzci5lbmFibGVkKSB7DQo+ID4gLQkJZHJtX2RiZ19rbXMoJmRldl9wcml2
LT5kcm0sDQo+ID4gLQkJCSAgICAiUFNSIGVuYWJsZWQuIE5vdCBlbmFibGluZyBEUlJTLlxuIik7
DQo+ID4gLQkJcmV0dXJuOw0KPiA+IC0JfQ0KPiA+ICsJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5k
cm0sICJFbmFibGluZyBEUlJTXG4iKTsNCj4gPiAgDQo+ID4gIAltdXRleF9sb2NrKCZkZXZfcHJp
di0+ZHJycy5tdXRleCk7DQo+ID4gIAlpZiAoZGV2X3ByaXYtPmRycnMuZHApIHsNCj4gPiAtLSAN
Cj4gPiAyLjI4LjANCj4gPiANCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
