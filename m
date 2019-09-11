Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4296CB0790
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 06:14:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C91A16E0CD;
	Thu, 12 Sep 2019 04:12:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15A246E0D9
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 19:03:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 12:03:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,494,1559545200"; d="scan'208";a="185906938"
Received: from irsmsx152.ger.corp.intel.com ([163.33.192.66])
 by fmsmga007.fm.intel.com with ESMTP; 11 Sep 2019 12:03:07 -0700
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.184]) by
 IRSMSX152.ger.corp.intel.com ([169.254.6.150]) with mapi id 14.03.0439.000;
 Wed, 11 Sep 2019 20:03:06 +0100
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>, Ville Syrjala <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 2/4] drm/i915: Fix CD2X pipe select masking
 during cdclk sanitation
Thread-Index: AQHVaKVBZbom4GA3ckyxoIvmE6UBpqcmgVAAgAACPQCAAFIeMA==
Date: Wed, 11 Sep 2019 19:03:05 +0000
Message-ID: <43D4F724E12AB6478FC1572B3FBE89D07690B521@IRSMSX106.ger.corp.intel.com>
References: <20190911133129.27466-1-ville.syrjala@linux.intel.com>
 <20190911133129.27466-2-ville.syrjala@linux.intel.com>
 <20190911150044.GB27222@mdroper-desk.amr.corp.intel.com>
 <156821452494.3439.2583229701500957132@skylake-alporthouse-com>
In-Reply-To: <156821452494.3439.2583229701500957132@skylake-alporthouse-com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZmY5YTIyMTEtMzIzNi00NGQ5LTgyMmMtOTExZmEzMzBmYjVhIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoieUVjdUFXWmZ6WXZ2T0FkdmZSWDF1YVwva1dORHVGNjRZYUdialE4WUVFbTJtYXVVbXprZlE3N0FISjVzRXFPVEgifQ==
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Fix CD2X pipe select masking
 during cdclk sanitation
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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

SEksIA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLWdmeCBb
bWFpbHRvOmludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZ10gT24gQmVoYWxm
IE9mIENocmlzDQo+IFdpbHNvbg0KPiBTZW50OiBrZXNraXZpaWtrbyAxMS4gc3l5c2t1dXRhIDIw
MTkgMTguMDkNCj4gVG86IFJvcGVyLCBNYXR0aGV3IEQgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5j
b20+OyBWaWxsZSBTeXJqYWxhDQo+IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4g
Q2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUmU6IFtJbnRl
bC1nZnhdIFtQQVRDSCAyLzRdIGRybS9pOTE1OiBGaXggQ0QyWCBwaXBlIHNlbGVjdCBtYXNraW5n
IGR1cmluZw0KPiBjZGNsayBzYW5pdGF0aW9uDQo+IA0KPiBRdW90aW5nIE1hdHQgUm9wZXIgKDIw
MTktMDktMTEgMTY6MDA6NDQpDQo+ID4gSSdtIGNvbmZ1c2VkIHdoeSBwcmUtbWVyZ2UgQ0kgZmxh
Z2dlZCB0aGUgcmVzdWx0cyBhcyBhIHN1Y2Nlc3MgaWYgVEdMDQo+ID4gd2FzIGhpdHRpbmcgdGhp
cz8NCj4gDQo+IFdlJ3ZlIG9ubHkganVzdCAoRnJpKSBnb3QgQ0kncyBUaWdlcmxha2Ugc3Vydml2
aW5nIGJvb3QsIHNvIGEgc2Vjb25kIGZhaWx1cmUgZHVyaW5nIGJvb3QNCj4gd291bGQgaGF2ZSBi
ZWVuIG1pc3NlZC4gRm9yIHRoZSBzdW1tYXJ5IHJlcG9ydCwgVGlnZXJsYWtlIGlzIGN1cnJlbnRs
eSBzdXBwcmVzc2VkDQo+IGFzIGl0IGlzIG5vdCB5ZXQgcHJvdmVuIGl0c2VsZiBhcyBiZWluZyBh
IHN0YWJsZSByZXN1bHQuIChXaGljaCBpcyBhIGJpdCBvZiBhIG51aXNhbmNlIGFzDQo+IHlvdSBo
YXZlIHRvIHJlbWluZCB5b3Vyc2VsZiB0byBhY3R1YWxseSBjaGVjayB0aGUgZGV0YWlscy4pIC1D
aHJpcw0KRXhhY3RseS4gDQoNCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18NCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdA0KPiBJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnDQo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
