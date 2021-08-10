Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 811583E85B0
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Aug 2021 23:51:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 573068951B;
	Tue, 10 Aug 2021 21:51:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 739408951B
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Aug 2021 21:51:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10072"; a="195269492"
X-IronPort-AV: E=Sophos;i="5.84,310,1620716400"; d="scan'208";a="195269492"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2021 14:51:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,310,1620716400"; d="scan'208";a="589586080"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga001.fm.intel.com with ESMTP; 10 Aug 2021 14:51:37 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 10 Aug 2021 14:51:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 10 Aug 2021 14:51:35 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.010;
 Tue, 10 Aug 2021 14:51:35 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v5 9/9] drm/i915/dg2: Configure PCON in DP
 pre-enable path
Thread-Index: AQHXihgz+fyWfga3a0OXwqWJyTWFMattxkaA
Date: Tue, 10 Aug 2021 21:51:35 +0000
Message-ID: <ec710edb14e5aee56bb1e2377d410cb326485720.camel@intel.com>
References: <20210805163647.801064-1-matthew.d.roper@intel.com>
 <20210805163647.801064-10-matthew.d.roper@intel.com>
In-Reply-To: <20210805163647.801064-10-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <CF2461F5C3374342817968834070D290@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v5 9/9] drm/i915/dg2: Configure PCON in DP
 pre-enable path
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

T24gVGh1LCAyMDIxLTA4LTA1IGF0IDA5OjM2IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBG
cm9tOiBBbmtpdCBOYXV0aXlhbCA8YW5raXQuay5uYXV0aXlhbEBpbnRlbC5jb20+DQo+IA0KPiBB
ZGQgdGhlIGZ1bmN0aW9ucyB0byBjb25maWd1cmUgSERNSTIuMSBwY29uIGZvciBERzIsIGJlZm9y
ZSBEUCBsaW5rDQo+IHRyYWluaW5nLg0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBT
b3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEFua2l0
IE5hdXRpeWFsIDxhbmtpdC5rLm5hdXRpeWFsQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTog
TWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgMyArKysNCj4gIDEgZmlsZSBjaGFu
Z2VkLCAzIGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kZGkuYw0KPiBpbmRleCBkODE2Mjk1MWI3OGYuLmU5MzJmZDBmZTdlMiAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+IEBAIC0yNDAyLDYgKzI0
MDIsNyBAQCBzdGF0aWMgdm9pZCBkZzJfZGRpX3ByZV9lbmFibGVfZHAoc3RydWN0IGludGVsX2F0
b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJaWYgKCFpc19tc3QpDQo+ICAJCWludGVsX2RwX3NldF9w
b3dlcihpbnRlbF9kcCwgRFBfU0VUX1BPV0VSX0QwKTsNCj4gIA0KPiArCWludGVsX2RwX2NvbmZp
Z3VyZV9wcm90b2NvbF9jb252ZXJ0ZXIoaW50ZWxfZHAsIGNydGNfc3RhdGUpOw0KPiAgCWludGVs
X2RwX3Npbmtfc2V0X2RlY29tcHJlc3Npb25fc3RhdGUoaW50ZWxfZHAsIGNydGNfc3RhdGUsIHRy
dWUpOw0KPiAgCS8qDQo+ICAJICogRERJIEZFQzogImFudGljaXBhdGVzIGVuYWJsaW5nIEZFQyBl
bmNvZGluZyBzZXRzIHRoZSBGRUNfUkVBRFkgYml0DQo+IEBAIC0yNDA5LDYgKzI0MTAsOCBAQCBz
dGF0aWMgdm9pZCBkZzJfZGRpX3ByZV9lbmFibGVfZHAoc3RydWN0IGludGVsX2F0b21pY19zdGF0
ZSAqc3RhdGUsDQo+ICAJICogdHJhaW5pbmcNCj4gIAkgKi8NCj4gIAlpbnRlbF9kcF9zaW5rX3Nl
dF9mZWNfcmVhZHkoaW50ZWxfZHAsIGNydGNfc3RhdGUpOw0KPiArCWludGVsX2RwX2NoZWNrX2Zy
bF90cmFpbmluZyhpbnRlbF9kcCk7DQo+ICsJaW50ZWxfZHBfcGNvbl9kc2NfY29uZmlndXJlKGlu
dGVsX2RwLCBjcnRjX3N0YXRlKTsNCj4gIA0KPiAgCS8qDQo+ICAJICogNS5oIEZvbGxvdyBEaXNw
bGF5UG9ydCBzcGVjaWZpY2F0aW9uIHRyYWluaW5nIHNlcXVlbmNlIChzZWUgbm90ZXMgZm9yDQoN
Cg==
