Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F5C2E1BFA
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Dec 2020 12:42:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09ABB6E0DB;
	Wed, 23 Dec 2020 11:42:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DA426E0DB
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Dec 2020 11:42:02 +0000 (UTC)
IronPort-SDR: xA2UnaA5NvjpQ6U9o0jjXzzD1r3mYs1CvhJ2AvDWJH1Dz6vZ76jwstZjUcU9OT/AaPP1PhS9qW
 1o6NkrcEEUVQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9843"; a="176150059"
X-IronPort-AV: E=Sophos;i="5.78,441,1599548400"; d="scan'208";a="176150059"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2020 03:42:01 -0800
IronPort-SDR: GKHnzYz3sx3SMxBvv+1JW26iO3U4/kLOMEcNjQ7csgu/xVpA3pPFyhOHt3NCel34YhgyzQhBP/
 DnKd6Ca3Ao0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,441,1599548400"; d="scan'208";a="561414742"
Received: from irsmsx606.ger.corp.intel.com ([163.33.146.139])
 by orsmga005.jf.intel.com with ESMTP; 23 Dec 2020 03:42:01 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 IRSMSX606.ger.corp.intel.com (163.33.146.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 23 Dec 2020 11:41:59 +0000
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Wed, 23 Dec 2020 17:11:58 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v8 2/2] drm/i915/display: Support Multiple Transcoders'
 PSR status on debugfs
Thread-Index: AQHW2SAmzgLYk2WCD02aeE1o6X1SSqoEjpZw
Date: Wed, 23 Dec 2020 11:41:58 +0000
Message-ID: <9878c9801a0a4a908deb5439ae854acc@intel.com>
References: <20201223113803.873717-1-gwan-gyeong.mun@intel.com>
 <20201223113803.873717-2-gwan-gyeong.mun@intel.com>
In-Reply-To: <20201223113803.873717-2-gwan-gyeong.mun@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v8 2/2] drm/i915/display: Support Multiple
 Transcoders' PSR status on debugfs
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogR3dhbi1neWVvbmcgTXVu
IDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIERlY2VtYmVy
IDIzLCAyMDIwIDU6MDggUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
Cj4gQ2M6IEd1cHRhLCBBbnNodW1hbiA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tPjsgTmlrdWxh
LCBKYW5pDQo+IDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2OCAy
LzJdIGRybS9pOTE1L2Rpc3BsYXk6IFN1cHBvcnQgTXVsdGlwbGUgVHJhbnNjb2RlcnMnDQo+IFBT
UiBzdGF0dXMgb24gZGVidWdmcw0KPiANCj4gSW4gb3JkZXIgdG8gc3VwcG9ydCB0aGUgUFNSIHN0
YXRlIG9mIGVhY2ggdHJhbnNjb2RlciwgaXQgYWRkcw0KPiBpOTE1X3Bzcl9zdGF0dXMgdG8gc3Vi
LWRpcmVjdG9yeSBvZiBlYWNoIHRyYW5zY29kZXIuDQo+IA0KPiB2MjogQ2hhbmdlIHVzaW5nIG9m
IFN5bWJvbGljIHBlcm1pc3Npb25zICdTX0lSVUdPJyB0byB1c2luZyBvZiBvY3RhbA0KPiAgICAg
cGVybWlzc2lvbnMgJzA0NDQnDQo+IHY1OiBBZGRyZXNzZWQgSkphbmkgTmlrdWxhJ3MgcmV2aWV3
IGNvbW1lbnRzDQo+ICAtIFJlbW92ZSBjaGVja2luZyBvZiBHZW4xMiBmb3IgaTkxNV9wc3Jfc3Rh
dHVzLg0KPiAgLSBBZGQgY2hlY2sgb2YgSEFTX1BTUigpDQo+ICAtIFJlbW92ZSBtZWFuaW5nbGVz
cyBjaGVjayByb3V0aW5lLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogR3dhbi1neWVvbmcgTXVuIDxn
d2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPg0KPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8
am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50
ZWwuY29tPg0KPiBDYzogQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4N
Ckxvb2tzIGdvb2QgdG8gbWUuDQpSZXZpZXdlZC1ieTogQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFu
Lmd1cHRhQGludGVsLmNvbT4NCj4gLS0tDQo+ICAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMgfCAxNg0KPiArKysrKysrKysrKysrKysrDQo+ICAxIGZpbGUg
Y2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMNCj4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jDQo+IGluZGV4IDA0MTA1
MzE2N2Q3Zi4uZDJkZDYxYzRlZTBiIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMNCj4gQEAgLTIyMjQsNiArMjIy
NCwxNiBAQCBzdGF0aWMgaW50DQo+IGk5MTVfaGRjcF9zaW5rX2NhcGFiaWxpdHlfc2hvdyhzdHJ1
Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKmRhdGEpICB9DQo+IERFRklORV9TSE9XX0FUVFJJQlVURShp
OTE1X2hkY3Bfc2lua19jYXBhYmlsaXR5KTsNCj4gDQo+ICtzdGF0aWMgaW50IGk5MTVfcHNyX3N0
YXR1c19zaG93KHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqZGF0YSkgew0KPiArCXN0cnVjdCBk
cm1fY29ubmVjdG9yICpjb25uZWN0b3IgPSBtLT5wcml2YXRlOw0KPiArCXN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHAgPQ0KPiArCQlpbnRlbF9hdHRhY2hlZF9kcCh0b19pbnRlbF9jb25uZWN0b3Io
Y29ubmVjdG9yKSk7DQo+ICsNCj4gKwlyZXR1cm4gaW50ZWxfcHNyX3N0YXR1cyhtLCBpbnRlbF9k
cCk7DQo+ICt9DQo+ICtERUZJTkVfU0hPV19BVFRSSUJVVEUoaTkxNV9wc3Jfc3RhdHVzKTsNCj4g
Kw0KPiAgI2RlZmluZSBMUFNQX0NBUEFCTEUoQ09ORCkgKENPTkQgPyBzZXFfcHV0cyhtLCAiTFBT
UDogY2FwYWJsZVxuIikgOiBcDQo+ICAJCQkJc2VxX3B1dHMobSwgIkxQU1A6IGluY2FwYWJsZVxu
IikpDQo+IA0KPiBAQCAtMjM5OSw2ICsyNDA5LDEyIEBAIGludCBpbnRlbF9jb25uZWN0b3JfZGVi
dWdmc19hZGQoc3RydWN0DQo+IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvcikNCj4gIAkJCQkgICAg
Y29ubmVjdG9yLCAmaTkxNV9wc3Jfc2lua19zdGF0dXNfZm9wcyk7DQo+ICAJfQ0KPiANCj4gKwlp
ZiAoSEFTX1BTUihkZXZfcHJpdikgJiYNCj4gKwkgICAgY29ubmVjdG9yLT5jb25uZWN0b3JfdHlw
ZSA9PSBEUk1fTU9ERV9DT05ORUNUT1JfZURQKSB7DQo+ICsJCWRlYnVnZnNfY3JlYXRlX2ZpbGUo
Imk5MTVfcHNyX3N0YXR1cyIsIDA0NDQsIHJvb3QsDQo+ICsJCQkJICAgIGNvbm5lY3RvciwgJmk5
MTVfcHNyX3N0YXR1c19mb3BzKTsNCj4gKwl9DQo+ICsNCj4gIAlpZiAoY29ubmVjdG9yLT5jb25u
ZWN0b3JfdHlwZSA9PQ0KPiBEUk1fTU9ERV9DT05ORUNUT1JfRGlzcGxheVBvcnQgfHwNCj4gIAkg
ICAgY29ubmVjdG9yLT5jb25uZWN0b3JfdHlwZSA9PQ0KPiBEUk1fTU9ERV9DT05ORUNUT1JfSERN
SUEgfHwNCj4gIAkgICAgY29ubmVjdG9yLT5jb25uZWN0b3JfdHlwZSA9PQ0KPiBEUk1fTU9ERV9D
T05ORUNUT1JfSERNSUIpIHsNCj4gLS0NCj4gMi4yNS4wDQoNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
