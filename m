Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D735DA6EA
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 10:05:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B83D6EA02;
	Thu, 17 Oct 2019 08:05:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77DB26EA01
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Oct 2019 08:05:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Oct 2019 01:05:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,307,1566889200"; d="scan'208";a="226077406"
Received: from irsmsx153.ger.corp.intel.com ([163.33.192.75])
 by fmsmga002.fm.intel.com with ESMTP; 17 Oct 2019 01:05:41 -0700
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.185]) by
 IRSMSX153.ger.corp.intel.com ([169.254.9.119]) with mapi id 14.03.0439.000;
 Thu, 17 Oct 2019 09:05:40 +0100
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915: Enable second dbuf slice for ICL
Thread-Index: AQHVfnUGZfi8UjDEaUmKpge7oxxkCqdd6LcAgACMOYA=
Date: Thu, 17 Oct 2019 08:05:39 +0000
Message-ID: <7457e80ff05c21b5493692162e5b22fbd667996e.camel@intel.com>
References: <20191009073908.22128-1-stanislav.lisovskiy@intel.com>
 <20191016234114.GC13581@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20191016234114.GC13581@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.89]
Content-ID: <2C471FC9FFF32C429C725BDD9235B0AC@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Enable second dbuf slice for
 ICL
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Peres,
 Martin" <martin.peres@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDE5LTEwLTE2IGF0IDE2OjQxIC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBP
biBXZWQsIE9jdCAwOSwgMjAxOSBhdCAxMDozOTowOEFNICswMzAwLCBTdGFuaXNsYXYgTGlzb3Zz
a2l5IHdyb3RlOg0KPiA+IEFsc28gaW1wbGVtZW50ZWQgYWxnb3JpdGhtIGZvciBjaG9vc2luZyBE
QnVmIHNsaWNlIGNvbmZpZ3VyYXRpb24NCj4gPiBiYXNlZCBvbiBhY3RpdmUgcGlwZXMsIHBpcGUg
cmF0aW8gYXMgc3RhdGVkIGluIEJTcGVjIDEyNzE2Lg0KPiA+IA0KPiA+IE5vdyBwaXBlIGFsbG9j
YXRpb24gc3RpbGwgc3RheXMgcHJvcG9ydGlvbmFsIHRvIHBpcGUgd2lkdGggYXMNCj4gPiBiZWZv
cmUsDQo+ID4gaG93ZXZlciB3aXRoaW4gYWxsb3dlZCBEQnVmIHNsaWNlIGZvciB0aGlzIHBhcnRp
Y3VsYXINCj4gPiBjb25maWd1cmF0aW9uLg0KPiA+IA0KPiA+IHYyOiBSZW1vdmUgdW5uZWVkZWQg
Y2hlY2sgZnJvbSBjb21taXQgYXMgZGRiIGVuYWJsZWQgc2xpY2VzIG1pZ2h0DQo+ID4gICAgIG5v
dyBkaWZmZXIgZnJvbSBodyBzdGF0ZS4NCj4gDQo+IEkgY2FuJ3Qgc2VlbSB0byBmaW5kIHYxIG9m
IHRoaXMgcGF0Y2ggaW4gbXkgYXJjaGl2ZXM7IGNhbiB5b3UNCj4gZWxhYm9yYXRlDQo+IG9uIHRo
aXM/IA0KDQpIaSwgdGhhbmtzIGZvciBnb29kIHBvaW50cyBpbiByZXZpZXcuIEkgaW5pdGlhbGx5
IHN1Ym1pdHRlZCB2MSBvbmx5IGZvcg0KVHJ5Qm90LCB0aGVuIGZpZ3VyZWQgb3V0IHNvbWUgaXNz
dWUgYW5kIHRoZW4gc2VudCBhIHBhdGNoIHRvIHRoYXQNCm1haWxpbmcgbGlzdC4NCg0KDQo+ICBJ
dCBsb29rcyBsaWtlIGEgYml0IG9mIGEgbWlzbWF0Y2ggaW4gdGVybXMgb2YgaG93IHdlJ3JlDQo+
IGludGVycHJldGluZyAnZGRiLmVuYWJsZWRfc2xpY2VzJyBpbiBkaWZmZXJlbnQgcGFydHMgb2Yg
dGhlIGRyaXZlci4NCj4gRHVyaW5nIGh3IHJlYWRvdXQgd2UncmUgdHJlYXRpbmcgdGhlIHZhbHVl
IGFzIHRoZSBudW1iZXIgb2YgcG93ZXJlZA0KPiB1cA0KPiBzbGljZXMgKHdoaWNoIHdpbGwgYWx3
YXlzIGJlIDIgc2luY2Ugd2UgYWx3YXlzIHBvd2VyIHRoZW0gYm90aCB1cCBpbg0KPiBpY2xfZGlz
cGxheV9jb3JlX2luaXQgLT4gaWNsX2RidWZfZW5hYmxlIGV2ZW4gd2hlbiB3ZSdyZSBub3QgZ29p
bmcgdG8NCj4gdXNlIGJvdGgpLCB3aGVyZWFzIGluIHRoZSBhdG9taWMgY2hlY2sgY29kZSB3ZSdy
ZSBpbnRlcnByZXRpbmcgdGhlDQo+IHZhbHVlDQo+IGFzIHRoZSBudW1iZXIgb2Ygc2xpY2VzIHdl
IHdhbnQgdG8gZGlzdHJpYnV0ZSBvdXIgcGxhbmUgYWxsb2NhdGlvbnMNCj4gb3Zlci4gIFdlIG1h
eSB3YW50IHRvIGJyZWFrIHRoZXNlIG91dCBpbnRvIHR3byBzZXBhcmF0ZSBmaWVsZHMNCj4gKHBv
d2VyZWQNCj4gc2xpY2VzIHZzIHV0aWxpemVkIHNsaWNlcykgdGhhdCB3ZSB0cmFjayBzZXBhcmF0
ZWx5Lg0KDQpIYWQgZXhhY3RseSBzYW1lIGNvbmNlcm4sIEkgd2FudGVkIHRvIGFsd2F5cyB0cmVh
dCB0aGlzIGZpZWxkIGFzIG51bWJlcg0Kb2Ygc2xpY2VzIHdlIGhhdmUgYXZhaWxhYmxlLCBob3dl
dmVyIGlmIHdlIGFyZSBnb2luZyB0byBlbmFibGUvZGlzYWJsZSANCnRoYXQgZHluYW1pY2FsbHkg
cHJvYmFibHkgdGhlIG9ubHkgd2F5IGlzIHRvIHNwbGl0IGl0Lg0KDQo+IA0KPiA+IA0KPiA+IFNp
Z25lZC1vZmYtYnk6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50
ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYyB8ICAgNiAtDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMg
ICAgICAgICAgICAgIHwgMjA4DQo+ID4gKysrKysrKysrKysrKysrKysrLQ0KPiA+ICAyIGZpbGVz
IGNoYW5nZWQsIDIwMiBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMN
Cj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4g
aW5kZXggMWE1MzNjY2RiNTRmLi40NjgzNzMxYWMxY2EgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+IEBAIC0xMjk4OSwxMiAr
MTI5ODksNiBAQCBzdGF0aWMgdm9pZCB2ZXJpZnlfd21fc3RhdGUoc3RydWN0DQo+ID4gaW50ZWxf
Y3J0YyAqY3J0YywNCj4gPiAgCXNrbF9kZGJfZ2V0X2h3X3N0YXRlKGRldl9wcml2LCAmaHctPmRk
Yik7DQo+ID4gIAlzd19kZGIgPSAmZGV2X3ByaXYtPndtLnNrbF9ody5kZGI7DQo+ID4gIA0KPiA+
IC0JaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEgJiYNCj4gPiAtCSAgICBody0+ZGRiLmVu
YWJsZWRfc2xpY2VzICE9IHN3X2RkYi0+ZW5hYmxlZF9zbGljZXMpDQo+ID4gLQkJRFJNX0VSUk9S
KCJtaXNtYXRjaCBpbiBEQlVGIFNsaWNlcyAoZXhwZWN0ZWQgJXUsIGdvdA0KPiA+ICV1KVxuIiwN
Cj4gPiAtCQkJICBzd19kZGItPmVuYWJsZWRfc2xpY2VzLA0KPiA+IC0JCQkgIGh3LT5kZGIuZW5h
YmxlZF9zbGljZXMpOw0KPiA+IC0NCj4gDQo+IFJlbGF0ZWQgdG8gdGhlIGNvbW1lbnQgYWJvdmUs
IHdlIHByb2JhYmx5IGRvIHdhbnQgdG8gbWFrZSBzdXJlIHRoYXQNCj4gdGhlDQo+IG51bWJlciBv
ZiBwb3dlcmVkIHVwIGRidWYgc2xpY2VzIG1hdGNoZXMgd2hhdCB3ZSBleHBlY3QgKHdoaWNoIHRv
ZGF5DQo+IGlzDQo+IGFsd2F5cyAyLCBidXQgdGhhdCBtaWdodCBjaGFuZ2UgaW4gdGhlIGZ1dHVy
ZSBpZiB3ZSB0cnkgdG8gYmUgbW9yZQ0KPiBpbnRlbGxpZ2VudCBhbmQgcG93ZXIgZG93biB0aGUg
c2Vjb25kIHNsaWNlIHdoZW4gaXQgaXNuJ3QgbmVlZGVkKQ0KPiANCj4gSWYgd2UncmUgYWxyZWFk
eSBjb25maXJtaW5nIHRoYXQgdGhlIHBsYW5lcycgaHcvc3cgRERCIGFsbG9jYXRpb25zDQo+IHRo
ZW1zZWx2ZXMgbWF0Y2ggZmFydGhlciBkb3duIHRoaXMgZnVuY3Rpb24sIHRoZW4gd2UncmUgZWZm
ZWN0aXZlbHkNCj4gYWxyZWFkeSBjaGVja2luZyB0aGUgZGlzdHJpYnV0aW9uIG9mIHBsYW5lcyBi
ZXR3ZWVuIHRoZSB0d28gc2xpY2VzLg0KPiANCj4gPiAgCS8qIHBsYW5lcyAqLw0KPiA+ICAJZm9y
X2VhY2hfdW5pdmVyc2FsX3BsYW5lKGRldl9wcml2LCBwaXBlLCBwbGFuZSkgew0KPiA+ICAJCXN0
cnVjdCBza2xfcGxhbmVfd20gKmh3X3BsYW5lX3dtLCAqc3dfcGxhbmVfd207DQo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMNCj4gPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3BtLmMNCj4gPiBpbmRleCBiZmNmMDNhYjUyNDUuLjBmYmVlYTYxMjk5
ZiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jDQo+ID4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYw0KPiA+IEBAIC0zNjE2LDcgKzM2
MTYsNyBAQCBzdGF0aWMgdTgNCj4gPiBpbnRlbF9lbmFibGVkX2RidWZfc2xpY2VzX251bShzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+ID4gIAkgKiBvbmx5IHRoYXQgMSBzbGlj
ZSBlbmFibGVkIHVudGlsIHdlIGhhdmUgYSBwcm9wZXIgd2F5IGZvciBvbi0NCj4gPiBkZW1hbmQN
Cj4gPiAgCSAqIHRvZ2dsaW5nIG9mIHRoZSBzZWNvbmQgc2xpY2UuDQo+ID4gIAkgKi8NCj4gDQo+
IA0KPiBUaGlzIGNvbW1lbnQgaXMvd2FzIGFsc28gb3V0ZGF0ZWQuICBBbHNvIG5vdGUgdGhhdCB0
aGlzIGNoYW5nZSBpcw0KPiBnb2luZw0KPiB0byBpbXBhY3QgVEdMIGFzIHdlbGwgZXZlbiB0aG91
Z2ggeW91IGhhdmVuJ3QgYWRkZWQgdGhlIFRHTCBoYW5kbGluZw0KPiBmb3INCj4gc2xpY2UgYXNz
aWdubWVudCB5ZXQuDQo+IA0KPiA+IC0JaWYgKDAgJiYgKG51bV9hY3RpdmUgPiAxIHx8IHRvdGFs
X2RhdGFfYncgPj0gR0JwcygxMikpKSB7DQo+ID4gKwlpZiAoKG51bV9hY3RpdmUgPiAxIHx8IHRv
dGFsX2RhdGFfYncgPj0gR0JwcygxMikpKSB7DQo+IA0KPiBXaGVyZSBkb2VzIHRoZSAxMiBHQnBz
IG51bWJlciBjb21lIGZyb20/ICBJIGtub3cgdGhlIGNvbW1lbnQgYWJvdmUNCj4gdGhpcw0KPiBz
YXlzIHRoYXQncyB0aGUgbWF4aW11bSBCVyBzdXBwb3J0ZWQgYnkgYSBzaW5nbGUgREJ1ZiBzbGlj
ZSwgYnV0IEkNCj4gY2FuJ3QNCj4gZmluZCB3aGVyZSB0aGlzIGlzIG1lbnRpb25lZCBpbiB0aGUg
YnNwZWMgKGFuZCBJJ20gbm90IHN1cmUgaWYgdGhhdA0KPiB3b3VsZCBhcHBseSB0byBhbGwgZ2Vu
MTErIHBsYXRmb3JtcyBvciB3aGV0aGVyIHRoYXQgd2FzIGFuIElDTC0NCj4gc3BlY2lmaWMNCj4g
bnVtYmVyIGZyb20gd2hlbiB0aGUgY29tbWVudC9jb2RlIHdhcyBmaXJzdCB3cml0dGVuKS4NCg0K
SGFkIHNhbWUgcXVlc3Rpb24gYWN0dWFsbHkgLSBuZWl0aGVyIG1lIG9yIFZpbGxlIGZvdW5kIGFu
eSBtZW50aW9uaW5nDQphYm91dCAxMiBHQi9zIGluIGJzcGVjLCBzbyBkZWNpZGVkIHRvIGxlYXZl
IGl0IGFzIGlzIGJlZm9yZSBhdCBsZWFzdA0Kd2UgZmlndXJlIG91dCB3aGVyZSBpdCBjYW1lIGZy
b20uDQoNCj4gDQo+ID4gIAkJZGRiLT5lbmFibGVkX3NsaWNlcyA9IDI7DQo+ID4gIAl9IGVsc2Ug
ew0KPiA+ICAJCWRkYi0+ZW5hYmxlZF9zbGljZXMgPSAxOw0KPiA+IEBAIC0zODMxLDYgKzM4MzEs
MzUgQEAgc3RhdGljIHUxNiBpbnRlbF9nZXRfZGRiX3NpemUoc3RydWN0DQo+ID4gZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsDQo+ID4gIAlyZXR1cm4gZGRiX3NpemU7DQo+ID4gIH0NCj4gPiAg
DQo+ID4gKy8qDQo+ID4gKyAqIENhbGN1bGF0ZSBpbml0aWFsIERCdWYgc2xpY2Ugb2Zmc2V0LCBi
YXNlZCBvbiBzbGljZSBzaXplDQo+ID4gKyAqIGFuZCBtYXNrKGkuZSBpZiBzbGljZSBzaXplIGlz
IDEwMjQgYW5kIHNlY29uZCBzbGljZSBpcyBlbmFibGVkDQo+ID4gKyAqIG9mZnNldCB3b3VsZCBi
ZSAxMDI0KQ0KPiA+ICsgKi8NCj4gPiArc3RhdGljIHUzMiBza2xfZ2V0X2ZpcnN0X2RidWZfc2xp
Y2Vfb2Zmc2V0KHUzMiBkYnVmX3NsaWNlX21hc2ssDQo+ID4gKwkJCQkJICAgdTMyIHNsaWNlX3Np
emUsIHUzMg0KPiA+IGRkYl9zaXplKQ0KPiA+ICt7DQo+ID4gKwl1MzIgb2Zmc2V0ID0gMDsNCj4g
PiArDQo+ID4gKwlpZiAoIWRidWZfc2xpY2VfbWFzaykNCj4gPiArCQlyZXR1cm4gMDsNCj4gPiAr
DQo+ID4gKwl3aGlsZSAoIShkYnVmX3NsaWNlX21hc2sgJiAxKSkgew0KPiA+ICsJCWRidWZfc2xp
Y2VfbWFzayA+Pj0gMTsNCj4gPiArCQlvZmZzZXQgKz0gc2xpY2Vfc2l6ZTsNCj4gPiArCQlpZiAo
b2Zmc2V0ID49IGRkYl9zaXplKQ0KPiANCj4gDQo+IFdlIGNhbiBwcm9iYWJseSBtb3ZlIHRoaXMg
Y2FsbCBkb3duIGludG8gdGhlIGZ1bmN0aW9uIGJlbG93LiAgQUZBSUNTLA0KPiBwaXBlIHJhdGlv
IGRvZXNuJ3QgbWF0dGVyIGFueW1vcmUgb25jZSB3ZSBnZXQgdG8gVEdMIGFuZCBkb2Vzbid0DQo+
IG1hdHRlcg0KPiBvbiBlYXJsaWVyIHBsYXRmb3JtcyB0aGF0IG9ubHkgaGF2ZSBvbmUgc2xpY2Us
IHNvIHRoZXJlJ3Mgbm8gbmVlZA0KPiB0byBjYWxjdWxhdGUgaXQgaWYgd2UgYXJlbid0IGdvaW5n
IHRvIHVzZSBpdC4NCg0KR29vZCBwb2ludCwgYWdyZWUgaXQgaXMgcHJvYmFibHkgbm90IHNvIGNv
bW1vbiB0byBiZSB1c2VkIGhlcmUuDQpBbHNvIHRoYW5rcyBmb3Igc3BvdHRpbmcgdGhhdCBJIGZv
cmdvdCB0byBpbnZlcnQgcGlwZV9yYXRpbyB2YWx1ZS4NCg0KPiANCj4gPiArDQo+ID4gKwkvKg0K
PiA+ICsJICogR2V0IGFsbG93ZWQgREJ1ZiBzbGljZXMgZm9yIGNvcnJlc3BvbmRlbnQgcGlwZSBh
bmQgcGxhdGZvcm0uDQo+ID4gKwkgKi8NCj4gPiArCWRidWZfc2xpY2VfbWFzayA9IGk5MTVfZ2V0
X2FsbG93ZWRfZGJ1Zl9tYXNrKGRldl9wcml2LA0KPiA+IGZvcl9waXBlLA0KPiA+ICsJCQkJCQkg
ICAgIGFjdGl2ZV9waXBlcywNCj4gPiBwaXBlX3JhdGlvKTsNCj4gPiArDQo+ID4gKwlEUk1fREVC
VUdfS01TKCJEQnVmIHNsaWNlIG1hc2sgJXggcGlwZSAlZCBhY3RpdmUgcGlwZXMgJXhcbiIsDQo+
ID4gKwkJICAgICAgZGJ1Zl9zbGljZV9tYXNrLA0KPiA+ICsJCSAgICAgIGZvcl9waXBlLCBhY3Rp
dmVfcGlwZXMpOw0KPiA+ICsNCj4gPiArCS8qDQo+ID4gKwkgKiBGaWd1cmUgb3V0IGF0IHdoaWNo
IERCdWYgc2xpY2Ugd2Ugc3RhcnQsIGkuZSBpZiB3ZSBzdGFydCBhdA0KPiA+IERidWYgUzINCj4g
PiArCSAqIGFuZCBzbGljZSBzaXplIGlzIDEwMjQsIHRoZSBvZmZzZXQgd291bGQgYmUgMTAyNA0K
PiA+ICsJICovDQo+ID4gKwlvZmZzZXQgPSBza2xfZ2V0X2ZpcnN0X2RidWZfc2xpY2Vfb2Zmc2V0
KGRidWZfc2xpY2VfbWFzaywNCj4gPiArCQkJCQkJIHNsaWNlX3NpemUsIGRkYl9zaXplKTsNCj4g
PiArDQo+ID4gKwkvKg0KPiA+ICsJICogRmlndXJlIG91dCB0b3RhbCBzaXplIG9mIGFsbG93ZWQg
REJ1ZiBzbGljZXMsIHdoaWNoIGlzDQo+ID4gYmFzaWNhbGx5DQo+ID4gKwkgKiBhIG51bWJlciBv
ZiBhbGxvd2VkIHNsaWNlcyBmb3IgdGhhdCBwaXBlIG11bHRpcGxpZWQgYnkgc2xpY2UNCj4gPiBz
aXplLg0KPiA+ICsJICogV2UgbWlnaHQgc3RpbGwgaGF2ZSBzb21lIGRidWYgc2xpY2VzIGRpc2Fi
bGVkIGluIGNhc2UgaWYNCj4gPiB0aG9zZQ0KPiA+ICsJICogYXJlIG5vdCBuZWVkZWQgYmFzZWQg
b24gYmFuZHdpZHRoIHJlcXVpcmVtZW50cyBhbmQNCj4gPiBudW1fYWN0aXZlIHBpcGVzLA0KPiA+
ICsJICogc28gc3RpY2sgdG8gcmVhbCBkZGIgc2l6ZSBpZiBpdCBoYXBwZW5zIHRvIGJlIGxlc3Mu
IEluc2lkZQ0KPiA+IG9mIHRoaXMNCj4gPiArCSAqIHJhbmdlIGRkYiBlbnRyaWVzIGFyZSBzdGls
bCBhbGxvY2F0ZWQgaW4gcHJvcG9ydGlvbiB0bw0KPiA+IGRpc3BsYXkgd2lkdGguDQo+ID4gKwkg
Ki8NCj4gPiArCWRkYl9yYW5nZV9zaXplID0gbWluKGh3ZWlnaHQ4KGRidWZfc2xpY2VfbWFzaykg
KiBzbGljZV9zaXplLA0KPiA+ICsJCQkgICAgICh1bnNpZ25lZCBpbnQpZGRiX3NpemUpOw0KPiA+
ICsNCj4gPiAgCS8qDQo+ID4gIAkgKiBXYXRlcm1hcmsvZGRiIHJlcXVpcmVtZW50IGhpZ2hseSBk
ZXBlbmRzIHVwb24gd2lkdGggb2YgdGhlDQo+ID4gIAkgKiBmcmFtZWJ1ZmZlciwgU28gaW5zdGVh
ZCBvZiBhbGxvY2F0aW5nIEREQiBlcXVhbGx5IGFtb25nDQo+ID4gcGlwZXMNCj4gPiBAQCAtMzg5
MCwxMCArMzk2NywyMyBAQCBza2xfZGRiX2dldF9waXBlX2FsbG9jYXRpb25fbGltaXRzKHN0cnVj
dA0KPiA+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiA+ICAJCQkmY3J0Y19zdGF0ZS0+
YmFzZS5hZGp1c3RlZF9tb2RlOw0KPiA+ICAJCWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsN
Cj4gPiAgCQlpbnQgaGRpc3BsYXksIHZkaXNwbGF5Ow0KPiA+ICsJCXVpbnRfZml4ZWRfMTZfMTZf
dCByYXRpbyA9DQo+ID4gc2tsX2dldF9waXBlX3JhdGlvKGNydGNfc3RhdGUpOw0KPiA+ICsJCXUz
MiBwaXBlX2RidWZfc2xpY2VfbWFzayA9DQo+ID4gaTkxNV9nZXRfYWxsb3dlZF9kYnVmX21hc2so
ZGV2X3ByaXYsDQo+ID4gKwkJCQkJCQkJICAgICAgcA0KPiA+IGlwZSwNCj4gPiArCQkJCQkJCQkg
ICAgICBhDQo+ID4gY3RpdmVfcGlwZXMsDQo+ID4gKwkJCQkJCQkJICAgICAgcg0KPiA+IGF0aW8p
Ow0KPiANCj4gTWlub3Igbml0cGljaywgYnV0IHRoZSBsaW5lcyBoZXJlIGFyZSBhIGJpdCBvdmVy
IDgwIGNoYXJhY3RlcnMuICBZb3UNCj4gbWF5DQo+IHdhbnQgdG8gYnJlYWsgdGhlIGxpbmUgYWZ0
ZXIgdGhlIGVxdWFscyBzaWduLg0KPiANCj4gPiAgDQo+ID4gIAkJaWYgKCFjcnRjX3N0YXRlLT5i
YXNlLmVuYWJsZSkNCj4gPiAgCQkJY29udGludWU7DQo+ID4gIA0KPiA+ICsJCS8qDQo+ID4gKwkJ
ICogQWNjb3JkaW5nIHRvIEJTcGVjIHBpcGUgY2FuIHNoYXJlIG9uZSBkYnVmIHNsaWNlDQo+ID4g
d2l0aCBhbm90aGVyIHBpcGVzIG9yIHBpcGUgY2FuIHVzZQ0KPiA+ICsJCSAqIG11bHRpcGxlIGRi
dWZzLCBpbiBib3RoIGNhc2VzIHdlIGFjY291bnQgZm9yIG90aGVyDQo+ID4gcGlwZXMgb25seSBp
ZiB0aGV5IGhhdmUNCj4gPiArCQkgKiBleGFjdGx5IHNhbWUgbWFzay4NCj4gPiArCQkgKi8NCj4g
DQo+IFNvbWUgbW9yZSBsb25nIGxpbmVzIHRoYXQgbmVlZCB0byBiZSB3cmFwcGVkLg0KPiANCj4g
PiArCQlpZiAoZGJ1Zl9zbGljZV9tYXNrICE9IHBpcGVfZGJ1Zl9zbGljZV9tYXNrKQ0KPiA+ICsJ
CQljb250aW51ZTsNCj4gPiArDQo+ID4gIAkJZHJtX21vZGVfZ2V0X2h2X3RpbWluZyhhZGp1c3Rl
ZF9tb2RlLCAmaGRpc3BsYXksDQo+ID4gJnZkaXNwbGF5KTsNCj4gPiAgCQl0b3RhbF93aWR0aCAr
PSBoZGlzcGxheTsNCj4gPiAgDQo+ID4gQEAgLTM5MDMsOCArMzk5MywxMSBAQCBza2xfZGRiX2dl
dF9waXBlX2FsbG9jYXRpb25fbGltaXRzKHN0cnVjdA0KPiA+IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LA0KPiA+ICAJCQlwaXBlX3dpZHRoID0gaGRpc3BsYXk7DQo+ID4gIAl9DQo+ID4gIA0K
PiA+IC0JYWxsb2MtPnN0YXJ0ID0gZGRiX3NpemUgKiB3aWR0aF9iZWZvcmVfcGlwZSAvIHRvdGFs
X3dpZHRoOw0KPiA+IC0JYWxsb2MtPmVuZCA9IGRkYl9zaXplICogKHdpZHRoX2JlZm9yZV9waXBl
ICsgcGlwZV93aWR0aCkgLw0KPiA+IHRvdGFsX3dpZHRoOw0KPiA+ICsJYWxsb2MtPnN0YXJ0ID0g
b2Zmc2V0ICsgZGRiX3JhbmdlX3NpemUgKiB3aWR0aF9iZWZvcmVfcGlwZSAvDQo+ID4gdG90YWxf
d2lkdGg7DQo+ID4gKwlhbGxvYy0+ZW5kID0gb2Zmc2V0ICsgZGRiX3JhbmdlX3NpemUgKiAod2lk
dGhfYmVmb3JlX3BpcGUgKw0KPiA+IHBpcGVfd2lkdGgpIC8gdG90YWxfd2lkdGg7DQo+ID4gKw0K
PiA+ICsJRFJNX0RFQlVHX0tNUygiUGlwZSAlZCBkZGIgJWQtJWRcbiIsIGZvcl9waXBlLA0KPiA+
ICsJCSAgICAgIGFsbG9jLT5zdGFydCwgYWxsb2MtPmVuZCk7DQo+ID4gIH0NCj4gPiAgDQo+ID4g
IHN0YXRpYyBpbnQgc2tsX2NvbXB1dGVfd21fcGFyYW1zKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlDQo+ID4gKmNydGNfc3RhdGUsDQo+ID4gQEAgLTQyNTUsNiArNDM0OCwxMDkgQEAgc2ts
X2dldF90b3RhbF9yZWxhdGl2ZV9kYXRhX3JhdGUoc3RydWN0DQo+ID4gaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSwNCj4gPiAgCXJldHVybiB0b3RhbF9kYXRhX3JhdGU7DQo+ID4gIH0NCj4g
PiAgDQo+ID4gK3VpbnRfZml4ZWRfMTZfMTZfdA0KPiA+ICtza2xfZ2V0X3BpcGVfcmF0aW8oY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+IA0KPiBJIHRoaW5rIHRo
aXMgc2hvdWxkIGJlIG5hbWVkIGljbF9nZXRfcGlwZV9yYXRpbygpIGdpdmVuIHRoYXQgaXQgY29t
ZXMNCj4gZnJvbSBhIGdlbjExLXNwZWNpZmljIHBhZ2Ugb2YgdGhlIGJzcGVjPw0KPiANCj4gPiAr
ew0KPiA+ICsJc3RydWN0IGRybV9wbGFuZSAqcGxhbmU7DQo+ID4gKwljb25zdCBzdHJ1Y3QgZHJt
X3BsYW5lX3N0YXRlICpkcm1fcGxhbmVfc3RhdGU7DQo+ID4gKwl1aW50X2ZpeGVkXzE2XzE2X3Qg
cGlwZV9kb3duc2NhbGU7DQo+ID4gKwl1aW50X2ZpeGVkXzE2XzE2X3QgbWF4X2Rvd25zY2FsZSA9
IHUzMl90b19maXhlZDE2KDEpOw0KPiA+ICsNCj4gPiArCWlmICghY3J0Y19zdGF0ZS0+YmFzZS5l
bmFibGUpDQo+IA0KPiBUaGlzIGZ1bmN0aW9uIG9ubHkgZ2V0cyBjYWxsZWQgZnJvbQ0KPiBza2xf
ZGRiX2dldF9waXBlX2FsbG9jYXRpb25fbGltaXRzKCkNCj4gd2hpY2ggdGVzdHMgY3J0Y19zdGF0
ZS0+YmFzZS5hY3RpdmUgYXQgdGhlIGJlZ2lubmluZyBhbmQgYmFpbHMgb3V0IGlmDQo+IHRoZSBD
UlRDIGlzbid0IGFjdGl2ZS4gIGFjdGl2ZSAmJiAhZW5hYmxlIHNob3VsZG4ndCBiZSBwb3NzaWJs
ZSwgc28NCj4gSSdkDQo+IGFkZCBhIFdBUk5fT04oKSBoZXJlIHRvIG1ha2UgdGhhdCBhc3NlcnRp
b24gY2xlYXIuDQo+IA0KPiA+ICsJCXJldHVybiBtYXhfZG93bnNjYWxlOw0KPiA+ICsNCj4gPiAr
CWRybV9hdG9taWNfY3J0Y19zdGF0ZV9mb3JfZWFjaF9wbGFuZV9zdGF0ZShwbGFuZSwNCj4gPiBk
cm1fcGxhbmVfc3RhdGUsICZjcnRjX3N0YXRlLT5iYXNlKSB7DQo+ID4gKwkJdWludF9maXhlZF8x
Nl8xNl90IHBsYW5lX2Rvd25zY2FsZTsNCj4gPiArCQljb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVf
c3RhdGUgKnBsYW5lX3N0YXRlID0NCj4gPiArCQkJdG9faW50ZWxfcGxhbmVfc3RhdGUoZHJtX3Bs
YW5lX3N0YXRlKTsNCj4gPiArDQo+ID4gKwkJaWYgKCFpbnRlbF93bV9wbGFuZV92aXNpYmxlKGNy
dGNfc3RhdGUsIHBsYW5lX3N0YXRlKSkNCj4gPiArCQkJY29udGludWU7DQo+ID4gKw0KPiA+ICsJ
CXBsYW5lX2Rvd25zY2FsZSA9DQo+ID4gc2tsX3BsYW5lX2Rvd25zY2FsZV9hbW91bnQoY3J0Y19z
dGF0ZSwgcGxhbmVfc3RhdGUpOw0KPiA+ICsNCj4gPiArCQltYXhfZG93bnNjYWxlID0gbWF4X2Zp
eGVkMTYocGxhbmVfZG93bnNjYWxlLA0KPiA+IG1heF9kb3duc2NhbGUpOw0KPiA+ICsJfQ0KPiA+
ICsNCj4gPiArCXBpcGVfZG93bnNjYWxlID0gc2tsX3BpcGVfZG93bnNjYWxlX2Ftb3VudChjcnRj
X3N0YXRlKTsNCj4gPiArDQo+ID4gKwlwaXBlX2Rvd25zY2FsZSA9IG11bF9maXhlZDE2KHBpcGVf
ZG93bnNjYWxlLCBtYXhfZG93bnNjYWxlKTsNCj4gPiArDQo+ID4gKwlyZXR1cm4gcGlwZV9kb3du
c2NhbGU7DQo+IA0KPiBXb3VsZG4ndCB0aGUgcGlwZSByYXRpbyBiZSAxL3BpcGVfZG93bnNjYWxl
Pw0KPiANCj4gDQo+ID4gK30NCj4gPiArDQo+ID4gKyNkZWZpbmUgREJVRl9TMV9CSVQgMQ0KPiA+
ICsjZGVmaW5lIERCVUZfUzJfQklUIDINCj4gPiArDQo+ID4gK3N0cnVjdCBkYnVmX3NsaWNlX2Nv
bmZfZW50cnkgew0KPiA+ICsJdTMyIGRidWZfbWFza1tJOTE1X01BWF9QSVBFU107DQo+ID4gKwl1
MzIgYWN0aXZlX3BpcGVzOw0KPiA+ICt9Ow0KPiA+ICsNCj4gPiArDQo+ID4gKy8qDQo+ID4gKyAq
IFRhYmxlIHRha2VuIGZyb20gQnNwZWMgMTI3MTYNCj4gPiArICogUGlwZXMgZG8gaGF2ZSBzb21l
IHByZWZlcnJlZCBEQnVmIHNsaWNlIGFmZmluaXR5LA0KPiA+ICsgKiBwbHVzIHRoZXJlIGFyZSBz
b21lIGhhcmRjb2RlZCByZXF1aXJlbWVudHMgb24gaG93DQo+ID4gKyAqIHRob3NlIHNob3VsZCBi
ZSBkaXN0cmlidXRlZCBmb3IgbXVsdGlwaXBlIHNjZW5hcmlvcy4NCj4gPiArICogRm9yIG1vcmUg
REJ1ZiBzbGljZXMgYWxnb3JpdGhtIGNhbiBnZXQgZXZlbiBtb3JlIG1lc3N5DQo+ID4gKyAqIGFu
ZCBsZXNzIHJlYWRhYmxlLCBzbyBkZWNpZGVkIHRvIHVzZSBhIHRhYmxlIGFsbW9zdA0KPiA+ICsg
KiBhcyBpcyBmcm9tIEJTcGVjIGl0c2VsZiAtIHRoYXQgd2F5IGl0IGlzIGF0IGxlYXN0IGVhc2ll
cg0KPiA+ICsgKiB0byBjb21wYXJlLCBjaGFuZ2UgYW5kIGNoZWNrLg0KPiA+ICsgKi8NCj4gPiAr
c3RydWN0IGRidWZfc2xpY2VfY29uZl9lbnRyeSBpY2xfYWxsb3dlZF9kYnVmc1tdID0gew0KPiA+
ICt7IHsgMCwgMCwgMCwgMCB9LCAwIH0sDQo+ID4gK3sgeyBEQlVGX1MxX0JJVCB8IERCVUZfUzJf
QklULCAwLCAwLCAwIH0sIEJJVChQSVBFX0EpIH0sDQo+ID4gK3sgeyBEQlVGX1MxX0JJVCwgMCwg
MCwgMCB9LCBCSVQoUElQRV9BKSB9LA0KPiA+ICt7IHsgMCwgREJVRl9TMV9CSVQgfCBEQlVGX1My
X0JJVCwgMCwgMCB9LCBCSVQoUElQRV9CKSB9LA0KPiA+ICt7IHsgMCwgREJVRl9TMV9CSVQsIDAs
IDAgfSwgQklUKFBJUEVfQikgfSwNCj4gPiAreyB7IDAsIDAsIERCVUZfUzFfQklUIHwgREJVRl9T
Ml9CSVQgfSwgQklUKFBJUEVfQykgfSwNCj4gPiAreyB7IDAsIDAsIERCVUZfUzJfQklULCAwIH0s
IEJJVChQSVBFX0MpIH0sDQo+ID4gK3sgeyBEQlVGX1MxX0JJVCwgREJVRl9TMl9CSVQsIDAsIDAg
fSwgQklUKFBJUEVfQSkgfCBCSVQoUElQRV9CKSB9LA0KPiA+ICt7IHsgREJVRl9TMV9CSVQsIDAs
IERCVUZfUzJfQklULCAwIH0sIEJJVChQSVBFX0EpIHwgQklUKFBJUEVfQykgfSwNCj4gPiAreyB7
IDAsIERCVUZfUzFfQklULCBEQlVGX1MyX0JJVCwgMCB9LCBCSVQoUElQRV9CKSB8IEJJVChQSVBF
X0MpIH0sDQo+ID4gK3sgeyBEQlVGX1MxX0JJVCwgREJVRl9TMV9CSVQsIERCVUZfUzJfQklULCAw
IH0sIEJJVChQSVBFX0EpIHwNCj4gPiBCSVQoUElQRV9CKSB8IEJJVChQSVBFX0MpIH0sDQo+IA0K
PiBZb3UgbWlnaHQgd2FudCB0byBhbGlnbiBzb21lIG9mIHRoZSBjb2x1bW5zIGhlcmUgdG8gbWFr
ZSBpdCBzbGlnaHRseQ0KPiBlYXNpZXIgdG8gcmVhZC4gIEFuZCBldmVuIHRob3VnaCB0aGUgYnNw
ZWMgcHV0cyB0aGUgcGlwZXMgaW4gdGhlDQo+IGZpbmFsDQo+IGNvbHVtbiwgSSB0aGluayBpdCB3
b3VsZCBiZSBtb3JlIG5hdHVyYWwgZm9yIHJlYWRhYmlsaXR5IHRvIG1vdmUgdGhhdA0KPiBmaXJz
dCBhbmQvb3IgcHV0IGl0IG9uIGEgbGluZSBieSBpdHNlbGYuICBZb3UndmUgYWxyZWFkeSBnb3Qg
YSBsaW5lDQo+IGhlcmUNCj4gdGhhdCBleGNlZWRzIDgwIGNoYXJhY3RlcnMgYnkgYSBiaXQgYW5k
IG9uY2UgeW91IGFkZCBhIFRHTCB0YWJsZSB3aXRoDQo+IGZvdXIgcGlwZXMgeW91J3JlIGdvaW5n
IHRvIGhhdmUgZXZlbiBsb25nZXIgbGluZXMuDQo+IA0KPiANCj4gPiArfTsNCj4gPiArDQo+ID4g
Ky8qDQo+ID4gKyAqIFRoaXMgZnVuY3Rpb24gZmluZHMgYW4gZW50cnkgd2l0aCBzYW1lIGVuYWJs
ZWQgcGlwZQ0KPiA+IGNvbmZpZ3VyYXRpb24gYW5kDQo+ID4gKyAqIHJldHVybnMgY29ycmVzcG9u
ZGVudCBEQnVmIHNsaWNlIG1hc2sgYXMgc3RhdGVkIGluIEJTcGVjIGZvcg0KPiA+IHBhcnRpY3Vs
YXINCj4gPiArICogcGxhdGZvcm0uDQo+ID4gKyAqLw0KPiA+ICtzdGF0aWMgdTMyIGljbF9nZXRf
YWxsb3dlZF9kYnVmX21hc2soaW50IHBpcGUsDQo+ID4gKwkJCQkgICAgIHUzMiBhY3RpdmVfcGlw
ZXMsDQo+ID4gKwkJCQkgICAgIHVpbnRfZml4ZWRfMTZfMTZfdCBwaXBlX3JhdGlvKQ0KPiA+ICt7
DQo+ID4gKwlpbnQgaTsNCj4gPiArCWZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKGljbF9hbGxv
d2VkX2RidWZzKTsgaSsrKSB7DQo+ID4gKwkJaWYgKGljbF9hbGxvd2VkX2RidWZzW2ldLmFjdGl2
ZV9waXBlcyA9PSBhY3RpdmVfcGlwZXMpDQo+ID4gew0KPiA+ICsJCQkvKg0KPiA+ICsJCQkgKiBB
Y2NvcmRpbmcgdG8gQlNwZWMgMTI3MTY6IGlmIHBpcGVfcmF0aW8gPj0NCj4gPiA4OC44DQo+ID4g
KwkJCSAqIHVzZSBzaW5nbGUgcGlwZSwgZXZlbiBpZiB0d28gYXJlIGFjY2Vzc2libGUuDQo+ID4g
KwkJCSAqLw0KPiA+ICsJCQlpZiAocGlwZV9yYXRpby52YWwgPj0gZGl2X2ZpeGVkMTYoODg4LCAx
MCkudmFsKQ0KPiA+ICsJCQkJKytpOw0KPiA+ICsJCQlyZXR1cm4gaWNsX2FsbG93ZWRfZGJ1ZnNb
aV0uZGJ1Zl9tYXNrW3BpcGVdOw0KPiA+ICsJCX0NCj4gPiArCX0NCj4gPiArCXJldHVybiAwOw0K
PiA+ICt9DQo+ID4gKw0KPiA+ICt1MzIgaTkxNV9nZXRfYWxsb3dlZF9kYnVmX21hc2soc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiA+ICsJCQkJICAgICAgaW50IHBpcGUsIHUz
MiBhY3RpdmVfcGlwZXMsDQo+ID4gKwkJCQkgICAgICB1aW50X2ZpeGVkXzE2XzE2X3QgcGlwZV9y
YXRpbykNCj4gPiArew0KPiA+ICsJaWYgKElTX0dFTihkZXZfcHJpdiwgMTEpKQ0KPiA+ICsJCXJl
dHVybiBpY2xfZ2V0X2FsbG93ZWRfZGJ1Zl9tYXNrKHBpcGUsDQo+ID4gKwkJCQkJCSBhY3RpdmVf
cGlwZXMsDQo+ID4gKwkJCQkJCSBwaXBlX3JhdGlvKTsNCj4gPiArCS8qDQo+ID4gKwkgKiBGb3Ig
YW55dGhpbmcgZWxzZSBqdXN0IHJldHVybiBvbmUgc2xpY2UgeWV0Lg0KPiA+ICsJICogU2hvdWxk
IGJlIGV4dGVuZGVkIGZvciBvdGhlciBwbGF0Zm9ybXMuDQo+ID4gKwkgKi8NCj4gDQo+IE5vdGUg
dGhhdCB5b3UndmUgYWxyZWFkeSBhZGp1c3RlZCB0aGUgRERCIHNpemUgZm9yIFRHTCBpbg0KPiBp
bnRlbF9nZXRfZGRiX3NpemUoKSwgc28gd2UgcHJvYmFibHkgd2FudCB0byBhZGQgVEdMJ3MgdGFi
bGUgYXQgdGhlDQo+IHNhbWUNCj4gdGltZSBhcyB0aGUgZ2VuMTEgdGFibGUuDQo+IA0KPiANCj4g
TWF0dA0KPiANCj4gPiArCXJldHVybiBEQlVGX1MxX0JJVDsNCj4gPiArfQ0KPiA+ICsNCj4gPiAg
c3RhdGljIHU2NA0KPiA+ICBpY2xfZ2V0X3RvdGFsX3JlbGF0aXZlX2RhdGFfcmF0ZShzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ICpjcnRjX3N0YXRlLA0KPiA+ICAJCQkJIHU2NCAqcGxhbmVf
ZGF0YV9yYXRlKQ0KPiA+IC0tIA0KPiA+IDIuMTcuMQ0KPiA+IA0KPiA+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+ID4gSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdA0KPiA+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA0KPiANCj4gDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
