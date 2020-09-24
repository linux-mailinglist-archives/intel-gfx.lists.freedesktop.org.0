Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0BC527657D
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Sep 2020 02:59:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 776A189301;
	Thu, 24 Sep 2020 00:59:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF1A36EA3C
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Sep 2020 00:59:04 +0000 (UTC)
IronPort-SDR: yqGuyLQwWIvHA0uJWeo6JJbQmgoNnsDVEBFA1KYcWZ24dd/IGERVHS5dOHdapHMDbE4uN8kAs3
 r++zIQCM2usg==
X-IronPort-AV: E=McAfee;i="6000,8403,9753"; a="160346646"
X-IronPort-AV: E=Sophos;i="5.77,296,1596524400"; d="scan'208";a="160346646"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2020 17:59:04 -0700
IronPort-SDR: y2MqUeGL0Et1mc1C72zOktgHxWmwf1Kcuhd4pgZT8k8iu1x+obJsTZVX+C4tu0g/Y4MEc0vA6c
 MpqFnqfYsm5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,296,1596524400"; d="scan'208";a="310114889"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 23 Sep 2020 17:59:04 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 23 Sep 2020 17:59:03 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 23 Sep 2020 17:59:03 -0700
Received: from orsmsx611.amr.corp.intel.com ([10.22.229.24]) by
 ORSMSX611.amr.corp.intel.com ([10.22.229.24]) with mapi id 15.01.1713.004;
 Wed, 23 Sep 2020 17:59:03 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 12/14] drm/i915: Sort CNL PCI IDs
Thread-Index: AQHWkgLtXzxaTFur6UeBFYT5YUaItKl296ig
Date: Thu, 24 Sep 2020 00:59:03 +0000
Message-ID: <88dba20894094ef0959e860fd326230f@intel.com>
References: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
 <20200716172106.2656-13-ville.syrjala@linux.intel.com>
In-Reply-To: <20200716172106.2656-13-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 12/14] drm/i915: Sort CNL PCI IDs
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
IFtQQVRDSCAxMi8xNF0gZHJtL2k5MTU6IFNvcnQgQ05MIFBDSSBJRHMNCj4gDQo+IEZyb206IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBTb3J0
IHRoZSBDTkwgUENJIElEcyBudW1lcmljYWxseS4gU29tZSBvcmRlciBzZWVtcyBiZXR0ZXIgdGhh
bg0KPiByYW5kb21uZXNzLg0KPiANCj4gQ2M6IEFsZXhlaSBQb2R0ZWxlemhuaWtvdiA8YXBvZHRl
bGVAZ21haWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPg0KUmV2aWV3ZWQtYnk6IEFudXNoYSBTcml2YXRzYSA8YW51
c2hhLnNyaXZhdHNhQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGluY2x1ZGUvZHJtL2k5MTVfcGNp
aWRzLmggfCAxOCArKysrKysrKystLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2Vy
dGlvbnMoKyksIDkgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0v
aTkxNV9wY2lpZHMuaCBiL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmggaW5kZXgNCj4gYzQ4YzJi
NzZhYTdkLi4zM2E3MmU2ZWFkZDggMTAwNjQ0DQo+IC0tLSBhL2luY2x1ZGUvZHJtL2k5MTVfcGNp
aWRzLmgNCj4gKysrIGIvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaA0KPiBAQCAtNTQzLDIzICs1
NDMsMjMgQEANCj4gDQo+ICAvKiBDTkwgKi8NCj4gICNkZWZpbmUgSU5URUxfQ05MX1BPUlRfRl9J
RFMoaW5mbykgXA0KPiAtCUlOVEVMX1ZHQV9ERVZJQ0UoMHg1QTU0LCBpbmZvKSwgXA0KPiAtCUlO
VEVMX1ZHQV9ERVZJQ0UoMHg1QTVDLCBpbmZvKSwgXA0KPiAgCUlOVEVMX1ZHQV9ERVZJQ0UoMHg1
QTQ0LCBpbmZvKSwgXA0KPiAtCUlOVEVMX1ZHQV9ERVZJQ0UoMHg1QTRDLCBpbmZvKQ0KPiArCUlO
VEVMX1ZHQV9ERVZJQ0UoMHg1QTRDLCBpbmZvKSwgXA0KPiArCUlOVEVMX1ZHQV9ERVZJQ0UoMHg1
QTU0LCBpbmZvKSwgXA0KPiArCUlOVEVMX1ZHQV9ERVZJQ0UoMHg1QTVDLCBpbmZvKQ0KPiANCj4g
ICNkZWZpbmUgSU5URUxfQ05MX0lEUyhpbmZvKSBcDQo+ICAJSU5URUxfQ05MX1BPUlRfRl9JRFMo
aW5mbyksIFwNCj4gLQlJTlRFTF9WR0FfREVWSUNFKDB4NUE1MSwgaW5mbyksIFwNCj4gLQlJTlRF
TF9WR0FfREVWSUNFKDB4NUE1OSwgaW5mbyksIFwNCj4gKwlJTlRFTF9WR0FfREVWSUNFKDB4NUE0
MCwgaW5mbyksIFwNCj4gIAlJTlRFTF9WR0FfREVWSUNFKDB4NUE0MSwgaW5mbyksIFwNCj4gLQlJ
TlRFTF9WR0FfREVWSUNFKDB4NUE0OSwgaW5mbyksIFwNCj4gLQlJTlRFTF9WR0FfREVWSUNFKDB4
NUE1MiwgaW5mbyksIFwNCj4gLQlJTlRFTF9WR0FfREVWSUNFKDB4NUE1QSwgaW5mbyksIFwNCj4g
IAlJTlRFTF9WR0FfREVWSUNFKDB4NUE0MiwgaW5mbyksIFwNCj4gKwlJTlRFTF9WR0FfREVWSUNF
KDB4NUE0OSwgaW5mbyksIFwNCj4gIAlJTlRFTF9WR0FfREVWSUNFKDB4NUE0QSwgaW5mbyksIFwN
Cj4gIAlJTlRFTF9WR0FfREVWSUNFKDB4NUE1MCwgaW5mbyksIFwNCj4gLQlJTlRFTF9WR0FfREVW
SUNFKDB4NUE0MCwgaW5mbykNCj4gKwlJTlRFTF9WR0FfREVWSUNFKDB4NUE1MSwgaW5mbyksIFwN
Cj4gKwlJTlRFTF9WR0FfREVWSUNFKDB4NUE1MiwgaW5mbyksIFwNCj4gKwlJTlRFTF9WR0FfREVW
SUNFKDB4NUE1OSwgaW5mbyksIFwNCj4gKwlJTlRFTF9WR0FfREVWSUNFKDB4NUE1QSwgaW5mbykN
Cj4gDQo+ICAvKiBJQ0wgKi8NCj4gICNkZWZpbmUgSU5URUxfSUNMX1BPUlRfRl9JRFMoaW5mbykg
XA0KPiAtLQ0KPiAyLjI2LjINCj4gDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fDQo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QNCj4gSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
