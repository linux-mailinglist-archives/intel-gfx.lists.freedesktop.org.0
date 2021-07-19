Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E9683CEAEE
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jul 2021 20:22:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6A2689F33;
	Mon, 19 Jul 2021 18:22:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A140A89F33
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jul 2021 18:22:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10050"; a="211107581"
X-IronPort-AV: E=Sophos;i="5.84,252,1620716400"; d="scan'208";a="211107581"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2021 11:22:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,252,1620716400"; d="scan'208";a="564104112"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 19 Jul 2021 11:22:19 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 19 Jul 2021 11:22:19 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 19 Jul 2021 11:22:18 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.010;
 Mon, 19 Jul 2021 11:22:18 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 24/50] drm/i915/dg2: DG2 uses the same
 sseu limits as XeHP SDV
Thread-Index: AQHXeF6wSB+5yq1N+0m13XXDkweELatLG9WA
Date: Mon, 19 Jul 2021 18:22:18 +0000
Message-ID: <9b7b7795c8f71c1e0e570c963fd38021ccfaf9b3.camel@intel.com>
References: <20210714031540.3539704-1-matthew.d.roper@intel.com>
 <20210714031540.3539704-25-matthew.d.roper@intel.com>
In-Reply-To: <20210714031540.3539704-25-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <186ACBFCC5EF7943A3CD3CE5EE86ED96@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 24/50] drm/i915/dg2: DG2 uses the same
 sseu limits as XeHP SDV
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

T24gVHVlLCAyMDIxLTA3LTEzIGF0IDIwOjE1IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBE
RzIgc3VwcG9ydHMgY29tcHV0ZSBEU1MgYW5kIGhhcyB0aGUgc2FtZSBtYXhpbXVtIG51bWJlciBv
ZiBEU1MgYW5kIEVVDQo+IGFzIFhlSFAgU0RWLg0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0
byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gDQo+IFNpZ25lZC1vZmYtYnk6
IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5jIHwgMiArLQ0KPiAgMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfc3NldS5jDQo+IGluZGV4IDVkM2I4ZGZmNDY0Yy4uZWFmZjIyMWRiNWIwIDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1LmMNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5jDQo+IEBAIC0xNzEsNyArMTcxLDcgQEAg
c3RhdGljIHZvaWQgZ2VuMTJfc3NldV9pbmZvX2luaXQoc3RydWN0IGludGVsX2d0ICpndCkNCj4g
IAkgKiBhY3Jvc3MgdGhlIGVudGlyZSBkZXZpY2UuIFRoZW4gY2FsY3VsYXRlIG91dCB0aGUgRFNT
IGZvciBlYWNoDQo+ICAJICogd29ya2xvYWQgdHlwZSB3aXRoaW4gdGhhdCBzb2Z0d2FyZSBzbGlj
ZS4NCj4gIAkgKi8NCj4gLQlpZiAoSVNfWEVIUFNEVihndC0+aTkxNSkpIHsNCj4gKwlpZiAoSVNf
REcyKGd0LT5pOTE1KSB8fCBJU19YRUhQU0RWKGd0LT5pOTE1KSkgew0KPiAgCQlpbnRlbF9zc2V1
X3NldF9pbmZvKHNzZXUsIDEsIDMyLCAxNik7DQo+ICAJCXNzZXUtPmhhc19jb21wdXRlX2RzcyA9
IDE7DQo+ICAJfSBlbHNlIHsNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
