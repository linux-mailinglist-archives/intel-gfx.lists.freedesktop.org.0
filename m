Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C15944EE827
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Apr 2022 08:22:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 258D210F738;
	Fri,  1 Apr 2022 06:22:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9163810F738
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Apr 2022 06:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648794130; x=1680330130;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=2Ztbnc/5uP8icWrPNPqyhRm4KpvgSq3tnIh1F2zmlLU=;
 b=RhpzUnYgooYEe183pI8tQj9jR8tRpfC0RPzUkCKF5fFODb04wbbjV9dg
 gaRJjbCsu7wNgPhfElbxlpM6lBOoe1CfjJiWEerutyM7Q+8XFrNX87gE7
 NAq8UZB7RevgsSKrUKELM6xxPya6N7WxsLKmzSi7Ox1rT3lPqJFDSmh7Y
 uWHjDx2ydDnA2jYVwmdwbON1+cKjIT83+jNRD66ayBvR85eCYUTYj9I3g
 GGRHWi1U+SKHJ5cmLyppUYuo4OyAkhLVTmDVyu1eISld59564g8mhd66d
 M3qfDCyEhn5RTKTd6cfi6ldXvZwg34X4tvHC13iY1ixrZmndL1x9JeF7/ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10303"; a="259756327"
X-IronPort-AV: E=Sophos;i="5.90,226,1643702400"; d="scan'208";a="259756327"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 23:22:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,226,1643702400"; d="scan'208";a="655443719"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga004.jf.intel.com with ESMTP; 31 Mar 2022 23:22:10 -0700
Received: from bgsmsx601.gar.corp.intel.com (10.109.78.80) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 31 Mar 2022 23:22:09 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX601.gar.corp.intel.com (10.109.78.80) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 1 Apr 2022 11:52:05 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2308.027;
 Fri, 1 Apr 2022 11:52:05 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 03/12] drm/i915/dp: Extract
 intel_dp_has_audio()
Thread-Index: AQHYPeRzbmET5MznvEquAuRAVAuGpKzapcuQ
Date: Fri, 1 Apr 2022 06:22:05 +0000
Message-ID: <041ddcd92c07407298958ccbc6bfa032@intel.com>
References: <20220322120015.28074-1-ville.syrjala@linux.intel.com>
 <20220322120015.28074-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20220322120015.28074-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.401.20
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 03/12] drm/i915/dp: Extract
 intel_dp_has_audio()
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZSBT
eXJqYWxhDQo+IFNlbnQ6IFR1ZXNkYXksIE1hcmNoIDIyLCAyMDIyIDU6MzAgUE0NCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVsLWdmeF0gW1BB
VENIIHYyIDAzLzEyXSBkcm0vaTkxNS9kcDogRXh0cmFjdCBpbnRlbF9kcF9oYXNfYXVkaW8oKQ0K
PiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4NCj4gDQo+IERlY2x1dHRlciBpbnRlbF9kcF9jb21wdXRlX2NvbmZpZygpIGEgYml0IGJ5IG1v
dmluZyB0aGUgaGFzX2F1ZGlvIGNvbXB1dGF0aW9uDQo+IGludG8gYSBoZWxwZXIuIEhETUkgYWxy
ZWFkeSBkb2VzIHRoZSBzYW1lIHRoaW5nLg0KDQpMb29rcyBHb29kIHRvIG1lLg0KUmV2aWV3ZWQt
Ynk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1i
eTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0t
DQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCAzMCArKysrKysr
KysrKysrKysrLS0tLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKSwg
MTAgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcC5jDQo+IGluZGV4IDMzOTRlNDk1MWZlZi4uZmM1MDgwMmM5OTk3IDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IEBAIC0xNzk4LDYgKzE3OTgsMjQg
QEAgaW50ZWxfZHBfY29tcHV0ZV9oZHJfbWV0YWRhdGFfaW5mb2ZyYW1lX3NkcChzdHJ1Y3QNCj4g
aW50ZWxfZHAgKmludGVsX2RwLA0KPiANCj4gCWludGVsX2hkbWlfaW5mb2ZyYW1lX2VuYWJsZShI
RE1JX1BBQ0tFVF9UWVBFX0dBTVVUX01FVEFEQVRBKTsNCj4gIH0NCj4gDQo+ICtzdGF0aWMgYm9v
bCBpbnRlbF9kcF9oYXNfYXVkaW8oc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ICsJ
CQkgICAgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ICsJ
CQkgICAgICAgY29uc3Qgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGUpIHsN
Cj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoZW5jb2Rlci0+YmFz
ZS5kZXYpOw0KPiArCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBlbmNfdG9faW50ZWxfZHAo
ZW5jb2Rlcik7DQo+ICsJY29uc3Qgc3RydWN0IGludGVsX2RpZ2l0YWxfY29ubmVjdG9yX3N0YXRl
ICppbnRlbF9jb25uX3N0YXRlID0NCj4gKwkJdG9faW50ZWxfZGlnaXRhbF9jb25uZWN0b3Jfc3Rh
dGUoY29ubl9zdGF0ZSk7DQo+ICsNCj4gKwlpZiAoIWludGVsX2RwX3BvcnRfaGFzX2F1ZGlvKGk5
MTUsIGVuY29kZXItPnBvcnQpKQ0KPiArCQlyZXR1cm4gZmFsc2U7DQo+ICsNCj4gKwlpZiAoaW50
ZWxfY29ubl9zdGF0ZS0+Zm9yY2VfYXVkaW8gPT0gSERNSV9BVURJT19BVVRPKQ0KPiArCQlyZXR1
cm4gaW50ZWxfZHAtPmhhc19hdWRpbzsNCj4gKwllbHNlDQo+ICsJCXJldHVybiBpbnRlbF9jb25u
X3N0YXRlLT5mb3JjZV9hdWRpbyA9PSBIRE1JX0FVRElPX09OOyB9DQo+ICsNCj4gIGludA0KPiAg
aW50ZWxfZHBfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+
ICAJCQlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25maWcsIEBAIC0xODA3LDE0DQo+
ICsxODI1LDExIEBAIGludGVsX2RwX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNvZGVy
ICplbmNvZGVyLA0KPiAgCXN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICphZGp1c3RlZF9tb2RlID0g
JnBpcGVfY29uZmlnLQ0KPiA+aHcuYWRqdXN0ZWRfbW9kZTsNCj4gIAlzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwID0gZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpOw0KPiAgCWNvbnN0IHN0cnVjdCBk
cm1fZGlzcGxheV9tb2RlICpmaXhlZF9tb2RlOw0KPiAtCWVudW0gcG9ydCBwb3J0ID0gZW5jb2Rl
ci0+cG9ydDsNCj4gIAlzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICppbnRlbF9jb25uZWN0b3IgPSBp
bnRlbF9kcC0+YXR0YWNoZWRfY29ubmVjdG9yOw0KPiAtCXN0cnVjdCBpbnRlbF9kaWdpdGFsX2Nv
bm5lY3Rvcl9zdGF0ZSAqaW50ZWxfY29ubl9zdGF0ZSA9DQo+IC0JCXRvX2ludGVsX2RpZ2l0YWxf
Y29ubmVjdG9yX3N0YXRlKGNvbm5fc3RhdGUpOw0KPiAgCWJvb2wgY29uc3RhbnRfbiA9IGRybV9k
cF9oYXNfcXVpcmsoJmludGVsX2RwLT5kZXNjLA0KPiBEUF9EUENEX1FVSVJLX0NPTlNUQU5UX04p
Ow0KPiAgCWludCByZXQgPSAwLCBvdXRwdXRfYnBwOw0KPiANCj4gLQlpZiAoSEFTX1BDSF9TUExJ
VChkZXZfcHJpdikgJiYgIUhBU19EREkoZGV2X3ByaXYpICYmIHBvcnQgIT0gUE9SVF9BKQ0KPiAr
CWlmIChIQVNfUENIX1NQTElUKGRldl9wcml2KSAmJiAhSEFTX0RESShkZXZfcHJpdikgJiYgZW5j
b2Rlci0+cG9ydCAhPQ0KPiArUE9SVF9BKQ0KPiAgCQlwaXBlX2NvbmZpZy0+aGFzX3BjaF9lbmNv
ZGVyID0gdHJ1ZTsNCj4gDQo+ICAJcGlwZV9jb25maWctPm91dHB1dF9mb3JtYXQgPSBpbnRlbF9k
cF9vdXRwdXRfZm9ybWF0KCZpbnRlbF9jb25uZWN0b3ItDQo+ID5iYXNlLA0KPiBAQCAtMTgyNiwx
MiArMTg0MSw3IEBAIGludGVsX2RwX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNvZGVy
DQo+ICplbmNvZGVyLA0KPiAgCQkJcmV0dXJuIHJldDsNCj4gIAl9DQo+IA0KPiAtCWlmICghaW50
ZWxfZHBfcG9ydF9oYXNfYXVkaW8oZGV2X3ByaXYsIHBvcnQpKQ0KPiAtCQlwaXBlX2NvbmZpZy0+
aGFzX2F1ZGlvID0gZmFsc2U7DQo+IC0JZWxzZSBpZiAoaW50ZWxfY29ubl9zdGF0ZS0+Zm9yY2Vf
YXVkaW8gPT0gSERNSV9BVURJT19BVVRPKQ0KPiAtCQlwaXBlX2NvbmZpZy0+aGFzX2F1ZGlvID0g
aW50ZWxfZHAtPmhhc19hdWRpbzsNCj4gLQllbHNlDQo+IC0JCXBpcGVfY29uZmlnLT5oYXNfYXVk
aW8gPSBpbnRlbF9jb25uX3N0YXRlLT5mb3JjZV9hdWRpbyA9PQ0KPiBIRE1JX0FVRElPX09OOw0K
PiArCXBpcGVfY29uZmlnLT5oYXNfYXVkaW8gPSBpbnRlbF9kcF9oYXNfYXVkaW8oZW5jb2Rlciwg
cGlwZV9jb25maWcsDQo+ICtjb25uX3N0YXRlKTsNCj4gDQo+ICAJZml4ZWRfbW9kZSA9IGludGVs
X3BhbmVsX2ZpeGVkX21vZGUoaW50ZWxfY29ubmVjdG9yLCBhZGp1c3RlZF9tb2RlKTsNCj4gIAlp
ZiAoaW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSAmJiBmaXhlZF9tb2RlKSB7DQo+IC0tDQo+IDIu
MzQuMQ0KDQo=
