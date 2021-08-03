Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A873D3DF3CB
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Aug 2021 19:18:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDB6C6E8A5;
	Tue,  3 Aug 2021 17:18:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEEE06E8AC
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Aug 2021 17:18:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10065"; a="213773652"
X-IronPort-AV: E=Sophos;i="5.84,292,1620716400"; d="scan'208";a="213773652"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2021 10:18:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,292,1620716400"; d="scan'208";a="458347996"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga007.jf.intel.com with ESMTP; 03 Aug 2021 10:18:38 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 3 Aug 2021 10:18:38 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 3 Aug 2021 10:18:38 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.010;
 Tue, 3 Aug 2021 10:18:38 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 4/4] DO_NOT_MERGE: drm/i915/display: Enable
 PSR2 selective fetch by default
Thread-Index: AQHXhZ/TYYAYurSVXUWj36lC0Mpc1atiHG+AgABmJwA=
Date: Tue, 3 Aug 2021 17:18:37 +0000
Message-ID: <c30de5129bec44f07238d2e8906c031820a5e36d.camel@intel.com>
References: <20210731001019.150373-1-jose.souza@intel.com>
 <20210731001019.150373-4-jose.souza@intel.com>
 <c0055e67-2841-0ef9-c18f-d60e9e186897@intel.com>
In-Reply-To: <c0055e67-2841-0ef9-c18f-d60e9e186897@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <8BBCD9AC1B4D6A41B6FC5015951A0B28@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/4] DO_NOT_MERGE: drm/i915/display: Enable
 PSR2 selective fetch by default
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

T24gVHVlLCAyMDIxLTA4LTAzIGF0IDE0OjE3ICswMzAwLCBHd2FuLWd5ZW9uZyBNdW4gd3JvdGU6
DQo+IA0KPiBPbiA3LzMxLzIxIDM6MTAgQU0sIEpvc8OpIFJvYmVydG8gZGUgU291emEgd3JvdGU6
DQo+ID4gT25seSB0byBleGVjdXRlIHRlc3RzIHdpdGggUFNSMiBzZWxlY3RpdmUgZmV0Y2ggZW5h
YmxlZCBhbmQgY2hlY2sgd2hhdA0KPiA+IGlzIGJyb2tlbi4NCj4gPiANCj4gPiBJR1QgdGVzdHMg
a25vdyB0byBmYWlsIHdpdGggdGhpczoNCj4gPiAtIGttc19jdXJzb3JfbGVnYWN5OiBhbGwgdGVz
dHMgdGhhdCBjaGVja3MgaWYgZXZhc2lvbiBoYXBwZW5kLCBJIGhhdmUNCj4gPiBmaXggZm9yIGl0
IG1ha2luZyBjdXJzb3Jfc2xvd3BhdGgoKSByZXR1cm5zIHRydWUgZm9yIGRpc3BsYXkgMTIrLg0K
PiA+IA0KPiA+IC0ga21zX3BzcjJfc3U6IFRoZSBwYWdlZmxpcCB0ZXN0LCBpdCBuZWVkcyB0byBo
YXZlIHRoZSBkYW1hZ2UgY2xpcCBzZXQNCj4gPiBvdGhlcndpc2UgaXQgd2lsbCB1cGRhdGUgdGhl
IHdob2xlIHNjcmVlbiBhbmQgdGhlIHNlbGVjdGl2ZSBibG9ja3MNCj4gPiB3aWxsIG5vdCBtYXRj
aCB3aXRoIGV4cGVjdGVkLg0KPiA+IA0KPiBrbXNfcHNyMl9zdSBpcyBhIHRlc3QgY2FzZSBmb3Ig
aW50ZWwgUFNSMiBIVyB0cmFja2luZyBhbmQga21zX3BzcjJfc2YgaXMgDQo+IHVzZWQgYXMgYSB0
ZXN0IGZvciBpbnRlbCBQU1IyIG1hbnVhbCB0cmFja2luZy4gSXMgaXQgbmVjZXNzYXJ5IHRvIG1v
ZGlmeSANCj4ga21zX3BzcjJfc3UgZm9yIHRlc3RpbmcgUFNSMiBtYW51YWwgdHJhY2tpbmc/DQoN
Cmttc19wc3IyX3N1IGlzIHRvIHRlc3QgdGhhdCBQU1IyIGlzIHNlbmRpbmcgc2VsZWN0aXZlIHVw
ZGF0ZXMsIGp1c3QgYWRkaW5nIGEgY291cGxlIG9mIGxpbmVzIHdlIGNhbiBtYWtlIGl0IHdvcmsg
d2l0aCBzZWxlY3RpdmUgZmV0Y2guDQoNCj4gPiAtIGttc19wc3I6IHBzcjJfKl8obW1hcF9ndHQs
IG1tYXBfY3B1LCBibHQgYW5kIHJlbmRlciksIGFsbCB0aG9zZQ0KPiA+IHRlc3RzIHNob3VsZCBi
ZSBkcm9wcGVkIG9yIHNraXBwZWQgZm9yIGRpc3BsYXkgMTIrLg0KPiA+IA0KPiBDb3VsZCB5b3Ug
ZXhwbGFpbiBpbiBtb3JlIGRldGFpbCB3aHkgd2UgbmVlZCB0byBza2lwIG9uIGRpc3BsYXkgMTIr
Pw0KDQpUaGlzIGFyZSBzdHVmZiB0aGF0IHdvdWxkIGVuZCB1cCBjYWxsaW5nIGludGVsX3Bzcl9p
bnZhbGlkYXRlL2ZsdXNoKCkuDQoNCj4gDQo+ID4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0
byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgOSAtLS0tLS0tLS0NCj4gPiAgIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmggICAgICAgfCAyICstDQo+ID4gICAyIGZp
bGVzIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxMCBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBpbmRleCA4OTRhMmQz
NTY2OGEyLi5lMTI4ZjBjMmFlZWNjIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gQEAgLTg3NywxNSArODc3LDYgQEAgc3RhdGljIGJvb2wg
aW50ZWxfcHNyMl9jb25maWdfdmFsaWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiAg
IAkJcmV0dXJuIGZhbHNlOw0KPiA+ICAgCX0NCj4gPiAgIA0KPiA+IC0JLyoNCj4gPiAtCSAqIFdl
IGFyZSBtaXNzaW5nIHRoZSBpbXBsZW1lbnRhdGlvbiBvZiBzb21lIHdvcmthcm91bmRzIHRvIGVu
YWJsZWQgUFNSMg0KPiA+IC0JICogaW4gQWxkZXJsYWtlX1AsIHVudGlsIHJlYWR5IFBTUjIgc2hv
dWxkIGJlIGtlcHQgZGlzYWJsZWQuDQo+ID4gLQkgKi8NCj4gPiAtCWlmIChJU19BTERFUkxBS0Vf
UChkZXZfcHJpdikpIHsNCj4gPiAtCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwgIlBTUjIg
aXMgbWlzc2luZyB0aGUgaW1wbGVtZW50YXRpb24gb2Ygd29ya2Fyb3VuZHNcbiIpOw0KPiA+IC0J
CXJldHVybiBmYWxzZTsNCj4gPiAtCX0NCj4gPiAtDQo+ID4gICAJaWYgKCF0cmFuc2NvZGVyX2hh
c19wc3IyKGRldl9wcml2LCBjcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2RlcikpIHsNCj4gPiAgIAkJ
ZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sDQo+ID4gICAJCQkgICAgIlBTUjIgbm90IHN1cHBv
cnRlZCBpbiB0cmFuc2NvZGVyICVzXG4iLA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3BhcmFtcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMu
aA0KPiA+IGluZGV4IGYyN2VjZWI4MmMwZjUuLjhkNzI1YjY0NTkyZDggMTAwNjQ0DQo+ID4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaA0KPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmgNCj4gPiBAQCAtNTUsNyArNTUsNyBAQCBzdHJ1Y3Qg
ZHJtX3ByaW50ZXI7DQo+ID4gICAJcGFyYW0oaW50LCBlbmFibGVfZmJjLCAtMSwgMDYwMCkgXA0K
PiA+ICAgCXBhcmFtKGludCwgZW5hYmxlX3BzciwgLTEsIDA2MDApIFwNCj4gPiAgIAlwYXJhbShi
b29sLCBwc3Jfc2FmZXN0X3BhcmFtcywgZmFsc2UsIDA0MDApIFwNCj4gPiAtCXBhcmFtKGJvb2ws
IGVuYWJsZV9wc3IyX3NlbF9mZXRjaCwgZmFsc2UsIDA0MDApIFwNCj4gPiArCXBhcmFtKGJvb2ws
IGVuYWJsZV9wc3IyX3NlbF9mZXRjaCwgdHJ1ZSwgMDQwMCkgXA0KPiA+ICAgCXBhcmFtKGludCwg
ZGlzYWJsZV9wb3dlcl93ZWxsLCAtMSwgMDQwMCkgXA0KPiA+ICAgCXBhcmFtKGludCwgZW5hYmxl
X2lwcywgMSwgMDYwMCkgXA0KPiA+ICAgCXBhcmFtKGludCwgaW52ZXJ0X2JyaWdodG5lc3MsIDAs
IDA2MDApIFwNCj4gPiANCg0K
