Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A1AE89A2
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 14:36:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1B2C6E35D;
	Tue, 29 Oct 2019 13:36:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A55676E35D
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 13:36:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 06:36:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,244,1569308400"; d="scan'208";a="189943996"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga007.jf.intel.com with ESMTP; 29 Oct 2019 06:36:01 -0700
Received: from fmsmsx124.amr.corp.intel.com (10.18.125.39) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 29 Oct 2019 06:36:01 -0700
Received: from bgsmsx101.gar.corp.intel.com (10.223.4.170) by
 fmsmsx124.amr.corp.intel.com (10.18.125.39) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 29 Oct 2019 06:36:00 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.228]) by
 BGSMSX101.gar.corp.intel.com ([169.254.1.199]) with mapi id 14.03.0439.000;
 Tue, 29 Oct 2019 19:05:57 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: 'Ville Syrjala' <ville.syrjala@linux.intel.com>,
 "'intel-gfx@lists.freedesktop.org'" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 7/9] drm/i915: Reject ckey+fp16 on skl+
Thread-Index: AQHVffOPo21IWPsFUE6LoQJk1FSoHadxtnAAgAAH3YA=
Date: Tue, 29 Oct 2019 13:35:57 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F8227DD9F@BGSMSX104.gar.corp.intel.com>
References: <20191008161441.12721-1-ville.syrjala@linux.intel.com>
 <20191008161441.12721-7-ville.syrjala@linux.intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F8227DCFC@BGSMSX104.gar.corp.intel.com>
In-Reply-To: <E7C9878FBA1C6D42A1CA3F62AEB6945F8227DCFC@BGSMSX104.gar.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMThiMGQ1OTEtMWFiNy00Y2Q0LWJmYmQtYWFjMzA3YjJhOTdhIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiclwvMVB6OUVrbjIwNEhBUERqdGxkZXR1VHlqUVVtQStQT0ZjQVdHQlFCOGREKzJHYTM0YVFlcmlhWmFuUXdIWG4ifQ==
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 7/9] drm/i915: Reject ckey+fp16 on skl+
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

DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IFNoYW5rYXIsIFVtYQ0KPlNl
bnQ6IFR1ZXNkYXksIE9jdG9iZXIgMjksIDIwMTkgNjozOCBQTQ0KPlRvOiBWaWxsZSBTeXJqYWxh
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT47IGludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcNCj5TdWJqZWN0OiBSRTogW0ludGVsLWdmeF0gW1BBVENIIDcvOV0gZHJtL2k5MTU6
IFJlamVjdCBja2V5K2ZwMTYgb24gc2tsKw0KPg0KPg0KPg0KPj4tLS0tLU9yaWdpbmFsIE1lc3Nh
Z2UtLS0tLQ0KPj5Gcm9tOiBJbnRlbC1nZnggPGludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mDQo+PlZpbGxlIFN5cmphbGENCj4+U2VudDogVHVlc2Rh
eSwgT2N0b2JlciA4LCAyMDE5IDk6NDUgUE0NCj4+VG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcNCj4+U3ViamVjdDogW0ludGVsLWdmeF0gW1BBVENIIDcvOV0gZHJtL2k5MTU6IFJl
amVjdCBja2V5K2ZwMTYgb24gc2tsKw0KPj4NCj4+RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4+DQo+PkFjY29yZGluZyB0byB0aGUgc3BlYyBj
b2xvciBrZXlpbmcgaXMgbm90IHN1cHBvcnRlZCB3aXRoDQo+PmZwMTYgcGl4ZWwgZm9ybWF0cyBv
biBza2wrLiBSZWplY3QgdGhhdCBjb21iby4NCj4+DQo+PlNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+Pi0tLQ0KPj4gZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYyB8IDE4ICsrKysrKysrKysrKysr
KysrKw0KPj4gMSBmaWxlIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKykNCj4+DQo+PmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jDQo+PmIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYw0KPj5pbmRleCBjYzllNWM5
NjY4YjEuLmQ2Y2Q0NmUzZjczOCAxMDA2NDQNCj4+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9zcHJpdGUuYw0KPj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Nwcml0ZS5jDQo+PkBAIC0xNjg5LDYgKzE2ODksMTkgQEAgdmx2X3Nwcml0ZV9j
aGVjayhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4+IAlyZXR1cm4gMDsN
Cj4+IH0NCj4+DQo+PitzdGF0aWMgYm9vbCBmb3JtYXRfaXNfZnAxNih1MzIgZm9ybWF0KSB7DQo+
PisJc3dpdGNoIChmb3JtYXQpIHsNCj4+KwljYXNlIERSTV9GT1JNQVRfWFJHQjE2MTYxNjE2RjoN
Cj4+KwljYXNlIERSTV9GT1JNQVRfWEJHUjE2MTYxNjE2RjoNCj4+KwljYXNlIERSTV9GT1JNQVRf
QVJHQjE2MTYxNjE2RjoNCj4+KwljYXNlIERSTV9GT1JNQVRfQUJHUjE2MTYxNjE2RjoNCj4+KwkJ
cmV0dXJuIHRydWU7DQo+PisJZGVmYXVsdDoNCj4+KwkJcmV0dXJuIGZhbHNlOw0KPj4rCX0NCj4+
K30NCj4+Kw0KPj4gc3RhdGljIGludCBza2xfcGxhbmVfY2hlY2tfZmIoY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+PiAJCQkgICAgICBjb25zdCBzdHJ1Y3QgaW50
ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKSAgeyBAQCAtDQo+PjE3NjAsNiArMTc3MywxMSBA
QCBzdGF0aWMgaW50IHNrbF9wbGFuZV9jaGVja19mYihjb25zdCBzdHJ1Y3QNCj4+aW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4+IAkJcmV0dXJuIC1FSU5WQUw7DQo+PiAJfQ0KPj4NCj4+
KwlpZiAocGxhbmVfc3RhdGUtPmNrZXkuZmxhZ3MgJiYgZm9ybWF0X2lzX2ZwMTYoZmItPmZvcm1h
dC0+Zm9ybWF0KSkgew0KPj4rCQlEUk1fREVCVUdfS01TKCJDb2xvciBrZXlpbmcgbm90IHN1cHBv
cnRlZCB3aXRoIGZwMTYNCj4+Zm9ybWF0c1xuIik7DQo+DQo+SXQgc2VlbXMgZXZlbiAiSW5kZXhl
ZCA4IGJpdCBmb3JtYXRzIiBhbHNvIGRvbid0IHN1cHBvcnQgQ29sb3IgS2V5aW5nLiBNYXkgYmUg
eW91DQo+Y2FuIGV4dGVuZCBpdCB0byBldmVuIEM4Lg0KDQp3cnQgQzgsIGF0IHRoZSBiaXQgZGVm
aW5pdGlvbiBvZiBjb2xvciBrZXlpbmcgb24gUExBTkVfQ1RMIHRoZSBkZXNjcmlwdGlvbiBzYXlz
DQoiUGxhbmUgY29sb3Iga2V5aW5nIGlzIG5vdCBjb21wYXRpYmxlIHdpdGggdGhlIEluZGV4ZWQg
OC1iaXQgcGl4ZWwgZm9ybWF0LiIsDQpidXQgb24gY2FwYWJpbGl0eSBpdCBkbyBsaXN0IEM4LiBT
byBub3Qgc3VyZSB3aGF0IGlzIGNvcnJlY3QuIA0KDQo+DQo+PisJCXJldHVybiAtRUlOVkFMOw0K
Pj4rCX0NCj4+Kw0KPj4gCXJldHVybiAwOw0KPj4gfQ0KPj4NCj4+LS0NCj4+Mi4yMS4wDQo+Pg0K
Pj5fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPj5JbnRl
bC1nZnggbWFpbGluZyBsaXN0DQo+PkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4+
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
