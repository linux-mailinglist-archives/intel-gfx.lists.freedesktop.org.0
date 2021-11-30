Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 546D8463539
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Nov 2021 14:17:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EB906EC2F;
	Tue, 30 Nov 2021 13:17:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96DDD6EC2A
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Nov 2021 13:17:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10183"; a="234935644"
X-IronPort-AV: E=Sophos;i="5.87,275,1631602800"; d="scan'208";a="234935644"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 05:17:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,275,1631602800"; d="scan'208";a="559594086"
Received: from irsmsx603.ger.corp.intel.com ([163.33.146.9])
 by fmsmga008.fm.intel.com with ESMTP; 30 Nov 2021 05:17:13 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 irsmsx603.ger.corp.intel.com (163.33.146.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 30 Nov 2021 13:17:12 +0000
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.2308.020;
 Tue, 30 Nov 2021 13:17:12 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 02/20] drm/i915/fbc: Pass whole plane state
 to intel_fbc_min_limit()
Thread-Index: AQHX4SelSzlSzv9iHE+GQYW5+dzbSKwcFs/w
Date: Tue, 30 Nov 2021 13:17:12 +0000
Message-ID: <c7228c7a3312432e84ba85c8f9333a6f@intel.com>
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
 <20211124113652.22090-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20211124113652.22090-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 02/20] drm/i915/fbc: Pass whole plane state
 to intel_fbc_min_limit()
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxlDQo+IFN5
cmphbGENCj4gU2VudDogV2VkbmVzZGF5LCBOb3ZlbWJlciAyNCwgMjAyMSAxOjM3IFBNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhd
IFtQQVRDSCAwMi8yMF0gZHJtL2k5MTUvZmJjOiBQYXNzIHdob2xlIHBsYW5lIHN0YXRlIHRvDQo+
IGludGVsX2ZiY19taW5fbGltaXQoKQ0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IE5vIHJlYXNvbiB0byBidXJkZW4gdGhl
IGNhbGxlciB3aXRoIHRoZSBkZXRhaWxzIG9uIGhvdyB0aGUgbWluaW11bQ0KPiBjb21wcmVzc2lv
biBsaW1pdCBpcyBjYWxjdWxhdGVkLCBzbyBqdXN0IHBhc3MgaW4gdGhlIHdob2xlIHBsYW5lIHN0
YXRlIGluc3RlYWQgb2YNCj4ganVzdCB0aGUgY3BwIHZhbHVlLg0KPiANCj4gU2lnbmVkLW9mZi1i
eTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCg0KUmV2
aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gLS0tDQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIHwgNyArKysrLS0tDQo+
ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPiANCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+IGluZGV4IGQwYzM0
YmMzYWY2Yy4uMDgzYzBjYWI0ODQ3IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZmJjLmMNCj4gQEAgLTY3OSw4ICs2NzksMTAgQEAgc3RhdGljIHU2NCBpbnRlbF9m
YmNfc3RvbGVuX2VuZChzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gIAlyZXR1
cm4gbWluKGVuZCwgaW50ZWxfZmJjX2NmYl9iYXNlX21heChpOTE1KSk7ICB9DQo+IA0KPiAtc3Rh
dGljIGludCBpbnRlbF9mYmNfbWluX2xpbWl0KGludCBmYl9jcHApDQo+ICtzdGF0aWMgaW50IGlu
dGVsX2ZiY19taW5fbGltaXQoY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlDQo+ICsqcGxh
bmVfc3RhdGUpDQo+ICB7DQo+ICsJaW50IGZiX2NwcCA9IHBsYW5lX3N0YXRlLT5ody5mYiA/IHBs
YW5lX3N0YXRlLT5ody5mYi0+Zm9ybWF0LT5jcHBbMF0NCj4gOg0KPiArMDsNCj4gKw0KPiAgCXJl
dHVybiBmYl9jcHAgPT0gMiA/IDIgOiAxOw0KPiAgfQ0KPiANCj4gQEAgLTE0NjYsOCArMTQ2OCw3
IEBAIHN0YXRpYyB2b2lkIGludGVsX2ZiY19lbmFibGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0
ZQ0KPiAqc3RhdGUsDQo+IA0KPiAgCWNhY2hlID0gJmZiYy0+c3RhdGVfY2FjaGU7DQo+IA0KPiAt
CW1pbl9saW1pdCA9IGludGVsX2ZiY19taW5fbGltaXQocGxhbmVfc3RhdGUtPmh3LmZiID8NCj4g
LQkJCQkJcGxhbmVfc3RhdGUtPmh3LmZiLT5mb3JtYXQtPmNwcFswXSA6DQo+IDApOw0KPiArCW1p
bl9saW1pdCA9IGludGVsX2ZiY19taW5fbGltaXQocGxhbmVfc3RhdGUpOw0KPiANCj4gIAltdXRl
eF9sb2NrKCZmYmMtPmxvY2spOw0KPiANCj4gLS0NCj4gMi4zMi4wDQoNCg==
