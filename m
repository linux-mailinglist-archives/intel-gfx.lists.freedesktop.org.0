Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3483C2194F5
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 02:21:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9344A6E98D;
	Thu,  9 Jul 2020 00:21:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78CE46E98D
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 00:21:43 +0000 (UTC)
IronPort-SDR: Wi3PAX3R7gnWW5ehlR76zTlNeeN1uoF9R/FpPUFLR23SjFzew2tnuHkfq58zIKNhjNVCW6BPx9
 ZUpoG+mZoARQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9676"; a="135372745"
X-IronPort-AV: E=Sophos;i="5.75,329,1589266800"; d="scan'208";a="135372745"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2020 17:21:42 -0700
IronPort-SDR: 8ND0L30NfCYEke+OCAeoE9bmThFRx89nPsq7RyD5l3I+gA60aPf62pg6VB6ghJs+0WSaVIm8bR
 vxXyduEXyXFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,329,1589266800"; d="scan'208";a="388972077"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga001.fm.intel.com with ESMTP; 08 Jul 2020 17:21:42 -0700
Received: from fmsmsx156.amr.corp.intel.com (10.18.116.74) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 8 Jul 2020 17:21:42 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.171]) by
 fmsmsx156.amr.corp.intel.com ([169.254.13.189]) with mapi id 14.03.0439.000;
 Wed, 8 Jul 2020 17:21:42 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 3/4] drm/i915: Limit
 WaFbcHighMemBwCorruptionAvoidance to skl and bxt
Thread-Index: AQHWVSl1+1qHGSjdA0WbQNJJamsfnqj+2VyA
Date: Thu, 9 Jul 2020 00:21:41 +0000
Message-ID: <de3fd398bb230fa158af07e3502f8c56f5ecb120.camel@intel.com>
References: <20200708131223.9519-1-ville.syrjala@linux.intel.com>
 <20200708131223.9519-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20200708131223.9519-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.51]
Content-ID: <4151B38BF0924046B2507C8AEDC97B2A@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Limit
 WaFbcHighMemBwCorruptionAvoidance to skl and bxt
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

T24gV2VkLCAyMDIwLTA3LTA4IGF0IDE2OjEyICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gU3VwcG9zZWRseSBvbmx5IHNrbC9ieHQgbmVlZCBXYUZiY0hpZ2hNZW1Cd0NvcnJ1cHRp
b25Bdm9pZGFuY2UuDQo+IERvIG5vdCBhcHBseSB0byB0aGUgb3RoZXIgZ2VuOSBwbGF0Zm9ybXMu
DQoNCk1hdGNoZXMgc3BlYyBpZiBub3QgY29uc2lkZXJpbmcgcHJlLXByb2R1Y3Rpb24gSFcuDQoN
ClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNv
bT4NCg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9w
bS5jIHwgMTIgKysrKysrKystLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCsp
LCA0IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jDQo+IGluZGV4IDg3
NjBlMWJhMWVlZS4uN2I5OGQwZWI4NTk3IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9wbS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMN
Cj4gQEAgLTk4LDEwICs5OCw2IEBAIHN0YXRpYyB2b2lkIGdlbjlfaW5pdF9jbG9ja19nYXRpbmco
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiAgCUk5MTVfV1JJVEUoRElTUF9B
UkJfQ1RMLCBJOTE1X1JFQUQoRElTUF9BUkJfQ1RMKSB8DQo+ICAJCSAgIERJU1BfRkJDX01FTU9S
WV9XQUtFKTsNCj4gIA0KPiAtCS8qIFdhRmJjSGlnaE1lbUJ3Q29ycnVwdGlvbkF2b2lkYW5jZTpz
a2wsYnh0LGtibCxjZmwgKi8NCj4gLQlJOTE1X1dSSVRFKElMS19EUEZDX0NISUNLRU4sIEk5MTVf
UkVBRChJTEtfRFBGQ19DSElDS0VOKSB8DQo+IC0JCSAgIElMS19EUEZDX0RJU0FCTEVfRFVNTVkw
KTsNCj4gLQ0KPiAgCWlmIChJU19TS1lMQUtFKGRldl9wcml2KSkgew0KPiAgCQkvKiBXYURpc2Fi
bGVEb3BDbG9ja0dhdGluZyAqLw0KPiAgCQlJOTE1X1dSSVRFKEdFTjdfTUlTQ0NQQ1RMLCBJOTE1
X1JFQUQoR0VON19NSVNDQ1BDVEwpDQo+IEBAIC0xNDIsNiArMTM4LDEwIEBAIHN0YXRpYyB2b2lk
IGJ4dF9pbml0X2Nsb2NrX2dhdGluZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYp
DQo+ICAJLyogV2FGYmNUdXJuT2ZmRmJjV2F0ZXJtYXJrOmJ4dCAqLw0KPiAgCUk5MTVfV1JJVEUo
RElTUF9BUkJfQ1RMLCBJOTE1X1JFQUQoRElTUF9BUkJfQ1RMKSB8DQo+ICAJCSAgIERJU1BfRkJD
X1dNX0RJUyk7DQo+ICsNCj4gKwkvKiBXYUZiY0hpZ2hNZW1Cd0NvcnJ1cHRpb25Bdm9pZGFuY2U6
Ynh0ICovDQo+ICsJSTkxNV9XUklURShJTEtfRFBGQ19DSElDS0VOLCBJOTE1X1JFQUQoSUxLX0RQ
RkNfQ0hJQ0tFTikgfA0KPiArCQkgICBJTEtfRFBGQ19ESVNBQkxFX0RVTU1ZMCk7DQo+ICB9DQo+
ICANCj4gIHN0YXRpYyB2b2lkIGdsa19pbml0X2Nsb2NrX2dhdGluZyhzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYpDQo+IEBAIC03MjM4LDYgKzcyMzgsMTAgQEAgc3RhdGljIHZvaWQg
c2tsX2luaXRfY2xvY2tfZ2F0aW5nKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikN
Cj4gIAkvKiBXYUZiY051a2VPbkhvc3RNb2RpZnk6c2tsICovDQo+ICAJSTkxNV9XUklURShJTEtf
RFBGQ19DSElDS0VOLCBJOTE1X1JFQUQoSUxLX0RQRkNfQ0hJQ0tFTikgfA0KPiAgCQkgICBJTEtf
RFBGQ19OVUtFX09OX0FOWV9NT0RJRklDQVRJT04pOw0KPiArDQo+ICsJLyogV2FGYmNIaWdoTWVt
QndDb3JydXB0aW9uQXZvaWRhbmNlOnNrbCAqLw0KPiArCUk5MTVfV1JJVEUoSUxLX0RQRkNfQ0hJ
Q0tFTiwgSTkxNV9SRUFEKElMS19EUEZDX0NISUNLRU4pIHwNCj4gKwkJICAgSUxLX0RQRkNfRElT
QUJMRV9EVU1NWTApOw0KPiAgfQ0KPiAgDQo+ICBzdGF0aWMgdm9pZCBiZHdfaW5pdF9jbG9ja19n
YXRpbmcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
