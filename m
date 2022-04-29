Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA635156C0
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Apr 2022 23:23:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0745110FACB;
	Fri, 29 Apr 2022 21:23:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5900510FACB
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Apr 2022 21:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651267385; x=1682803385;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=g63hjWNeaCFf7YJBSsprMiieb2nREvieIBgzyM7tJGs=;
 b=E+p5ARHRQzzaEkG1xzZso8e5ECelATwjhyOoJk/jeci2262V4KeEsZDC
 gxJbrG2r9P9uxg8EhPOvxn4pCTc2OCXbIyQIpAkxjhQyvX5eKHazblWpq
 /mRe2f1wJ1M1db4wH4I/rrMrFzHbakSSH0ZkpyyrZ4Pjxq2wGuAvqg59T
 O4Hy6VriIRVxsdJ/rFMZwgjyF6xKDCcX6NQn+eb1GfzL5Ov0OTiRj+CNN
 OBovBZ4ITaUXt40Jsy3XjUGDvR0ITosx5R4CKCIUL5wTvRpKq0d97c+00
 vlLYFH0dGRoS/G7ozW2iq6MRFqvm6autfA9IEpK6HOv7Twvhebm7CYiOu A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10332"; a="265621473"
X-IronPort-AV: E=Sophos;i="5.91,186,1647327600"; d="scan'208";a="265621473"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2022 14:23:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,186,1647327600"; d="scan'208";a="732280392"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 29 Apr 2022 14:23:04 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 29 Apr 2022 14:23:04 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 29 Apr 2022 14:23:03 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Fri, 29 Apr 2022 14:23:03 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH 1/3] drm/i915/display: Do not schedule DRRS work thread
 when it is not active
Thread-Index: AQHYW0ReYZgLgHw9bkSc5KeBLXcT9q0Hg1sAgABaSoA=
Date: Fri, 29 Apr 2022 21:23:03 +0000
Message-ID: <441e57f7631ea8b682a1a8e03d8adf9fedff0ce6.camel@intel.com>
References: <20220428211058.399630-1-jose.souza@intel.com>
 <YmwLqETt7MXafIRg@intel.com>
In-Reply-To: <YmwLqETt7MXafIRg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <E2E367FA274F9A4591C7D7C157CC55F9@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/display: Do not schedule DRRS
 work thread when it is not active
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIyLTA0LTI5IGF0IDE5OjAwICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFRodSwgQXByIDI4LCAyMDIyIGF0IDAyOjEwOjU2UE0gLTA3MDAsIEpvc8OpIFJvYmVy
dG8gZGUgU291emEgd3JvdGU6DQo+ID4gRnJvbnRidWZmZXIgdXBkYXRlcyB3ZXJlIHNjaGVkdWxp
bmcgdGhlIGV4ZWN1dGlvbiBvZiBEUlJTIHdvcmsgdGhyZWFkDQo+ID4gZXZlbiBpZiBEUlJTIGlz
IG5vdCBhY3RpdmUuDQo+ID4gVGhlcmUgd2FzIG5vIGlzc3VlcyB3aXRoIGl0IGJlY2F1c2UgaW50
ZWxfZHJyc19kb3duY2xvY2tfd29yaygpIGNoZWNrcw0KPiA+IGlmIERSUlMgaXMgYWN0aXZlIGJ1
dCB0aGVyZSBpcyBubyByZWFzb24gdG8ga2VlcCBzY2hlZHVsaW5nIHRoaXMgd29yaw0KPiA+IHRo
cmVhZCBhbmQgd2FzdGluZyBDUFUgdGltZS4NCj4gPiANCj4gPiBDYzogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PD
qSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcnJzLmMgfCA1ICsrKysrDQo+ID4g
IDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcnJzLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RycnMuYw0KPiA+IGluZGV4IDE2NmNhZjI5M2Y3YmMuLjA0
YmMyOTY3NjFiZTAgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcnJzLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RycnMuYw0KPiA+IEBAIC0yMzYsNiArMjM2LDExIEBAIHN0YXRpYyB2b2lkIGludGVsX2Ry
cnNfZnJvbnRidWZmZXJfdXBkYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwN
Cj4gPiAgCQllbHNlDQo+ID4gIAkJCWNydGMtPmRycnMuYnVzeV9mcm9udGJ1ZmZlcl9iaXRzICY9
IH5mcm9udGJ1ZmZlcl9iaXRzOw0KPiA+ICANCj4gPiArCQlpZiAoIWludGVsX2RycnNfaXNfYWN0
aXZlKGNydGMpKSB7DQo+ID4gKwkJCW11dGV4X3VubG9jaygmY3J0Yy0+ZHJycy5tdXRleCk7DQo+
ID4gKwkJCWNvbnRpbnVlOw0KPiA+ICsJCX0NCj4gDQo+IFNob3VsZCBiZSBpbXBvc3NpYmxlIGR1
ZSB0byBjcnRjLT5kcnJzLmZyb250YnVmZmVyX2JpdHM9PTAuDQoNClllcCwgbXkgYmFkIHRoaXMg
cGF0Y2ggaXMgbm90IG5lZWRlZC4NCkNhbiB5b3UgcmV2aWV3IHRoZSByZW1haW5pbmc/DQoNCkkg
aGF2ZSBvbmUgbW9yZSBwYXRjaCB0byB0aGlzIHNlcmllcyB0aGF0IGF2b2lkcyBEUCBsaW5rIGNv
bmZpZ3VyYXRpb24gY2hhbmdlIGR1cmluZyBzZWFtbGVzcyBtb2RlIGNoYW5nZSwgd2hlbiBwb3Nz
aWJsZS4NClBsYW5uaW5nIHRvIHNlbmQgbmV3IHZlcnNpb24gd2l0aCB0aGlzIHBhdGNoIGFueSBv
dGhlciBjaGFuZ2VzIHRoYXQgeW91IHJlcXVlc3QuDQoNCnRoYW5rcw0KDQo+IA0KPiA+ICsNCj4g
PiAgCQkvKiBmbHVzaC9pbnZhbGlkYXRlIG1lYW5zIGJ1c3kgc2NyZWVuIGhlbmNlIHVwY2xvY2sg
Ki8NCj4gPiAgCQlpbnRlbF9kcnJzX3NldF9zdGF0ZShjcnRjLCBEUlJTX1JFRlJFU0hfUkFURV9I
SUdIKTsNCj4gPiAgDQo+ID4gLS0gDQo+ID4gMi4zNi4wDQo+IA0KDQo=
