Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8EA440539
	for <lists+intel-gfx@lfdr.de>; Sat, 30 Oct 2021 00:00:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D676F6EA8B;
	Fri, 29 Oct 2021 22:00:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0F836EA8B
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Oct 2021 22:00:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10152"; a="230711529"
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="230711529"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 15:00:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="538862058"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga008.fm.intel.com with ESMTP; 29 Oct 2021 15:00:32 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 15:00:31 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 15:00:31 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Fri, 29 Oct 2021 15:00:31 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 11/16] drm/i915: Query the vswing levels
 per-lane for snps phy
Thread-Index: AQHXuvPf1ZkxA3mUUUOt1p7kpg6TZavrIgKA
Date: Fri, 29 Oct 2021 22:00:31 +0000
Message-ID: <0d375f55c641e622ad427748e3e0a982b0a2488c.camel@intel.com>
References: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
 <20211006204937.30774-12-ville.syrjala@linux.intel.com>
In-Reply-To: <20211006204937.30774-12-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <85753F48241E4245A8C80DA5D233EB16@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 11/16] drm/i915: Query the vswing levels
 per-lane for snps phy
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

T24gV2VkLCAyMDIxLTEwLTA2IGF0IDIzOjQ5ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gUHJlcGFyZSBmb3IgcGVyLWxhbmUgZHJpdmUgc2V0dGluZ3MgYnkgcXVlcnlpbmcgdGhl
IGRlc2lyZWQgdnN3aW5nDQo+IGxldmVsIHBlci1sYW5lLg0KDQpSZXZpZXdlZC1ieTogSm9zw6kg
Um9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gDQo+IFNpZ25lZC1v
ZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+
IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zbnBzX3BoeS5jIHwg
MiArLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+
IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zbnBz
X3BoeS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zbnBzX3BoeS5jDQo+
IGluZGV4IDVlMjBmMzQwNzMwZi4uYzIyNTEyMThhMzllIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3NucHNfcGh5LmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zbnBzX3BoeS5jDQo+IEBAIC01OCw3ICs1OCw2IEBA
IHZvaWQgaW50ZWxfc25wc19waHlfc2V0X3NpZ25hbF9sZXZlbHMoc3RydWN0IGludGVsX2VuY29k
ZXIgKmVuY29kZXIsDQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9f
aTkxNShlbmNvZGVyLT5iYXNlLmRldik7DQo+ICAJY29uc3Qgc3RydWN0IGludGVsX2RkaV9idWZf
dHJhbnMgKnRyYW5zOw0KPiAgCWVudW0gcGh5IHBoeSA9IGludGVsX3BvcnRfdG9fcGh5KGRldl9w
cml2LCBlbmNvZGVyLT5wb3J0KTsNCj4gLQlpbnQgbGV2ZWwgPSBpbnRlbF9kZGlfbGV2ZWwoZW5j
b2RlciwgY3J0Y19zdGF0ZSwgMCk7DQo+ICAJaW50IG5fZW50cmllcywgbG47DQo+ICANCj4gIAl0
cmFucyA9IGVuY29kZXItPmdldF9idWZfdHJhbnMoZW5jb2RlciwgY3J0Y19zdGF0ZSwgJm5fZW50
cmllcyk7DQo+IEBAIC02Niw2ICs2NSw3IEBAIHZvaWQgaW50ZWxfc25wc19waHlfc2V0X3NpZ25h
bF9sZXZlbHMoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ICAJCXJldHVybjsNCj4g
IA0KPiAgCWZvciAobG4gPSAwOyBsbiA8IDQ7IGxuKyspIHsNCj4gKwkJaW50IGxldmVsID0gaW50
ZWxfZGRpX2xldmVsKGVuY29kZXIsIGNydGNfc3RhdGUsIGxuKTsNCj4gIAkJdTMyIHZhbCA9IDA7
DQo+ICANCj4gIAkJdmFsIHw9IFJFR19GSUVMRF9QUkVQKFNOUFNfUEhZX1RYX0VRX01BSU4sIHRy
YW5zLT5lbnRyaWVzW2xldmVsXS5zbnBzLnZzd2luZyk7DQoNCg==
