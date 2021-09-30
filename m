Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ABCC41E086
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 20:02:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23A7B6EC42;
	Thu, 30 Sep 2021 18:02:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F44E6EC42
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Sep 2021 18:02:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10123"; a="212510403"
X-IronPort-AV: E=Sophos;i="5.85,336,1624345200"; d="scan'208";a="212510403"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 11:02:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,336,1624345200"; d="scan'208";a="709182991"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga005.fm.intel.com with ESMTP; 30 Sep 2021 11:02:31 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 30 Sep 2021 11:02:31 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 30 Sep 2021 11:02:30 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Thu, 30 Sep 2021 11:02:30 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v2 4/9] drm/i915/display: Handle frontbuffer rendering
 when PSR2 selective fetch is enabled
Thread-Index: AQHXtY9NQhCLMVYrnUO/241k5q1zz6u8oLIAgAC104A=
Date: Thu, 30 Sep 2021 18:02:30 +0000
Message-ID: <4add282e2232deef77a493afc4505f4e9b546463.camel@intel.com>
References: <20210930001409.254817-1-jose.souza@intel.com>
 <20210930001409.254817-4-jose.souza@intel.com>
 <7ce77c14-fd7a-95bb-c2aa-f1690fcb4d05@intel.com>
In-Reply-To: <7ce77c14-fd7a-95bb-c2aa-f1690fcb4d05@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <34C75A46023BDA49A67AFF37EC2EA658@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 4/9] drm/i915/display: Handle frontbuffer
 rendering when PSR2 selective fetch is enabled
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

T24gVGh1LCAyMDIxLTA5LTMwIGF0IDEwOjE3ICswMzAwLCBHd2FuLWd5ZW9uZyBNdW4gd3JvdGU6
DQo+IA0KPiBPbiA5LzMwLzIxIDM6MTQgQU0sIEpvc8OpIFJvYmVydG8gZGUgU291emEgd3JvdGU6
DQo+ID4gV2hlbiBQU1IyIHNlbGVjdGl2ZSBmZXRjaCBpcyBlbmFibGVkIHdyaXRlcyB0byBDVVJT
VVJGTElWRSBhbG9uZSBkbw0KPiA+IG5vdCBjYXVzZXMgdGhlIHBhbmVsIHRvIGJlIHVwZGF0ZWQg
d2hlbiBkb2luZyBmcm9udGJ1ZmZlciByZW5kZXJpbmcuDQo+ID4gDQo+ID4gIEZyb20gd2hhdCBJ
IHdhcyBhYmxlIHRvIGZpZ3VyZSBmcm9tIGV4cGVyaW1lbnRzIHRoZSB3cml0ZXMgdG8NCj4gPiBD
VVJTVVJGTElWRSB0YWtlcyBQU1IyIGZyb20gZGVlcCBzbGVlcCBidXQgcGFuZWwgaXMgbm90IHVw
ZGF0ZWQNCj4gPiBiZWNhdXNlIFBTUjJfTUFOX1RSS19DVEwgaGFzIG5vIHN0YXJ0IGFuZCBlbmQg
cmVnaW9uIHNldC4NCj4gPiANCj4gPiBBcyB3ZSBkb24ndCBoYXZlIHRoZSBkaXJ0IGFyZWEgZnJv
bSBjdXJyZW50IGZsdXNoIGFuZCBpbnZhbGlkYXRlIEFQSQ0KPiA+IGFuZCBldmVuIGlmIHdlIGRp
ZCB1c2Vyc3BhY2UgY291bGQgZG8gc2V2ZXJhbCBkcmF3cyB0byBmcm9udGJ1ZmZlciBhbmQNCj4g
PiB3ZSB3b3VsZCBuZWVkIGEgd2F5IHRvIGFwcGVuZCBhbGwgdGhlIGRhbWFnZWQgYXJlYXMgb2Yg
YWxsIHRoZSBkcmF3cw0KPiA+IHRoYXQgbmVlZCB0byBiZSBwYXJ0IG9mIG5leHQgZnJhbWUuDQo+
ID4gDQo+ID4gU28gaGVyZSBvbmx5IHByb2dyYW1pbmcgUFNSMl9NQU5fVFJLX0NUTCB0byBkbyBh
IHNpbmdsZSBmdWxsIGZyYW1lDQo+ID4gZmV0Y2guDQo+ID4gDQo+ID4gSXQgaXMgYSBzYWZlIGFw
cHJvYWNoIGFzIGlmIHNjYW5vdXQgaXMgaW4gdGhlIHZpc2libGUgYXJlYQ0KPiA+IHRoZSBzaW5n
bGUgZnVsbCBmcmFtZSB3aWxsIG9ubHkgYmUgdmlzaWJsZSBmb3IgaGFyZHdhcmUgaW4gdGhlIG5l
eHQNCj4gPiBmcmFtZSBiZWNhdXNlIG9mIHRoZSBkb3VibGUgYnVmZmVyaW5nLCBhbmQgaWYgc2Nh
bm91dCBpcyBpbiB2YmxhbmsNCj4gPiBhcmVhIGl0IHdpbGwgYmUgZHJhdyBpbiB0aGUgY3VycmVu
dCBmcmFtZS4NCj4gPiANCj4gPiBObyBuZWVkIHRvIGRpc2FibGUgUFNSIGFuZCB3YWl0IGEgZmV3
IG1pbGlzZWNvbmRzIHRvIGVuYWJsZSBpdCBhZ2Fpbi4NCj4gPiANCj4gPiBDYzogR3dhbi1neWVv
bmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPg0KPiA+IENjOiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEpv
c8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+
ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDEyICsrKysrKysr
KysrKw0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKykNCj4gPiANCj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBpbmRleCA4NTM0Y2Ji
MGQ1MTQ0Li43MTg1ODAxZDVkZWZmIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gQEAgLTEzOTcsMTAgKzEzOTcsMjIgQEAgdm9pZCBpbnRl
bF9wc3JfcmVzdW1lKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ID4gICAJbXV0ZXhfdW5s
b2NrKCZwc3ItPmxvY2spOw0KPiA+ICAgfQ0KPiA+ICAgDQo+ID4gK3N0YXRpYyBpbmxpbmUgdTMy
IG1hbl90cmtfY3RsX3NpbmdsZV9mdWxsX2ZyYW1lX2JpdF9nZXQoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KQ0KPiA+ICt7DQo+ID4gKwlyZXR1cm4gSVNfQUxERVJMQUtFX1AoZGV2
X3ByaXYpID8NCj4gPiArCSAgICAgICBBRExQX1BTUjJfTUFOX1RSS19DVExfU0ZfU0lOR0xFX0ZV
TExfRlJBTUUgOg0KPiA+ICsJICAgICAgIFBTUjJfTUFOX1RSS19DVExfU0ZfU0lOR0xFX0ZVTExf
RlJBTUU7DQo+ID4gK30NCj4gPiArDQo+ID4gICBzdGF0aWMgdm9pZCBwc3JfZm9yY2VfaHdfdHJh
Y2tpbmdfZXhpdChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiA+ICAgew0KPiA+ICAgCXN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOw0K
PiA+ICAgDQo+ID4gKwlpZiAoaW50ZWxfZHAtPnBzci5wc3IyX3NlbF9mZXRjaF9lbmFibGVkKQ0K
PiA+ICsJCWludGVsX2RlX3JtdyhkZXZfcHJpdiwNCj4gPiArCQkJICAgICBQU1IyX01BTl9UUktf
Q1RMKGludGVsX2RwLT5wc3IudHJhbnNjb2RlciksIDAsDQo+ID4gKwkJCSAgICAgbWFuX3Rya19j
dGxfc2luZ2xlX2Z1bGxfZnJhbWVfYml0X2dldChkZXZfcHJpdikpOw0KPiA+ICsNCj4gPiAgIAkv
Kg0KPiA+ICAgCSAqIERpc3BsYXkgV0EgIzA4ODQ6IHNrbCsNCj4gVGhlIGZvbGxvd2luZyBkZXRh
aWxzIGlzIGRlc2NyaWJlZCBpbiB0aGUgZGVzY3JpcHRpb24gcmVsYXRlZCB0byBEaXNwbGF5IA0K
PiBXQSAjMDg4NCwgc28gSSB0aGluayBpdCBtYXRjaGVzIHRoZSBjb21taXQgbWVzc2FnZSBkZXNj
cmliZWQgYWJvdmUuDQo+ICAgOiBEcml2ZXIgdG8gaXNzdWUgYSBmbGlwIHdoZW5ldmVyIGEgaG9z
dCBtb2RpZnkgb2NjdXJzLiBUaGlzIGVuc3VyZXMgDQo+IFBTUiBleGl0cyBpdHMgc2xlZXAgc3Rh
dGUgZHVyaW5nIGEgaG9zdCBtb2RpZnkgZXZlbnQuDQo+IA0KPiBIb3dldmVyLCBpdCBpcyBub3Qg
Y2xlYXJseSBzdGF0ZWQgd2hldGhlciB0aGlzIFdBIyB3aWxsIGFsc28gYWZmZWN0IA0KPiBHRU4x
MisuIFNpbmNlIHRoZXJlIGlzIGEgcG9zc2liaWxpdHkgdGhhdCBpdCBtYXkgbm90IHdvcmsgbm9y
bWFsbHkgaW4gSFcgDQo+IHRoYXQgd2lsbCBiZSByZWxlYXNlZCBsYXRlciwgaWYgeW91IGRvbid0
IG1pbmQgY291bGQgeW91IHBsZWFzZSBsZWF2ZSBhIA0KPiBjb21tZW50IHRoYXQgdGhpcyBvcGVy
YXRpb24gaGFzIGJlZW4gY29uZmlybWVkIGluIEFETFA/DQoNClllcCwgdGhlcmUgaXMgbm8gb2Zm
aWNpYWwgd29ya2Fyb3VuZCBmb3IgcGxhdGZvcm1zIGFmdGVyIGRpc3BsYXkgOSBidXQgaXQgaXMg
YmVpbmcgd29ya2luZyBzbyBmYXIuDQpXaWxsIGluY2x1ZGUgdG8gdGhlIGNvbW1lbnQgdGhhdCBp
dCBuZWVkcyB0byBiZSBtYW51YWxseSB0ZXN0ZWQgZm9yIGZ1dHVyZSBwbGF0Zm9ybXMuDQoNCj4g
DQo+IFJldmlld2VkLWJ5OiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5j
b20+DQo+ID4gICAJICogVGhpcyBkb2N1bWVudGVkIFdBIGZvciBieHQgY2FuIGJlIHNhZmVseSBh
cHBsaWVkDQo+ID4gDQoNCg==
