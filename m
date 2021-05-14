Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04AFF380F2F
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 19:44:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6813E6F3D5;
	Fri, 14 May 2021 17:44:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 451E46F3D5
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 17:44:27 +0000 (UTC)
IronPort-SDR: VaNY/J+0us25SoYxoPZTJrdu6t0q1KvOAJJ+4UuB++lEVDP2LYFYRcetFF4MZgQqFgl2HqMi43
 SRUovncBCMfw==
X-IronPort-AV: E=McAfee;i="6200,9189,9984"; a="261450469"
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="261450469"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 10:44:26 -0700
IronPort-SDR: SZ7wopwIxHxptPmUnjUKJiDSj8B7MzF2x/rnhpm83Y2Sz2KDQ74OgeB8zi34VZEDREEQSvODNX
 Oyy7yIgicenA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="627231735"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga005.fm.intel.com with ESMTP; 14 May 2021 10:44:26 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 14 May 2021 10:44:25 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 14 May 2021 10:44:25 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.013;
 Fri, 14 May 2021 10:44:25 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 5/6] drm/i915: Move the TMDS clock division
 into intel_hdmi_mode_clock_valid()
Thread-Index: AQHXRn/KT0DrKs9g8E65HejJ7OE+0qrjtmQAgAABagCAAAL7AA==
Date: Fri, 14 May 2021 17:44:25 +0000
Message-ID: <61387858b62d3a876348e11313c67c15105ba98c.camel@intel.com>
References: <20210511160532.21446-1-ville.syrjala@linux.intel.com>
 <20210511160532.21446-6-ville.syrjala@linux.intel.com>
 <b60af898451971c9d4749372889b5b77b3689c18.camel@intel.com>
 <YJ61Nhg38iElyPXG@intel.com>
In-Reply-To: <YJ61Nhg38iElyPXG@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <3909915AA62EFA44AB44AA1278097182@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915: Move the TMDS clock division
 into intel_hdmi_mode_clock_valid()
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

T24gRnJpLCAyMDIxLTA1LTE0IGF0IDIwOjM2ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIEZyaSwgTWF5IDE0LCAyMDIxIGF0IDA1OjI4OjQwUE0gKzAwMDAsIFNvdXphLCBKb3Nl
IHdyb3RlOg0KPiA+IE9uIFR1ZSwgMjAyMS0wNS0xMSBhdCAxOTowNSArMDMwMCwgVmlsbGUgU3ly
amFsYSB3cm90ZToNCj4gPiA+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+DQo+ID4gPiANCj4gPiA+IE5vdyB0aGF0IHdlIGhhdmUgdG8gdGVsbCBp
bnRlbF9oZG1pX21vZGVfY2xvY2tfdmFsaWQoKSB3aGV0aGVyDQo+ID4gPiB3ZSdyZSBhc2tpbmcg
YWJvdXQgNDo0OjQgb3IgNDoyOjAgb3V0cHV0IGl0IGNhbiB0YWtlIGNhcmUgb2YNCj4gPiA+IHRo
ZSBkb3RjbG9jay0+VE1EUyBjbG9jayBjb252ZXJzaW9uLg0KPiA+ID4gDQo+ID4gPiBDYzogV2Vy
bmVyIFNlbWJhY2ggPHdzZUB0dXhlZG9jb21wdXRlcnMuY29tPg0KPiA+ID4gU2lnbmVkLW9mZi1i
eTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPiA+
IC0tLQ0KPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jIHwg
NiArKystLS0NCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0
aW9ucygtKQ0KPiA+ID4gDQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9oZG1pLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2hkbWkuYw0KPiA+ID4gaW5kZXggODc0ZmI4OTcwMDVhLi44MGUyYWU2NTJmNmUgMTAwNjQ0DQo+
ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYw0KPiA+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMNCj4gPiA+
IEBAIC0xOTA3LDYgKzE5MDcsOSBAQCBpbnRlbF9oZG1pX21vZGVfY2xvY2tfdmFsaWQoc3RydWN0
IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwgaW50IGNsb2NrLA0KPiA+ID4gIAlzdHJ1Y3QgaW50
ZWxfaGRtaSAqaGRtaSA9IGludGVsX2F0dGFjaGVkX2hkbWkodG9faW50ZWxfY29ubmVjdG9yKGNv
bm5lY3RvcikpOw0KPiA+ID4gIAllbnVtIGRybV9tb2RlX3N0YXR1cyBzdGF0dXM7DQo+ID4gPiAg
DQo+ID4gPiArCWlmICh5Y2JjcjQyMF9vdXRwdXQpDQo+ID4gPiArCQljbG9jayAvPSAyOw0KPiA+
ID4gKw0KPiA+ID4gIAkvKiBjaGVjayBpZiB3ZSBjYW4gZG8gOGJwYyAqLw0KPiA+ID4gIAlzdGF0
dXMgPSBoZG1pX3BvcnRfY2xvY2tfdmFsaWQoaGRtaSwgaW50ZWxfaGRtaV9wb3J0X2Nsb2NrKGNs
b2NrLCA4KSwNCj4gPiA+ICAJCQkJICAgICAgIHRydWUsIGhhc19oZG1pX3NpbmspOw0KPiA+ID4g
QEAgLTE5NTcsOCArMTk2MCw2IEBAIGludGVsX2hkbWlfbW9kZV92YWxpZChzdHJ1Y3QgZHJtX2Nv
bm5lY3RvciAqY29ubmVjdG9yLA0KPiA+ID4gIAl9DQo+ID4gPiAgDQo+ID4gPiAgCXljYmNyXzQy
MF9vbmx5ID0gZHJtX21vZGVfaXNfNDIwX29ubHkoJmNvbm5lY3Rvci0+ZGlzcGxheV9pbmZvLCBt
b2RlKTsNCj4gPiA+IC0JaWYgKHljYmNyXzQyMF9vbmx5KQ0KPiA+ID4gLQkJY2xvY2sgLz0gMjsN
Cj4gPiA+ICANCj4gPiA+ICAJc3RhdHVzID0gaW50ZWxfaGRtaV9tb2RlX2Nsb2NrX3ZhbGlkKGNv
bm5lY3RvciwgY2xvY2ssIGhhc19oZG1pX3NpbmssIHljYmNyXzQyMF9vbmx5KTsNCj4gPiA+ICAJ
aWYgKHN0YXR1cyAhPSBNT0RFX09LKSB7DQo+ID4gPiBAQCAtMTk2Nyw3ICsxOTY4LDYgQEAgaW50
ZWxfaGRtaV9tb2RlX3ZhbGlkKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsDQo+ID4g
PiAgCQkgICAgIWRybV9tb2RlX2lzXzQyMF9hbHNvKCZjb25uZWN0b3ItPmRpc3BsYXlfaW5mbywg
bW9kZSkpDQo+ID4gPiAgCQkJcmV0dXJuIHN0YXR1czsNCj4gPiA+ICANCj4gPiA+IC0JCWNsb2Nr
IC89IDI7DQo+ID4gDQo+ID4gVGhlIGNsb2NrIGludGVsX2hkbWlfbW9kZV9jbG9ja192YWxpZCgp
IGNhbGwgd2lsbCBiZSBjbG9jay8yIG5vdCBjbG9jay80IGFzIHByZXZpb3VzLg0KPiANCj4gSXQn
cyBuZXZlciBjbG9jay80Lg0KDQpGb3VuZCB0aGUgImlmICh5Y2Jjcl80MjBfb25seSB8fCIgdGhh
dCBJIG1pc3NlZC4NCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uu
c291emFAaW50ZWwuY29tPg0KDQo+IA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
