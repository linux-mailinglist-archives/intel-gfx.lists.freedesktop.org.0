Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E9627F852
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Oct 2020 06:06:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6F036E0E4;
	Thu,  1 Oct 2020 04:06:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 524976E0E4
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Oct 2020 04:06:05 +0000 (UTC)
IronPort-SDR: pB+80LMzqfLXtb1vKqBkpM7F8dML5Eda2PUxztbu2LQsbQYfE/BDWsFxQa2QeBe1ZTKBHRRsXz
 WvhyNwguW1AQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9760"; a="247337620"
X-IronPort-AV: E=Sophos;i="5.77,323,1596524400"; d="scan'208";a="247337620"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 21:06:01 -0700
IronPort-SDR: gKi54r1XH2Pa2S07ZaOoM4mBvRi0neyaQQecoPX3Y8GXTL+dfvV7DMmUgTZ5Q6flb82IO50EAY
 6stJHn/6aDkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,323,1596524400"; d="scan'208";a="515332970"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 30 Sep 2020 21:05:58 -0700
Received: from bgsmsx603.gar.corp.intel.com (10.109.78.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 30 Sep 2020 21:05:56 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 BGSMSX603.gar.corp.intel.com (10.109.78.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 1 Oct 2020 09:35:53 +0530
Received: from bgsmsx602.gar.corp.intel.com ([10.109.78.81]) by
 BGSMSX602.gar.corp.intel.com ([10.109.78.81]) with mapi id 15.01.1713.004;
 Thu, 1 Oct 2020 09:35:53 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Fix TGL DKL PHY DP vswing handling
Thread-Index: AQHWl3ou3qdeOcuXrkaeT5gbGF5mEKmCGqIA
Date: Thu, 1 Oct 2020 04:05:53 +0000
Message-ID: <86c6be4ebc1f416a8156b748e95738af@intel.com>
References: <20200930223642.28565-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200930223642.28565-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix TGL DKL PHY DP vswing handling
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
Cc: "stable@vger.kernel.org" <stable@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBWaWxsZSBTeXJqYWxhIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogVGh1cnNkYXksIE9jdG9iZXIgMSwg
MjAyMCA0OjA3IEFNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENj
OiBzdGFibGVAdmdlci5rZXJuZWwub3JnOyBLdWxrYXJuaSwgVmFuZGl0YSA8dmFuZGl0YS5rdWxr
YXJuaUBpbnRlbC5jb20+Ow0KPiBTaGFua2FyLCBVbWEgPHVtYS5zaGFua2FyQGludGVsLmNvbT4N
Cj4gU3ViamVjdDogW1BBVENIXSBkcm0vaTkxNTogRml4IFRHTCBES0wgUEhZIERQIHZzd2luZyBo
YW5kbGluZw0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4NCj4gDQo+IFRoZSBIRE1JIHZzLiBub3QtSERNSSBjaGVjayBnb3QgaW52ZXJ0
ZWQgd2hlbSB0aGUgYm9ndXMgZW5jb2Rlci0+dHlwZQ0KPiBjaGVja3Mgd2VyZSBlbGltaW5hdGVk
LiBTbyBub3cgd2UncmUgdXNpbmcgMCBhcyB0aGUgbGluayByYXRlIG9uIERQIGFuZA0KPiBwb3Rl
bnRpYWxseSBub24temVybyBvbiBIRE1JLCB3aGljaCBpcyBleGFjdGx5IHRoZSBvcHBvc2l0ZSBv
ZiB3aGF0IHdlDQo+IHdhbnQuIFRoZSBvcmlnaW5hbCBib2d1cyBjaGVjayBhY3R1YWxseSB3b3Jr
ZWQgbW9yZSBjb3JyZWN0bHkgYnkgYWNjaWRlbnQNCj4gc2luY2UgaWYgd291bGQgYWx3YXlzIGV2
YWx1YXRlIHRvIHRydWUuIER1ZSB0byB0aGlzIHdlIG5vdyBhbHdheXMgdXNlIHRoZQ0KPiBSQlIv
SEJSMSB2c3dpbmcgdGFibGUgYW5kIG5ldmVyIGV2ZXIgdGhlIEhCUjIrIHZzd2luZyB0YWJsZS4g
VGhhdCBpcw0KPiBwcm9iYWJseSBub3QgYSBnb29kIHdheSB0byBnZXQgYSBoaWdoIHF1YWxpdHkg
c2lnbmFsIGF0IEhCUjIrIHJhdGVzLiBGaXggdGhlDQo+IGNoZWNrIHNvIHdlIHBpY2sgdGhlIHJp
Z2h0IHRhYmxlLg0KPiANCj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcNCj4gQ2M6IFZhbmRp
dGEgS3Vsa2FybmkgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPg0KPiBDYzogVW1hIFNoYW5r
YXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCj4gRml4ZXM6IDk0NjQxZWI2YzY5NiAoImRybS9p
OTE1L2Rpc3BsYXk6IEZpeCB0aGUgZW5jb2RlciB0eXBlIGNoZWNrIikNCj4gU2lnbmVkLW9mZi1i
eTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCg0KTEdU
TS4NClJldmlld2VkLWJ5OiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVs
LmNvbT4NCkkgdGhpbmsgSSBtaXNzZWQgdGhlIGludmVydGVkIGNoYW5nZSB3aGlsZSByZWJhc2lu
Zy4NClRoYW5rcywNClZhbmRpdGENCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RkaS5jIHwgMiArLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMNCj4gaW5kZXggNGQwNjE3OGNkNzZjLi5jZGNiN2IxMDM0YWUgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBAQCAtMjc0Miw3ICsyNzQy
LDcgQEAgdGdsX2RrbF9waHlfZGRpX3Zzd2luZ19zZXF1ZW5jZShzdHJ1Y3QNCj4gaW50ZWxfZW5j
b2RlciAqZW5jb2RlciwgaW50IGxpbmtfY2xvY2ssDQo+ICAJdTMyIG5fZW50cmllcywgdmFsLCBs
biwgZHBjbnRfbWFzaywgZHBjbnRfdmFsOw0KPiAgCWludCByYXRlID0gMDsNCj4gDQo+IC0JaWYg
KHR5cGUgPT0gSU5URUxfT1VUUFVUX0hETUkpIHsNCj4gKwlpZiAodHlwZSAhPSBJTlRFTF9PVVRQ
VVRfSERNSSkgew0KPiAgCQlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gZW5jX3RvX2ludGVs
X2RwKGVuY29kZXIpOw0KPiANCj4gIAkJcmF0ZSA9IGludGVsX2RwLT5saW5rX3JhdGU7DQo+IC0t
DQo+IDIuMjYuMg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
