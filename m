Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6AC1276573
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Sep 2020 02:55:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 349E86EA3B;
	Thu, 24 Sep 2020 00:55:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A4F86EA3B
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Sep 2020 00:55:38 +0000 (UTC)
IronPort-SDR: IbB/g4LdbL+nyml0iEQo7zVkHeGfaGa469GutWWdg6o+FcpgIEne3gkb78EM6ZLAAJIEpe63sk
 zxgbDTGPWYtQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9753"; a="140514813"
X-IronPort-AV: E=Sophos;i="5.77,296,1596524400"; d="scan'208";a="140514813"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2020 17:55:35 -0700
IronPort-SDR: RnRGq0laxypraEUjoCjQn1oyzQtTdoNKxb6cGTYHyasYAmTkGvgX64zPa3GZjm0zcquf3kn7z6
 M3W0G+XrJ4+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,296,1596524400"; d="scan'208";a="305606931"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga003.jf.intel.com with ESMTP; 23 Sep 2020 17:55:35 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 23 Sep 2020 17:55:35 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 23 Sep 2020 17:55:35 -0700
Received: from orsmsx611.amr.corp.intel.com ([10.22.229.24]) by
 ORSMSX611.amr.corp.intel.com ([10.22.229.24]) with mapi id 15.01.1713.004;
 Wed, 23 Sep 2020 17:55:35 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 11/14] drm/i915: Sort CFL PCI IDs
Thread-Index: AQHWkgLyWT7hqLgNJkSSI/xqp9k8Sal29qZA
Date: Thu, 24 Sep 2020 00:55:34 +0000
Message-ID: <d9a774fafb10400d999089eea40fd536@intel.com>
References: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
 <20200716172106.2656-12-ville.syrjala@linux.intel.com>
In-Reply-To: <20200716172106.2656-12-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 11/14] drm/i915: Sort CFL PCI IDs
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
IFtQQVRDSCAxMS8xNF0gZHJtL2k5MTU6IFNvcnQgQ0ZMIFBDSSBJRHMNCj4gDQo+IEZyb206IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBTb3J0
IHRoZSBDRkwgUENJIElEcyBudW1lcmljYWxseS4gU29tZSBvcmRlciBzZWVtcyBiZXR0ZXIgdGhh
bg0KPiByYW5kb21uZXNzLg0KPiANCj4gQ2M6IEFsZXhlaSBQb2R0ZWxlemhuaWtvdiA8YXBvZHRl
bGVAZ21haWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPg0KUmV2aWV3ZWQtYnk6IEFudXNoYSBTcml2YXRzYSA8YW51
c2hhLnNyaXZhdHNhQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGluY2x1ZGUvZHJtL2k5MTVfcGNp
aWRzLmggfCA0ICsrLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVs
ZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaCBi
L2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmggaW5kZXgNCj4gMmQzNmNiY2UwYWMwLi5jNDhjMmI3
NmFhN2QgMTAwNjQ0DQo+IC0tLSBhL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmgNCj4gKysrIGIv
aW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaA0KPiBAQCAtNDk3LDggKzQ5Nyw4IEBADQo+ICAJSU5U
RUxfVkdBX0RFVklDRSgweDNFOUMsIGluZm8pDQo+IA0KPiAgI2RlZmluZSBJTlRFTF9DRkxfSF9H
VDJfSURTKGluZm8pIFwNCj4gLQlJTlRFTF9WR0FfREVWSUNFKDB4M0U5QiwgaW5mbyksIC8qIEhh
bG8gR1QyICovIFwNCj4gLQlJTlRFTF9WR0FfREVWSUNFKDB4M0U5NCwgaW5mbykgIC8qIEhhbG8g
R1QyICovDQo+ICsJSU5URUxfVkdBX0RFVklDRSgweDNFOTQsIGluZm8pLCAgLyogSGFsbyBHVDIg
Ki8gXA0KPiArCUlOVEVMX1ZHQV9ERVZJQ0UoMHgzRTlCLCBpbmZvKSAvKiBIYWxvIEdUMiAqLw0K
PiANCj4gIC8qIENGTCBVIEdUMiAqLw0KPiAgI2RlZmluZSBJTlRFTF9DRkxfVV9HVDJfSURTKGlu
Zm8pIFwNCj4gLS0NCj4gMi4yNi4yDQo+IA0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXw0KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0DQo+IEludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
