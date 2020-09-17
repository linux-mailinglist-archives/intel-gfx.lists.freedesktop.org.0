Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F7426E6DA
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Sep 2020 22:40:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8027B6E2DC;
	Thu, 17 Sep 2020 20:40:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 276A96EC8D
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Sep 2020 20:40:35 +0000 (UTC)
IronPort-SDR: UR4I5jWDZbc8RuB0xMV9Ii/XxDEEmUxbAVHeRrHXBizZ096DG6ePf1negXaBOQo6KKUO6jyrlr
 NfoewJ73XEeg==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="159846750"
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="159846750"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 13:40:33 -0700
IronPort-SDR: r1fSDl0A7XYHTDtDh6LaR2VAETuYYNVvFsG/md1/JQEkbXQeveR7gS8DzMp6lywWjBT7+QZ2CW
 N3uDFc/HNEzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="452463770"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 17 Sep 2020 13:40:33 -0700
Received: from bgsmsx605.gar.corp.intel.com (10.67.234.7) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 17 Sep 2020 13:40:32 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX605.gar.corp.intel.com (10.67.234.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 18 Sep 2020 02:10:30 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Fri, 18 Sep 2020 02:10:30 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 11/20] drm/i915: Do degamma+gamma readout in
 bdw+ split gamma mode
Thread-Index: AQHWXH9FQG3H0rELBECU58P94kkKJ6ltqR0g
Date: Thu, 17 Sep 2020 20:40:30 +0000
Message-ID: <63c68a36acb1461d824c69601813d064@intel.com>
References: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
 <20200717211345.26851-12-ville.syrjala@linux.intel.com>
In-Reply-To: <20200717211345.26851-12-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 11/20] drm/i915: Do degamma+gamma readout in
 bdw+ split gamma mode
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
W1BBVENIIDExLzIwXSBkcm0vaTkxNTogRG8gZGVnYW1tYStnYW1tYSByZWFkb3V0IGluDQo+IGJk
dysgc3BsaXQgZ2FtbWEgbW9kZQ0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IFJlYWQgb3V0IGJvdGggZ2FtbWEgYW5kIGRl
Z2FtbWEgd2hlbiB1c25nIHRoZSBzcGxpdCBnYW1tYSBtb2RlIG9uDQoNCnMvdXNuZy91c2luZw0K
V2l0aCB0aGlzLA0KUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5j
b20+DQoNCj4gYmR3Ky4gV2UgY2FuJ3QgdXNlIHRoZSBhdXRvIGluY3JlbWVudCBtb2RlIHRvIGl0
ZXJhdGUgdGhlIExVVHMgc2luY2Ugd2Ugd2FudA0KPiB0byByZWFkIG91dCBsZXNzIGVudHJpZXMg
dGhhbiB3aGF0IHdlIHN0dWZmIGludG8gdGhlIHNvZnR3YXJlIExVVC4NCj4gDQo+IFNpZ25lZC1v
ZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+
IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jIHwgNTIg
KysrKysrKysrKysrKysrKysrKysrLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDUxIGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2NvbG9yLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2NvbG9yLmMNCj4gaW5kZXggNTc0MmFjMWFmODYyLi5mMzQyNTc5MjJlNGQgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYw0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMNCj4gQEAgLTE5
NTksNiArMTk1OSw0NiBAQCBzdGF0aWMgdm9pZCBpbGtfcmVhZF9sdXRzKHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlKQ0KPiAgCQljcnRjX3N0YXRlLT5ody5nYW1tYV9sdXQg
PSBpbGtfcmVhZF9sdXRfMTAoY3J0Yyk7ICB9DQo+IA0KPiArLyoNCj4gKyAqIElWQi9IU1cgQnNw
ZWMgLyBQQUxfUFJFQ19JTkRFWDoNCj4gKyAqICJSZXN0cmljdGlvbiA6IEluZGV4IGF1dG8gaW5j
cmVtZW50IG1vZGUgaXMgbm90DQo+ICsgKiAgc3VwcG9ydGVkIGFuZCBtdXN0IG5vdCBiZSBlbmFi
bGVkLiINCj4gKyAqLw0KPiArc3RhdGljIHN0cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAqaXZiX3Jl
YWRfbHV0XzEwKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLA0KPiArCQkJCQkJIHUzMiBwcmVjX2lu
ZGV4KQ0KPiArew0KPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5
MTUoY3J0Yy0+YmFzZS5kZXYpOw0KPiArCWludCBpLCBod19sdXRfc2l6ZSA9IGl2Yl9sdXRfMTBf
c2l6ZShwcmVjX2luZGV4KTsNCj4gKwlpbnQgbHV0X3NpemUgPSBJTlRFTF9JTkZPKGRldl9wcml2
KS0+Y29sb3IuZ2FtbWFfbHV0X3NpemU7DQo+ICsJZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBl
Ow0KPiArCXN0cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAqYmxvYjsNCj4gKwlzdHJ1Y3QgZHJtX2Nv
bG9yX2x1dCAqbHV0Oy8NCj4gKw0KPiArCWJsb2IgPSBkcm1fcHJvcGVydHlfY3JlYXRlX2Jsb2Io
JmRldl9wcml2LT5kcm0sDQo+ICsJCQkJCXNpemVvZihzdHJ1Y3QgZHJtX2NvbG9yX2x1dCkgKiBs
dXRfc2l6ZSwNCj4gKwkJCQkJTlVMTCk7DQo+ICsJaWYgKElTX0VSUihibG9iKSkNCj4gKwkJcmV0
dXJuIE5VTEw7DQo+ICsNCj4gKwlsdXQgPSBibG9iLT5kYXRhOw0KPiArDQo+ICsJZm9yIChpID0g
MDsgaSA8IGx1dF9zaXplOyBpKyspIHsNCj4gKwkJLyogV2UgZGlzY2FyZCBoYWxmIHRoZSB1c2Vy
IGVudHJpZXMgaW4gc3BsaXQgZ2FtbWEgbW9kZSAqLw0KPiArCQlpbnQgaW5kZXggPSBESVZfUk9V
TkRfVVAoaSAqIChod19sdXRfc2l6ZSAtIDEpLCBsdXRfc2l6ZSAtIDEpOw0KPiArCQl1MzIgdmFs
Ow0KPiArDQo+ICsJCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBQUkVDX1BBTF9JTkRFWChwaXBl
KSwNCj4gKwkJCSAgICAgICBwcmVjX2luZGV4ICsgaW5kZXgpOw0KPiArCQl2YWwgPSBpbnRlbF9k
ZV9yZWFkKGRldl9wcml2LCBQUkVDX1BBTF9EQVRBKHBpcGUpKTsNCj4gKw0KPiArCQlpbGtfbHV0
XzEwX3BhY2soJmx1dFtpXSwgdmFsKTsNCj4gKwl9DQo+ICsNCj4gKwlpbnRlbF9kZV93cml0ZShk
ZXZfcHJpdiwgUFJFQ19QQUxfSU5ERVgocGlwZSksIDApOw0KPiArDQo+ICsJcmV0dXJuIGJsb2I7
DQo+ICt9DQo+ICsNCj4gIC8qIE9uIEJEVysgdGhlIGluZGV4IGF1dG8gaW5jcmVtZW50IG1vZGUg
YWN0dWFsbHkgd29ya3MgKi8gIHN0YXRpYyBzdHJ1Y3QNCj4gZHJtX3Byb3BlcnR5X2Jsb2IgKmJk
d19yZWFkX2x1dF8xMChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywNCj4gIAkJCQkJCSB1MzIgcHJl
Y19pbmRleCkNCj4gQEAgLTIwMDYsNyArMjA0NiwxNyBAQCBzdGF0aWMgdm9pZCBiZHdfcmVhZF9s
dXRzKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlKQ0KPiAgCQkqYmxvYiA9
IGlsa19yZWFkX2x1dF84KGNydGMpOw0KPiAgCQlicmVhazsNCj4gIAljYXNlIEdBTU1BX01PREVf
TU9ERV9TUExJVDoNCj4gLQkJLyogRklYTUUgKi8NCj4gKwkJLyoNCj4gKwkJICogQ2FuJ3QgdXNl
IGJkd19yZWFkX2x1dF8xMCgpIHdpdGggaXRzIGF1dG8taW5jcmVtZW50DQo+ICsJCSAqIG1vZGUg
aGVyZSBzaW5jZSB3ZSB3YW50IHRvIGdlbmVyYXRlIDEwMjQgZW50cnkNCj4gKwkJICogc29mdHdh
cmUgTFVUcyBmcm9tIHRoZSA1MTIgZW50cnkgaGFyZHdhcmUgTFVUcy4NCj4gKwkJICovDQo+ICsJ
CWNydGNfc3RhdGUtPmh3LmRlZ2FtbWFfbHV0ID0NCj4gKwkJCWl2Yl9yZWFkX2x1dF8xMChjcnRj
LCBQQUxfUFJFQ19TUExJVF9NT0RFIHwNCj4gKwkJCQkJUEFMX1BSRUNfSU5ERVhfVkFMVUUoMCkp
Ow0KPiArCQljcnRjX3N0YXRlLT5ody5nYW1tYV9sdXQgPQ0KPiArCQkJaXZiX3JlYWRfbHV0XzEw
KGNydGMsIFBBTF9QUkVDX1NQTElUX01PREUgfA0KPiArCQkJCQlQQUxfUFJFQ19JTkRFWF9WQUxV
RSg1MTIpKTsNCj4gIAkJYnJlYWs7DQo+ICAJY2FzZSBHQU1NQV9NT0RFX01PREVfMTBCSVQ6DQo+
ICAJCSpibG9iID0gYmR3X3JlYWRfbHV0XzEwKGNydGMsIFBBTF9QUkVDX0lOREVYX1ZBTFVFKDAp
KTsNCj4gLS0NCj4gMi4yNi4yDQo+IA0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXw0KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0DQo+IEludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
