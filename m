Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 275C66B2B5
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 02:14:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 301346E1CE;
	Wed, 17 Jul 2019 00:14:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C25B46E1CE
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 00:14:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jul 2019 17:14:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,272,1559545200"; d="scan'208";a="366392156"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
 by fmsmga005.fm.intel.com with ESMTP; 16 Jul 2019 17:14:23 -0700
Received: from orsmsx159.amr.corp.intel.com (10.22.240.24) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 16 Jul 2019 17:14:23 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.2.65]) by
 ORSMSX159.amr.corp.intel.com ([169.254.11.26]) with mapi id 14.03.0439.000;
 Tue, 16 Jul 2019 17:14:23 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 06/22] drm/i915/tgl: handle DP aux interrupts
Thread-Index: AQHVORe8eFgbO4dCME+JLwa/9BNWJ6bN9szg
Date: Wed, 17 Jul 2019 00:14:22 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B073481026DB@ORSMSX108.amr.corp.intel.com>
References: <20190713010940.17711-1-lucas.demarchi@intel.com>
 <20190713010940.17711-7-lucas.demarchi@intel.com>
In-Reply-To: <20190713010940.17711-7-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNTBkMWM2ZmUtZDJiZS00YzEyLThkNGMtNjMwZmY4M2Q4MzMwIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoibk9ZajJuTUd0NlYwQXJlM0FXelNmZU1MeG5GaERSdzh4eGFMYnFmOFQwUnFvRWo0Y2xvME9wVk1IZmRTT3dUQyJ9
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 06/22] drm/i915/tgl: handle DP aux interrupts
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

DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IEludGVsLWdmeCBbbWFpbHRv
OmludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZ10gT24gQmVoYWxmIE9mDQo+
THVjYXMgRGUgTWFyY2hpDQo+U2VudDogRnJpZGF5LCBKdWx5IDEyLCAyMDE5IDY6MDkgUE0NCj5U
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPlN1YmplY3Q6IFtJbnRlbC1nZnhd
IFtQQVRDSCAwNi8yMl0gZHJtL2k5MTUvdGdsOiBoYW5kbGUgRFAgYXV4IGludGVycnVwdHMNCj4N
Cj5Gb3IgVGlnZXIgTGFrZSB0aGUgREUgUG9ydCBJbnRlcnJ1cHQgRGVmaW5pdGlvbiBiaXRzIGNo
YW5nZWQsIHNvIHVzZSB0aGUgbmV3IGJpdA0KPmRlZmluaXRpb25zLg0KPg0KPkNjOiBKb3NlIFNv
dXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj5TaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJj
aGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IEFudXNoYSBTcml2
YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4NCj4tLS0NCj4gZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9pcnEuYyB8IDE2ICsrKysrKysrKysrLS0tLS0NCj5kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oIHwgIDMgKysrDQo+IDIgZmlsZXMgY2hhbmdlZCwgMTQgaW5zZXJ0aW9u
cygrKSwgNSBkZWxldGlvbnMoLSkNCj4NCj5kaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9pcnEuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMNCj5pbmRleCAy
NTZiZDJjMDcyYzEuLjYzNTBlOWRlZTY1MyAxMDA2NDQNCj4tLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2lycS5jDQo+KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYw0K
PkBAIC0yOTM5LDE5ICsyOTM5LDI1IEBAIHN0YXRpYyB2b2lkIGdlbjExX2hwZF9pcnFfaGFuZGxl
cihzdHJ1Y3QNCj5kcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgdTMyIGlpcikNCj4NCj4gc3Rh
dGljIHUzMiBnZW44X2RlX3BvcnRfYXV4X21hc2soc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2KSAgew0KPi0JdTMyIG1hc2sgPSBHRU44X0FVWF9DSEFOTkVMX0E7DQo+Kwl1MzIgbWFz
azsNCj4rDQo+KwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikNCj4rCQkvKiBUT0RPOiBB
ZGQgQVVYIGVudHJpZXMgZm9yIFVTQkMgKi8NCj4rCQlyZXR1cm4gVEdMX0RFX1BPUlRfQVVYX0RE
SUEgfA0KPisJCQlUR0xfREVfUE9SVF9BVVhfRERJQiB8DQo+KwkJCVRHTF9ERV9QT1JUX0FVWF9E
RElDOw0KPg0KPisJbWFzayA9IEdFTjhfQVVYX0NIQU5ORUxfQTsNCj4gCWlmIChJTlRFTF9HRU4o
ZGV2X3ByaXYpID49IDkpDQo+IAkJbWFzayB8PSBHRU45X0FVWF9DSEFOTkVMX0IgfA0KPiAJCQlH
RU45X0FVWF9DSEFOTkVMX0MgfA0KPiAJCQlHRU45X0FVWF9DSEFOTkVMX0Q7DQo+DQo+LQlpZiAo
SVNfQ05MX1dJVEhfUE9SVF9GKGRldl9wcml2KSkNCj4rCWlmIChJU19DTkxfV0lUSF9QT1JUX0Yo
ZGV2X3ByaXYpIHx8IElTX0dFTihkZXZfcHJpdiwgMTEpKQ0KPiAJCW1hc2sgfD0gQ05MX0FVWF9D
SEFOTkVMX0Y7DQo+DQo+LQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkNCj4tCQltYXNr
IHw9IElDTF9BVVhfQ0hBTk5FTF9FIHwNCj4tCQkJQ05MX0FVWF9DSEFOTkVMX0Y7DQo+KwlpZiAo
SVNfR0VOKGRldl9wcml2LCAxMSkpDQo+KwkJbWFzayB8PSBJQ0xfQVVYX0NIQU5ORUxfRTsNCj4N
Cj4gCXJldHVybiBtYXNrOw0KPiB9DQo+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+aW5kZXggZmY3
MDNiYWYxMDVmLi40MWM4YjQwZWViZDUgMTAwNjQ0DQo+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaA0KPisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj5A
QCAtNzQyOCw2ICs3NDI4LDkgQEAgZW51bSB7DQo+ICNkZWZpbmUgIEdFTjhfUE9SVF9EUF9BX0hP
VFBMVUcJCSgxIDw8IDMpDQo+ICNkZWZpbmUgIEJYVF9ERV9QT1JUX0dNQlVTCQkoMSA8PCAxKQ0K
PiAjZGVmaW5lICBHRU44X0FVWF9DSEFOTkVMX0EJCSgxIDw8IDApDQo+KyNkZWZpbmUgIFRHTF9E
RV9QT1JUX0FVWF9ERElDCQkoMSA8PCAyKQ0KPisjZGVmaW5lICBUR0xfREVfUE9SVF9BVVhfRERJ
QgkJKDEgPDwgMSkNCj4rI2RlZmluZSAgVEdMX0RFX1BPUlRfQVVYX0RESUEJCSgxIDw8IDApDQo+
DQo+ICNkZWZpbmUgR0VOOF9ERV9NSVNDX0lTUiBfTU1JTygweDQ0NDYwKSAgI2RlZmluZSBHRU44
X0RFX01JU0NfSU1SDQo+X01NSU8oMHg0NDQ2NCkNCj4tLQ0KPjIuMjEuMA0KPg0KPl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+SW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdA0KPkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj5odHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
