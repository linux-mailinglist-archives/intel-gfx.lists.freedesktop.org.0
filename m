Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FBA8276526
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Sep 2020 02:33:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D7E96EA2D;
	Thu, 24 Sep 2020 00:32:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 802586EA2D
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Sep 2020 00:32:57 +0000 (UTC)
IronPort-SDR: MHgK2VfW65hUMr9wgFcl7mXulZc6euEj8qqtf+24eA14dYDjCPJSnRVjyp0Wch/86Z9WV6pgE1
 J8EuOiyMrGDw==
X-IronPort-AV: E=McAfee;i="6000,8403,9753"; a="140512782"
X-IronPort-AV: E=Sophos;i="5.77,296,1596524400"; d="scan'208";a="140512782"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2020 17:32:57 -0700
IronPort-SDR: C6oE+AxI50162hl6ZMhDnMxIJEmipFC2wgxHaYHFNkTVOwpT5uQC9Nd9iwNFKZjIFCEyZl1iSI
 oKGmmhK2gekQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,296,1596524400"; d="scan'208";a="486675365"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 23 Sep 2020 17:32:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 23 Sep 2020 17:32:56 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 23 Sep 2020 17:32:55 -0700
Received: from orsmsx611.amr.corp.intel.com ([10.22.229.24]) by
 ORSMSX611.amr.corp.intel.com ([10.22.229.24]) with mapi id 15.01.1713.004;
 Wed, 23 Sep 2020 17:32:55 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 03/14] drm/i915: Reclassify SKL 0x1923 and
 0x1927 as ULT
Thread-Index: AQHWkgMGsivorPOzgUKE3W3WuJZK2ql27+/g
Date: Thu, 24 Sep 2020 00:32:55 +0000
Message-ID: <87166a8b94c24490a3a3c6e1c24f4fbe@intel.com>
References: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
 <20200716172106.2656-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20200716172106.2656-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 03/14] drm/i915: Reclassify SKL 0x1923 and
 0x1927 as ULT
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
IFtQQVRDSCAwMy8xNF0gZHJtL2k5MTU6IFJlY2xhc3NpZnkgU0tMIDB4MTkyMyBhbmQNCj4gMHgx
OTI3IGFzIFVMVA0KPiANCj4gRnJvbTogQWxleGVpIFBvZHRlbGV6aG5pa292IDxhcG9kdGVsZUBn
bWFpbC5jb20+DQo+IA0KPiBSZWNsYXNzaWZ5IDB4MTkyMywgMHgxOTI3IGFjY29yZGluZyB0byBz
cGVjaWZpY2F0aW9ucy4gT2Ygbm90ZSwgdGhlIHNlY29uZCB0bw0KPiBsYXN0IGRpZ2l0IHNlZW1z
IHRvIGNvcnJlc3BvbmQgdG8gR1QjLg0KDQpJTU8gd2UgZG9u4oCZdCBuZWVkIHRvIHNwZWNpZnkg
dGhlIGFib3ZlLg0KDQo+IFNpZ25lZC1vZmYtYnk6IEFsZXhlaSBQb2R0ZWxlemhuaWtvdiA8YXBv
ZHRlbGVAZ21haWwuY29tPg0KPiBbdnN5cmphbGE6IFNwbGl0IHNlcGFyYXRlIGNoYW5nZXMgaW50
byBzZXBhcmF0ZSBwYXRjaGVzLA0KPiAgICAgICAgICAgIFNvcnQgdGhlIElEc10NCj4gU2lnbmVk
LW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4N
Cg0KUmV2aWV3ZWQtYnk6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNv
bT4NCj4gLS0tDQo+ICBpbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oIHwgNiArKystLS0NCj4gIDEg
ZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZm
IC0tZ2l0IGEvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaCBiL2luY2x1ZGUvZHJtL2k5MTVfcGNp
aWRzLmggaW5kZXgNCj4gZDRjMDU0ZTNiOTVmLi45ZGYzNjk3ZjA3NGQgMTAwNjQ0DQo+IC0tLSBh
L2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmgNCj4gKysrIGIvaW5jbHVkZS9kcm0vaTkxNV9wY2lp
ZHMuaA0KPiBAQCAtMzU3LDEyICszNTcsMTIgQEANCj4gIAlJTlRFTF9WR0FfREVWSUNFKDB4MTkx
RCwgaW5mbykgIC8qIFdLUyBHVDIgKi8NCj4gDQo+ICAjZGVmaW5lIElOVEVMX1NLTF9VTFRfR1Qz
X0lEUyhpbmZvKSBcDQo+IC0JSU5URUxfVkdBX0RFVklDRSgweDE5MjYsIGluZm8pIC8qIFVMVCBH
VDMgKi8NCj4gKwlJTlRFTF9WR0FfREVWSUNFKDB4MTkyMywgaW5mbyksIC8qIFVMVCBHVDMgKi8g
XA0KPiArCUlOVEVMX1ZHQV9ERVZJQ0UoMHgxOTI2LCBpbmZvKSwgLyogVUxUIEdUMyAqLyBcDQo+
ICsJSU5URUxfVkdBX0RFVklDRSgweDE5MjcsIGluZm8pICAvKiBVTFQgR1QzICovDQo+IA0KPiAg
I2RlZmluZSBJTlRFTF9TS0xfR1QzX0lEUyhpbmZvKSBcDQo+ICAJSU5URUxfU0tMX1VMVF9HVDNf
SURTKGluZm8pLCBcDQo+IC0JSU5URUxfVkdBX0RFVklDRSgweDE5MjMsIGluZm8pLCAvKiBVTFQg
R1QzICovIFwNCj4gLQlJTlRFTF9WR0FfREVWSUNFKDB4MTkyNywgaW5mbyksIC8qIFVMVCBHVDMg
Ki8gXA0KPiAgCUlOVEVMX1ZHQV9ERVZJQ0UoMHgxOTJBLCBpbmZvKSwgLyogU1JWIEdUMyAqLyBc
DQo+ICAJSU5URUxfVkdBX0RFVklDRSgweDE5MkIsIGluZm8pLCAvKiBIYWxvIEdUMyAqLyBcDQo+
ICAJSU5URUxfVkdBX0RFVklDRSgweDE5MkQsIGluZm8pICAvKiBTUlYgR1QzICovDQo+IC0tDQo+
IDIuMjYuMg0KPiANCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18NCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdA0KPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnDQo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
