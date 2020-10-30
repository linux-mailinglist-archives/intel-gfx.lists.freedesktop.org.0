Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9DBB2A0B0B
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 17:26:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 726C06E9CB;
	Fri, 30 Oct 2020 16:26:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D11AB6E9CB
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 16:26:09 +0000 (UTC)
IronPort-SDR: JDBwsshOeYI6ZMNQqZ1tQEFSoEPOp6+1uqNGq8B+coCysTIzD80QUEWwhJQsfFdRk9gnq5Mbl6
 QdHngkB+Oprw==
X-IronPort-AV: E=McAfee;i="6000,8403,9790"; a="166045875"
X-IronPort-AV: E=Sophos;i="5.77,433,1596524400"; d="scan'208";a="166045875"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 09:26:09 -0700
IronPort-SDR: lAce95gLtn26Ai+J49wYJeEuI1exvIydet1Y0vF+5GXL1tozvbhWG4JIKQMJvGFIhf+wVjD8vG
 /pWl1Io9zxHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,433,1596524400"; d="scan'208";a="527162756"
Received: from irsmsx602.ger.corp.intel.com ([163.33.146.8])
 by fmsmga005.fm.intel.com with ESMTP; 30 Oct 2020 09:26:08 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 30 Oct 2020 16:26:07 +0000
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Fri, 30 Oct 2020 09:26:06 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH] drm/i915: Force initial atomic check in all eDP panels
Thread-Index: AQHWrW5gnTAbYzD9lkySG0HFI6krVamvNxoAgAGWCgA=
Date: Fri, 30 Oct 2020 16:26:06 +0000
Message-ID: <30dad4e376cecc8ba49cd3edd4045f192c83e79a.camel@intel.com>
References: <20201028210712.66475-1-jose.souza@intel.com>
 <20201029161234.GA3795323@ideak-desk.fi.intel.com>
In-Reply-To: <20201029161234.GA3795323@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <AF3D1E8CE3A04849B0E0609F8697297B@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Force initial atomic check in all
 eDP panels
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

T24gVGh1LCAyMDIwLTEwLTI5IGF0IDE4OjEyICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE9u
IFdlZCwgT2N0IDI4LCAyMDIwIGF0IDAyOjA3OjEyUE0gLTA3MDAsIEpvc8OpIFJvYmVydG8gZGUg
U291emEgd3JvdGU6DQo+ID4gQWZ0ZXIgY29tbWl0IDAwZTVkZWI1YzRmNSAoImRybS9pOTE1OiBG
aXggZW5jb2RlciBsb29rdXAgZHVyaW5nIFBTUg0KPiA+IGF0b21pYyBjaGVjayIpIGRpZ19wb3J0
IHdhcyBub3QgYmVpbmcgdXNlZCBidXQgd2hpbGUgZml4aW5nIGl0IEkNCj4gPiByZWFsaXplZCB0
aGF0IHdvdWxkIGJlIGJldHRlciB0byBtYXJrIGFsbCBDUlRDcyB0aGF0IGhhcyBhIGVEUA0KPiA+
IGNvbm5lY3RvciBhcyBuZWVkaW5nIHRvIGhhdmUgdGhlaXIgc3RhdGUgY29tcHV0ZWQuDQo+ID4g
VGhlIHByaW5jaXBhbCByZWFzb24gaXMgdGhhdCBpbiBmdXR1cmUgd2Ugd2lsbCBzdXBwb3J0IFBT
UiBpbg0KPiA+IG11bHRpcGxlIHBhbmVscy4NCj4gPiBBbmQgdGhpcyBpcyBvbmx5IGZvcmNpbmcg
dGhlIHN0YXRlIGNvbXB1dGUgaWYgbm8gcmVnaXN0ZXIgY2hhbmdlIGlzDQo+ID4gbmVlZCBvdXIg
YXRvbWljIGhhbmRsaW5nIHdpbGwganVzdCBpZ25vcmUgdGhpcyBDUlRDICsgY29ubmVjdG9yDQo+
ID4gZHVyaW5nIHRoZSBhdG9taWMgY29tbWl0IHBoYXNlLg0KPiA+IA0KPiA+IENjOiBJbXJlIERl
YWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0
byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMTAgKystLS0tLS0tLQ0KPiA+IMKg
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkNCj4gPiANCj4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBpbmRleCAxNTc2
YzM3MjJkMGIuLmI1NDQxZjBiNWI1OCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IEBAIC0xODc1LDE3ICsxODc1LDExIEBAIHZvaWQgaW50
ZWxfcHNyX2F0b21pY19jaGVjayhzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLA0KPiA+
IMKgCQkJICAgIHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICpuZXdfc3RhdGUpDQo+ID4gwqB7
DQo+ID4gwqAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjb25u
ZWN0b3ItPmRldik7DQo+ID4gLQlzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICppbnRlbF9jb25uZWN0
b3I7DQo+IA0KPiBBcmcsIGNvbXBpbGVyIGRpZG4ndCB3YXJuIGZvciB0aGlzLg0KPiANCj4gPiAt
CXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0Ow0KPiA+IMKgCXN0cnVjdCBkcm1f
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZTsNCj4gPiDCoA0KPiA+IA0KPiA+IA0KPiA+IA0KPiA+IMKg
CWlmICghQ0FOX1BTUihkZXZfcHJpdikgfHwgIW5ld19zdGF0ZS0+Y3J0YyB8fA0KPiA+IC0JICAg
ICFkZXZfcHJpdi0+cHNyLmZvcmNlX21vZGVfY2hhbmdlZCkNCj4gPiAtCQlyZXR1cm47DQo+ID4g
LQ0KPiA+IC0JaW50ZWxfY29ubmVjdG9yID0gdG9faW50ZWxfY29ubmVjdG9yKGNvbm5lY3Rvcik7
DQo+ID4gLQlkaWdfcG9ydCA9IGVuY190b19kaWdfcG9ydCh0b19pbnRlbF9lbmNvZGVyKG5ld19z
dGF0ZS0+YmVzdF9lbmNvZGVyKSk7DQo+ID4gLQlpZiAoZGV2X3ByaXYtPnBzci5kcCAhPSAmZGln
X3BvcnQtPmRwKQ0KPiA+ICsJICAgICFkZXZfcHJpdi0+cHNyLmZvcmNlX21vZGVfY2hhbmdlZCB8
fA0KPiA+ICsJICAgIGNvbm5lY3Rvci0+Y29ubmVjdG9yX3R5cGUgIT0gRFJNX01PREVfQ09OTkVD
VE9SX2VEUCkNCj4gPiDCoAkJcmV0dXJuOw0KPiANCj4gQ2FuJ3QgeW91IHNpbXBsaWZ5IGV2ZW4g
bW9yZSBieSBhbiBpc19lZHAgJiYgQ0FOX1BTUiBjaGVjayBpbg0KPiBpbnRlbF9kcF9pbml0aWFs
X2Zhc3RzZXRfY2hlY2soKSBpbnN0ZWFkIG9mIHRoZSBwc3IuZm9yY2VfbW9kZV9jaGFuZ2VkDQo+
IGxvZ2ljPw0KDQpJbiB0aGUgcGFzdCB3ZSBoYSBwcm9ibGVtcyBmb3JjaW5nIGEgbW9kZXNldCBm
cm9tIHRoZSBpbml0aWFsIGNvbW1pdCBidXQgd2l0aCB0aGlzIG5ldyBjYWxsYmFjayBJIGd1ZXNz
IGl0IHdhcyBmaXhlZC4NCkkgc2VudCBhIHRlc3QgdG8gdHJ5LWJvdCwgaWYgdGhhdCB3b3JrIHdl
IHNpbXBseSBhbmQgcmVtb3ZlIHNvbWUgbW9yZSBjb2RlIGFyb3VuZCBpdC4NCg0KdGhhbmtzIGZv
ciB0aGUgaGVhZHN1cC4NCg0KPiANCj4gPiDCoA0KPiA+IA0KPiA+IA0KPiA+IA0KPiA+IMKgCWNy
dGNfc3RhdGUgPSBkcm1fYXRvbWljX2dldF9uZXdfY3J0Y19zdGF0ZShuZXdfc3RhdGUtPnN0YXRl
LA0KPiA+IC0tIA0KPiA+IDIuMjkuMQ0KPiA+IA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
