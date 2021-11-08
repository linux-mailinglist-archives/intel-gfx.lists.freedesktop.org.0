Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC28449EB2
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Nov 2021 23:35:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0219189CA1;
	Mon,  8 Nov 2021 22:35:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A3F689CA1
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Nov 2021 22:35:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10162"; a="213068039"
X-IronPort-AV: E=Sophos;i="5.87,218,1631602800"; d="scan'208";a="213068039"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2021 14:35:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,218,1631602800"; d="scan'208";a="601590739"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga004.jf.intel.com with ESMTP; 08 Nov 2021 14:35:42 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 8 Nov 2021 14:35:42 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 8 Nov 2021 14:35:41 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Mon, 8 Nov 2021 14:35:41 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Fix Memory BW formulae for ADL-P
Thread-Index: AQHX0qZ6GzJbIo2cO0+LvZySqRcKjKv6xJKA
Date: Mon, 8 Nov 2021 22:35:41 +0000
Message-ID: <c43719fe52d7063b3a3b5103e48795bb3261a177.camel@intel.com>
References: <20211106003714.17894-1-radhakrishna.sripada@intel.com>
In-Reply-To: <20211106003714.17894-1-radhakrishna.sripada@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <2CBBD8EE2CCC4447AC0F288DF240D4DC@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix Memory BW formulae for ADL-P
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

T24gRnJpLCAyMDIxLTExLTA1IGF0IDE3OjM3IC0wNzAwLCBSYWRoYWtyaXNobmEgU3JpcGFkYSB3
cm90ZToNCj4gVGhlIGVhcmxpZXIgdXBkYXRlIHRvIEJXIGZvcm11bGFlIGJyb2tlIEFETC1QLiBJ
bmNsdWRlDQo+IEdFTjEzIHRvIHVzZSBUR0wgcGF0aCBmb3IgQlcgcGFyYW1ldGVycy4NCg0KaW5j
bHVkZSBkaXNwbGF5IDEzLg0KDQpXaXRoIHRoYXQ6DQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2Jl
cnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiANCj4gRml4ZXM6IGM2NGE5
YTdjMDViZSBkcm0vaTkxNTogVXBkYXRlIG1lbW9yeSBiYW5kd2lkdGggZm9ybXVsYWUNCj4gQ2M6
IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+IFJlcG9ydGVkLWJ5OiBK
b3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gU2lnbmVkLW9m
Zi1ieTogUmFkaGFrcmlzaG5hIFNyaXBhZGEgPHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNv
bT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMgfCAy
ICstDQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4gaW5kZXggMTVjMDA2
MTk0Yzg1Li5hYmVjMzk0ZjY4NjkgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYncuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2J3LmMNCj4gQEAgLTE0Nyw3ICsxNDcsNyBAQCBzdGF0aWMgaW50IGljbF9nZXRfcWd2
X3BvaW50cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ICAJcWktPm51bV9w
b2ludHMgPSBkcmFtX2luZm8tPm51bV9xZ3ZfcG9pbnRzOw0KPiAgCXFpLT5udW1fcHNmX3BvaW50
cyA9IGRyYW1faW5mby0+bnVtX3BzZl9ndl9wb2ludHM7DQo+ICANCj4gLQlpZiAoRElTUExBWV9W
RVIoZGV2X3ByaXYpID09IDEyKQ0KPiArCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTIp
DQo+ICAJCXN3aXRjaCAoZHJhbV9pbmZvLT50eXBlKSB7DQo+ICAJCWNhc2UgSU5URUxfRFJBTV9E
RFI0Og0KPiAgCQkJcWktPnRfYmwgPSBpc195X3RpbGUgPyA4IDogNDsNCg0K
