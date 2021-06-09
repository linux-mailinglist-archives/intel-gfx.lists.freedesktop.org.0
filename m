Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F8A3A1DAD
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 21:25:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE4E66EAE1;
	Wed,  9 Jun 2021 19:25:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F04D86EAE1
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 19:25:38 +0000 (UTC)
IronPort-SDR: 2N60TPBYWh1NpqWt/c8/Ny5jpuNGRfqSG1VDVtMVM0nmiFAocKCokzI5WMbBfRaTJBzglq8eVx
 b8MifSa5QDrA==
X-IronPort-AV: E=McAfee;i="6200,9189,10010"; a="202125135"
X-IronPort-AV: E=Sophos;i="5.83,261,1616482800"; d="scan'208";a="202125135"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 12:25:38 -0700
IronPort-SDR: VlLmEiljn1OOpSoBJg/jYtYfFzmv9MbR0lr5eLZ1k+wfTxctv+is78XHimwU/vm/KZJMHUh536
 aYDnhakMCZyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,261,1616482800"; d="scan'208";a="419389838"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 09 Jun 2021 12:25:37 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 9 Jun 2021 12:25:37 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 9 Jun 2021 12:25:36 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.008;
 Wed, 9 Jun 2021 12:25:36 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v2 4/4] drm/i915/display: Drop FIXME about turn off
 infoframes
Thread-Index: AQHXSRefIIBe/a95zUucXle+Kye526sKUm6AgAJcMIA=
Date: Wed, 9 Jun 2021 19:25:36 +0000
Message-ID: <07ca2b6b6e730531d4387436002cc86608839398.camel@intel.com>
References: <20210514232247.144542-1-jose.souza@intel.com>
 <20210514232247.144542-4-jose.souza@intel.com> <YL8btV/81CFi+ytm@intel.com>
In-Reply-To: <YL8btV/81CFi+ytm@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <F30088D927997B44AD8CD76D709FF250@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915/display: Drop FIXME about
 turn off infoframes
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

T24gVHVlLCAyMDIxLTA2LTA4IGF0IDEwOjI2ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIEZyaSwgTWF5IDE0LCAyMDIxIGF0IDA0OjIyOjQ3UE0gLTA3MDAsIEpvc8OpIFJvYmVy
dG8gZGUgU291emEgd3JvdGU6DQo+ID4gaW50ZWxfZHBfc2V0X2luZm9mcmFtZXMoKSBjYWxsIGlu
IGludGVsX2RkaV9wb3N0X2Rpc2FibGVfZHAoKSB3aWxsDQo+ID4gdGFrZSBjYXJlIHRvIGRpc2Fi
bGUgYWxsIGVuYWJsZWQgaW5mb2ZyYW1lcy4NCj4gPiANCj4gPiBDYzogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PD
qSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDEgLQ0KPiA+ICAxIGZp
bGUgY2hhbmdlZCwgMSBkZWxldGlvbigtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kZGkuYw0KPiA+IGluZGV4IDViYzU1MjhmMzA5MS4uZDNiYzVhMWE5MzZh
IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRp
LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+
ID4gQEAgLTI3NjIsNyArMjc2Miw2IEBAIHN0YXRpYyB2b2lkIGludGVsX2RkaV9wcmVfZW5hYmxl
KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+ICAJCQkJCWNvbm5fc3RhdGUp
Ow0KPiA+ICANCj4gPiAgCQkvKiBGSVhNRSBwcmVjb21wdXRlIGV2ZXJ5dGhpbmcgcHJvcGVybHkg
Ki8NCj4gPiAtCQkvKiBGSVhNRSBob3cgZG8gd2UgdHVybiBpbmZvZnJhbWVzIG9mZiBhZ2Fpbj8g
Ki8NCj4gDQo+IFRoZSBGSVhNRSB3YXMgdGhlcmUgZm9yIExTUENPTiBhbmQgc2hvdWxkbid0IGhh
dmUgYmVlbiByZW1vdmVkLg0KPiBObyBvbmUgaGFzIHlldCBmaWd1cmVkIG91dCBob3cgdG8gZG8g
dGhpcy4NCg0KaW50ZWxfZGRpX3Bvc3RfZGlzYWJsZV9kcCgpLT5pbnRlbF9kcF9zZXRfaW5mb2Zy
YW1lcygpIHdpbGwgYmUgZXhlY3V0ZWQgZm9yIExTUENPTiwgb3IgYW0gSSBtaXNzaW5nIHNvbWV0
aGluZz8NCg0KPiANCj4gPiAgCQlpZiAoZGlnX3BvcnQtPmxzcGNvbi5hY3RpdmUgJiYgZGlnX3Bv
cnQtPmRwLmhhc19oZG1pX3NpbmspDQo+ID4gIAkJCWRpZ19wb3J0LT5zZXRfaW5mb2ZyYW1lcyhl
bmNvZGVyLCB0cnVlLCBjcnRjX3N0YXRlLA0KPiA+ICAJCQkJCQkgY29ubl9zdGF0ZSk7DQo+ID4g
LS0gDQo+ID4gMi4zMS4xDQo+IA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
