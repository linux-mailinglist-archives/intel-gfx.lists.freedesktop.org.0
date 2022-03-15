Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26B3F4DA285
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 19:40:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FF0710E31D;
	Tue, 15 Mar 2022 18:40:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CDE010E31D
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 18:40:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647369601; x=1678905601;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=kWRUoaJ34M86kwA0LiB/VMVgXaWgSR//Til6gTmD18o=;
 b=C7/C+DK43AG3GgtaAQtlSymwGmK+YRBrYs9MsCpvS6jbGksCSpoAPObe
 eWGVodLzIZ6pUBMQ7vt/xKwWIxJQKqsY1jhg5KvXMen4BjNLxacDx2QzU
 H5j2XdwvtfYEoFo6h0K5r+dYeCbpqHyagsL1CZZ6all7Z0lAvjjEHuhcH
 ypDON2+E2IPveJaOUJ1VsjzGFoRnYmVHP5ZrEXp904YlMFvyGcPDIurLr
 vbRLlOIRccpTJrFkMJe9C8SSQiiJBa9HWyEoxC1GRIaAcAgrY3XyJx0Bh
 adprI3wPw4yA682oYiKuMSZp0kyU6iLbQrJsUrpBylIZh6ZCrmMXdpbz/ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="281171955"
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="281171955"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 11:40:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="714293859"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga005.jf.intel.com with ESMTP; 15 Mar 2022 11:40:00 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 15 Mar 2022 11:39:59 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 15 Mar 2022 11:39:59 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.021;
 Tue, 15 Mar 2022 11:39:59 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 6/9] drm/i915: Schedule DRRS work from
 intel_drrs_enable()
Thread-Index: AQHYOHCW5cLpaxsuZ06msH/RuxLOi6zBPOuA
Date: Tue, 15 Mar 2022 18:39:59 +0000
Message-ID: <efd7e6cebc44e7f332ef81f8080ec10d277f3e3d.camel@intel.com>
References: <20220315132752.11849-1-ville.syrjala@linux.intel.com>
 <20220315132752.11849-7-ville.syrjala@linux.intel.com>
In-Reply-To: <20220315132752.11849-7-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <4DD3C4D45BAB27409206105BB6167190@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 6/9] drm/i915: Schedule DRRS work from
 intel_drrs_enable()
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
PiANCj4gU2NoZWR1bGUgdGhlIERSUlMgZG93bmNsb2NrIHdvcmsgYWxyZWFkeSBmcm9tIGludGVs
X2RycnNfZW5hYmxlKCkNCj4gaW5zdGVhZCBvZiB3YWl0aW5nIGFyb3VuZCBmb3IgYSBmcm9udGJ1
ZmZlciBmbHVzaCB0aGF0IG1heSBvcg0KPiBtYXkgbm90IGV2ZXIgY29tZS4NCg0KUmV2aWV3ZWQt
Ynk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+IA0K
PiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHJy
cy5jIHwgMTAgKysrKysrKystLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RycnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHJycy5jDQo+IGluZGV4IGYzNjM5NGZkODViZS4uOGY5ZTBmZGUwYzVhIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RycnMuYw0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RycnMuYw0KPiBAQCAtMTY4LDYgKzE2OCwx
MSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kcnJzX3NldF9zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0YyAq
Y3J0YywNCj4gIAljcnRjLT5kcnJzLnJlZnJlc2hfcmF0ZSA9IHJlZnJlc2hfcmF0ZTsNCj4gIH0N
Cj4gIA0KPiArc3RhdGljIHZvaWQgaW50ZWxfZHJyc19zY2hlZHVsZV93b3JrKHN0cnVjdCBpbnRl
bF9jcnRjICpjcnRjKQ0KPiArew0KPiArCW1vZF9kZWxheWVkX3dvcmsoc3lzdGVtX3dxLCAmY3J0
Yy0+ZHJycy53b3JrLCBtc2Vjc190b19qaWZmaWVzKDEwMDApKTsNCj4gK30NCj4gKw0KPiAgc3Rh
dGljIHVuc2lnbmVkIGludCBpbnRlbF9kcnJzX2Zyb250YnVmZmVyX2JpdHMoY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ICB7DQo+ICAJc3RydWN0IGludGVsX2Ny
dGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPnVhcGkuY3J0Yyk7DQo+IEBAIC0y
MDAsNiArMjA1LDggQEAgdm9pZCBpbnRlbF9kcnJzX2VuYWJsZShjb25zdCBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gIAljcnRjLT5kcnJzLmZyb250YnVmZmVyX2JpdHMg
PSBpbnRlbF9kcnJzX2Zyb250YnVmZmVyX2JpdHMoY3J0Y19zdGF0ZSk7DQo+ICAJY3J0Yy0+ZHJy
cy5idXN5X2Zyb250YnVmZmVyX2JpdHMgPSAwOw0KPiAgDQo+ICsJaW50ZWxfZHJyc19zY2hlZHVs
ZV93b3JrKGNydGMpOw0KPiArDQo+ICAJbXV0ZXhfdW5sb2NrKCZjcnRjLT5kcnJzLm11dGV4KTsN
Cj4gIH0NCj4gIA0KPiBAQCAtMjk5LDggKzMwNiw3IEBAIHN0YXRpYyB2b2lkIGludGVsX2RycnNf
ZnJvbnRidWZmZXJfdXBkYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwNCj4g
IAkJICogb3RoZXIgZmJzIGFyZSBxdWllc2NlbnQgdG9vDQo+ICAJCSAqLw0KPiAgCQlpZiAoIWNy
dGMtPmRycnMuYnVzeV9mcm9udGJ1ZmZlcl9iaXRzKQ0KPiAtCQkJbW9kX2RlbGF5ZWRfd29yayhz
eXN0ZW1fd3EsICZjcnRjLT5kcnJzLndvcmssDQo+IC0JCQkJCSBtc2Vjc190b19qaWZmaWVzKDEw
MDApKTsNCj4gKwkJCWludGVsX2RycnNfc2NoZWR1bGVfd29yayhjcnRjKTsNCj4gIAkJZWxzZQ0K
PiAgCQkJY2FuY2VsX2RlbGF5ZWRfd29yaygmY3J0Yy0+ZHJycy53b3JrKTsNCj4gIA0KDQo=
