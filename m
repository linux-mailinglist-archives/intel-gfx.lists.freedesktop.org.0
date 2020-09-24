Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4487F27658C
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Sep 2020 03:01:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 868946E0B9;
	Thu, 24 Sep 2020 01:01:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E70C66E0A6
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Sep 2020 01:01:45 +0000 (UTC)
IronPort-SDR: f1vx2sGRMYt5docNvgvevV8OBaowC3OucERG7l+7GAd/CgDjRPCSsrS3iG7qn8vPe4sghRzW4c
 cHvH0w7E67QA==
X-IronPort-AV: E=McAfee;i="6000,8403,9753"; a="158411568"
X-IronPort-AV: E=Sophos;i="5.77,296,1596524400"; d="scan'208";a="158411568"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2020 18:01:45 -0700
IronPort-SDR: KIYpf3ezEFMZJTgD9ucKeDEB/Py23qceMzs1dwSGgmjRE1JFl2uNOeD3yhGBfMT9BdyKU9FeQ8
 WbCURbEV8aHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,296,1596524400"; d="scan'208";a="511283859"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 23 Sep 2020 18:01:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 23 Sep 2020 18:01:44 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 23 Sep 2020 18:01:44 -0700
Received: from orsmsx611.amr.corp.intel.com ([10.22.229.24]) by
 ORSMSX611.amr.corp.intel.com ([10.22.229.24]) with mapi id 15.01.1713.004;
 Wed, 23 Sep 2020 18:01:44 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 13/14] drm/i915: Sort ICL PCI IDs
Thread-Index: AQHWkgLqg5nXPJzYUk+g0aJWbuT21al2+GZw
Date: Thu, 24 Sep 2020 01:01:44 +0000
Message-ID: <0bb78a7411e145cba5208fe51f4fba8c@intel.com>
References: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
 <20200716172106.2656-14-ville.syrjala@linux.intel.com>
In-Reply-To: <20200716172106.2656-14-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 13/14] drm/i915: Sort ICL PCI IDs
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
IFtQQVRDSCAxMy8xNF0gZHJtL2k5MTU6IFNvcnQgSUNMIFBDSSBJRHMNCj4gDQo+IEZyb206IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBTb3J0
IHRoZSBJQ0wgUENJIElEcyBudW1lcmljYWxseS4gU29tZSBvcmRlciBzZWVtcyBiZXR0ZXIgdGhh
biByYW5kb21uZXNzLg0KPiANCj4gQ2M6IEFsZXhlaSBQb2R0ZWxlemhuaWtvdiA8YXBvZHRlbGVA
Z21haWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPg0KUmV2aWV3ZWQtYnk6IEFudXNoYSBTcml2YXRzYSA8YW51c2hh
LnNyaXZhdHNAaW50ZWwuY29tPg0KDQo+IC0tLQ0KPiAgaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMu
aCB8IDE2ICsrKysrKysrLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMo
KyksIDggZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vaTkxNV9w
Y2lpZHMuaCBiL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmggaW5kZXgNCj4gMzNhNzJlNmVhZGQ4
Li40NWRhMWI0NWMwMWUgMTAwNjQ0DQo+IC0tLSBhL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmgN
Cj4gKysrIGIvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaA0KPiBAQCAtNTY0LDE4ICs1NjQsMTgg
QEANCj4gIC8qIElDTCAqLw0KPiAgI2RlZmluZSBJTlRFTF9JQ0xfUE9SVF9GX0lEUyhpbmZvKSBc
DQo+ICAJSU5URUxfVkdBX0RFVklDRSgweDhBNTAsIGluZm8pLCBcDQo+IC0JSU5URUxfVkdBX0RF
VklDRSgweDhBNUMsIGluZm8pLCBcDQo+IC0JSU5URUxfVkdBX0RFVklDRSgweDhBNTksIGluZm8p
LAlcDQo+IC0JSU5URUxfVkdBX0RFVklDRSgweDhBNTgsIGluZm8pLAlcDQo+ICAJSU5URUxfVkdB
X0RFVklDRSgweDhBNTIsIGluZm8pLCBcDQo+ICsJSU5URUxfVkdBX0RFVklDRSgweDhBNTMsIGlu
Zm8pLCBcDQo+ICsJSU5URUxfVkdBX0RFVklDRSgweDhBNTQsIGluZm8pLCBcDQo+ICsJSU5URUxf
VkdBX0RFVklDRSgweDhBNTYsIGluZm8pLCBcDQo+ICsJSU5URUxfVkdBX0RFVklDRSgweDhBNTcs
IGluZm8pLCBcDQo+ICsJSU5URUxfVkdBX0RFVklDRSgweDhBNTgsIGluZm8pLAlcDQo+ICsJSU5U
RUxfVkdBX0RFVklDRSgweDhBNTksIGluZm8pLAlcDQo+ICAJSU5URUxfVkdBX0RFVklDRSgweDhB
NUEsIGluZm8pLCBcDQo+ICAJSU5URUxfVkdBX0RFVklDRSgweDhBNUIsIGluZm8pLCBcDQo+IC0J
SU5URUxfVkdBX0RFVklDRSgweDhBNTcsIGluZm8pLCBcDQo+IC0JSU5URUxfVkdBX0RFVklDRSgw
eDhBNTYsIGluZm8pLCBcDQo+IC0JSU5URUxfVkdBX0RFVklDRSgweDhBNzEsIGluZm8pLCBcDQo+
ICsJSU5URUxfVkdBX0RFVklDRSgweDhBNUMsIGluZm8pLCBcDQo+ICAJSU5URUxfVkdBX0RFVklD
RSgweDhBNzAsIGluZm8pLCBcDQo+IC0JSU5URUxfVkdBX0RFVklDRSgweDhBNTMsIGluZm8pLCBc
DQo+IC0JSU5URUxfVkdBX0RFVklDRSgweDhBNTQsIGluZm8pDQo+ICsJSU5URUxfVkdBX0RFVklD
RSgweDhBNzEsIGluZm8pDQo+IA0KPiAgI2RlZmluZSBJTlRFTF9JQ0xfMTFfSURTKGluZm8pIFwN
Cj4gIAlJTlRFTF9JQ0xfUE9SVF9GX0lEUyhpbmZvKSwgXA0KPiAtLQ0KPiAyLjI2LjINCj4gDQo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IEludGVs
LWdmeCBtYWlsaW5nIGxpc3QNCj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
