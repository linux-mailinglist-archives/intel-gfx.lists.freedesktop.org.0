Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C56B348CC4A
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jan 2022 20:50:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1133610E583;
	Wed, 12 Jan 2022 19:50:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC8DF10EC74
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jan 2022 19:50:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642017041; x=1673553041;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=0AaRpxZW2AHj2BLMTNQCnYkxL+iCJbSbgtLILWXrRRI=;
 b=IYIHCe7SBfx0XSm15Rf3yY73oVrMO7tMQ+76ciCWOohyVr84c5Gp+Cvf
 sSE207cy8vhnN3UVXBTPVMmZ6vDc1Xx29S224ENFSEc/uhYtNB3RntB0c
 NstBLhPsrKSTgj6TRFC40zKkExcPpnBL+lr4fkukjr4hOpY3qBFbnMEuF
 CmSl2t9wCYjITJVAS2FKVJtZmNj0sopzwfv5TmlVTJcUzvuViZcnEZ1p/
 VSJwmdS7WlUED7LnN3F2YsYJQdLhoVzaZ/88AQawEwkpvJWti39/+xT5J
 5drUv98Meal1C99NACY8t1IsmIHr8x7k4FRv+jWTH0Y4VKuX58pL1Af7V A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10225"; a="244044384"
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="244044384"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 11:50:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="558841503"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga001.jf.intel.com with ESMTP; 12 Jan 2022 11:50:41 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 12 Jan 2022 11:50:40 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 12 Jan 2022 11:50:39 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2308.020;
 Wed, 12 Jan 2022 11:50:39 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 04/14] drm/i915: Sipmplify PLANE_STRIDE
 masking
Thread-Index: AQHX5tVmd69vnmQxOUas5/2G1BLKe6xglDqA
Date: Wed, 12 Jan 2022 19:50:39 +0000
Message-ID: <86655bcdda4033eb9f85702e029ecee198be2f2f.camel@intel.com>
References: <20211201152552.7821-1-ville.syrjala@linux.intel.com>
 <20211201152552.7821-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20211201152552.7821-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <2068BD2A839CF444A24F571025A3EF0B@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 04/14] drm/i915: Sipmplify PLANE_STRIDE
 masking
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

T24gV2VkLCAyMDIxLTEyLTAxIGF0IDE3OjI1ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gVGhlcmUncyBubyBuZWVkIHRvIGhhdmUgc2VwYXJhdGUgbWFza3MgZm9yIHRoZSBzdHJp
ZGUgYml0ZmllbGQNCj4gaW4gUExBTkVfU1RSSURFIGZvciBkaWZmZXJlbnQgcGxhdGZvcm1zLiBB
bGwgdGhlIGV4dHJhIGJpdHMNCj4gYXJlIGhhcmRjb2RlZCB0byB6ZXJvIGFueXdheS4NCj4gDQo+
IEFsc28gdGhlIG1hc2tzIHdlJ3JlIHVzaW5nIG5vdyBkb24ndCBldmVuIG1hdGNoIHRoZSBhY3R1
YWwgaGFyZHdhcmUNCj4gc2luY2UgdGhlIGJpdGZpZWxkIHdhcyBvbmx5IDEwIGJpdHMgb24gc2ts
L2Rlcml2YXRpdmVzLCBvbmx5IGdldHRpbmcNCj4gYnVtcGVkIHRvIDExIGJpdHMgb24gZ2xrLg0K
PiANCj4gU28gbGV0J3MganVzdCB1c2UgYSAxMiBiaXQgbWFzayBmb3IgZXZlcnl0aGluZy4NCg0K
UmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29t
Pg0KDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
c2tsX3VuaXZlcnNhbF9wbGFuZS5jIHwgNSArLS0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaCAgICAgICAgICAgICAgICAgICAgfCAzICstLQ0KPiAgMiBmaWxlcyBjaGFuZ2Vk
LCAyIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYw0KPiBpbmRleCAwOTk0
ODkyMjAxNmIuLjk4NGJiMzVlY2YwNiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMNCj4gQEAgLTIzNDcsMTAgKzIzNDcs
NyBAQCBza2xfZ2V0X2luaXRpYWxfcGxhbmVfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRj
LA0KPiAgCXZhbCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIFBMQU5FX1NUUklERShwaXBlLCBw
bGFuZV9pZCkpOw0KPiAgCXN0cmlkZV9tdWx0ID0gc2tsX3BsYW5lX3N0cmlkZV9tdWx0KGZiLCAw
LCBEUk1fTU9ERV9ST1RBVEVfMCk7DQo+ICANCj4gLQlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYp
ID49IDEzKQ0KPiAtCQlmYi0+cGl0Y2hlc1swXSA9ICh2YWwgJiBQTEFORV9TVFJJREVfTUFTS19Y
RUxQRCkgKiBzdHJpZGVfbXVsdDsNCj4gLQllbHNlDQo+IC0JCWZiLT5waXRjaGVzWzBdID0gKHZh
bCAmIFBMQU5FX1NUUklERV9NQVNLKSAqIHN0cmlkZV9tdWx0Ow0KPiArCWZiLT5waXRjaGVzWzBd
ID0gKHZhbCAmIFBMQU5FX1NUUklERV9NQVNLKSAqIHN0cmlkZV9tdWx0Ow0KPiAgDQo+ICAJYWxp
Z25lZF9oZWlnaHQgPSBpbnRlbF9mYl9hbGlnbl9oZWlnaHQoZmIsIDAsIGZiLT5oZWlnaHQpOw0K
PiAgDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiBpbmRleCAwMmQ4ZGIwM2MwYmYuLjYwNjZi
MWUyNzYzYyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+IEBAIC03NDQwLDggKzc0
NDAsNyBAQCBlbnVtIHsNCj4gIAlfUElQRShwaXBlLCBfUExBTkVfU1RSSURFXzNfQSwgX1BMQU5F
X1NUUklERV8zX0IpDQo+ICAjZGVmaW5lIFBMQU5FX1NUUklERShwaXBlLCBwbGFuZSkJXA0KPiAg
CV9NTUlPX1BMQU5FKHBsYW5lLCBfUExBTkVfU1RSSURFXzEocGlwZSksIF9QTEFORV9TVFJJREVf
MihwaXBlKSkNCj4gLSNkZWZpbmUgUExBTkVfU1RSSURFX01BU0sJCVJFR19HRU5NQVNLKDEwLCAw
KQ0KPiAtI2RlZmluZSBQTEFORV9TVFJJREVfTUFTS19YRUxQRAkJUkVHX0dFTk1BU0soMTEsIDAp
DQo+ICsjZGVmaW5lIFBMQU5FX1NUUklERV9NQVNLCQlSRUdfR0VOTUFTSygxMSwgMCkNCj4gIA0K
PiAgI2RlZmluZSBfUExBTkVfUE9TXzFfQgkJCQkweDcxMThjDQo+ICAjZGVmaW5lIF9QTEFORV9Q
T1NfMl9CCQkJCTB4NzEyOGMNCg0K
