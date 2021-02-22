Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4AAD322161
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Feb 2021 22:30:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2897A6E958;
	Mon, 22 Feb 2021 21:30:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAD756E7D3
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Feb 2021 21:30:07 +0000 (UTC)
IronPort-SDR: OMPoXpGoUjAzO60/e+oE+0GhZ72+2GFaQ7BItlggP+iaHrAA+pT7EgDRPqnWUx5WgSKVIUIK0H
 S69PMIgsqaKA==
X-IronPort-AV: E=McAfee;i="6000,8403,9903"; a="164437819"
X-IronPort-AV: E=Sophos;i="5.81,198,1610438400"; d="scan'208";a="164437819"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2021 13:30:06 -0800
IronPort-SDR: ugbCq72kr5pIsq/gccM13eFnU1jGw4h0RTZX1BGxEjZk/a5ZfH8nlZO01oJSDGlBXy0Ebzn/Tx
 9zFj+VJRczmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,198,1610438400"; d="scan'208";a="441510723"
Received: from irsmsx603.ger.corp.intel.com ([163.33.146.9])
 by orsmga001.jf.intel.com with ESMTP; 22 Feb 2021 13:29:49 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx603.ger.corp.intel.com (163.33.146.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 22 Feb 2021 21:29:45 +0000
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.002;
 Mon, 22 Feb 2021 13:29:44 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3] drm/i915/display: Do not allow DC3CO if PSR SF is
 enabled
Thread-Index: AQHXCWG8DKCypBxzikmpARGm6KXeB6plN4MA
Date: Mon, 22 Feb 2021 21:29:44 +0000
Message-ID: <4753f8bcd4f285b6c63194e1c125d3264ed22129.camel@intel.com>
References: <20210222213006.1609085-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20210222213006.1609085-1-gwan-gyeong.mun@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <6D72634B615F694DBBCDB5045D48A5F8@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/display: Do not allow DC3CO if
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

T24gTW9uLCAyMDIxLTAyLTIyIGF0IDIzOjMwICswMjAwLCBHd2FuLWd5ZW9uZyBNdW4gd3JvdGU6
DQo+IEV2ZW4gdGhvdWdoIEdFTjEyKyBIVyBzdXBwb3J0cyBQU1IgKyBEQzNDTywgRE1DJ3MgSFcg
REMzQ08gZXhpdCBtZWNoYW5pc20NCj4gaGFzIGFuIGlzc3VlIHdpdGggdXNpbmcgb2YgU2VsZWN0
aXZlIEZlY3RoIGFuZCBQU1IyIG1hbnVhbCB0cmFja2luZy4NCj4gQW5kIGFzIHNvbWUgR0VOMTIr
IHBsYXRmb3JtcyAoUktMLCBBREwtUykgZG9uJ3Qgc3VwcG9ydCBQU1IyIEhXIHRyYWNraW5nLA0K
PiBTZWxlY3RpdmUgRmV0Y2ggd2lsbCBiZSBlbmFibGVkIGJ5IGRlZmF1bHQgb24gdGhhdCBwbGF0
Zm9ybXMuDQo+IFRoZXJlZm9yZSBpZiB0aGUgc3lzdGVtIGVuYWJsZXMgUFNSIFNlbGVjdGl2ZSBG
ZXRjaCAvIFBTUiBtYW51YWwgdHJhY2tpbmcsDQo+IGl0IGRvZXMgbm90IGFsbG93IERDM0NPIGRj
IHN0YXRlLCBpbiB0aGF0IGNhc2UuDQo+IA0KPiBXaGVuIHRoaXMgREMzQ08gZXhpdCBpc3N1ZSBp
cyBhZGRyZXNzZWQgd2hpbGUgUFNSIFNlbGVjdGl2ZSBGZXRjaCBpcw0KPiBlbmFibGVkLCB0aGlz
IHJlc3RyaWN0aW9uIHNob3VsZCBiZSByZW1vdmVkLg0KPiANCj4gdjI6IEFkZHJlc3MgSm9zZSdz
IHJldmlldyBjb21tZW50Lg0KPiDCoMKgLSBGaXggdHlwbw0KPiDCoMKgLSBNb3ZlIGNoZWNrIHJv
dXRpbmUgb2YgREMzQ08gYWJpbGl0eSB0bw0KPiDCoMKgwqDCoHRnbF9kYzNjb19leGl0bGluZV9j
b21wdXRlX2NvbmZpZygpDQo+IHYzOiBDaGFuZ2UgdGhlIGNoZWNrIHJvdXRpbmUgb2YgZW5hYmxl
bWVudCBvZiBwc3IyIHNlbCBmZXRjaC4gKEpvc2UpDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2Jl
cnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiANCj4gQ2M6IEpvc8OpIFJv
YmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiBDYzogQW5zaHVtYW4gR3Vw
dGEgPGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogR3dhbi1neWVv
bmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgNyArKysrKysrDQo+IMKgMSBmaWxlIGNo
YW5nZWQsIDcgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jDQo+IGluZGV4IDdjNmU1NjFmODZjMS4uY2Q0MzQyODVlM2I3IDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTY1NCw2ICs2
NTQsMTMgQEAgdGdsX2RjM2NvX2V4aXRsaW5lX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHAsDQo+IMKgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGRw
X3RvX2k5MTUoaW50ZWxfZHApOw0KPiDCoAl1MzIgZXhpdF9zY2FubGluZXM7DQo+IMKgDQo+IA0K
PiANCj4gDQo+ICsJLyoNCj4gKwkgKiBETUMncyBEQzNDTyBleGl0IG1lY2hhbmlzbSBoYXMgYW4g
aXNzdWUgd2l0aCBTZWxlY3RpdmUgRmVjdGgNCj4gKwkgKiBUT0RPOiB3aGVuIHRoZSBpc3N1ZSBp
cyBhZGRyZXNzZWQsIHRoaXMgcmVzdHJpY3Rpb24gc2hvdWxkIGJlIHJlbW92ZWQuDQo+ICsJICov
DQo+ICsJaWYgKGNydGNfc3RhdGUtPmVuYWJsZV9wc3IyX3NlbF9mZXRjaCkNCj4gKwkJcmV0dXJu
Ow0KPiArDQo+IMKgCWlmICghKGRldl9wcml2LT5jc3IuYWxsb3dlZF9kY19tYXNrICYgRENfU1RB
VEVfRU5fREMzQ08pKQ0KPiDCoAkJcmV0dXJuOw0KPiDCoA0KPiANCj4gDQo+IA0KDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
