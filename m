Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 580804653F3
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 18:28:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C838A6E882;
	Wed,  1 Dec 2021 17:28:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 576DB6E878
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 17:28:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="236452036"
X-IronPort-AV: E=Sophos;i="5.87,279,1631602800"; d="scan'208";a="236452036"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 09:28:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,279,1631602800"; d="scan'208";a="745445543"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP; 01 Dec 2021 09:28:15 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 1 Dec 2021 09:28:15 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 1 Dec 2021 09:28:14 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2308.020;
 Wed, 1 Dec 2021 09:28:14 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 12/14] drm/i915: Extract skl_plane_aux_dist()
Thread-Index: AQHX5sfnzXFY39m8rEaMpShPWiSrHKweam2A
Date: Wed, 1 Dec 2021 17:28:14 +0000
Message-ID: <e9e17fdf0a3e7d5febbb5fb271349634dbdf7b2d.camel@intel.com>
References: <20211201152552.7821-1-ville.syrjala@linux.intel.com>
 <20211201152552.7821-13-ville.syrjala@linux.intel.com>
In-Reply-To: <20211201152552.7821-13-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <94E60CB5CBC06043B0B1C58E27A05B56@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 12/14] drm/i915: Extract skl_plane_aux_dist()
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIxLTEyLTAxIGF0IDE3OjI1ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gRXh0cmFjdCB0aGUgUExBTkVfQVVYX0RJU1Qgc3R1ZmYgaW50byBhIHNtYWxsIGhlbHBl
ciB0bw0KPiBkY2x1dHRlciBza2xfcHJvZ3JhbV9wbGFuZV9hcm0oKSBhIGJpdC4NCg0KDQpSZXZp
ZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoN
Cj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNh
bF9wbGFuZS5jICAgIHwgMzUgKysrKysrKysrKysrLS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQs
IDIzIGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMNCj4gaW5kZXggNzk5
OThlYjY3MjgwLi5jN2RlNjQzZDE2ZGQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jDQo+IEBAIC05ODEsNiArOTgxLDI2
IEBAIHN0YXRpYyB1MzIgc2tsX3BsYW5lX3N1cmYoY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0
YXRlICpwbGFuZV9zdGF0ZSwNCj4gIAlyZXR1cm4gcGxhbmVfc3VyZjsNCj4gIH0NCj4gIA0KPiAr
c3RhdGljIHUzMiBza2xfcGxhbmVfYXV4X2Rpc3QoY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0
YXRlICpwbGFuZV9zdGF0ZSwNCj4gKwkJCSAgICAgIGludCBjb2xvcl9wbGFuZSkNCj4gK3sNCj4g
KwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUocGxhbmVfc3RhdGUtPnVh
cGkucGxhbmUtPmRldik7DQo+ICsJY29uc3Qgc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIgPSBw
bGFuZV9zdGF0ZS0+aHcuZmI7DQo+ICsJaW50IGF1eF9wbGFuZSA9IHNrbF9tYWluX3RvX2F1eF9w
bGFuZShmYiwgY29sb3JfcGxhbmUpOw0KPiArCXUzMiBhdXhfZGlzdDsNCj4gKw0KPiArCWlmICgh
YXV4X3BsYW5lKQ0KPiArCQlyZXR1cm4gMDsNCj4gKw0KPiArCWF1eF9kaXN0ID0gc2tsX3N1cmZf
YWRkcmVzcyhwbGFuZV9zdGF0ZSwgYXV4X3BsYW5lKSAtDQo+ICsJCXNrbF9zdXJmX2FkZHJlc3Mo
cGxhbmVfc3RhdGUsIGNvbG9yX3BsYW5lKTsNCj4gKw0KPiArCWlmIChESVNQTEFZX1ZFUihpOTE1
KSA8IDEyKQ0KPiArCQlhdXhfZGlzdCB8PSBQTEFORV9BVVhfU1RSSURFKHNrbF9wbGFuZV9zdHJp
ZGUocGxhbmVfc3RhdGUsIGF1eF9wbGFuZSkpOw0KPiArDQo+ICsJcmV0dXJuIGF1eF9kaXN0Ow0K
PiArfQ0KPiArDQo+ICBzdGF0aWMgdm9pZCBpY2xfcGxhbmVfY3NjX2xvYWRfYmxhY2soc3RydWN0
IGludGVsX3BsYW5lICpwbGFuZSkNCj4gIHsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSA9IHRvX2k5MTUocGxhbmUtPmJhc2UuZGV2KTsNCj4gQEAgLTEwNzUsMTEgKzEwOTUsOSBA
QCBza2xfcHJvZ3JhbV9wbGFuZV9hcm0oc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwNCj4gIAll
bnVtIHBsYW5lX2lkIHBsYW5lX2lkID0gcGxhbmUtPmlkOw0KPiAgCWVudW0gcGlwZSBwaXBlID0g
cGxhbmUtPnBpcGU7DQo+ICAJY29uc3Qgc3RydWN0IGRybV9pbnRlbF9zcHJpdGVfY29sb3JrZXkg
KmtleSA9ICZwbGFuZV9zdGF0ZS0+Y2tleTsNCj4gLQljb25zdCBzdHJ1Y3QgZHJtX2ZyYW1lYnVm
ZmVyICpmYiA9IHBsYW5lX3N0YXRlLT5ody5mYjsNCj4gLQlpbnQgYXV4X3BsYW5lID0gc2tsX21h
aW5fdG9fYXV4X3BsYW5lKGZiLCBjb2xvcl9wbGFuZSk7DQo+ICAJdTMyIHggPSBwbGFuZV9zdGF0
ZS0+dmlldy5jb2xvcl9wbGFuZVtjb2xvcl9wbGFuZV0ueDsNCj4gIAl1MzIgeSA9IHBsYW5lX3N0
YXRlLT52aWV3LmNvbG9yX3BsYW5lW2NvbG9yX3BsYW5lXS55Ow0KPiAtCXUzMiBrZXltc2ssIGtl
eW1heCwgYXV4X2Rpc3QgPSAwLCBwbGFuZV9jb2xvcl9jdGwgPSAwOw0KPiArCXUzMiBrZXltc2ss
IGtleW1heCwgcGxhbmVfY29sb3JfY3RsID0gMDsNCj4gIAl1OCBhbHBoYSA9IHBsYW5lX3N0YXRl
LT5ody5hbHBoYSA+PiA4Ow0KPiAgCXUzMiBwbGFuZV9jdGwgPSBwbGFuZV9zdGF0ZS0+Y3RsOw0K
PiAgCXVuc2lnbmVkIGxvbmcgaXJxZmxhZ3M7DQo+IEBAIC0xMDk2LDE0ICsxMTE0LDYgQEAgc2ts
X3Byb2dyYW1fcGxhbmVfYXJtKHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsDQo+ICAJaWYgKGFs
cGhhIDwgMHhmZikNCj4gIAkJa2V5bXNrIHw9IFBMQU5FX0tFWU1TS19BTFBIQV9FTkFCTEU7DQo+
ICANCj4gLQlpZiAoYXV4X3BsYW5lKSB7DQo+IC0JCWF1eF9kaXN0ID0gc2tsX3N1cmZfYWRkcmVz
cyhwbGFuZV9zdGF0ZSwgYXV4X3BsYW5lKSAtDQo+IC0JCQlza2xfc3VyZl9hZGRyZXNzKHBsYW5l
X3N0YXRlLCBjb2xvcl9wbGFuZSk7DQo+IC0NCj4gLQkJaWYgKERJU1BMQVlfVkVSKGRldl9wcml2
KSA8IDEyKQ0KPiAtCQkJYXV4X2Rpc3QgfD0gUExBTkVfQVVYX1NUUklERShza2xfcGxhbmVfc3Ry
aWRlKHBsYW5lX3N0YXRlLCBhdXhfcGxhbmUpKTsNCj4gLQl9DQo+IC0NCj4gIAlzcGluX2xvY2tf
aXJxc2F2ZSgmZGV2X3ByaXYtPnVuY29yZS5sb2NrLCBpcnFmbGFncyk7DQo+ICANCj4gIAlpbnRl
bF9kZV93cml0ZV9mdyhkZXZfcHJpdiwgUExBTkVfS0VZVkFMKHBpcGUsIHBsYW5lX2lkKSwNCj4g
QEAgLTExMTQsNyArMTEyNCw4IEBAIHNrbF9wcm9ncmFtX3BsYW5lX2FybShzdHJ1Y3QgaW50ZWxf
cGxhbmUgKnBsYW5lLA0KPiAgCWludGVsX2RlX3dyaXRlX2Z3KGRldl9wcml2LCBQTEFORV9PRkZT
RVQocGlwZSwgcGxhbmVfaWQpLA0KPiAgCQkJICBQTEFORV9PRkZTRVRfWSh5KSB8IFBMQU5FX09G
RlNFVF9YKHgpKTsNCj4gIA0KPiAtCWludGVsX2RlX3dyaXRlX2Z3KGRldl9wcml2LCBQTEFORV9B
VVhfRElTVChwaXBlLCBwbGFuZV9pZCksIGF1eF9kaXN0KTsNCj4gKwlpbnRlbF9kZV93cml0ZV9m
dyhkZXZfcHJpdiwgUExBTkVfQVVYX0RJU1QocGlwZSwgcGxhbmVfaWQpLA0KPiArCQkJICBza2xf
cGxhbmVfYXV4X2Rpc3QocGxhbmVfc3RhdGUsIGNvbG9yX3BsYW5lKSk7DQo+ICANCj4gIAlpZiAo
RElTUExBWV9WRVIoZGV2X3ByaXYpIDwgMTEpDQo+ICAJCWludGVsX2RlX3dyaXRlX2Z3KGRldl9w
cml2LCBQTEFORV9BVVhfT0ZGU0VUKHBpcGUsIHBsYW5lX2lkKSwNCg0K
