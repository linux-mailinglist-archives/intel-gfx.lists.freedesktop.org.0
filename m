Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A5110C0E0
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 00:58:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CA556E297;
	Wed, 27 Nov 2019 23:58:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF83E6E297
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 23:57:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 15:57:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,251,1571727600"; d="scan'208";a="383654300"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga005.jf.intel.com with ESMTP; 27 Nov 2019 15:57:58 -0800
Received: from fmsmsx121.amr.corp.intel.com (10.18.125.36) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 27 Nov 2019 15:57:58 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.27]) by
 fmsmsx121.amr.corp.intel.com ([169.254.6.42]) with mapi id 14.03.0439.000;
 Wed, 27 Nov 2019 15:57:58 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 7/7] drm/i915: Make
 intel_crtc_arm_fifo_underrun() functional on gen2
Thread-Index: AQHVpVXJuCB65ft8bEmfcJ0jkq1OlqegOGyA
Date: Wed, 27 Nov 2019 23:57:57 +0000
Message-ID: <3cfa9b0575c5bd2fc7a27ad846f9791af62f3a16.camel@intel.com>
References: <20191127190556.1574-1-ville.syrjala@linux.intel.com>
 <20191127190556.1574-8-ville.syrjala@linux.intel.com>
In-Reply-To: <20191127190556.1574-8-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.98.40.66]
Content-ID: <577A6B3BEDE6064E9E30D54F1106D3E7@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915: Make
 intel_crtc_arm_fifo_underrun() functional on gen2
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

T24gV2VkLCAyMDE5LTExLTI3IGF0IDIxOjA1ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gQXNzdW1pbmcgaW50ZWxfY3J0Y19hcm1fZmlmb191bmRlcnJ1bigpIG9ubHkgZ2V0cyBj
YWxsZWQgd2hlbg0KPiB0aGVyZSdzIG5vIHBlbmRpbmcgcGxhbmUgdXBkYXRlcyB3ZSBjYW4gdXRp
bGl6ZSBpdCBvbiBnZW4yIGJ5DQo+IGNoZWNraW5nIHRoZSBhY3RpdmVfcGxhbmVzIGJpdG1hc2sg
c28gdGhhdCB3ZSBvbmx5IHJlLWVuYWJsZQ0KPiB1bmRlcnJ1biByZXBvcnRpbmcgaWYgc29tZSBw
bGFuZXMgYXJlIGFjdGl2ZS4NCj4gaTkxNV9maWZvX3VuZGVycnVuX3Jlc2V0X3dyaXRlKCkgc2Vl
bXMgdG8gaGF2ZSB0aGUgbmVjZXNzYXJ5DQo+IGh3X2RvbmUvZmxpcF9kb25lIHdhaXRzIGluIHBs
YWNlLg0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+DQoNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAyICstDQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGluZGV4IDQzNzdlZTJlZWU1Ni4uZWMzNjM5NzJl
MGFjIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYw0KPiBAQCAtMTQyMjEsNyArMTQyMjEsNyBAQCB2b2lkIGludGVsX2NydGNfYXJtX2ZpZm9f
dW5kZXJydW4oc3RydWN0DQo+IGludGVsX2NydGMgKmNydGMsDQo+ICB7DQo+ICAJc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7DQo+ICAN
Cj4gLQlpZiAoIUlTX0dFTihkZXZfcHJpdiwgMikpDQo+ICsJaWYgKCFJU19HRU4oZGV2X3ByaXYs
IDIpIHx8IGNydGNfc3RhdGUtPmFjdGl2ZV9wbGFuZXMpDQo+ICAJCWludGVsX3NldF9jcHVfZmlm
b191bmRlcnJ1bl9yZXBvcnRpbmcoZGV2X3ByaXYsIGNydGMtDQo+ID5waXBlLCB0cnVlKTsNCj4g
IA0KPiAgCWlmIChjcnRjX3N0YXRlLT5oYXNfcGNoX2VuY29kZXIpIHsNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
