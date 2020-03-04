Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A8203179542
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 17:29:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 003966E08C;
	Wed,  4 Mar 2020 16:29:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49DFF6E08C
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Mar 2020 16:29:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 08:29:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,514,1574150400"; d="scan'208";a="319869743"
Received: from irsmsx110.ger.corp.intel.com ([163.33.3.25])
 by orsmga001.jf.intel.com with ESMTP; 04 Mar 2020 08:29:48 -0800
Received: from irsmsx602.ger.corp.intel.com (163.33.146.8) by
 irsmsx110.ger.corp.intel.com (163.33.3.25) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 4 Mar 2020 16:29:47 +0000
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 4 Mar 2020 16:29:47 +0000
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.1713.004;
 Wed, 4 Mar 2020 16:29:47 +0000
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 06/20] drm/i915: Polish some dbuf debugs
Thread-Index: AQHV6/6sZbr7ldUUOU29PWw7N/X7gqg4q3CA
Date: Wed, 4 Mar 2020 16:29:47 +0000
Message-ID: <67b2f1122c23316304d0e10f57a0d356705bafc0.camel@intel.com>
References: <20200225171125.28885-1-ville.syrjala@linux.intel.com>
 <20200225171125.28885-7-ville.syrjala@linux.intel.com>
In-Reply-To: <20200225171125.28885-7-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.89]
Content-ID: <ECD4F3D2ABA1704A9D5B7E957024D717@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 06/20] drm/i915: Polish some dbuf debugs
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

T24gVHVlLCAyMDIwLTAyLTI1IGF0IDE5OjExICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gUG9saXNoIHNvbWUgb2YgdGhlIGRidWYgY29kZSB0byBnaXZlIG1vcmUgbWVhbmluZ2Z1
bCBkZWJ1Zw0KPiBtZXNzYWdlcyBhbmQgd2hhdG5vdC4gQWxzbyB3ZSBjYW4gc3dpdGNoIG92ZXIg
dG8gdGhlIHBlci1kZXZpY2UNCj4gZGVidWdzL3dhcm5zIGF0IHRoZSBzYW1lIHRpbWUuDQo+IA0K
PiBDYzogU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+
DQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+DQo+IC0tLQ0KPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9w
b3dlci5jICAgIHwgNDAgKysrKysrKysrLS0tLS0tDQo+IC0tLS0NCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAxOSBpbnNlcnRpb25zKCspLCAyMSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYw0KPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jDQo+IGluZGV4
IDZlMjVhMTMxNzE2MS4uZTgxZTU2MWU4YWMwIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYw0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYw0KPiBAQCAtNDQzMywxMSAr
NDQzMywxMiBAQCBzdGF0aWMgdm9pZA0KPiBpbnRlbF9wb3dlcl9kb21haW5zX3N5bmNfaHcoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiAgCW11dGV4X3VubG9jaygmcG93ZXJf
ZG9tYWlucy0+bG9jayk7DQo+ICB9DQo+ICANCj4gLXN0YXRpYyBpbmxpbmUNCj4gLWJvb2wgaW50
ZWxfZGJ1Zl9zbGljZV9zZXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiAt
CQkJICBpOTE1X3JlZ190IHJlZywgYm9vbCBlbmFibGUpDQo+ICtzdGF0aWMgdm9pZCBpbnRlbF9k
YnVmX3NsaWNlX3NldChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ICsJCQkJ
IGVudW0gZGJ1Zl9zbGljZSBzbGljZSwgYm9vbCBlbmFibGUpDQo+ICB7DQo+IC0JdTMyIHZhbCwg
c3RhdHVzOw0KPiArCWk5MTVfcmVnX3QgcmVnID0gREJVRl9DVExfUyhzbGljZSk7DQo+ICsJYm9v
bCBzdGF0ZTsNCj4gKwl1MzIgdmFsOw0KPiAgDQo+ICAJdmFsID0gaW50ZWxfZGVfcmVhZChkZXZf
cHJpdiwgcmVnKTsNCj4gIAl2YWwgPSBlbmFibGUgPyAodmFsIHwgREJVRl9QT1dFUl9SRVFVRVNU
KSA6ICh2YWwgJg0KPiB+REJVRl9QT1dFUl9SRVFVRVNUKTsNCj4gQEAgLTQ0NDUsMTMgKzQ0NDYs
MTAgQEAgYm9vbCBpbnRlbF9kYnVmX3NsaWNlX3NldChzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYsDQo+ICAJaW50ZWxfZGVfcG9zdGluZ19yZWFkKGRldl9wcml2LCByZWcpOw0K
PiAgCXVkZWxheSgxMCk7DQo+ICANCj4gLQlzdGF0dXMgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2
LCByZWcpICYgREJVRl9QT1dFUl9TVEFURTsNCj4gLQlpZiAoKGVuYWJsZSAmJiAhc3RhdHVzKSB8
fCAoIWVuYWJsZSAmJiBzdGF0dXMpKSB7DQo+IC0JCWRybV9lcnIoJmRldl9wcml2LT5kcm0sICJE
QnVzIHBvd2VyICVzIHRpbWVvdXQhXG4iLA0KPiAtCQkJZW5hYmxlID8gImVuYWJsZSIgOiAiZGlz
YWJsZSIpOw0KPiAtCQlyZXR1cm4gZmFsc2U7DQo+IC0JfQ0KPiAtCXJldHVybiB0cnVlOw0KPiAr
CXN0YXRlID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgcmVnKSAmIERCVUZfUE9XRVJfU1RBVEU7
DQo+ICsJZHJtX1dBUk4oJmRldl9wcml2LT5kcm0sIGVuYWJsZSAhPSBzdGF0ZSwNCj4gKwkJICJE
QnVmIHNsaWNlICVkIHBvd2VyICVzIHRpbWVvdXQhXG4iLA0KPiArCQkgc2xpY2UsIGVuYWJsZSA/
ICJlbmFibGUiIDogImRpc2FibGUiKTsNCj4gIH0NCj4gIA0KPiAgc3RhdGljIHZvaWQgZ2VuOV9k
YnVmX2VuYWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+IEBAIC00NDY3
LDE0ICs0NDY1LDE2IEBAIHN0YXRpYyB2b2lkIGdlbjlfZGJ1Zl9kaXNhYmxlKHN0cnVjdA0KPiBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gIHZvaWQgaWNsX2RidWZfc2xpY2VzX3VwZGF0
ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ICAJCQkgICAgdTggcmVxX3Ns
aWNlcykNCj4gIHsNCj4gLQlpbnQgaTsNCj4gLQlpbnQgbWF4X3NsaWNlcyA9IElOVEVMX0lORk8o
ZGV2X3ByaXYpLQ0KPiA+bnVtX3N1cHBvcnRlZF9kYnVmX3NsaWNlczsNCj4gKwlpbnQgbnVtX3Ns
aWNlcyA9IElOVEVMX0lORk8oZGV2X3ByaXYpLQ0KPiA+bnVtX3N1cHBvcnRlZF9kYnVmX3NsaWNl
czsNCj4gIAlzdHJ1Y3QgaTkxNV9wb3dlcl9kb21haW5zICpwb3dlcl9kb21haW5zID0gJmRldl9w
cml2LQ0KPiA+cG93ZXJfZG9tYWluczsNCj4gKwllbnVtIGRidWZfc2xpY2Ugc2xpY2U7DQo+ICAN
Cj4gLQlkcm1fV0FSTigmZGV2X3ByaXYtPmRybSwgaHdlaWdodDgocmVxX3NsaWNlcykgPiBtYXhf
c2xpY2VzLA0KPiAtCQkgIkludmFsaWQgbnVtYmVyIG9mIGRidWYgc2xpY2VzIHJlcXVlc3RlZFxu
Iik7DQo+ICsJZHJtX1dBUk4oJmRldl9wcml2LT5kcm0sIHJlcV9zbGljZXMgJiB+KEJJVChudW1f
c2xpY2VzKSAtIDEpLA0KPiArCQkgIkludmFsaWQgc2V0IG9mIGRidWYgc2xpY2VzICgweCV4KSBy
ZXF1ZXN0ZWQgKG51bSBkYnVmDQo+IHNsaWNlcyAlZClcbiIsDQo+ICsJCSByZXFfc2xpY2VzLCBu
dW1fc2xpY2VzKTsNCj4gIA0KPiAtCURSTV9ERUJVR19LTVMoIlVwZGF0aW5nIGRidWYgc2xpY2Vz
IHRvIDB4JXhcbiIsIHJlcV9zbGljZXMpOw0KPiArCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJt
LA0KPiArCQkgICAgIlVwZGF0aW5nIGRidWYgc2xpY2VzIHRvIDB4JXhcbiIsIHJlcV9zbGljZXMp
Ow0KPiAgDQo+ICAJLyoNCj4gIAkgKiBNaWdodCBiZSBydW5uaW5nIHRoaXMgaW4gcGFyYWxsZWwg
dG8NCj4gZ2VuOV9kY19vZmZfcG93ZXJfd2VsbF9lbmFibGUNCj4gQEAgLTQ0ODUsMTEgKzQ0ODUs
OSBAQCB2b2lkIGljbF9kYnVmX3NsaWNlc191cGRhdGUoc3RydWN0DQo+IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2LA0KPiAgCSAqLw0KPiAgCW11dGV4X2xvY2soJnBvd2VyX2RvbWFpbnMtPmxv
Y2spOw0KPiAgDQo+IC0JZm9yIChpID0gMDsgaSA8IG1heF9zbGljZXM7IGkrKykgew0KPiAtCQlp
bnRlbF9kYnVmX3NsaWNlX3NldChkZXZfcHJpdiwNCj4gLQkJCQkgICAgIERCVUZfQ1RMX1MoaSks
DQo+IC0JCQkJICAgICAocmVxX3NsaWNlcyAmIEJJVChpKSkgIT0gMCk7DQo+IC0JfQ0KPiArCWZv
ciAoc2xpY2UgPSBEQlVGX1MxOyBzbGljZSA8IG51bV9zbGljZXM7IHNsaWNlKyspDQo+ICsJCWlu
dGVsX2RidWZfc2xpY2Vfc2V0KGRldl9wcml2LCBzbGljZSwNCj4gKwkJCQkgICAgIHJlcV9zbGlj
ZXMgJiBCSVQoc2xpY2UpKTsNCg0KV291bGQgYmUgY29vbCB0byBjb21wbGV0ZWx5IGdldCByaWQg
b2YgYW55IG1hZ2ljIG51bWJlcnMgb3INCmRlZmluaXRpb25zLCAwIGluIGEgc2Vuc2UgaXMgbW9y
ZSB1bml2ZXJzYWwgaGVyZSB0aGFuIERCVUZfUzEuDQoNCklmIHdlIGFyZSBjb3VudGluZyBzbGlj
ZXMgYXMgbnVtYmVycyBpdCBzZWVtcyBsb2dpY2FsIHRoYXQgd2UgDQppdGVyYXRlIFswLi5udW1f
c2xpY2VzKSByYW5nZS4gSWYgeW91IHdhbnQgdG8gbmFtZSB0aGUgZmlyc3Qgc2xpY2UNCmV4cGxp
Y2l0bHkgdGhlbiBpdCBwcm9iYWJseSBoYXMgdG8gYmUgc29tZXRoaW5nIGxpa2UgaXRlcmF0b3IN
CmxvZ2ljLCBpLmUgZm9yIChzbGljZSA9IEZJUlNUX1NMSUNFOyBzbGljZSAhPSBMQVNUX1NMSUNF
OyBzbGljZSsrKS4NCg0KQnV0IHRyeWluZyB0byBuYW1lIGl0IGF0IHRoZSBzYW1lIHRpbWUgd2l0
aCBjb21wYXJpbmcgdG8gdG90YWwgX2Ftb3VudF8NCmxvb2tzIGEgYml0IGNvbmZ1c2luZy4NCg0K
U3Rhbg0KDQo+ICANCj4gIAlkZXZfcHJpdi0+ZW5hYmxlZF9kYnVmX3NsaWNlc19tYXNrID0gcmVx
X3NsaWNlczsNCj4gIA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
