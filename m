Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C613F6CBB
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Aug 2021 02:49:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42D526E0EE;
	Wed, 25 Aug 2021 00:49:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED6F96E0EE
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Aug 2021 00:49:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10086"; a="196996185"
X-IronPort-AV: E=Sophos;i="5.84,349,1620716400"; d="scan'208";a="196996185"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2021 17:49:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,349,1620716400"; d="scan'208";a="473674394"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP; 24 Aug 2021 17:49:26 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 24 Aug 2021 17:49:25 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 24 Aug 2021 17:49:25 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.010;
 Tue, 24 Aug 2021 17:49:25 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "daniel@ffwll.ch" <daniel@ffwll.ch>, "Mun, Gwan-gyeong"
 <gwan-gyeong.mun@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [PATCH 7/8] drm/i915/display/skl+: Drop frontbuffer rendering
 support
Thread-Index: AQHXk8k8VgMfC9hwMkq8GBQkmfZxWat5z+iAgABTJwCAAVNmgIAIbtWA
Date: Wed, 25 Aug 2021 00:49:25 +0000
Message-ID: <e1ac87ec1939ab763b924a3f70f79bdfef14b77d.camel@intel.com>
References: <20210818004216.220279-1-jose.souza@intel.com>
 <20210818004216.220279-8-jose.souza@intel.com> <YR0fWUHZk9/4o33s@intel.com>
 <d00bde0b13b498b6fa141f4353caf168c95c8b4e.camel@intel.com>
 <YR6Bz5m1hAxVeZjA@intel.com>
In-Reply-To: <YR6Bz5m1hAxVeZjA@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <BD03A36965C76846ADEFA07BF84A332E@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 7/8] drm/i915/display/skl+: Drop frontbuffer
 rendering support
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

T24gVGh1LCAyMDIxLTA4LTE5IGF0IDE5OjA3ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFdlZCwgQXVnIDE4LCAyMDIxIGF0IDA3OjQ4OjAzUE0gKzAwMDAsIFNvdXphLCBKb3Nl
IHdyb3RlOg0KPiA+IE9uIFdlZCwgMjAyMS0wOC0xOCBhdCAxNzo1NSArMDMwMCwgVmlsbGUgU3ly
asOkbMOkIHdyb3RlOg0KPiA+ID4gT24gVHVlLCBBdWcgMTcsIDIwMjEgYXQgMDU6NDI6MTVQTSAt
MDcwMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3cm90ZToNCj4gPiA+ID4gQnkgbm93IGFsbCB0
aGUgdXNlcnNwYWNlIGFwcGxpY2F0aW9ucyBzaG91bGQgaGF2ZSBtaWdyYXRlZCB0byBhdG9taWMN
Cj4gPiA+ID4gb3IgYXQgbGVhc3QgYmUgY2FsbGluZyBEUk1fSU9DVExfTU9ERV9ESVJUWUZCLg0K
PiA+ID4gPiANCj4gPiA+ID4gV2l0aCB0aGF0IHdlIGNhbiBraWxsIGZyb250YnVmZmVyIHJlbmRl
cmluZyBzdXBwb3J0IGluIGk5MTUgZm9yDQo+ID4gPiA+IG1vZGVybiBwbGF0Zm9ybXMuDQo+ID4g
PiA+IA0KPiA+ID4gPiBTbyBoZXJlIGNvbnZlcnRpbmcgbGVnYWN5IEFQSXMgaW50byBhdG9taWMg
Y29tbWl0cyBzbyBpdCBjYW4gYmUNCj4gPiA+ID4gcHJvcGVybHkgaGFuZGxlZCBieSBkcml2ZXIg
aTkxNS4NCj4gPiA+ID4gDQo+ID4gPiA+IFNldmVyYWwgSUdUIHRlc3RzIHdpbGwgZmFpbCB3aXRo
IHRoaXMgY2hhbmdlcywgYmVjYXVzZSBzb21lIHRlc3RzDQo+ID4gPiA+IHdlcmUgc3RyZXNzaW5n
IHRob3NlIGZyb250YnVmZmVyIHJlbmRlcmluZyBzY2VuYXJpb3MgdGhhdCBubyB1c2Vyc3BhY2UN
Cj4gPiA+ID4gc2hvdWxkIGJlIHVzaW5nIGJ5IG5vdywgZml4ZXMgdG8gSUdUIHNob3VsZCBiZSBz
ZW50IHNvb24uDQo+ID4gPiANCj4gPiA+IEJsb2NraW5nIGF0b21pYyBjb21taXRzIGluc3RlYWQg
b2YgdGhlIGN1cnJlbnQgbGlnaHR3ZWlnaHQgZnJvbnRidWZmZXINCj4gPiA+IGludGVyZmFjZSBz
b3VuZHMgbGlrZSBhIHRlcnJpYmxlIHBsYW4uIEhvdyB1bnVzYWJsZSBpcyBYIHdpdGggdGhpcw0K
PiA+ID4gYXBwcm9hY2g/DQo+ID4gDQo+ID4gMTAwJSB1c2FibGUsIGhhZCBubyBpc3N1ZXMgd2hl
biBydW5uaW5nIFggaW4gVEdMIGFuZCBBREwtUC4NCj4gPiBBZGRlZCBhIGRlYnVnIG1lc3NhZ2Ug
aW4gaW50ZWxfdXNlcl9mcmFtZWJ1ZmZlcl9kaXJ0eSgpIGFuZCBYIGlzIG5vdCBldmVuIHVzaW5n
IGZyb250YnVmZmVyIHJlbmRlcmluZyBhdCBhbGwuDQo+IA0KPiBUdXJuIG9mZiB5b3VyIGNvbXBv
c2l0b3IgaWYgeW91IHdhbnQgdG8gdGVzdCBmcm9udCBidWZmZXIgcmVuZGVyaW5nLg0KDQpXb3Jr
ZWQgZmluZSBvbiBQbGFzbWEgd2l0aCBhIDRLIHBhbmVsLCB3YXMgbm90IGFibGUgdG8gZmluZCBo
b3cgdG8gZG8gdGhhdCBpbiBHbm9tZS4NCg0KDQo+IA0KDQo=
