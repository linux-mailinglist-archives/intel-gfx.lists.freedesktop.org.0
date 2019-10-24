Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3AAEE3F71
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 00:36:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 209AA6E832;
	Thu, 24 Oct 2019 22:36:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E23DC6E832
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 22:36:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 15:36:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,226,1569308400"; d="scan'208";a="282078477"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga001.jf.intel.com with ESMTP; 24 Oct 2019 15:36:52 -0700
Received: from fmsmsx123.amr.corp.intel.com (10.18.125.38) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 24 Oct 2019 15:36:52 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.25]) by
 fmsmsx123.amr.corp.intel.com ([169.254.7.18]) with mapi id 14.03.0439.000;
 Thu, 24 Oct 2019 15:36:52 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/3] drm/i915: Add CHICKEN_TRANS_D
Thread-Index: AQHVimWeZ0ftbfkC20mPEvWSWpVlYKdq15yA
Date: Thu, 24 Oct 2019 22:36:51 +0000
Message-ID: <ecc29c65323db1965089aa3637800ca68a4c4d08.camel@intel.com>
References: <20191024122138.25065-1-ville.syrjala@linux.intel.com>
 <20191024122138.25065-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20191024122138.25065-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <8B8C509C6E10A941AE9E6FCFA87DD70F@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Add CHICKEN_TRANS_D
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

T24gVGh1LCAyMDE5LTEwLTI0IGF0IDE1OjIxICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gQWRkIENISUNLRU5fVFJBTlMgZGVmaW5pdGlvbiBmb3IgdHJhbnNjb2RlciBELg0KPiAN
Cg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aCB8IDQgKysrLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlv
bigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgN
Cj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+IGluZGV4IDM4MDcxZDBjODAy
MC4uNTBjMmZhMGYyY2FiIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gQEAgLTc2
MjAsMTEgKzc2MjAsMTMgQEAgZW51bSB7DQo+ICAjZGVmaW5lIF9DSElDS0VOX1RSQU5TX0IJMHg0
MjBjNA0KPiAgI2RlZmluZSBfQ0hJQ0tFTl9UUkFOU19DCTB4NDIwYzgNCj4gICNkZWZpbmUgX0NI
SUNLRU5fVFJBTlNfRURQCTB4NDIwY2MNCj4gKyNkZWZpbmUgX0NISUNLRU5fVFJBTlNfRAkweDQy
MGQ4DQo+ICAjZGVmaW5lIENISUNLRU5fVFJBTlModHJhbnMpCV9NTUlPKF9QSUNLKCh0cmFucyks
IFwNCj4gIAkJCQkJICAgIFtUUkFOU0NPREVSX0VEUF0gPQ0KPiBfQ0hJQ0tFTl9UUkFOU19FRFAs
IFwNCj4gIAkJCQkJICAgIFtUUkFOU0NPREVSX0FdID0NCj4gX0NISUNLRU5fVFJBTlNfQSwgXA0K
PiAgCQkJCQkgICAgW1RSQU5TQ09ERVJfQl0gPQ0KPiBfQ0hJQ0tFTl9UUkFOU19CLCBcDQo+IC0J
CQkJCSAgICBbVFJBTlNDT0RFUl9DXSA9DQo+IF9DSElDS0VOX1RSQU5TX0MpKQ0KPiArCQkJCQkg
ICAgW1RSQU5TQ09ERVJfQ10gPQ0KPiBfQ0hJQ0tFTl9UUkFOU19DLCBcDQo+ICsJCQkJCSAgICBb
VFJBTlNDT0RFUl9EXSA9DQo+IF9DSElDS0VOX1RSQU5TX0QpKQ0KPiAgI2RlZmluZSAgVlNDX0RB
VEFfU0VMX1NPRlRXQVJFX0NPTlRST0wJKDEgPDwgMjUpIC8qIEdMSyBhbmQNCj4gQ05MKyAqLw0K
PiAgI2RlZmluZSAgRERJX1RSQUlOSU5HX09WRVJSSURFX0VOQUJMRQkoMSA8PCAxOSkNCj4gICNk
ZWZpbmUgIERESV9UUkFJTklOR19PVkVSUklERV9WQUxVRQkoMSA8PCAxOCkNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
