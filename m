Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D340026E639
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Sep 2020 22:06:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B04336EC59;
	Thu, 17 Sep 2020 20:06:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2B096EC59
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Sep 2020 20:06:10 +0000 (UTC)
IronPort-SDR: GO3eUh80mwgPGcxmBayalg+40v94IuiVSshpfjPbf0xwBeHBYknIvrYQ5CVdK+yrlPVyDAidwG
 5xWExIROrwmA==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="244617347"
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="244617347"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 13:06:07 -0700
IronPort-SDR: Gh3ACaLYeyOPyW2Q/zhh3GNOajUZ2eqCNSIHMuFcMIU+8QzEgU8JVLRwqxfzh9k5PX+qkFVykg
 TimTM8svNtWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="507875639"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga006.fm.intel.com with ESMTP; 17 Sep 2020 13:06:07 -0700
Received: from bgsmsx606.gar.corp.intel.com (10.67.234.8) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 17 Sep 2020 13:06:06 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX606.gar.corp.intel.com (10.67.234.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 18 Sep 2020 01:36:04 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Fri, 18 Sep 2020 01:36:04 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 09/20] drm/i915: Read out CHV CGM degamma
Thread-Index: AQHWXH9NYvdAHkBPxE2PqtLbWg4QQKltopVg
Date: Thu, 17 Sep 2020 20:06:04 +0000
Message-ID: <fca18d23953c45c5bbaeb2892a52bc8b@intel.com>
References: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
 <20200717211345.26851-10-ville.syrjala@linux.intel.com>
In-Reply-To: <20200717211345.26851-10-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 09/20] drm/i915: Read out CHV CGM degamma
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
PiBTeXJqYWxhDQo+IFNlbnQ6IFNhdHVyZGF5LCBKdWx5IDE4LCAyMDIwIDI6NDQgQU0NCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVsLWdmeF0g
W1BBVENIIDA5LzIwXSBkcm0vaTkxNTogUmVhZCBvdXQgQ0hWIENHTSBkZWdhbW1hDQo+IA0KPiBG
cm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAN
Cj4gU2luY2UgQ0hWIGhhcyB0aGUgZGVkaWNhdGUgQ0dNIGRlZ2FtbWEgdW5pdCByZWFkb3V0IGlz
IHRyaXZpYWwuDQo+IEp1c3QgZG8gaXQuDQoNClJldmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1h
LnNoYW5rYXJAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jIHwgMzYgKysrKysrKysrKysrKysrKysrKysrKw0K
PiAgMSBmaWxlIGNoYW5nZWQsIDM2IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMNCj4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMNCj4gaW5kZXggNDM3Y2M1NjkyNWFiLi42
ODQyZjVjMDM1NmQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfY29sb3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2NvbG9yLmMNCj4gQEAgLTEwMzAsNiArMTAzMCwxMyBAQCBzdGF0aWMgdTMyIGNodl9jZ21fZGVn
YW1tYV91ZHcoY29uc3Qgc3RydWN0DQo+IGRybV9jb2xvcl9sdXQgKmNvbG9yKQ0KPiAgCXJldHVy
biBkcm1fY29sb3JfbHV0X2V4dHJhY3QoY29sb3ItPnJlZCwgMTQpOyAgfQ0KPiANCj4gK3N0YXRp
YyB2b2lkIGNodl9jZ21fZGVnYW1tYV9wYWNrKHN0cnVjdCBkcm1fY29sb3JfbHV0ICplbnRyeSwg
dTMyIGxkdywNCj4gK3UzMiB1ZHcpIHsNCj4gKwllbnRyeS0+Z3JlZW4gPQ0KPiBpbnRlbF9jb2xv
cl9sdXRfcGFjayhSRUdfRklFTERfR0VUKENHTV9QSVBFX0RFR0FNTUFfR1JFRU5fTUFTSywgbGR3
KSwNCj4gMTQpOw0KPiArCWVudHJ5LT5ibHVlID0NCj4gaW50ZWxfY29sb3JfbHV0X3BhY2soUkVH
X0ZJRUxEX0dFVChDR01fUElQRV9ERUdBTU1BX0JMVUVfTUFTSywgbGR3KSwNCj4gMTQpOw0KPiAr
CWVudHJ5LT5yZWQgPQ0KPiAraW50ZWxfY29sb3JfbHV0X3BhY2soUkVHX0ZJRUxEX0dFVChDR01f
UElQRV9ERUdBTU1BX1JFRF9NQVNLLCB1ZHcpLA0KPiArMTQpOyB9DQo+ICsNCj4gIHN0YXRpYyB2
b2lkIGNodl9sb2FkX2NnbV9kZWdhbW1hKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLA0KPiAgCQkJ
CSBjb25zdCBzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2IgKmJsb2IpICB7IEBAIC0NCj4gMTgyMSw2
ICsxODI4LDMyIEBAIHN0YXRpYyB2b2lkIGk5NjVfcmVhZF9sdXRzKHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlDQo+ICpjcnRjX3N0YXRlKQ0KPiAgCQljcnRjX3N0YXRlLT5ody5nYW1tYV9sdXQgPSBp
OTY1X3JlYWRfbHV0XzEwcDYoY3J0Yyk7ICB9DQo+IA0KPiArc3RhdGljIHN0cnVjdCBkcm1fcHJv
cGVydHlfYmxvYiAqY2h2X3JlYWRfY2dtX2RlZ2FtbWEoc3RydWN0IGludGVsX2NydGMNCj4gKypj
cnRjKSB7DQo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShj
cnRjLT5iYXNlLmRldik7DQo+ICsJaW50IGksIGx1dF9zaXplID0gSU5URUxfSU5GTyhkZXZfcHJp
diktPmNvbG9yLmRlZ2FtbWFfbHV0X3NpemU7DQo+ICsJZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5w
aXBlOw0KPiArCXN0cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAqYmxvYjsNCj4gKwlzdHJ1Y3QgZHJt
X2NvbG9yX2x1dCAqbHV0Ow0KPiArDQo+ICsJYmxvYiA9IGRybV9wcm9wZXJ0eV9jcmVhdGVfYmxv
YigmZGV2X3ByaXYtPmRybSwNCj4gKwkJCQkJc2l6ZW9mKHN0cnVjdCBkcm1fY29sb3JfbHV0KSAq
IGx1dF9zaXplLA0KPiArCQkJCQlOVUxMKTsNCj4gKwlpZiAoSVNfRVJSKGJsb2IpKQ0KPiArCQly
ZXR1cm4gTlVMTDsNCj4gKw0KPiArCWx1dCA9IGJsb2ItPmRhdGE7DQo+ICsNCj4gKwlmb3IgKGkg
PSAwOyBpIDwgbHV0X3NpemU7IGkrKykgew0KPiArCQl1MzIgbGR3ID0gaW50ZWxfZGVfcmVhZChk
ZXZfcHJpdiwgQ0dNX1BJUEVfREVHQU1NQShwaXBlLCBpLA0KPiAwKSk7DQo+ICsJCXUzMiB1ZHcg
PSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBDR01fUElQRV9ERUdBTU1BKHBpcGUsIGksDQo+IDEp
KTsNCj4gKw0KPiArCQljaHZfY2dtX2RlZ2FtbWFfcGFjaygmbHV0W2ldLCBsZHcsIHVkdyk7DQo+
ICsJfQ0KPiArDQo+ICsJcmV0dXJuIGJsb2I7DQo+ICt9DQo+ICsNCj4gIHN0YXRpYyBzdHJ1Y3Qg
ZHJtX3Byb3BlcnR5X2Jsb2IgKmNodl9yZWFkX2NnbV9nYW1tYShzdHJ1Y3QgaW50ZWxfY3J0YyAq
Y3J0YykNCj4gew0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5
MTUoY3J0Yy0+YmFzZS5kZXYpOyBAQCAtMTg1MSw2DQo+ICsxODg0LDkgQEAgc3RhdGljIHZvaWQg
Y2h2X3JlYWRfbHV0cyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkgIHsNCj4g
IAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFw
aS5jcnRjKTsNCj4gDQo+ICsJaWYgKGNydGNfc3RhdGUtPmNnbV9tb2RlICYgQ0dNX1BJUEVfTU9E
RV9ERUdBTU1BKQ0KPiArCQljcnRjX3N0YXRlLT5ody5kZWdhbW1hX2x1dCA9IGNodl9yZWFkX2Nn
bV9kZWdhbW1hKGNydGMpOw0KPiArDQo+ICAJaWYgKGNydGNfc3RhdGUtPmNnbV9tb2RlICYgQ0dN
X1BJUEVfTU9ERV9HQU1NQSkNCj4gIAkJY3J0Y19zdGF0ZS0+aHcuZ2FtbWFfbHV0ID0gY2h2X3Jl
YWRfY2dtX2dhbW1hKGNydGMpOw0KPiAgCWVsc2UNCj4gLS0NCj4gMi4yNi4yDQo+IA0KPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBJbnRlbC1nZngg
bWFpbGluZyBsaXN0DQo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
