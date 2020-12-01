Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89DF62CAABE
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 19:31:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 048006E871;
	Tue,  1 Dec 2020 18:31:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DACB96E871
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 18:31:21 +0000 (UTC)
IronPort-SDR: jinhnv95C8m8EgP8KiN6SJNJSRiZipzYb7rqOyQwiIYt00sL8hm4nH/HTkpaR9T0X/1my/plDI
 UwYk3Bvz2hmw==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="172098265"
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="172098265"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 10:31:20 -0800
IronPort-SDR: 8Dy78vKyelKAgIKeqrcUzpdUvTjD5d8WP3SxETF/dOErU6Dlb3+Wl0t3uU7tqmxuiEWu1hSb92
 4mH1d2/HKzuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="373055090"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 01 Dec 2020 10:31:20 -0800
Received: from bgsmsx605.gar.corp.intel.com (10.67.234.7) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 1 Dec 2020 10:31:19 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 BGSMSX605.gar.corp.intel.com (10.67.234.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 2 Dec 2020 00:01:16 +0530
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Tue, 1 Dec 2020 10:31:14 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v6 0/2] Re-enable FBC on TGL
Thread-Index: AQHWyBAL/1p9thOsa0uDX03ndMhKhKnjFlyA
Date: Tue, 1 Dec 2020 18:31:13 +0000
Message-ID: <589b1215583ae4dc934021c17d3488b7fee32cdb.camel@intel.com>
References: <20201201190406.1752-1-uma.shankar@intel.com>
In-Reply-To: <20201201190406.1752-1-uma.shankar@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <3FD7F501B5804F4AA6BBF17281D7F189@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v6 0/2] Re-enable FBC on TGL
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

TEdUTSwgdGhhbmtzIGZvciBkb2luZyB0aGUgY2hhbmdlcy4NCg0KT24gV2VkLCAyMDIwLTEyLTAy
IGF0IDAwOjM0ICswNTMwLCBVbWEgU2hhbmthciB3cm90ZToNCj4gRkJDIHdhcyBkaXNhYmxlZCBv
biBUR0wgZHVlIHRvIHJhbmRvbSB1bmRlcnJ1bnMuIEl0IGhhcw0KPiBiZWVuIGRldGVybWluZWQg
dGhhdCBGQkMgd2lsbCBub3Qgd29yayByZWxpYWJseSB3aXRoIFBTUjIuDQo+IFRoaXMgc2VyaWVz
IHJlLWVuYWJsZXMgZmJjIGFsb25nIHdpdGggdGFraW5nIGNhcmUgb2YgdGhlDQo+IFBTUjIgbGlt
aXRhdGlvbnMgZm9yIFRHTC4NCj4gDQo+IEJzcGVjOiA1MDQyMiBIU0Q6IDE0MDEwMjYwMDAyDQo+
IA0KPiB2MjogQWRkcmVzc2VkIHJldmlldyBjb21tZW50cyBhbmQgYWRkZWQgYnNwZWMgbGlua3MN
Cj4gDQo+IHYzOiBBZGRyZXNzZWQgVmlsbGUncyByZXZpZXcgY29tbWVudHMNCj4gDQo+IHY0OiBD
aGFuZ2UgdGhlIFdBIGFzIHBlciBKb3NlJ3MgcmVjb21tZW5kYXRpb24uDQo+IA0KPiB2NTogQWRk
cmVzc2VkIEpvc2UncyByZXZpZXcgY29tbWVudHMuDQo+IA0KPiB2NjogQWRkZWQgSm9zZSBhbmQg
VmlsbGUgUkIncy4gRml4ZWQgYSBtaW5vciByZXZpZXcNCj4gY29tbWVudC4NCj4gDQo+IFVtYSBT
aGFua2FyICgyKToNCj4gwqDCoGRybS9pOTE1L2Rpc3BsYXkvdGdsOiBEaXNhYmxlIEZCQyB3aXRo
IFBTUjINCj4gwqDCoFJldmVydCAiZHJtL2k5MTUvZGlzcGxheS9mYmM6IERpc2FibGUgZmJjIGJ5
IGRlZmF1bHQgb24gVEdMIg0KPiANCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2ZiYy5jIHwgMTkgKysrKysrKysrKysrLS0tLS0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmggICAgICAgICAgfCAgMSArDQo+IMKgMiBmaWxlcyBjaGFuZ2VkLCAxMyBp
bnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQ0KPiANCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
