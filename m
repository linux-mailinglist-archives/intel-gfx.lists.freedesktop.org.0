Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 936C036C913
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Apr 2021 18:10:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6E736E0B6;
	Tue, 27 Apr 2021 16:10:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1278A6E0B6
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Apr 2021 16:10:14 +0000 (UTC)
IronPort-SDR: KB4TlNSvHADpBnR+ErezYP/PeV1wCc/4ncLGKpYkqzyBLcDM0ZqKcGsThA7L7fqdDehuSEfbDr
 qiuXCcI9GJoQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9967"; a="193353978"
X-IronPort-AV: E=Sophos;i="5.82,254,1613462400"; d="scan'208";a="193353978"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2021 09:09:56 -0700
IronPort-SDR: RF0Kg3uTPm+T0UbPXlOlbKvbVUwkmIpKiWMayObWuF14iIP8rIWCgR5qN5tcpur2VfSqir5KLL
 xU3sgVev4zCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,254,1613462400"; d="scan'208";a="393097201"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 27 Apr 2021 09:09:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 27 Apr 2021 09:09:55 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 27 Apr 2021 09:09:55 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.013;
 Tue, 27 Apr 2021 09:09:55 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Stop using crtc->index as the pipe
Thread-Index: AQHXOs3dar4ltTjQUUqD9bszuu/wVarH8xwAgAAgWwCAAGCUAIAAjAMA
Date: Tue, 27 Apr 2021 16:09:55 +0000
Message-ID: <158580ee430e108e5f0fb0e82361023cb2a2bc2c.camel@intel.com>
References: <20210426185612.13223-1-ville.syrjala@linux.intel.com>
 <1eb44e061b1aa1d6bd2b814d5a4e5520b7bf21db.camel@intel.com>
 <YIdxhuyJ2cqxA+DX@intel.com> <877dko5fn9.fsf@intel.com>
In-Reply-To: <877dko5fn9.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <88CF0AF028E04243A1692C5C00382248@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Stop using crtc->index as the pipe
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

T24gVHVlLCAyMDIxLTA0LTI3IGF0IDEwOjUxICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gVHVlLCAyNyBBcHIgMjAyMSwgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6DQo+ID4gT24gVHVlLCBBcHIgMjcsIDIwMjEgYXQgMTI6MDc6MjFB
TSArMDAwMCwgU291emEsIEpvc2Ugd3JvdGU6DQo+ID4gPiBPbiBNb24sIDIwMjEtMDQtMjYgYXQg
MjE6NTYgKzAzMDAsIFZpbGxlIFN5cmphbGEgd3JvdGU6DQo+ID4gPiA+IEZyb206IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4gPiA+IA0KPiA+ID4g
PiBUaGUgcGlwZSBjcmMgY29kZSBzbGlwcGVkIHRoZW91Z2ggdGhlIG5ldCB3aGVuIHdlIHRyaWVk
IHRvDQo+ID4gPiA+IGVsaW1pbmF0ZSBhbGwgY3J0Yy0+aW5kZXg9PXBpcGUgYWJ1c2VzLiBSZW1l
ZHkgdGhhdC4NCj4gPiA+ID4gDQo+ID4gPiA+IEFuZCB3aGlsZSBhdCBpdCBnZXQgcmlkIG9mIHRo
b3NlIG5hc3R5IGludGVsX2NydGMrZHJtX2NydGMNCj4gPiA+ID4gcG9pbnRlciBhbGlhc2VzLg0K
PiA+ID4gDQo+ID4gPiBpbnRlbF9jcnRjIGlzIGJyb2FkbHkgdXNlZCwNCj4gPiANCj4gPiBOb3Qg
YW55bW9yZS4gV2UndmUgY2xlYW5lZCB1cCBhbG1vc3QgYWxsIG9mIGl0LiBMb29rcyBsaWtlIG9u
bHkgfjQwIGxlZnQNCj4gPiB2cy4gfjYwMCB0aGUgb3RoZXIgbmFtZS4gUHJvYmFibHkgYSBnb29k
IHRpbWUgdG8gY2xlYW4gdXAgdGhlIHJlc3QNCj4gPiBmaW5hbGx5Lg0KPiANCj4gQWNrLg0KPiAN
Cj4gPiANCj4gPiA+IGFsc28gd2UgaGF2ZSB0aGUgc2FtZSBmb3Igb3RoZXIgc3RydWN0cyBsaWtl
IGludGVsX2Nvbm5lY3RvciwgaW4gbXkgb3B0aW9uIHRoYXQgaXMgYmV0dGVyIHRoYW4gX2NydGMg
eCBjcnRjLg0KPiA+IA0KPiA+IFRoZSBfY3J0YyBpcyBleHBsaWNpdGx5IHVnbHkgdG8gbWFrZSBz
dXJlIHBlb3BsZSBsZWF2ZSBpdCB3ZWxsDQo+ID4gYWxvbmUuIE90aGVyd2lzZSB3ZSBjYW4gbmV2
ZXIgZ2V0IHJpZCBvZiB0aGVzZSBob3JyaWJsZSBhbGlhc2luZw0KPiA+IHBvaW50ZXJzLiBJdCBz
aG91bGQgb25seSBtYWtlIGFuIGFwcGVhcmFuY2UgaW4gY29yZS9oZWxwZXIgdmZ1bmNzDQo+ID4g
YW5kIHN1Y2guIEF0IHNvbWUgcG9pbnQgSSB3YXMgZXZlbiBwb25kZXJpbmcgc29tZSBraW5kIG9m
IG1hY3JvDQo+ID4gbWFnaWMgdG8gY3JlYXRlIHNlbWktYXV0b21hdGljIHdyYXBwZXJzIHNvIHRo
YXQgd2UgY291bGQgYWx3YXlzDQo+ID4ganVzdCB1c2UgdGhlIGludGVsXyB0eXBlcyBpbiBvdXIg
dmZ1bmMgaW1wbGVtZW50YXRpb25zLg0KPiA+IA0KPiA+IGludGVsX2NydGMgd2UndmUgY2xlYW5l
ZCB1cCB0aGUgbW9zdCBJIHRoaW5rLCBpbnRlbF9lbmNvZGVyIGEgYml0IGxlc3MNCj4gPiBwZXJo
YXBzLCBhbmQgaW50ZWxfY29ubmVjdG9yIG5vdCByZWFsbHkgYXQgYWxsLiBIZW5jZSB5b3Ugc2Vl
IGEgbG90IG1vcmUNCj4gPiBvZiBpbnRlbF9jb25uZWN0b3IgZmxvYXRpbmcgYXJvdW5kLiBXZSBh
bHNvIGRvbid0IHVzdWFsbHkgdXNlIHRoZSBpbnRlbF8NCj4gPiB0eXBlcyBmb3IgY29ubmVjdG9y
IHN0YXRlcy4gTWFpbmx5IGJlY2F1c2UgbW9zdCBvZiB0aGUgdGltZSB5b3UgZG9uJ3QNCj4gPiBu
ZWVkIGFueXRpbmcgZnJvbSB0aGVyZS4NCj4gDQo+IEFjay4NCg0KRmFpciBlbm91Z2ggdGhlbg0K
DQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5j
b20+DQoNCj4gDQo+IA0KPiBCUiwNCj4gSmFuaS4NCj4gDQo+IA0KPiANCg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
