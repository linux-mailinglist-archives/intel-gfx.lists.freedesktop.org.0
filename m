Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E7F51DF34
	for <lists+intel-gfx@lfdr.de>; Fri,  6 May 2022 20:41:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53B7A10E30D;
	Fri,  6 May 2022 18:41:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49C5310E302
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 May 2022 18:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651862460; x=1683398460;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=CgGmCWVt0BTg8VSIbRI5PIHmgxYzQFxhItVDKgJY1hU=;
 b=GVdiwRg9fLUzS1XaW16kqKUOZBkStqgdiR3ZRZTg8HxBWyHSDnKDSWQA
 Ad18ajlJrFksU7eubq4nHfiWkyHXibdPjz/MJVYrBPEY1tRhVw83OxcX8
 PypzsUpiPw7d0i90KuW8+apZxFnf9NOUK6lbBc22P3M/iWMtFmj8Li9c2
 UpwZlzljwYmbKPtdcPjZpthBUPIo7Ls2/+y+aCFfwIqPh8CB2xRE/B1yn
 PIN9Lcjr1lgPLqYrepSwuRPXR8rVMyhEFIIIkioyBkOS4lusXg72xAJUV
 74KQ7sq3SuusskN04STUBW+EpoCppNP2MObtfkahgIdvyZNRnVGzvgV6V Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10339"; a="293757702"
X-IronPort-AV: E=Sophos;i="5.91,205,1647327600"; d="scan'208";a="293757702"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2022 11:40:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,205,1647327600"; d="scan'208";a="538009965"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga006.jf.intel.com with ESMTP; 06 May 2022 11:40:59 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 6 May 2022 11:40:58 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Fri, 6 May 2022 11:40:58 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Thread-Topic: [PATCH 1/2] drm/i915/psr: Use full update In case of area
 calculation fails
Thread-Index: AQHYYQ1Lpz/9ulTlzUWs5xkdhRnKF60Sb0OAgAAyFoCAAAOJAA==
Date: Fri, 6 May 2022 18:40:58 +0000
Message-ID: <c4876757329baa66a7846bb9832743aac9149286.camel@intel.com>
References: <20220506054834.2822650-1-jouni.hogander@intel.com>
 <20220506054834.2822650-2-jouni.hogander@intel.com>
 <274b1d451fa18abd11e918acb44fecb108b9ba55.camel@intel.com>
 <60ff6aea75030f144e7676eb85d775a3612ad1c9.camel@intel.com>
In-Reply-To: <60ff6aea75030f144e7676eb85d775a3612ad1c9.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <209E572333F9794DBDB55191D61C9ADC@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/psr: Use full update In case
 of area calculation fails
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
Cc: "markpearson@lenovo.com" <markpearson@lenovo.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIyLTA1LTA2IGF0IDE4OjI4ICswMDAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+IE9uIEZyaSwgMjAyMi0wNS0wNiBhdCAxNToyOSArMDAwMCwgU291emEsIEpvc2Ugd3JvdGU6
DQo+ID4gT24gRnJpLCAyMDIyLTA1LTA2IGF0IDA4OjQ4ICswMzAwLCBKb3VuaSBIw7ZnYW5kZXIg
d3JvdGU6DQo+ID4gPiBDdXJyZW50bHkgd2UgaGF2ZSBzb21lIGNvcm5lciBjYXNlcyB3aGVyZSBh
cmVhIGNhbGN1bGF0aW9uDQo+ID4gPiBmYWlscy4gIEZvcg0KPiA+ID4gdGhlc2Ugc2VsIGZldGNo
IGFyZSBjYWxjdWxhdGlvbiBlbmRzIHVwIGhhdmluZyB1cGRhdGUgYXJlYSBhcyB5MSA9DQo+ID4g
PiAwLA0KPiA+ID4geTIgPSA0LiBJbnN0ZWFkIG9mIHRoZXNlIHZhbHVlcyBzYWZlciBvcHRpb24g
aXMgZnVsbCB1cGRhdGUuDQo+ID4gDQo+ID4gQXJlbid0IHlvdSBhYmxlIHRvIHJlcHJvZHVjZSB0
aGlzIHNjZW5hcmlvcyB3aXRoIElHVD8gU28gd2h5IG5vdA0KPiA+IHByb2JhYmx5IGZpeCB0aGUg
Y2FsY3VsYXRpb25zPw0KPiANCj4gVGhlcmUgd2VyZSBzb21lIGRpc2N1c3Npb24gd2l0aCBWaWxs
ZSBTeXJqw6Rsw6QgdGhhdCB0aGUgcHJvcGVyIGZpeCBmb3INCj4gdGhpcyB3b3VsZCBiZSB0byBt
b3ZlIHBzciB1cGRhdGUgYXJlYSBjYWxjdWxhdGlvbiBpbnRvIHdoZXJlIG90aGVyDQo+IGNhbGN1
bGF0aW9ucyBmb3IgcGxhbmVzIGFyZSBkb25lLiBDdXJyZW50bHkgd2UgZG9uJ3QgaGF2ZSBlLmcu
IHByb3Blcg0KPiBvZmZzZXQgaW5mb3JtYXRpb24gYXZhaWxhYmxlIGhlcmUuIEkgaGF2ZSB0aGlz
IGluIG15IHRhc2tsaXN0LCBidXQgYmVlbg0KPiBidXN5IHdpdGggb3RoZXIgdHJhY2tzLg0KDQpP
a2F5IHNvIHBsZWFzZSBhZGQgc29tZSBvZiB0aGF0IHRvIHRoZSBjb21taXQgZGVzY3JpcHRpb24u
DQoNCj4gDQo+IEknbSBhbHNvIGNvbmNlcm5lZCBnZW5lcmFsbHkgb24gdGhlIGZpcnN0IGxvb3Ag
cG9zc2libHkgZW5kaW5nIHVwIHdpdGgNCj4geTE9LTEseTI9LTEgdmFsdWVzIGR1ZSB0byBvdGhl
ciByZWFzb25zIGFzIHdlbGwuIFNvIHVzaW5nIHRoYXQNCj4gZnVsbF91cGRhdGUgcHJldmVudHMg
dGhpcyBwb3NpYmlsaXR5IGNvbXBsZXRlbHkuDQo+IA0KPiBJZiBJIGZvcmdldCBob3cgSSBvcmln
aW5hbGx5IGZvdW5kIHRoaXMgcHJvYmxlbSB3aXRoIGJpZ2ZiIEkgdGhpbmsgdGhpcw0KPiBiYWNr
dXAgdXNpbmcgZnVsbCB1cGRhdGUgaWYgc29tZXRoaW5nIGdvZXMgd3JvbmcgaXMgZ2VuZXJhbGx5
IGEgZ29vZA0KPiBpZGVhLiBDdXJyZW50bHkgaXQncyBqdXN0IHVzaW5nIHkxPTAseTI9NC4NCj4g
DQo+ID4gDQo+ID4gPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRl
bC5jb20+DQo+ID4gPiBDYzogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4g
PiA+IFRlc3RlZC1ieTogTWFyayBQZWFyc29uIDxtYXJrcGVhcnNvbkBsZW5vdm8uY29tPg0KPiA+
ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5j
b20+DQo+ID4gPiAtLS0NCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jIHwgMyArKysNCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspDQo+
ID4gPiANCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jDQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMNCj4gPiA+IGluZGV4IDA2ZGI0MDdlMjc0OS4uOGMwOTlkMjRkZTg2IDEwMDY0NA0KPiA+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gQEAgLTE3
NzAsNiArMTc3MCw5IEBAIGludCBpbnRlbF9wc3IyX3NlbF9mZXRjaF91cGRhdGUoc3RydWN0DQo+
ID4gPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+ID4gIGNsaXBfYXJlYV91cGRhdGUo
JnBpcGVfY2xpcCwgJmRhbWFnZWRfYXJlYSk7DQo+ID4gPiAgfQ0KPiA+ID4gDQoNCkFkZCBhIFRP
RE8gYW5kIGEgImRybV9ERUJVR19PTkNFKCkiKGNoZWNrIGRybV9XQVJOX09OQ0UpIGhlcmUgc28g
d2UgZ2V0IGEgd2FybmluZyBhYm91dCB0aGlzIGF0IGxlYXN0IG9uY2UgYW5kIHRoaXMgaXMgbm90
IGZvcmdvdC4NCg0KPiA+ID4gK2lmIChwaXBlX2NsaXAueTEgPT0gLTEpDQo+ID4gPiArZnVsbF91
cGRhdGUgPSB0cnVlOw0KPiA+ID4gKw0KPiA+ID4gIGlmIChmdWxsX3VwZGF0ZSkNCj4gPiA+ICBn
b3RvIHNraXBfc2VsX2ZldGNoX3NldF9sb29wOw0KPiA+ID4gDQo+IA0KDQo=
