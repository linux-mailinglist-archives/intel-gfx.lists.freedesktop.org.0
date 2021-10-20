Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C3BC4353D5
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Oct 2021 21:30:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B426F89C85;
	Wed, 20 Oct 2021 19:30:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EFF689C85
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Oct 2021 19:30:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="228815942"
X-IronPort-AV: E=Sophos;i="5.87,167,1631602800"; d="scan'208";a="228815942"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2021 12:30:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,167,1631602800"; d="scan'208";a="491494948"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP; 20 Oct 2021 12:30:00 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 20 Oct 2021 12:29:59 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 20 Oct 2021 12:29:59 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Wed, 20 Oct 2021 12:29:59 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
CC: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "Atwood, Matthew S"
 <matthew.s.atwood@intel.com>, "daniel.vetter@ffwll.ch"
 <daniel.vetter@ffwll.ch>, "tvrtko.ursulin@linux.intel.com"
 <tvrtko.ursulin@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/3] drm/i915: Add struct to hold IP version
Thread-Index: AQHXxUfp90zJKsmfc0KKIjZpNBUnJqvcGbGAgACkkIA=
Date: Wed, 20 Oct 2021 19:29:59 +0000
Message-ID: <74cc5b4a8ebe2a5f7ae01994c6782124328a2e0e.camel@intel.com>
References: <20211020002353.193893-1-jose.souza@intel.com>
 <87tuhcni3k.fsf@intel.com>
In-Reply-To: <87tuhcni3k.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <2D65AD88FA3C064C950C852708ED1BE8@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Add struct to hold IP version
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIxLTEwLTIwIGF0IDEyOjQ3ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gVHVlLCAxOSBPY3QgMjAyMSwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+IHdyb3RlOg0KPiA+IFRoZSBjb25zdGFudCBwbGF0Zm9ybSBkaXNwbGF5IHZlcnNp
b24gaXMgbm90IHVzaW5nIHRoaXMgbmV3IHN0cnVjdCBidXQNCj4gPiB0aGUgcnVudGltZSB2YXJp
YW50IHdpbGwgZGVmaW5pdGVseSB1c2UgaXQuDQo+IA0KPiBDYzogU29tZSBtb3JlIGZvbGtzIHRv
IGhpamFjayB0aGlzIHRocmVhZC4gU29ycnkhIDspDQo+IA0KPiBXZSBhZGRlZCBydW50aW1lIGlu
Zm8gdG8gaTkxNSwgYmVjYXVzZSB3ZSBoYWQgdGhpcyBpZGVhIGFuZCBnb2FsIG9mDQo+IHR1cm5p
bmcgdGhlIGRldmljZSBpbmZvIHRvIGEgdHJ1bHkgY29uc3QgcG9pbnRlciB0byB0aGUgaW5mbyBz
dHJ1Y3R1cmVzDQo+IGluIGk5MTVfcGNpLmMgdGhhdCBhcmUgc3RvcmVkIGluIHJvZGF0YS4gVGhl
IGlkZWEgd2FzIHRoYXQgd2UnbGwgaGF2ZSBhDQo+IGNvbXBsZXRlIHNwbGl0IG9mIG11dGFibGUg
YW5kIGltbXV0YWJsZSBkZXZpY2UgZGF0YSwgd2l0aCBhbGwgdGhlDQo+IG11dGFibGUgZGF0YSBp
biBydW50aW1lIGluZm8uDQo+IA0KPiBBbGFzLCB3ZSBuZXZlciBnb3QgdGhlcmUuIE1vcmUgYW5k
IG1vcmUgZGF0YSB0aGF0IHdhcyBtb3N0bHkgY29uc3QgYnV0DQo+IHNvbWV0aW1lcyBuZWVkZWQg
dHdlYWtpbmcga2VwdCBwaWxpbmcgdXAuIG1rd3JpdGVfZGV2aWNlX2luZm8oKSB3YXMNCj4gc3Vw
cG9zZWQgdG8gYmUgYSBjbHVlIG5vdCB0byBtb2RpZnkgZGV2aWNlIGluZm8gcnVudGltZSwgYnV0
IGluc3RlYWQgaXQNCj4gcHJvbGlmZXJhdGVkLiBOb3cgd2UgaGF2ZSBwbGFjZXMgbGlrZSBpbnRl
bF9mYmNfaW5pdCgpIGRpc2FibGluZyBGQkMNCj4gdGhyb3VnaCB0aGF0LiBCdXQgbW9zdCBpbXBv
cnRhbnRseSwgd2UgaGF2ZSBmdXNpbmcgdGhhdCBjb25zaWRlcmFibHkNCj4gY2hhbmdlcyB0aGUg
ZGV2aWNlIGluZm8sIGFuZCB0aGUgY29weWluZyBhbGwgb2YgdGhhdCBkYXRhIG92ZXIgdG8NCj4g
cnVudGltZSBpbmZvIHByb2JhYmx5IGlzbid0IHdvcnRoIGl0Lg0KPiANCj4gU2hvdWxkIHdlIGp1
c3QgYWNrbm93bGVkZ2UgdGhhdCB0aGUgcnVudGltZSBpbmZvIGlzIHVzZWxlc3MsIGFuZCBtb3Zl
DQo+IHNvbWUgb2YgdGhhdCBkYXRhIHRvIGludGVsX2RldmljZV9pbmZvIGFuZCBzb21lIG9mIGl0
IGVsc2V3aGVyZSBpbiBpOTE1Pw0KDQpXaXRoIG5ld2VyIHBsYXRmb3JtcyBnZXR0aW5nIG1vcmUg
YW5kIG1vcmUgbW9kdWxhciwgSSBiZWxpZXZlIHdlIHdpbGwgbmVlZCB0byBzdG9yZSBldmVuIG1v
cmUgbXV0YWJsZSBwbGF0Zm9ybSBpbmZvcm1hdGlvbi4NCg0KSW4gbXkgb3BpbmlvbiBhIHNlcGFy
YXRpb24gb2YgaW1tdXRhYmxlIGFuZCBtdXRhYmxlIHBsYXRmb3JtIGluZm9ybWF0aW9uIGlzIGNs
ZWFuZXIgYW5kIGVhc2llciB0byBtYWludGFpbi4NCg0KPiANCj4gDQo+IEJSLA0KPiBKYW5pLg0K
PiANCg0K
