Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E4842CC7B
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 23:03:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F42B6EB26;
	Wed, 13 Oct 2021 21:03:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E20A36EB2A
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 21:03:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10136"; a="207653000"
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="207653000"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 14:03:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="563249670"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP; 13 Oct 2021 14:03:32 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 13 Oct 2021 14:03:31 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 13 Oct 2021 14:03:31 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Wed, 13 Oct 2021 14:03:31 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v3] drm/i915/display: Wait PSR2 get out of deep sleep to
 update pipe
Thread-Index: AQHXuj6QQyxdV3fPS0u/3vEVcp2gzqvGHyYAgAC+DgCAAN/FAIAHCbwAgAMe6ACAAAh+gA==
Date: Wed, 13 Oct 2021 21:03:31 +0000
Message-ID: <3d71206cc138189469f34f62461265d4f1069b30.camel@intel.com>
References: <20211001011218.276557-1-jose.souza@intel.com>
 <20211005231851.67698-1-jose.souza@intel.com>
 <41dfbcd5-736e-49fa-c870-64d1ad7d4464@intel.com>
 <9f3c65b36ef8a6709a7225302f7446658f794061.camel@intel.com>
 <06a95df1-d37f-f6e9-81cd-1af1f256c9f2@intel.com>
 <71c53299fbf288261d7ce3807439b42e09608f71.camel@intel.com>
 <8ff11fe7-cb4c-2893-9722-6103b8621e00@intel.com>
In-Reply-To: <8ff11fe7-cb4c-2893-9722-6103b8621e00@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <CAE7A3D36147C445AAAD352B234E1BB0@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/display: Wait PSR2 get out of
 deep sleep to update pipe
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

T24gV2VkLCAyMDIxLTEwLTEzIGF0IDIzOjM5ICswMzAwLCBHd2FuLWd5ZW9uZyBNdW4gd3JvdGU6
DQo+IA0KPiBPbiAxMC8xMS8yMSAxMTo1MyBQTSwgU291emEsIEpvc2Ugd3JvdGU6DQo+ID4gT24g
VGh1LCAyMDIxLTEwLTA3IGF0IDEyOjMxICswMzAwLCBHd2FuLWd5ZW9uZyBNdW4gd3JvdGU6DQo+
ID4gPiANCj4gPiA+IE9uIDEwLzYvMjEgMTE6MDQgUE0sIFNvdXphLCBKb3NlIHdyb3RlOg0KPiA+
ID4gPiBPbiBXZWQsIDIwMjEtMTAtMDYgYXQgMTE6NTAgKzAzMDAsIEd3YW4tZ3llb25nIE11biB3
cm90ZToNCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBPbiAxMC82LzIxIDI6MTggQU0sIEpvc8OpIFJv
YmVydG8gZGUgU291emEgd3JvdGU6DQo+ID4gPiA+ID4gPiBBbGRlcmxha2UtUCB3YXMgZ2V0dGlu
ZyAnbWF4IHRpbWUgdW5kZXIgZXZhc2lvbicgbWVzc2FnZXMgd2hlbiBQU1IyDQo+ID4gPiA+ID4g
PiBpcyBlbmFibGVkLCB0aGlzIGlzIGR1ZSBQSVBFX1NDQU5MSU5FL1BJUEVEU0wgcmV0dXJuaW5n
IDAgb3ZlciBhDQo+ID4gPiA+ID4gPiBwZXJpb2Qgb2YgdGltZSBsb25nZXIgdGhhbiBWQkxBTktf
RVZBU0lPTl9USU1FX1VTLg0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiBGb3IgUFNSMSB3ZSBo
YWQgdGhlIHNhbWUgaXNzdWUgc28gaW50ZWxfcHNyX3dhaXRfZm9yX2lkbGUoKSB3YXMNCj4gPiA+
ID4gPiA+IGltcGxlbWVudGVkIHRvIHdhaXQgZm9yIFBTUjEgdG8gZ2V0IGludG8gaWRsZSBzdGF0
ZSBidXQgbm90aGluZyB3YXMNCj4gPiA+ID4gPiA+IGRvbmUgZm9yIFBTUjIuDQo+ID4gPiA+ID4g
PiANCj4gPiA+ID4gPiA+IEZvciBQU1IyIHdlIGNhbid0IG9ubHkgd2FpdCBmb3IgaWRsZSBzdGF0
ZSBhcyBQU1IyIHRlbmRzIHRvIGtlZXANCj4gPiA+ID4gPiA+IGludG8gc2xlZXAgc3RhdGUocmVh
ZHkgdG8gc2VuZCBzZWxlY3RpdmUgdXBkYXRlcykuDQo+ID4gPiA+ID4gPiBXYWl0aW5nIGZvciBh
bnkgc3RhdGUgYmVsb3cgZGVlcCBzbGVlcCBwcm92ZWQgdG8gYmUgZWZmZWN0aXZlIGluDQo+ID4g
PiA+ID4gPiBhdm9pZGluZyB0aGUgZXZhc2lvbiBtZXNzYWdlcyBhbmQgYWxzbyBub3Qgd2FzdGVk
IGEgbG90IG9mIHRpbWUuDQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IHYyOg0KPiA+ID4gPiA+
ID4gLSBkcm9wcGluZyB0aGUgYWRkaXRpb25hbCB3YWl0X2ZvciBsb29wcywgb25seSB0aGUgX3dh
aXRfZm9yX2F0b21pYygpDQo+ID4gPiA+ID4gPiBpcyBuZWNlc3NhcnkNCj4gPiA+ID4gPiA+IC0g
d2FpdGluZyBmb3Igc3RhdGVzIGJlbG93IEVEUF9QU1IyX1NUQVRVU19TVEFURV9ERUVQX1NMRUVQ
DQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IHYzOg0KPiA+ID4gPiA+ID4gLSBkcm9wcGluZyBp
bnRlbF93YWl0X2Zvcl9jb25kaXRpb25fYXRvbWljKCkgZnVuY3Rpb24NCj4gPiA+ID4gPiA+IA0K
PiA+ID4gPiA+ID4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+DQo+ID4gPiA+ID4gPiBDYzogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5A
aW50ZWwuY29tPg0KPiA+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBT
b3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+ID4gPiA+ID4gPiAtLS0NCj4gPiA+ID4gPiA+
ICAgICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMuYyAgfCAgMyAr
LQ0KPiA+ID4gPiA+ID4gICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMgICAgICB8IDUyICsrKysrKysrKysrLS0tLS0tLS0NCj4gPiA+ID4gPiA+ICAgICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICAgfCAxMCArKy0tDQo+ID4gPiA+
ID4gPiAgICAgMyBmaWxlcyBjaGFuZ2VkLCAzNiBpbnNlcnRpb25zKCspLCAyOSBkZWxldGlvbnMo
LSkNCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jDQo+ID4gPiA+ID4gPiBpbmRleCAz
MDlkNzRmZDg2Y2UxLi5kN2RkM2E1N2M2MTcwIDEwMDY0NA0KPiA+ID4gPiA+ID4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMuYw0KPiA+ID4g
PiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2Rl
YnVnZnMuYw0KPiA+ID4gPiA+ID4gQEAgLTMwMyw4ICszMDMsNyBAQCBwc3Jfc291cmNlX3N0YXR1
cyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLCBzdHJ1Y3Qgc2VxX2ZpbGUgKm0pDQo+ID4gPiA+
ID4gPiAgICAgfTsNCj4gPiA+ID4gPiA+ICAgICB2YWwgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2
LA0KPiA+ID4gPiA+ID4gICAgICAgICBFRFBfUFNSMl9TVEFUVVMoaW50ZWxfZHAtPnBzci50cmFu
c2NvZGVyKSk7DQo+ID4gPiA+ID4gPiAtc3RhdHVzX3ZhbCA9ICh2YWwgJiBFRFBfUFNSMl9TVEFU
VVNfU1RBVEVfTUFTSykgPj4NCj4gPiA+ID4gPiA+IC0gICAgICBFRFBfUFNSMl9TVEFUVVNfU1RB
VEVfU0hJRlQ7DQo+ID4gPiA+ID4gPiArc3RhdHVzX3ZhbCA9IFJFR19GSUVMRF9HRVQoRURQX1BT
UjJfU1RBVFVTX1NUQVRFX01BU0ssIHZhbCk7DQo+ID4gPiA+ID4gPiAgICAgaWYgKHN0YXR1c192
YWwgPCBBUlJBWV9TSVpFKGxpdmVfc3RhdHVzKSkNCj4gPiA+ID4gPiA+ICAgICBzdGF0dXMgPSBs
aXZlX3N0YXR1c1tzdGF0dXNfdmFsXTsNCj4gPiA+ID4gPiA+ICAgICB9IGVsc2Ugew0KPiA+ID4g
PiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+ID4g
PiBpbmRleCA3YTIwNWZkNTAyM2JiLi5hZGU1MTRmYzBhMjRkIDEwMDY0NA0KPiA+ID4gPiA+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gPiA+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4g
PiA+ID4gQEAgLTE4MDksMTUgKzE4MDksMjEgQEAgdm9pZCBpbnRlbF9wc3JfcG9zdF9wbGFuZV91
cGRhdGUoY29uc3Qgc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpDQo+ID4gPiA+ID4g
PiAgICAgX2ludGVsX3Bzcl9wb3N0X3BsYW5lX3VwZGF0ZShzdGF0ZSwgY3J0Y19zdGF0ZSk7DQo+
ID4gPiA+ID4gPiAgICAgfQ0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiAtLyoqDQo+ID4gPiA+
ID4gPiAtICogcHNyX3dhaXRfZm9yX2lkbGUgLSB3YWl0IGZvciBQU1IxIHRvIGlkbGUNCj4gPiA+
ID4gPiA+IC0gKiBAaW50ZWxfZHA6IEludGVsIERQDQo+ID4gPiA+ID4gPiAtICogQG91dF92YWx1
ZTogUFNSIHN0YXR1cyBpbiBjYXNlIG9mIGZhaWx1cmUNCj4gPiA+ID4gPiA+IC0gKg0KPiA+ID4g
PiA+ID4gLSAqIFJldHVybnM6IDAgb24gc3VjY2VzcyBvciAtRVRJTUVPVVQgaWYgUFNSIHN0YXR1
cyBkb2VzIG5vdCBpZGxlLg0KPiA+ID4gPiA+ID4gLSAqDQo+ID4gPiA+ID4gPiAtICovDQo+ID4g
PiA+ID4gPiAtc3RhdGljIGludCBwc3Jfd2FpdF9mb3JfaWRsZShzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwLCB1MzIgKm91dF92YWx1ZSkNCj4gPiA+ID4gPiA+ICtzdGF0aWMgaW50IF9wc3IyX3Jl
YWR5X2Zvcl9waXBlX3VwZGF0ZV9sb2NrZWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4g
PiA+ID4gPiA+ICt7DQo+ID4gPiA+ID4gPiArc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7DQo+ID4gPiA+ID4gPiArDQo+ID4gPiA+ID4gPiAr
LyoNCj4gPiA+ID4gPiA+ICsgKiBBbnkgc3RhdGUgbG93ZXIgdGhhbiBFRFBfUFNSMl9TVEFUVVNf
U1RBVEVfREVFUF9TTEVFUCBpcyBlbm91Z2guDQo+ID4gPiA+ID4gPiArICogQXMgYWxsIGhpZ2hl
ciBzdGF0ZXMgaGFzIGJpdCA0IG9mIFBTUjIgc3RhdGUgc2V0IHdlIGNhbiBqdXN0IHdhaXQgZm9y
DQo+ID4gPiA+ID4gPiArICogRURQX1BTUjJfU1RBVFVTX1NUQVRFX0RFRVBfU0xFRVAgdG8gYmUg
Y2xlYXJlZC4NCj4gPiA+ID4gPiA+ICsgKi8NCj4gPiA+ID4gPiA+ICtyZXR1cm4gaW50ZWxfZGVf
d2FpdF9mb3JfY2xlYXIoZGV2X3ByaXYsDQo+ID4gPiA+ID4gPiArICAgICAgIEVEUF9QU1IyX1NU
QVRVUyhpbnRlbF9kcC0+cHNyLnRyYW5zY29kZXIpLA0KPiA+ID4gPiA+ID4gKyAgICAgICBFRFBf
UFNSMl9TVEFUVVNfU1RBVEVfREVFUF9TTEVFUCwgNTApOw0KPiA+ID4gPiA+IFVuZGVyIHRoZSBE
RUVQX1NMRUVQIHN0YXRlLCB0aGVyZSBhcmUgSURMRSwgQ0FQVFVSRSwgQ1BUVVJFX0ZTLCBTTEVF
UCwNCj4gPiA+ID4gPiBCVUZPTl9GVywgTUxfVVAsIFNVX1NUQU5EQlksIGV0Yy4gSW4gdGhpcyBj
YXNlLCB3aGV0aGVyIHRoZSBldmFzaW9uDQo+ID4gPiA+ID4gbWVzc2FnZXMgYXJlIGNvbXBsZXRl
bHkgdGVzdGVkIGluIHRoZSBzdGF0ZSB0aGF0IGNoYW5nZXMgcXVpY2tseSBJIHRoaW5rDQo+ID4g
PiA+ID4gdGhlIHRlc3QgcGVyaW9kIGlzIGEgbGl0dGxlIGluc3VmZmljaWVudC4NCj4gPiA+ID4g
DQo+ID4gPiA+IFdoYXQgaXMgeW91ciBzdWdnZXN0aW9uIG9mIHRlc3QgZm9yIHRoaXM/DQo+ID4g
PiA+IA0KPiA+ID4gPiBJIGxlZnQgbXkgQWxkZXJsYWtlLVAgcnVubmluZyBvdmVybmlnaHQobW9y
ZSB0aGFuIDEyIGhvdXJzKSB3aXRoIGEgTmV3cyB3ZWJzaXRlIG9wZW4uDQo+ID4gPiA+IFRoaXMg
d2Vic2l0ZSByZWxvYWRzIHRoZSBwYWdlIGF0IGV2ZXJ5IDUgbWludXRlcywgc28gaXQgZW50ZXJl
ZCBhbmQgZXhpdGVkIERDNS82IHN0YXRlcyBzZXZlcmFsIHRpbWVzIHdpdGhvdXQgYW55IGV2YXNp
b24gbWVzc2FnZXMuDQo+ID4gPiA+IA0KPiA+ID4gPiA+IEkgdGhpbmsgaXQgbWF5IGJlIG5lY2Vz
c2FyeSB0byB0ZXN0IGEgbGl0dGxlIG1vcmUgb3IgdG8gaGF2ZQ0KPiA+ID4gPiA+IGNvbmZpcm1h
dGlvbiBmcm9tIHRoZSBIVyBwZXJzb24gaW4gY2hhcmdlLg0KPiA+ID4gPiANCj4gPiA+ID4gSSBj
YW4gZmlsZSBhbiBpc3N1ZSBmb3IgdGhpcyBidXQgaXQgd2lsbCBwcm9iYWJseSBzZXZlcmFsIHdl
ZWtzIHRvIGdldCBhbiBhbnN3ZXIuDQo+ID4gPiA+IA0KPiA+ID4gWWVzLCBJIGFtIG5vdCBkaXNw
YXJhZ2luZyB3aGF0IHlvdSB0ZXN0ZWQuDQo+ID4gPiBIb3dldmVyLCBzaW5jZSB0aGUgY3VycmVu
dCBjb2RlIGNvbmZpcm1zIHRoYXQgb25seSB0aGUgMzFzdCBiaXQgb2YgdGhlDQo+ID4gPiBQU1Iy
X1NUQVRVUyByZWdpc3RlciBpcyBjaGFuZ2VkIHRvIDAgb3BlcmF0aW9uYWxseSwNCj4gPiA+IGl0
IGRvZXMgbm90IGd1YXJhbnRlZSB0aGF0IHRoZSB0ZXN0ZWQgdXNlIGNhc2VzIGhhdmUgYmVlbiB0
ZXN0ZWQgZm9yDQo+ID4gPiBJRExFLCBDQVBUVVJFLCBDUFRVUkVfRlMsIFNMRUVQLCBCVUZPTl9G
VywgTUxfVVAsIFNVX1NUQU5EQlksIGFuZA0KPiA+ID4gRkFTVF9TTEVFUCBzdGF0ZXMuDQo+ID4g
PiANCj4gPiA+IEkgY2FuJ3QgdGhpbmsgb2YgYSB3YXkgdG8gdGVzdCBlYWNoIG9mIHRoZSBhYm92
ZSBzdGF0ZXMgcmlnaHQgbm93LCBidXQNCj4gPiA+IHdoYXQgSSBjYW4gc3VnZ2VzdCBpcyB0aGF0
ICJpbnRlbF9kZV93YWl0X2Zvcl9jbGVhcihkZXZfcHJpdiwNCj4gPiA+IEVEUF9QU1IyX1NUQVRV
UyhpbnRlbF9kcC0+cHNyLnRyYW5zY29kZXIpLA0KPiA+ID4gRURQX1BTUjJfU1RBVFVTX1NUQVRF
X0RFRVBfU0xFRVAsIDUwKSIgd29ya3Mgbm9ybWFsbHkuIEFmdGVyIHRoYXQsIGNhbg0KPiA+ID4g
eW91IHB1dCBhIGNvZGUgdGhhdCBwcmludHMgdGhlIGN1cnJlbnQgUFNSMiBzdGF0dXM/DQo+ID4g
PiANCj4gPiA+IElmIHNvLCBJIHRoaW5rIGl0IHdpbGwgYmUgZWFzeSB0byBhbmFseXplIHRoZSBw
cm9ibGVtIGluIGNhc2UgZXZhc2lvbg0KPiA+ID4gbWVzc2FnZXMgb2NjdXIgYWdhaW4gYWZ0ZXIg
dGhpcyBjb2RlIGlzIGFwcGxpZWQgbGF0ZXIuDQo+ID4gPiBJZiBhZGRpdGlvbmFsIGNvbmZpcm1h
dGlvbiBmcm9tIHRoZSByZXNwb25zaWJsZSBIVyBkZXZlbG9wZXIgaXMgcmVjZWl2ZWQNCj4gPiA+
IGF0IGEgbGF0ZXIgdGltZSwgaXQgaXMgdGhvdWdodCB0aGF0IGZ1dHVyZSB3b3JrIHN1Y2ggYXMg
ZGVsZXRpbmcgdGhlDQo+ID4gPiBjb2RlIHRoYXQgb3V0cHV0cyB0aGUgbmV3bHkgYWRkZWQgY3Vy
cmVudCBQU1IgU3RhdHVzIGF0IHRoYXQgdGltZSB3aWxsDQo+ID4gPiBiZSBwb3NzaWJsZS4NCj4g
PiANCj4gPiBQcmludCB0aGUgUFNSIHN0YXR1cyBhdCBldmVyeSBmbGlwIGlzIHRvbyB2ZXJib3Nl
Lg0KPiA+IA0KPiA+IE90aGVyIG9wdGlvbiB3b3VsZCBiZSBwcmludCB0aGUgUFNSIHN0YXR1cyBp
biBjYXNlIGEgZXZhc2lvbiBoYXBwZW5lZCBidXQgdGhhdCB3b3VsZCBub3QgZ2l2ZSB1cyBtdWNo
IGluZm9ybWF0aW9uIGFzIHRoZSBzdGF0dXMgd291bGQgaGF2ZSBjaGFuZ2VkDQo+ID4gYmV0d2Vl
biBpbnRlbF9waXBlX3VwZGF0ZV9zdGFydCgpIGFuZCBpbnRlbF9waXBlX3VwZGF0ZV9lbmQoKS4N
Cj4gPiANCj4gPiBUaGUgY3VycmVudCBzb2x1dGlvbiBpcyBiZXR0ZXIgdGhhbiBubyB3YWl0IGFu
ZCBpZiBldmFzaW9uIG1lc3NhZ2VzIGNvbWVzIGJhY2sgd2UgY2FuIGJlIG1vcmUgcmVzdHJpY3Rp
dmUgYW5kIG1ha2UgaXQgd2FpdCBmb3IgaWRsZSBvciBzbGVlcCBQU1IyDQo+ID4gc3RhdGVzLg0K
PiA+IFJhdGhlciB0aGFuIG5vdCB3YWl0aW5nIGhlcmUsIEkgYWdyZWUgdG8gd2FpdC4NCj4gQnV0
IHVubGVzcyB5b3UncmUganVzdCB3YWl0aW5nIGZvciBhbiBJRExFIHN0YXRlIGhlcmUsDQo+IHdo
ZW4gYW4gZXZhc2lvbiBtZXNzYWdlIG9jY3VycyBpbiBDQVBUVVJFLCBDUFRVUkVfRlMsIFNMRUVQ
LCBCVUZPTl9GVywgDQo+IE1MX1VQLCBTVV9TVEFOREJZLCBhbmQgRkFTVF9TTEVFUCBzdGF0ZXMs
IGlzbid0IGl0IGhhcmQgdG8ga25vdyB3aGF0IA0KPiBjYXVzZWQgdGhlIHByb2JsZW0/DQo+IChJ
ZiB0aGVyZSBpcyBhIHByb2JsZW0sIHdlIG5lZWQgdG8gcmVwcm9kdWNlIHRoZSBwcm9ibGVtIGFn
YWluLCBidXQgaWYgDQo+IHRoZXJlIGlzIGEgcHJvYmxlbSBhdCBhIGNlcnRhaW4gdGltZSwgeW91
IGtub3cgdGhhdCBpdCBpcyBkaWZmaWN1bHQgdG8gDQo+IHJlcHJvZHVjZS4pDQoNCldlIGNhbid0
IG9ubHkgd2FpdCBmb3IgaWRsZSwgd2hlbiBQU1IyIGlzIGFjdGl2ZSBpdCBzdGF5cyBhdCBzbGVl
cCBzdGF0ZS4NCklmIGEgZXZhc2lvbiBoYXBwZW5zIGFuZCBzdGF0ZSBpcyBpbiBDQVBUVVJFIGRv
IHlvdSBrbm93IGZvciBzdXJlIHdoYXQgYXJlIHRoZSBwcmV2aW91cyBzdGF0ZXMgb2YgQ0FQVFVS
RT8NCkkgY2FuIGhhdmUgc29tZSBhc3N1bXB0aW9ucyBidXQgbm90IHN1cmUgYW5kIHNwZWNpZmlj
YXRpb24gZG9uJ3QgaGF2ZSB0aGlzIGluZm9ybWF0aW9uIHRvby4NCg0KQ2hyb21lT1MgcmVwb3J0
ZWQgZXZhc2lvbiBlcnJvcnMgaW4gdGhlaXIgZW5kIHRvZGF5LCB0aGVpciBicmFuY2ggZGlkIG5v
dCBoYWQgdGhpcyBwYXRjaCBzbyB3ZSBjYW4ndCB3YWl0IHNldmVyYWwgd2Vla3MgdG8gZ2V0IGFu
IGFuc3dlciBmcm9tIEhXIHRlYW0uDQpXaW5kb3dzIGRyaXZlciB1c2VzIERNQyBxdWV1ZSB0byBk
byBmbGlwcywgc28gd2UgY2FuJ3QgZXZlbiBjaGVjayB3aGF0IFdpbmRvd3MgZHJpdmVyIGRvZXMu
DQoNCj4gDQo+IElmIHlvdSBjYW4ndCBhZGQgYWRkaXRpb25hbCBkZWJ1Z2dpbmcgaW5mb3JtYXRp
b24gaGVyZSwgSU1ITyBob3cgYWJvdXQgDQo+IGFwcGx5aW5nIHRoaXMgcGF0Y2ggYWZ0ZXIgZ2V0
dGluZyBjb25maXJtYXRpb24gZnJvbSB0aGUgSFcgcGVyc29uIGFzIA0KPiBtZW50aW9uZWQgaW4g
dGhlIHByZXZpb3VzIGVtYWlsPw0KPiANCj4gQnIsDQo+IEcuRy4NCj4gPiA+IA0KPiA+ID4gQnIs
DQo+ID4gPiBHLkcuDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gW1BTUjJfU1RBVFVTXQ0KPiA+ID4g
PiA+ICstLS0tLS0tKy0tLS0tLS0tLS0tLSstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tKw0KPiA+ID4gPiA+ID4gVmFsdWUgfCAgICBOYW1lICAgIHwgRGVz
Y3JpcHRpb24gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfA0KPiA+ID4gPiA+
ICstLS0tLS0tKy0tLS0tLS0tLS0tLSstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tKw0KPiA+ID4gPiA+ID4gMDAwMGJ8ICAgIElETEUgICAgfCBSZXNldCBz
dGF0ZSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8DQo+ID4gPiA+ID4gKy0t
LS0tLS0rLS0tLS0tLS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0rDQo+ID4gPiA+ID4gPiAwMDAxYnwgICBDQVBUVVJFICB8IFNlbmQgY2FwdHVy
ZSBmcmFtZSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwNCj4gPiA+ID4gPiArLS0tLS0t
LSstLS0tLS0tLS0tLS0rLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLSsNCj4gPiA+ID4gPiA+IDAwMTBifCAgQ1BUVVJFX0ZTIHwgRmFzdCBzbGVlcCBhZnRl
ciBjYXB0dXJlIGZyYW1lIGlzIHNlbnQgICAgICAgICAgfA0KPiA+ID4gPiA+ICstLS0tLS0tKy0t
LS0tLS0tLS0tLSstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tKw0KPiA+ID4gPiA+ID4gMDAxMWJ8ICAgIFNMRUVQICAgfCBTZWxlY3RpdmUgVXBkYXRlICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8DQo+ID4gPiA+ID4gKy0tLS0tLS0rLS0tLS0t
LS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0r
DQo+ID4gPiA+ID4gPiAwMTAwYnwgICBCVUZPTl9GVyB8IFR1cm4gQnVmZmVyIG9uIGFuZCBTZW5k
IEZhc3Qgd2FrZSAgICAgICAgICAgICAgIHwNCj4gPiA+ID4gPiArLS0tLS0tLSstLS0tLS0tLS0t
LS0rLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsNCj4g
PiA+ID4gPiA+IDAxMDFifCAgICBNTF9VUCAgIHwgVHVybiBNYWluIGxpbmsgdXAgYW5kIHNlbmQg
U1IgICAgICAgICAgICAgICAgICAgfA0KPiA+ID4gPiA+ICstLS0tLS0tKy0tLS0tLS0tLS0tLSst
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKw0KPiA+ID4g
PiA+ID4gMDExMGJ8IFNVX1NUQU5EQlkgfCBTZWxlY3RpdmUgdXBkYXRlIG9yIFN0YW5kYnkgc3Rh
dGUgICAgICAgICAgICAgICB8DQo+ID4gPiA+ID4gKy0tLS0tLS0rLS0tLS0tLS0tLS0tKy0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rDQo+ID4gPiA+ID4g
PiAwMTExYnwgRkFTVF9TTEVFUCB8IFNlbmQgRmFzdCBzbGVlcCAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHwNCj4gPiA+ID4gPiANCj4gPiA+ID4gPiArLS0tLS0tLSstLS0tLS0tLS0t
LS0rLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsNCj4g
PiA+ID4gPiA+IDEwMDBifCBERUVQX1NMRUVQIHwgRW50ZXIgRGVlcCBzbGVlcCAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgfA0KPiA+ID4gPiA+ICstLS0tLS0tKy0tLS0tLS0tLS0tLSst
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKw0KPiA+ID4g
PiA+ID4gMTAwMWJ8ICAgQlVGX09OICAgfCBUdXJuIE9OIElPIEJ1ZmZlciAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB8DQo+ID4gPiA+ID4gKy0tLS0tLS0rLS0tLS0tLS0tLS0tKy0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rDQo+ID4gPiA+ID4g
PiAxMDEwYnwgICBUR19PTiAgICB8IFR1cm4gT04gVGltaW5nIEdlbmVyYXRvciAgICAgICAgICAg
ICAgICAgICAgICAgIHwNCj4gPiA+ID4gPiArLS0tLS0tLSstLS0tLS0tLS0tLS0rLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsNCj4gPiA+ID4gPiA+IDEw
MTFifCBCVUZPTl9GV18yIHxUdXJuIEJ1ZmZlciBvbiBhbmQgU2VuZCBGYXN0IHdha2UgZm9yIDMg
QmxvY2tDYXNlfA0KPiA+ID4gPiA+ICstLS0tLS0tKy0tLS0tLS0tLS0tLSstLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKw0KPiA+ID4gPiA+ID4gK30NCj4g
PiA+ID4gPiA+ICsNCj4gPiA+ID4gPiA+ICtzdGF0aWMgaW50IF9wc3IxX3JlYWR5X2Zvcl9waXBl
X3VwZGF0ZV9sb2NrZWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gPiA+ID4gPiA+ICAg
ICB7DQo+ID4gPiA+ID4gPiAgICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0g
ZHBfdG9faTkxNShpbnRlbF9kcCk7DQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IEBAIC0xODI3
LDE1ICsxODMzLDEzIEBAIHN0YXRpYyBpbnQgcHNyX3dhaXRfZm9yX2lkbGUoc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCwgdTMyICpvdXRfdmFsdWUpDQo+ID4gPiA+ID4gPiAgICAgICogZXhpdCB0
cmFpbmluZyB0aW1lICsgMS41IG1zIG9mIGF1eCBjaGFubmVsIGhhbmRzaGFrZS4gNTAgbXMgaXMN
Cj4gPiA+ID4gPiA+ICAgICAgKiBkZWZlbnNpdmUgZW5vdWdoIHRvIGNvdmVyIGV2ZXJ5dGhpbmcu
DQo+ID4gPiA+ID4gPiAgICAgICovDQo+ID4gPiA+ID4gPiAtcmV0dXJuIF9faW50ZWxfd2FpdF9m
b3JfcmVnaXN0ZXIoJmRldl9wcml2LT51bmNvcmUsDQo+ID4gPiA+ID4gPiAtIEVEUF9QU1JfU1RB
VFVTKGludGVsX2RwLT5wc3IudHJhbnNjb2RlciksDQo+ID4gPiA+ID4gPiAtIEVEUF9QU1JfU1RB
VFVTX1NUQVRFX01BU0ssDQo+ID4gPiA+ID4gPiAtIEVEUF9QU1JfU1RBVFVTX1NUQVRFX0lETEUs
IDIsIDUwLA0KPiA+ID4gPiA+ID4gLSBvdXRfdmFsdWUpOw0KPiA+ID4gPiA+ID4gK3JldHVybiBp
bnRlbF9kZV93YWl0X2Zvcl9jbGVhcihkZXZfcHJpdiwNCj4gPiA+ID4gPiA+ICsgICAgICAgRURQ
X1BTUl9TVEFUVVMoaW50ZWxfZHAtPnBzci50cmFuc2NvZGVyKSwNCj4gPiA+ID4gPiA+ICsgICAg
ICAgRURQX1BTUl9TVEFUVVNfU1RBVEVfTUFTSywgNTApOw0KPiA+ID4gPiA+ID4gICAgIH0NCj4g
PiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gICAgIC8qKg0KPiA+ID4gPiA+ID4gLSAqIGludGVsX3Bz
cl93YWl0X2Zvcl9pZGxlIC0gd2FpdCBmb3IgUFNSMSB0byBpZGxlDQo+ID4gPiA+ID4gPiArICog
aW50ZWxfcHNyX3dhaXRfZm9yX2lkbGUgLSB3YWl0IGZvciBQU1IgYmUgcmVhZHkgZm9yIGEgcGlw
ZSB1cGRhdGUNCj4gPiA+ID4gPiA+ICAgICAgKiBAbmV3X2NydGNfc3RhdGU6IG5ldyBDUlRDIHN0
YXRlDQo+ID4gPiA+ID4gPiAgICAgICoNCj4gPiA+ID4gPiA+ICAgICAgKiBUaGlzIGZ1bmN0aW9u
IGlzIGV4cGVjdGVkIHRvIGJlIGNhbGxlZCBmcm9tIHBpcGVfdXBkYXRlX3N0YXJ0KCkgd2hlcmUg
aXQgaXMNCj4gPiA+ID4gPiA+IEBAIC0xODUyLDE5ICsxODU2LDIzIEBAIHZvaWQgaW50ZWxfcHNy
X3dhaXRfZm9yX2lkbGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0
YXRlKQ0KPiA+ID4gPiA+ID4gICAgIGZvcl9lYWNoX2ludGVsX2VuY29kZXJfbWFza193aXRoX3Bz
cigmZGV2X3ByaXYtPmRybSwgZW5jb2RlciwNCj4gPiA+ID4gPiA+ICAgICAgICAgIG5ld19jcnRj
X3N0YXRlLT51YXBpLmVuY29kZXJfbWFzaykgew0KPiA+ID4gPiA+ID4gICAgIHN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHAgPSBlbmNfdG9faW50ZWxfZHAoZW5jb2Rlcik7DQo+ID4gPiA+ID4gPiAt
dTMyIHBzcl9zdGF0dXM7DQo+ID4gPiA+ID4gPiAraW50IHJldDsNCj4gPiA+ID4gPiA+IA0KPiA+
ID4gPiA+ID4gICAgIG11dGV4X2xvY2soJmludGVsX2RwLT5wc3IubG9jayk7DQo+ID4gPiA+ID4g
PiAtaWYgKCFpbnRlbF9kcC0+cHNyLmVuYWJsZWQgfHwgaW50ZWxfZHAtPnBzci5wc3IyX2VuYWJs
ZWQpIHsNCj4gPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiA+ICtpZiAoIWludGVsX2RwLT5wc3IuZW5h
YmxlZCkgew0KPiA+ID4gPiA+ID4gICAgIG11dGV4X3VubG9jaygmaW50ZWxfZHAtPnBzci5sb2Nr
KTsNCj4gPiA+ID4gPiA+ICAgICBjb250aW51ZTsNCj4gPiA+ID4gPiA+ICAgICB9DQo+ID4gPiA+
ID4gPiANCj4gPiA+ID4gPiA+IC0vKiB3aGVuIHRoZSBQU1IxIGlzIGVuYWJsZWQgKi8NCj4gPiA+
ID4gPiA+IC1pZiAocHNyX3dhaXRfZm9yX2lkbGUoaW50ZWxfZHAsICZwc3Jfc3RhdHVzKSkNCj4g
PiA+ID4gPiA+IC1kcm1fZXJyKCZkZXZfcHJpdi0+ZHJtLA0KPiA+ID4gPiA+ID4gLSJQU1IgaWRs
ZSB0aW1lZCBvdXQgMHgleCwgYXRvbWljIHVwZGF0ZSBtYXkgZmFpbFxuIiwNCj4gPiA+ID4gPiA+
IC1wc3Jfc3RhdHVzKTsNCj4gPiA+ID4gPiA+ICtpZiAoaW50ZWxfZHAtPnBzci5wc3IyX2VuYWJs
ZWQpDQo+ID4gPiA+ID4gPiArcmV0ID0gX3BzcjJfcmVhZHlfZm9yX3BpcGVfdXBkYXRlX2xvY2tl
ZChpbnRlbF9kcCk7DQo+ID4gPiA+ID4gPiArZWxzZQ0KPiA+ID4gPiA+ID4gK3JldCA9IF9wc3Ix
X3JlYWR5X2Zvcl9waXBlX3VwZGF0ZV9sb2NrZWQoaW50ZWxfZHApOw0KPiA+ID4gPiA+ID4gKw0K
PiA+ID4gPiA+ID4gK2lmIChyZXQpDQo+ID4gPiA+ID4gPiArZHJtX2VycigmZGV2X3ByaXYtPmRy
bSwgIlBTUiB3YWl0IHRpbWVkIG91dCwgYXRvbWljIHVwZGF0ZSBtYXkgZmFpbFxuIik7DQo+ID4g
PiA+ID4gPiArDQo+ID4gPiA+ID4gPiAgICAgbXV0ZXhfdW5sb2NrKCZpbnRlbF9kcC0+cHNyLmxv
Y2spOw0KPiA+ID4gPiA+ID4gICAgIH0NCj4gPiA+ID4gPiA+ICAgICB9DQo+ID4gPiA+ID4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gPiA+ID4gPiA+IGluZGV4IGE4OTdmNGFiZWEwYzMuLmUx
MDE1NzlkM2E0ZDggMTAwNjQ0DQo+ID4gPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oDQo+ID4gPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oDQo+ID4gPiA+ID4gPiBAQCAtNDcwMCwxMSArNDcwMCwxMSBAQCBlbnVtIHsNCj4gPiA+
ID4gPiA+ICAgICAjZGVmaW5lICBQU1JfRVZFTlRfTFBTUF9NT0RFX0VYSVQoMSA8PCAxKQ0KPiA+
ID4gPiA+ID4gICAgICNkZWZpbmUgIFBTUl9FVkVOVF9QU1JfRElTQUJMRSgxIDw8IDApDQo+ID4g
PiA+ID4gPiANCj4gPiA+ID4gPiA+IC0jZGVmaW5lIF9QU1IyX1NUQVRVU19BMHg2MDk0MA0KPiA+
ID4gPiA+ID4gLSNkZWZpbmUgX1BTUjJfU1RBVFVTX0VEUDB4NmY5NDANCj4gPiA+ID4gPiA+IC0j
ZGVmaW5lIEVEUF9QU1IyX1NUQVRVUyh0cmFuKV9NTUlPX1RSQU5TMih0cmFuLCBfUFNSMl9TVEFU
VVNfQSkNCj4gPiA+ID4gPiA+IC0jZGVmaW5lIEVEUF9QU1IyX1NUQVRVU19TVEFURV9NQVNLICAg
ICAoMHhmIDw8IDI4KQ0KPiA+ID4gPiA+ID4gLSNkZWZpbmUgRURQX1BTUjJfU1RBVFVTX1NUQVRF
X1NISUZUICAgIDI4DQo+ID4gPiA+ID4gPiArI2RlZmluZSBfUFNSMl9TVEFUVVNfQTB4NjA5NDAN
Cj4gPiA+ID4gPiA+ICsjZGVmaW5lIF9QU1IyX1NUQVRVU19FRFAweDZmOTQwDQo+ID4gPiA+ID4g
PiArI2RlZmluZSBFRFBfUFNSMl9TVEFUVVModHJhbilfTU1JT19UUkFOUzIodHJhbiwgX1BTUjJf
U1RBVFVTX0EpDQo+ID4gPiA+ID4gPiArI2RlZmluZSBFRFBfUFNSMl9TVEFUVVNfU1RBVEVfTUFT
S1JFR19HRU5NQVNLKDMxLCAyOCkNCj4gPiA+ID4gPiA+ICsjZGVmaW5lIEVEUF9QU1IyX1NUQVRV
U19TVEFURV9ERUVQX1NMRUVQUkVHX0ZJRUxEX1BSRVAoRURQX1BTUjJfU1RBVFVTX1NUQVRFX01B
U0ssIDB4OCkNCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gICAgICNkZWZpbmUgX1BTUjJfU1Vf
U1RBVFVTX0EweDYwOTE0DQo+ID4gPiA+ID4gPiAgICAgI2RlZmluZSBfUFNSMl9TVV9TVEFUVVNf
RURQMHg2ZjkxNA0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+IA0KPiA+IA0KDQo=
