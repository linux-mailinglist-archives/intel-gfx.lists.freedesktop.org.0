Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 511E439220B
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 23:29:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F7896EB88;
	Wed, 26 May 2021 21:29:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E04D6EB88
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 May 2021 21:29:38 +0000 (UTC)
IronPort-SDR: u9oypVfUcPmqc47fixZBpk9E6r119ZaS0ZwW2tDRYhEC9eUEE6bLFXVEDvcDdTvtVI0LI96J6b
 sUzNnHA/VKxg==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="182916636"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="182916636"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 14:29:38 -0700
IronPort-SDR: CdvVEtxPbzX89lhNpaXy0gpiS4taQxC+haEThSY1+I+mYsAD872ylWYCXyIxSyweTr7u8txP5y
 lasRxoHXMPaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="477145999"
Received: from irsmsx606.ger.corp.intel.com ([163.33.146.139])
 by orsmga001.jf.intel.com with ESMTP; 26 May 2021 14:29:37 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 IRSMSX606.ger.corp.intel.com (163.33.146.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 26 May 2021 22:29:35 +0100
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.008;
 Wed, 26 May 2021 14:29:34 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/adlp: Add missing TBT AUX -> PW#2
 power domain dependencies
Thread-Index: AQHXUm6wdFocyhcrt0G88p61cDifV6r2vdyA
Date: Wed, 26 May 2021 21:29:34 +0000
Message-ID: <d11b543492df11a62a4f5e3368d3deb16a1957c6.camel@intel.com>
References: <20210526203456.2733040-1-imre.deak@intel.com>
In-Reply-To: <20210526203456.2733040-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <751D0F0789D75E4195B9926AD7500391@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/adlp: Add missing TBT AUX -> PW#2
 power domain dependencies
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

T24gV2VkLCAyMDIxLTA1LTI2IGF0IDIzOjM0ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE9u
IEFETF9QIHRoZSBUQlQgQVVYIHBvd2VyIHdlbGxzIGRlcGVuZCBvbiB0aGUgUFcjMiBwb3dlciB3
ZWxsLCBhZGQgdGhlDQo+IGNvcnJlc3BvbmRpbmcgcG93ZXIgZG9tYWluIGRlcGVuZGVuY2llcy4N
Cg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPg0KDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5j
b20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3Bvd2VyLmMgfCA0ICsrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfcG93ZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9w
b3dlci5jDQo+IGluZGV4IDJmN2QxNjY0YzQ3MzguLjIyNWZiMWZkYjA5N2IgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5j
DQo+IEBAIC0zMDgyLDYgKzMwODIsMTAgQEAgaW50ZWxfZGlzcGxheV9wb3dlcl9wdXRfbWFza19p
bl9zZXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsDQo+ICAJQklUX1VMTChQT1dFUl9E
T01BSU5fQVVYX1VTQkMyKSB8CQkJXA0KPiAgCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVWF9VU0JD
MykgfAkJCVwNCj4gIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVVhfVVNCQzQpIHwJCQlcDQo+ICsJ
QklUX1VMTChQT1dFUl9ET01BSU5fQVVYX1RCVDEpIHwJCQlcDQo+ICsJQklUX1VMTChQT1dFUl9E
T01BSU5fQVVYX1RCVDIpIHwJCQlcDQo+ICsJQklUX1VMTChQT1dFUl9ET01BSU5fQVVYX1RCVDMp
IHwJCQlcDQo+ICsJQklUX1VMTChQT1dFUl9ET01BSU5fQVVYX1RCVDQpIHwJCQlcDQo+ICAJQklU
X1VMTChQT1dFUl9ET01BSU5fSU5JVCkpDQo+ICANCj4gIC8qDQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
