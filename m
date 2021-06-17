Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 337673ABE22
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jun 2021 23:30:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 876986E047;
	Thu, 17 Jun 2021 21:30:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B86026E047
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jun 2021 21:30:23 +0000 (UTC)
IronPort-SDR: k9XpsXvrxPTeW4F+LyrlUkHQg0/X/K/OMlD5XrVEShAUiJMDHDx1mICsUNcqhxWmkl3HZS8WD1
 LGi3pYBKO8mA==
X-IronPort-AV: E=McAfee;i="6200,9189,10018"; a="227974739"
X-IronPort-AV: E=Sophos;i="5.83,281,1616482800"; d="scan'208";a="227974739"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2021 14:30:22 -0700
IronPort-SDR: EdQgKAh6+xfmEndGXo+uwINkfx8Z3pY8cWLftIS9E/yPs3Yt9k0jNfahCDqObvHLhmDzTBpOf1
 GAByIpP6ML+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,281,1616482800"; d="scan'208";a="488804601"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP; 17 Jun 2021 14:30:21 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 17 Jun 2021 14:30:21 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 17 Jun 2021 14:30:20 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.008;
 Thu, 17 Jun 2021 14:30:20 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>, "Srivatsa, Anusha"
 <anusha.srivatsa@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/5] drm/i915/display: Limit disabling PSR
 around cdclk changes to ADL-P
Thread-Index: AQHXY72TAmHqd6tN90yOiuVJY55MdKsZK2sAgAABVoCAAAIcAA==
Date: Thu, 17 Jun 2021 21:30:20 +0000
Message-ID: <378d9ba9efca204691109111f6723ffae3bb2ed7.camel@intel.com>
References: <20210617211225.13549-1-anusha.srivatsa@intel.com>
 <20210617211225.13549-2-anusha.srivatsa@intel.com>
 <7bc8fce7e8ac4f444ad927db7c9e177322eac10d.camel@intel.com>
 <c7b156b9157042bbba5ca3eaadebc9d0@intel.com>
In-Reply-To: <c7b156b9157042bbba5ca3eaadebc9d0@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <98AE3165E9871747B278A33F285EA831@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/display: Limit disabling PSR
 around cdclk changes to ADL-P
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIxLTA2LTE3IGF0IDE0OjI2IC0wNzAwLCBTcml2YXRzYSwgQW51c2hhIHdyb3Rl
Og0KPiANCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+IEZyb206IFNvdXphLCBK
b3NlIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiBTZW50OiBUaHVyc2RheSwgSnVuZSAxNywg
MjAyMSAyOjE4IFBNDQo+ID4gVG86IE11biwgR3dhbi1neWVvbmcgPGd3YW4tZ3llb25nLm11bkBp
bnRlbC5jb20+OyBTcml2YXRzYSwgQW51c2hhDQo+ID4gPGFudXNoYS5zcml2YXRzYUBpbnRlbC5j
b20+OyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gU3ViamVjdDogUmU6IFtJ
bnRlbC1nZnhdIFtQQVRDSCAxLzVdIGRybS9pOTE1L2Rpc3BsYXk6IExpbWl0IGRpc2FibGluZyBQ
U1INCj4gPiBhcm91bmQgY2RjbGsgY2hhbmdlcyB0byBBREwtUA0KPiA+IA0KPiA+IE9uIFRodSwg
MjAyMS0wNi0xNyBhdCAxNDoxMiAtMDcwMCwgQW51c2hhIFNyaXZhdHNhIHdyb3RlOg0KPiA+ID4g
RnJvbTogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPg0KPiA+ID4g
DQo+ID4gPiBPbmx5IEFETC1QIHBsYXRmb3JtIHJlcXVpcmVzIGEgdGVtcG9yYWwgZGlzYWJsaW5n
IG9mIFBTUiBmb3IgY2hhbmdpbmcNCj4gPiA+IHRoZSBDRENMSyBQTEwgZnJlcXVlbmN5IHdpdGgg
Y3Jhd2xpbmcuIENoYW5naW5nIHRoZSBDRENMSyBQTEwNCj4gPiA+IGZyZXF1ZW5jeSBvbiBwcmlv
ciBwbGF0Zm9ybXMgb2YgQURMLVAgb3IgY2hhbmdpbmcgdGhlIENEQ0xLIFBMTA0KPiA+ID4gZnJl
cXVlbmN5IHdpdGhvdXQgY3Jhd2xpbmcgb24gQURMLVAgZG9uJ3QgbmVlZCB0byBkaXNhYmxlIG9m
IFBTUi4NCj4gPiANCj4gPiBUaGlzIGlzIG9ubHkgaGlkaW5nIGEgcG9zc2libGUgYnVnIGZvdW5k
IGluIElDTCB1bmRlciB0aGUgSVNfQUxERVJMQUtFX1AoKQ0KPiA+IGNoZWNrLg0KPiA+IFRoZXJl
IGlzIG5vIHJlYXNvbiB0byBub3QgcGF1c2UgUFNSIGluIG9sZGVyIHBsYXRmb3JtcyBkdXJpbmcg
Y2RjbGNrIGNoYW5nZXMuDQo+IA0KPiBBY2NvcmRpbmcgdG8gMTU3MjksIHBhdXNpbmcgUFNSIGR1
cmluZyBjZGNsayBjaGFuZ2VzIGlzIG5vdCB2YWxpZC4gDQoNClRoZSBic3BlYyB0YWcgaXMgbm90
IHZhbGlkLCBpdCBkbyBub3QgbWVhbnMgdGhlIHNlcXVlbmNlIGlzIG5vdCB2YWxpZCBmb3IgR0VO
OSBhbmQgR0VOMTEgcGxhdGZvcm1zLg0KDQo+IA0KPiBBbnVzaGEgDQo+ID4gPiANCj4gPiA+IEJz
cGVjOiA0OTIwNw0KPiA+ID4gDQo+ID4gPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPiA+IENjOiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFA
aW50ZWwuY29tPg0KPiA+ID4gQ2M6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNv
dnNraXlAaW50ZWwuY29tPg0KPiA+ID4gQ2M6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZh
dHNhQGludGVsLmNvbT4NCj4gPiA+IEZpeGVzOiAxN2MxYTRiN2FjNmYgKCJkcm0vaTkxNTogRGlz
YWJsZSBQU1IgYXJvdW5kIGNkY2xrIGNoYW5nZSIpDQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBHd2Fu
LWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+DQo+ID4gPiAtLS0NCj4gPiA+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgfCAyMg0KPiA+ID4g
KysrKysrKysrKysrKysrKy0tLS0tLQ0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRp
b25zKCspLCA2IGRlbGV0aW9ucygtKQ0KPiA+ID4gDQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+ID4gPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0KPiA+ID4gaW5kZXggNjEzZmZjYzY4ZWJh
Li42ZGE0MjZkMjZhYWMgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY2RjbGsuYw0KPiA+ID4gQEAgLTE5NjIsMTAgKzE5NjIsMTggQEAgc3RhdGlj
IHZvaWQgaW50ZWxfc2V0X2NkY2xrKHN0cnVjdA0KPiA+ID4gZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsDQo+ID4gPiANCj4gPiA+ICAJaW50ZWxfZHVtcF9jZGNsa19jb25maWcoY2RjbGtfY29u
ZmlnLCAiQ2hhbmdpbmcgQ0RDTEsgdG8iKTsNCj4gPiA+IA0KPiA+ID4gLQlmb3JfZWFjaF9pbnRl
bF9lbmNvZGVyX3dpdGhfcHNyKCZkZXZfcHJpdi0+ZHJtLCBlbmNvZGVyKSB7DQo+ID4gPiAtCQlz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpOw0KPiA+
ID4gKwkvKg0KPiA+ID4gKwkgKiBPbmx5IEFETC1QIHBsYXRmb3JtIHJlcXVpcmVzIGEgdGVtcG9y
YWwgZGlzYWJsaW5nIG9mIFBTUiBmb3INCj4gPiBjaGFuZ2luZw0KPiA+ID4gKwkgKiB0aGUgQ0RD
TEsgUExMIGZyZXF1ZW5jeSB3aXRoIGNyYXdsaW5nLg0KPiA+ID4gKwkgKiBDaGFuZ2luZyB0aGUg
Q0RDTEsgUExMIGZyZXF1ZW5jeSBvbiBwcmlvciBwbGF0Zm9ybXMgb2YgQURMLVAgb3INCj4gPiBj
aGFuZ2luZw0KPiA+ID4gKwkgKiB0aGUgQ0RDTEsgUExMIGZyZXF1ZW5jeSB3aXRob3V0IGNyYXds
aW5nIG9uIEFETC1QIGRvbid0IG5lZWQgdG8NCj4gPiBkaXNhYmxlIG9mIFBTUi4NCj4gPiA+ICsJ
ICovDQo+ID4gPiArCWlmIChJU19BTERFUkxBS0VfUChkZXZfcHJpdikpIHsNCj4gPiA+ICsJCWZv
cl9lYWNoX2ludGVsX2VuY29kZXJfd2l0aF9wc3IoJmRldl9wcml2LT5kcm0sDQo+ID4gZW5jb2Rl
cikgew0KPiA+ID4gKwkJCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPQ0KPiA+IGVuY190b19p
bnRlbF9kcChlbmNvZGVyKTsNCj4gPiA+IA0KPiA+ID4gLQkJaW50ZWxfcHNyX3BhdXNlKGludGVs
X2RwKTsNCj4gPiA+ICsJCQlpbnRlbF9wc3JfcGF1c2UoaW50ZWxfZHApOw0KPiA+ID4gKwkJfQ0K
PiA+ID4gIAl9DQo+ID4gPiANCj4gPiA+ICAJLyoNCj4gPiA+IEBAIC0xOTkwLDEwICsxOTk4LDEy
IEBAIHN0YXRpYyB2b2lkIGludGVsX3NldF9jZGNsayhzdHJ1Y3QNCj4gPiBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiwNCj4gPiA+ICAJfQ0KPiA+ID4gIAltdXRleF91bmxvY2soJmRldl9wcml2
LT5nbWJ1c19tdXRleCk7DQo+ID4gPiANCj4gPiA+IC0JZm9yX2VhY2hfaW50ZWxfZW5jb2Rlcl93
aXRoX3BzcigmZGV2X3ByaXYtPmRybSwgZW5jb2Rlcikgew0KPiA+ID4gLQkJc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCA9IGVuY190b19pbnRlbF9kcChlbmNvZGVyKTsNCj4gPiA+ICsJaWYgKElT
X0FMREVSTEFLRV9QKGRldl9wcml2KSkgew0KPiA+ID4gKwkJZm9yX2VhY2hfaW50ZWxfZW5jb2Rl
cl93aXRoX3BzcigmZGV2X3ByaXYtPmRybSwNCj4gPiBlbmNvZGVyKSB7DQo+ID4gPiArCQkJc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCA9DQo+ID4gZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpOw0K
PiA+ID4gDQo+ID4gPiAtCQlpbnRlbF9wc3JfcmVzdW1lKGludGVsX2RwKTsNCj4gPiA+ICsJCQlp
bnRlbF9wc3JfcmVzdW1lKGludGVsX2RwKTsNCj4gPiA+ICsJCX0NCj4gPiA+ICAJfQ0KPiA+ID4g
DQo+ID4gPiAgCWlmIChkcm1fV0FSTigmZGV2X3ByaXYtPmRybSwNCj4gDQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
