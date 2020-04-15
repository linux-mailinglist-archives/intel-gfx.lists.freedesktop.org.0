Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61A371AB486
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2020 01:59:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6507F6E296;
	Wed, 15 Apr 2020 23:59:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 379CE6E296
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 23:59:01 +0000 (UTC)
IronPort-SDR: jyIlyOZeqgWxszVIG7um8Fjjr59ffUneLrOyabzYzJwd0pOLVNFFEP7n/wI3RdOdiECw2XR/0Z
 yPVwZix001UA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 16:59:00 -0700
IronPort-SDR: 6GIBeh5BbV0kN65rlxmahiTtSXMmRuLF/HPqKZMOBQaIIHIdKpJhl4iZjIQHwernPhXLe/baIa
 hjEPXyQwhyMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,388,1580803200"; d="scan'208";a="454113643"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga005.fm.intel.com with ESMTP; 15 Apr 2020 16:59:00 -0700
Received: from fmsmsx125.amr.corp.intel.com (10.18.125.40) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 15 Apr 2020 16:58:59 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.90]) by
 FMSMSX125.amr.corp.intel.com ([169.254.2.68]) with mapi id 14.03.0439.000;
 Wed, 15 Apr 2020 16:58:59 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/2] drm/i915/tgl: TBT AUX should use TC power well ops
Thread-Index: AQHWE354B8hNMFCuW0a/1rUopIwC3qh7UoOA
Date: Wed, 15 Apr 2020 23:58:58 +0000
Message-ID: <643acf452d23b2bff81a9dac443f22fe17181fef.camel@intel.com>
References: <20200415233435.3064257-1-matthew.d.roper@intel.com>
In-Reply-To: <20200415233435.3064257-1-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.15.8]
Content-ID: <88C2D9E129896C46B5FC7FC48B7151EB@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/tgl: TBT AUX should use TC
 power well ops
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

T24gV2VkLCAyMDIwLTA0LTE1IGF0IDE2OjM0IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBB
cyBvbiBJQ0wsIHdlIHdhbnQgdG8gdXNlIHRoZSBUeXBlLUMgYXV4IGhhbmRsZXJzIGZvciB0aGUg
VEJUIGF1eA0KPiB3ZWxscw0KPiB0byBlbnN1cmUgdGhlIERQX0FVWF9DSF9DVExfVEJUX0lPIGZs
YWcgaXMgc2V0IHByb3Blcmx5Lg0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6
YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gDQo+IEZpeGVzOiA2NTY0MDliYmFmODcgKCJk
cm0vaTkxNS90Z2w6IEFkZCBwb3dlciB3ZWxsIHN1cHBvcnQiKQ0KPiBDYzogSm9zw6kgUm9iZXJ0
byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IENjOiBJbXJlIERlYWsgPGltcmUu
ZGVha0BpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5y
b3BlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3Bvd2VyLmMgfCAxMiArKysrKystLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2Vk
LCA2IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMNCj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYw0KPiBpbmRleCA2
Y2MwZTIzY2E1NjYuLjAzYmRkZTE5YzhjOSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMNCj4gQEAgLTQxNDcsNyArNDE0
Nyw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaTkxNV9wb3dlcl93ZWxsX2Rlc2MNCj4gdGdsX3Bv
d2VyX3dlbGxzW10gPSB7DQo+ICAJew0KPiAgCQkubmFtZSA9ICJBVVggRCBUQlQxIiwNCj4gIAkJ
LmRvbWFpbnMgPSBUR0xfQVVYX0RfVEJUMV9JT19QT1dFUl9ET01BSU5TLA0KPiAtCQkub3BzID0g
Jmhzd19wb3dlcl93ZWxsX29wcywNCj4gKwkJLm9wcyA9ICZpY2xfdGNfcGh5X2F1eF9wb3dlcl93
ZWxsX29wcywNCj4gIAkJLmlkID0gRElTUF9QV19JRF9OT05FLA0KPiAgCQl7DQo+ICAJCQkuaHN3
LnJlZ3MgPSAmaWNsX2F1eF9wb3dlcl93ZWxsX3JlZ3MsDQo+IEBAIC00MTU4LDcgKzQxNTgsNyBA
QCBzdGF0aWMgY29uc3Qgc3RydWN0IGk5MTVfcG93ZXJfd2VsbF9kZXNjDQo+IHRnbF9wb3dlcl93
ZWxsc1tdID0gew0KPiAgCXsNCj4gIAkJLm5hbWUgPSAiQVVYIEUgVEJUMiIsDQo+ICAJCS5kb21h
aW5zID0gVEdMX0FVWF9FX1RCVDJfSU9fUE9XRVJfRE9NQUlOUywNCj4gLQkJLm9wcyA9ICZoc3df
cG93ZXJfd2VsbF9vcHMsDQo+ICsJCS5vcHMgPSAmaWNsX3RjX3BoeV9hdXhfcG93ZXJfd2VsbF9v
cHMsDQo+ICAJCS5pZCA9IERJU1BfUFdfSURfTk9ORSwNCj4gIAkJew0KPiAgCQkJLmhzdy5yZWdz
ID0gJmljbF9hdXhfcG93ZXJfd2VsbF9yZWdzLA0KPiBAQCAtNDE2OSw3ICs0MTY5LDcgQEAgc3Rh
dGljIGNvbnN0IHN0cnVjdCBpOTE1X3Bvd2VyX3dlbGxfZGVzYw0KPiB0Z2xfcG93ZXJfd2VsbHNb
XSA9IHsNCj4gIAl7DQo+ICAJCS5uYW1lID0gIkFVWCBGIFRCVDMiLA0KPiAgCQkuZG9tYWlucyA9
IFRHTF9BVVhfRl9UQlQzX0lPX1BPV0VSX0RPTUFJTlMsDQo+IC0JCS5vcHMgPSAmaHN3X3Bvd2Vy
X3dlbGxfb3BzLA0KPiArCQkub3BzID0gJmljbF90Y19waHlfYXV4X3Bvd2VyX3dlbGxfb3BzLA0K
PiAgCQkuaWQgPSBESVNQX1BXX0lEX05PTkUsDQo+ICAJCXsNCj4gIAkJCS5oc3cucmVncyA9ICZp
Y2xfYXV4X3Bvd2VyX3dlbGxfcmVncywNCj4gQEAgLTQxODAsNyArNDE4MCw3IEBAIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgaTkxNV9wb3dlcl93ZWxsX2Rlc2MNCj4gdGdsX3Bvd2VyX3dlbGxzW10gPSB7
DQo+ICAJew0KPiAgCQkubmFtZSA9ICJBVVggRyBUQlQ0IiwNCj4gIAkJLmRvbWFpbnMgPSBUR0xf
QVVYX0dfVEJUNF9JT19QT1dFUl9ET01BSU5TLA0KPiAtCQkub3BzID0gJmhzd19wb3dlcl93ZWxs
X29wcywNCj4gKwkJLm9wcyA9ICZpY2xfdGNfcGh5X2F1eF9wb3dlcl93ZWxsX29wcywNCj4gIAkJ
LmlkID0gRElTUF9QV19JRF9OT05FLA0KPiAgCQl7DQo+ICAJCQkuaHN3LnJlZ3MgPSAmaWNsX2F1
eF9wb3dlcl93ZWxsX3JlZ3MsDQo+IEBAIC00MTkxLDcgKzQxOTEsNyBAQCBzdGF0aWMgY29uc3Qg
c3RydWN0IGk5MTVfcG93ZXJfd2VsbF9kZXNjDQo+IHRnbF9wb3dlcl93ZWxsc1tdID0gew0KPiAg
CXsNCj4gIAkJLm5hbWUgPSAiQVVYIEggVEJUNSIsDQo+ICAJCS5kb21haW5zID0gVEdMX0FVWF9I
X1RCVDVfSU9fUE9XRVJfRE9NQUlOUywNCj4gLQkJLm9wcyA9ICZoc3dfcG93ZXJfd2VsbF9vcHMs
DQo+ICsJCS5vcHMgPSAmaWNsX3RjX3BoeV9hdXhfcG93ZXJfd2VsbF9vcHMsDQo+ICAJCS5pZCA9
IERJU1BfUFdfSURfTk9ORSwNCj4gIAkJew0KPiAgCQkJLmhzdy5yZWdzID0gJmljbF9hdXhfcG93
ZXJfd2VsbF9yZWdzLA0KPiBAQCAtNDIwMiw3ICs0MjAyLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVj
dCBpOTE1X3Bvd2VyX3dlbGxfZGVzYw0KPiB0Z2xfcG93ZXJfd2VsbHNbXSA9IHsNCj4gIAl7DQo+
ICAJCS5uYW1lID0gIkFVWCBJIFRCVDYiLA0KPiAgCQkuZG9tYWlucyA9IFRHTF9BVVhfSV9UQlQ2
X0lPX1BPV0VSX0RPTUFJTlMsDQo+IC0JCS5vcHMgPSAmaHN3X3Bvd2VyX3dlbGxfb3BzLA0KPiAr
CQkub3BzID0gJmljbF90Y19waHlfYXV4X3Bvd2VyX3dlbGxfb3BzLA0KPiAgCQkuaWQgPSBESVNQ
X1BXX0lEX05PTkUsDQo+ICAJCXsNCj4gIAkJCS5oc3cucmVncyA9ICZpY2xfYXV4X3Bvd2VyX3dl
bGxfcmVncywNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
