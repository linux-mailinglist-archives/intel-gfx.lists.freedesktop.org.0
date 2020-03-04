Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85BB1179C8F
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 00:54:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B9186EB75;
	Wed,  4 Mar 2020 23:54:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F8156EB75
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Mar 2020 23:54:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 15:54:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,515,1574150400"; d="scan'208";a="352220266"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga001.fm.intel.com with ESMTP; 04 Mar 2020 15:44:21 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.129]) by
 FMSMSX105.amr.corp.intel.com ([169.254.4.155]) with mapi id 14.03.0439.000;
 Wed, 4 Mar 2020 15:44:21 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Fix documentation for
 intel_dpll_get_freq()
Thread-Index: AQHV8jcDyMgusRxe30KG3f9AbzVdfKg5n5kA
Date: Wed, 4 Mar 2020 23:44:20 +0000
Message-ID: <3e9e2e5a7382bfc4e64aaf51d4c845e12e535afe.camel@intel.com>
References: <20200304150918.25473-1-imre.deak@intel.com>
In-Reply-To: <20200304150918.25473-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.241]
Content-ID: <CC1B22C3715F154DA0A1AB21B0BAF27B@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix documentation for
 intel_dpll_get_freq()
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

T24gV2VkLCAyMDIwLTAzLTA0IGF0IDE3OjA5ICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEZp
eCB0aGUgZm9sbG93aW5nIGtlcm5lbGRvYyB3YXJuaW5nIGFuZCB3aGlsZSBhdCBpdCBhbHNvIHRo
ZSBkb2MgZm9yDQo+IHRoZQ0KPiBjb3JyZXNwb25kaW5nIHZmdW5jIGhvb2suDQo+IA0KPiAkIG1h
a2UgaHRtbGRvY3MgMj4mMSA+IC9kZXYvbnVsbCB8IGdyZXAgaTkxNQ0KPiAuL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuaDoyODU6IHdhcm5pbmc6DQo+IEZ1bmN0
aW9uIHBhcmFtZXRlciBvciBtZW1iZXIgJ2dldF9mcmVxJyBub3QgZGVzY3JpYmVkIGluDQo+ICdp
bnRlbF9zaGFyZWRfZHBsbF9mdW5jcycNCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUg
U291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJl
IERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jIHwgNyArKysrKysrDQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmggfCA2ICsrKysrKw0KPiAgMiBmaWxlcyBj
aGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jDQo+IGluZGV4IDc2ZDE0NDg2YjNhNS4uMmQ0N2Yx
Zjc1NmEyIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwbGxfbWdyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cGxsX21nci5jDQo+IEBAIC00NDA4LDYgKzQ0MDgsMTMgQEAgdm9pZCBpbnRlbF91cGRhdGVfYWN0
aXZlX2RwbGwoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJZHBsbF9t
Z3ItPnVwZGF0ZV9hY3RpdmVfZHBsbChzdGF0ZSwgY3J0YywgZW5jb2Rlcik7DQo+ICB9DQo+ICAN
Cj4gKy8qKg0KPiArICogaW50ZWxfZHBsbF9nZXRfZnJlcSAtIGNhbGN1bGF0ZSB0aGUgRFBMTCdz
IG91dHB1dCBmcmVxdWVuY3kNCj4gKyAqIEBpOTE1OiBpOTE1IGRldmljZQ0KPiArICogQHBsbDog
RFBMTCBmb3Igd2hpY2ggdG8gY2FsY3VsYXRlIHRoZSBvdXRwdXQgZnJlcXVlbmN5DQo+ICsgKg0K
PiArICogUmV0dXJuIHRoZSBvdXRwdXQgZnJlcXVlbmN5IGNvcnJlc3BvbmRpbmcgdG8gQHBsbCdz
IGN1cnJlbnQNCj4gc3RhdGUuDQo+ICsgKi8NCj4gIGludCBpbnRlbF9kcGxsX2dldF9mcmVxKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LA0KPiAgCQkJY29uc3Qgc3RydWN0IGludGVsX3No
YXJlZF9kcGxsICpwbGwpDQo+ICB7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwbGxfbWdyLmgNCj4gaW5kZXggNWM4NDc2Mjc1ODBhLi41ZDlhMmJjMzcxZTcg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9t
Z3IuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdy
LmgNCj4gQEAgLTI3OSw2ICsyNzksMTIgQEAgc3RydWN0IGludGVsX3NoYXJlZF9kcGxsX2Z1bmNz
IHsNCj4gIAkJCSAgICAgc3RydWN0IGludGVsX3NoYXJlZF9kcGxsICpwbGwsDQo+ICAJCQkgICAg
IHN0cnVjdCBpbnRlbF9kcGxsX2h3X3N0YXRlICpod19zdGF0ZSk7DQo+ICANCj4gKwkvKioNCj4g
KwkgKiBAZ2V0X2ZyZXE6DQo+ICsJICoNCj4gKwkgKiBIb29rIGZvciBjYWxjdWxhdGluZyB0aGUg
cGxsJ3Mgb3V0cHV0IGZyZXF1ZW5jeSBiYXNlZCBvbiBpdHMNCj4gKwkgKiBjdXJyZW50IHN0YXRl
Lg0KPiArCSAqLw0KPiAgCWludCAoKmdldF9mcmVxKShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSwNCj4gIAkJCWNvbnN0IHN0cnVjdCBpbnRlbF9zaGFyZWRfZHBsbCAqcGxsKTsNCj4gIH07
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
