Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D6D91071CF
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 12:57:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9EA46F53A;
	Fri, 22 Nov 2019 11:57:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EC426F53A
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Nov 2019 11:57:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Nov 2019 03:57:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,229,1571727600"; d="scan'208";a="201490967"
Received: from irsmsx153.ger.corp.intel.com ([163.33.192.75])
 by orsmga008.jf.intel.com with ESMTP; 22 Nov 2019 03:57:38 -0800
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.185]) by
 IRSMSX153.ger.corp.intel.com ([169.254.9.81]) with mapi id 14.03.0439.000;
 Fri, 22 Nov 2019 11:57:38 +0000
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [PATCH v1] drm/i915: Support more QGV points
Thread-Index: AQHVoSZ5yHOnlB+1PU+MCLrB+rr5O6eXEpMAgAAChAA=
Date: Fri, 22 Nov 2019 11:57:37 +0000
Message-ID: <ebf795615e683666857803dd6662266288fa3d5e.camel@intel.com>
References: <20191122111514.22181-1-stanislav.lisovskiy@intel.com>
 <871ru0w2uz.fsf@intel.com>
In-Reply-To: <871ru0w2uz.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.89]
Content-ID: <1AF72838F1697140A08BE8C34FC8C4C0@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v1] drm/i915: Support more QGV points
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
Cc: "Sarvela, Tomi P" <tomi.p.sarvela@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDE5LTExLTIyIGF0IDEzOjQ2ICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gRnJpLCAyMiBOb3YgMjAxOSwgU3RhbmlzbGF2IExpc292c2tpeSA8DQo+IHN0YW5pc2xhdi5s
aXNvdnNraXlAaW50ZWwuY29tPiB3cm90ZToNCj4gPiBBY2NvcmRpbmcgdG8gQlNwZWMgNTM5OTgs
IHRoZXJlIGlzIGEgbWFzayBvZg0KPiA+IG1heCA4IFNBR1YvUUdWIHBvaW50cyB3ZSBuZWVkIHRv
IHN1cHBvcnQuDQo+ID4gDQo+ID4gQnVtcGluZyB0aGlzIHVwIHRvIGtlZXAgdGhlIENJIGhhcHB5
KGN1cnJlbnRseQ0KPiA+IHByZXZlbnRpbmcgdGVzdHMgdG8gcnVuKSwgdW50aWwgYWxsIFNBR1YN
Cj4gPiBjaGFuZ2VzIGxhbmQuDQo+ID4gDQo+ID4gRml4ZXM6IGh0dHBzOi8vYnVncy5mcmVlZGVz
a3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMjE4OQ0KPiA+IFNpZ25lZC1vZmYtYnk6IFN0YW5p
c2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPg0KPiA+IC0tLQ0K
PiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMgfCAyICstDQo+ID4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICB8IDQgKysrKw0KPiA+ICAy
IGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiA+IA0KPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4g
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYw0KPiA+IGluZGV4IDg2
ZTc1ZTg1ODAwOC4uZWM0YzEyN2E0MGI2IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYncuYw0KPiA+IEBAIC0xNSw3ICsxNSw3IEBAIHN0cnVjdCBpbnRlbF9x
Z3ZfcG9pbnQgew0KPiA+ICB9Ow0KPiA+ICANCj4gPiAgc3RydWN0IGludGVsX3Fndl9pbmZvIHsN
Cj4gPiAtCXN0cnVjdCBpbnRlbF9xZ3ZfcG9pbnQgcG9pbnRzWzNdOw0KPiA+ICsJc3RydWN0IGlu
dGVsX3Fndl9wb2ludCBwb2ludHNbSTkxNV9OVU1fU0FHVl9QT0lOVFNdOw0KPiA+ICAJdTggbnVt
X3BvaW50czsNCj4gPiAgCXU4IG51bV9jaGFubmVsczsNCj4gPiAgCXU4IHRfYmw7DQo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gPiBpbmRleCBmZGFlNWE5MTliYzguLmJkOGNlMzQx
YmUyMiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaA0KPiA+IEBAIC02MjEsNiAr
NjIxLDEwIEBAIHN0cnVjdCBpOTE1X2dlbV9tbSB7DQo+ID4gIA0KPiA+ICAjZGVmaW5lIEk5MTVf
RU5HSU5FX1dFREdFRF9USU1FT1VUICAoNjAgKiBIWikgIC8qIFJlc2V0IGJ1dCBubw0KPiA+IHJl
Y292ZXJ5PyAqLw0KPiA+ICANCj4gPiArLyogQlNwZWMgcHJlY2lzZWx5IGRlZmluZXMgdGhpcyAq
Lw0KPiA+ICsjZGVmaW5lIEk5MTVfTlVNX1NBR1ZfUE9JTlRTIDgNCj4gDQo+IFBsZWFzZSBwdXQg
dGhpcyBpbiBpbnRlbF9idy5jLCBhbmQgd2UgY2FuIG1vdmUgaXQgb3V0IHdoZW4gd2UgbmVlZCBp
dA0KPiBlbHNld2hlcmUuIEFuZCBhdCB0aGF0IHBvaW50LCBsZXQncyBwdXQgaXQgc29tZXdoZXJl
IG90aGVyIHRoYW4NCj4gaTkxNV9kcnYuaCB3aGljaCBzaG91bGQgYmUgcmVkdWNlZCBpbiBzaXpl
LCBub3QgaW5jcmVhc2VkLg0KDQpZZXMgc3VyZSwgbG9va3MgbGlrZSBpdCBpcyBzdGlsbCBkb2Vz
bid0IHdvcmsgcHJvcGVybHkgZm9yIFRHTCAtIA0KdGhlcmUgc2VlbXMgdG8gYmUgdGhpcyAzIGhh
cmRjb2RlZCBpbiBvdGhlciBwbGFjZXMsIHNvIEkgd2lsbCANCnByb2JhYmx5IHN0aWxsIHRlc3Qg
aXQgbG9jYWxseSBtb3JlIGEgYml0Lg0KVGhlcmUgc2VlbXMgdG8gYmUgYWxzbyBoYXJkY29kZWQg
c3R1ZmYgaW4gYWxnb3JpdGhtIC0gdGhpcyANCmFsbCB3b3VsZCBiZSBmaXhlZCBieSBteSBTQUdW
IHBhdGNoLCBidXQgdGhhdCBvbmUgaGFzIG11Y2ggbW9yZQ0Kc3R1ZmYgdG8gY2hhbmdlLiBTbyBu
ZWVkIHRvIGZpZ3VyZSBvdXQgbm93IHNvbWUgdGVtcG9yYXJ5DQpidXQgc3RpbGwgd29ya2luZyBz
b2x1dGlvbiBvbiBob3cganVzdCB0byBpbmNyZWFzZSBhbW91bnQgDQpvZiBRR1YgcG9pbnRzIGJ1
dCB3aXRob3V0IHB1bGxpbmcgaW4gbWFqb3IgU0FHViBjaGFuZ2VzLg0KDQpTdGFuDQoNCj4gDQo+
IEJSLA0KPiBKYW5pLg0KPiANCj4gDQo+ID4gKw0KPiA+ICsNCj4gPiAgc3RydWN0IGRkaV92YnRf
cG9ydF9pbmZvIHsNCj4gPiAgCS8qIE5vbi1OVUxMIGlmIHBvcnQgcHJlc2VudC4gKi8NCj4gPiAg
CWNvbnN0IHN0cnVjdCBjaGlsZF9kZXZpY2VfY29uZmlnICpjaGlsZDsNCj4gDQo+IA0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
