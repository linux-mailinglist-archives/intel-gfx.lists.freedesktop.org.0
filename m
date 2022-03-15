Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1384DA281
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 19:39:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1C0910E141;
	Tue, 15 Mar 2022 18:39:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8CD610E141
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 18:39:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647369574; x=1678905574;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=oiTTg3asuZ8U8Vditkc5VC+DH49nIZU+1qz6Ttsgot4=;
 b=DiPJurrZ8MXGmB7BPSupGEmkfANck4qV0i/KvNWrD3Uy3d4M73D6YJhR
 c7jAywQwOTubIILxDBVlL7TdHbxVe00F5JPyIy8JJ+52LN8HMVpUtJNJv
 MPZ6XG0n5dTAq1U1JajbY5r1TUmR0QfTPO9Wfg76/PGk0LOMMmCEb/l0x
 bPaLz92UEj/6aULh4eejPI387RDrJB3fffPKTGp6tR19w6Hmp+gIf+tW+
 Bk4WF2VSNBWjGneGEDnvvKIBqEosq0mbV8a+tve1f2bKFII1CGh0Z1P5V
 bTD7fji3W80d9HPO3Fy1cOVUrjOtd0APw0kle27tQWF/i8luB8LEsYTcB Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="342826285"
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="342826285"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 11:39:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="820024209"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 15 Mar 2022 11:39:34 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 15 Mar 2022 11:39:33 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 15 Mar 2022 11:39:33 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.021;
 Tue, 15 Mar 2022 11:39:33 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 5/9] drm/i915: Don't cancel/schedule drrs
 work if the pipe wasn't affected
Thread-Index: AQHYOHCKBWureZQGREeBvJ2G5sfqk6zBPMsA
Date: Tue, 15 Mar 2022 18:39:33 +0000
Message-ID: <836026ddf7ee0d3a0374f01910e048738d5fad1f.camel@intel.com>
References: <20220315132752.11849-1-ville.syrjala@linux.intel.com>
 <20220315132752.11849-6-ville.syrjala@linux.intel.com>
In-Reply-To: <20220315132752.11849-6-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <5548C1EB9B8EF24393DD2711BE44CDE4@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 5/9] drm/i915: Don't cancel/schedule drrs
 work if the pipe wasn't affected
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

T24gVHVlLCAyMDIyLTAzLTE1IGF0IDE1OjI3ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gU2tpcCBhbGwgdGhlIERSUlMgd29yayBjYW5jZWwvc2NoZWR1bGUgc3R1ZmYgaWYgdGhl
IHBpcGUncw0KPiBmcm9udGJ1ZmZlciBiaXRzIHdlcmUgbm90IGFtb25nIHRob3NlIGFmZmVjdGVk
IGJ5IHRoZSBmcm9udGJ1ZmZlcg0KPiByZW5kZXJpbmcuDQoNClJldmlld2VkLWJ5OiBKb3PDqSBS
b2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiANCj4gU2lnbmVkLW9m
Zi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4g
LS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RycnMuYyB8IDE3ICsr
KysrKysrLS0tLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA5IGRl
bGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHJycy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcnJz
LmMNCj4gaW5kZXggOTFhYWI3N2M0OTVjLi5mMzYzOTRmZDg1YmUgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHJycy5jDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHJycy5jDQo+IEBAIC0yNzgsMzIgKzI3OCwzMSBA
QCBzdGF0aWMgdm9pZCBpbnRlbF9kcnJzX2Zyb250YnVmZmVyX3VwZGF0ZShzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ICAJZm9yX2VhY2hfaW50ZWxfY3J0YygmZGV2X3ByaXYt
PmRybSwgY3J0Yykgew0KPiAgCQl1bnNpZ25lZCBpbnQgZnJvbnRidWZmZXJfYml0czsNCj4gIA0K
PiAtCQljYW5jZWxfZGVsYXllZF93b3JrKCZjcnRjLT5kcnJzLndvcmspOw0KPiAtDQo+ICAJCW11
dGV4X2xvY2soJmNydGMtPmRycnMubXV0ZXgpOw0KPiAgDQo+IC0JCWlmICghaW50ZWxfZHJyc19p
c19lbmFibGVkKGNydGMpKSB7DQo+ICsJCWZyb250YnVmZmVyX2JpdHMgPSBhbGxfZnJvbnRidWZm
ZXJfYml0cyAmIGNydGMtPmRycnMuZnJvbnRidWZmZXJfYml0czsNCj4gKwkJaWYgKCFmcm9udGJ1
ZmZlcl9iaXRzKSB7DQo+ICAJCQltdXRleF91bmxvY2soJmNydGMtPmRycnMubXV0ZXgpOw0KPiAg
CQkJY29udGludWU7DQo+ICAJCX0NCj4gIA0KPiAtCQlmcm9udGJ1ZmZlcl9iaXRzID0gYWxsX2Zy
b250YnVmZmVyX2JpdHMgJiBjcnRjLT5kcnJzLmZyb250YnVmZmVyX2JpdHM7DQo+ICAJCWlmIChp
bnZhbGlkYXRlKQ0KPiAgCQkJY3J0Yy0+ZHJycy5idXN5X2Zyb250YnVmZmVyX2JpdHMgfD0gZnJv
bnRidWZmZXJfYml0czsNCj4gIAkJZWxzZQ0KPiAgCQkJY3J0Yy0+ZHJycy5idXN5X2Zyb250YnVm
ZmVyX2JpdHMgJj0gfmZyb250YnVmZmVyX2JpdHM7DQo+ICANCj4gIAkJLyogZmx1c2gvaW52YWxp
ZGF0ZSBtZWFucyBidXN5IHNjcmVlbiBoZW5jZSB1cGNsb2NrICovDQo+IC0JCWlmIChmcm9udGJ1
ZmZlcl9iaXRzKQ0KPiAtCQkJaW50ZWxfZHJyc19zZXRfc3RhdGUoY3J0YywgRFJSU19SRUZSRVNI
X1JBVEVfSElHSCk7DQo+ICsJCWludGVsX2RycnNfc2V0X3N0YXRlKGNydGMsIERSUlNfUkVGUkVT
SF9SQVRFX0hJR0gpOw0KPiAgDQo+ICAJCS8qDQo+ICAJCSAqIGZsdXNoIGFsc28gbWVhbnMgbm8g
bW9yZSBhY3Rpdml0eSBoZW5jZSBzY2hlZHVsZSBkb3duY2xvY2ssIGlmIGFsbA0KPiAgCQkgKiBv
dGhlciBmYnMgYXJlIHF1aWVzY2VudCB0b28NCj4gIAkJICovDQo+IC0JCWlmICghaW52YWxpZGF0
ZSAmJiAhY3J0Yy0+ZHJycy5idXN5X2Zyb250YnVmZmVyX2JpdHMpDQo+IC0JCQlzY2hlZHVsZV9k
ZWxheWVkX3dvcmsoJmNydGMtPmRycnMud29yaywNCj4gLQkJCQkJICAgICAgbXNlY3NfdG9famlm
ZmllcygxMDAwKSk7DQo+ICsJCWlmICghY3J0Yy0+ZHJycy5idXN5X2Zyb250YnVmZmVyX2JpdHMp
DQo+ICsJCQltb2RfZGVsYXllZF93b3JrKHN5c3RlbV93cSwgJmNydGMtPmRycnMud29yaywNCj4g
KwkJCQkJIG1zZWNzX3RvX2ppZmZpZXMoMTAwMCkpOw0KPiArCQllbHNlDQo+ICsJCQljYW5jZWxf
ZGVsYXllZF93b3JrKCZjcnRjLT5kcnJzLndvcmspOw0KPiAgDQo+ICAJCW11dGV4X3VubG9jaygm
Y3J0Yy0+ZHJycy5tdXRleCk7DQo+ICAJfQ0KDQo=
