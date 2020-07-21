Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC9822833F
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jul 2020 17:12:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7C9D6E5A2;
	Tue, 21 Jul 2020 15:12:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E11F389385
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jul 2020 15:12:03 +0000 (UTC)
IronPort-SDR: 9lxAZWU6kH2H+EChnDUByp5Wo6N3J84B4MrmEp3SMso3YdRM2wo1zbMwf3IMkTwD+ODVZYt825
 9vxN531RQnWA==
X-IronPort-AV: E=McAfee;i="6000,8403,9689"; a="151483569"
X-IronPort-AV: E=Sophos;i="5.75,379,1589266800"; d="scan'208";a="151483569"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2020 08:12:03 -0700
IronPort-SDR: 6Df1oUs3SOV6tYU+XsG/4zVoiXbu+ChZphyxq1otFLM7NORf0FOJIPnEt7rSSwMlgADFiW4te6
 X1P6Ujt/km+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,379,1589266800"; d="scan'208";a="319934801"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga002.fm.intel.com with ESMTP; 21 Jul 2020 08:12:03 -0700
Received: from fmsmsx102.amr.corp.intel.com (10.18.124.200) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 21 Jul 2020 08:12:02 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.66]) by
 FMSMSX102.amr.corp.intel.com ([169.254.10.65]) with mapi id 14.03.0439.000;
 Tue, 21 Jul 2020 08:12:02 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/1] drm/i915/tgl: Load DMC firmware v2.07 for Tigerlake
Thread-Index: AQHWX1YaKz9qA+Fni0CBdyxGC7zffKkSmdAA
Date: Tue, 21 Jul 2020 15:12:02 +0000
Message-ID: <2904f6488e91d57d6c8b4084a3ca6aa94e031847.camel@intel.com>
References: <20200721114320.10494-1-anusha.srivatsa@intel.com>
 <20200721114320.10494-2-anusha.srivatsa@intel.com>
In-Reply-To: <20200721114320.10494-2-anusha.srivatsa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.254.20.236]
Content-ID: <65C95E94A919AD499ABB0F1ABB02AE25@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/tgl: Load DMC firmware v2.07
 for Tigerlake
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

T24gVHVlLCAyMDIwLTA3LTIxIGF0IDA0OjQzIC0wNzAwLCBBbnVzaGEgU3JpdmF0c2Egd3JvdGU6
DQo+IEJ1bXAgVEdMIERNQyB2ZXJzaW9uIHRvIDIuMDcuIHRoaXMgbmV3IHZlcnNpb24gaGFzIHBv
d2VyDQo+IHNhdmluZyBlbmhhbmNlbWVudHMuDQo+IA0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9i
ZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gQ2M6IEpvc8OpIFJvYmVy
dG8gZGUgU291emEgPA0KPiBqb3NlLnNvdXphQGludGVsLmNvbQ0KPiA+DQo+IFNpZ25lZC1vZmYt
Ynk6IEFudXNoYSBTcml2YXRzYSA8DQo+IGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20NCj4gPg0K
PiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3NyLmMgfCA0ICsr
LS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+
IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jc3Iu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3NyLmMNCj4gaW5kZXggZjIy
YTc2NDVjMjQ5Li5lYjc0ZWIxMjMxNDggMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY3NyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9jc3IuYw0KPiBAQCAtNDQsOCArNDQsOCBAQA0KPiAgI2RlZmluZSBSS0xfQ1NS
X1ZFUlNJT05fUkVRVUlSRUQJQ1NSX1ZFUlNJT04oMiwgMSkNCj4gIE1PRFVMRV9GSVJNV0FSRShS
S0xfQ1NSX1BBVEgpOw0KPiAgDQo+IC0jZGVmaW5lIFRHTF9DU1JfUEFUSAkJCSJpOTE1L3RnbF9k
bWNfdmVyMl8wNi5iaW4iDQo+IC0jZGVmaW5lIFRHTF9DU1JfVkVSU0lPTl9SRVFVSVJFRAlDU1Jf
VkVSU0lPTigyLCA2KQ0KPiArI2RlZmluZSBUR0xfQ1NSX1BBVEgJCQkiaTkxNS90Z2xfZG1jX3Zl
cjJfMDcuYmluIg0KPiArI2RlZmluZSBUR0xfQ1NSX1ZFUlNJT05fUkVRVUlSRUQJQ1NSX1ZFUlNJ
T04oMiwgNykNCj4gICNkZWZpbmUgVEdMX0NTUl9NQVhfRldfU0laRQkJMHg2MDAwDQo+ICBNT0RV
TEVfRklSTVdBUkUoVEdMX0NTUl9QQVRIKTsNCj4gIA0KPiANCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
