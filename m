Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF36E8952
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 14:22:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75E9C6E366;
	Tue, 29 Oct 2019 13:22:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 077CD6E32B
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 13:22:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 06:22:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,244,1569308400"; d="scan'208";a="374544846"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga005.jf.intel.com with ESMTP; 29 Oct 2019 06:22:24 -0700
Received: from fmsmsx152.amr.corp.intel.com (10.18.125.5) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 29 Oct 2019 06:22:23 -0700
Received: from BGSMSX107.gar.corp.intel.com (10.223.4.191) by
 FMSMSX152.amr.corp.intel.com (10.18.125.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 29 Oct 2019 06:22:22 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.228]) by
 BGSMSX107.gar.corp.intel.com ([169.254.9.153]) with mapi id 14.03.0439.000;
 Tue, 29 Oct 2019 18:52:17 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 8/9] drm/i915: Do not enable HDR mode when
 color keying is active
Thread-Index: AQHVffOUk8kRh8+EjECI17pgmU9ZW6dxu5oQ
Date: Tue, 29 Oct 2019 13:22:17 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F8227DD3C@BGSMSX104.gar.corp.intel.com>
References: <20191008161441.12721-1-ville.syrjala@linux.intel.com>
 <20191008161441.12721-8-ville.syrjala@linux.intel.com>
In-Reply-To: <20191008161441.12721-8-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNDMxNzE3ZDQtY2Q0OS00YzIwLThmNTctMGIyNmE3N2E2NzkwIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiTlFKTjlQUGhTdnVOTnBwNWllclBKMlQ5QmVIeE1HSUhaRzFsckExeUpmUFg4ekNpNjdDN1FXYTVEeU5YU24yWSJ9
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 8/9] drm/i915: Do not enable HDR mode when
 color keying is active
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
OC85XSBkcm0vaTkxNTogRG8gbm90IGVuYWJsZSBIRFIgbW9kZSB3aGVuIGNvbG9yDQo+a2V5aW5n
IGlzIGFjdGl2ZQ0KPg0KPkZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+DQo+DQo+VGhlIHNwZWMgc2F5cyB0aGF0IGNvbG9yIGtleWluZyBhbmQgSERS
IG1vZGUgYXJlIG11dHVhbGx5IGV4Y2x1c2l2ZS4NCj5TbyBsZXQncyBub3QgZW5hYmxlIEhEUiBt
b2RlIHdoZW4gY29sb3Iga2V5aW5nIGlzIGFjdGl2ZS4NCg0KTG9va3MgZ29vZCB0byBtZS4NClJl
dmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KDQo+U2lnbmVk
LW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4N
Cj4tLS0NCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUu
YyAgfCAgNSArKysrKw0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYyAgICAgICB8IDEzICsrKysrKysrKystLS0NCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggfCAgMSArDQo+IDMgZmlsZXMgY2hhbmdlZCwgMTYg
aW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4NCj5kaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYw0KPmIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYw0KPmluZGV4IDk4Yjc3NjZlYWE3
YS4uZjY0MjA0ZjZmMzdmIDEwMDY0NA0KPi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYXRvbWljX3BsYW5lLmMNCj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2F0b21pY19wbGFuZS5jDQo+QEAgLTE1MCw2ICsxNTAsNyBAQCBpbnQgaW50ZWxf
cGxhbmVfYXRvbWljX2NoZWNrX3dpdGhfc3RhdGUoY29uc3Qgc3RydWN0DQo+aW50ZWxfY3J0Y19z
dGF0ZSAqb2xkX2NydGNfDQo+IAluZXdfY3J0Y19zdGF0ZS0+YWN0aXZlX3BsYW5lcyAmPSB+QklU
KHBsYW5lLT5pZCk7DQo+IAluZXdfY3J0Y19zdGF0ZS0+bnYxMl9wbGFuZXMgJj0gfkJJVChwbGFu
ZS0+aWQpOw0KPiAJbmV3X2NydGNfc3RhdGUtPmM4X3BsYW5lcyAmPSB+QklUKHBsYW5lLT5pZCk7
DQo+KwluZXdfY3J0Y19zdGF0ZS0+Y2tleV9wbGFuZXMgJj0gfkJJVChwbGFuZS0+aWQpOw0KPiAJ
bmV3X2NydGNfc3RhdGUtPmRhdGFfcmF0ZVtwbGFuZS0+aWRdID0gMDsNCj4gCW5ld19wbGFuZV9z
dGF0ZS0+YmFzZS52aXNpYmxlID0gZmFsc2U7DQo+DQo+QEAgLTE3Miw2ICsxNzMsMTAgQEAgaW50
IGludGVsX3BsYW5lX2F0b21pY19jaGVja193aXRoX3N0YXRlKGNvbnN0IHN0cnVjdA0KPmludGVs
X2NydGNfc3RhdGUgKm9sZF9jcnRjXw0KPiAJICAgIGZiLT5mb3JtYXQtPmZvcm1hdCA9PSBEUk1f
Rk9STUFUX0M4KQ0KPiAJCW5ld19jcnRjX3N0YXRlLT5jOF9wbGFuZXMgfD0gQklUKHBsYW5lLT5p
ZCk7DQo+DQo+KwlpZiAobmV3X3BsYW5lX3N0YXRlLT5iYXNlLnZpc2libGUgJiYNCj4rCSAgICBu
ZXdfcGxhbmVfc3RhdGUtPmNrZXkuZmxhZ3MpDQo+KwkJbmV3X2NydGNfc3RhdGUtPmNrZXlfcGxh
bmVzIHw9IEJJVChwbGFuZS0+aWQpOw0KPisNCj4gCWlmIChuZXdfcGxhbmVfc3RhdGUtPmJhc2Uu
dmlzaWJsZSB8fCBvbGRfcGxhbmVfc3RhdGUtPmJhc2UudmlzaWJsZSkNCj4gCQluZXdfY3J0Y19z
dGF0ZS0+dXBkYXRlX3BsYW5lcyB8PSBCSVQocGxhbmUtPmlkKTsNCj4NCj5kaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj5iL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+aW5kZXggYTgxMjRmMDFiZGIy
Li5jNTUzYTM0MTc4OTEgMTAwNjQ0DQo+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMNCj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYw0KPkBAIC05NTE0LDYgKzk1MTQsMTUgQEAgc3RhdGljIHZvaWQgaGFzd2Vs
bF9zZXRfcGlwZWNvbmYoY29uc3Qgc3RydWN0DQo+aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSkNCj4gCVBPU1RJTkdfUkVBRChQSVBFQ09ORihjcHVfdHJhbnNjb2RlcikpOw0KPiB9DQo+DQo+
K3N0YXRpYyBib29sIGljbF9jYW5faGRyX21vZGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUpDQo+K3sNCj4rCXU4IGNrZXlfcGxhbmVzID0gY3J0Y19zdGF0ZS0+Y2tl
eV9wbGFuZXM7DQo+Kwl1OCBzZHJfcGxhbmVzID0gY3J0Y19zdGF0ZS0+YWN0aXZlX3BsYW5lcyAm
DQo+KwkJfihpY2xfaGRyX3BsYW5lX21hc2soKSB8IEJJVChQTEFORV9DVVJTT1IpKTsNCj4rDQo+
KwlyZXR1cm4gIWNrZXlfcGxhbmVzICYmICFzZHJfcGxhbmVzOw0KPit9DQo+Kw0KPiBzdGF0aWMg
dm9pZCBiZHdfc2V0X3BpcGVtaXNjKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
X3N0YXRlKSAgew0KPiAJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNy
dGNfc3RhdGUtPmJhc2UuY3J0Yyk7DQo+QEAgLTk1NDksOSArOTU1OCw3IEBAIHN0YXRpYyB2b2lk
IGJkd19zZXRfcGlwZW1pc2MoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4qY3J0Y19z
dGF0ZSkNCj4gCQl2YWwgfD0gUElQRU1JU0NfWVVWNDIwX0VOQUJMRSB8DQo+IAkJCVBJUEVNSVND
X1lVVjQyMF9NT0RFX0ZVTExfQkxFTkQ7DQo+DQo+LQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+
PSAxMSAmJg0KPi0JICAgIChjcnRjX3N0YXRlLT5hY3RpdmVfcGxhbmVzICYgfihpY2xfaGRyX3Bs
YW5lX21hc2soKSB8DQo+LQkJCQkJICAgQklUKFBMQU5FX0NVUlNPUikpKSA9PSAwKQ0KPisJaWYg
KElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEgJiYgaWNsX2Nhbl9oZHJfbW9kZShjcnRjX3N0YXRl
KSkNCj4gCQl2YWwgfD0gUElQRU1JU0NfSERSX01PREVfUFJFQ0lTSU9OOw0KPg0KPiAJSTkxNV9X
UklURShQSVBFTUlTQyhjcnRjLT5waXBlKSwgdmFsKTsgZGlmZiAtLWdpdA0KPmEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj5iL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+aW5kZXggNDAzOTBkODU1
ODE1Li40OTM1ZWE0MWQzZTEgMTAwNjQ0DQo+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPkBAIC05NDksNiArOTQ5LDcgQEAgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgew0KPiAJdTggYWN0aXZlX3BsYW5lczsNCj4gCXU4IG52MTJfcGxh
bmVzOw0KPiAJdTggYzhfcGxhbmVzOw0KPisJdTggY2tleV9wbGFuZXM7DQo+DQo+IAkvKiBiaXRt
YXNrIG9mIHBsYW5lcyB0aGF0IHdpbGwgYmUgdXBkYXRlZCBkdXJpbmcgdGhlIGNvbW1pdCAqLw0K
PiAJdTggdXBkYXRlX3BsYW5lczsNCj4tLQ0KPjIuMjEuMA0KPg0KPl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdA0K
PkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj5odHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
