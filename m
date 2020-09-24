Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B9F276593
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Sep 2020 03:04:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04A1D6EA3C;
	Thu, 24 Sep 2020 01:04:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7830D6E0A6
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Sep 2020 01:04:54 +0000 (UTC)
IronPort-SDR: ipzO+eIXyc/92PzGZ/uTq8jLbKV5dc58bNt0IzWXhGMgBi6beVYlNPoOSSWhZK2F7twUL4+gvJ
 jGSdvPYcMjaQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9753"; a="158448690"
X-IronPort-AV: E=Sophos;i="5.77,296,1596524400"; d="scan'208";a="158448690"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2020 18:04:53 -0700
IronPort-SDR: /IIRWw0NaCuMdLl7DSY/+cyXHYn4wPUh7MeyAtmzSn1ZHs9CBsJBV1DqrqAn3swT4/79eByQRt
 VbjATUJmh91A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,296,1596524400"; d="scan'208";a="511284532"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 23 Sep 2020 18:04:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 23 Sep 2020 18:04:53 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 23 Sep 2020 18:04:52 -0700
Received: from orsmsx611.amr.corp.intel.com ([10.22.229.24]) by
 ORSMSX611.amr.corp.intel.com ([10.22.229.24]) with mapi id 15.01.1713.004;
 Wed, 23 Sep 2020 18:04:52 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 14/14] drm/i915: Sort EHL/JSL PCI IDs
Thread-Index: AQHWkgLlVQTMnZVTt0mBaa0zRckatal2+USA
Date: Thu, 24 Sep 2020 01:04:52 +0000
Message-ID: <2d27a9a317644ce9be085ae78cc41699@intel.com>
References: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
 <20200716172106.2656-15-ville.syrjala@linux.intel.com>
In-Reply-To: <20200716172106.2656-15-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 14/14] drm/i915: Sort EHL/JSL PCI IDs
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
IFtQQVRDSCAxNC8xNF0gZHJtL2k5MTU6IFNvcnQgRUhML0pTTCBQQ0kgSURzDQo+IA0KPiBGcm9t
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4g
U29ydCB0aGUgRUhML0pTTCBQQ0kgSURzIG51bWVyaWNhbGx5LiBTb21lIG9yZGVyIHNlZW1zIGJl
dHRlciB0aGFuDQo+IHJhbmRvbW5lc3MuDQo+IA0KPiBDYzogQWxleGVpIFBvZHRlbGV6aG5pa292
IDxhcG9kdGVsZUBnbWFpbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQpSZXZpZXdlZC1ieTogQW51c2hhIFNyaXZh
dHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPg0KDQo+IC0tLQ0KPiAgaW5jbHVkZS9kcm0v
aTkxNV9wY2lpZHMuaCB8IDE0ICsrKysrKystLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgNyBp
bnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUv
ZHJtL2k5MTVfcGNpaWRzLmggYi9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oIGluZGV4DQo+IDQ1
ZGExYjQ1YzAxZS4uODgwZmZlODU3MWU4IDEwMDY0NA0KPiAtLS0gYS9pbmNsdWRlL2RybS9pOTE1
X3BjaWlkcy5oDQo+ICsrKyBiL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmgNCj4gQEAgLTU4NSwx
NiArNTg1LDE2IEBADQo+ICAvKiBFSEwvSlNMICovDQo+ICAjZGVmaW5lIElOVEVMX0VITF9JRFMo
aW5mbykgXA0KPiAgCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0NTAwLCBpbmZvKSwJXA0KPiAtCUlOVEVM
X1ZHQV9ERVZJQ0UoMHg0NTcxLCBpbmZvKSwgXA0KPiAtCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0NTUx
LCBpbmZvKSwgXA0KPiAgCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0NTQxLCBpbmZvKSwgXA0KPiAtCUlO
VEVMX1ZHQV9ERVZJQ0UoMHg0RTcxLCBpbmZvKSwgXA0KPiAtCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0
NTU3LCBpbmZvKSwgXA0KPiArCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0NTUxLCBpbmZvKSwgXA0KPiAg
CUlOVEVMX1ZHQV9ERVZJQ0UoMHg0NTU1LCBpbmZvKSwgXA0KPiAtCUlOVEVMX1ZHQV9ERVZJQ0Uo
MHg0RTYxLCBpbmZvKSwgXA0KPiAtCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0RTU3LCBpbmZvKSwgXA0K
PiArCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0NTU3LCBpbmZvKSwgXA0KPiArCUlOVEVMX1ZHQV9ERVZJ
Q0UoMHg0NTcxLCBpbmZvKSwgXA0KPiArCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0RTUxLCBpbmZvKSwg
XA0KPiAgCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0RTU1LCBpbmZvKSwgXA0KPiAtCUlOVEVMX1ZHQV9E
RVZJQ0UoMHg0RTUxLCBpbmZvKQ0KPiArCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0RTU3LCBpbmZvKSwg
XA0KPiArCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0RTYxLCBpbmZvKSwgXA0KPiArCUlOVEVMX1ZHQV9E
RVZJQ0UoMHg0RTcxLCBpbmZvKQ0KPiANCj4gIC8qIFRHTCAqLw0KPiAgI2RlZmluZSBJTlRFTF9U
R0xfMTJfSURTKGluZm8pIFwNCj4gLS0NCj4gMi4yNi4yDQo+IA0KPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0
DQo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
