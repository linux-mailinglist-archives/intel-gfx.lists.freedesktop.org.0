Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0BD276569
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Sep 2020 02:51:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF77C6EA38;
	Thu, 24 Sep 2020 00:50:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCB7E6EA38
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Sep 2020 00:50:58 +0000 (UTC)
IronPort-SDR: fr+WvBMfuXT/NiU1gEMb+iIux4W/2A3aQ6TQxSMeMvxesbKzW/jtMeY+J2yf1LE6hEz8+BpOlR
 8MPmr9vn6pfw==
X-IronPort-AV: E=McAfee;i="6000,8403,9753"; a="161982890"
X-IronPort-AV: E=Sophos;i="5.77,296,1596524400"; d="scan'208";a="161982890"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2020 17:50:58 -0700
IronPort-SDR: OouTe9tLVhzNm+pQSR5iPxM2uqlawEHX+JwOkKWA1z9IX6FV3Tw86BvuIaFD9rZbgq1L3bHdOw
 6HL6zKjFVjMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,296,1596524400"; d="scan'208";a="305603691"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga003.jf.intel.com with ESMTP; 23 Sep 2020 17:50:58 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 23 Sep 2020 17:50:57 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 23 Sep 2020 17:50:57 -0700
Received: from orsmsx611.amr.corp.intel.com ([10.22.229.24]) by
 ORSMSX611.amr.corp.intel.com ([10.22.229.24]) with mapi id 15.01.1713.004;
 Wed, 23 Sep 2020 17:50:57 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 09/14] drm/i915: Sort KBL PCI IDs
Thread-Index: AQHWkgL0eEr7T9t+gUW/tPjcpd3+Wal29WVA
Date: Thu, 24 Sep 2020 00:50:57 +0000
Message-ID: <01d09d8f2444410580e0b557307fffc1@intel.com>
References: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
 <20200716172106.2656-10-ville.syrjala@linux.intel.com>
In-Reply-To: <20200716172106.2656-10-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 09/14] drm/i915: Sort KBL PCI IDs
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
IFtQQVRDSCAwOS8xNF0gZHJtL2k5MTU6IFNvcnQgS0JMIFBDSSBJRHMNCj4gDQo+IEZyb206IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBTb3J0
IHRoZSBLQkwgUENJIElEcyBudW1lcmljYWxseS4gU29tZSBvcmRlciBzZWVtcyBiZXR0ZXIgdGhh
bg0KPiByYW5kb21uZXNzLg0KPiANCj4gQ2M6IEFsZXhlaSBQb2R0ZWxlemhuaWtvdiA8YXBvZHRl
bGVAZ21haWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPg0KUmV2aWV3ZWQtYnk6IEFudXNoYSBTcml2YXRzYSA8YW51
c2hhLnNyaXZhdHNhQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGluY2x1ZGUvZHJtL2k5MTVfcGNp
aWRzLmggfCA4ICsrKystLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0
IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRz
LmggYi9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oIGluZGV4DQo+IDUxODVhYzc4OTAzOC4uZGI0
MDkxNzFkOWMzIDEwMDY0NA0KPiAtLS0gYS9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oDQo+ICsr
KyBiL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmgNCj4gQEAgLTQwNiw4ICs0MDYsOCBAQA0KPiAg
CUlOVEVMX0tCTF9VTFhfR1QxX0lEUyhpbmZvKSwgXA0KPiAgCUlOVEVMX1ZHQV9ERVZJQ0UoMHg1
OTAyLCBpbmZvKSwgLyogRFQgIEdUMSAqLyBcDQo+ICAJSU5URUxfVkdBX0RFVklDRSgweDU5MDgs
IGluZm8pLCAvKiBIYWxvIEdUMSAqLyBcDQo+IC0JSU5URUxfVkdBX0RFVklDRSgweDU5MEIsIGlu
Zm8pLCAvKiBIYWxvIEdUMSAqLyBcDQo+IC0JSU5URUxfVkdBX0RFVklDRSgweDU5MEEsIGluZm8p
IC8qIFNSViBHVDEgKi8NCj4gKwlJTlRFTF9WR0FfREVWSUNFKDB4NTkwQSwgaW5mbyksIC8qIFNS
ViBHVDEgKi8gXA0KPiArCUlOVEVMX1ZHQV9ERVZJQ0UoMHg1OTBCLCBpbmZvKSAvKiBIYWxvIEdU
MSAqLw0KPiANCj4gICNkZWZpbmUgSU5URUxfS0JMX1VMVF9HVDJfSURTKGluZm8pIFwNCj4gIAlJ
TlRFTF9WR0FfREVWSUNFKDB4NTkxNiwgaW5mbyksIC8qIFVMVCBHVDIgKi8gXCBAQCAtNDE5LDEw
DQo+ICs0MTksMTAgQEANCj4gICNkZWZpbmUgSU5URUxfS0JMX0dUMl9JRFMoaW5mbykJXA0KPiAg
CUlOVEVMX0tCTF9VTFRfR1QyX0lEUyhpbmZvKSwgXA0KPiAgCUlOVEVMX0tCTF9VTFhfR1QyX0lE
UyhpbmZvKSwgXA0KPiAtCUlOVEVMX1ZHQV9ERVZJQ0UoMHg1OTE3LCBpbmZvKSwgLyogTW9iaWxl
IEdUMiAqLyBcDQo+ICAJSU5URUxfVkdBX0RFVklDRSgweDU5MTIsIGluZm8pLCAvKiBEVCAgR1Qy
ICovIFwNCj4gLQlJTlRFTF9WR0FfREVWSUNFKDB4NTkxQiwgaW5mbyksIC8qIEhhbG8gR1QyICov
IFwNCj4gKwlJTlRFTF9WR0FfREVWSUNFKDB4NTkxNywgaW5mbyksIC8qIE1vYmlsZSBHVDIgKi8g
XA0KPiAgCUlOVEVMX1ZHQV9ERVZJQ0UoMHg1OTFBLCBpbmZvKSwgLyogU1JWIEdUMiAqLyBcDQo+
ICsJSU5URUxfVkdBX0RFVklDRSgweDU5MUIsIGluZm8pLCAvKiBIYWxvIEdUMiAqLyBcDQo+ICAJ
SU5URUxfVkdBX0RFVklDRSgweDU5MUQsIGluZm8pIC8qIFdLUyBHVDIgKi8NCj4gDQo+ICAjZGVm
aW5lIElOVEVMX0tCTF9VTFRfR1QzX0lEUyhpbmZvKSBcDQo+IC0tDQo+IDIuMjYuMg0KPiANCj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdA0KPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IGh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4DQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
