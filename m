Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2F263C38
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 21:55:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB202893AB;
	Tue,  9 Jul 2019 19:55:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BA89893AB
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 19:55:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 12:55:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,471,1557212400"; d="scan'208";a="173660319"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by FMSMGA003.fm.intel.com with ESMTP; 09 Jul 2019 12:55:03 -0700
Received: from fmsmsx124.amr.corp.intel.com (10.18.125.39) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 9 Jul 2019 12:55:03 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.206]) by
 fmsmsx124.amr.corp.intel.com ([169.254.8.213]) with mapi id 14.03.0439.000;
 Tue, 9 Jul 2019 12:55:03 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [PATCH v2 19/25] drm/i915/tgl: init ddi port A-C for Tiger Lake
Thread-Index: AQHVNeNFqm3ou6WELUyApPJeOhkZEKbDKfYA
Date: Tue, 9 Jul 2019 19:55:02 +0000
Message-ID: <d1b1c6861f533a4a56145d7e44b4ed0f35b2158a.camel@intel.com>
References: <20190708231629.9296-1-lucas.demarchi@intel.com>
 <20190708231629.9296-20-lucas.demarchi@intel.com>
In-Reply-To: <20190708231629.9296-20-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.4]
Content-ID: <71D12B01F7082A4FA63E8E29AF97DA48@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 19/25] drm/i915/tgl: init ddi port A-C
 for Tiger Lake
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

T24gTW9uLCAyMDE5LTA3LTA4IGF0IDE2OjE2IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IEZyb206IE1haGVzaCBLdW1hciA8bWFoZXNoMS5rdW1hckBpbnRlbC5jb20+DQo+IA0KPiBU
aGlzIHBhdGNoIGluaXRpYWxpemVzIERESSBQT1JUIEEsIEIgJiBDIGZvciBUaWdlciBsYWtlLiBP
dGhlcg0KPiBUQyBwb3J0cyBuZWVkIHRvIGJlIGluaXRpYWxpemVkIGxhdGVyIG9uY2UgY29ycmVz
cG9uZGluZyBjb2RlIGlzDQo+IHRoZXJlLg0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gDQo+IENjOiBNYWRoYXYgQ2hhdWhh
biA8bWFkaGF2LmNoYXVoYW5AaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBNYWhlc2ggS3Vt
YXIgPG1haGVzaDEua3VtYXJAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBN
YXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDkgKysrKysrKy0tDQo+ICAxIGZpbGUg
Y2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gaW5kZXggZTIyNGRj
ZjYwZTMxLi45Y2NmNThmZjRkYmEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IEBAIC0xNTMwMiwxMiArMTUzMDIsMTcgQEAgc3RhdGlj
IHZvaWQgaW50ZWxfc2V0dXBfb3V0cHV0cyhzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYpDQo+ICAJaWYgKCFIQVNfRElTUExBWShkZXZfcHJpdikpDQo+ICAJCXJldHVybjsNCj4g
IA0KPiAtCWlmIChJU19FTEtIQVJUTEFLRShkZXZfcHJpdikpIHsNCj4gKwlpZiAoSU5URUxfR0VO
KGRldl9wcml2KSA+PSAxMikgew0KPiArCQkvKiBUT0RPOiBpbml0aWFsaXplIFRDIHBvcnRzIGFz
IHdlbGwgKi8NCj4gKwkJaW50ZWxfZGRpX2luaXQoZGV2X3ByaXYsIFBPUlRfQSk7DQo+ICsJCWlu
dGVsX2RkaV9pbml0KGRldl9wcml2LCBQT1JUX0IpOw0KPiArCQlpbnRlbF9kZGlfaW5pdChkZXZf
cHJpdiwgUE9SVF9DKTsNCj4gKwl9IGVsc2UgaWYgKElTX0VMS0hBUlRMQUtFKGRldl9wcml2KSkg
ew0KPiAgCQlpbnRlbF9kZGlfaW5pdChkZXZfcHJpdiwgUE9SVF9BKTsNCj4gIAkJaW50ZWxfZGRp
X2luaXQoZGV2X3ByaXYsIFBPUlRfQik7DQo+ICAJCWludGVsX2RkaV9pbml0KGRldl9wcml2LCBQ
T1JUX0MpOw0KPiAgCQlpY2xfZHNpX2luaXQoZGV2X3ByaXYpOw0KPiAtCX0gZWxzZSBpZiAoSU5U
RUxfR0VOKGRldl9wcml2KSA+PSAxMSkgew0KPiArCX0gZWxzZSBpZiAoSVNfR0VOKGRldl9wcml2
LCAxMSkpIHsNCj4gIAkJaW50ZWxfZGRpX2luaXQoZGV2X3ByaXYsIFBPUlRfQSk7DQo+ICAJCWlu
dGVsX2RkaV9pbml0KGRldl9wcml2LCBQT1JUX0IpOw0KPiAgCQlpbnRlbF9kZGlfaW5pdChkZXZf
cHJpdiwgUE9SVF9DKTsNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
