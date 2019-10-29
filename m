Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D94DE87C8
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 13:11:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEEDD6E226;
	Tue, 29 Oct 2019 12:10:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D02C76E226
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 12:10:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 05:10:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,243,1569308400"; d="scan'208";a="198900613"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga007.fm.intel.com with ESMTP; 29 Oct 2019 05:10:55 -0700
Received: from fmsmsx102.amr.corp.intel.com (10.18.124.200) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 29 Oct 2019 05:10:55 -0700
Received: from bgsmsx106.gar.corp.intel.com (10.223.43.196) by
 FMSMSX102.amr.corp.intel.com (10.18.124.200) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 29 Oct 2019 05:10:54 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.228]) by
 BGSMSX106.gar.corp.intel.com ([169.254.1.191]) with mapi id 14.03.0439.000;
 Tue, 29 Oct 2019 17:40:52 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 6/9] drm/i915: Sort format arrays consistently
Thread-Index: AQHVffOQzsa+czS8Jk6jQZr53LE7nKdxp3RQ
Date: Tue, 29 Oct 2019 12:10:51 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F8227DC6A@BGSMSX104.gar.corp.intel.com>
References: <20191008161441.12721-1-ville.syrjala@linux.intel.com>
 <20191008161441.12721-6-ville.syrjala@linux.intel.com>
In-Reply-To: <20191008161441.12721-6-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNDA4ZGRlMzEtNWVlYy00N2ZkLWJkN2QtNDAxMjRjZWYwNzhkIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiOVhLUGpBMzBRSjhTTnZ6eVRSMjZ0UnJ2TTFRWDVwVlNqN2Rtb25TeEpUUmJhMW1WODJyTnJxWVB3M3pPTzhhdSJ9
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 6/9] drm/i915: Sort format arrays
 consistently
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
Ni85XSBkcm0vaTkxNTogU29ydCBmb3JtYXQgYXJyYXlzIGNvbnNpc3RlbnRseQ0KPg0KPkZyb206
IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+DQo+TGV0
J3MgdHJ5IHRvIGtlZXAgdGhlIHBpeGVsIGZvcm1hdCBhcnJheXMgc29tZXdoYXQgc29ydGVkOg0K
PjEuIFJHQiBiZWZvcmUgWVVWDQo+Mi4gc21hbGxlciBicHAgYmVmb3JlIGxhcmdlciBicHANCj4z
LiBYIGJlZm9yZSBBDQo+NC4gUkdCIGJlZm9yZSBCR1INCg0KQ2hhbmdlcyBsb29rIGdvb2QgdG8g
bWUuDQpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCg0K
PlNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+DQo+LS0tDQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jIHwgIDIgKy0NCj5kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5j
ICB8IDIwICsrKysrKysrKystLS0tLS0tLS0tDQo+IDIgZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0
aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pDQo+DQo+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPmluZGV4IDFjZGNkMGVhMDU2NC4uYTgxMjRmMDFiZGIy
IDEwMDY0NA0KPi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jDQo+KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMN
Cj5AQCAtODMsOCArODMsOCBAQA0KPiAvKiBQcmltYXJ5IHBsYW5lIGZvcm1hdHMgZm9yIGdlbiA8
PSAzICovICBzdGF0aWMgY29uc3QgdTMyIGk4eHhfcHJpbWFyeV9mb3JtYXRzW10gPSB7DQo+IAlE
Uk1fRk9STUFUX0M4LA0KPi0JRFJNX0ZPUk1BVF9SR0I1NjUsDQo+IAlEUk1fRk9STUFUX1hSR0Ix
NTU1LA0KPisJRFJNX0ZPUk1BVF9SR0I1NjUsDQo+IAlEUk1fRk9STUFUX1hSR0I4ODg4LA0KPiB9
Ow0KPg0KPmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nw
cml0ZS5jDQo+Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jDQo+
aW5kZXggYWFhYmVhZjExYWU5Li5jYzllNWM5NjY4YjEgMTAwNjQ0DQo+LS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYw0KPisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMNCj5AQCAtMjAwMiwxMCArMjAwMiwxMCBAQCBz
dGF0aWMgY29uc3QgdTY0IGk5eHhfcGxhbmVfZm9ybWF0X21vZGlmaWVyc1tdID0geyAgfTsNCj4N
Cj4gc3RhdGljIGNvbnN0IHUzMiBzbmJfcGxhbmVfZm9ybWF0c1tdID0gew0KPi0JRFJNX0ZPUk1B
VF9YQkdSODg4OCwNCj4gCURSTV9GT1JNQVRfWFJHQjg4ODgsDQo+LQlEUk1fRk9STUFUX1hSR0Iy
MTAxMDEwLA0KPisJRFJNX0ZPUk1BVF9YQkdSODg4OCwNCj4gCURSTV9GT1JNQVRfWEJHUjIxMDEw
MTAsDQo+KwlEUk1fRk9STUFUX1hSR0IyMTAxMDEwLA0KPiAJRFJNX0ZPUk1BVF9ZVVlWLA0KPiAJ
RFJNX0ZPUk1BVF9ZVllVLA0KPiAJRFJNX0ZPUk1BVF9VWVZZLA0KPkBAIC0yMDE1LDEwICsyMDE1
LDEwIEBAIHN0YXRpYyBjb25zdCB1MzIgc25iX3BsYW5lX2Zvcm1hdHNbXSA9IHsgIHN0YXRpYyBj
b25zdA0KPnUzMiB2bHZfcGxhbmVfZm9ybWF0c1tdID0gew0KPiAJRFJNX0ZPUk1BVF9DOCwNCj4g
CURSTV9GT1JNQVRfUkdCNTY1LA0KPi0JRFJNX0ZPUk1BVF9BQkdSODg4OCwNCj4tCURSTV9GT1JN
QVRfQVJHQjg4ODgsDQo+LQlEUk1fRk9STUFUX1hCR1I4ODg4LA0KPiAJRFJNX0ZPUk1BVF9YUkdC
ODg4OCwNCj4rCURSTV9GT1JNQVRfWEJHUjg4ODgsDQo+KwlEUk1fRk9STUFUX0FSR0I4ODg4LA0K
PisJRFJNX0ZPUk1BVF9BQkdSODg4OCwNCj4gCURSTV9GT1JNQVRfWEJHUjIxMDEwMTAsDQo+IAlE
Uk1fRk9STUFUX0FCR1IyMTAxMDEwLA0KPiAJRFJNX0ZPUk1BVF9ZVVlWLA0KPkBAIC0yMDMwLDE0
ICsyMDMwLDE0IEBAIHN0YXRpYyBjb25zdCB1MzIgdmx2X3BsYW5lX2Zvcm1hdHNbXSA9IHsgIHN0
YXRpYyBjb25zdCB1MzINCj5jaHZfcGlwZV9iX3Nwcml0ZV9mb3JtYXRzW10gPSB7DQo+IAlEUk1f
Rk9STUFUX0M4LA0KPiAJRFJNX0ZPUk1BVF9SR0I1NjUsDQo+LQlEUk1fRk9STUFUX0FCR1I4ODg4
LA0KPi0JRFJNX0ZPUk1BVF9BUkdCODg4OCwNCj4tCURSTV9GT1JNQVRfWEJHUjg4ODgsDQo+IAlE
Uk1fRk9STUFUX1hSR0I4ODg4LA0KPi0JRFJNX0ZPUk1BVF9YQkdSMjEwMTAxMCwNCj4tCURSTV9G
T1JNQVRfQUJHUjIxMDEwMTAsDQo+KwlEUk1fRk9STUFUX1hCR1I4ODg4LA0KPisJRFJNX0ZPUk1B
VF9BUkdCODg4OCwNCj4rCURSTV9GT1JNQVRfQUJHUjg4ODgsDQo+IAlEUk1fRk9STUFUX1hSR0Iy
MTAxMDEwLA0KPisJRFJNX0ZPUk1BVF9YQkdSMjEwMTAxMCwNCj4gCURSTV9GT1JNQVRfQVJHQjIx
MDEwMTAsDQo+KwlEUk1fRk9STUFUX0FCR1IyMTAxMDEwLA0KPiAJRFJNX0ZPUk1BVF9ZVVlWLA0K
PiAJRFJNX0ZPUk1BVF9ZVllVLA0KPiAJRFJNX0ZPUk1BVF9VWVZZLA0KPi0tDQo+Mi4yMS4wDQo+
DQo+X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj5JbnRl
bC1nZnggbWFpbGluZyBsaXN0DQo+SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4DQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
