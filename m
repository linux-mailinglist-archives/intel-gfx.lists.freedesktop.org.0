Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A127934A921
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Mar 2021 14:55:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 031326F3D1;
	Fri, 26 Mar 2021 13:55:56 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0056B6F3D1
 for <Intel-gfx@lists.freedesktop.org>; Fri, 26 Mar 2021 13:55:53 +0000 (UTC)
IronPort-SDR: 5gk9PS7wJXC1CSGt99zBsfyUw/XkdzXYi3gjaFwY34JK7JkzrBNHukyYmT0+TloKKy7SLuou60
 OVcs30K+mRNQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9935"; a="178696797"
X-IronPort-AV: E=Sophos;i="5.81,280,1610438400"; d="scan'208";a="178696797"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2021 06:55:53 -0700
IronPort-SDR: pi/4Ts/0dlKhw8eXUTEp/OkFftZDyIZe75PQssnUHu4bkoy2fmURkgxssp6Zlw2XMPysSX7kmb
 hI/Mt/vLuF+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,280,1610438400"; d="scan'208";a="392218380"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga002.jf.intel.com with ESMTP; 26 Mar 2021 06:55:53 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 26 Mar 2021 06:55:52 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 26 Mar 2021 06:55:52 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.013;
 Fri, 26 Mar 2021 06:55:52 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "wanjiabing@vivo.com" <wanjiabing@vivo.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] [v2] drm/i915: Remove repeated declaration
Thread-Index: AQHXId77e7TlKin3TE+k3P96EnvQ9KqWwbWA
Date: Fri, 26 Mar 2021 13:55:52 +0000
Message-ID: <0bd45f5e0257554e664dedf58bb4d181876b6a8f.camel@intel.com>
References: <20210326012527.875026-1-wanjiabing@vivo.com>
In-Reply-To: <20210326012527.875026-1-wanjiabing@vivo.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <462DD6441796154585ED9C5413A10372@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] [v2] drm/i915: Remove repeated declaration
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
Cc: "kael_w@yeah.net" <kael_w@yeah.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIxLTAzLTI2IGF0IDA5OjI1ICswODAwLCBXYW4gSmlhYmluZyB3cm90ZToNCj4g
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUsIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlIGFuZA0KPiBz
dHJ1Y3QgaW50ZWxfY3J0YyBpcyBkZWNsYXJlZCB0d2ljZS4NCj4gUmVtb3ZlIHRoZSBkdXBsaWNh
dGUuDQo+IA0KDQpMR1RNLCB0aGFua3MgZm9yIHJlbmFtaW5nLCBhZnRlciBDSSByZXN1bHRzIHdp
bGwgcHVzaCBpdCBmb3IgeW91Lg0KDQo+IFJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNv
dXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogV2FuIEppYWJpbmcg
PHdhbmppYWJpbmdAdml2by5jb20+DQo+IC0tLQ0KPiBDaGFuZ2Vsb2c6DQo+IHYyOg0KPiAtIE1v
ZGlmeSBzdWJqZWN0IGxpbmUuDQo+IC0gRGVsZXRlIHRyYWlsaW5nIHdoaXRlc3BhY2UgaW4gY29t
bWl0IGxvZy4NCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
cnQuaCAgICAgfCAxIC0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuaCB8IDEgLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJy
LmggICAgIHwgMSAtDQo+IMKgMyBmaWxlcyBjaGFuZ2VkLCAzIGRlbGV0aW9ucygtKQ0KPiANCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0LmggYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydC5oDQo+IGluZGV4IDFiM2ZiYTM1
OWVmYy4uNmM1YzQ0NjAwY2JkIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2NydC5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfY3J0LmgNCj4gQEAgLTExLDcgKzExLDYgQEANCj4gwqBlbnVtIHBpcGU7DQo+IMKgc3Ry
dWN0IGRybV9lbmNvZGVyOw0KPiDCoHN0cnVjdCBkcm1faTkxNV9wcml2YXRlOw0KPiAtc3RydWN0
IGRybV9pOTE1X3ByaXZhdGU7DQo+IMKgDQo+IA0KPiANCj4gDQo+IMKgYm9vbCBpbnRlbF9jcnRf
cG9ydF9lbmFibGVkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwNCj4gwqAJCQkg
ICAgaTkxNV9yZWdfdCBhZHBhX3JlZywgZW51bSBwaXBlICpwaXBlKTsNCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgNCj4gaW5kZXggNzZmOGE4MDViMGEz
Li4yOWNiNmQ4NGVkNzAgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5oDQo+IEBAIC00OCw3ICs0OCw2IEBAIHN0cnVjdCBpOTE1X2dndHRfdmll
dzsNCj4gwqBzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlOw0KPiDCoHN0cnVjdCBpbnRlbF9jcnRj
Ow0KPiDCoHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlOw0KPiAtc3RydWN0IGludGVsX2NydGNfc3Rh
dGU7DQo+IMKgc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydDsNCj4gwqBzdHJ1Y3QgaW50ZWxfZHA7
DQo+IMKgc3RydWN0IGludGVsX2VuY29kZXI7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF92cnIuaA0KPiBpbmRleCBmYWMwMWJmNGFiNTAuLjk2ZjljOWMyN2FiOSAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuaA0KPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5oDQo+IEBAIC0xNSw3ICsx
NSw2IEBAIHN0cnVjdCBpbnRlbF9jcnRjOw0KPiDCoHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlOw0K
PiDCoHN0cnVjdCBpbnRlbF9kcDsNCj4gwqBzdHJ1Y3QgaW50ZWxfZW5jb2RlcjsNCj4gLXN0cnVj
dCBpbnRlbF9jcnRjOw0KPiDCoA0KPiANCj4gDQo+IA0KPiDCoGJvb2wgaW50ZWxfdnJyX2lzX2Nh
cGFibGUoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3Rvcik7DQo+IMKgdm9pZCBpbnRlbF92
cnJfY2hlY2tfbW9kZXNldChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSk7DQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
