Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4134A3DF64D
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Aug 2021 22:19:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1AD16E8D0;
	Tue,  3 Aug 2021 20:19:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B05986E8D0
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Aug 2021 20:19:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10065"; a="194053070"
X-IronPort-AV: E=Sophos;i="5.84,292,1620716400"; d="scan'208";a="194053070"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2021 13:19:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,292,1620716400"; d="scan'208";a="441327122"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 03 Aug 2021 13:19:13 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 3 Aug 2021 13:19:13 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 3 Aug 2021 13:19:12 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.010;
 Tue, 3 Aug 2021 13:19:12 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 6/7] drm/i915/display/adl_p: Correctly
 program MBUS DBOX A credits
Thread-Index: AQHXdD46au8hjG9GgUmppLRurKwU16s8KUoAgCauhIA=
Date: Tue, 3 Aug 2021 20:19:12 +0000
Message-ID: <0bf83b6054ba81b387ea97b6dbbe2eba74677cd1.camel@intel.com>
References: <20210708211827.288601-1-jose.souza@intel.com>
 <20210708211827.288601-6-jose.souza@intel.com>
 <20210710054122.GS951094@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20210710054122.GS951094@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <5B44CFF45FD2384B85C5B293B4B6AF76@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915/display/adl_p: Correctly
 program MBUS DBOX A credits
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

T24gRnJpLCAyMDIxLTA3LTA5IGF0IDIyOjQxIC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBP
biBUaHUsIEp1bCAwOCwgMjAyMSBhdCAwMjoxODoyNlBNIC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRl
IFNvdXphIHdyb3RlOg0KPiA+IEFsZGVybGFrZS1QIGhhdmUgZGlmZmVyZW50IHZhbHVlcyBmb3Ig
TUJVUyBEQk9YIEEgY3JlZGl0cyBkZXBlbmRpbmcNCj4gPiBpZiBNQlVTIGpvaW4gaXMgZW5hYmxl
ZCBvciBub3QuDQo+ID4gDQo+ID4gQlNwZWM6IDUwMzQzDQo+ID4gQlNwZWM6IDU0MzY5DQo+ID4g
Q2M6IE1hdHQgQXR3b29kIDxtYXR0aGV3LnMuYXR3b29kQGludGVsLmNvbT4NCj4gPiBTaWduZWQt
b2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4g
PiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMg
fCAxNiArKysrKysrKysrKystLS0tDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25z
KCspLCA0IGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gaW5kZXggNjVkZGI2Y2ExNmU2Ny4uZmUzODA4OTZl
Yjk5ZSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jDQo+ID4gQEAgLTM0MDAsMTMgKzM0MDAsMTcgQEAgc3RhdGljIHZvaWQgZ2xrX3Bp
cGVfc2NhbGVyX2Nsb2NrX2dhdGluZ193YShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsDQo+ID4gIAlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgQ0xLR0FURV9ESVNfUFNMKHBpcGUp
LCB2YWwpOw0KPiA+ICB9DQo+ID4gIA0KPiA+IC1zdGF0aWMgdm9pZCBpY2xfcGlwZV9tYnVzX2Vu
YWJsZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykNCj4gPiArc3RhdGljIHZvaWQgaWNsX3BpcGVf
bWJ1c19lbmFibGUoc3RydWN0IGludGVsX2NydGMgKmNydGMsIGJvb2wgam9pbmVkX21idXMpDQo+
ID4gIHsNCj4gPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUo
Y3J0Yy0+YmFzZS5kZXYpOw0KPiA+ICAJZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOw0KPiA+
ICAJdTMyIHZhbDsNCj4gPiAgDQo+ID4gLQl2YWwgPSBNQlVTX0RCT1hfQV9DUkVESVQoMik7DQo+
ID4gKwkvKiBXYV8yMjAxMDk0NzM1ODphZGwtcCAqLw0KPiA+ICsJaWYgKElTX0FMREVSTEFLRV9Q
KGRldl9wcml2KSkNCj4gPiArCQl2YWwgPSBqb2luZWRfbWJ1cyA/IE1CVVNfREJPWF9BX0NSRURJ
VCg2KSA6IE1CVVNfREJPWF9BX0NSRURJVCg0KTsNCj4gPiArCWVsc2UNCj4gPiArCQl2YWwgPSBN
QlVTX0RCT1hfQV9DUkVESVQoMik7DQo+IA0KPiBJZiB3ZSdyZSBpbiBzaW5nbGUtcGlwZSAvIGpv
aW5lZC1tYnVzIG1vZGUsIHRoZW4gd2UnbGwgcHJvZ3JhbSB0aGUNCj4gY3JlZGl0cyB0byA2LiAg
SWYgd2UgbGF0ZXIgdHVybiBvbiBhbm90aGVyIHBpcGUsIHJlYWxsb2NhdGUgdGhlIEREQiwgYW5k
DQo+IHR1cm4gb2ZmIGpvaW5lZC1tYnVzIG1vZGUsIHdlJ2xsIHNldCB0aGF0IG90aGVyIHBpcGUn
cyBjcmVkaXRzIHRvIDQNCj4gZHVyaW5nIHRoZSBzZXF1ZW5jZSBvZiBoc3dfY3J0Y19lbmFibGUo
KSAtPiBpY2xfcGlwZV9tYnVzX2VuYWJsZSgpLiAgQnV0DQo+IGRvbid0IHdlIGFsc28gbmVlZCB0
byBnbyBiYWNrIHJlLXByb2dyYW0gdGhlIGNyZWRpdHMgZG93biB0byA0IG9uIHRoZQ0KPiBmaXJz
dCBwaXBlIHRvbyAod2hpY2ggaXMgYWxyZWFkeSBlbmFibGVkIGFuZCB3b24ndCBiZSByZS1jYWxs
aW5nDQo+IGhzd19jcnRjX2VuYWJsZSgpKT8NCj4gDQo+IEkgbWlnaHQgYmUgbWlzc2luZyBzb21l
dGhpbmc7IGl0J3MgYmVlbiBhIHdoaWxlIHNpbmNlIEkgcmVhbGx5IGxvb2tlZCBhdA0KPiBhbnkg
b2YgdGhlIGRidWYgc3R1ZmYuLi4NCg0Kc2tsX2NvbXB1dGVfZGRiKCkgaXMgaGFuZGxpbmcgdGhp
cyBjYXNlcywgaXQgd2lsbCBmb3JjZSBhIG1vZGVzZXQgaW4gYWxsIHBpcGVzIGluIGNhc2VzIGxp
a2UgdGhpcy4NCg0KPiANCj4gDQo+IE1hdHQNCj4gDQo+ID4gIA0KPiA+ICAJaWYgKERJU1BMQVlf
VkVSKGRldl9wcml2KSA+PSAxMikgew0KPiA+ICAJCXZhbCB8PSBNQlVTX0RCT1hfQldfQ1JFRElU
KDIpOw0KPiA+IEBAIC0zNTYxLDggKzM1NjUsMTIgQEAgc3RhdGljIHZvaWQgaHN3X2NydGNfZW5h
YmxlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+ICAJaWYgKGRldl9wcml2
LT5kaXNwbGF5LmluaXRpYWxfd2F0ZXJtYXJrcykNCj4gPiAgCQlkZXZfcHJpdi0+ZGlzcGxheS5p
bml0aWFsX3dhdGVybWFya3Moc3RhdGUsIGNydGMpOw0KPiA+ICANCj4gPiAtCWlmIChESVNQTEFZ
X1ZFUihkZXZfcHJpdikgPj0gMTEpDQo+ID4gLQkJaWNsX3BpcGVfbWJ1c19lbmFibGUoY3J0Yyk7
DQo+ID4gKwlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDExKSB7DQo+ID4gKwkJY29uc3Qg
c3RydWN0IGludGVsX2RidWZfc3RhdGUgKmRidWZfc3RhdGUgPQ0KPiA+ICsJCQkJaW50ZWxfYXRv
bWljX2dldF9uZXdfZGJ1Zl9zdGF0ZShzdGF0ZSk7DQo+ID4gKw0KPiA+ICsJCWljbF9waXBlX21i
dXNfZW5hYmxlKGNydGMsIGRidWZfc3RhdGUtPmpvaW5lZF9tYnVzKTsNCj4gPiArCX0NCj4gPiAg
DQo+ID4gIAlpZiAobmV3X2NydGNfc3RhdGUtPmJpZ2pvaW5lcl9zbGF2ZSkNCj4gPiAgCQlpbnRl
bF9jcnRjX3ZibGFua19vbihuZXdfY3J0Y19zdGF0ZSk7DQo+ID4gLS0gDQo+ID4gMi4zMi4wDQo+
ID4gDQo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18N
Cj4gPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0DQo+ID4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZw0KPiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4DQo+IA0KDQo=
