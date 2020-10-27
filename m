Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EEC9E29BECE
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Oct 2020 18:00:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A6846E0C5;
	Tue, 27 Oct 2020 16:59:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 261CA6E0C5
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Oct 2020 16:59:58 +0000 (UTC)
IronPort-SDR: NEOppcMrpkeQBqUeOVcGdgm+YFPN4r6zaqj6F9KKYffyrgWvcufqBGDXFP+/VxRBhhdBqtfHiW
 YPWXopt9gp4g==
X-IronPort-AV: E=McAfee;i="6000,8403,9787"; a="252820668"
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; d="scan'208";a="252820668"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2020 09:59:57 -0700
IronPort-SDR: iy1uSrwylyEo4qx4GeI3DqrbJu4UiGGPKeTqTvXs25P3EFI709TyMokHBW6s9yp9n57O4UvAA+
 3nYzIXis4LOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; d="scan'208";a="303950421"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 27 Oct 2020 09:59:57 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 27 Oct 2020 09:59:57 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 27 Oct 2020 09:59:56 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Tue, 27 Oct 2020 09:59:56 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [PATCH 1/3] drm/i915: Guard debugfs against invalid access
 without display
Thread-Index: AQHWrBwoH/MJhwCDYEiZ2qAgVA1hwamsIjqA
Date: Tue, 27 Oct 2020 16:59:56 +0000
Message-ID: <c27c738ae2bcda5308ef2f9f5751903bf048d0c5.camel@intel.com>
References: <20201027044618.719064-1-lucas.demarchi@intel.com>
In-Reply-To: <20201027044618.719064-1-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <4A00D43BA1135E4284624867BDA61E78@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Guard debugfs against invalid
 access without display
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIwLTEwLTI2IGF0IDIxOjQ2IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IERvIG5vdCBjcmVhdGUgdGhlIGRpc3BsYXkgZGVidWdmcyBmaWxlcyB3aGVuIHdlIGRvbid0
IGhhdmUgZGlzcGxheS4NCj4gDQo+IEJhc2VkIG9uIHByZXZpb3VzIHBhdGNoIGJ5IEpvc8OpIFNv
dXphLg0KPiANCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291
emFAaW50ZWwuY29tPg0KDQo+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXph
QGludGVsLmNvbT4NCj4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+
IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29t
Pg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIHwgMyArKy0NCj4g
wqAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmMNCj4gaW5kZXggZDMyMzdiMGQ4MjFkLi5kNmUyNTIxMmQ1YzAg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYw0KPiBAQCAtNjcxLDcgKzY3MSw4IEBAIHN0
YXRpYyB2b2lkIGk5MTVfZHJpdmVyX3JlZ2lzdGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdikNCj4gwqAJLyogUmV2ZWFsIG91ciBwcmVzZW5jZSB0byB1c2Vyc3BhY2UgKi8NCj4g
wqAJaWYgKGRybV9kZXZfcmVnaXN0ZXIoZGV2LCAwKSA9PSAwKSB7DQo+IMKgCQlpOTE1X2RlYnVn
ZnNfcmVnaXN0ZXIoZGV2X3ByaXYpOw0KPiAtCQlpbnRlbF9kaXNwbGF5X2RlYnVnZnNfcmVnaXN0
ZXIoZGV2X3ByaXYpOw0KPiArCQlpZiAoSEFTX0RJU1BMQVkoZGV2X3ByaXYpKQ0KPiArCQkJaW50
ZWxfZGlzcGxheV9kZWJ1Z2ZzX3JlZ2lzdGVyKGRldl9wcml2KTsNCj4gwqAJCWk5MTVfc2V0dXBf
c3lzZnMoZGV2X3ByaXYpOw0KPiDCoA0KPiANCj4gDQo+IA0KPiDCoAkJLyogRGVwZW5kcyBvbiBz
eXNmcyBoYXZpbmcgYmVlbiBpbml0aWFsaXplZCAqLw0KDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
