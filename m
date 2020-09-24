Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8575276537
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Sep 2020 02:37:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F6376EA30;
	Thu, 24 Sep 2020 00:37:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 961CD6EA30
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Sep 2020 00:37:49 +0000 (UTC)
IronPort-SDR: uBEMOh2AkYNl+GWNAMYyTEc99vb85juVrC8OkI60F7N4aKVJ8MlbIZjJgvAIQnC0UvryOg2Qya
 MyfIkSvsBRig==
X-IronPort-AV: E=McAfee;i="6000,8403,9753"; a="179133160"
X-IronPort-AV: E=Sophos;i="5.77,296,1596524400"; d="scan'208";a="179133160"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2020 17:37:48 -0700
IronPort-SDR: 3+psNj9V7TE5HeqeR4GgbBcCL9Y6bGXQGdtIManHn5MJmQbjH+QdmFVutBIuU1p8EQa9P3FaIp
 UYrYEMVngXag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,296,1596524400"; d="scan'208";a="511893204"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP; 23 Sep 2020 17:37:48 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 23 Sep 2020 17:37:48 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 23 Sep 2020 17:37:47 -0700
Received: from orsmsx611.amr.corp.intel.com ([10.22.229.24]) by
 ORSMSX611.amr.corp.intel.com ([10.22.229.24]) with mapi id 15.01.1713.004;
 Wed, 23 Sep 2020 17:37:47 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 04/14] drm/i915: Add SKL GT1.5 PCI IDs
Thread-Index: AQHWkgMBXmwYwAGbF0+TOYO/G/25LKl28RHQ
Date: Thu, 24 Sep 2020 00:37:47 +0000
Message-ID: <5eaf7a6e770841e1abac61b686acdde8@intel.com>
References: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
 <20200716172106.2656-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20200716172106.2656-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 04/14] drm/i915: Add SKL GT1.5 PCI IDs
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFRodXJzZGF5LCBKdWx5IDE2LCAyMDIwIDEwOjIxIEFNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhd
IFtQQVRDSCAwNC8xNF0gZHJtL2k5MTU6IEFkZCBTS0wgR1QxLjUgUENJIElEcw0KPiANCj4gRnJv
bTogQWxleGVpIFBvZHRlbGV6aG5pa292IDxhcG9kdGVsZUBnbWFpbC5jb20+DQo+IA0KPiBBZGQg
dGhyZWUgbmV3IGRldmljZXMgMHgxOTEzLCAweDE5MTUsIGFuZCAweDE5MTcgYWxzbyBrbm93biBh
cw0KPiBpU0tMVUxUR1QxNSwgaVNLTFVMWEdUMTUsIGFuZCBpU0tMRFRHVDE1Lg0KPiANCj4gU2ln
bmVkLW9mZi1ieTogQWxleGVpIFBvZHRlbGV6aG5pa292IDxhcG9kdGVsZUBnbWFpbC5jb20+DQo+
IFt2c3lyamFsYTogU3BsaXQgc2VwYXJhdGUgY2hhbmdlcyBpbnRvIHNlcGFyYXRlIHBhdGNocywN
Cj4gICAgICAgICAgICBTb3J0IHRoZSBJRHNdDQpUaGUgYWJvdmUgY29tbWVudCBhcHBlYXJzIGlu
IGV2ZXJ5IHBhdGNoLiBJZiB0aGlzIGlzIHYyIG9mIHRoZSBwYXRjaGVzIHRoZW4gaXQgZ29lcyBy
aWdodCBhZnRlciB0aGUgY29tbWl0IG1lc3NhZ2UgYXM6DQoNCiBWMjogU3BsaXQgc2VwYXJhdGUg
Y2hhbmdlcyBpbnRvIHNlcGFyYXRlIHBhdGNoZXMsIHNvcnQgdGhlIElEcyAoVmlsbGUpDQogDQo+
IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+DQpUaGUgY29kZSBjaGFuZ2VzIGl0c2VsZiBsb29rIGdvb2QuDQoNClJldmlld2VkLWJ5
OiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+DQoNCj4gLS0tDQo+
ICBpbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oIHwgOSArKysrKystLS0NCj4gIDEgZmlsZSBjaGFu
Z2VkLCA2IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEv
aW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaCBiL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmggaW5k
ZXgNCj4gOWRmMzY5N2YwNzRkLi5jOTA2MDg4Y2NmZmUgMTAwNjQ0DQo+IC0tLSBhL2luY2x1ZGUv
ZHJtL2k5MTVfcGNpaWRzLmgNCj4gKysrIGIvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaA0KPiBA
QCAtMzI5LDE3ICszMjksMjAgQEANCj4gIAlJTlRFTF9WR0FfREVWSUNFKDB4MjJiMywgaW5mbykN
Cj4gDQo+ICAjZGVmaW5lIElOVEVMX1NLTF9VTFRfR1QxX0lEUyhpbmZvKSBcDQo+IC0JSU5URUxf
VkdBX0RFVklDRSgweDE5MDYsIGluZm8pIC8qIFVMVCBHVDEgKi8NCj4gKwlJTlRFTF9WR0FfREVW
SUNFKDB4MTkwNiwgaW5mbyksIC8qIFVMVCBHVDEgKi8gXA0KPiArCUlOVEVMX1ZHQV9ERVZJQ0Uo
MHgxOTEzLCBpbmZvKSAgLyogVUxUIEdUMS41ICovDQo+IA0KPiAgI2RlZmluZSBJTlRFTF9TS0xf
VUxYX0dUMV9JRFMoaW5mbykgXA0KPiAtCUlOVEVMX1ZHQV9ERVZJQ0UoMHgxOTBFLCBpbmZvKSAv
KiBVTFggR1QxICovDQo+ICsJSU5URUxfVkdBX0RFVklDRSgweDE5MEUsIGluZm8pLCAvKiBVTFgg
R1QxICovIFwNCj4gKwlJTlRFTF9WR0FfREVWSUNFKDB4MTkxNSwgaW5mbykgIC8qIFVMWCBHVDEu
NSAqLw0KPiANCj4gICNkZWZpbmUgSU5URUxfU0tMX0dUMV9JRFMoaW5mbykJXA0KPiAgCUlOVEVM
X1NLTF9VTFRfR1QxX0lEUyhpbmZvKSwgXA0KPiAgCUlOVEVMX1NLTF9VTFhfR1QxX0lEUyhpbmZv
KSwgXA0KPiAgCUlOVEVMX1ZHQV9ERVZJQ0UoMHgxOTAyLCBpbmZvKSwgLyogRFQgIEdUMSAqLyBc
DQo+ICAJSU5URUxfVkdBX0RFVklDRSgweDE5MEIsIGluZm8pLCAvKiBIYWxvIEdUMSAqLyBcDQo+
IC0JSU5URUxfVkdBX0RFVklDRSgweDE5MEEsIGluZm8pIC8qIFNSViBHVDEgKi8NCj4gKwlJTlRF
TF9WR0FfREVWSUNFKDB4MTkwQSwgaW5mbyksIC8qIFNSViBHVDEgKi8gXA0KPiArCUlOVEVMX1ZH
QV9ERVZJQ0UoMHgxOTE3LCBpbmZvKSAgLyogRFQgIEdUMS41ICovDQo+IA0KPiAgI2RlZmluZSBJ
TlRFTF9TS0xfVUxUX0dUMl9JRFMoaW5mbykgXA0KPiAgCUlOVEVMX1ZHQV9ERVZJQ0UoMHgxOTE2
LCBpbmZvKSwgLyogVUxUIEdUMiAqLyBcDQo+IC0tDQo+IDIuMjYuMg0KPiANCj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdA0KPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IGh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4DQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
