Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 14C5C168804
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 21:01:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BC176E12C;
	Fri, 21 Feb 2020 20:01:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F12F86E12C
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 20:01:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Feb 2020 12:01:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,469,1574150400"; d="scan'208";a="283804812"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
 by FMSMGA003.fm.intel.com with ESMTP; 21 Feb 2020 12:01:39 -0800
Received: from irsmsx601.ger.corp.intel.com (163.33.146.7) by
 IRSMSX104.ger.corp.intel.com (163.33.3.159) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 21 Feb 2020 19:59:17 +0000
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 21 Feb 2020 19:59:17 +0000
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.1713.004;
 Fri, 21 Feb 2020 19:59:17 +0000
From: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH v3] drm/i915/psr: Force PSR probe only after full
 initialization
Thread-Index: AQHV5ptpBytFDx7QLEi0aBDTaf855qgkCG2AgACKkoCAATv7gIAAKZqAgAAc/wA=
Date: Fri, 21 Feb 2020 19:59:17 +0000
Message-ID: <c72f9993c5e653c76da8520c6a13e320209c9820.camel@intel.com>
References: <20200218203916.58636-1-jose.souza@intel.com>
 <d6bf9b47a2d88437d6e81f43bcac27305ab1ce19.camel@intel.com>
 <fb8d93effa6f6e0512dc51902ccd2357b5edaf91.camel@intel.com>
 <e22e5bc69901582f73aa0ead42e8c9a678e2f53b.camel@intel.com>
 <f50197bf19dee8bed6a7e0f45aca72f440c26d1a.camel@intel.com>
In-Reply-To: <f50197bf19dee8bed6a7e0f45aca72f440c26d1a.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.66.160]
Content-ID: <1330933B11F04045B8C66A5E0CFE23A8@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/psr: Force PSR probe only after
 full initialization
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "zwisler@google.com" <zwisler@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIwLTAyLTIxIGF0IDEwOjE1IC0wODAwLCBTb3V6YSwgSm9zZSB3cm90ZToNCj4g
T24gRnJpLCAyMDIwLTAyLTIxIGF0IDE1OjQ2ICswMDAwLCBNdW4sIEd3YW4tZ3llb25nIHdyb3Rl
Og0KPiA+IE9uIFRodSwgMjAyMC0wMi0yMCBhdCAxMjo1NSAtMDgwMCwgU291emEsIEpvc2Ugd3Jv
dGU6DQo+ID4gPiBPbiBUaHUsIDIwMjAtMDItMjAgYXQgMTI6MzkgKzAwMDAsIE11biwgR3dhbi1n
eWVvbmcgd3JvdGU6DQo+ID4gPiA+IE9uIFR1ZSwgMjAyMC0wMi0xOCBhdCAxMjozOSAtMDgwMCwg
Sm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3cm90ZToNCj4gPiA+ID4gPiBDb21taXQgNjBjNmExNGI0
ODliICgiZHJtL2k5MTUvZGlzcGxheTogRm9yY2UgdGhlIHN0YXRlDQo+ID4gPiA+ID4gY29tcHV0
ZQ0KPiA+ID4gPiA+IHBoYXNlDQo+ID4gPiA+ID4gb25jZSB0byBlbmFibGUgUFNSIikgd2FzIGZv
cmNpbmcgdGhlIHN0YXRlIGNvbXB1dGUgdG9vDQo+ID4gPiA+ID4gZWFybGllcg0KPiA+ID4gPiA+
IGNhdXNpbmcgZXJyb3JzIGJlY2F1c2Ugbm90IGV2ZXJ5dGhpbmcgd2FzIGluaXRpYWxpemVkLCBz
bw0KPiA+ID4gPiA+IGhlcmUNCj4gPiA+ID4gPiBtb3ZpbmcgdG8gaTkxNV9kcml2ZXJfcmVnaXN0
ZXIoKSB3aGVuIGV2ZXJ5dGhpbmcgaXMgcmVhZHkgYW5kDQo+ID4gPiA+ID4gZHJpdmVyDQo+ID4g
PiA+ID4gaXMgcmVnaXN0ZXJpbmcgaW50byB0aGUgcmVzdCBvZiB0aGUgc3lzdGVtLg0KPiA+ID4g
PiA+IA0KPiA+ID4gPiA+IEFsc28gZml4aW5nIHRoZSBwbGFjZSB3aGVyZSBpdCBkaXNhcm0gdGhl
IGZvcmNlIHByb2JlIGFzDQo+ID4gPiA+ID4gZHVyaW5nDQo+ID4gPiA+ID4gdGhlDQo+ID4gPiA+
ID4gYXRvbWljIGNoZWNrIHBoYXNlIGVycm9ycyBjb3VsZCBoYXBwZW4gbGlrZSB0aGUgb25lcyBk
dWUNCj4gPiA+ID4gPiBsb2NraW5nDQo+ID4gPiA+ID4gYW5kDQo+ID4gPiA+ID4gaXQgd291bGQg
Y2F1c2UgUFNSIHRvIG5ldmVyIGJlIGVuYWJsZWQgaWYgdGhhdCBoYXBwZW5zLg0KPiA+ID4gPiA+
IExlYXZpbmcgdGhlIGRpc2FybSB0byB0aGUgYXRvbWljIGNvbW1pdCBwaGFzZSwNCj4gPiA+ID4g
PiBpbnRlbF9wc3JfZW5hYmxlKCkNCj4gPiA+ID4gPiBvcg0KPiA+ID4gPiA+IGludGVsX3Bzcl91
cGRhdGUoKSB3aWxsIGJlIGNhbGxlZCBldmVuIGlmIHRoZSBjdXJyZW50IHN0YXRlDQo+ID4gPiA+
ID4gZG8NCj4gPiA+ID4gPiBub3QNCj4gPiA+ID4gPiBhbGxvdyBQU1IgdG8gYmUgZW5hYmxlZC4N
Cj4gPiA+ID4gPiANCj4gPiA+ID4gPiB2MjogQ2hlY2sgaWYgaW50ZWxfZHAgaXMgbnVsbCBpbg0K
PiA+ID4gPiA+IGludGVsX3Bzcl9mb3JjZV9tb2RlX2NoYW5nZWRfc2V0KCkNCj4gPiA+ID4gPiB2
MzogQ2hlY2sgaW50ZWxfZHAgYmVmb3JlIGdldCBkZXZfcHJpdg0KPiA+ID4gPiA+IA0KPiA+ID4g
PiA+IEZpeGVzOiA2MGM2YTE0YjQ4OWIgKCJkcm0vaTkxNS9kaXNwbGF5OiBGb3JjZSB0aGUgc3Rh
dGUNCj4gPiA+ID4gPiBjb21wdXRlDQo+ID4gPiA+ID4gcGhhc2UNCj4gPiA+ID4gPiBvbmNlIHRv
IGVuYWJsZSBQU1IiKQ0KPiA+ID4gPiA+IENsb3NlczogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0
b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvMTE1MQ0KPiA+ID4gPiA+IFRlc3RlZC1ieTogUm9zcyBa
d2lzbGVyIDx6d2lzbGVyQGdvb2dsZS5jb20+DQo+ID4gPiA+ID4gUmVwb3J0ZWQtYnk6IFJvc3Mg
Wndpc2xlciA8endpc2xlckBnb29nbGUuY29tPg0KPiA+ID4gPiA+IENjOiBHd2FuLWd5ZW9uZyBN
dW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+DQo+ID4gPiA+ID4gQ2M6IEphbmkgTmlrdWxh
IDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogSm9zw6kg
Um9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+ID4gPiA+ID4gLS0tDQo+
ID4gPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAyMg0K
PiA+ID4gPiA+ICsrKysrKysrKysrKysrKysrKysrLS0NCj4gPiA+ID4gPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaCB8ICAxICsNCj4gPiA+ID4gPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAgICAgICB8ICAzICsrKw0KPiA+ID4gPiA+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgIHwgIDIgKy0NCj4gPiA+ID4gPiAg
NCBmaWxlcyBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPiA+ID4g
PiA+IA0KPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jDQo+ID4gPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jDQo+ID4gPiA+ID4gaW5kZXggYjQ5NDJiNjQ0NWFlLi4yYTBmNzM1NGZiYTUgMTAw
NjQ0DQo+ID4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYw0KPiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMNCj4gPiA+ID4gPiBAQCAtOTM2LDYgKzkzNiw4IEBAIHZvaWQgaW50ZWxfcHNyX2VuYWJs
ZShzdHJ1Y3QgaW50ZWxfZHANCj4gPiA+ID4gPiAqaW50ZWxfZHAsDQo+ID4gPiA+ID4gIHsNCj4g
PiA+ID4gPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9DQo+ID4gPiA+ID4g
ZHBfdG9faTkxNShpbnRlbF9kcCk7DQo+ID4gPiA+ID4gIA0KPiA+ID4gPiA+ICsJaW50ZWxfcHNy
X2ZvcmNlX21vZGVfY2hhbmdlZF9zZXQoaW50ZWxfZHAsIGZhbHNlKTsNCj4gPiA+ID4gPiArDQo+
ID4gPiA+IEhpLA0KPiA+ID4gPiBpbnRlbF9wc3JfZW5hYmxlKCkgYW5kIGludGVsX3Bzcl91cGRh
dGUgYWxyZWFkeSBoYXZlIGNoZWNraW5nDQo+ID4gPiA+IHJvdXRpbmUNCj4gPiA+ID4gZm9yIENB
Tl9QU1IgYW5kIGhhc19wc3IuDQo+ID4gPiA+IHRoZXJlZm9yZSB3ZSBkb24ndCBuZWVkIHRvIGNo
ZWNrIHR3aWNlIGhlcmUuDQo+ID4gPiANCj4gPiA+IE1pbm9yIG92ZXJoZWFkIGJ1dCBpZiB5b3Ug
cmVhbGx5IHdhbnQgSSBjYW4gcmVtb3ZlIHRoZSBmdW5jdGlvbg0KPiA+ID4gY2FsbA0KPiA+ID4g
YW5kIGp1c3QgZG8gYSBkZXZfcHJpdi0+cHNyLmZvcmNlX21vZGVfY2hhbmdlZCA9IGZhbHNlOyBm
b3IgDQo+ID4gPiBpbnRlbF9wc3JfZW5hYmxlL3VwZGF0ZQ0KPiA+ID4gDQo+ID4gPiA+IEFuZCBp
ZiB0aGVyZSBhcmUgbm8gaXNzdWVzIHRoYXQgbW92aW5nICJkaXNhcm1pbmcNCj4gPiA+ID4gZm9y
Y2VfbW9kZV9jaGFuZ2VkIg0KPiA+ID4gPiB0byBpbnRlbF9wc3JfY29tcHV0ZV9jb25maWcoKSwg
DQo+ID4gPiA+IGNhbiB3ZSBtb3ZlIHRoZW0gdG8gaW50ZWxfcHNyX2NvbXB1dGVfY29uZmlnKCk/
DQo+ID4gPiANCj4gPiA+IGF0b21pYyBjaGVjayBjYW4gZmFpbCBhdCBhbnkgcG9pbnQgc28gd2Ug
Y291bGQgZGlzYXJtIHRoZQ0KPiA+ID4gbW9kZV9jaGFuZ2VkLA0KPiA+ID4gZmFpbCwgcmV0cnko
YmVjYXVzZSB0aGUgcmV0dXJuIHdhcyBFQUdBSU4pIGFuZCB0aGVuIFBTUiB3aWxsIG5vdA0KPiA+
ID4gYmUNCj4gPiA+IGVuYWJsZWQuDQo+ID4gPiANCj4gPiBJZiBkaXNhcm1pbmcgdGhlICJmb3Jj
ZV9tb2RlX2NoYW5nZWQiIHdvdWxkIGJlIGhhbmRsZWQgb24NCj4gPiBpbnRlbF9wc3JfY29tcHV0
ZV9jb25maWcoKSwNCj4gPiAoYWZ0ZXIgZmFpbGluZyBhdG9taWMgY2hlY2sgYW5kKXRoZSByZXRy
eSBzdGVwIHdpbGwgc2V0DQo+ID4gImNydGNfc3RhdGUtDQo+ID4gPiBtb2RlX2NoYW5nZWQgPSB0
cnVlIiBvbiANCj4gPiBpbnRlbF9kaWdpdGFsX2Nvbm5lY3Rvcl9hdG9taWNfY2hlY2soKS4gKCBi
ZWNhdXNlIHRoZQ0KPiA+IGZvcmNlX21vZGVfY2hhbmdlZCBpcyBub3QgZGlzYWJsZWQgeWV0LikN
Cj4gPiANCj4gPiBUaGUgbW9kZV9jaGFuZ2VkIHdpbGwgbGVhZCAiZW5jb2Rlci0+Y29tcHV0ZV9j
b25maWciIHdoaWNoIHdpbGwNCj4gPiBjYWxsDQo+ID4gaW50ZWxfcHNyX2NvbXB1dGVfY29uZmln
KCkuDQo+ID4gQW5kIHdlIGNhbiBkaXNhYmxlICJmb3JjZV9tb2RlX2NoYW5nZWQiIG9uDQo+ID4g
aW50ZWxfcHNyX2NvbXB1dGVfY29uZmlnKCkNCj4gPiB3aGljaCBzZXRzICJjcnRjX3N0YXRlLT5o
YXNfcHNyID0gdHJ1ZSIuDQo+ID4gdGhlICJjcnRjX3N0YXRlLT5oYXNfcHNyIiBlbmFibGVzIFBT
Ui4NCj4gDQo+IEFmdGVyIGNhbGwgZW5jb2Rlci0+Y29tcHV0ZV9jb25maWcoKS0+aW50ZWxfcHNy
X2NvbXB1dGVfY29uZmlnKCkNCj4gdGhlcmUNCj4gaXMgYSBsb3Qgb2YgY29kZSBsZWZ0IHRvIGJl
IGV4ZWN1dGVkIGluIGludGVsX2F0b21pY19jaGVjaygpIHRoYXQgY2FuDQo+IGNhdXNlIHRoZSBh
dG9taWMgY2hlY2sgdG8gZmFpbC4NCj4gVGhlIG5leHQgcGlwZSBpbiB0aGlzIGxvb3AgY2FuIGFs
cmVhZHkgY2F1c2UgdGhhdC4NCkhpIEpvc2UsDQoNClRoYW5rIHlvdSBmb3IgZXhwbGFpbmluZyBp
biBkZXRhaWwuDQoNCj4gDQo+ID4gPiA+ID4gIAlpZiAoIWNydGNfc3RhdGUtPmhhc19wc3IpDQo+
ID4gPiA+ID4gIAkJcmV0dXJuOw0KPiA+ID4gPiA+ICANCj4gPiA+ID4gPiBAQCAtMTA5Niw2ICsx
MDk4LDggQEAgdm9pZCBpbnRlbF9wc3JfdXBkYXRlKHN0cnVjdCBpbnRlbF9kcA0KPiA+ID4gPiA+
ICppbnRlbF9kcCwNCj4gPiA+ID4gPiAgCXN0cnVjdCBpOTE1X3BzciAqcHNyID0gJmRldl9wcml2
LT5wc3I7DQo+ID4gPiA+ID4gIAlib29sIGVuYWJsZSwgcHNyMl9lbmFibGU7DQo+ID4gPiA+ID4g
IA0KPiA+ID4gPiA+ICsJaW50ZWxfcHNyX2ZvcmNlX21vZGVfY2hhbmdlZF9zZXQoaW50ZWxfZHAs
IGZhbHNlKTsNCj4gPiA+ID4gPiArDQo+ID4gPiA+ID4gIAlpZiAoIUNBTl9QU1IoZGV2X3ByaXYp
IHx8IFJFQURfT05DRShwc3ItPmRwKSAhPQ0KPiA+ID4gPiA+IGludGVsX2RwKQ0KPiA+ID4gPiA+
ICAJCXJldHVybjsNCj4gPiA+ID4gPiAgDQo+ID4gPiA+ID4gQEAgLTE2MjksNyArMTYzMyw3IEBA
IHZvaWQgaW50ZWxfcHNyX2F0b21pY19jaGVjayhzdHJ1Y3QNCj4gPiA+ID4gPiBkcm1fY29ubmVj
dG9yICpjb25uZWN0b3IsDQo+ID4gPiA+ID4gIAlzdHJ1Y3QgZHJtX2NydGNfc3RhdGUgKmNydGNf
c3RhdGU7DQo+ID4gPiA+ID4gIA0KPiA+ID4gPiA+ICAJaWYgKCFDQU5fUFNSKGRldl9wcml2KSB8
fCAhbmV3X3N0YXRlLT5jcnRjIHx8DQo+ID4gPiA+ID4gLQkgICAgZGV2X3ByaXYtPnBzci5pbml0
aWFsbHlfcHJvYmVkKQ0KPiA+ID4gPiA+ICsJICAgICFkZXZfcHJpdi0+cHNyLmZvcmNlX21vZGVf
Y2hhbmdlZCkNCj4gPiA+ID4gPiAgCQlyZXR1cm47DQo+ID4gPiA+ID4gIA0KPiA+ID4gPiA+ICAJ
aW50ZWxfY29ubmVjdG9yID0gdG9faW50ZWxfY29ubmVjdG9yKGNvbm5lY3Rvcik7DQo+ID4gPiA+
ID4gQEAgLTE2NDAsNSArMTY0NCwxOSBAQCB2b2lkIGludGVsX3Bzcl9hdG9taWNfY2hlY2soc3Ry
dWN0DQo+ID4gPiA+ID4gZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLA0KPiA+ID4gPiA+ICAJY3J0
Y19zdGF0ZSA9IGRybV9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKG5ld19zdGF0ZS0NCj4gPiA+
ID4gPiA+IHN0YXRlLA0KPiA+ID4gPiA+ICAJCQkJCQkgICBuZXdfc3RhdGUtDQo+ID4gPiA+ID4g
PiBjcnRjKTsNCj4gPiA+ID4gPiAgCWNydGNfc3RhdGUtPm1vZGVfY2hhbmdlZCA9IHRydWU7DQo+
ID4gPiA+ID4gLQlkZXZfcHJpdi0+cHNyLmluaXRpYWxseV9wcm9iZWQgPSB0cnVlOw0KPiA+ID4g
PiA+ICt9DQo+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ICt2b2lkIGludGVsX3Bzcl9mb3JjZV9tb2Rl
X2NoYW5nZWRfc2V0KHN0cnVjdCBpbnRlbF9kcA0KPiA+ID4gPiA+ICppbnRlbF9kcCwNCj4gPiA+
ID4gPiBib29sIHNldCkNCj4gPiA+ID4gSU1ITywgaXQgd291bGQgYmUgYmV0dGVyIGludGVsX3Bz
cl9zZXRfZm9yY2VfbW9kZV9jaGFuZ2VkKCkgYXMNCj4gPiA+ID4gYQ0KPiA+ID4gPiBmdW5jdGlv
biBuYW1lLg0KPiA+ID4gDQo+ID4gPiBPa2F5DQo+ID4gPiANCj4gPiA+ID4gPiArew0KPiA+ID4g
PiA+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2Ow0KPiA+ID4gPiA+ICsNCj4g
PiA+ID4gPiArCWlmICghaW50ZWxfZHApDQo+ID4gPiA+ID4gKwkJcmV0dXJuOw0KPiA+ID4gPiA+
ICsNCj4gPiA+ID4gPiArCWRldl9wcml2ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7DQo+ID4gPiA+
ID4gKwlpZiAoIUNBTl9QU1IoZGV2X3ByaXYpIHx8ICFpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHAp
IHx8DQo+ID4gPiA+ID4gKwkgICAgaW50ZWxfZHAgIT0gZGV2X3ByaXYtPnBzci5kcCkNCj4gPiA+
ID4gPiArCQlyZXR1cm47DQo+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ICsJZGV2X3ByaXYtPnBzci5m
b3JjZV9tb2RlX2NoYW5nZWQgPSBzZXQ7DQo+ID4gPiA+ID4gIH0NCj4gPiA+ID4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaA0KPiA+ID4gPiA+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaA0KPiA+ID4gPiA+IGlu
ZGV4IGM1OGExZDQzODgwOC4uMjdhNzA0NjhlMmI5IDEwMDY0NA0KPiA+ID4gPiA+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmgNCj4gPiA+ID4gPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oDQo+ID4gPiA+ID4gQEAgLTQw
LDUgKzQwLDYgQEAgYm9vbCBpbnRlbF9wc3JfZW5hYmxlZChzdHJ1Y3QgaW50ZWxfZHANCj4gPiA+
ID4gPiAqaW50ZWxfZHApOw0KPiA+ID4gPiA+ICB2b2lkIGludGVsX3Bzcl9hdG9taWNfY2hlY2so
c3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwNCj4gPiA+ID4gPiAgCQkJICAgIHN0cnVj
dCBkcm1fY29ubmVjdG9yX3N0YXRlDQo+ID4gPiA+ID4gKm9sZF9zdGF0ZSwNCj4gPiA+ID4gPiAg
CQkJICAgIHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlDQo+ID4gPiA+ID4gKm5ld19zdGF0ZSk7
DQo+ID4gPiA+ID4gK3ZvaWQgaW50ZWxfcHNyX2ZvcmNlX21vZGVfY2hhbmdlZF9zZXQoc3RydWN0
IGludGVsX2RwDQo+ID4gPiA+ID4gKmludGVsX2RwLA0KPiA+ID4gPiA+IGJvb2wgc2V0KTsNCj4g
PiA+ID4gPiAgDQo+ID4gPiA+ID4gICNlbmRpZiAvKiBfX0lOVEVMX1BTUl9IX18gKi8NCj4gPiA+
ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYw0KPiA+ID4g
PiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYw0KPiA+ID4gPiA+IGluZGV4IGY3
YTFjMzM2OTdiNy4uODM3OTFjMTk3NjExIDEwMDY0NA0KPiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMNCj4gPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5jDQo+ID4gPiA+ID4gQEAgLTU4LDYgKzU4LDcgQEANCj4gPiA+ID4gPiAg
I2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfaG90cGx1Zy5oIg0KPiA+ID4gPiA+ICAjaW5jbHVkZSAi
ZGlzcGxheS9pbnRlbF9vdmVybGF5LmgiDQo+ID4gPiA+ID4gICNpbmNsdWRlICJkaXNwbGF5L2lu
dGVsX3BpcGVfY3JjLmgiDQo+ID4gPiA+ID4gKyNpbmNsdWRlICJkaXNwbGF5L2ludGVsX3Bzci5o
Ig0KPiA+ID4gPiA+ICAjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9zcHJpdGUuaCINCj4gPiA+ID4g
PiAgI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfdmdhLmgiDQo+ID4gPiA+ID4gIA0KPiA+ID4gPiA+
IEBAIC0xMjU2LDYgKzEyNTcsOCBAQCBzdGF0aWMgdm9pZCBpOTE1X2RyaXZlcl9yZWdpc3Rlcihz
dHJ1Y3QNCj4gPiA+ID4gPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gPiA+ID4gPiAg
DQo+ID4gPiA+ID4gIAlpbnRlbF9hdWRpb19pbml0KGRldl9wcml2KTsNCj4gPiA+ID4gPiAgDQo+
ID4gPiA+ID4gKwlpbnRlbF9wc3JfZm9yY2VfbW9kZV9jaGFuZ2VkX3NldChkZXZfcHJpdi0+cHNy
LmRwLA0KPiA+ID4gPiA+IHRydWUpOw0KPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiAgCS8qDQo+ID4g
PiA+ID4gIAkgKiBTb21lIHBvcnRzIHJlcXVpcmUgY29ycmVjdGx5IHNldC11cCBocGQgcmVnaXN0
ZXJzDQo+ID4gPiA+ID4gZm9yDQo+ID4gPiA+ID4gZGV0ZWN0aW9uIHRvDQo+ID4gPiA+ID4gIAkg
KiB3b3JrIHByb3Blcmx5IChsZWFkaW5nIHRvIGdob3N0IGNvbm5lY3RlZCBjb25uZWN0b3INCj4g
PiA+ID4gPiBzdGF0dXMpLA0KPiA+ID4gPiA+IGUuZy4gVkdBDQo+ID4gPiA+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gPiA+ID4gPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gPiA+ID4gPiBpbmRleCAzMzMwYjUzOGQzNzkuLmE1
NDY2NTUwNzJiZCAxMDA2NDQNCj4gPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5oDQo+ID4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
aA0KPiA+ID4gPiA+IEBAIC01MDUsNyArNTA1LDcgQEAgc3RydWN0IGk5MTVfcHNyIHsNCj4gPiA+
ID4gPiAgCWJvb2wgZGMzY29fZW5hYmxlZDsNCj4gPiA+ID4gPiAgCXUzMiBkYzNjb19leGl0X2Rl
bGF5Ow0KPiA+ID4gPiA+ICAJc3RydWN0IGRlbGF5ZWRfd29yayBkYzNjb193b3JrOw0KPiA+ID4g
PiA+IC0JYm9vbCBpbml0aWFsbHlfcHJvYmVkOw0KPiA+ID4gPiA+ICsJYm9vbCBmb3JjZV9tb2Rl
X2NoYW5nZWQ7DQo+ID4gPiA+ID4gIH07DQo+ID4gPiA+ID4gIA0KPiA+ID4gPiA+ICAjZGVmaW5l
IFFVSVJLX0xWRFNfU1NDX0RJU0FCTEUgKDE8PDEpDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
