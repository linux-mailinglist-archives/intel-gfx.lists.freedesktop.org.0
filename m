Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 71B71380EF0
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 19:29:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8B296F3B3;
	Fri, 14 May 2021 17:29:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDB616F3B3
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 17:29:07 +0000 (UTC)
IronPort-SDR: 4110UP5lPSJA/AGp/EuTy9v+zZZITfAhq/vyejFodCfIc1Cj1Dx+Zak1cYP/Yt/z4USIdSR4oj
 V/i884gOi2SA==
X-IronPort-AV: E=McAfee;i="6200,9189,9984"; a="221225511"
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="221225511"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 10:28:42 -0700
IronPort-SDR: rZTIFwG+O5Gizdku0fWM+rtG+7Wova/xL9TGrWFmukyQzjgePs4dyf5Qekip281WT93TPAyHGQ
 YcxwUEX5VyEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="410053157"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 14 May 2021 10:28:41 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 14 May 2021 10:28:41 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 14 May 2021 10:28:40 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.013;
 Fri, 14 May 2021 10:28:40 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 5/6] drm/i915: Move the TMDS clock division
 into intel_hdmi_mode_clock_valid()
Thread-Index: AQHXRn/KT0DrKs9g8E65HejJ7OE+0qrjtmQA
Date: Fri, 14 May 2021 17:28:40 +0000
Message-ID: <b60af898451971c9d4749372889b5b77b3689c18.camel@intel.com>
References: <20210511160532.21446-1-ville.syrjala@linux.intel.com>
 <20210511160532.21446-6-ville.syrjala@linux.intel.com>
In-Reply-To: <20210511160532.21446-6-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <63FCC9B5238229419E34CB59BA63DE3D@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915: Move the TMDS clock division
 into intel_hdmi_mode_clock_valid()
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

T24gVHVlLCAyMDIxLTA1LTExIGF0IDE5OjA1ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gTm93IHRoYXQgd2UgaGF2ZSB0byB0ZWxsIGludGVsX2hkbWlfbW9kZV9jbG9ja192YWxp
ZCgpIHdoZXRoZXINCj4gd2UncmUgYXNraW5nIGFib3V0IDQ6NDo0IG9yIDQ6MjowIG91dHB1dCBp
dCBjYW4gdGFrZSBjYXJlIG9mDQo+IHRoZSBkb3RjbG9jay0+VE1EUyBjbG9jayBjb252ZXJzaW9u
Lg0KPiANCj4gQ2M6IFdlcm5lciBTZW1iYWNoIDx3c2VAdHV4ZWRvY29tcHV0ZXJzLmNvbT4NCj4g
U2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWku
YyB8IDYgKysrLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0
aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfaGRtaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMN
Cj4gaW5kZXggODc0ZmI4OTcwMDVhLi44MGUyYWU2NTJmNmUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jDQo+IEBAIC0xOTA3LDYgKzE5MDcsOSBAQCBp
bnRlbF9oZG1pX21vZGVfY2xvY2tfdmFsaWQoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3Rv
ciwgaW50IGNsb2NrLA0KPiAgCXN0cnVjdCBpbnRlbF9oZG1pICpoZG1pID0gaW50ZWxfYXR0YWNo
ZWRfaGRtaSh0b19pbnRlbF9jb25uZWN0b3IoY29ubmVjdG9yKSk7DQo+ICAJZW51bSBkcm1fbW9k
ZV9zdGF0dXMgc3RhdHVzOw0KPiAgDQo+ICsJaWYgKHljYmNyNDIwX291dHB1dCkNCj4gKwkJY2xv
Y2sgLz0gMjsNCj4gKw0KPiAgCS8qIGNoZWNrIGlmIHdlIGNhbiBkbyA4YnBjICovDQo+ICAJc3Rh
dHVzID0gaGRtaV9wb3J0X2Nsb2NrX3ZhbGlkKGhkbWksIGludGVsX2hkbWlfcG9ydF9jbG9jayhj
bG9jaywgOCksDQo+ICAJCQkJICAgICAgIHRydWUsIGhhc19oZG1pX3NpbmspOw0KPiBAQCAtMTk1
Nyw4ICsxOTYwLDYgQEAgaW50ZWxfaGRtaV9tb2RlX3ZhbGlkKHN0cnVjdCBkcm1fY29ubmVjdG9y
ICpjb25uZWN0b3IsDQo+ICAJfQ0KPiAgDQo+ICAJeWNiY3JfNDIwX29ubHkgPSBkcm1fbW9kZV9p
c180MjBfb25seSgmY29ubmVjdG9yLT5kaXNwbGF5X2luZm8sIG1vZGUpOw0KPiAtCWlmICh5Y2Jj
cl80MjBfb25seSkNCj4gLQkJY2xvY2sgLz0gMjsNCj4gIA0KPiAgCXN0YXR1cyA9IGludGVsX2hk
bWlfbW9kZV9jbG9ja192YWxpZChjb25uZWN0b3IsIGNsb2NrLCBoYXNfaGRtaV9zaW5rLCB5Y2Jj
cl80MjBfb25seSk7DQo+ICAJaWYgKHN0YXR1cyAhPSBNT0RFX09LKSB7DQo+IEBAIC0xOTY3LDcg
KzE5NjgsNiBAQCBpbnRlbF9oZG1pX21vZGVfdmFsaWQoc3RydWN0IGRybV9jb25uZWN0b3IgKmNv
bm5lY3RvciwNCj4gIAkJICAgICFkcm1fbW9kZV9pc180MjBfYWxzbygmY29ubmVjdG9yLT5kaXNw
bGF5X2luZm8sIG1vZGUpKQ0KPiAgCQkJcmV0dXJuIHN0YXR1czsNCj4gIA0KPiAtCQljbG9jayAv
PSAyOw0KDQpUaGUgY2xvY2sgaW50ZWxfaGRtaV9tb2RlX2Nsb2NrX3ZhbGlkKCkgY2FsbCB3aWxs
IGJlIGNsb2NrLzIgbm90IGNsb2NrLzQgYXMgcHJldmlvdXMuDQoNCj4gIAkJc3RhdHVzID0gaW50
ZWxfaGRtaV9tb2RlX2Nsb2NrX3ZhbGlkKGNvbm5lY3RvciwgY2xvY2ssIGhhc19oZG1pX3Npbmss
IHRydWUpOw0KPiAgCQlpZiAoc3RhdHVzICE9IE1PREVfT0spDQo+ICAJCQlyZXR1cm4gc3RhdHVz
Ow0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
