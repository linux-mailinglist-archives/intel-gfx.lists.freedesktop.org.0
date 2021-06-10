Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED91F3A3269
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 19:44:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40ED26E15E;
	Thu, 10 Jun 2021 17:44:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F3A66E15E
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Jun 2021 17:44:15 +0000 (UTC)
IronPort-SDR: UxwrpF35PXTHQtJYOcnU8vYuF0aPzXIRtAEgPIx/1FiCRuVy+LgPp1nxpwvtGHHWumC4ketXO3
 gfI777cVtd9w==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="192672800"
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="192672800"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 10:44:14 -0700
IronPort-SDR: EfwOkJ/nXEtGprNB6h5AWFpWLDeQAG0dnJ3EM4FiUaQITBBYlhCN2o2t9nBRajADrKeySL+TwN
 +gGNvJPFJ6Uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="486269196"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga002.fm.intel.com with ESMTP; 10 Jun 2021 10:44:13 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 10 Jun 2021 10:44:13 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 10 Jun 2021 10:44:12 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.008;
 Thu, 10 Jun 2021 10:44:12 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v2 4/4] drm/i915/display: Drop FIXME about turn off
 infoframes
Thread-Index: AQHXSRefIIBe/a95zUucXle+Kye526sKUm6AgAJcMICAARn+gIAAXAMA
Date: Thu, 10 Jun 2021 17:44:12 +0000
Message-ID: <57a75282acd88b3613c2f737dde1c0ba529d34c8.camel@intel.com>
References: <20210514232247.144542-1-jose.souza@intel.com>
 <20210514232247.144542-4-jose.souza@intel.com> <YL8btV/81CFi+ytm@intel.com>
 <07ca2b6b6e730531d4387436002cc86608839398.camel@intel.com>
 <YMIDF+fA5GTJ8Bqs@intel.com>
In-Reply-To: <YMIDF+fA5GTJ8Bqs@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <D109F551652E6149988D3876C8455800@intel.com>
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

T24gVGh1LCAyMDIxLTA2LTEwIGF0IDE1OjE4ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFdlZCwgSnVuIDA5LCAyMDIxIGF0IDA3OjI1OjM2UE0gKzAwMDAsIFNvdXphLCBKb3Nl
IHdyb3RlOg0KPiA+IE9uIFR1ZSwgMjAyMS0wNi0wOCBhdCAxMDoyNiArMDMwMCwgVmlsbGUgU3ly
asOkbMOkIHdyb3RlOg0KPiA+ID4gT24gRnJpLCBNYXkgMTQsIDIwMjEgYXQgMDQ6MjI6NDdQTSAt
MDcwMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3cm90ZToNCj4gPiA+ID4gaW50ZWxfZHBfc2V0
X2luZm9mcmFtZXMoKSBjYWxsIGluIGludGVsX2RkaV9wb3N0X2Rpc2FibGVfZHAoKSB3aWxsDQo+
ID4gPiA+IHRha2UgY2FyZSB0byBkaXNhYmxlIGFsbCBlbmFibGVkIGluZm9mcmFtZXMuDQo+ID4g
PiA+IA0KPiA+ID4gPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4NCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8
am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+ID4gPiA+IC0tLQ0KPiA+ID4gPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDEgLQ0KPiA+ID4gPiAgMSBmaWxlIGNoYW5n
ZWQsIDEgZGVsZXRpb24oLSkNCj4gPiA+ID4gDQo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kZGkuYw0KPiA+ID4gPiBpbmRleCA1YmM1NTI4ZjMwOTEuLmQzYmM1YTFh
OTM2YSAxMDA2NDQNCj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kZGkuYw0KPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RkaS5jDQo+ID4gPiA+IEBAIC0yNzYyLDcgKzI3NjIsNiBAQCBzdGF0aWMgdm9pZCBpbnRl
bF9kZGlfcHJlX2VuYWJsZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiA+
ID4gIAkJCQkJY29ubl9zdGF0ZSk7DQo+ID4gPiA+ICANCj4gPiA+ID4gIAkJLyogRklYTUUgcHJl
Y29tcHV0ZSBldmVyeXRoaW5nIHByb3Blcmx5ICovDQo+ID4gPiA+IC0JCS8qIEZJWE1FIGhvdyBk
byB3ZSB0dXJuIGluZm9mcmFtZXMgb2ZmIGFnYWluPyAqLw0KPiA+ID4gDQo+ID4gPiBUaGUgRklY
TUUgd2FzIHRoZXJlIGZvciBMU1BDT04gYW5kIHNob3VsZG4ndCBoYXZlIGJlZW4gcmVtb3ZlZC4N
Cj4gPiA+IE5vIG9uZSBoYXMgeWV0IGZpZ3VyZWQgb3V0IGhvdyB0byBkbyB0aGlzLg0KPiA+IA0K
PiA+IGludGVsX2RkaV9wb3N0X2Rpc2FibGVfZHAoKS0+aW50ZWxfZHBfc2V0X2luZm9mcmFtZXMo
KSB3aWxsIGJlIGV4ZWN1dGVkIGZvciBMU1BDT04sIG9yIGFtIEkgbWlzc2luZyBzb21ldGhpbmc/
DQo+IA0KPiBMU1BDT04gZ2VuZXJhdGVzIGl0cyBvd24gaW5mb2ZyYW1lcywgc28gdHVybmluZyBv
ZmYgdGhlIHZpZGVvIERJUCBkb2VzDQo+IGRpZGRseSBzcXVhdC4NCj4gDQoNCkl0IHdvdWxkIG5v
dCBiZSB0aGUgbHNwY29uIGpvYiB0byBkbyBzbyB3aGVuIERQIC0+IGxzcGNvbiB2aWRlbyBpcyBv
ZmY/DQpBbnl3YXlzIHdpbGwgYmUgc2VuZGluZyB0aGUgcmV2ZXJ0IGluIGEgZmV3IG1pbnV0ZXMs
IHBsZWFzZSByZXZpZXcgdGhhdCBpZiB3ZSByZWFsbHkgbmVlZCB0aGlzIGZpeG1lIGJhY2suDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
