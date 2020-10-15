Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF1A228FBBC
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Oct 2020 01:22:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E07F06E057;
	Thu, 15 Oct 2020 23:21:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64CF26E057
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Oct 2020 23:21:58 +0000 (UTC)
IronPort-SDR: lBHwiLqNZ5/71FeM5eIfU3kjSQmiTGwvfXfYm+cLRCQ5vlUUph6sKJ1wGz5p5VOFXXnQ8xzxdA
 kp3l+B1K6LRg==
X-IronPort-AV: E=McAfee;i="6000,8403,9775"; a="154292231"
X-IronPort-AV: E=Sophos;i="5.77,380,1596524400"; d="scan'208";a="154292231"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2020 16:21:57 -0700
IronPort-SDR: VH5o6igivyrODqGJG9T8BU9vC5yYLK46Cziq2ai75OHynMvYVNXdlO8w6c5B4REg8OOgYuTKQq
 apxn8ALLe5Ww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,380,1596524400"; d="scan'208";a="464479154"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga004.jf.intel.com with ESMTP; 15 Oct 2020 16:21:57 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 15 Oct 2020 16:21:56 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX602.gar.corp.intel.com (10.109.78.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 16 Oct 2020 04:51:54 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Fri, 16 Oct 2020 04:51:54 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/3] drm/i915: Nuke lspcon_downsampling
Thread-Index: AQHWkqJ4CELRfvwviUOk5MwKmyNe86mZbnfA
Date: Thu, 15 Oct 2020 23:21:54 +0000
Message-ID: <75dc3c49e3874a798c1db21836d534b1@intel.com>
References: <20200924184156.24491-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200924184156.24491-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Nuke lspcon_downsampling
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IEZyaWRheSwgU2VwdGVtYmVyIDI1LCAyMDIwIDEyOjEyIEFNDQo+
IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1n
ZnhdIFtQQVRDSCAxLzNdIGRybS9pOTE1OiBOdWtlIGxzcGNvbl9kb3duc2FtcGxpbmcNCj4gDQo+
IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+
IA0KPiBjcnRjX3N0YXRlLT5sc3Bjb25fZG93bnNhbXBsaW5nIGlzbid0IHBhcnRpY3VsYXJseSB1
c2VmdWwgYXQgdGhlIG1vbWVudCBzaW5jZQ0KPiB3ZSBjYW4ndCBldmVuIGRvIHByb3BlciByZWFk
b3V0IGZvciBpdC4NCj4gTGV0J3MgZ2V0IHJpZCBvZiBpdC4gV2lsbCBoZWxwIHdpdGggdW5pZnlp
bmcgdGhlIExTUENPTiB3aXRoIHRoZSByZWd1bGFyIERGUCBZQ2JDcg0KPiBvdXRwdXQgc3VwcG9y
dC4NCg0KTG9va3MgR29vZCB0byBtZS4NClJldmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNo
YW5rYXJAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgMTIgLS0tLS0tLS0tLS0NCj4gIC4uLi9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICAzIC0tLQ0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sc3Bjb24uYyAgIHwgMjAgKysrKysrKysrKyst
LS0tLS0tLQ0KPiAgMyBmaWxlcyBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCAyMyBkZWxldGlv
bnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jDQo+IGluZGV4IDVhOWQ5MzNlNDI1YS4uYTUxY2YwNDhlY2QzIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBAQCAtMTEyMjks
MTggKzExMjI5LDYgQEAgc3RhdGljIGJvb2wgaHN3X2dldF9waXBlX2NvbmZpZyhzdHJ1Y3QgaW50
ZWxfY3J0Yw0KPiAqY3J0YywNCj4gIAl9IGVsc2Ugew0KPiAgCQlwaXBlX2NvbmZpZy0+b3V0cHV0
X2Zvcm1hdCA9DQo+ICAJCQliZHdfZ2V0X3BpcGVtaXNjX291dHB1dF9mb3JtYXQoY3J0Yyk7DQo+
IC0NCj4gLQkJLyoNCj4gLQkJICogQ3VycmVudGx5IHRoZXJlIGlzIG5vIGludGVyZmFjZSBkZWZp
bmVkIHRvDQo+IC0JCSAqIGNoZWNrIHVzZXIgcHJlZmVyZW5jZSBiZXR3ZWVuIFJHQi9ZQ0JDUjQ0
NA0KPiAtCQkgKiBvciBZQ0JDUjQyMC4gU28gdGhlIG9ubHkgcG9zc2libGUgY2FzZSBmb3INCj4g
LQkJICogWUNCQ1I0NDQgdXNhZ2UgaXMgZHJpdmluZyBZQ0JDUjQyMCBvdXRwdXQNCj4gLQkJICog
d2l0aCBMU1BDT04sIHdoZW4gcGlwZSBpcyBjb25maWd1cmVkIGZvcg0KPiAtCQkgKiBZQ0JDUjQ0
NCBvdXRwdXQgYW5kIExTUENPTiB0YWtlcyBjYXJlIG9mDQo+IC0JCSAqIGRvd25zYW1wbGluZyBp
dC4NCj4gLQkJICovDQo+IC0JCXBpcGVfY29uZmlnLT5sc3Bjb25fZG93bnNhbXBsaW5nID0NCj4g
LQkJCXBpcGVfY29uZmlnLT5vdXRwdXRfZm9ybWF0ID09DQo+IElOVEVMX09VVFBVVF9GT1JNQVRf
WUNCQ1I0NDQ7DQo+ICAJfQ0KPiANCj4gIAlwaXBlX2NvbmZpZy0+Z2FtbWFfbW9kZSA9IGludGVs
X2RlX3JlYWQoZGV2X3ByaXYsIGRpZmYgLS1naXQNCj4gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+IGluZGV4IDNkNGJmOWI2YTBhMi4uNGU3ZDUy
ZDgyMWNkIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfdHlwZXMuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBAQCAtMTAzNSw5ICsxMDM1LDYgQEAgc3RydWN0IGludGVs
X2NydGNfc3RhdGUgew0KPiAgCS8qIE91dHB1dCBmb3JtYXQgUkdCL1lDQkNSIGV0YyAqLw0KPiAg
CWVudW0gaW50ZWxfb3V0cHV0X2Zvcm1hdCBvdXRwdXRfZm9ybWF0Ow0KPiANCj4gLQkvKiBPdXRw
dXQgZG93biBzY2FsaW5nIGlzIGRvbmUgaW4gTFNQQ09OIGRldmljZSAqLw0KPiAtCWJvb2wgbHNw
Y29uX2Rvd25zYW1wbGluZzsNCj4gLQ0KPiAgCS8qIGVuYWJsZSBwaXBlIGdhbW1hPyAqLw0KPiAg
CWJvb2wgZ2FtbWFfZW5hYmxlOw0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfbHNwY29uLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2xzcGNvbi5jDQo+IGluZGV4IGRjMWIzNTU1OWFmZC4uNTlmMTNhZWY1OGI1IDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2xzcGNvbi5j
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHNwY29uLmMNCj4g
QEAgLTE5NSw3ICsxOTUsNiBAQCB2b2lkIGxzcGNvbl95Y2JjcjQyMF9jb25maWcoc3RydWN0IGRy
bV9jb25uZWN0b3INCj4gKmNvbm5lY3RvciwNCj4gIAkgICAgY29ubmVjdG9yLT55Y2Jjcl80MjBf
YWxsb3dlZCkgew0KPiAgCQljcnRjX3N0YXRlLT5wb3J0X2Nsb2NrIC89IDI7DQo+ICAJCWNydGNf
c3RhdGUtPm91dHB1dF9mb3JtYXQgPSBJTlRFTF9PVVRQVVRfRk9STUFUX1lDQkNSNDQ0Ow0KPiAt
CQljcnRjX3N0YXRlLT5sc3Bjb25fZG93bnNhbXBsaW5nID0gdHJ1ZTsNCj4gIAl9DQo+ICB9DQo+
IA0KPiBAQCAtNDkyLDE0ICs0OTEsMTkgQEAgdm9pZCBsc3Bjb25fc2V0X2luZm9mcmFtZXMoc3Ry
dWN0IGludGVsX2VuY29kZXINCj4gKmVuY29kZXIsDQo+ICAJCXJldHVybjsNCj4gIAl9DQo+IA0K
PiAtCWlmIChjcnRjX3N0YXRlLT5vdXRwdXRfZm9ybWF0ID09IElOVEVMX09VVFBVVF9GT1JNQVRf
WUNCQ1I0NDQpIHsNCj4gLQkJaWYgKGNydGNfc3RhdGUtPmxzcGNvbl9kb3duc2FtcGxpbmcpDQo+
IC0JCQlmcmFtZS5hdmkuY29sb3JzcGFjZSA9IEhETUlfQ09MT1JTUEFDRV9ZVVY0MjA7DQo+IC0J
CWVsc2UNCj4gLQkJCWZyYW1lLmF2aS5jb2xvcnNwYWNlID0gSERNSV9DT0xPUlNQQUNFX1lVVjQ0
NDsNCj4gLQl9IGVsc2Ugew0KPiArCS8qDQo+ICsJICogQ3VycmVudGx5IHRoZXJlIGlzIG5vIGlu
dGVyZmFjZSBkZWZpbmVkIHRvDQo+ICsJICogY2hlY2sgdXNlciBwcmVmZXJlbmNlIGJldHdlZW4g
UkdCL1lDQkNSNDQ0DQo+ICsJICogb3IgWUNCQ1I0MjAuIFNvIHRoZSBvbmx5IHBvc3NpYmxlIGNh
c2UgZm9yDQo+ICsJICogWUNCQ1I0NDQgdXNhZ2UgaXMgZHJpdmluZyBZQ0JDUjQyMCBvdXRwdXQN
Cj4gKwkgKiB3aXRoIExTUENPTiwgd2hlbiBwaXBlIGlzIGNvbmZpZ3VyZWQgZm9yDQo+ICsJICog
WUNCQ1I0NDQgb3V0cHV0IGFuZCBMU1BDT04gdGFrZXMgY2FyZSBvZg0KPiArCSAqIGRvd25zYW1w
bGluZyBpdC4NCj4gKwkgKi8NCj4gKwlpZiAoY3J0Y19zdGF0ZS0+b3V0cHV0X2Zvcm1hdCA9PSBJ
TlRFTF9PVVRQVVRfRk9STUFUX1lDQkNSNDQ0KQ0KPiArCQlmcmFtZS5hdmkuY29sb3JzcGFjZSA9
IEhETUlfQ09MT1JTUEFDRV9ZVVY0MjA7DQo+ICsJZWxzZQ0KPiAgCQlmcmFtZS5hdmkuY29sb3Jz
cGFjZSA9IEhETUlfQ09MT1JTUEFDRV9SR0I7DQo+IC0JfQ0KPiANCj4gIAlkcm1faGRtaV9hdmlf
aW5mb2ZyYW1lX3F1YW50X3JhbmdlKCZmcmFtZS5hdmksDQo+ICAJCQkJCSAgIGNvbm5fc3RhdGUt
PmNvbm5lY3RvciwNCj4gLS0NCj4gMi4yNi4yDQo+IA0KPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0DQo+IElu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
