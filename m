Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 796172B9A78
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Nov 2020 19:18:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 492286E5C5;
	Thu, 19 Nov 2020 18:18:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96F2D6E5C5
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Nov 2020 18:18:16 +0000 (UTC)
IronPort-SDR: pljEzR/2U5Ny8Y8H+mocX/uBXvCuCs9JFx1M4eXxw+uG2vsf4zimJAQvckMC7WO9ez1S/1JXrE
 SXN2cuOAjfDQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9810"; a="256045870"
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="256045870"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 10:18:15 -0800
IronPort-SDR: QvwtA5UrGbixkkbAseF3w2yQiny68qRdrz2XMSyL2mi1mS9Qb0o7Z/TSxslOe2S2sOtCrB0uva
 qZ0Y/v0XzN8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="368948623"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga007.jf.intel.com with ESMTP; 19 Nov 2020 10:18:15 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 19 Nov 2020 10:18:15 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 19 Nov 2020 10:18:14 -0800
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.1713.004;
 Thu, 19 Nov 2020 10:18:14 -0800
From: "Hampson, Steven T" <steven.t.hampson@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Thread-Topic: [Intel-gfx] [PATCH] i915/gem_flink_race: Fix error in buffer
 usage
Thread-Index: AQHWvTBCR2wrJZMkz0yKes60mRjn1KnNbbmA//+PVeaAAUB3gIAAHVLQgAFqeEA=
Date: Thu, 19 Nov 2020 18:18:14 +0000
Message-ID: <030edf9e00ee4cc8bf204becd5ec53fc@intel.com>
References: <20201117222308.31551-1-steven.t.hampson@intel.com>,
 <160565211968.4536.839020621876876215@build.alporthouse.com>
 <4EE61155-0590-4677-952B-17E4E21BF3D3@intel.com>
 <160569674330.3553.1254692070520168643@build.alporthouse.com>
 <08d69a538ca24cc1806b160e2981b0b2@intel.com>
In-Reply-To: <08d69a538ca24cc1806b160e2981b0b2@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.1.200.100]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] i915/gem_flink_race: Fix error in buffer
 usage
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMsDQoNCklzIHRoaXMgYWNjZXB0YWJsZT8gIENhbiBpdCBiZSBtZXJnZWQ/DQoNCi0tLS0t
T3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBIYW1wc29uLCBTdGV2ZW4gVCANClNlbnQ6IFdl
ZG5lc2RheSwgTm92ZW1iZXIgMTgsIDIwMjAgMTI6NDEgUE0NClRvOiAnQ2hyaXMgV2lsc29uJyA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPg0KQ2M6IGludGVsLWdmeEAgPGxpc3RzLmZyZWVkZXNr
dG9wLm9yZyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPg0KU3ViamVjdDogUkU6IFtJ
bnRlbC1nZnhdIFtQQVRDSF0gaTkxNS9nZW1fZmxpbmtfcmFjZTogRml4IGVycm9yIGluIGJ1ZmZl
ciB1c2FnZQ0KDQpUaGUgcHJvYmxlbSBpcyB0aGF0IHRoZSBtYWNoaW5lIGl0IHdhcyBydW5uaW5n
IG9uIGhhZCAzMiBjcHVzLCBzbyBvbmUgc2V0IG9mIG51bWJlcnMgcGVyIGNwdSBmaWxsZWQgdGhl
IGJ1ZmZlci4NCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPg0KU2VudDogV2VkbmVzZGF5LCBOb3ZlbWJlciAx
OCwgMjAyMCAyOjUyIEFNDQpUbzogSGFtcHNvbiwgU3RldmVuIFQgPHN0ZXZlbi50LmhhbXBzb25A
aW50ZWwuY29tPg0KQ2M6IGludGVsLWdmeEAgPGxpc3RzLmZyZWVkZXNrdG9wLm9yZyBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPg0KU3ViamVjdDogUmU6IFtJbnRlbC1nZnhdIFtQQVRD
SF0gaTkxNS9nZW1fZmxpbmtfcmFjZTogRml4IGVycm9yIGluIGJ1ZmZlciB1c2FnZQ0KDQpRdW90
aW5nIEhhbXBzb24sIFN0ZXZlbiBUICgyMDIwLTExLTE3IDIzOjQ1OjIzKQ0KPiANCj4gDQo+IFNl
bnQgZnJvbSBteSBpUGhvbmUNCj4gDQo+ID4gT24gTm92IDE3LCAyMDIwLCBhdCAyOjI4IFBNLCBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JvdGU6DQo+ID4gDQo+ID4g
77u/UXVvdGluZyBTdGV2ZSBIYW1wc29uICgyMDIwLTExLTE3IDIyOjIzOjA4KQ0KPiA+PiBBIGJ1
ZmZlciBpbiBmdW5jdGlvbiB0ZXN0X2ZsaW5rX25hbWUgd2FzIGJvdGggdG9vIHNtYWxsIGFuZCBu
ZXZlciANCj4gPj4gY2hlY2tlZCBmb3Igb3ZlcmZsb3cuICBCb3RoIGVycm9ycyBhcmUgZml4ZWQu
DQo+ID4gDQo+ID4gVGhhdCBtYW55IG51bWJlcnMgaXMgbm90IGludGVyZXN0aW5nLiBTaG93IHRo
ZSByYW5nZSBhbmQgbWVkaWFuIGluc3RlYWQuDQo+ID4gLUNocmlzDQo+IA0KPiBJIGRvbuKAmXQg
dW5kZXJzdGFuZCB3aGF0IHlvdSBhcmUgdGFsa2luZyBhYm91dC4gIA0KDQpUaGUgcmVhc29uIEkg
cHJpbnRlZCB0aGUgaW5kaXZpZHVhbCBudW1iZXJzIHdhcyBzbyB0aGF0IHdlIGNvdWxkIHNlZSB0
aGUgZGlzdHJpYnV0aW9uIGluIGNhc2Ugb25lIHRocmVhZCB3YXMgYmVpbmcgc3RhcnZlZCBvciBu
b3QuIFRoYXQgaXMgZmluZSBmb3IgYSBmZXcgbnVtYmVycywgYnV0IGJleW9uZCB0aGF0IHdlIGNh
biBzdW1tYXJpc2Ugd2l0aCBzdGF0aXN0aWNzLg0KLUNocmlzDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
