Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF23322EA6
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Feb 2021 17:23:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BDCF6E9A8;
	Tue, 23 Feb 2021 16:23:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0759B6E9A8
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Feb 2021 16:23:39 +0000 (UTC)
IronPort-SDR: 90486VICTS0mjpV57QPiZYSU6bliMJS3GtwqgVvRfGgtF5tYt1ZGoGz8C9POl9VxKQHnWKZNoA
 YNObhOKPX0BA==
X-IronPort-AV: E=McAfee;i="6000,8403,9904"; a="164079726"
X-IronPort-AV: E=Sophos;i="5.81,200,1610438400"; d="scan'208";a="164079726"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2021 08:23:36 -0800
IronPort-SDR: 1cwsAwdry5CqOsL4RrwEUJnE2J4WKs3jeQoPErVTkRVMmJWI1Dei+2c6Mh+3Y2ZTIqhxysMRJR
 fRlnHwen6h7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,200,1610438400"; d="scan'208";a="364560763"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 23 Feb 2021 08:23:36 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 23 Feb 2021 08:23:35 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 23 Feb 2021 08:23:34 -0800
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.2106.002;
 Tue, 23 Feb 2021 16:23:33 +0000
From: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3] drm/i915/display: Do not allow DC3CO if PSR SF is
 enabled
Thread-Index: AQHXCcvdF2GDrHA76kiMSoh/k8i1z6pl7NuA
Date: Tue, 23 Feb 2021 16:23:33 +0000
Message-ID: <cededea86ef7ba8f5818f456f116b05fb68d7572.camel@intel.com>
References: <20210222213006.1609085-1-gwan-gyeong.mun@intel.com>
 <fdd0eaaad2f848038286b633d2540d3a@intel.com>
In-Reply-To: <fdd0eaaad2f848038286b633d2540d3a@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-ID: <895632ECD9D88340854B9015EABFFB35@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/display: Do not allow DC3CO if
 PSR SF is enabled
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

T24gVHVlLCAyMDIxLTAyLTIzIGF0IDE1OjM4ICswNTMwLCBHdXB0YSwgQW5zaHVtYW4gd3JvdGU6
DQo+IA0KPiANCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+IEZyb206IE11biwg
R3dhbi1neWVvbmcgPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+DQo+ID4gU2VudDogVHVlc2Rh
eSwgRmVicnVhcnkgMjMsIDIwMjEgMzowMCBBTQ0KPiA+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnDQo+ID4gQ2M6IEd1cHRhLCBBbnNodW1hbiA8YW5zaHVtYW4uZ3VwdGFAaW50
ZWwuY29tPjsgU291emEsIEpvc2UNCj4gPiA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+ID4gU3Vi
amVjdDogW1BBVENIIHYzXSBkcm0vaTkxNS9kaXNwbGF5OiBEbyBub3QgYWxsb3cgREMzQ08gaWYg
UFNSIFNGDQo+ID4gaXMgZW5hYmxlZA0KPiA+IA0KPiA+IEV2ZW4gdGhvdWdoIEdFTjEyKyBIVyBz
dXBwb3J0cyBQU1IgKyBEQzNDTywgRE1DJ3MgSFcgREMzQ08gZXhpdA0KPiA+IG1lY2hhbmlzbSBo
YXMgYW4gaXNzdWUgd2l0aCB1c2luZyBvZiBTZWxlY3RpdmUgRmVjdGggYW5kIFBTUjINCj4gPiBt
YW51YWwgdHJhY2tpbmcuDQo+ID4gQW5kIGFzIHNvbWUgR0VOMTIrIHBsYXRmb3JtcyAoUktMLCBB
REwtUykgZG9uJ3Qgc3VwcG9ydCBQU1IyIEhXDQo+ID4gdHJhY2tpbmcsDQo+ID4gU2VsZWN0aXZl
IEZldGNoIHdpbGwgYmUgZW5hYmxlZCBieSBkZWZhdWx0IG9uIHRoYXQgcGxhdGZvcm1zLg0KPiA+
IFRoZXJlZm9yZSBpZiB0aGUgc3lzdGVtIGVuYWJsZXMgUFNSIFNlbGVjdGl2ZSBGZXRjaCAvIFBT
UiBtYW51YWwNCj4gPiB0cmFja2luZywgaXQNCj4gPiBkb2VzIG5vdCBhbGxvdyBEQzNDTyBkYyBz
dGF0ZSwgaW4gdGhhdCBjYXNlLg0KPiA+IA0KPiA+IFdoZW4gdGhpcyBEQzNDTyBleGl0IGlzc3Vl
IGlzIGFkZHJlc3NlZCB3aGlsZSBQU1IgU2VsZWN0aXZlIEZldGNoDQo+ID4gaXMgZW5hYmxlZCwN
Cj4gPiB0aGlzIHJlc3RyaWN0aW9uIHNob3VsZCBiZSByZW1vdmVkLg0KPiA+IA0KPiA+IHYyOiBB
ZGRyZXNzIEpvc2UncyByZXZpZXcgY29tbWVudC4NCj4gPiDCoCAtIEZpeCB0eXBvDQo+ID4gwqAg
LSBNb3ZlIGNoZWNrIHJvdXRpbmUgb2YgREMzQ08gYWJpbGl0eSB0bw0KPiA+IMKgwqDCoCB0Z2xf
ZGMzY29fZXhpdGxpbmVfY29tcHV0ZV9jb25maWcoKQ0KPiA+IHYzOiBDaGFuZ2UgdGhlIGNoZWNr
IHJvdXRpbmUgb2YgZW5hYmxlbWVudCBvZiBwc3IyIHNlbCBmZXRjaC4NCj4gPiAoSm9zZSkNCj4g
PiANCj4gPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+
DQo+ID4gQ2M6IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+DQo+ID4g
U2lnbmVkLW9mZi1ieTogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29t
Pg0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
YyB8IDcgKysrKysrKw0KPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQ0KPiA+
IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4g
aW5kZXggN2M2ZTU2MWY4NmMxLi5jZDQzNDI4NWUzYjcgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBAQCAtNjU0LDYgKzY1NCwxMyBAQCB0
Z2xfZGMzY29fZXhpdGxpbmVfY29tcHV0ZV9jb25maWcoc3RydWN0DQo+ID4gaW50ZWxfZHANCj4g
PiAqaW50ZWxfZHAsDQo+ID4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqB1
MzIgZXhpdF9zY2FubGluZXM7DQo+ID4gDQo+ID4gK8KgwqDCoMKgwqDCoMKgLyoNCj4gPiArwqDC
oMKgwqDCoMKgwqAgKiBETUMncyBEQzNDTyBleGl0IG1lY2hhbmlzbSBoYXMgYW4gaXNzdWUgd2l0
aCBTZWxlY3RpdmUNCj4gPiBGZWN0aA0KPiA+ICvCoMKgwqDCoMKgwqDCoCAqIFRPRE86IHdoZW4g
dGhlIGlzc3VlIGlzIGFkZHJlc3NlZCwgdGhpcyByZXN0cmljdGlvbg0KPiA+IHNob3VsZCBiZQ0K
PiA+IHJlbW92ZWQuDQo+ID4gK8KgwqDCoMKgwqDCoMKgICovDQo+IEVhcmxpZXIgd2hlbiBQU1Iy
IEgvVyB0cmFja2luZyB3YXMgZW5hYmxlZCwgREMzQ08gZXhpdCBhbmQgZnJhbWUNCj4gdXBkYXRl
cyB3b3JrcyBvbiBpdCdzIG93bg0KPiBTdXBwb3J0ZWQgYnkgREUgZW5naW5lIGFuZCBETUMgZmly
bXdhcmUsIGJ1dCB3aXRoIHNlbGVjdGl2ZSBmZXRjaA0KPiBlbmFibGXCoCBhcyBpdCBkaXNhYmxl
cyB0aGUgUFNSMiBIL1cNCj4gVHJhY2tpbmcuIEl0IHJlcXVpcmVzIHRvIGdldCBzZXF1ZW5jZSBv
ZiBEQzNDTyBleGl0IHdoaWxlIFBTUjIgSC9XDQo+IHRyYWNraW5nIGRpc2FibGVkLg0KPiANClll
cywgaW4gb3JkZXIgdG8gdXNlIERDM0NPIG9uIFBTUjIgd2l0aCBTZWxlY3RpdmUgRmV0Y2ggLyBt
YW51YWwNCnRyYWNraW5nLCB3ZSBuZWVkIHRvIGhhdmUgYSBwcm9wZXIgc2VxdWVuY2UgZm9yIERD
M0NPIGVudHJ5L2V4aXQuIGJ1dA0KdGhlIGN1cnJlbnQgREUgLyBETUMgZmlybXdhcmUncyBEQzND
TyBleGl0IHNlcXVlbmNlIGRvZXMgbm90IHdvcmsNCmNvcnJlY3RseSBvbiBQU1IyIHdpdGggU2Vs
ZWN0aXZlIEZldGNoIC8gbWFudWFsIHRyYWNraW5nLiB3aGVuIEkgZ290DQp0aGUgcHJvcGVyIHNl
cXVlbmNlLCBJJ2xsIHVwZGF0ZSBpdCBhcyBzb29uIGFzIHBvc3NpYmxlLg0KDQo+IEJyLA0KPiBB
bnNodW1hbiBHdXB0YS7CoCANCj4gPiArwqDCoMKgwqDCoMKgwqBpZiAoY3J0Y19zdGF0ZS0+ZW5h
YmxlX3BzcjJfc2VsX2ZldGNoKQ0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBy
ZXR1cm47DQo+ID4gKw0KPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAoIShkZXZfcHJpdi0+Y3NyLmFs
bG93ZWRfZGNfbWFzayAmIERDX1NUQVRFX0VOX0RDM0NPKSkNCj4gPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoHJldHVybjsNCj4gPiANCj4gPiAtLQ0KPiA+IDIuMzAuMA0KPiANCg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
