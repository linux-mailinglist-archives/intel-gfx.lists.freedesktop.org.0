Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ACD63E1E14
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Aug 2021 23:47:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EE066EB60;
	Thu,  5 Aug 2021 21:47:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 841AD6EB60
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Aug 2021 21:47:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10067"; a="193852409"
X-IronPort-AV: E=Sophos;i="5.84,296,1620716400"; d="scan'208";a="193852409"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2021 14:47:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,296,1620716400"; d="scan'208";a="437949715"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 05 Aug 2021 14:47:20 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 5 Aug 2021 14:47:20 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 5 Aug 2021 14:47:19 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.010;
 Thu, 5 Aug 2021 14:47:19 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 4/4] DO_NOT_MERGE: drm/i915/display: Enable
 PSR2 selective fetch by default
Thread-Index: AQHXhZ/TYYAYurSVXUWj36lC0Mpc1atiHG+AgABmJwCAAzZXAIAAOWgA
Date: Thu, 5 Aug 2021 21:47:19 +0000
Message-ID: <b5f44963ce603ef0864bc55c0fe97d5fccfb119b.camel@intel.com>
References: <20210731001019.150373-1-jose.souza@intel.com>
 <20210731001019.150373-4-jose.souza@intel.com>
 <c0055e67-2841-0ef9-c18f-d60e9e186897@intel.com>
 <c30de5129bec44f07238d2e8906c031820a5e36d.camel@intel.com>
 <701ae0b8-7e24-de5a-286d-e12bc0a44a07@intel.com>
In-Reply-To: <701ae0b8-7e24-de5a-286d-e12bc0a44a07@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <606BD78DF77C8C4EAFE8690A056ECDF0@intel.com>
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

T24gVGh1LCAyMDIxLTA4LTA1IGF0IDIxOjI2ICswMzAwLCBHd2FuLWd5ZW9uZyBNdW4gd3JvdGU6
DQo+IA0KPiBPbiA4LzMvMjEgODoxOCBQTSwgU291emEsIEpvc2Ugd3JvdGU6DQo+ID4gT24gVHVl
LCAyMDIxLTA4LTAzIGF0IDE0OjE3ICswMzAwLCBHd2FuLWd5ZW9uZyBNdW4gd3JvdGU6DQo+ID4g
PiANCj4gPiA+IE9uIDcvMzEvMjEgMzoxMCBBTSwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3cm90
ZToNCj4gPiA+ID4gT25seSB0byBleGVjdXRlIHRlc3RzIHdpdGggUFNSMiBzZWxlY3RpdmUgZmV0
Y2ggZW5hYmxlZCBhbmQgY2hlY2sgd2hhdA0KPiA+ID4gPiBpcyBicm9rZW4uDQo+ID4gPiA+IA0K
PiA+ID4gPiBJR1QgdGVzdHMga25vdyB0byBmYWlsIHdpdGggdGhpczoNCj4gPiA+ID4gLSBrbXNf
Y3Vyc29yX2xlZ2FjeTogYWxsIHRlc3RzIHRoYXQgY2hlY2tzIGlmIGV2YXNpb24gaGFwcGVuZCwg
SSBoYXZlDQo+ID4gPiA+IGZpeCBmb3IgaXQgbWFraW5nIGN1cnNvcl9zbG93cGF0aCgpIHJldHVy
bnMgdHJ1ZSBmb3IgZGlzcGxheSAxMisuDQo+ID4gPiA+IA0KPiA+ID4gPiAtIGttc19wc3IyX3N1
OiBUaGUgcGFnZWZsaXAgdGVzdCwgaXQgbmVlZHMgdG8gaGF2ZSB0aGUgZGFtYWdlIGNsaXAgc2V0
DQo+ID4gPiA+IG90aGVyd2lzZSBpdCB3aWxsIHVwZGF0ZSB0aGUgd2hvbGUgc2NyZWVuIGFuZCB0
aGUgc2VsZWN0aXZlIGJsb2Nrcw0KPiA+ID4gPiB3aWxsIG5vdCBtYXRjaCB3aXRoIGV4cGVjdGVk
Lg0KPiA+ID4gPiANCj4gPiA+IGttc19wc3IyX3N1IGlzIGEgdGVzdCBjYXNlIGZvciBpbnRlbCBQ
U1IyIEhXIHRyYWNraW5nIGFuZCBrbXNfcHNyMl9zZiBpcw0KPiA+ID4gdXNlZCBhcyBhIHRlc3Qg
Zm9yIGludGVsIFBTUjIgbWFudWFsIHRyYWNraW5nLiBJcyBpdCBuZWNlc3NhcnkgdG8gbW9kaWZ5
DQo+ID4gPiBrbXNfcHNyMl9zdSBmb3IgdGVzdGluZyBQU1IyIG1hbnVhbCB0cmFja2luZz8NCj4g
PiANCj4gPiBrbXNfcHNyMl9zdSBpcyB0byB0ZXN0IHRoYXQgUFNSMiBpcyBzZW5kaW5nIHNlbGVj
dGl2ZSB1cGRhdGVzLCBqdXN0IGFkZGluZyBhIGNvdXBsZSBvZiBsaW5lcyB3ZSBjYW4gbWFrZSBp
dCB3b3JrIHdpdGggc2VsZWN0aXZlIGZldGNoLg0KPiA+IA0KPiA+ID4gPiAtIGttc19wc3I6IHBz
cjJfKl8obW1hcF9ndHQsIG1tYXBfY3B1LCBibHQgYW5kIHJlbmRlciksIGFsbCB0aG9zZQ0KPiA+
ID4gPiB0ZXN0cyBzaG91bGQgYmUgZHJvcHBlZCBvciBza2lwcGVkIGZvciBkaXNwbGF5IDEyKy4N
Cj4gPiA+ID4gDQo+ID4gPiBDb3VsZCB5b3UgZXhwbGFpbiBpbiBtb3JlIGRldGFpbCB3aHkgd2Ug
bmVlZCB0byBza2lwIG9uIGRpc3BsYXkgMTIrPw0KPiA+IA0KPiA+IFRoaXMgYXJlIHN0dWZmIHRo
YXQgd291bGQgZW5kIHVwIGNhbGxpbmcgaW50ZWxfcHNyX2ludmFsaWRhdGUvZmx1c2goKS4NCj4g
PiANCj4gDQo+IFRoYW5rcyBmb3IgdGhlIGV4cGxhbmF0aW9uLg0KPiBBbmQgdGhlcmUgaXMgYW4g
aXNzdWUgY29uZmlybWVkIGluIGxvY2FsIHRlc3RzLCBzbyBJIGxlYXZlIGFkZGl0aW9uYWwgDQo+
IGNvbW1lbnRzLg0KPiA+ID4gDQo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8g
ZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiA+ID4gPiAtLS0NCj4gPiA+ID4gICAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDkgLS0tLS0tLS0tDQo+
ID4gPiA+ICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmggICAgICAgfCAyICst
DQo+ID4gPiA+ICAgIDIgZmlsZXMgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEwIGRlbGV0aW9u
cygtKQ0KPiA+ID4gPiANCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jDQo+ID4gPiA+IGluZGV4IDg5NGEyZDM1NjY4YTIuLmUxMjhmMGMyYWVlY2MgMTAwNjQ0
DQo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMN
Cj4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0K
PiA+ID4gPiBAQCAtODc3LDE1ICs4NzcsNiBAQCBzdGF0aWMgYm9vbCBpbnRlbF9wc3IyX2NvbmZp
Z192YWxpZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+ID4gPiAgICByZXR1cm4gZmFs
c2U7DQo+ID4gPiA+ICAgIH0NCj4gPiA+ID4gDQo+ID4gPiA+IC0vKg0KPiA+ID4gPiAtICogV2Ug
YXJlIG1pc3NpbmcgdGhlIGltcGxlbWVudGF0aW9uIG9mIHNvbWUgd29ya2Fyb3VuZHMgdG8gZW5h
YmxlZCBQU1IyDQo+ID4gPiA+IC0gKiBpbiBBbGRlcmxha2VfUCwgdW50aWwgcmVhZHkgUFNSMiBz
aG91bGQgYmUga2VwdCBkaXNhYmxlZC4NCj4gPiA+ID4gLSAqLw0KPiA+ID4gPiAtaWYgKElTX0FM
REVSTEFLRV9QKGRldl9wcml2KSkgew0KPiA+ID4gPiAtZHJtX2RiZ19rbXMoJmRldl9wcml2LT5k
cm0sICJQU1IyIGlzIG1pc3NpbmcgdGhlIGltcGxlbWVudGF0aW9uIG9mIHdvcmthcm91bmRzXG4i
KTsNCj4gPiA+ID4gLXJldHVybiBmYWxzZTsNCj4gPiA+ID4gLX0NCj4gPiA+ID4gLQ0KPiA+ID4g
PiAgICBpZiAoIXRyYW5zY29kZXJfaGFzX3BzcjIoZGV2X3ByaXYsIGNydGNfc3RhdGUtPmNwdV90
cmFuc2NvZGVyKSkgew0KPiA+ID4gPiAgICBkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwNCj4g
PiA+ID4gICAgICAgICJQU1IyIG5vdCBzdXBwb3J0ZWQgaW4gdHJhbnNjb2RlciAlc1xuIiwNCj4g
PiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmggYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oDQo+ID4gPiA+IGluZGV4IGYyN2VjZWI4
MmMwZjUuLjhkNzI1YjY0NTkyZDggMTAwNjQ0DQo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcGFyYW1zLmgNCj4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9wYXJhbXMuaA0KPiA+ID4gPiBAQCAtNTUsNyArNTUsNyBAQCBzdHJ1Y3QgZHJtX3ByaW50
ZXI7DQo+ID4gPiA+ICAgIHBhcmFtKGludCwgZW5hYmxlX2ZiYywgLTEsIDA2MDApIFwNCj4gPiA+
ID4gICAgcGFyYW0oaW50LCBlbmFibGVfcHNyLCAtMSwgMDYwMCkgXA0KPiA+ID4gPiAgICBwYXJh
bShib29sLCBwc3Jfc2FmZXN0X3BhcmFtcywgZmFsc2UsIDA0MDApIFwNCj4gPiA+ID4gLXBhcmFt
KGJvb2wsIGVuYWJsZV9wc3IyX3NlbF9mZXRjaCwgZmFsc2UsIDA0MDApIFwNCj4gPiA+ID4gK3Bh
cmFtKGJvb2wsIGVuYWJsZV9wc3IyX3NlbF9mZXRjaCwgdHJ1ZSwgMDQwMCkgXA0KPiBJZiB3ZSBk
byBub3QgbW9kaWZ5IHRoaXMgcGFydCBhbmQgZG8gbm90IGVuYWJsZSBpdCBieSBkZWZhdWx0IGF0
IGJvb3QgDQo+IHRpbWUgYXMgc2hvd24gaW4gdGhlIG9yaWdpbmFsIGNvZGUgYmVsb3csDQo+IHBh
cmFtKGJvb2wsIGVuYWJsZV9wc3IyX3NlbF9mZXRjaCwgZmFsc2UsIDA0MDApIFwNCj4gDQo+IHdo
ZW4gd2UgZXhlY3V0ZSB0aGUga21zX3BzcjJfc2YgdGVzdCBjYXNlIG9mIGlndCwgdGhlIEZJRk8g
dW5kZXJydW4gYXMgDQo+IGJlbG93IHN0aWxsIG9jY3Vycy4NCj4gDQo+IGk5MTUgMDAwMDowMDow
Mi4wOiBbZHJtXSAqRVJST1IqIENQVSBwaXBlIEEgRklGTyB1bmRlcnJ1bjogcG9ydCx0cmFuc2Nv
ZGVyLA0KPiANCj4gV2hlbiBQU1IyIHBhbmVsIGlzIHVzZWQsIFBTUjEgaXMgZW5hYmxlZCBieSBk
ZWZhdWx0IHdoZW4gDQo+IGVuYWJsZV9wc3IyX3NlbF9mZXRjaCBpcyBub3QgZW5hYmxlZCBieSBk
ZWZhdWx0Lg0KPiBBbmQgd2hlbiBrbXNfcHNyMl9zZiBpcyBleGVjdXRlZCwgdGhlIG1vZGUgaXMg
Y2hhbmdlZCB0byBQU1IyLCBhbmQgd2hlbiANCj4ga21zX3BzcjJfc2YgaXMgdGVybWluYXRlZCwg
UFNSMiBpcyBkZWFjdGl2YXRlZCBhbmQgUFNSMSBpcyByZS1lbmFibGVkLiANCj4gQXQgdGhpcyBw
b2ludC4gSSBzdXNwZWN0IHRoZXJlIGlzIGEgcHJvYmxlbS4NCg0KV2FzIGFibGUgdG8gcmVwcm9k
dWNlIHRoaXMgZXZlbiB3aXRoIGVuYWJsZV9wc3IyX3NlbF9mZXRjaCBzZXQgdG8gdHJ1ZS4NCkFk
ZGVkIHNvbWUgZGVidWcgbWVzc2FnZXMgdG8gaW50ZWxfcHNyX2V4aXQoKSBhbmQgaW50ZWxfcHNy
X2FjdGl2YXRlKCkgYW5kIHRob3NlIGZ1bmN0aW9ucyBhcmUgbm90IGNhbGxlZCBhbmQgdGhlIHVu
ZGVycnVuIHN0aWxsIGhhcHBlbnMuDQoNCkNvdWxkIGJlIGEgcmVncmVzc2lvbiByZWNlbnRseSBp
bnRyb2R1Y2VkIGJlY2F1c2UgSSB3YXMgbm90IHNlZWluZyB0aGlzIHVuZGVycnVuIGEgZmV3IHdl
ZWtzIGFnby4NCkFueXdheXMgdGhpcyB1bmRlcnJ1biBoYXBwZW5zIHdpdGggYW5kIHdpdGhvdXQo
anVzdCBkb2luZyB0aGUgY2hhbmdlcyB0byBhbGxvdyBQU1IyIGluIGFsZGVybGFrZS1QIGluIGlu
dGVsX3BzcjJfY29uZmlnX3ZhbGlkKCkpIHRoaXMgcGF0Y2hlcy4NCg0KPiANCj4gPiA+ID4gICAg
cGFyYW0oaW50LCBkaXNhYmxlX3Bvd2VyX3dlbGwsIC0xLCAwNDAwKSBcDQo+ID4gPiA+ICAgIHBh
cmFtKGludCwgZW5hYmxlX2lwcywgMSwgMDYwMCkgXA0KPiA+ID4gPiAgICBwYXJhbShpbnQsIGlu
dmVydF9icmlnaHRuZXNzLCAwLCAwNjAwKSBcDQo+ID4gPiA+IA0KPiA+IA0KDQo=
