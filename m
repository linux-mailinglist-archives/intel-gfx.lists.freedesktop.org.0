Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E57C368460
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Apr 2021 18:07:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13AD26E3C6;
	Thu, 22 Apr 2021 16:07:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CDE76E3C6
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Apr 2021 16:07:52 +0000 (UTC)
IronPort-SDR: szVo71BgLqUuTub6tD7/8GhGgwQ7hkVDG7is7bjnubkewziMBmAyI0UPa5EKNKUr4ji0f68lU/
 LnyFo3/6pzfA==
X-IronPort-AV: E=McAfee;i="6200,9189,9962"; a="193797012"
X-IronPort-AV: E=Sophos;i="5.82,242,1613462400"; d="scan'208";a="193797012"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2021 09:07:23 -0700
IronPort-SDR: r2JW3+m0MxKGWAxhjHUQmd/JTK0Da0Wl/YJEMds3YksOscZU1e0hNWrsne+MyEfPsbgyCNDxYD
 NtDs38iNd4IA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,242,1613462400"; d="scan'208";a="455848949"
Received: from irsmsx606.ger.corp.intel.com ([163.33.146.139])
 by fmsmga002.fm.intel.com with ESMTP; 22 Apr 2021 09:07:22 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 IRSMSX606.ger.corp.intel.com (163.33.146.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 22 Apr 2021 17:07:21 +0100
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.013;
 Thu, 22 Apr 2021 09:07:19 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2] drm/i915/display: Disable PSR2 if TGL Display
 stepping is B1 from A0
Thread-Index: AQHXN5FdIWWmJLWWlUOkI3++2ga68qrBKh4A
Date: Thu, 22 Apr 2021 16:07:19 +0000
Message-ID: <5ca39ff25c365ef7d2db753c7886c7c0cd956e7a.camel@intel.com>
References: <20210422160544.2427123-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20210422160544.2427123-1-gwan-gyeong.mun@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <75B2F368F8494947A824B7C1C7F0F824@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Disable PSR2 if TGL
 Display stepping is B1 from A0
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

T24gVGh1LCAyMDIxLTA0LTIyIGF0IDE5OjA1ICswMzAwLCBHd2FuLWd5ZW9uZyBNdW4gd3JvdGU6
DQo+IFRHTCBQU1IyIGhhcmR3YXJlIHRyYWNraW5nIHNob3dzIG1vbWVudGFyeSBmbGlja2VyIGFu
ZCBzY3JlZW4gc2hpZnQgaWYNCj4gVEdMIERpc3BsYXkgc3RlcHBpbmcgaXMgQjEgZnJvbSBBMC4N
Cj4gSXQgaGFzIGJlZW4gZml4ZWQgZnJvbSBUR0wgRGlzcGxheSBzdGVwcGluZyBDMC4NCj4gDQo+
IEhTREVTOiAxODAxNTk3MDAyMQ0KPiBIU0RFUzogMjIwOTMxMzgxMQ0KPiBCU3BlYzogNTUzNzgN
Cj4gDQo+IHYyOiBBZGQgY2hlY2tpbmcgb2YgUFNSMiBtYW51YWwgdHJhY2tpbmcgKEpvc2UpDQo+
IA0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRl
bC5jb20+DQoNCj4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBp
bnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMgfCA3ICsrKysrKysNCj4gwqAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspDQo+
IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggNGFk
NzU2ZTIzOGM1Li4xN2NiZGQ3ODA1YTIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtODE3LDYgKzgxNywxMyBAQCBzdGF0aWMgYm9vbCBpbnRl
bF9wc3IyX2NvbmZpZ192YWxpZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiDCoAkJfQ0K
PiDCoAl9DQo+IMKgDQo+IA0KPiANCj4gDQo+ICsJLyogV2FfMjIwOTMxMzgxMSAqLw0KPiArCWlm
ICghY3J0Y19zdGF0ZS0+ZW5hYmxlX3BzcjJfc2VsX2ZldGNoICYmDQo+ICsJICAgIElTX1RHTF9E
SVNQTEFZX1NURVAoZGV2X3ByaXYsIFNURVBfQTAsIFNURVBfQjEpKSB7DQo+ICsJCWRybV9kYmdf
a21zKCZkZXZfcHJpdi0+ZHJtLCAiUFNSMiBIVyB0cmFja2luZyBpcyBub3Qgc3VwcG9ydGVkIHRo
aXMgRGlzcGxheSBzdGVwcGluZ1xuIik7DQo+ICsJCXJldHVybiBmYWxzZTsNCj4gKwl9DQo+ICsN
Cj4gwqAJaWYgKCFjcnRjX3N0YXRlLT5lbmFibGVfcHNyMl9zZWxfZmV0Y2ggJiYNCj4gwqAJICAg
IChjcnRjX2hkaXNwbGF5ID4gcHNyX21heF9oIHx8IGNydGNfdmRpc3BsYXkgPiBwc3JfbWF4X3Yp
KSB7DQo+IMKgCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwNCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
