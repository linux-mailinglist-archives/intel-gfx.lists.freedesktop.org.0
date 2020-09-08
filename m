Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E247261470
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Sep 2020 18:22:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0522E6E027;
	Tue,  8 Sep 2020 16:21:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C83DE6E027
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Sep 2020 16:21:57 +0000 (UTC)
IronPort-SDR: kKSOaz8NOk00I0jO9x5Z8Em3paDvLe7zyrM7X6WvwpDiZakMcs/RyzqGDiYWYo8PoSLeeHdxFu
 w28Jl+hM8/Gg==
X-IronPort-AV: E=McAfee;i="6000,8403,9738"; a="159139430"
X-IronPort-AV: E=Sophos;i="5.76,406,1592895600"; d="scan'208";a="159139430"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2020 09:21:56 -0700
IronPort-SDR: /xQE3tyLDVqU98kEhw0oR8JIxU0bhPUubukAQvblqzsal7G50fKtHoZYrmAWqRmNoQtRAAloHd
 Fcmkz2st2o5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,406,1592895600"; d="scan'208";a="341241377"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by FMSMGA003.fm.intel.com with ESMTP; 08 Sep 2020 09:21:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 8 Sep 2020 09:21:55 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 8 Sep 2020 09:21:55 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Tue, 8 Sep 2020 09:21:55 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [02/12] drm/i915: Add PORT_{H, I} to intel_port_to_power_domain()
Thread-Index: AQHWhfmdwGS6ft9zTEWo2mAnxFhqEqlfYosA
Date: Tue, 8 Sep 2020 16:21:55 +0000
Message-ID: <57a39253f56b179159c847939f7001a575bdb844.camel@intel.com>
References: <20200630215601.28557-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20200630215601.28557-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <3480FF7101D92E49A4A942CB6F15A008@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [02/12] drm/i915: Add PORT_{H,
 I} to intel_port_to_power_domain()
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

T24gV2VkLCAyMDIwLTA3LTAxIGF0IDAwOjU1ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPA0KPiB2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bQ0KPiA+DQo+IA0KPiBXZSBuZWVkIHRvIGdvIHVwIHRvIFBPUlRfSSAoYWthLiBUQzYpIHRoZXNl
IGRheXMuDQo+IA0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5z
b3V6YUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDwNCj4g
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20NCj4gPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNCArKysrDQo+ICAxIGZpbGUgY2hh
bmdlZCwgNCBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBpbmRleCAxODJjZWYwZGMyZmQuLjY2NWFhNDI4M2ZiOSAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMN
Cj4gQEAgLTcyODksNiArNzI4OSwxMCBAQCBlbnVtIGludGVsX2Rpc3BsYXlfcG93ZXJfZG9tYWlu
IGludGVsX3BvcnRfdG9fcG93ZXJfZG9tYWluKGVudW0gcG9ydCBwb3J0KQ0KPiAgCQlyZXR1cm4g
UE9XRVJfRE9NQUlOX1BPUlRfRERJX0ZfTEFORVM7DQo+ICAJY2FzZSBQT1JUX0c6DQo+ICAJCXJl
dHVybiBQT1dFUl9ET01BSU5fUE9SVF9ERElfR19MQU5FUzsNCj4gKwljYXNlIFBPUlRfSDoNCj4g
KwkJcmV0dXJuIFBPV0VSX0RPTUFJTl9QT1JUX0RESV9IX0xBTkVTOw0KPiArCWNhc2UgUE9SVF9J
Og0KPiArCQlyZXR1cm4gUE9XRVJfRE9NQUlOX1BPUlRfRERJX0lfTEFORVM7DQo+ICAJZGVmYXVs
dDoNCj4gIAkJTUlTU0lOR19DQVNFKHBvcnQpOw0KPiAgCQlyZXR1cm4gUE9XRVJfRE9NQUlOX1BP
UlRfT1RIRVI7DQo+IA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
