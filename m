Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 671543ABDE3
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jun 2021 23:18:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1E246E930;
	Thu, 17 Jun 2021 21:18:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1407E6E9BC
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jun 2021 21:18:04 +0000 (UTC)
IronPort-SDR: FWdKfcQhUlQL9blkMmf9g7nocHUWUg2TpElVK6tYGTeEPvnS2wtqonBrzV4eyIz56xP5O+EbZr
 p2WNAzPrq/8A==
X-IronPort-AV: E=McAfee;i="6200,9189,10018"; a="186145032"
X-IronPort-AV: E=Sophos;i="5.83,281,1616482800"; d="scan'208";a="186145032"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2021 14:18:03 -0700
IronPort-SDR: IZA7cOgs1xMYyL/zRDD/+//so80ndfKuhuEgPePlWAoxEeJNtFBgrwf0aqex9X2gfAmzR43DYf
 Dp28+LSWk3Eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,281,1616482800"; d="scan'208";a="488795536"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga002.fm.intel.com with ESMTP; 17 Jun 2021 14:18:02 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 17 Jun 2021 14:18:02 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 17 Jun 2021 14:18:01 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.008;
 Thu, 17 Jun 2021 14:18:01 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>, "Srivatsa, Anusha"
 <anusha.srivatsa@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/5] drm/i915/display: Limit disabling PSR
 around cdclk changes to ADL-P
Thread-Index: AQHXY72TAmHqd6tN90yOiuVJY55MdKsZK2sA
Date: Thu, 17 Jun 2021 21:18:01 +0000
Message-ID: <7bc8fce7e8ac4f444ad927db7c9e177322eac10d.camel@intel.com>
References: <20210617211225.13549-1-anusha.srivatsa@intel.com>
 <20210617211225.13549-2-anusha.srivatsa@intel.com>
In-Reply-To: <20210617211225.13549-2-anusha.srivatsa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <8F270D5D8C7B864FB28946BCD5209F2B@intel.com>
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

T24gVGh1LCAyMDIxLTA2LTE3IGF0IDE0OjEyIC0wNzAwLCBBbnVzaGEgU3JpdmF0c2Egd3JvdGU6
DQo+IEZyb206IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcubXVuQGludGVsLmNvbT4NCj4g
DQo+IE9ubHkgQURMLVAgcGxhdGZvcm0gcmVxdWlyZXMgYSB0ZW1wb3JhbCBkaXNhYmxpbmcgb2Yg
UFNSIGZvciBjaGFuZ2luZyB0aGUNCj4gQ0RDTEsgUExMIGZyZXF1ZW5jeSB3aXRoIGNyYXdsaW5n
LiBDaGFuZ2luZyB0aGUgQ0RDTEsgUExMIGZyZXF1ZW5jeSBvbg0KPiBwcmlvciBwbGF0Zm9ybXMg
b2YgQURMLVAgb3IgY2hhbmdpbmcgdGhlIENEQ0xLIFBMTCBmcmVxdWVuY3kgd2l0aG91dA0KPiBj
cmF3bGluZyBvbiBBREwtUCBkb24ndCBuZWVkIHRvIGRpc2FibGUgb2YgUFNSLg0KDQpUaGlzIGlz
IG9ubHkgaGlkaW5nIGEgcG9zc2libGUgYnVnIGZvdW5kIGluIElDTCB1bmRlciB0aGUgSVNfQUxE
RVJMQUtFX1AoKSBjaGVjay4NClRoZXJlIGlzIG5vIHJlYXNvbiB0byBub3QgcGF1c2UgUFNSIGlu
IG9sZGVyIHBsYXRmb3JtcyBkdXJpbmcgY2RjbGNrIGNoYW5nZXMuDQoNCj4gDQo+IEJzcGVjOiA0
OTIwNw0KPiANCj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+DQo+IENjOiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiBDYzog
U3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+DQo+IENj
OiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+DQo+IEZpeGVzOiAx
N2MxYTRiN2FjNmYgKCJkcm0vaTkxNTogRGlzYWJsZSBQU1IgYXJvdW5kIGNkY2xrIGNoYW5nZSIp
DQo+IFNpZ25lZC1vZmYtYnk6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcubXVuQGludGVs
LmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xr
LmMgfCAyMiArKysrKysrKysrKysrKysrLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMTYgaW5z
ZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gaW5kZXggNjEzZmZjYzY4ZWJhLi42ZGE0MjZkMjZhYWMg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsu
Yw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4g
QEAgLTE5NjIsMTAgKzE5NjIsMTggQEAgc3RhdGljIHZvaWQgaW50ZWxfc2V0X2NkY2xrKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwNCj4gIA0KPiAgCWludGVsX2R1bXBfY2RjbGtf
Y29uZmlnKGNkY2xrX2NvbmZpZywgIkNoYW5naW5nIENEQ0xLIHRvIik7DQo+ICANCj4gLQlmb3Jf
ZWFjaF9pbnRlbF9lbmNvZGVyX3dpdGhfcHNyKCZkZXZfcHJpdi0+ZHJtLCBlbmNvZGVyKSB7DQo+
IC0JCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBlbmNfdG9faW50ZWxfZHAoZW5jb2Rlcik7
DQo+ICsJLyoNCj4gKwkgKiBPbmx5IEFETC1QIHBsYXRmb3JtIHJlcXVpcmVzIGEgdGVtcG9yYWwg
ZGlzYWJsaW5nIG9mIFBTUiBmb3IgY2hhbmdpbmcNCj4gKwkgKiB0aGUgQ0RDTEsgUExMIGZyZXF1
ZW5jeSB3aXRoIGNyYXdsaW5nLg0KPiArCSAqIENoYW5naW5nIHRoZSBDRENMSyBQTEwgZnJlcXVl
bmN5IG9uIHByaW9yIHBsYXRmb3JtcyBvZiBBREwtUCBvciBjaGFuZ2luZw0KPiArCSAqIHRoZSBD
RENMSyBQTEwgZnJlcXVlbmN5IHdpdGhvdXQgY3Jhd2xpbmcgb24gQURMLVAgZG9uJ3QgbmVlZCB0
byBkaXNhYmxlIG9mIFBTUi4NCj4gKwkgKi8NCj4gKwlpZiAoSVNfQUxERVJMQUtFX1AoZGV2X3By
aXYpKSB7DQo+ICsJCWZvcl9lYWNoX2ludGVsX2VuY29kZXJfd2l0aF9wc3IoJmRldl9wcml2LT5k
cm0sIGVuY29kZXIpIHsNCj4gKwkJCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBlbmNfdG9f
aW50ZWxfZHAoZW5jb2Rlcik7DQo+ICANCj4gLQkJaW50ZWxfcHNyX3BhdXNlKGludGVsX2RwKTsN
Cj4gKwkJCWludGVsX3Bzcl9wYXVzZShpbnRlbF9kcCk7DQo+ICsJCX0NCj4gIAl9DQo+ICANCj4g
IAkvKg0KPiBAQCAtMTk5MCwxMCArMTk5OCwxMiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9zZXRfY2Rj
bGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiAgCX0NCj4gIAltdXRleF91
bmxvY2soJmRldl9wcml2LT5nbWJ1c19tdXRleCk7DQo+ICANCj4gLQlmb3JfZWFjaF9pbnRlbF9l
bmNvZGVyX3dpdGhfcHNyKCZkZXZfcHJpdi0+ZHJtLCBlbmNvZGVyKSB7DQo+IC0JCXN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHAgPSBlbmNfdG9faW50ZWxfZHAoZW5jb2Rlcik7DQo+ICsJaWYgKElT
X0FMREVSTEFLRV9QKGRldl9wcml2KSkgew0KPiArCQlmb3JfZWFjaF9pbnRlbF9lbmNvZGVyX3dp
dGhfcHNyKCZkZXZfcHJpdi0+ZHJtLCBlbmNvZGVyKSB7DQo+ICsJCQlzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwID0gZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpOw0KPiAgDQo+IC0JCWludGVsX3Bz
cl9yZXN1bWUoaW50ZWxfZHApOw0KPiArCQkJaW50ZWxfcHNyX3Jlc3VtZShpbnRlbF9kcCk7DQo+
ICsJCX0NCj4gIAl9DQo+ICANCj4gIAlpZiAoZHJtX1dBUk4oJmRldl9wcml2LT5kcm0sDQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
