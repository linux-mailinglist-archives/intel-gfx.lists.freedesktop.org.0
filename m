Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE4C13CBCF2
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jul 2021 21:47:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2832C6E9D2;
	Fri, 16 Jul 2021 19:47:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2725A6E9D2
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jul 2021 19:47:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10047"; a="197971628"
X-IronPort-AV: E=Sophos;i="5.84,245,1620716400"; d="scan'208";a="197971628"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 12:47:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,245,1620716400"; d="scan'208";a="429357989"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga007.fm.intel.com with ESMTP; 16 Jul 2021 12:47:12 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 16 Jul 2021 12:47:12 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 16 Jul 2021 12:47:12 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.010;
 Fri, 16 Jul 2021 12:47:12 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 38/50] drm/i915/dg2: Don't program
 BW_BUDDY registers
Thread-Index: AQHXeF6gV9GDLpiVFEeNbcREUDNmzatGfIuA
Date: Fri, 16 Jul 2021 19:47:11 +0000
Message-ID: <7e2a2d5a46b7bed0ef7db1347b0304eae607011a.camel@intel.com>
References: <20210714031540.3539704-1-matthew.d.roper@intel.com>
 <20210714031540.3539704-39-matthew.d.roper@intel.com>
In-Reply-To: <20210714031540.3539704-39-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <789C5BA4A0F1B14E902DF9BCE9043EED@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 38/50] drm/i915/dg2: Don't program
 BW_BUDDY registers
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

T24gVHVlLCAyMDIxLTA3LTEzIGF0IDIwOjE1IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBB
bHRob3VnaCB0aGUgQldfQlVERFkgcmVnaXN0ZXJzIHN0aWxsIGV4aXN0LCB0aGV5IGFyZSBub3Qg
dXNlZCBmb3INCj4gYW55dGhpbmcgb24gREcyLiAgVGhpcyBjaGFuZ2UgaXMgZXhwZWN0ZWQgdG8g
aG9sZCB0cnVlIGZvciBmdXR1cmUgZGdwdSdzDQo+IHRvby4NCg0KUmV2aWV3ZWQtYnk6IEpvc8Op
IFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+IA0KPiBCc3BlYzog
NDkyMTgNCj4gU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVs
LmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfcG93ZXIuYyB8IDQgKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQ0K
PiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV9wb3dlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3Bvd2VyLmMNCj4gaW5kZXggMDRhZjk4N2YzMzI0Li45NTkzYzUxN2EzMjEgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5j
DQo+IEBAIC01ODE0LDYgKzU4MTQsMTAgQEAgc3RhdGljIHZvaWQgdGdsX2J3X2J1ZGR5X2luaXQo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiAgCXVuc2lnbmVkIGxvbmcgYWJv
eF9tYXNrID0gSU5URUxfSU5GTyhkZXZfcHJpdiktPmFib3hfbWFzazsNCj4gIAlpbnQgY29uZmln
LCBpOw0KPiAgDQo+ICsJLyogQldfQlVERFkgcmVnaXN0ZXJzIGFyZSBub3QgdXNlZCBvbiBkZ3B1
J3MgYmV5b25kIERHMSAqLw0KPiArCWlmIChJU19ER0ZYKGRldl9wcml2KSAmJiAhSVNfREcxKGRl
dl9wcml2KSkNCj4gKwkJcmV0dXJuOw0KPiArDQo+ICAJaWYgKElTX0FMREVSTEFLRV9TKGRldl9w
cml2KSB8fA0KPiAgCSAgICBJU19ERzFfUkVWSUQoZGV2X3ByaXYsIERHMV9SRVZJRF9BMCwgREcx
X1JFVklEX0EwKSB8fA0KPiAgCSAgICBJU19UR0xfRElTUExBWV9TVEVQKGRldl9wcml2LCBTVEVQ
X0EwLCBTVEVQX0IwKSkNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
