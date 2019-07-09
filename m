Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC2263E3A
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 01:05:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFF8089930;
	Tue,  9 Jul 2019 23:05:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8D6489930
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 23:05:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 16:05:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,472,1557212400"; d="scan'208";a="186012045"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga001.fm.intel.com with ESMTP; 09 Jul 2019 16:04:59 -0700
Received: from fmsmsx102.amr.corp.intel.com (10.18.124.200) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 9 Jul 2019 16:04:59 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.206]) by
 FMSMSX102.amr.corp.intel.com ([169.254.10.233]) with mapi id 14.03.0439.000;
 Tue, 9 Jul 2019 16:04:59 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Navare, Manasi D" <manasi.d.navare@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/display/tgl: Bump up the mode
 vertical limits to support 8K
Thread-Index: AQHVNp+laNg6bposcE+MBEI4k0A9habDXY2A
Date: Tue, 9 Jul 2019 23:04:58 +0000
Message-ID: <d09a23d5049cf68e679feeda74cd6612a5ba82e1.camel@intel.com>
References: <20190709214735.16907-1-manasi.d.navare@intel.com>
In-Reply-To: <20190709214735.16907-1-manasi.d.navare@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.4]
Content-ID: <245C46B4FC31EF4CB9462F9FC106685D@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display/tgl: Bump up the mode
 vertical limits to support 8K
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDE5LTA3LTA5IGF0IDE0OjQ3IC0wNzAwLCBNYW5hc2kgTmF2YXJlIHdyb3RlOg0K
PiBPbiBUR0wrIHdlIHN1cHBvcnQgOEsgZGlzcGxheSByZXNvbHV0aW9uLCBoZW5jZSBidW1wIHVw
IHRoZSB2ZXJ0aWNhbA0KPiBhY3RpdmUgbGltaXRzIHRvIDQzMjAgaW4gaW50ZWxfbW9kZV92YWxp
ZCgpDQo+IA0KPiBDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4
LmludGVsLmNvbT4NCj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFy
ZUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMgfCA5ICsrKysrKystLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9u
cygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGluZGV4IGYwNzA4MTgxNWI4MC4uMGQ1YzhhZjAxZjU0
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
Yw0KPiBAQCAtMTU3NjQsOCArMTU3NjQsMTMgQEAgaW50ZWxfbW9kZV92YWxpZChzdHJ1Y3QgZHJt
X2RldmljZSAqZGV2LA0KPiAgCQkJICAgRFJNX01PREVfRkxBR19DTEtESVYyKSkNCj4gIAkJcmV0
dXJuIE1PREVfQkFEOw0KPiAgDQo+IC0JaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gOSB8fA0K
PiAtCSAgICBJU19CUk9BRFdFTEwoZGV2X3ByaXYpIHx8IElTX0hBU1dFTEwoZGV2X3ByaXYpKSB7
DQo+ICsJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0xMikgew0KDQoNCmlmIChJTlRFTF9HRU4o
ZGV2X3ByaXYpID49IDEyKSB7DQoNCj4gKwkJaGRpc3BsYXlfbWF4ID0gODE5MjsNCj4gKwkJdmRp
c3BsYXlfbWF4ID0gNDMyMDsNCj4gKwkJaHRvdGFsX21heCA9IDgxOTI7DQo+ICsJCXZ0b3RhbF9t
YXggPSA4MTkyOw0KPiArCX0gZWxzZSBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA5IHx8DQo+
ICsJCSAgIElTX0JST0FEV0VMTChkZXZfcHJpdikgfHwgSVNfSEFTV0VMTChkZXZfcHJpdikpIHsN
Cj4gIAkJaGRpc3BsYXlfbWF4ID0gODE5MjsgLyogRkRJIG1heCA0MDk2IGhhbmRsZWQgZWxzZXdo
ZXJlDQo+ICovDQo+ICAJCXZkaXNwbGF5X21heCA9IDQwOTY7DQo+ICAJCWh0b3RhbF9tYXggPSA4
MTkyOw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
