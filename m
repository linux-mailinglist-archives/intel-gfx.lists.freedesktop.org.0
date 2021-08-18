Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B319C3F0C0E
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Aug 2021 21:48:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94AA26E82C;
	Wed, 18 Aug 2021 19:48:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A56AB6E82C
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Aug 2021 19:48:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10080"; a="216409366"
X-IronPort-AV: E=Sophos;i="5.84,332,1620716400"; d="scan'208";a="216409366"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 12:48:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,332,1620716400"; d="scan'208";a="678697833"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP; 18 Aug 2021 12:48:04 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 18 Aug 2021 12:48:03 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 18 Aug 2021 12:48:03 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.010;
 Wed, 18 Aug 2021 12:48:03 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "daniel@ffwll.ch" <daniel@ffwll.ch>, "Mun, Gwan-gyeong"
 <gwan-gyeong.mun@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [PATCH 7/8] drm/i915/display/skl+: Drop frontbuffer rendering
 support
Thread-Index: AQHXk8k8VgMfC9hwMkq8GBQkmfZxWat5z+iAgABTJwA=
Date: Wed, 18 Aug 2021 19:48:03 +0000
Message-ID: <d00bde0b13b498b6fa141f4353caf168c95c8b4e.camel@intel.com>
References: <20210818004216.220279-1-jose.souza@intel.com>
 <20210818004216.220279-8-jose.souza@intel.com> <YR0fWUHZk9/4o33s@intel.com>
In-Reply-To: <YR0fWUHZk9/4o33s@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <7606BD5A63D5374BAC667FE0EADD0473@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 7/8] drm/i915/display/skl+: Drop frontbuffer
 rendering support
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

T24gV2VkLCAyMDIxLTA4LTE4IGF0IDE3OjU1ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFR1ZSwgQXVnIDE3LCAyMDIxIGF0IDA1OjQyOjE1UE0gLTA3MDAsIEpvc8OpIFJvYmVy
dG8gZGUgU291emEgd3JvdGU6DQo+ID4gQnkgbm93IGFsbCB0aGUgdXNlcnNwYWNlIGFwcGxpY2F0
aW9ucyBzaG91bGQgaGF2ZSBtaWdyYXRlZCB0byBhdG9taWMNCj4gPiBvciBhdCBsZWFzdCBiZSBj
YWxsaW5nIERSTV9JT0NUTF9NT0RFX0RJUlRZRkIuDQo+ID4gDQo+ID4gV2l0aCB0aGF0IHdlIGNh
biBraWxsIGZyb250YnVmZmVyIHJlbmRlcmluZyBzdXBwb3J0IGluIGk5MTUgZm9yDQo+ID4gbW9k
ZXJuIHBsYXRmb3Jtcy4NCj4gPiANCj4gPiBTbyBoZXJlIGNvbnZlcnRpbmcgbGVnYWN5IEFQSXMg
aW50byBhdG9taWMgY29tbWl0cyBzbyBpdCBjYW4gYmUNCj4gPiBwcm9wZXJseSBoYW5kbGVkIGJ5
IGRyaXZlciBpOTE1Lg0KPiA+IA0KPiA+IFNldmVyYWwgSUdUIHRlc3RzIHdpbGwgZmFpbCB3aXRo
IHRoaXMgY2hhbmdlcywgYmVjYXVzZSBzb21lIHRlc3RzDQo+ID4gd2VyZSBzdHJlc3NpbmcgdGhv
c2UgZnJvbnRidWZmZXIgcmVuZGVyaW5nIHNjZW5hcmlvcyB0aGF0IG5vIHVzZXJzcGFjZQ0KPiA+
IHNob3VsZCBiZSB1c2luZyBieSBub3csIGZpeGVzIHRvIElHVCBzaG91bGQgYmUgc2VudCBzb29u
Lg0KPiANCj4gQmxvY2tpbmcgYXRvbWljIGNvbW1pdHMgaW5zdGVhZCBvZiB0aGUgY3VycmVudCBs
aWdodHdlaWdodCBmcm9udGJ1ZmZlcg0KPiBpbnRlcmZhY2Ugc291bmRzIGxpa2UgYSB0ZXJyaWJs
ZSBwbGFuLiBIb3cgdW51c2FibGUgaXMgWCB3aXRoIHRoaXMNCj4gYXBwcm9hY2g/DQoNCjEwMCUg
dXNhYmxlLCBoYWQgbm8gaXNzdWVzIHdoZW4gcnVubmluZyBYIGluIFRHTCBhbmQgQURMLVAuDQpB
ZGRlZCBhIGRlYnVnIG1lc3NhZ2UgaW4gaW50ZWxfdXNlcl9mcmFtZWJ1ZmZlcl9kaXJ0eSgpIGFu
ZCBYIGlzIG5vdCBldmVuIHVzaW5nIGZyb250YnVmZmVyIHJlbmRlcmluZyBhdCBhbGwuDQoNCj4g
DQoNCg==
