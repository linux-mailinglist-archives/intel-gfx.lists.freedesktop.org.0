Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 496F13D15D9
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 20:04:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 157AA6E8E1;
	Wed, 21 Jul 2021 18:04:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A98436E8E1
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 18:04:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="211208556"
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="211208556"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 11:04:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="658366420"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 21 Jul 2021 11:04:07 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 21 Jul 2021 11:04:07 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 21 Jul 2021 11:04:06 -0700
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2242.010;
 Wed, 21 Jul 2021 11:04:06 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/4] drm/i915/display: Disable FBC when PSR2
 is enabled for xelpd platforms
Thread-Index: AQHXeqhH+v6NS0k8GU64UyALfSLEdqtNwCjA
Date: Wed, 21 Jul 2021 18:04:06 +0000
Message-ID: <ea3823ab079242619498488f06764d8e@intel.com>
References: <20210717011227.204494-1-jose.souza@intel.com>
In-Reply-To: <20210717011227.204494-1-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/display: Disable FBC when PSR2
 is enabled for xelpd platforms
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3PDqQ0K
PiBSb2JlcnRvIGRlIFNvdXphDQo+IFNlbnQ6IEZyaWRheSwgSnVseSAxNiwgMjAyMSA2OjEyIFBN
DQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRl
bC1nZnhdIFtQQVRDSCAxLzRdIGRybS9pOTE1L2Rpc3BsYXk6IERpc2FibGUgRkJDIHdoZW4gUFNS
MiBpcw0KPiBlbmFibGVkIGZvciB4ZWxwZCBwbGF0Zm9ybXMNCj4gDQo+IHhlbHBkIHBsYXRmb3Jt
cyBhbHNvIHJlcXVpcmVzIHRoYXQgRkJDIGlzIGRpc2FibGVkIHdoZW4gUFNSMiBpcyBlbmFibGVk
IHNvDQo+IGV4dGVuZGluZyBpdC4NCj4gDQo+IEJTcGVjOiA1MDQyMg0KPiBDYzogR3dhbi1neWVv
bmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBKb3PD
qSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6
IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4NCg0KPiAtLS0NCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgfCA0ICsrLS0NCj4gIDEg
ZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gaW5kZXggODJlZmZiNjRh
M2I5Yy4uZGRmYzE3ZTIxNjY4YSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9mYmMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2ZiYy5jDQo+IEBAIC05MTIsMTEgKzkxMiwxMSBAQCBzdGF0aWMgYm9vbCBpbnRlbF9m
YmNfY2FuX2FjdGl2YXRlKHN0cnVjdCBpbnRlbF9jcnRjDQo+ICpjcnRjKQ0KPiAgCX0NCj4gDQo+
ICAJLyoNCj4gLQkgKiBUaWdlcmxha2UgaXMgbm90IHN1cHBvcnRpbmcgRkJDIHdpdGggUFNSMi4N
Cj4gKwkgKiBEaXNwbGF5IDEyKyBpcyBub3Qgc3VwcG9ydGluZyBGQkMgd2l0aCBQU1IyLg0KPiAg
CSAqIFJlY29tbWVuZGF0aW9uIGlzIHRvIGtlZXAgdGhpcyBjb21iaW5hdGlvbiBkaXNhYmxlZA0K
PiAgCSAqIEJzcGVjOiA1MDQyMiBIU0Q6IDE0MDEwMjYwMDAyDQo+ICAJICovDQo+IC0JaWYgKGZi
Yy0+c3RhdGVfY2FjaGUucHNyMl9hY3RpdmUgJiYgSVNfVElHRVJMQUtFKGRldl9wcml2KSkgew0K
PiArCWlmIChmYmMtPnN0YXRlX2NhY2hlLnBzcjJfYWN0aXZlICYmIERJU1BMQVlfVkVSKGRldl9w
cml2KSA+PSAxMikgew0KPiAgCQlmYmMtPm5vX2ZiY19yZWFzb24gPSAibm90IHN1cHBvcnRlZCB3
aXRoIFBTUjIiOw0KPiAgCQlyZXR1cm4gZmFsc2U7DQo+ICAJfQ0KPiAtLQ0KPiAyLjMyLjANCj4g
DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IElu
dGVsLWdmeCBtYWlsaW5nIGxpc3QNCj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0K
PiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
