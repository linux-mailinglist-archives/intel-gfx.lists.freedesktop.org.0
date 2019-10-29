Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7168E8590
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 11:29:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D5936EB4D;
	Tue, 29 Oct 2019 10:29:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 833AA6EB4D
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 10:29:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 03:29:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,243,1569308400"; d="scan'208";a="374503958"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga005.jf.intel.com with ESMTP; 29 Oct 2019 03:29:29 -0700
Received: from fmsmsx111.amr.corp.intel.com (10.18.116.5) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 29 Oct 2019 03:29:08 -0700
Received: from bgsmsx152.gar.corp.intel.com (10.224.48.50) by
 fmsmsx111.amr.corp.intel.com (10.18.116.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 29 Oct 2019 03:29:07 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.228]) by
 BGSMSX152.gar.corp.intel.com ([169.254.6.248]) with mapi id 14.03.0439.000;
 Tue, 29 Oct 2019 15:59:05 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 4/9] drm/i915: Expose C8 on VLV/CHV sprite
 planes
Thread-Index: AQHVffOM8Frk59MVrU69oLw/keYiradxixmA
Date: Tue, 29 Oct 2019 10:29:04 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F8227DB1D@BGSMSX104.gar.corp.intel.com>
References: <20191008161441.12721-1-ville.syrjala@linux.intel.com>
 <20191008161441.12721-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20191008161441.12721-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMzg3Mjg4YzMtOGVmMC00MWMxLTgwNGItY2RjYjU0ZjUwNWQ3IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiaDJyS1ZoWFFzXC9SUFNXUlN1a3dFZVMxNXh0ZU5zMjFleUFueENMajZpM0laSTBic0wzeURibklIK1JPVUFWZ2kifQ==
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/9] drm/i915: Expose C8 on VLV/CHV sprite
 planes
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IEludGVsLWdmeCA8aW50ZWwt
Z2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVmlsbGUgU3ly
amFsYQ0KPlNlbnQ6IFR1ZXNkYXksIE9jdG9iZXIgOCwgMjAxOSA5OjQ1IFBNDQo+VG86IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj5TdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0gg
NC85XSBkcm0vaTkxNTogRXhwb3NlIEM4IG9uIFZMVi9DSFYgc3ByaXRlIHBsYW5lcw0KPg0KPkZy
b206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+DQo+
VkxWL0NIViBzcHJpdGUgcGxhbmVzIGFsc28gc3VwcG9ydCB0aGUgQzggZm9ybWF0LiBMZXQncyBl
eHBvc2UgdGhhdC4NCg0KTG9va3MgZ29vZCB0byBtZS4NClJldmlld2VkLWJ5OiBVbWEgU2hhbmth
ciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KDQo+U2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4tLS0NCj4gZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYyB8IDYgKysrKysrDQo+IGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgfCAxICsNCj4gMiBmaWxlcyBjaGFuZ2Vk
LCA3IGluc2VydGlvbnMoKykNCj4NCj5kaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9zcHJpdGUuYw0KPmIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9zcHJpdGUuYw0KPmluZGV4IGZiMzZkYTU4MzkwYS4uNGNkMDk4MmRjOGEyIDEwMDY0NA0K
Pi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMNCj4rKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jDQo+QEAgLTg0Niw2
ICs4NDYsOSBAQCBzdGF0aWMgdTMyIHZsdl9zcHJpdGVfY3RsKGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlDQo+KmNydGNfc3RhdGUsDQo+IAljYXNlIERSTV9GT1JNQVRfVllVWToNCj4gCQlz
cHJjdGwgfD0gU1BfRk9STUFUX1lVVjQyMiB8IFNQX1lVVl9PUkRFUl9WWVVZOw0KPiAJCWJyZWFr
Ow0KPisJY2FzZSBEUk1fRk9STUFUX0M4Og0KPisJCXNwcmN0bCB8PSBTUF9GT1JNQVRfOEJQUDsN
Cj4rCQlicmVhazsNCj4gCWNhc2UgRFJNX0ZPUk1BVF9SR0I1NjU6DQo+IAkJc3ByY3RsIHw9IFNQ
X0ZPUk1BVF9CR1I1NjU7DQo+IAkJYnJlYWs7DQo+QEAgLTIwMTAsNiArMjAxMyw3IEBAIHN0YXRp
YyBjb25zdCB1MzIgc25iX3BsYW5lX2Zvcm1hdHNbXSA9IHsgIH07DQo+DQo+IHN0YXRpYyBjb25z
dCB1MzIgdmx2X3BsYW5lX2Zvcm1hdHNbXSA9IHsNCj4rCURSTV9GT1JNQVRfQzgsDQo+IAlEUk1f
Rk9STUFUX1JHQjU2NSwNCj4gCURSTV9GT1JNQVRfQUJHUjg4ODgsDQo+IAlEUk1fRk9STUFUX0FS
R0I4ODg4LA0KPkBAIC0yMDI0LDYgKzIwMjgsNyBAQCBzdGF0aWMgY29uc3QgdTMyIHZsdl9wbGFu
ZV9mb3JtYXRzW10gPSB7ICB9Ow0KPg0KPiBzdGF0aWMgY29uc3QgdTMyIGNodl9waXBlX2Jfc3By
aXRlX2Zvcm1hdHNbXSA9IHsNCj4rCURSTV9GT1JNQVRfQzgsDQo+IAlEUk1fRk9STUFUX1JHQjU2
NSwNCj4gCURSTV9GT1JNQVRfQUJHUjg4ODgsDQo+IAlEUk1fRk9STUFUX0FSR0I4ODg4LA0KPkBA
IC0yMjU2LDYgKzIyNjEsNyBAQCBzdGF0aWMgYm9vbCB2bHZfc3ByaXRlX2Zvcm1hdF9tb2Rfc3Vw
cG9ydGVkKHN0cnVjdA0KPmRybV9wbGFuZSAqX3BsYW5lLA0KPiAJfQ0KPg0KPiAJc3dpdGNoIChm
b3JtYXQpIHsNCj4rCWNhc2UgRFJNX0ZPUk1BVF9DODoNCj4gCWNhc2UgRFJNX0ZPUk1BVF9SR0I1
NjU6DQo+IAljYXNlIERSTV9GT1JNQVRfQUJHUjg4ODg6DQo+IAljYXNlIERSTV9GT1JNQVRfQVJH
Qjg4ODg6DQo+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGluZGV4DQo+NzRiYjVhNmNiZTRmLi41Nzc0
Njg5MjhmZmEgMTAwNjQ0DQo+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0K
PisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj5AQCAtNjU0Niw2ICs2NTQ2
LDcgQEAgZW51bSB7DQo+ICNkZWZpbmUgICBTUF9HQU1NQV9FTkFCTEUJCSgxIDw8IDMwKQ0KPiAj
ZGVmaW5lICAgU1BfUElYRk9STUFUX01BU0sJCSgweGYgPDwgMjYpDQo+ICNkZWZpbmUgICBTUF9G
T1JNQVRfWVVWNDIyCQkoMHgwIDw8IDI2KQ0KPisjZGVmaW5lICAgU1BfRk9STUFUXzhCUFAJCSgw
eDIgPDwgMjYpDQo+ICNkZWZpbmUgICBTUF9GT1JNQVRfQkdSNTY1CQkoMHg1IDw8IDI2KQ0KPiAj
ZGVmaW5lICAgU1BfRk9STUFUX0JHUlg4ODg4CQkoMHg2IDw8IDI2KQ0KPiAjZGVmaW5lICAgU1Bf
Rk9STUFUX0JHUkE4ODg4CQkoMHg3IDw8IDI2KQ0KPi0tDQo+Mi4yMS4wDQo+DQo+X19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj5JbnRlbC1nZnggbWFpbGlu
ZyBsaXN0DQo+SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4DQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
