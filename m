Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 964914DA272
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 19:35:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B797A89DC0;
	Tue, 15 Mar 2022 18:35:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DE3889DC0
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 18:35:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647369356; x=1678905356;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=ONJEdLwzY2uUBAUFhN7OrXOlunRsLAoXq96s0wCU/3o=;
 b=HTBbfClsZXx5VtoNP7nEXzO3FDo6Oj25PcwXryhRwJN4U/CiKU6fsEe+
 ApZSiGLLqCht7j9W6y+17FYeaF5u9uOlOwiPcmxIHtgnaGhwENmZnKHFn
 M1+8ui6u8D5NYFceRpg+gb5hgN54/MyxS8r7U/FmZ9aNqBnKH/d8zrkct
 JJ0hVA9ff+AXdEc3P4NSpwI2lQB/VcIgns2KliOlXZmSvRn/jtO4iFUqP
 v6hjgaakGDRolB3mj92K1p0m6BIhIb/zwSc5EObOOvnwa9A1nTBTSEMdO
 a53plRc50dnszKKPbP2oo1NnK/lpDlU2RNcSYHHWdv/Oq+5XaeQx6nSJ8 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="255226834"
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="255226834"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 11:35:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="820021785"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 15 Mar 2022 11:35:55 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 15 Mar 2022 11:35:55 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 15 Mar 2022 11:35:55 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.021;
 Tue, 15 Mar 2022 11:35:54 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 3/9] drm/i915: Fix DRRS frontbuffer_bits
 handling
Thread-Index: AQHYOHCIwa6ILmwrwEKCNBMSCyKrMazBO8mA
Date: Tue, 15 Mar 2022 18:35:54 +0000
Message-ID: <fec28d157a77b33b6d1397ccf33520457f8214a0.camel@intel.com>
References: <20220315132752.11849-1-ville.syrjala@linux.intel.com>
 <20220315132752.11849-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20220315132752.11849-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <33F02AB53A16BF47B84CF92A4C537D7D@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/9] drm/i915: Fix DRRS frontbuffer_bits
 handling
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
PiANCj4gTm93IHRoYXQgRFJSUyBjYW4gb3BlcmF0ZSBvbiBtdWx0aXBsZSBwaXBlcyB3ZSBuZWVk
IHRvIG1ha2Ugc3VyZQ0KPiBvbmUgcGlwZSBkb2Vzbid0IHRocm93IGF3YXkgdGhlIG90aGVyIHBp
cGUncyBmcm9udGJ1ZmZlcl9iaXRzIGJlZm9yZQ0KPiBzYWlkIHBpcGUgY2FuIGhhbmRsZSB0aGVt
Lg0KPiANCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFA
aW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcnJzLmMgfCA2ICsrKystLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RycnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHJycy5jDQo+IGluZGV4IGUxYjQxYjc3MjUyMS4uZTlkNjIyZmU2NmIzIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RycnMuYw0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RycnMuYw0KPiBAQCAtMjU4
LDcgKzI1OCw3IEBAIHN0YXRpYyB2b2lkIGludGVsX2RycnNfZG93bmNsb2NrX3dvcmsoc3RydWN0
IHdvcmtfc3RydWN0ICp3b3JrKQ0KPiAgfQ0KPiAgDQo+ICBzdGF0aWMgdm9pZCBpbnRlbF9kcnJz
X2Zyb250YnVmZmVyX3VwZGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+
IC0JCQkJCSAgdW5zaWduZWQgaW50IGZyb250YnVmZmVyX2JpdHMsDQo+ICsJCQkJCSAgdW5zaWdu
ZWQgaW50IGFsbF9mcm9udGJ1ZmZlcl9iaXRzLA0KPiAgCQkJCQkgIGJvb2wgaW52YWxpZGF0ZSkN
Cj4gIHsNCj4gIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsNCj4gQEAgLTI2Nyw2ICsyNjcsOCBA
QCBzdGF0aWMgdm9pZCBpbnRlbF9kcnJzX2Zyb250YnVmZmVyX3VwZGF0ZShzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ICAJCXJldHVybjsNCj4gIA0KPiAgCWZvcl9lYWNoX2lu
dGVsX2NydGMoJmRldl9wcml2LT5kcm0sIGNydGMpIHsNCj4gKwkJdW5zaWduZWQgaW50IGZyb250
YnVmZmVyX2JpdHM7DQo+ICsNCj4gIAkJY2FuY2VsX2RlbGF5ZWRfd29yaygmY3J0Yy0+ZHJycy53
b3JrKTsNCj4gIA0KPiAgCQltdXRleF9sb2NrKCZjcnRjLT5kcnJzLm11dGV4KTsNCj4gQEAgLTI3
Niw3ICsyNzgsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kcnJzX2Zyb250YnVmZmVyX3VwZGF0ZShz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ICAJCQljb250aW51ZTsNCj4gIAkJ
fQ0KPiAgDQo+IC0JCWZyb250YnVmZmVyX2JpdHMgJj0gSU5URUxfRlJPTlRCVUZGRVJfQUxMX01B
U0soY3J0Yy0+cGlwZSk7DQo+ICsJCWZyb250YnVmZmVyX2JpdHMgPSBhbGxfZnJvbnRidWZmZXJf
Yml0cyAmIElOVEVMX0ZST05UQlVGRkVSX0FMTF9NQVNLKGNydGMtPnBpcGUpOw0KPiAgCQlpZiAo
aW52YWxpZGF0ZSkNCj4gIAkJCWNydGMtPmRycnMuYnVzeV9mcm9udGJ1ZmZlcl9iaXRzIHw9IGZy
b250YnVmZmVyX2JpdHM7DQo+ICAJCWVsc2UNCg0K
