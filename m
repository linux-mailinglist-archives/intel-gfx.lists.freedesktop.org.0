Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6F628FBC6
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Oct 2020 01:35:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 339BA6E836;
	Thu, 15 Oct 2020 23:35:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C8376E836
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Oct 2020 23:35:26 +0000 (UTC)
IronPort-SDR: fYCUuS5POx4E9H/1kODoLQ2BjytJB0CH2KpH021I6lchJkJbJWqPeSKZdvXd1BQkB5QhqO4Yk9
 PDJUxVD9hbAQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9775"; a="251169101"
X-IronPort-AV: E=Sophos;i="5.77,380,1596524400"; d="scan'208";a="251169101"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2020 16:35:22 -0700
IronPort-SDR: JXthhcodSz/9i2TwiRRvTCfxOuwFtKWalHQgJAT7btX/9X8brVYtKRvg70d9yfCDn2X74sbI4y
 dFazqiWWiYoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,380,1596524400"; d="scan'208";a="300474877"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga007.fm.intel.com with ESMTP; 15 Oct 2020 16:35:22 -0700
Received: from bgsmsx606.gar.corp.intel.com (10.67.234.8) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 15 Oct 2020 16:35:20 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX606.gar.corp.intel.com (10.67.234.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 16 Oct 2020 05:05:18 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Fri, 16 Oct 2020 05:05:18 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 3/3] drm/i915: Inline
 intel_dp_ycbcr420_config()
Thread-Index: AQHWkqJ9Kc8mJUsM0k2kA1oF0wYl5KmZccyQ
Date: Thu, 15 Oct 2020 23:35:18 +0000
Message-ID: <ae0e2e6814d7432087ca1c82032d2cf8@intel.com>
References: <20200924184156.24491-1-ville.syrjala@linux.intel.com>
 <20200924184156.24491-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20200924184156.24491-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Inline
 intel_dp_ycbcr420_config()
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
ZnhdIFtQQVRDSCAzLzNdIGRybS9pOTE1OiBJbmxpbmUgaW50ZWxfZHBfeWNiY3I0MjBfY29uZmln
KCkNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+DQo+IA0KPiBpbnRlbF9kcF95Y2JjcjQyMF9jb25maWcoKSBpcyByYXRoZXIgcG9pbnRs
ZXNzLiBKdXN0IGlubGluZSBpdCBkaXJlY3RseSBpbnRvDQo+IGludGVsX2RwX2NvbXB1dGVfY29u
ZmlnKCkuIFRoaXMgZ2V0cyByaWQgb2YgdGhlIHVnbHkgZG91YmxlIGFzc2lnbm1lbnQgb2YNCj4g
b3V0cHV0X2Zvcm1hdC4NCj4gDQo+IE5vdCByZWFsbHkgc3VyZSB3aGF0IHRoZSBiZXN0IHBvbGlj
eSB3b3VsZCBiZSB3aGVuIHRoZSB1c2VyIHN1cHBsaWVzIGEgbW9kZQ0KPiBjbGFzc2llZmllZCBi
eSB0aGUgZGlzcGxheSBhcyAiWUNiQ3IgNDoyOjAgb25seSIsIGJ1dCB3ZSBrbm93IHRoYXQgd2Ug
Y2FuJ3QgZG8NCg0KTml0OiBUeXBvIGluICJjbGFzc2lmaWVkIg0KDQpSZXN0IGFsbCBsb29rcyBn
b29kIHRvIG1lLg0KUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5j
b20+DQoNCj4gWUNiQ3IgNDoyOjAgb3V0cHV0LiBGb3Igbm93IGtlZXAgdGhlIGN1cnJlbnQgYmVo
YXZpb3VyIG9mIGp1c3Qgc2lsZW50bHkgdXBncmFkZQ0KPiBpdCB0byBSR0IgNDo0OjQuDQo+IA0K
PiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
YyB8IDMzICsrKysrKystLS0tLS0tLS0tLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA5IGlu
c2VydGlvbnMoKyksIDI0IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBpbmRleCBmNThkZjQ5OTRkOTIuLmE1MGU1MDJkZWRmOCAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBAQCAtNTk5
LDcgKzU5OSw4IEBAIGludGVsX2RwX291dHB1dF9mb3JtYXQoc3RydWN0IGRybV9jb25uZWN0b3IN
Cj4gKmNvbm5lY3RvciwNCj4gIAlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0NCj4gaW50ZWxf
YXR0YWNoZWRfZHAodG9faW50ZWxfY29ubmVjdG9yKGNvbm5lY3RvcikpOw0KPiAgCWNvbnN0IHN0
cnVjdCBkcm1fZGlzcGxheV9pbmZvICppbmZvID0gJmNvbm5lY3Rvci0+ZGlzcGxheV9pbmZvOw0K
PiANCj4gLQlpZiAoIWRybV9tb2RlX2lzXzQyMF9vbmx5KGluZm8sIG1vZGUpKQ0KPiArCWlmICgh
Y29ubmVjdG9yLT55Y2Jjcl80MjBfYWxsb3dlZCB8fA0KPiArCSAgICAhZHJtX21vZGVfaXNfNDIw
X29ubHkoaW5mbywgbW9kZSkpDQo+ICAJCXJldHVybiBJTlRFTF9PVVRQVVRfRk9STUFUX1JHQjsN
Cj4gDQo+ICAJaWYgKGludGVsX2RwLT5kZnAueWNiY3JfNDQ0X3RvXzQyMCkNCj4gQEAgLTI0NTYs
MjUgKzI0NTcsNiBAQCBpbnRlbF9kcF9jb21wdXRlX2xpbmtfY29uZmlnKHN0cnVjdCBpbnRlbF9l
bmNvZGVyDQo+ICplbmNvZGVyLA0KPiAgCXJldHVybiAwOw0KPiAgfQ0KPiANCj4gLXN0YXRpYyBp
bnQNCj4gLWludGVsX2RwX3ljYmNyNDIwX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZSwNCj4gLQkJCSBjb25zdCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29u
bl9zdGF0ZSkNCj4gLXsNCj4gLQlzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yID0gY29u
bl9zdGF0ZS0+Y29ubmVjdG9yOw0KPiAtCWNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICph
ZGp1c3RlZF9tb2RlID0NCj4gLQkJJmNydGNfc3RhdGUtPmh3LmFkanVzdGVkX21vZGU7DQo+IC0N
Cj4gLQlpZiAoIWNvbm5lY3Rvci0+eWNiY3JfNDIwX2FsbG93ZWQpDQo+IC0JCXJldHVybiAwOw0K
PiAtDQo+IC0JY3J0Y19zdGF0ZS0+b3V0cHV0X2Zvcm1hdCA9IGludGVsX2RwX291dHB1dF9mb3Jt
YXQoY29ubmVjdG9yLA0KPiBhZGp1c3RlZF9tb2RlKTsNCj4gLQ0KPiAtCWlmIChjcnRjX3N0YXRl
LT5vdXRwdXRfZm9ybWF0ICE9IElOVEVMX09VVFBVVF9GT1JNQVRfWUNCQ1I0MjApDQo+IC0JCXJl
dHVybiAwOw0KPiAtDQo+IC0JcmV0dXJuIGludGVsX3BjaF9wYW5lbF9maXR0aW5nKGNydGNfc3Rh
dGUsIGNvbm5fc3RhdGUpOw0KPiAtfQ0KPiAtDQo+ICBib29sIGludGVsX2RwX2xpbWl0ZWRfY29s
b3JfcmFuZ2UoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ICAJ
CQkJICBjb25zdCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29ubl9zdGF0ZSkNCj4geyBA
QCAtMjcyNCwxMSArMjcwNiwxNCBAQCBpbnRlbF9kcF9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50
ZWxfZW5jb2Rlcg0KPiAqZW5jb2RlciwNCj4gIAlpZiAoSEFTX1BDSF9TUExJVChkZXZfcHJpdikg
JiYgIUhBU19EREkoZGV2X3ByaXYpICYmIHBvcnQgIT0gUE9SVF9BKQ0KPiAgCQlwaXBlX2NvbmZp
Zy0+aGFzX3BjaF9lbmNvZGVyID0gdHJ1ZTsNCj4gDQo+IC0JcGlwZV9jb25maWctPm91dHB1dF9m
b3JtYXQgPSBJTlRFTF9PVVRQVVRfRk9STUFUX1JHQjsNCj4gKwlwaXBlX2NvbmZpZy0+b3V0cHV0
X2Zvcm1hdCA9DQo+IGludGVsX2RwX291dHB1dF9mb3JtYXQoJmludGVsX2Nvbm5lY3Rvci0+YmFz
ZSwNCj4gKwkJCQkJCQkgICAgYWRqdXN0ZWRfbW9kZSk7DQo+IA0KPiAtCXJldCA9IGludGVsX2Rw
X3ljYmNyNDIwX2NvbmZpZyhwaXBlX2NvbmZpZywgY29ubl9zdGF0ZSk7DQo+IC0JaWYgKHJldCkN
Cj4gLQkJcmV0dXJuIHJldDsNCj4gKwlpZiAocGlwZV9jb25maWctPm91dHB1dF9mb3JtYXQgPT0g
SU5URUxfT1VUUFVUX0ZPUk1BVF9ZQ0JDUjQyMCkgew0KPiArCQlyZXQgPSBpbnRlbF9wY2hfcGFu
ZWxfZml0dGluZyhwaXBlX2NvbmZpZywgY29ubl9zdGF0ZSk7DQo+ICsJCWlmIChyZXQpDQo+ICsJ
CQlyZXR1cm4gcmV0Ow0KPiArCX0NCj4gDQo+ICAJaWYgKCFpbnRlbF9kcF9wb3J0X2hhc19hdWRp
byhkZXZfcHJpdiwgcG9ydCkpDQo+ICAJCXBpcGVfY29uZmlnLT5oYXNfYXVkaW8gPSBmYWxzZTsN
Cj4gLS0NCj4gMi4yNi4yDQo+IA0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXw0KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0DQo+IEludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcNCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
