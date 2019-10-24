Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2B6E3D60
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 22:34:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AECF96E79C;
	Thu, 24 Oct 2019 20:34:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D1286E79C
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 20:34:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 13:34:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,226,1569308400"; d="scan'208";a="188707800"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by orsmga007.jf.intel.com with ESMTP; 24 Oct 2019 13:34:03 -0700
Received: from fmsmsx120.amr.corp.intel.com (10.18.124.208) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 24 Oct 2019 13:34:03 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.25]) by
 fmsmsx120.amr.corp.intel.com ([169.254.15.63]) with mapi id 14.03.0439.000;
 Thu, 24 Oct 2019 13:34:03 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 2/4] drm/i915: add new gen12 dgfx platform
 macro
Thread-Index: AQHViqRyE/+74hUUpkak/a6c5NijW6dqtM0A
Date: Thu, 24 Oct 2019 20:34:02 +0000
Message-ID: <21769e09da3c36180c4e697ef0a37dc0bf5596b3.camel@intel.com>
References: <20191024195122.22877-1-lucas.demarchi@intel.com>
 <20191024195122.22877-2-lucas.demarchi@intel.com>
In-Reply-To: <20191024195122.22877-2-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <1D3C36F3EAA7A3498268908DF0170E78@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: add new gen12 dgfx platform
 macro
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
Cc: "lucas.de.marchi@intel.com" <lucas.de.marchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDE5LTEwLTI0IGF0IDEyOjUxIC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IEZyb206IFN0dWFydCBTdW1tZXJzIDxzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb20+DQo+IA0K
PiBBZGQgYSBuZXcgbWFjcm8gZm9yIEdFTjEyIHBsYXRmb3JtcyB0byBiZSBncm91cGVkIHVuZGVy
IGRnZnggZmVhdHVyZQ0KPiBzZXQuDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNv
dXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiANCj4gU2lnbmVkLW9mZi1ieTogU3R1YXJ0
IFN1bW1lcnMgPHN0dWFydC5zdW1tZXJzQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogTHVj
YXMgRGUgTWFyY2hpIDxsdWNhcy5kZS5tYXJjaGlAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgfCA0ICsrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCA0
IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3BjaS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYw0KPiBpbmRleCBm
OWEzYmZlNjg2ODkuLjA0MzA3ZTExMWY1NyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9wY2kuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5j
DQo+IEBAIC04MjIsNiArODIyLDEwIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNl
X2luZm8NCj4gaW50ZWxfdGlnZXJsYWtlXzEyX2luZm8gPSB7DQo+ICAJLmhhc19ycHMgPSBmYWxz
ZSwgLyogWFhYIGRpc2FibGVkIGZvciBkZWJ1Z2dpbmcgKi8NCj4gIH07DQo+ICANCj4gKyNkZWZp
bmUgR0VOMTJfREdGWF9GRUFUVVJFUyBcDQo+ICsJR0VOMTJfRkVBVFVSRVMsIFwNCj4gKwkuaXNf
ZGdmeCA9IDENCj4gKw0KPiAgI3VuZGVmIEdFTg0KPiAgI3VuZGVmIFBMQVRGT1JNDQo+ICANCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
