Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F6B383AAA
	for <lists+intel-gfx@lfdr.de>; Mon, 17 May 2021 19:03:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 591B889E0D;
	Mon, 17 May 2021 17:03:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DFC489E0D
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 May 2021 17:03:21 +0000 (UTC)
IronPort-SDR: lnAKe89tkXTSdRyFgWOAltqyHnl18gtezOMz/wnaQtSZ6Rb78ZyKs5WYyFA8DvPyv0F7nQa1cn
 jPFqFz5Q6oig==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="198564700"
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="198564700"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2021 10:02:41 -0700
IronPort-SDR: ebQsSM7m+CQdkOsqFGjzWbdXGIOtHOYLMnoMfqW+lJusnaSINvXo+NJPi4lxBxQi0Gg1njM4rU
 o52ZM38pAFNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="472490371"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 17 May 2021 10:02:40 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 17 May 2021 10:02:40 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 17 May 2021 10:02:40 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.008;
 Mon, 17 May 2021 10:02:40 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v4 23/23] drm/i915/adl_p: Update memory bandwidth
 parameters
Thread-Index: AQHXSTfl1IjdtchjiUWC3j1SSdv0p6roYLKA
Date: Mon, 17 May 2021 17:02:39 +0000
Message-ID: <a1638fca7f98c6604656c0d747218ab0c47a3614.camel@intel.com>
References: <20210515031035.2561658-1-matthew.d.roper@intel.com>
 <20210515031035.2561658-24-matthew.d.roper@intel.com>
In-Reply-To: <20210515031035.2561658-24-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <CE528BD63AF3B744B30E18E4DF32A780@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v4 23/23] drm/i915/adl_p: Update memory
 bandwidth parameters
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

T24gRnJpLCAyMDIxLTA1LTE0IGF0IDIwOjEwIC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBG
cm9tOiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+DQo+IA0KPiBB
RExfUCBoYXMgc2FtZSBtZW1vcnkgY2hhcmFjdGVyaXN0aWNzIGFzIEFETF9TIHBsYXRmb3JtLg0K
PiANCj4gQnNwZWM6IDY0NjMxDQo+IA0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBT
b3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCg0KPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBT
b3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IENjOiBDbGludCBUYXlsb3IgPGNsaW50b24u
YS50YXlsb3JAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBBbnVzaGEgU3JpdmF0c2EgPGFu
dXNoYS5zcml2YXRzYUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IENsaW50b24gVGF5bG9y
IDxDbGludG9uLkEuVGF5bG9yQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogTWF0dCBSb3Bl
ciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2J3LmMgfCAyICstDQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2J3LmMNCj4gaW5kZXggYTM1NDM1MDgzYjYwLi4zYTFiYTUyMjY2YTcgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4gQEAgLTI2Nyw3ICsyNjcs
NyBAQCB2b2lkIGludGVsX2J3X2luaXRfaHcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2KQ0KPiAgCWlmICghSEFTX0RJU1BMQVkoZGV2X3ByaXYpKQ0KPiAgCQlyZXR1cm47DQo+ICAN
Cj4gLQlpZiAoSVNfQUxERVJMQUtFX1MoZGV2X3ByaXYpKQ0KPiArCWlmIChJU19BTERFUkxBS0Vf
UyhkZXZfcHJpdikgfHwgSVNfQUxERVJMQUtFX1AoZGV2X3ByaXYpKQ0KPiAgCQlpY2xfZ2V0X2J3
X2luZm8oZGV2X3ByaXYsICZhZGxzX3NhX2luZm8pOw0KPiAgCWVsc2UgaWYgKElTX1JPQ0tFVExB
S0UoZGV2X3ByaXYpKQ0KPiAgCQlpY2xfZ2V0X2J3X2luZm8oZGV2X3ByaXYsICZya2xfc2FfaW5m
byk7DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
