Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E427C1123B6
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2019 08:53:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF4BF6E0D5;
	Wed,  4 Dec 2019 07:53:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE0E16E0D5
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Dec 2019 07:53:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Dec 2019 23:53:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,276,1571727600"; d="scan'208";a="218856246"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga001.fm.intel.com with ESMTP; 03 Dec 2019 23:52:59 -0800
Received: from fmsmsx153.amr.corp.intel.com (10.18.125.6) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 3 Dec 2019 23:52:59 -0800
Received: from bgsmsx109.gar.corp.intel.com (10.223.4.211) by
 FMSMSX153.amr.corp.intel.com (10.18.125.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 3 Dec 2019 23:52:59 -0800
Received: from BGSMSX108.gar.corp.intel.com ([169.254.8.108]) by
 BGSMSX109.gar.corp.intel.com ([169.254.10.25]) with mapi id 14.03.0439.000;
 Wed, 4 Dec 2019 13:22:56 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3 01/13] drm/i915/bios: pass devdata to parse_ddi_port
Thread-Index: AQHVpF9vcW1jdLakDkOv9y5N3v72gaepplaQ
Date: Wed, 4 Dec 2019 07:52:55 +0000
Message-ID: <57510F3E2013164E925CD03ED7512A3B809CC749@BGSMSX108.gar.corp.intel.com>
References: <cover.1574775655.git.jani.nikula@intel.com>
 <51bf703509717ca9613901f1ee2cf2b82311f74a.1574775655.git.jani.nikula@intel.com>
In-Reply-To: <51bf703509717ca9613901f1ee2cf2b82311f74a.1574775655.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNmU2NThiZWMtMTE4Zi00MzBjLWE5ZGEtYjU0ZjU3Yjk4YjA4IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiJCNldsZ1JUSkxHXC9BVXZpeWV6d09iVFZPYXlXdXU4YWhSdGVFaDgrRDlKWUErZVpMajVMelpzMm43NG1ReUpxVyJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 01/13] drm/i915/bios: pass devdata to
 parse_ddi_port
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBKYW5pIE5pa3VsYSA8amFuaS5u
aWt1bGFAaW50ZWwuY29tPg0KPiBTZW50OiBUdWVzZGF5LCBOb3ZlbWJlciAyNiwgMjAxOSA3OjEz
IFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBOaWt1bGEs
IEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT47IEt1bGthcm5pLCBWYW5kaXRhDQo+IDx2YW5k
aXRhLmt1bGthcm5pQGludGVsLmNvbT47IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2MyAwMS8xM10gZHJtL2k5MTUvYmlv
czogcGFzcyBkZXZkYXRhIHRvIHBhcnNlX2RkaV9wb3J0DQo+IA0KPiBBbGxvdyBhY2Nlc3Npbmcg
dGhlIHBhcmVudCBzdHJ1Y3R1cmUgbGF0ZXIgb24uIERyb3AgY29uc3QgZm9yIGFsbG93aW5nIGZ1
dHVyZQ0KPiBtb2RpZmljYXRpb24gYXMgd2VsbC4NCj4gDQo+IENjOiBWYW5kaXRhIEt1bGthcm5p
IDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4NCj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxh
IDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQoNCkxvb2tzIGdvb2QgdG8gbWUuDQpSZXZpZXdlZC1i
eTogVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+IA0KDQpUaGFu
a3MsDQpWYW5kaXRhDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9iaW9zLmMgfCA3ICsrKystLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyks
IDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Jpb3MuYw0KPiBpbmRleCBmNmE5YTVjY2I1NTYuLjEyNzkzM2YxMjQ1NCAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gQEAgLTE1MjUsOSAr
MTUyNSwxMCBAQCBzdGF0aWMgZW51bSBwb3J0IGR2b19wb3J0X3RvX3BvcnQodTggZHZvX3BvcnQp
DQo+IH0NCj4gDQo+ICBzdGF0aWMgdm9pZCBwYXJzZV9kZGlfcG9ydChzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsDQo+IC0JCQkgICBjb25zdCBzdHJ1Y3QgY2hpbGRfZGV2aWNlX2Nv
bmZpZyAqY2hpbGQsDQo+ICsJCQkgICBzdHJ1Y3QgZGlzcGxheV9kZXZpY2VfZGF0YSAqZGV2ZGF0
YSwNCj4gIAkJCSAgIHU4IGJkYl92ZXJzaW9uKQ0KPiAgew0KPiArCWNvbnN0IHN0cnVjdCBjaGls
ZF9kZXZpY2VfY29uZmlnICpjaGlsZCA9ICZkZXZkYXRhLT5jaGlsZDsNCj4gIAlzdHJ1Y3QgZGRp
X3ZidF9wb3J0X2luZm8gKmluZm87DQo+ICAJYm9vbCBpc19kdmksIGlzX2hkbWksIGlzX2RwLCBp
c19lZHAsIGlzX2NydDsNCj4gIAllbnVtIHBvcnQgcG9ydDsNCj4gQEAgLTE2NzksNyArMTY4MCw3
IEBAIHN0YXRpYyB2b2lkIHBhcnNlX2RkaV9wb3J0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+
ICpkZXZfcHJpdiwNCj4gDQo+ICBzdGF0aWMgdm9pZCBwYXJzZV9kZGlfcG9ydHMoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCB1OA0KPiBiZGJfdmVyc2lvbikgIHsNCj4gLQljb25z
dCBzdHJ1Y3QgZGlzcGxheV9kZXZpY2VfZGF0YSAqZGV2ZGF0YTsNCj4gKwlzdHJ1Y3QgZGlzcGxh
eV9kZXZpY2VfZGF0YSAqZGV2ZGF0YTsNCj4gDQo+ICAJaWYgKCFIQVNfRERJKGRldl9wcml2KSAm
JiAhSVNfQ0hFUlJZVklFVyhkZXZfcHJpdikpDQo+ICAJCXJldHVybjsNCj4gQEAgLTE2ODgsNyAr
MTY4OSw3IEBAIHN0YXRpYyB2b2lkIHBhcnNlX2RkaV9wb3J0cyhzdHJ1Y3QNCj4gZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsIHU4IGJkYl92ZXJzaW9uKQ0KPiAgCQlyZXR1cm47DQo+IA0KPiAg
CWxpc3RfZm9yX2VhY2hfZW50cnkoZGV2ZGF0YSwgJmRldl9wcml2LT52YnQuZGlzcGxheV9kZXZp
Y2VzLCBub2RlKQ0KPiAtCQlwYXJzZV9kZGlfcG9ydChkZXZfcHJpdiwgJmRldmRhdGEtPmNoaWxk
LCBiZGJfdmVyc2lvbik7DQo+ICsJCXBhcnNlX2RkaV9wb3J0KGRldl9wcml2LCBkZXZkYXRhLCBi
ZGJfdmVyc2lvbik7DQo+ICB9DQo+IA0KPiAgc3RhdGljIHZvaWQNCj4gLS0NCj4gMi4yMC4xDQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
