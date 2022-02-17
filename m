Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90DBF4BA455
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 16:27:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B751210ED4F;
	Thu, 17 Feb 2022 15:27:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C913E10ED4F
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Feb 2022 15:27:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645111662; x=1676647662;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=rP/wAo6u1NpTZphPM3H9zEJxX3dtCWUuGvFXy7FfK18=;
 b=ivoP1u1odYEOdTk1gpv8HayP08cwihgBMZNUV0vW/QN9K3kOS0IZG/5F
 L3wjC2mrKpLUHrMz8JQKTkSU64tgfh+6Fy1BPPHmK2596nunG+Mv45Ymv
 esKPtzc2Dvv155h7WYz5Wt+lCBhi3pzmvu4Wu+DHrP/nc2mv+d2sfyTgh
 a1VtOI+RMRmi7EPDI3ErPs55pJv8zT+iY2g+0Q45Xk/HzqEKwRdTrU75T
 jhm3N8Lo6QzfRl3KRsBgH8rRISatsCXorROM2hOT62ebg4uq/JZvhykYB
 lqZrU3swgV3IRZqLXtopCLIRzPvA1a3Ejmd753rZjyBxmArL48LkwUS+j Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="275487259"
X-IronPort-AV: E=Sophos;i="5.88,376,1635231600"; d="scan'208";a="275487259"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 07:27:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,376,1635231600"; d="scan'208";a="637183449"
Received: from irsmsx603.ger.corp.intel.com ([163.33.146.9])
 by orsmga004.jf.intel.com with ESMTP; 17 Feb 2022 07:27:41 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx603.ger.corp.intel.com (163.33.146.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 17 Feb 2022 15:27:39 +0000
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2308.020;
 Thu, 17 Feb 2022 07:27:38 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH] drm/i915: Disconnect PHYs left connected by BIOS on
 disabled ports
Thread-Index: AQHYJBI0mBLaYPNKHEa+ydNfMSbp/qyYZF6A
Date: Thu, 17 Feb 2022 15:27:38 +0000
Message-ID: <abf2e7d187ab1dbdc67a1442da680e3f5b38064e.camel@intel.com>
References: <20220217152237.670220-1-imre.deak@intel.com>
In-Reply-To: <20220217152237.670220-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <D930C33F15BAE8418BFC4045D5AE429B@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Disconnect PHYs left connected by
 BIOS on disabled ports
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
Cc: "stable@vger.kernel.org" <stable@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIyLTAyLTE3IGF0IDE3OjIyICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEJJ
T1MgbWF5IGxlYXZlIGEgVHlwZUMgUEhZIGluIGEgY29ubmVjdGVkIHN0YXRlIGV2ZW4gdGhvdWdo
IHRoZQ0KPiBjb3JyZXNwb25kaW5nIHBvcnQgaXMgZGlzYWJsZWQuIFRoaXMgd2lsbCBwcmV2ZW50
IGFueSBob3RwbHVnIGV2ZW50cw0KPiBmcm9tIGJlaW5nIHNpZ25hbGxlZCAoYWZ0ZXIgdGhlIG1v
bml0b3IgZGVhc3NlcnRzIGFuZCB0aGVuIHJlYXNzZXJ0cyBpdHMNCj4gSFBEKSB1bnRpbCB0aGUg
UEhZIGlzIGRpc2Nvbm5lY3RlZCBhbmQgc28gdGhlIGRyaXZlciB3aWxsIG5vdCBkZXRlY3QgYQ0K
PiBjb25uZWN0ZWQgc2luay4gUmVib290aW5nIHdpdGggdGhlIFBIWSBpbiB0aGUgY29ubmVjdGVk
IHN0YXRlIGFsc28NCj4gcmVzdWx0cyBpbiBhIHN5c3RlbSBoYW5nLg0KPiANCj4gRml4IHRoZSBh
Ym92ZSBieSBkaXNjb25uZWN0aW5nIFR5cGVDIFBIWXMgb24gZGlzYWJsZWQgcG9ydHMuDQo+IA0K
PiBCZWZvcmUgY29tbWl0IDY0ODUxYTMyYzQ2M2U1IHRoZSBQSFkgY29ubmVjdGVkIHN0YXRlIHdh
cyByZWFkIG91dCBldmVuDQo+IGZvciBkaXNhYmxlZCBwb3J0cyBhbmQgbGF0ZXIgdGhlIFBIWSBn
b3QgZGlzY29ubmVjdGVkIGFzIGEgc2lkZSBlZmZlY3QNCj4gb2YgYSB0Y19wb3J0X2xvY2svdW5s
b2NrKCkgc2VxdWVuY2UgKGR1cmluZyBjb25uZWN0b3IgcHJvYmluZyksIGhlbmNlDQo+IHJlY292
ZXJpbmcgdGhlIHBvcnQncyBob3RwbHVnIGZ1bmN0aW9uYWxpdHkuDQoNClJldmlld2VkLWJ5OiBK
b3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiANCj4gQ2xv
c2VzOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsLy0vaXNzdWVzLzUw
MTQNCj4gRml4ZXM6IDY0ODUxYTMyYzQ2MyAoImRybS9pOTE1L3RjOiBBZGQgYSBtb2RlIGZvciB0
aGUgVHlwZUMgUEhZJ3MgZGlzY29ubmVjdGVkIHN0YXRlIikNCj4gQ2M6IDxzdGFibGVAdmdlci5r
ZXJuZWwub3JnPiAjIHY1LjE2Kw0KPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5z
b3V6YUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGlu
dGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Rj
LmMgfCAyOCArKysrKysrKysrKysrKysrKystLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMjEg
aW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3RjLmMNCj4gaW5kZXggZmVlYWQwOGRkZjhmZi4uZmMwMzdjMDI3ZWE1YSAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiBAQCAtNjkz
LDYgKzY5Myw4IEBAIHZvaWQgaW50ZWxfdGNfcG9ydF9zYW5pdGl6ZShzdHJ1Y3QgaW50ZWxfZGln
aXRhbF9wb3J0ICpkaWdfcG9ydCkNCj4gIHsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSA9IHRvX2k5MTUoZGlnX3BvcnQtPmJhc2UuYmFzZS5kZXYpOw0KPiAgCXN0cnVjdCBpbnRl
bF9lbmNvZGVyICplbmNvZGVyID0gJmRpZ19wb3J0LT5iYXNlOw0KPiArCWludGVsX3dha2VyZWZf
dCB0Y19jb2xkX3dyZWY7DQo+ICsJZW51bSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbiBkb21h
aW47DQo+ICAJaW50IGFjdGl2ZV9saW5rcyA9IDA7DQo+ICANCj4gIAltdXRleF9sb2NrKCZkaWdf
cG9ydC0+dGNfbG9jayk7DQo+IEBAIC03MDQsMTIgKzcwNiwxMSBAQCB2b2lkIGludGVsX3RjX3Bv
cnRfc2FuaXRpemUoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpDQo+ICANCj4g
IAlkcm1fV0FSTl9PTigmaTkxNS0+ZHJtLCBkaWdfcG9ydC0+dGNfbW9kZSAhPSBUQ19QT1JUX0RJ
U0NPTk5FQ1RFRCk7DQo+ICAJZHJtX1dBUk5fT04oJmk5MTUtPmRybSwgZGlnX3BvcnQtPnRjX2xv
Y2tfd2FrZXJlZik7DQo+ICsNCj4gKwl0Y19jb2xkX3dyZWYgPSB0Y19jb2xkX2Jsb2NrKGRpZ19w
b3J0LCAmZG9tYWluKTsNCj4gKw0KPiArCWRpZ19wb3J0LT50Y19tb2RlID0gaW50ZWxfdGNfcG9y
dF9nZXRfY3VycmVudF9tb2RlKGRpZ19wb3J0KTsNCj4gIAlpZiAoYWN0aXZlX2xpbmtzKSB7DQo+
IC0JCWVudW0gaW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW4gZG9tYWluOw0KPiAtCQlpbnRlbF93
YWtlcmVmX3QgdGNfY29sZF93cmVmID0gdGNfY29sZF9ibG9jayhkaWdfcG9ydCwgJmRvbWFpbik7
DQo+IC0NCj4gLQkJZGlnX3BvcnQtPnRjX21vZGUgPSBpbnRlbF90Y19wb3J0X2dldF9jdXJyZW50
X21vZGUoZGlnX3BvcnQpOw0KPiAtDQo+ICAJCWlmICghaWNsX3RjX3BoeV9pc19jb25uZWN0ZWQo
ZGlnX3BvcnQpKQ0KPiAgCQkJZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwNCj4gIAkJCQkgICAgIlBv
cnQgJXM6IFBIWSBkaXNjb25uZWN0ZWQgd2l0aCAlZCBhY3RpdmUgbGluayhzKVxuIiwNCj4gQEAg
LTcxOCwxMCArNzE5LDIzIEBAIHZvaWQgaW50ZWxfdGNfcG9ydF9zYW5pdGl6ZShzdHJ1Y3QgaW50
ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkNCj4gIA0KPiAgCQlkaWdfcG9ydC0+dGNfbG9ja193
YWtlcmVmID0gdGNfY29sZF9ibG9jayhkaWdfcG9ydCwNCj4gIAkJCQkJCQkgICZkaWdfcG9ydC0+
dGNfbG9ja19wb3dlcl9kb21haW4pOw0KPiAtDQo+IC0JCXRjX2NvbGRfdW5ibG9jayhkaWdfcG9y
dCwgZG9tYWluLCB0Y19jb2xkX3dyZWYpOw0KPiArCX0gZWxzZSB7DQo+ICsJCS8qDQo+ICsJCSAq
IFRCVC1hbHQgaXMgdGhlIGRlZmF1bHQgbW9kZSBpbiBhbnkgY2FzZSB0aGUgUEhZIG93bmVyc2hp
cCBpcyBub3QNCj4gKwkJICogaGVsZCAocmVnYXJkbGVzcyBvZiB0aGUgc2luaydzIGNvbm5lY3Rl
ZCBsaXZlIHN0YXRlKSwgc28NCj4gKwkJICogd2UnbGwganVzdCBzd2l0Y2ggdG8gZGlzY29ubmVj
dGVkIG1vZGUgZnJvbSBpdCBoZXJlIHdpdGhvdXQNCj4gKwkJICogYSBub3RlLg0KPiArCQkgKi8N
Cj4gKwkJaWYgKGRpZ19wb3J0LT50Y19tb2RlICE9IFRDX1BPUlRfVEJUX0FMVCkNCj4gKwkJCWRy
bV9kYmdfa21zKCZpOTE1LT5kcm0sDQo+ICsJCQkJICAgICJQb3J0ICVzOiBQSFkgbGVmdCBpbiAl
cyBtb2RlIG9uIGRpc2FibGVkIHBvcnQsIGRpc2Nvbm5lY3RpbmcgaXRcbiIsDQo+ICsJCQkJICAg
IGRpZ19wb3J0LT50Y19wb3J0X25hbWUsDQo+ICsJCQkJICAgIHRjX3BvcnRfbW9kZV9uYW1lKGRp
Z19wb3J0LT50Y19tb2RlKSk7DQo+ICsJCWljbF90Y19waHlfZGlzY29ubmVjdChkaWdfcG9ydCk7
DQo+ICAJfQ0KPiAgDQo+ICsJdGNfY29sZF91bmJsb2NrKGRpZ19wb3J0LCBkb21haW4sIHRjX2Nv
bGRfd3JlZik7DQo+ICsNCj4gIAlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLCAiUG9ydCAlczogc2Fu
aXRpemUgbW9kZSAoJXMpXG4iLA0KPiAgCQkgICAgZGlnX3BvcnQtPnRjX3BvcnRfbmFtZSwNCj4g
IAkJICAgIHRjX3BvcnRfbW9kZV9uYW1lKGRpZ19wb3J0LT50Y19tb2RlKSk7DQoNCg==
