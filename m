Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C23464AE1
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 10:45:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A69756EE62;
	Wed,  1 Dec 2021 09:45:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C0B26EF21
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 09:45:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="217118701"
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="217118701"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 01:45:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="511929949"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP; 01 Dec 2021 01:45:20 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 1 Dec 2021 01:45:20 -0800
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2308.020;
 Wed, 1 Dec 2021 01:45:20 -0800
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v3 3/3] drm/i915/rpl-s: Enable guc submission by default
Thread-Index: AQHX5oF0HIhYD4DDoEW2zESGKWfvg6wd4TEA//+B/KA=
Date: Wed, 1 Dec 2021 09:45:20 +0000
Message-ID: <51ddf0d42631463e84f0ff3757602841@intel.com>
References: <20211201070056.2147953-1-anusha.srivatsa@intel.com>
 <20211201070056.2147953-4-anusha.srivatsa@intel.com>
 <87ee6wit2r.fsf@intel.com>
In-Reply-To: <87ee6wit2r.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v3 3/3] drm/i915/rpl-s: Enable guc submission by
 default
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogV2VkbmVzZGF5LCBEZWNlbWJlciAx
LCAyMDIxIDI6NDYgUE0NCj4gVG86IFNyaXZhdHNhLCBBbnVzaGEgPGFudXNoYS5zcml2YXRzYUBp
bnRlbC5jb20+OyBpbnRlbC0NCj4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogU3Jp
dmF0c2EsIEFudXNoYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT47IERoYW5hdmFudGhyaSwg
U3dhdGhpDQo+IDxzd2F0aGkuZGhhbmF2YW50aHJpQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6
IFt2MyAzLzNdIGRybS9pOTE1L3JwbC1zOiBFbmFibGUgZ3VjIHN1Ym1pc3Npb24gYnkgZGVmYXVs
dA0KPiANCj4gT24gVHVlLCAzMCBOb3YgMjAyMSwgQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3Jp
dmF0c2FAaW50ZWwuY29tPiB3cm90ZToNCj4gPiBUaG91Z2gsIFJQTC1TIGlzIGRlZmluZWQgYXMg
c3VicGxhdGZvcm0gb2YgQURMLVMsIHVubGlrZSBBREwtUywgaXQgaGFzDQo+ID4gR3VDIHN1Ym1p
c3Npb24gYnkgZGVmYXVsdC4NCj4gPg0KPiA+IHYyOiBSZW1vdmUgZXh0cmEgcGFyZW50aGVzaXMg
KEphbmkpDQo+ID4gdjM6IHMvSVNfUkFQVE9STEFLRS9JU19BRExTX1JQTFMgKEphbmkpDQo+ID4N
Cj4gPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPiBD
YzogU3dhdGhpIERoYW5hdmFudGhyaSA8c3dhdGhpLmRoYW5hdmFudGhyaUBpbnRlbC5jb20+DQo+
ID4gU2lnbmVkLW9mZi1ieTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwu
Y29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5j
IHwgMiArLQ0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24o
LSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRl
bF91Yy5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jDQo+ID4g
aW5kZXggMmZlZjNiMGJiZTk1Li42YWE4NDNhMWMyNWYgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2ludGVsX3VjLmMNCj4gPiBAQCAtMzUsNyArMzUsNyBAQCBzdGF0aWMgdm9p
ZCB1Y19leHBhbmRfZGVmYXVsdF9vcHRpb25zKHN0cnVjdCBpbnRlbF91Yw0KPiAqdWMpDQo+ID4g
IAl9DQo+ID4NCj4gPiAgCS8qIEludGVybWVkaWF0ZSBwbGF0Zm9ybXMgYXJlIEh1QyBhdXRoZW50
aWNhdGlvbiBvbmx5ICovDQo+ID4gLQlpZiAoSVNfQUxERVJMQUtFX1MoaTkxNSkpIHsNCj4gPiAr
CWlmIChJU19BTERFUkxBS0VfUyhpOTE1KSAmJiAhSVNfUkFQVE9STEFLRV9TKGk5MTUpKSB7DQo+
IA0KPiBGb3Jnb3QgdG8gYWN0dWFsbHkgZ2l0IGFkZCB0aGUgY2hhbmdlPyA7KQ0KDQpHb29kIGxv
cmQuIExvb2sgbGlrZSBpdC4g4pi5DQoNCkFudXNoYQ0KPiBCUiwNCj4gSmFuaS4NCj4gDQo+ID4g
IAkJaTkxNS0+cGFyYW1zLmVuYWJsZV9ndWMgPSBFTkFCTEVfR1VDX0xPQURfSFVDOw0KPiA+ICAJ
CXJldHVybjsNCj4gPiAgCX0NCj4gDQo+IC0tDQo+IEphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNv
dXJjZSBHcmFwaGljcyBDZW50ZXINCg==
