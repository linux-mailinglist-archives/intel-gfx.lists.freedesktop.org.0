Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D154DA26F
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 19:34:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3CE089DC0;
	Tue, 15 Mar 2022 18:34:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BA7C89DC2
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 18:34:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647369274; x=1678905274;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=TH0VkgISyN4Pke5cf1W8UDoj8lbazOlyqJ5MF5oKxSo=;
 b=JCHEXgJlVdOLn7HTTHSIJoGy8w6tSWRl1+BaksLguEBF9A8UInEfRyRL
 Vw37y+CHdMApTdidhKJ5CwvwQ/VRZMAJI7WMmHoR1j6ahBab46wYfhTk2
 Vnbkk3w6BamgWGK8unO8B8Br6H0iw6dlqu8VNAG+tJv+bgfJwxJcqwvO9
 fAdk97HovIFpS9plKi7WIBc9ZCmsbUg1a7OlaRlTn5UsAeq+LcWSYk0Tk
 JPt7+Qrp/tpDWGPR2GNmr7n08mv5H/v4NXGCdm+9OgySdzJAqf7+gzPco
 TAKdUvBDOIO0YQiUSlZKc6wyfZbQ7KZPo4gBQuJraOoB0fmqmYcLc6YvJ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="256349312"
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="256349312"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 11:34:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="714291705"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga005.jf.intel.com with ESMTP; 15 Mar 2022 11:34:33 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 15 Mar 2022 11:34:33 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 15 Mar 2022 11:34:33 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.021;
 Tue, 15 Mar 2022 11:34:33 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/9] drm/i915: Add missing tab to DRRS debugfs
Thread-Index: AQHYOHCJCcNRnqE5/kaLahaSrahl3qzBO2eA
Date: Tue, 15 Mar 2022 18:34:33 +0000
Message-ID: <beca7f6bd99bebee7c354f68ddd86e728325623e.camel@intel.com>
References: <20220315132752.11849-1-ville.syrjala@linux.intel.com>
 <20220315132752.11849-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20220315132752.11849-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <108F307541272D40B691B3C9E98A531D@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/9] drm/i915: Add missing tab to DRRS
 debugfs
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
PiANCj4gVGhlIERSUlMgcmVmcmVzaCByYXRlIHNob3VsZCBiZSBpbmRlbnRlZCBieSBvbmUgdGFi
IGxpa2UgdGhlDQo+IG90aGVyIHBlci1jcnRjIERSUlMgc3R1ZmYuDQo+IA0KDQpSZXZpZXdlZC1i
eTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gU2ln
bmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
ZGVidWdmcy5jIHwgMiArLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRl
bGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMNCj4gaW5kZXggYjNkNDI2Y2MzMjY2Li5lMGExMjZlN2Vi
YjggMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV9kZWJ1Z2ZzLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X2RlYnVnZnMuYw0KPiBAQCAtMTE3MSw3ICsxMTcxLDcgQEAgc3RhdGljIGludCBp
OTE1X2RycnNfc3RhdHVzKHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqdW51c2VkKQ0KPiAgCQlz
ZXFfcHJpbnRmKG0sICJcdEJ1c3lfZnJvbnRidWZmZXJfYml0czogMHglWFxuIiwNCj4gIAkJCSAg
IGNydGMtPmRycnMuYnVzeV9mcm9udGJ1ZmZlcl9iaXRzKTsNCj4gIA0KPiAtCQlzZXFfcHJpbnRm
KG0sICJEUlJTIHJlZnJlc2ggcmF0ZTogJXNcbiIsDQo+ICsJCXNlcV9wcmludGYobSwgIlx0RFJS
UyByZWZyZXNoIHJhdGU6ICVzXG4iLA0KPiAgCQkJICAgY3J0Yy0+ZHJycy5yZWZyZXNoX3JhdGUg
PT0gRFJSU19SRUZSRVNIX1JBVEVfTE9XID8NCj4gIAkJCSAgICJsb3ciIDogImhpZ2giKTsNCj4g
IA0KDQo=
