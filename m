Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29F80381480
	for <lists+intel-gfx@lfdr.de>; Sat, 15 May 2021 02:23:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 524316F4C0;
	Sat, 15 May 2021 00:23:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D59116F4C2
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 May 2021 00:23:05 +0000 (UTC)
IronPort-SDR: L5dS9CxfLTADubMirztAyiO64rtZAUnnjLbBMtT3HVwnQWn+scCYKNzcmYytfbyHYknsWd4xfa
 aM0c7CyFwdFQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9984"; a="199942416"
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="199942416"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 17:23:05 -0700
IronPort-SDR: gQ1LGMxZ3rpyrOMkSlK1xx7wODpS0G9h0W3xOfNy4W8aGEOe4UpWh0nznY7nNpUW0aZRFr5+0R
 3mL13LMNQ6KA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="539189406"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP; 14 May 2021 17:23:05 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 14 May 2021 17:23:04 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 14 May 2021 17:23:04 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.013;
 Fri, 14 May 2021 17:23:04 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "hch@lst.de" <hch@lst.de>
Thread-Topic: [PATCH] drm/i915: Fix a possible use of uninitialized variable
 in remap_io_sg()
Thread-Index: AQHXSE9JuZ6ROs4KzUaxofu+R3Rq86ri7oKAgAE4CwA=
Date: Sat, 15 May 2021 00:23:04 +0000
Message-ID: <ab936e8bb197068f658cb68a5dc1796a7ee73405.camel@intel.com>
References: <20210513232841.147989-1-jose.souza@intel.com>
 <20210514054923.GA5323@lst.de>
In-Reply-To: <20210514054923.GA5323@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <101441B8603CCA42A7E325689BD569BD@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix a possible use of
 uninitialized variable in remap_io_sg()
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

T24gRnJpLCAyMDIxLTA1LTE0IGF0IDA3OjQ5ICswMjAwLCBDaHJpc3RvcGggSGVsbHdpZyB3cm90
ZToNCj4gT24gVGh1LCBNYXkgMTMsIDIwMjEgYXQgMDQ6Mjg6NDFQTSAtMDcwMCwgSm9zw6kgUm9i
ZXJ0byBkZSBTb3V6YSB3cm90ZToNCj4gPiBJZiB0aGUgZG8gd2hpbGUgbG9vcCBicmVha3MgaW4g
J2lmICghc2dfZG1hX2xlbihzZ2wpKScgaW4gdGhlIGZpcnN0DQo+ID4gaXRlcmF0aW9uLCBlcnIg
aXMgdW5pbml0aWFsaXplZCBjYXVzaW5nIGEgd3JvbmcgY2FsbCB0byB6YXBfdm1hX3B0ZXMoKS4N
Cj4gDQo+IEJ1dCBzY2F0dGVybGlzdCBtdXN0IGhhdmUgYXQgbGVhc3Qgb25lIHZhbGlkIHNlZ21l
bnQuICBTbyB3aGlsZSB0aGUNCj4gcGF0Y2ggbG9va3Mgb2ssIHBsZWFzZSBjbGVhcmx5IG1hcmsg
dGhhdCB0aGlzIGlzIGEgZmFsc2UgcG9zaXRpdmUgZnJvbQ0KPiB0aGUgc3RhdGljIGNoZWNrZXIg
aW4gdGhlIGNvbW1pdCBsb2cuDQoNCk5vIHN0YXRpYyBjaGVja2VyIG1lbnRpb25lZCBidXQgeWVz
IGl0IHdhcyBjYXVnaHQgYnkgb25lLg0KQW55d2F5cyBiZXR0ZXIgaGF2ZSB0aGlzIGNoYW5nZSBh
bmQgYXZvaWQgcG9zc2libGUgcmVwb3J0cyBmcm9tIG90aGVyIHN0YXRpYyBhbmFseXplcnMuDQoN
CkNhbiBJIGFkZCB5b3VyIFJldmlld2VkLWJ5Pw0KDQp0aGFua3MNCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
