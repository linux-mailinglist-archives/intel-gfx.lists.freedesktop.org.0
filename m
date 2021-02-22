Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6936C32137E
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Feb 2021 10:57:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9D8C6E930;
	Mon, 22 Feb 2021 09:57:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 916648929B
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Feb 2021 09:57:05 +0000 (UTC)
IronPort-SDR: XxWvld6nwaebMGH4eD0NrHXBUdIR4VH5GEYVe1GU2cZvfa+4L/FQYxiZXOnzQdIkEXBfAhfDUy
 n5dg5Vd++RqQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9902"; a="183672497"
X-IronPort-AV: E=Sophos;i="5.81,196,1610438400"; d="scan'208";a="183672497"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2021 01:57:05 -0800
IronPort-SDR: k4oeSnutHhoIfDjpMlN7vC7wuvRTavP0z3Q3HWfSOahL2oLX3L8ZMI/oipxvGnYnUQoVw/iqoJ
 LrJZEwWzRRuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,196,1610438400"; d="scan'208";a="432007190"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga002.fm.intel.com with ESMTP; 22 Feb 2021 01:57:05 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 22 Feb 2021 01:57:04 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 22 Feb 2021 01:57:03 -0800
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.2106.002;
 Mon, 22 Feb 2021 09:57:02 +0000
From: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH 4/4] drm/i915/display: Set source_support even if panel
 do not support PSR
Thread-Index: AQHW/w9F9rLAaydVwU+s1irWlshKJKpkBF+A
Date: Mon, 22 Feb 2021 09:57:01 +0000
Message-ID: <56992b81dec2c56c3fbe91296b253e2741d1af48.camel@intel.com>
References: <20210209181439.215104-1-jose.souza@intel.com>
 <20210209181439.215104-4-jose.souza@intel.com>
In-Reply-To: <20210209181439.215104-4-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-ID: <71D36C515B28064D845D4EB442683D74@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/display: Set source_support
 even if panel do not support PSR
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

T24gVHVlLCAyMDIxLTAyLTA5IGF0IDEwOjE0IC0wODAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBUaGlzIHdpbGwgc2V0IHRoZSByaWdodCB2YWx1ZSBvZiBzb3VyY2Vfc3VwcG9y
dCB3aGVuIHRoZSBwb3J0DQo+IGVuY29kZXIvcG9ydCBzdXBwb3J0cyBQU1IgYnV0IHNpbmsgZG9u
J3QuDQo+IA0KPiBUaGlzIGNoYW5nZSB3aWxsIGFsc28gYmUgbmVlZGVkIGluIGZ1dHVyZSBmb3Ig
cGFuZWwgcmVwbGF5IGFzIHBzcg0KPiBzdHJ1Y3QgbmVlZHMgdG8gYmUgaW5pdGlhbGl6ZWQgZXZl
biBpZiBkaXNjb25uZWN0ZWQgb3IgY3VycmVudCBzaW5rDQo+IGRvbid0IHN1cHBvcnQgUFNSLg0K
PiANCj4gQ2M6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcubXVuQGludGVsLmNvbT4NCj4g
U2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5j
b20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMg
fCAzIC0tLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAzIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IGUwMTExYjQ3MDU3
MC4uNmIzZTIxMjAxNjFlIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMNCj4gQEAgLTE4MzcsOSArMTgzNyw2IEBAIHZvaWQgaW50ZWxfcHNyX2luaXQoc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gwqDCoMKgwqDCoMKgwqDCoGlmICghSEFTX1BTUihk
ZXZfcHJpdikpDQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuOw0KPiDC
oA0KPiAtwqDCoMKgwqDCoMKgwqBpZiAoIWludGVsX2RwLT5wc3Iuc2lua19zdXBwb3J0KQ0KPiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuOw0KPiAtDQo+IMKgwqDCoMKgwqDC
oMKgwqAvKg0KPiDCoMKgwqDCoMKgwqDCoMKgICogSFNXIHNwZWMgZXhwbGljaXRseSBzYXlzIFBT
UiBpcyB0aWVkIHRvIHBvcnQgQS4NCj4gwqDCoMKgwqDCoMKgwqDCoCAqIEJEVysgcGxhdGZvcm1z
IGhhdmUgYSBpbnN0YW5jZSBvZiBQU1IgcmVnaXN0ZXJzIHBlcg0KPiB0cmFuc2NvZGVyIGJ1dA0K
DQpSZXZpZXdlZC1ieTogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29t
Pg0KDQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
