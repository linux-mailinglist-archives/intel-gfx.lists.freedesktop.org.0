Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1C537D3CF
	for <lists+intel-gfx@lfdr.de>; Wed, 12 May 2021 21:21:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A0936E11F;
	Wed, 12 May 2021 19:21:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A81BF6E11F
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 May 2021 19:21:55 +0000 (UTC)
IronPort-SDR: XBTe1k66xSdPzTYsFoTvnDAkQKTm4vZM5M/nJzfEFLGvKCU3iZcxQ/2kbVlxtl5B8ttBtjyju7
 k3l1/SGs0Mzg==
X-IronPort-AV: E=McAfee;i="6200,9189,9982"; a="220768119"
X-IronPort-AV: E=Sophos;i="5.82,295,1613462400"; d="scan'208";a="220768119"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2021 12:21:55 -0700
IronPort-SDR: 4w+dCfp/UJOkWGNnRNwnIZgfoABoRw1r0Qv5ijF3tdo8OuvKCjbE1/pN8NHzuDRAo/xfPNWFS8
 +pO99H6OFX3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,295,1613462400"; d="scan'208";a="469587805"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga002.fm.intel.com with ESMTP; 12 May 2021 12:21:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 12 May 2021 12:21:54 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 12 May 2021 12:21:54 -0700
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2106.013;
 Wed, 12 May 2021 12:21:54 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 15/48] drm/i915/xelpd: Provide port/phy
 mapping for vbt
Thread-Index: AQHXQ7Hrr6jTEg4hlEOkEcm6MYhn4KrgQKJw
Date: Wed, 12 May 2021 19:21:53 +0000
Message-ID: <ea2aed728215459ba390694dd4ee64ed@intel.com>
References: <20210508022820.780227-1-matthew.d.roper@intel.com>
 <20210508022820.780227-16-matthew.d.roper@intel.com>
In-Reply-To: <20210508022820.780227-16-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 15/48] drm/i915/xelpd: Provide port/phy
 mapping for vbt
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBNYXR0DQo+
IFJvcGVyDQo+IFNlbnQ6IEZyaWRheSwgTWF5IDcsIDIwMjEgNzoyOCBQTQ0KPiBUbzogaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0gg
djMgMTUvNDhdIGRybS9pOTE1L3hlbHBkOiBQcm92aWRlIHBvcnQvcGh5DQo+IG1hcHBpbmcgZm9y
IHZidA0KPiANCj4gRnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRl
bC5jb20+DQo+IA0KPiBUaGlzIHdpbGwgYWxsb3cgcHJvcGVyIERESSBpbml0aWFsaXphdGlvbiBi
YXNlZCBvbiB2YnQgaW5mb3JtYXRpb24uDQo+IA0KPiBDYzogVW1hIFNoYW5rYXIgPHVtYS5zaGFu
a2FyQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8
am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRo
ZXcuZC5yb3BlckBpbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBBbnVzaGEgU3JpdmF0c2EgPGFu
dXNoYS5zcml2YXRzYUBpbnRlbC5jb20+DQoNCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Jpb3MuYyB8IDE4ICsrKysrKysrKysrKysrKysrLQ0KPiAgMSBmaWxl
IGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+IGluZGV4IDAyN2NjNzM4YTE2
OC4uYmY3Zjc2ZTUyNDFiIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Jpb3MuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Jpb3MuYw0KPiBAQCAtMTc0Myw4ICsxNzQzLDI0IEBAIHN0YXRpYyBlbnVtIHBvcnQgZHZv
X3BvcnRfdG9fcG9ydChzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4gIAkJW1BP
UlRfVEMzXSA9IHsgRFZPX1BPUlRfSERNSUQsIERWT19QT1JUX0RQRCwgLTEgfSwNCj4gIAkJW1BP
UlRfVEM0XSA9IHsgRFZPX1BPUlRfSERNSUUsIERWT19QT1JUX0RQRSwgLTEgfSwNCj4gIAl9Ow0K
PiArCXN0YXRpYyBjb25zdCBpbnQgeGVscGRfcG9ydF9tYXBwaW5nW11bM10gPSB7DQo+ICsJCVtQ
T1JUX0FdID0geyBEVk9fUE9SVF9IRE1JQSwgRFZPX1BPUlRfRFBBLCAtMSB9LA0KPiArCQlbUE9S
VF9CXSA9IHsgRFZPX1BPUlRfSERNSUIsIERWT19QT1JUX0RQQiwgLTEgfSwNCj4gKwkJW1BPUlRf
Q10gPSB7IERWT19QT1JUX0hETUlDLCBEVk9fUE9SVF9EUEMsIC0xIH0sDQo+ICsJCVtQT1JUX0Rf
WEVMUERdID0geyBEVk9fUE9SVF9IRE1JRCwgRFZPX1BPUlRfRFBELCAtMQ0KPiB9LA0KPiArCQlb
UE9SVF9FX1hFTFBEXSA9IHsgRFZPX1BPUlRfSERNSUUsIERWT19QT1JUX0RQRSwgLTENCj4gfSwN
Cj4gKwkJW1BPUlRfVEMxXSA9IHsgRFZPX1BPUlRfSERNSUYsIERWT19QT1JUX0RQRiwgLTEgfSwN
Cj4gKwkJW1BPUlRfVEMyXSA9IHsgRFZPX1BPUlRfSERNSUcsIERWT19QT1JUX0RQRywgLTEgfSwN
Cj4gKwkJW1BPUlRfVEMzXSA9IHsgRFZPX1BPUlRfSERNSUgsIERWT19QT1JUX0RQSCwgLTEgfSwN
Cj4gKwkJW1BPUlRfVEM0XSA9IHsgRFZPX1BPUlRfSERNSUksIERWT19QT1JUX0RQSSwgLTEgfSwN
Cj4gKwl9Ow0KPiANCj4gLQlpZiAoSVNfQUxERVJMQUtFX1MoaTkxNSkpDQo+ICsJaWYgKERJU1BM
QVlfVkVSKGk5MTUpID09IDEzKQ0KPiArCQlyZXR1cm4NCj4gX19kdm9fcG9ydF90b19wb3J0KEFS
UkFZX1NJWkUoeGVscGRfcG9ydF9tYXBwaW5nKSwNCj4gKw0KPiBBUlJBWV9TSVpFKHhlbHBkX3Bv
cnRfbWFwcGluZ1swXSksDQo+ICsJCQkJCSAgeGVscGRfcG9ydF9tYXBwaW5nLA0KPiArCQkJCQkg
IGR2b19wb3J0KTsNCj4gKwllbHNlIGlmIChJU19BTERFUkxBS0VfUyhpOTE1KSkNCj4gIAkJcmV0
dXJuDQo+IF9fZHZvX3BvcnRfdG9fcG9ydChBUlJBWV9TSVpFKGFkbHNfcG9ydF9tYXBwaW5nKSwN
Cj4gIAkJCQkJICBBUlJBWV9TSVpFKGFkbHNfcG9ydF9tYXBwaW5nWzBdKSwNCj4gIAkJCQkJICBh
ZGxzX3BvcnRfbWFwcGluZywNCj4gLS0NCj4gMi4yNS40DQo+IA0KPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0
DQo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
