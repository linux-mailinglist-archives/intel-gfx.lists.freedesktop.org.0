Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D182CEB89
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 11:00:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3BA26E138;
	Fri,  4 Dec 2020 10:00:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF5396E138
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Dec 2020 10:00:29 +0000 (UTC)
IronPort-SDR: qyWJ899cxC0r8L7+Cd6Nw8yRVQfeIOSnxaT+sUoKo2nqR7vXPYeWbEwsg7/tYIt17lhdcsfLoF
 sbxxNEP25Ybw==
X-IronPort-AV: E=McAfee;i="6000,8403,9824"; a="237470382"
X-IronPort-AV: E=Sophos;i="5.78,392,1599548400"; d="scan'208";a="237470382"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 02:00:26 -0800
IronPort-SDR: PY7MUzqw6EdX5/Pi7pNDLf6LZOi3odE6JHMeoCqhYyPsFNXFDfO+5jUr2sYuxtWtxB9TqsV114
 b47duP6Zvedg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,392,1599548400"; d="scan'208";a="373878143"
Received: from irsmsx606.ger.corp.intel.com ([163.33.146.139])
 by orsmga007.jf.intel.com with ESMTP; 04 Dec 2020 02:00:26 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 IRSMSX606.ger.corp.intel.com (163.33.146.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 4 Dec 2020 10:00:25 +0000
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.1713.004;
 Fri, 4 Dec 2020 10:00:25 +0000
From: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Navare, Manasi D" <manasi.d.navare@intel.com>
Thread-Topic: [PATCH v3 4/9] drm/i915/display/dp: Do not enable PSR if VRR is
 enabled
Thread-Index: AQHWyc8q6SU//XzeNEGPlmJQRwnDG6nmtN6A
Date: Fri, 4 Dec 2020 10:00:25 +0000
Message-ID: <26b6ca252df2cdc8e791159ccda8a0828d66138f.camel@intel.com>
References: <20201203235358.18041-1-manasi.d.navare@intel.com>
 <20201203235358.18041-4-manasi.d.navare@intel.com>
In-Reply-To: <20201203235358.18041-4-manasi.d.navare@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-ID: <E2C93D6C72C9A142A2B5996CF6FBAAEB@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 4/9] drm/i915/display/dp: Do not enable
 PSR if VRR is enabled
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

T24gVGh1LCAyMDIwLTEyLTAzIGF0IDE1OjUzIC0wODAwLCBNYW5hc2kgTmF2YXJlIHdyb3RlOg0K
PiBFdmVuIHRob3VnaCBvdXIgSFcgc3VwcG9ydHMgUFNSICsgVlJSLCB0aGUgYXZhaWxhYmxlIHBh
bmVscw0KPiBkbyBub3Qgd29yayByZWxpYWJseSB3aXRoIFBTUiBhbmQgVlJSIHRvZ2V0aGVyLiBT
byBpZiB1c2VyDQo+IHJlcXVlc3RlZCBWUlIgYW5kIGlzIHN1cHBvcnRlZCBieSBIVyBlbmFibGUg
dGhhdCBhbmQgZG8gbm90DQo+IGVuYWJsZSBQU1IgaW4gdGhhdCBjYXNlLg0KPiANCj4gQ2M6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IENjOiBHd2Fu
LWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+DQo+IENjOiBJbXJlIERlYWsg
PGltcmUuZGVha0BpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IE1hbmFzaSBOYXZhcmUgPG1h
bmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYyB8IDcgKysrKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDcgaW5z
ZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jDQo+IGluZGV4IGQ5YTM5NWM0ODZkMy4uNGJiZDkyMTM1NjUxIDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTgxMSw2ICs4MTEsMTMgQEAg
dm9pZCBpbnRlbF9wc3JfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9k
cCwNCj4gIAkJJmNydGNfc3RhdGUtPmh3LmFkanVzdGVkX21vZGU7DQo+ICAJaW50IHBzcl9zZXR1
cF90aW1lOw0KPiAgDQo+ICsJLyoNCj4gKwkgKiBDdXJyZW50IFBTUiBwYW5lbHMgZG9udCB3b3Jr
IHJlbGlhYmx5IHdpdGggVlJSIGVuYWJsZWQNCnR5cG8gaW4gY29tbWVudHM6IGRvbnQgLT4gZG9u
J3QNCj4gKwkgKiBTbyBpZiBWUlIgaXMgZW5hYmxlZCwgZG8gbm90IGVuYWJsZSBQU1IuDQo+ICsJ
ICovDQo+ICsJaWYgKGNydGNfc3RhdGUtPnZyci5lbmFibGUpDQo+ICsJCXJldHVybjsNCj4gKw0K
PiAgCWlmICghQ0FOX1BTUihkZXZfcHJpdikpDQo+ICAJCXJldHVybjsNCj4gIA0KUmV2aWV3ZWQt
Ynk6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcubXVuQGludGVsLmNvbT4NCg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
