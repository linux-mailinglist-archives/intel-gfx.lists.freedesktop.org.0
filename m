Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE3D397157
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jun 2021 12:23:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91FD589E19;
	Tue,  1 Jun 2021 10:23:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6F7189E19
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Jun 2021 10:23:32 +0000 (UTC)
IronPort-SDR: p1jCE1bKbz7lnyhrz41KUH5St7bHgMwvyt3OXJ88KDp9+XRImXfNIfzfha9czmkmk/XWzPQrmr
 1ys8U1uqFGbw==
X-IronPort-AV: E=McAfee;i="6200,9189,10001"; a="201649540"
X-IronPort-AV: E=Sophos;i="5.83,239,1616482800"; d="scan'208";a="201649540"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 03:23:32 -0700
IronPort-SDR: 4Zz2RNLJgD5kCU1G9Ez+FfG0tJ1kadtX5f83rEErB5J2PBEqoqwBQLTYQRqvav+jMYEkfavOda
 CrZrHZ6yZtGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,239,1616482800"; d="scan'208";a="549012951"
Received: from irsmsx602.ger.corp.intel.com ([163.33.146.8])
 by orsmga004.jf.intel.com with ESMTP; 01 Jun 2021 03:23:30 -0700
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 1 Jun 2021 11:23:29 +0100
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.2242.008;
 Tue, 1 Jun 2021 11:23:29 +0100
From: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>, "Souza, Jose"
 <jose.souza@intel.com>
Thread-Topic: [PATCH v4 18/23] drm/i915/display: Introduce new
 intel_psr_pause/resume function
Thread-Index: AQHXSTfoKozvzUjtu0KOMq7BeP7Sgqrn2HAAgAEV+wCAABoqAIAEtKoAgAC2ogCAEIk/gA==
Date: Tue, 1 Jun 2021 10:23:29 +0000
Message-ID: <65123f1ecb0f061c5509489ffca1c5968d763d69.camel@intel.com>
References: <20210515031035.2561658-1-matthew.d.roper@intel.com>
 <20210515031035.2561658-19-matthew.d.roper@intel.com>
 <596696f734b83e18a6e1c4b2b4139cd12e2e9fa1.camel@intel.com>
 <1a8f78e8c2e2767e9f770bb748ccaf59171d70cb.camel@intel.com>
 <YKOfxr9EK6d70qhG@intel.com>
 <559bc0e35691761220b8e709fc8319c6bf4057b9.camel@intel.com>
 <c54a7e3d89987a6267b1bf997cd12039926f0282.camel@intel.com>
In-Reply-To: <c54a7e3d89987a6267b1bf997cd12039926f0282.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.184.70.1]
Content-ID: <5EEAC885716BD54996A114744B064E4E@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v4 18/23] drm/i915/display: Introduce new
 intel_psr_pause/resume function
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

VGhlIHYyIHBhdGNoIHdoaWNoIGFkZHJlc3NlZCBKb3NlJ3MgY29tbWVudHMgd2FzIGZsb2F0ZWQg
dG8NCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvOTA4MTkvDQpPbiBG
cmksIDIwMjEtMDUtMjEgYXQgMTQ6NTIgLTA3MDAsIFNvdXphLCBKb3NlIHdyb3RlOg0KPiBPbiBG
cmksIDIwMjEtMDUtMjEgYXQgMTE6NTggKzAxMDAsIE11biwgR3dhbi1neWVvbmcgd3JvdGU6DQo+
ID4gT24gVHVlLCAyMDIxLTA1LTE4IGF0IDE0OjA2ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3Jv
dGU6DQo+ID4gPiBPbiBUdWUsIE1heSAxOCwgMjAyMSBhdCAwOTozMzowOUFNICswMDAwLCBNdW4s
IEd3YW4tZ3llb25nIHdyb3RlOg0KPiA+ID4gPiBIaSBWaWxsZSzCoA0KPiA+ID4gPiBpbml0aWFs
bHksIGludGVsX3Bzcl9wYXVzZSgpIGNhbGxlZCBpbnRlbF9wc3JfZGlzYWJsZV9sb2NrZWQoKQ0K
PiA+ID4gPiBpbnN0ZWFkDQo+ID4gPiA+IG9mIGludGVsX3Bzcl9leGl0KCkuDQo+ID4gPiA+IElu
IGludGVsX3Bzcl9yZXN1bWUoKSwgX2ludGVsX3Bzcl9lbmFibGVfbG9ja2VkKCkgd2FzIGNhbGxl
ZA0KPiA+ID4gPiBpbnN0ZWFkDQo+ID4gPiA+IG9mDQo+ID4gPiA+IGludGVsX3Bzcl9hY3RpdmF0
ZSgpLg0KPiA+ID4gPiBDYW4geW91IHNoYXJlIHdoYXQgcHJvYmxlbSB0aGUgaW5pdGlhbCBjb2Rl
IGNhdXNlZCB3aGVuIGNhbGxpbmcNCj4gPiA+ID4gaW50ZWxfcHNyX3BhdXNlKCkgLyBpbnRlbF9w
c3JfcmVzdW1lKCk/DQo+ID4gPiANCj4gPiA+IEl0IHdhcyBkb2luZyBpbGxlZ2FsIHN0dWZmIHdp
dGggY3J0Yy0+c3RhdGUvZXRjLiBUaGF0IHdhcyBvb3BzaW5nLg0KPiA+ID4gVGhlIG90aGVyIHBy
b2JsZW0gd2FzIHRoYXQgSUlSQyBpdCB3YXMgZ29pbmcgdG8gZG8gRFBDRCBhY2Nlc3Nlcw0KPiA+
ID4gd2hpbGUgdGhlIGNkY2xrIGNvZGUgd2FzIGFscmVhZHkgaG9sZGluZyB0aGUgYXV4IG11dGV4
ZXMuIEkgbW92ZWQNCj4gPiA+IGl0DQo+ID4gPiBvdXQgZnJvbSB1bmRlciB0aGUgbG9jaywgYnV0
IEkgdGhpbmsgd2UgbWlnaHQgYWN0dWFsbHkgd2FudCBpdA0KPiA+ID4gaW5zaWRlDQo+ID4gPiB0
aGUgbG9jayBzaW5jZSB3ZSdsbCBuZWVkIHRoYXQgdG8gcHJldmVudCBQU1IgZHVyaW5nIGFsbCBB
VVgNCj4gPiA+IHRyYW5zZmVycw0KPiA+ID4gYW55d2F5LiBQdXR0aW5nIGl0IGJhY2sgaW5zaWRl
IHRoZSBsb2NrIHNob3VsZCBhbHNvIG1ha2UgaXQgbGVzcw0KPiA+ID4gcmFjeQ0KPiA+ID4gSSBn
dWVzcy4NCj4gPiA+IA0KPiA+ID4gPiANCj4gPiA+ID4gSW4gYWRkaXRpb24sIGludGVsX3Bzcl9l
eGl0KCkgL2ludGVsX3Bzcl9hY3RpdmF0ZSgpIGZ1bmN0aW9uwqANCj4gPiA+ID4gZGlzYWJsZQ0K
PiA+ID4gPiAvDQo+ID4gPiA+IGVuYWJsZSBvbmx5IHRoZSBQU1Igc291cmNlLg0KPiA+ID4gPiBT
bywgaWYgZGlzYWJsZS9lbmFibGUgZm9yIFBTUiBTaW5rIERldmljZSBpcyBub3QgY2FsbGVkIHRv
Z2V0aGVyLA0KPiA+ID4gPiB0aGVyZQ0KPiA+ID4gPiB3aWxsIGJlIGEgcHJvYmxlbSB0aGF0IHRo
ZSBQU1Igc3RhdGUgbWFjaGluZSBvZiBzaW5rIGFuZCBzb3VyY2UNCj4gPiA+ID4gaXMNCj4gPiA+
ID4gZGlmZmVyZW50Lg0KPiA+ID4gPiBXaGF0IGRvIHlvdSB0aGluaz8NCj4gPiA+IA0KPiA+ID4g
SWYgcG9zc2libGUgSSB3b3VsZG4ndCB3YW50IGl0IHRvdWNoIHRoZSBzaW5rIGF0IGFsbC4gSXQg
c2hvdWxkDQo+ID4gPiBiYXNpY2FsbHkgYmUgbm8gZGlmZmVyZW50IHRvIGVnLiBlbmFibGluZyB0
aGUgdmJsYW5rIGludGVycnVwdC4NCj4gPiA+IA0KPiA+IA0KPiA+IEhpIFZpbGxlIGFuZCBTdGFu
LCANCj4gPiBUaGFua3MsIFZpbGxlLCBmb3IgZXhwbGFpbmluZy4NCj4gPiANCj4gPiBpbnRlbF9w
c3JfcGF1c2UoKSBhbmQgaW50ZWxfcHNyX3Jlc3VtZSgpIGFyZSBhbiBhcGkgYWRkZWQgdG8gdXNl
IHdoZW4NCj4gPiByZWFjdGl2YXRpbmcgKGRpc2FibGUgYW5kIGVuYWJsZSkgdGhlIHBzciBmdW5j
dGlvbmFsaXR5IHdpdGhvdXQNCj4gPiBpbnRlbF9jcnRjX3N0YXRlIGFuZCBkcm1fY29ubmVjdG9y
X3N0YXRlLCBhcyBkZXNjcmliZWQgaW4gdGhlIGNvbW1pdA0KPiA+IGxvZy4NCj4gPiBBbmQgaW4g
b3JkZXIgdG8gZGVhY3RpdmF0ZSBhbmQgYWN0aXZhdGUgcHNyIG5vcm1hbGx5LCB3ZSBtdXN0DQo+
ID4gZGVhY3RpdmF0ZSB0aGUgcHNyIGZ1bmN0aW9uYWxpdHkgb2YgdGhlIHNpbmsgYXMgd2VsbCwg
YW5kIGF0IHRoaXMNCj4gPiB0aW1lLA0KPiA+IHNpbmsgcHNyIGRlYWN0aXZhdGUgdXNpbmcgZHBj
ZC4NCj4gPiANCj4gPiBBbmQgaW4gdGhlIHBhcnQgZXhwbGFpbmluZyBkaXNhYmxpbmcgcHNyIGlu
IGNkY2xrIHNldHRpbmcgaW4gYnNwZWMsDQo+ID4gdGhlDQo+ID4gZm9sbG93aW5nIHByb2NlZHVy
ZSBpcyBleHBsYWluZWQgZm9yIGRpc2FibGluZyBwc3IuDQo+ID4gMS4gVGVtcG9yYXJpbHkgZGlz
YWJsZSBQU1IxLCBQU1IyLCBhbmQgR1RDLg0KPiA+IDIuIFdhaXQgZm9yIGRpc2FibGluZyBzdGF0
dXMgZnJvbSB0aG9zZSBmdW5jdGlvbnMuDQo+ID4gMy4gV2FpdCBmb3IgYW55IHBlbmRpbmcgQXV4
IHRyYW5zYWN0aW9ucyB0byBjb21wbGV0ZSwgYW5kIGRvIG5vdA0KPiA+IHN0YXJ0DQo+ID4gYW55
IG5ldyBBdXggdHJhbnNhY3Rpb24uDQo+ID4gLi4uDQo+IA0KPiBJIGRvbid0IHRoaW5rIHdlIG5l
ZWQgdG8gZGlzYWJsZSwgcHNyX2V4aXQoKSArIHdhaXQgdW50aWwgUFNSIGlzIGlkbGUNCj4gaXMg
ZW5vdWdoLCBhbGwgb3RoZXIgc3R1ZmYgY2FuIGJlIGxlZnQgYXMgaXMuDQo+IA0KPiA+IA0KPiA+
IFNvLCBpbiBteSBvcGluaW9uLCB3aGVuIHRoZSBjZGNsayBzZXR0aW5nIGlzIGNhbGxlZCBmcm9t
DQo+ID4gaW50ZWxfYXRvbWljX2NvbW1pdF90YWlsKCkgd2l0aCBmdW5jdGlvbnMgc3VjaCBhcw0K
PiA+IGludGVsX3NldF9jZGNsa19wcmVfcGxhbmVfdXBkYXRlKCkgLw0KPiA+IGludGVsX3NldF9j
ZGNsa19wb3N0X3BsYW5lX3VwZGF0ZSgpLA0KPiA+IGlmIHBzciBkZWFjdGl2YXRpb24vYWN0aXZh
dGlvbiBpcyBuZWNlc3NhcnksIGl0IHNlZW1zIHRoYXQNCj4gPiBpbnRlbF9zZXRfY2RjbGtfcHJl
X3BsYW5lX3VwZGF0ZSgpIC8NCj4gPiBpbnRlbF9zZXRfY2RjbGtfcG9zdF9wbGFuZV91cGRhdGUo
KSBzaG91bGQgYmUgY2FsbGVkIHdpdGgNCj4gPiBpbnRlbF9wc3JfZW5hYmxlKCkgLyBpbnRlbF9w
c3JfZGlzYWJsZSgpIGZ1bmN0aW9ucyB0b2dldGhlci4gV2hhdCBkbw0KPiA+IHlvdSB0aGluaz8N
Cj4gPiANCj4gPiBCciwNCj4gPiBHLkcuIA0KPiA+ID4gPiANCj4gPiA+ID4gT24gTW9uLCAyMDIx
LTA1LTE3IGF0IDA5OjU4IC0wNzAwLCBTb3V6YSwgSm9zZSB3cm90ZToNCj4gPiA+ID4gPiBPbiBG
cmksIDIwMjEtMDUtMTQgYXQgMjA6MTAgLTA3MDAsIE1hdHQgUm9wZXIgd3JvdGU6DQo+ID4gPiA+
ID4gPiBGcm9tOiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+DQo+
ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IFRoaXMgaW50cm9kdWNlcyB0aGUgZm9sbG93aW5nIGZ1
bmN0aW9uIHRoYXQgY2FuIGVuYWJsZSBhbmQNCj4gPiA+ID4gPiA+IGRpc2FibGUNCj4gPiA+ID4g
PiA+IHBzcg0KPiA+ID4gPiA+ID4gd2l0aG91dCBpbnRlbF9jcnRjX3N0YXRlL2RybV9jb25uZWN0
b3Jfc3RhdGUgd2hlbiBpbnRlbF9wc3INCj4gPiA+ID4gPiA+IGlzDQo+ID4gPiA+ID4gPiBhbHJl
YWR5DQo+ID4gPiA+ID4gPiBlbmFibGVkIHdpdGggY3VycmVudCBpbnRlbF9jcnRjX3N0YXRlIGFu
ZCBkcm1fY29ubmVjdG9yX3N0YXRlDQo+ID4gPiA+ID4gPiBpbmZvcm1hdGlvbi4NCj4gPiA+ID4g
PiA+IA0KPiA+ID4gPiA+ID4gLSBpbnRlbF9wc3JfcGF1c2UoKTogUGF1c2UgY3VycmVudCBQU1Iu
IGl0IGRlYWN0aXZhdGVzDQo+ID4gPiA+ID4gPiBjdXJyZW50DQo+ID4gPiA+ID4gPiBwc3INCj4g
PiA+ID4gPiA+IHN0YXRlLg0KPiA+ID4gPiA+ID4gLSBpbnRlbF9wc3JfcmVzdW1lKCk6IFJlc3Vt
ZSBwYXVzZWQgUFNSIHdpdGhvdXQNCj4gPiA+ID4gPiA+IGludGVsX2NydGNfc3RhdGUNCj4gPiA+
ID4gPiA+IGFuZA0KPiA+ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGRybV9jb25uZWN0b3Jfc3RhdGUuIEl0IGFjdGl2YXRlcw0KPiA+ID4gPiA+ID4g
cGF1c2VkDQo+ID4gPiA+ID4gPiBwc3INCj4gPiA+ID4gPiA+IHN0YXRlLg0KPiA+ID4gPiA+ID4g
DQo+ID4gPiA+ID4gPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRl
bC5jb20+DQo+ID4gPiA+ID4gPiBDYzogU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxp
c292c2tpeUBpbnRlbC5jb20+DQo+ID4gPiA+ID4gPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEd3
YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcubXVuQGludGVsLmNvbT4NCj4gPiA+ID4gPiA+IFNp
Z25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+ID4g
PiA+ID4gPiAtLS0NCj4gPiA+ID4gPiA+IMKgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV90eXBlcy5owqDCoMKgIHzCoCAxICsNCj4gPiA+ID4gPiA+IMKgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuY8KgwqDCoMKgwqAgfCA5Mw0KPiA+ID4gPiA+ID4gKysr
KysrKysrKysrKysrKy0NCj4gPiA+ID4gPiA+IC0tDQo+ID4gPiA+ID4gPiDCoGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmjCoMKgwqDCoMKgIHzCoCAyICsNCj4gPiA+ID4g
PiA+IMKgMyBmaWxlcyBjaGFuZ2VkLCA4MiBpbnNlcnRpb25zKCspLCAxNCBkZWxldGlvbnMoLSkN
Cj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gZGlmZiAtLWdpdA0KPiA+ID4gPiA+ID4gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+ID4gPiA+
ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0K
PiA+ID4gPiA+ID4gaW5kZXggYjhkMWY3MDJkODA4Li5lZTdjYmRkN2RiODcgMTAwNjQ0DQo+ID4g
PiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
dHlwZXMuaA0KPiA+ID4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gPiA+ID4gPiA+IEBAIC0xNDgyLDYgKzE0ODIsNyBAQCBz
dHJ1Y3QgaW50ZWxfcHNyIHsNCj4gPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqBib29sIHNpbmtf
c3VwcG9ydDsNCj4gPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqBib29sIHNvdXJjZV9zdXBwb3J0
Ow0KPiA+ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGJvb2wgZW5hYmxlZDsNCj4gPiA+ID4gPiA+
ICvCoMKgwqDCoMKgwqDCoGJvb2wgcGF1c2VkOw0KPiA+ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqDC
oGVudW0gcGlwZSBwaXBlOw0KPiA+ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGVudW0gdHJhbnNj
b2RlciB0cmFuc2NvZGVyOw0KPiA+ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGJvb2wgYWN0aXZl
Ow0KPiA+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMNCj4gPiA+ID4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYw0KPiA+ID4gPiA+ID4gaW5kZXggNGE2M2QxMDg3NmNlLi5kNGRmM2Y1ZTc5MTgg
MTAwNjQ0DQo+ID4gPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jDQo+ID4gPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jDQo+ID4gPiA+ID4gPiBAQCAtMTA2MCwzNCArMTA2MCwyMyBAQCBzdGF0aWMg
Ym9vbA0KPiA+ID4gPiA+ID4gcHNyX2ludGVycnVwdF9lcnJvcl9jaGVjayhzdHJ1Y3QNCj4gPiA+
ID4gPiA+IGludGVsX2RwICppbnRlbF9kcCkNCj4gPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqBy
ZXR1cm4gdHJ1ZTsNCj4gPiA+ID4gPiA+IMKgfQ0KPiA+ID4gPiA+ID4gwqANCj4gPiA+ID4gPiA+
IC1zdGF0aWMgdm9pZCBpbnRlbF9wc3JfZW5hYmxlX2xvY2tlZChzdHJ1Y3QgaW50ZWxfZHANCj4g
PiA+ID4gPiA+ICppbnRlbF9kcCwNCj4gPiA+ID4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb25zdCBzdHJ1
Y3QNCj4gPiA+ID4gPiA+IGludGVsX2NydGNfc3RhdGUNCj4gPiA+ID4gPiA+ICpjcnRjX3N0YXRl
LA0KPiA+ID4gPiA+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnN0IHN0cnVjdA0KPiA+ID4gPiA+ID4gZHJt
X2Nvbm5lY3Rvcl9zdGF0ZQ0KPiA+ID4gPiA+ID4gKmNvbm5fc3RhdGUpDQo+ID4gPiA+ID4gPiAr
c3RhdGljIHZvaWQgX2ludGVsX3Bzcl9lbmFibGVfbG9ja2VkKHN0cnVjdCBpbnRlbF9kcA0KPiA+
ID4gPiA+ID4gKmludGVsX2RwLA0KPiA+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29uc3Qgc3Ry
dWN0DQo+ID4gPiA+ID4gPiBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gPiA+ID4gPiAqY3J0Y19zdGF0
ZSkNCj4gPiA+ID4gPiA+IMKgew0KPiA+ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBp
bnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0ID0NCj4gPiA+ID4gPiA+IGRwX3RvX2RpZ19wb3J0
KGludGVsX2RwKTsNCj4gPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYgPQ0KPiA+ID4gPiA+ID4gZHBfdG9faTkxNShpbnRlbF9kcCk7DQo+
ID4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIg
PSAmZGlnX3BvcnQtPmJhc2U7DQo+ID4gPiA+ID4gPiAtwqDCoMKgwqDCoMKgwqB1MzIgdmFsOw0K
PiA+ID4gPiA+ID4gwqANCj4gPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqBkcm1fV0FSTl9PTigm
ZGV2X3ByaXYtPmRybSwgaW50ZWxfZHAtPnBzci5lbmFibGVkKTsNCj4gPiA+ID4gPiA+IMKgDQo+
ID4gPiA+ID4gPiAtwqDCoMKgwqDCoMKgwqBpbnRlbF9kcC0+cHNyLnBzcjJfZW5hYmxlZCA9IGNy
dGNfc3RhdGUtPmhhc19wc3IyOw0KPiA+ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGludGVsX2Rw
LT5wc3IuYnVzeV9mcm9udGJ1ZmZlcl9iaXRzID0gMDsNCj4gPiA+ID4gPiA+IC3CoMKgwqDCoMKg
wqDCoGludGVsX2RwLT5wc3IucGlwZSA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0NCj4gPiA+
ID4gPiA+ID4gdWFwaS5jcnRjKS0NCj4gPiA+ID4gPiA+ID4gcGlwZTsNCj4gPiA+ID4gPiA+IC3C
oMKgwqDCoMKgwqDCoGludGVsX2RwLT5wc3IudHJhbnNjb2RlciA9IGNydGNfc3RhdGUtDQo+ID4g
PiA+ID4gPiA+Y3B1X3RyYW5zY29kZXI7DQo+ID4gPiA+ID4gPiAtwqDCoMKgwqDCoMKgwqAvKiBE
QzUvREM2IHJlcXVpcmVzIGF0IGxlYXN0IDYgaWRsZSBmcmFtZXMgKi8NCj4gPiA+ID4gPiA+IC3C
oMKgwqDCoMKgwqDCoHZhbCA9DQo+ID4gPiA+ID4gPiB1c2Vjc190b19qaWZmaWVzKGludGVsX2dl
dF9mcmFtZV90aW1lX3VzKGNydGNfc3RhdGUpICoNCj4gPiA+ID4gPiA+IDYpOw0KPiA+ID4gPiA+
ID4gLcKgwqDCoMKgwqDCoMKgaW50ZWxfZHAtPnBzci5kYzNjb19leGl0X2RlbGF5ID0gdmFsOw0K
PiA+ID4gPiA+ID4gLcKgwqDCoMKgwqDCoMKgaW50ZWxfZHAtPnBzci5kYzNjb19leGl0bGluZSA9
IGNydGNfc3RhdGUtDQo+ID4gPiA+ID4gPiA+IGRjM2NvX2V4aXRsaW5lOw0KPiA+ID4gPiA+ID4g
LcKgwqDCoMKgwqDCoMKgaW50ZWxfZHAtPnBzci5wc3IyX3NlbF9mZXRjaF9lbmFibGVkID0gY3J0
Y19zdGF0ZS0NCj4gPiA+ID4gPiA+ID4gZW5hYmxlX3BzcjJfc2VsX2ZldGNoOw0KPiA+ID4gPiA+
ID4gwqANCj4gPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAoIXBzcl9pbnRlcnJ1cHRfZXJy
b3JfY2hlY2soaW50ZWxfZHApKQ0KPiA+ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqByZXR1cm47DQo+ID4gPiA+ID4gPiDCoA0KPiA+ID4gPiA+ID4gwqDCoMKgwqDCoMKg
wqDCoGRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLCAiRW5hYmxpbmcgUFNSJXNcbiIsDQo+ID4g
PiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnRlbF9kcC0+
cHNyLnBzcjJfZW5hYmxlZCA/ICIyIiA6ICIxIik7DQo+ID4gPiA+ID4gPiAtwqDCoMKgwqDCoMKg
wqBpbnRlbF9kcF9jb21wdXRlX3Bzcl92c2Nfc2RwKGludGVsX2RwLCBjcnRjX3N0YXRlLA0KPiA+
ID4gPiA+ID4gY29ubl9zdGF0ZSwNCj4gPiA+ID4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICZpbnRlbF9k
cC0+cHNyLnZzYyk7DQo+ID4gPiA+ID4gPiArDQo+ID4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKg
aW50ZWxfd3JpdGVfZHBfdnNjX3NkcChlbmNvZGVyLCBjcnRjX3N0YXRlLA0KPiA+ID4gPiA+ID4g
JmludGVsX2RwLQ0KPiA+ID4gPiA+ID4gPiBwc3IudnNjKTsNCj4gPiA+ID4gPiA+IMKgwqDCoMKg
wqDCoMKgwqBpbnRlbF9wc3JfZW5hYmxlX3NpbmsoaW50ZWxfZHApOw0KPiA+ID4gPiA+ID4gwqDC
oMKgwqDCoMKgwqDCoGludGVsX3Bzcl9lbmFibGVfc291cmNlKGludGVsX2RwKTsNCj4gPiA+ID4g
PiA+IEBAIC0xMDk2LDYgKzEwODUsMjggQEAgc3RhdGljIHZvaWQNCj4gPiA+ID4gPiA+IGludGVs
X3Bzcl9lbmFibGVfbG9ja2VkKHN0cnVjdA0KPiA+ID4gPiA+ID4gaW50ZWxfZHAgKmludGVsX2Rw
LA0KPiA+ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGludGVsX3Bzcl9hY3RpdmF0ZShpbnRlbF9k
cCk7DQo+ID4gPiA+ID4gPiDCoH0NCj4gPiA+ID4gPiA+IMKgDQo+ID4gPiA+ID4gPiArc3RhdGlj
IHZvaWQgaW50ZWxfcHNyX2VuYWJsZV9sb2NrZWQoc3RydWN0IGludGVsX2RwDQo+ID4gPiA+ID4g
PiAqaW50ZWxfZHAsDQo+ID4gPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0DQo+ID4g
PiA+ID4gPiBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gPiA+ID4gPiAqY3J0Y19zdGF0ZSwNCj4gPiA+
ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBjb25zdCBzdHJ1Y3QNCj4gPiA+ID4gPiA+IGRybV9jb25uZWN0
b3Jfc3RhdGUNCj4gPiA+ID4gPiA+ICpjb25uX3N0YXRlKQ0KPiA+ID4gPiA+ID4gK3sNCj4gPiA+
ID4gPiA+ICvCoMKgwqDCoMKgwqDCoHUzMiB2YWw7DQo+ID4gPiA+ID4gPiArDQo+ID4gPiA+ID4g
PiArwqDCoMKgwqDCoMKgwqBpbnRlbF9kcC0+cHNyLnBzcjJfZW5hYmxlZCA9IGNydGNfc3RhdGUt
Pmhhc19wc3IyOw0KPiA+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgaW50ZWxfZHAtPnBzci5waXBl
ID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLQ0KPiA+ID4gPiA+ID4gPiB1YXBpLmNydGMpLQ0K
PiA+ID4gPiA+ID4gPiBwaXBlOw0KPiA+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgaW50ZWxfZHAt
PnBzci50cmFuc2NvZGVyID0gY3J0Y19zdGF0ZS0NCj4gPiA+ID4gPiA+ID5jcHVfdHJhbnNjb2Rl
cjsNCj4gPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoC8qIERDNS9EQzYgcmVxdWlyZXMgYXQgbGVh
c3QgNiBpZGxlIGZyYW1lcyAqLw0KPiA+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgdmFsID0NCj4g
PiA+ID4gPiA+IHVzZWNzX3RvX2ppZmZpZXMoaW50ZWxfZ2V0X2ZyYW1lX3RpbWVfdXMoY3J0Y19z
dGF0ZSkgKg0KPiA+ID4gPiA+ID4gNik7DQo+ID4gPiA+ID4gPiArwqDCoMKgwqDCoMKgwqBpbnRl
bF9kcC0+cHNyLmRjM2NvX2V4aXRfZGVsYXkgPSB2YWw7DQo+ID4gPiA+ID4gPiArwqDCoMKgwqDC
oMKgwqBpbnRlbF9kcC0+cHNyLnBzcjJfc2VsX2ZldGNoX2VuYWJsZWQgPSBjcnRjX3N0YXRlLQ0K
PiA+ID4gPiA+ID4gPiBlbmFibGVfcHNyMl9zZWxfZmV0Y2g7DQo+ID4gPiA+ID4gPiArwqDCoMKg
wqDCoMKgwqBpbnRlbF9kcC0+cHNyLmRjM2NvX2V4aXRsaW5lID0gY3J0Y19zdGF0ZS0NCj4gPiA+
ID4gPiA+ID4gZGMzY29fZXhpdGxpbmU7DQo+ID4gPiA+ID4gPiArwqDCoMKgwqDCoMKgwqBpbnRl
bF9kcC0+cHNyLnBhdXNlZCA9IGZhbHNlOw0KPiA+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ID4gK8Kg
wqDCoMKgwqDCoMKgaW50ZWxfZHBfY29tcHV0ZV9wc3JfdnNjX3NkcChpbnRlbF9kcCwgY3J0Y19z
dGF0ZSwNCj4gPiA+ID4gPiA+IGNvbm5fc3RhdGUsDQo+ID4gPiA+ID4gPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAmaW50ZWxfZHAtPnBzci52c2MpOw0KPiA+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ID4gK8KgwqDC
oMKgwqDCoMKgX2ludGVsX3Bzcl9lbmFibGVfbG9ja2VkKGludGVsX2RwLCBjcnRjX3N0YXRlKTsN
Cj4gPiA+ID4gPiA+ICt9DQo+ID4gPiA+ID4gPiArDQo+ID4gPiA+ID4gPiDCoC8qKg0KPiA+ID4g
PiA+ID4gwqAgKiBpbnRlbF9wc3JfZW5hYmxlIC0gRW5hYmxlIFBTUg0KPiA+ID4gPiA+ID4gwqAg
KiBAaW50ZWxfZHA6IEludGVsIERQDQo+ID4gPiA+ID4gPiBAQCAtMTIzMyw2ICsxMjQ0LDYwIEBA
IHZvaWQgaW50ZWxfcHNyX2Rpc2FibGUoc3RydWN0IGludGVsX2RwDQo+ID4gPiA+ID4gPiAqaW50
ZWxfZHAsDQo+ID4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgY2FuY2VsX2RlbGF5ZWRfd29ya19z
eW5jKCZpbnRlbF9kcC0+cHNyLmRjM2NvX3dvcmspOw0KPiA+ID4gPiA+ID4gwqB9DQo+ID4gPiA+
ID4gPiDCoA0KPiA+ID4gPiA+ID4gKy8qKg0KPiA+ID4gPiA+ID4gKyAqIGludGVsX3Bzcl9wYXVz
ZSAtIFBhdXNlIFBTUg0KPiA+ID4gPiA+ID4gKyAqIEBpbnRlbF9kcDogSW50ZWwgRFANCj4gPiA+
ID4gPiA+ICsgKg0KPiA+ID4gPiA+ID4gKyAqIFRoaXMgZnVuY3Rpb24gbmVlZCB0byBiZSBjYWxs
ZWQgYWZ0ZXIgZW5hYmxpbmcgcHNyLg0KPiA+ID4gPiA+ID4gKyAqLw0KPiA+ID4gPiA+ID4gK3Zv
aWQgaW50ZWxfcHNyX3BhdXNlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ID4gPiA+ID4g
PiArew0KPiA+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX3BzciAqcHNyID0g
JmludGVsX2RwLT5wc3I7DQo+ID4gPiA+ID4gPiArDQo+ID4gPiA+ID4gPiArwqDCoMKgwqDCoMKg
wqBpZiAoIUNBTl9QU1IoaW50ZWxfZHApKQ0KPiA+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoHJldHVybjsNCj4gPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiA+ICvCoMKgwqDC
oMKgwqDCoG11dGV4X2xvY2soJnBzci0+bG9jayk7DQo+ID4gPiA+ID4gPiArDQo+ID4gPiA+ID4g
PiArwqDCoMKgwqDCoMKgwqBpZiAoIXBzci0+YWN0aXZlKSB7DQo+ID4gPiA+ID4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbXV0ZXhfdW5sb2NrKCZwc3ItPmxvY2spOw0KPiA+ID4g
PiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybjsNCj4gPiA+ID4gPiA+
ICvCoMKgwqDCoMKgwqDCoH0NCj4gPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiA+ICvCoMKgwqDCoMKg
wqDCoGludGVsX3Bzcl9leGl0KGludGVsX2RwKTsNCj4gPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDC
oHBzci0+cGF1c2VkID0gdHJ1ZTsNCj4gPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiA+ICvCoMKgwqDC
oMKgwqDCoG11dGV4X3VubG9jaygmcHNyLT5sb2NrKTsNCj4gPiA+ID4gPiA+ICsNCj4gPiA+ID4g
PiA+ICvCoMKgwqDCoMKgwqDCoGNhbmNlbF93b3JrX3N5bmMoJnBzci0+d29yayk7DQo+ID4gPiA+
ID4gPiArwqDCoMKgwqDCoMKgwqBjYW5jZWxfZGVsYXllZF93b3JrX3N5bmMoJnBzci0+ZGMzY29f
d29yayk7DQo+ID4gPiA+ID4gPiArfQ0KPiA+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ID4gKy8qKg0K
PiA+ID4gPiA+ID4gKyAqIGludGVsX3Bzcl9yZXN1bWUgLSBSZXN1bWUgUFNSDQo+ID4gPiA+ID4g
PiArICogQGludGVsX2RwOiBJbnRlbCBEUA0KPiA+ID4gPiA+ID4gKyAqDQo+ID4gPiA+ID4gPiAr
ICogVGhpcyBmdW5jdGlvbiBuZWVkIHRvIGJlIGNhbGxlZCBhZnRlciBwYXVzaW5nIHBzci4NCj4g
PiA+ID4gPiA+ICsgKi8NCj4gPiA+ID4gPiA+ICt2b2lkIGludGVsX3Bzcl9yZXN1bWUoc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCkNCj4gPiA+ID4gPiA+ICt7DQo+ID4gPiA+ID4gPiArwqDCoMKg
wqDCoMKgwqBzdHJ1Y3QgaW50ZWxfcHNyICpwc3IgPSAmaW50ZWxfZHAtPnBzcjsNCj4gPiA+ID4g
PiA+ICsNCj4gPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoGlmICghQ0FOX1BTUihpbnRlbF9kcCkp
DQo+ID4gPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuOw0KPiA+
ID4gPiA+ID4gKw0KPiA+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgbXV0ZXhfbG9jaygmcHNyLT5s
b2NrKTsNCj4gPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoGlmICghcHNy
LT5wYXVzZWQpDQo+ID4gPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZ290
byB1bmxvY2s7DQo+ID4gPiA+ID4gPiArDQo+ID4gPiA+ID4gPiArwqDCoMKgwqDCoMKgwqBwc3It
PnBhdXNlZCA9IGZhbHNlOw0KPiA+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgaW50ZWxfcHNyX2Fj
dGl2YXRlKGludGVsX2RwKTsNCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBUaGlzIHBhdGNoIGlzIGRv
aW5nIGEgYnVuY2ggb2YgY2hhbmdlcyBhcm91bmQgdGhlDQo+ID4gPiA+ID4gaW50ZWxfcHNyX2Vu
YWJsZQ0KPiA+ID4gPiA+IGJ1dA0KPiA+ID4gPiA+IHRoZW4gaXQgaXMgY2FsbGluZyBpbnRlbF9w
c3JfYWN0aXZhdGUoKS4NCj4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiA+ICt1
bmxvY2s6DQo+ID4gPiA+ID4gPiArwqDCoMKgwqDCoMKgwqBtdXRleF91bmxvY2soJnBzci0+bG9j
ayk7DQo+ID4gPiA+ID4gPiArfQ0KPiA+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ID4gwqBzdGF0aWMg
dm9pZCBwc3JfZm9yY2VfaHdfdHJhY2tpbmdfZXhpdChzdHJ1Y3QgaW50ZWxfZHANCj4gPiA+ID4g
PiA+ICppbnRlbF9kcCkNCj4gPiA+ID4gPiA+IMKgew0KPiA+ID4gPiA+ID4gwqDCoMKgwqDCoMKg
wqDCoHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9DQo+ID4gPiA+ID4gPiBkcF90
b19pOTE1KGludGVsX2RwKTsNCj4gPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oDQo+ID4gPiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmgNCj4gPiA+ID4gPiA+IGluZGV4IGUzZGI4NWU5N2Y0
Yy4uNjQxNTIxYjEwMWM4IDEwMDY0NA0KPiA+ID4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaA0KPiA+ID4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaA0KPiA+ID4gPiA+ID4gQEAgLTUxLDUgKzUxLDcg
QEAgdm9pZA0KPiA+ID4gPiA+ID4gaW50ZWxfcHNyMl9wcm9ncmFtX3BsYW5lX3NlbF9mZXRjaChz
dHJ1Y3QNCj4gPiA+ID4gPiA+IGludGVsX3BsYW5lICpwbGFuZSwNCj4gPiA+ID4gPiA+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgY29uc3Qgc3RydWN0DQo+ID4gPiA+ID4gPiBpbnRlbF9jcnRjX3N0
YXRlDQo+ID4gPiA+ID4gPiAqY3J0Y19zdGF0ZSwNCj4gPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgY29uc3Qgc3RydWN0DQo+ID4gPiA+ID4gPiBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxh
bmVfc3RhdGUsDQo+ID4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludCBjb2xvcl9w
bGFuZSk7DQo+ID4gPiA+ID4gPiArdm9pZCBpbnRlbF9wc3JfcGF1c2Uoc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCk7DQo+ID4gPiA+ID4gPiArdm9pZCBpbnRlbF9wc3JfcmVzdW1lKHN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHApOw0KPiA+ID4gPiA+ID4gwqANCj4gPiA+ID4gPiA+IMKgI2VuZGlm
IC8qIF9fSU5URUxfUFNSX0hfXyAqLw0KPiA+ID4gPiA+IA0KPiA+ID4gPiANCj4gPiA+IA0KPiA+
IA0KPiANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
