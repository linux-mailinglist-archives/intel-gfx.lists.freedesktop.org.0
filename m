Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C246F321FA0
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Feb 2021 20:06:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01E016E1D7;
	Mon, 22 Feb 2021 19:06:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F00C6E1D7
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Feb 2021 19:06:35 +0000 (UTC)
IronPort-SDR: bce6eau0j00IvdNz6RQPryhOYaojkn8MJQ5gn/GW/NZmM8ubcXEy5du+kNji9LnofrwmcXTj6o
 1+TvhJXIEt5w==
X-IronPort-AV: E=McAfee;i="6000,8403,9903"; a="184672596"
X-IronPort-AV: E=Sophos;i="5.81,198,1610438400"; d="scan'208";a="184672596"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2021 11:06:34 -0800
IronPort-SDR: m2w601BWsmtEMoEB24CHsFhCW8sIv2zL1RStKWnWHFPX3R4Jf0sGTGqHLucDICzUlq99Uijulv
 gXLqqZdU6LcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,198,1610438400"; d="scan'208";a="432195382"
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7])
 by fmsmga002.fm.intel.com with ESMTP; 22 Feb 2021 11:06:33 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 22 Feb 2021 19:06:32 +0000
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.002;
 Mon, 22 Feb 2021 11:06:31 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2] drm/i915/display: Do not allow DC3CO if PSR SF is
 enabled
Thread-Index: AQHXCU2J0vJam72w10m5Tf4GD6fqP6plD6iA
Date: Mon, 22 Feb 2021 19:06:31 +0000
Message-ID: <16784d31160e3d974ec9655a65567dd3bfa7f684.camel@intel.com>
References: <20210222190528.1591188-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20210222190528.1591188-1-gwan-gyeong.mun@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <6E2DC2FF7C8845419E09764BB13B106E@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Do not allow DC3CO if
 PSR SF is enabled
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

T24gTW9uLCAyMDIxLTAyLTIyIGF0IDIxOjA1ICswMjAwLCBHd2FuLWd5ZW9uZyBNdW4gd3JvdGU6
DQo+IEV2ZW4gdGhvdWdoIEdFTjEyKyBIVyBzdXBwb3J0cyBQU1IgKyBEQzNDTywgRE1DJ3MgSFcg
REMzQ08gZXhpdCBtZWNoYW5pc20NCj4gaGFzIGFuIGlzc3VlIHdpdGggdXNpbmcgb2YgU2VsZWN0
aXZlIEZlY3RoIGFuZCBQU1IyIG1hbnVhbCB0cmFja2luZy4NCj4gQW5kIGFzIHNvbWUgR0VOMTIr
IHBsYXRmb3JtcyAoUktMLCBBREwtUykgZG9uJ3Qgc3VwcG9ydCBQU1IyIEhXIHRyYWNraW5nLA0K
PiBTZWxlY3RpdmUgRmV0Y2ggd2lsbCBiZSBlbmFibGVkIGJ5IGRlZmF1bHQgb24gdGhhdCBwbGF0
Zm9ybXMuDQo+IFRoZXJlZm9yZSBpZiB0aGUgc3lzdGVtIGVuYWJsZXMgUFNSIFNlbGVjdGl2ZSBG
ZXRjaCAvIFBTUiBtYW51YWwgdHJhY2tpbmcsDQo+IGl0IGRvZXMgbm90IGFsbG93IERDM0NPIGRj
IHN0YXRlLCBpbiB0aGF0IGNhc2UuDQo+IA0KPiBXaGVuIHRoaXMgREMzQ08gZXhpdCBpc3N1ZSBp
cyBhZGRyZXNzZWQgd2hpbGUgUFNSIFNlbGVjdGl2ZSBGZXRjaCBpcw0KPiBlbmFibGVkLCB0aGlz
IHJlc3RyaWN0aW9uIHNob3VsZCBiZSByZW1vdmVkLg0KPiANCj4gQ2M6IEpvc8OpIFJvYmVydG8g
ZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiBDYzogQW5zaHVtYW4gR3VwdGEgPGFu
c2h1bWFuLmd1cHRhQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogR3dhbi1neWVvbmcgTXVu
IDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgOCArKysrKysrKw0KPiDCoDEgZmlsZSBjaGFuZ2Vk
LCA4IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYw0KPiBpbmRleCA3YzZlNTYxZjg2YzEuLjczNzBkZTk3ZTU5OSAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC02NTQsNiArNjU0LDE0
IEBAIHRnbF9kYzNjb19leGl0bGluZV9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwLA0KPiDCoAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90b19p
OTE1KGludGVsX2RwKTsNCj4gwqAJdTMyIGV4aXRfc2NhbmxpbmVzOw0KPiDCoA0KPiANCj4gDQo+
IA0KPiArCS8qDQo+ICsJICogRE1DJ3MgREMzQ08gZXhpdCBtZWNoYW5pc20gaGFzIGFuIGlzc3Vl
IHdpdGggU2VsZWN0aXZlIEZlY3RoDQo+ICsJICogVE9ETzogd2hlbiB0aGUgaXNzdWUgaXMgYWRk
cmVzc2VkLCB0aGlzIHJlc3RyaWN0aW9uIHNob3VsZCBiZSByZW1vdmVkLg0KPiArCSAqLw0KPiAr
CWlmIChkZXZfcHJpdi0+cGFyYW1zLmVuYWJsZV9wc3IyX3NlbF9mZXRjaCB8fA0KPiArCSAgICBp
bnRlbF9kcC0+cHNyLmRlYnVnID09IEk5MTVfUFNSX0RFQlVHX0VOQUJMRV9TRUxfRkVUQ0gpDQo+
ICsJCXJldHVybjsNCg0KY3J0Y19zdGF0ZS0+ZW5hYmxlX3BzcjJfc2VsX2ZldGNoIGlzIGEgbXVj
aCBiZXR0ZXIgYWx0ZXJuYXRpdmUuDQoNCg0KPiArDQo+IMKgCWlmICghKGRldl9wcml2LT5jc3Iu
YWxsb3dlZF9kY19tYXNrICYgRENfU1RBVEVfRU5fREMzQ08pKQ0KPiDCoAkJcmV0dXJuOw0KPiDC
oA0KPiANCj4gDQo+IA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
