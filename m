Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A496B26146C
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Sep 2020 18:21:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3D7389FE8;
	Tue,  8 Sep 2020 16:21:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A7AF89FE8
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Sep 2020 16:21:21 +0000 (UTC)
IronPort-SDR: sMhmfgn2xVYZxkrJPci1UE9OFEnaUi/BgRGDKwDgd/JaqazFSi/xC+8/3tfrYm6bT4FBcN2kNH
 rrDOfm0tV0yg==
X-IronPort-AV: E=McAfee;i="6000,8403,9738"; a="145889988"
X-IronPort-AV: E=Sophos;i="5.76,406,1592895600"; d="scan'208";a="145889988"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2020 09:21:20 -0700
IronPort-SDR: r364adBamUYIIqE8Y4cSO8FHWKYujGmAG7sQ3lpP0TZSR9b0BX7sVfVKDvpGtQsfrph/k35NKS
 wNenu3vmCqdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,406,1592895600"; d="scan'208";a="284564468"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP; 08 Sep 2020 09:21:20 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 8 Sep 2020 09:21:19 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 8 Sep 2020 09:21:19 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Tue, 8 Sep 2020 09:21:19 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [01/12] drm/i915: Add more AUX CHs to the enum
Thread-Index: AQHWhfmdmZXsh1uDLEO+F+RHO/3KBalfYmAA
Date: Tue, 8 Sep 2020 16:21:19 +0000
Message-ID: <0567725afb764cdc6108b1777b7ce6556b84fbd8.camel@intel.com>
References: <20200630215601.28557-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20200630215601.28557-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <CB76484ECFA1E64E8CF65FE702E9A969@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [01/12] drm/i915: Add more AUX CHs to the enum
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

T24gV2VkLCAyMDIwLTA3LTAxIGF0IDAwOjU1ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPA0KPiB2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bQ0KPiA+DQo+IA0KPiBXZSBuZWVkIHRvIGdvIHVwIHRvIEFVWF9DSF9JIChha2EuIEFVWCBDSCBV
U0JDNikgdGhlc2UgZGF5cy4NCj4gDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNv
dXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJq
w6Rsw6QgPA0KPiB2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbQ0KPiA+DQo+IC0tLQ0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmggfCAyICsrDQo+ICAx
IGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmggYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaA0KPiBpbmRleCBmNjgwMDdmZjhhMTMuLjViNzM2
ODgzY2QxMSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmgNCj4gQEAgLTI4Miw2ICsyODIsOCBAQCBlbnVtIGF1eF9jaCB7DQo+ICAJQVVYX0NI
X0UsIC8qIElDTCsgKi8NCj4gIAlBVVhfQ0hfRiwNCj4gIAlBVVhfQ0hfRywNCj4gKwlBVVhfQ0hf
SCwNCj4gKwlBVVhfQ0hfSSwNCj4gIH07DQo+ICANCj4gICNkZWZpbmUgYXV4X2NoX25hbWUoYSkg
KChhKSArICdBJykNCj4gDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
