Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9318242CA30
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 21:38:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E813C6EAC2;
	Wed, 13 Oct 2021 19:38:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 549736EAC2
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 19:38:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10136"; a="250941397"
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="250941397"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 12:38:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="527211557"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga008.fm.intel.com with ESMTP; 13 Oct 2021 12:38:11 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 13 Oct 2021 12:38:11 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 13 Oct 2021 12:38:10 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Wed, 13 Oct 2021 12:38:10 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "Zhao, Yakui" <yakui.zhao@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915: Remove memory frequency
 calculation
Thread-Index: AQHXv8zrC12YUY1DuUCwCC8Q6TqE+qvRIEqAgAClAgCAAAJVgIAAA4QA
Date: Wed, 13 Oct 2021 19:38:10 +0000
Message-ID: <cb25d09369e2189098a30090da308eacb05aa5d3.camel@intel.com>
References: <20211013010046.91858-1-jose.souza@intel.com>
 <YWanuyKbmIDWOGZ3@intel.com>
 <e85ffbe78d15f8714e88edcdf4d3112c59ae971f.camel@intel.com>
 <YWc0GwvlY4DQz84Y@intel.com>
In-Reply-To: <YWc0GwvlY4DQz84Y@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <6BC1FCC3854EBA4EAA58ABCCB39C7395@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Remove memory frequency
 calculation
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

T24gV2VkLCAyMDIxLTEwLTEzIGF0IDIyOjMxICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFdlZCwgT2N0IDEzLCAyMDIxIGF0IDA3OjE3OjE0UE0gKzAwMDAsIFNvdXphLCBKb3Nl
IHdyb3RlOg0KPiA+IE9uIFdlZCwgMjAyMS0xMC0xMyBhdCAxMjozMiArMDMwMCwgVmlsbGUgU3ly
asOkbMOkIHdyb3RlOg0KPiA+ID4gT24gVHVlLCBPY3QgMTIsIDIwMjEgYXQgMDY6MDA6NDZQTSAt
MDcwMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3cm90ZToNCj4gPiA+ID4gVGhpcyBtZW1vcnkg
ZnJlcXVlbmN5IGNhbGN1bGF0ZWQgaXMgb25seSB1c2VkIHRvIGNoZWNrIGlmIGl0IGlzIHplcm8s
DQo+ID4gPiA+IHdoYXQgaXMgbm90IHVzZWZ1bCBhcyBpdCB3aWxsIG5ldmVyIGFjdHVhbGx5IGJl
IHplcm8uDQo+ID4gPiA+IA0KPiA+ID4gPiBBbHNvIHRoZSBjYWxjdWxhdGlvbiBpcyB3cm9uZywg
d2Ugc2hvdWxkIGJlIGNoZWNraW5nIG90aGVyIGJpdCB0bw0KPiA+ID4gPiBzZWxlY3QgdGhlIGFw
cHJvcHJpYXRlIGZyZXF1ZW5jeSBtdWx0aXBsaWVyIHdoaWxlIHRoaXMgY29kZSBpcyBzdHVjaw0K
PiA+ID4gPiB3aXRoIGEgZml4ZWQgbXVsdGlwbGllci4NCj4gPiA+IA0KPiA+ID4gSSBkb24ndCB0
aGluayB0aGUgYWx0ZXJuYXRlIHJlZiBjbG9jayB3YXMgZXZlciB1c2VkLg0KPiA+ID4gQXQgbGVh
c3QgSSBkb24ndCByZWNhbGwgZXZlciBzZWVpbmcgaXQuDQo+ID4gPiANCj4gPiA+IFRoZSByZWFs
IHByb2JsZW0gd2l0aCB0aGlzIGlzIHRoYXQgSUlSQyB0aGlzIGlzIGp1c3QgdGhlIGxhc3QNCj4g
PiA+IHJlcXVlc3RlZCBmcmVxdWVuY3kuIFNvIG9uIGEgc3lzdGVtIHdpdGggU0FHViB0aGlzIHdp
bGwNCj4gPiA+IGNoYW5nZSBkeW5hbWljYWxseS4NCj4gPiA+IA0KPiA+ID4gPiANCj4gPiA+ID4g
U28gaGVyZSBkcm9wcGluZyBpdCBhcyB3aG9sZS4NCj4gPiA+IA0KPiA+ID4gV2UgaGF2ZSBhIHNl
Y29uZCBjb3B5IG9mIHRoaXMgaW4gZ2VuNl91cGRhdGVfcmluZ19mcmVxKCkuIFJhdGhlcg0KPiA+
ID4gdGhhbiByZW1vdmluZyBvbmUgYW5kIGxlYXZpbmcgYW5vdGhlciBwb3RlbnRpYWxseSBicm9r
ZW4gb25lIGJlaGluZCB3ZQ0KPiA+ID4gc2hvdWxkIHByb2JhYmx5IGp1c3QgY29uc29saWRhdGUg
b24gYSBzaW5nbGUgaW1wbGVtZW50YXRpb24uDQo+ID4gDQo+ID4gZ2VuNl91cGRhdGVfcmluZ19m
cmVxKCkgaXMgcmVsYXRlZCB0byBHUFUgZnJlcXVlbmN5IG5vdCBtZW1vcnksIGRvbid0IGxvb2sg
cmVsYXRlZCBhdCBhbGwgdG8gbWUuDQo+ID4gDQo+IA0KPiBHUFUsIENQVSBhbmQgbWVtb3J5IGNs
b2NrcyBhcmUgYWxsIG5lZWRlZCB0aGVyZSwgYXQgbGVhc3Qgb24gc29tZQ0KPiBwbGF0Zm9ybXMu
IEkgZm9yZ2V0IHdoaWNoIG9uZXMgZGlkIHdoYXQgZXhhY3RseS4NCg0KQnV0IGlzIGlzIG5vdCBy
ZWxhdGUgd2l0aCByZW1vdmluZyB0aGlzIG1lbW9yeSBmcmVxdWVuY3kgY2FsY3VsYXRpb24sIHNv
IHdlIGNhbiBkcm9wIGl0IHdpdGhvdXQgbGVhdmluZyBhbnkgY29kZSBiZWhpbmQuDQoNCj4gDQoN
Cg==
