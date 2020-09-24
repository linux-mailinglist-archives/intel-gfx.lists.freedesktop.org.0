Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB2A276570
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Sep 2020 02:53:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DD846EA3A;
	Thu, 24 Sep 2020 00:53:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 294546EA3A
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Sep 2020 00:53:51 +0000 (UTC)
IronPort-SDR: 6YUYXLaL2xHKmeuC6aj/EWsJ5BrL6J7ynEyFCOLG1haHKPgkffd4XRnqVSdCckNL0zye9cogjF
 T23qSZ3nPEWg==
X-IronPort-AV: E=McAfee;i="6000,8403,9753"; a="158410818"
X-IronPort-AV: E=Sophos;i="5.77,296,1596524400"; d="scan'208";a="158410818"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2020 17:53:50 -0700
IronPort-SDR: js65qDoVdG0Bl8iTKt0OkrBtrCYK4vw4P9T+jNCuWuV6+XWcdphk3v5jJ90EYYd+I0mt+E+fcW
 LrVroo7LcsnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,296,1596524400"; d="scan'208";a="305605634"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga003.jf.intel.com with ESMTP; 23 Sep 2020 17:53:50 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 23 Sep 2020 17:53:49 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 23 Sep 2020 17:53:49 -0700
Received: from orsmsx611.amr.corp.intel.com ([10.22.229.24]) by
 ORSMSX611.amr.corp.intel.com ([10.22.229.24]) with mapi id 15.01.1713.004;
 Wed, 23 Sep 2020 17:53:49 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 10/14] drm/i915: Sort CML PCI IDs
Thread-Index: AQHWkgLvKTCOn5O/Jkeh6Aygel5j2al29jGw
Date: Thu, 24 Sep 2020 00:53:49 +0000
Message-ID: <f381e7d4f5324ae399c1b2f78d7f5d1f@intel.com>
References: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
 <20200716172106.2656-11-ville.syrjala@linux.intel.com>
In-Reply-To: <20200716172106.2656-11-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 10/14] drm/i915: Sort CML PCI IDs
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
IFtQQVRDSCAxMC8xNF0gZHJtL2k5MTU6IFNvcnQgQ01MIFBDSSBJRHMNCj4gDQo+IEZyb206IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBTb3J0
IHRoZSBDTUwgUENJIElEcyBudW1lcmljYWxseS4gU29tZSBvcmRlciBzZWVtcyBiZXR0ZXIgdGhh
bg0KPiByYW5kb21uZXNzLg0KPiANCj4gQ2M6IEFsZXhlaSBQb2R0ZWxlemhuaWtvdiA8YXBvZHRl
bGVAZ21haWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPg0KUmV2aWV3ZWQtYnk6IEFudXNoYSBTcml2YXRzYSA8YW51
c2hhLnNyaXZhdHNhQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGluY2x1ZGUvZHJtL2k5MTVfcGNp
aWRzLmggfCAxMiArKysrKystLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMo
KyksIDYgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vaTkxNV9w
Y2lpZHMuaCBiL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmggaW5kZXgNCj4gZGI0MDkxNzFkOWMz
Li4yZDM2Y2JjZTBhYzAgMTAwNjQ0DQo+IC0tLSBhL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmgN
Cj4gKysrIGIvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaA0KPiBAQCAtNDQ3LDEwICs0NDcsMTAg
QEANCj4gDQo+ICAvKiBDTUwgR1QxICovDQo+ICAjZGVmaW5lIElOVEVMX0NNTF9HVDFfSURTKGlu
Zm8pCVwNCj4gLQlJTlRFTF9WR0FfREVWSUNFKDB4OUJBNSwgaW5mbyksIFwNCj4gLQlJTlRFTF9W
R0FfREVWSUNFKDB4OUJBOCwgaW5mbyksIFwNCj4gKwlJTlRFTF9WR0FfREVWSUNFKDB4OUJBMiwg
aW5mbyksIFwNCj4gIAlJTlRFTF9WR0FfREVWSUNFKDB4OUJBNCwgaW5mbyksIFwNCj4gLQlJTlRF
TF9WR0FfREVWSUNFKDB4OUJBMiwgaW5mbykNCj4gKwlJTlRFTF9WR0FfREVWSUNFKDB4OUJBNSwg
aW5mbyksIFwNCj4gKwlJTlRFTF9WR0FfREVWSUNFKDB4OUJBOCwgaW5mbykNCj4gDQo+ICAjZGVm
aW5lIElOVEVMX0NNTF9VX0dUMV9JRFMoaW5mbykgXA0KPiAgCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5
QjIxLCBpbmZvKSwgXA0KPiBAQCAtNDU5LDExICs0NTksMTEgQEANCj4gDQo+ICAvKiBDTUwgR1Qy
ICovDQo+ICAjZGVmaW5lIElOVEVMX0NNTF9HVDJfSURTKGluZm8pCVwNCj4gLQlJTlRFTF9WR0Ff
REVWSUNFKDB4OUJDNSwgaW5mbyksIFwNCj4gLQlJTlRFTF9WR0FfREVWSUNFKDB4OUJDOCwgaW5m
byksIFwNCj4gLQlJTlRFTF9WR0FfREVWSUNFKDB4OUJDNCwgaW5mbyksIFwNCj4gIAlJTlRFTF9W
R0FfREVWSUNFKDB4OUJDMiwgaW5mbyksIFwNCj4gKwlJTlRFTF9WR0FfREVWSUNFKDB4OUJDNCwg
aW5mbyksIFwNCj4gKwlJTlRFTF9WR0FfREVWSUNFKDB4OUJDNSwgaW5mbyksIFwNCj4gIAlJTlRF
TF9WR0FfREVWSUNFKDB4OUJDNiwgaW5mbyksIFwNCj4gKwlJTlRFTF9WR0FfREVWSUNFKDB4OUJD
OCwgaW5mbyksIFwNCj4gIAlJTlRFTF9WR0FfREVWSUNFKDB4OUJFNiwgaW5mbyksIFwNCj4gIAlJ
TlRFTF9WR0FfREVWSUNFKDB4OUJGNiwgaW5mbykNCj4gDQo+IC0tDQo+IDIuMjYuMg0KPiANCj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdA0KPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IGh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4DQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
