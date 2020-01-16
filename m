Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2DE113D104
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 01:20:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AEF36EB99;
	Thu, 16 Jan 2020 00:20:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAC4D6EB99
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2020 00:20:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jan 2020 16:20:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,323,1574150400"; d="scan'208";a="257089182"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by fmsmga002.fm.intel.com with ESMTP; 15 Jan 2020 16:20:42 -0800
Received: from fmsmsx156.amr.corp.intel.com (10.18.116.74) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 15 Jan 2020 16:20:42 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.125]) by
 fmsmsx156.amr.corp.intel.com ([169.254.13.53]) with mapi id 14.03.0439.000;
 Wed, 15 Jan 2020 16:20:41 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 5/5] drm/i915: Move encoder variable to
 tighter scope
Thread-Index: AQHVy9cvyzylqqIXvUWIDfHdQhgphqfs8/+A
Date: Thu, 16 Jan 2020 00:20:41 +0000
Message-ID: <d1106a4cd44129aff4c1f6c018c43fa3205cd697.camel@intel.com>
References: <20200115190813.17971-1-ville.syrjala@linux.intel.com>
 <20200115190813.17971-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20200115190813.17971-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.13.13]
Content-ID: <18D10AEEF56F064C93976FF964FFFEA7@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Move encoder variable to
 tighter scope
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

T24gV2VkLCAyMDIwLTAxLTE1IGF0IDIxOjA4ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gTGV0J3Mgbm90IHBvbGx1dGUgdGhlIGZ1bmN0aW9uIHNjb3BlIHdpdGggdmFyaWFibGVz
IHdoZW4gdGhleSdyZQ0KPiBvbmx5IG5lZWRlZCBpbnNpZGUgc29tZSBsb29wcy4NCg0KUmV2aWV3
ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+
IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jIHwgMTAgKysrKysrLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9u
cygrKSwgNCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGluZGV4IDk3Y2Y4NDU3Yzk1Ni4uNzZjMTczNDFkZjJi
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
Yw0KPiBAQCAtMTMwNzAsNyArMTMwNzAsNiBAQCBpbnRlbF9tb2Rlc2V0X3BpcGVfY29uZmlnKHN0
cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZykNCj4gIHsNCj4gIAlzdHJ1Y3Qg
ZHJtX2NydGMgKmNydGMgPSBwaXBlX2NvbmZpZy0+dWFwaS5jcnRjOw0KPiAgCXN0cnVjdCBkcm1f
YXRvbWljX3N0YXRlICpzdGF0ZSA9IHBpcGVfY29uZmlnLT51YXBpLnN0YXRlOw0KPiAtCXN0cnVj
dCBpbnRlbF9lbmNvZGVyICplbmNvZGVyOw0KPiAgCXN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25u
ZWN0b3I7DQo+ICAJc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5lY3Rvcl9zdGF0ZTsN
Cj4gIAlpbnQgYmFzZV9icHAsIHJldDsNCj4gQEAgLTEzMTEzLDExICsxMzExMiwxMiBAQCBpbnRl
bF9tb2Rlc2V0X3BpcGVfY29uZmlnKHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2Nv
bmZpZykNCj4gIAkJCSAgICAgICAmcGlwZV9jb25maWctPnBpcGVfc3JjX2gpOw0KPiAgDQo+ICAJ
Zm9yX2VhY2hfbmV3X2Nvbm5lY3Rvcl9pbl9zdGF0ZShzdGF0ZSwgY29ubmVjdG9yLA0KPiBjb25u
ZWN0b3Jfc3RhdGUsIGkpIHsNCj4gKwkJc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIgPQ0K
PiArCQkJdG9faW50ZWxfZW5jb2Rlcihjb25uZWN0b3Jfc3RhdGUtDQo+ID5iZXN0X2VuY29kZXIp
Ow0KPiArDQo+ICAJCWlmIChjb25uZWN0b3Jfc3RhdGUtPmNydGMgIT0gY3J0YykNCj4gIAkJCWNv
bnRpbnVlOw0KPiAgDQo+IC0JCWVuY29kZXIgPSB0b19pbnRlbF9lbmNvZGVyKGNvbm5lY3Rvcl9z
dGF0ZS0NCj4gPmJlc3RfZW5jb2Rlcik7DQo+IC0NCj4gIAkJaWYgKCFjaGVja19zaW5nbGVfZW5j
b2Rlcl9jbG9uaW5nKHN0YXRlLA0KPiB0b19pbnRlbF9jcnRjKGNydGMpLCBlbmNvZGVyKSkgew0K
PiAgCQkJRFJNX0RFQlVHX0tNUygicmVqZWN0aW5nIGludmFsaWQgY2xvbmluZw0KPiBjb25maWd1
cmF0aW9uXG4iKTsNCj4gIAkJCXJldHVybiAtRUlOVkFMOw0KPiBAQCAtMTMxNjcsNiArMTMxNjcs
OSBAQCBpbnRlbF9tb2Rlc2V0X3BpcGVfY29uZmlnKHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRl
ICpwaXBlX2NvbmZpZykNCj4gIAkgKiBhIGNoYW5jZSB0byByZWplY3QgdGhlIG1vZGUgZW50aXJl
bHkuDQo+ICAJICovDQo+ICAJZm9yX2VhY2hfbmV3X2Nvbm5lY3Rvcl9pbl9zdGF0ZShzdGF0ZSwg
Y29ubmVjdG9yLA0KPiBjb25uZWN0b3Jfc3RhdGUsIGkpIHsNCj4gKwkJc3RydWN0IGludGVsX2Vu
Y29kZXIgKmVuY29kZXIgPQ0KPiArCQkJdG9faW50ZWxfZW5jb2Rlcihjb25uZWN0b3Jfc3RhdGUt
DQo+ID5iZXN0X2VuY29kZXIpOw0KPiArDQo+ICAJCWlmIChjb25uZWN0b3Jfc3RhdGUtPmNydGMg
IT0gY3J0YykNCj4gIAkJCWNvbnRpbnVlOw0KPiAgDQo+IEBAIC0xMzE3OCw3ICsxMzE4MSw2IEBA
IGludGVsX21vZGVzZXRfcGlwZV9jb25maWcoc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKnBp
cGVfY29uZmlnKQ0KPiAgCQkJcmV0dXJuIHJldDsNCj4gIAkJfQ0KPiAgDQo+IC0JCWVuY29kZXIg
PSB0b19pbnRlbF9lbmNvZGVyKGNvbm5lY3Rvcl9zdGF0ZS0NCj4gPmJlc3RfZW5jb2Rlcik7DQo+
ICAJCXJldCA9IGVuY29kZXItPmNvbXB1dGVfY29uZmlnKGVuY29kZXIsIHBpcGVfY29uZmlnLA0K
PiAgCQkJCQkgICAgICBjb25uZWN0b3Jfc3RhdGUpOw0KPiAgCQlpZiAocmV0IDwgMCkgew0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
