Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2646831047A
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 06:24:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63B1B6E17E;
	Fri,  5 Feb 2021 05:24:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA27D6E17E
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Feb 2021 05:24:45 +0000 (UTC)
IronPort-SDR: k5K0gLeFIed4BNwwj+UW/IU/rcHL9WbmZ1evWotMWSomYP/2ffgCs0gQmK81sv4uaoP7SVulHS
 vBDsFf0Ik2Uw==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="200381517"
X-IronPort-AV: E=Sophos;i="5.81,154,1610438400"; d="scan'208";a="200381517"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 21:24:44 -0800
IronPort-SDR: wkyYKceY/Ws5ZnJUsieaQ/e1gHxS4HpBAADZNYHoniUwZYgvVrtZTOZ/jumKLC4rt3XZgl9X6k
 xEn8lhlq36Vw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,154,1610438400"; d="scan'208";a="415666687"
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138])
 by fmsmga002.fm.intel.com with ESMTP; 04 Feb 2021 21:24:44 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 IRSMSX605.ger.corp.intel.com (163.33.146.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 5 Feb 2021 05:24:43 +0000
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.1713.004;
 Fri, 5 Feb 2021 05:24:43 +0000
From: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH] drm/i915: Make psr_safest_params and
 enable_psr2_sel_fetch parameters read only
Thread-Index: AQHW+wr7lfQ55Yg5e06J7bgLAeC/HKpJCGQA
Date: Fri, 5 Feb 2021 05:24:43 +0000
Message-ID: <211cee58948094bf2e23f0a4a5efa32a5d3a4355.camel@intel.com>
References: <20210204153357.39681-1-jose.souza@intel.com>
In-Reply-To: <20210204153357.39681-1-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-ID: <EEFE051FE407EA46B07A380AFF2C58D0@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Make psr_safest_params and
 enable_psr2_sel_fetch parameters read only
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

UmV2aWV3ZWQtYnk6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcubXVuQGludGVsLmNvbT4N
Ck9uIFRodSwgMjAyMS0wMi0wNCBhdCAwNzozMyAtMDgwMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6
YSB3cm90ZToNCj4gQnkgbWlzdGFrZSB0aG9zZSAyIHBhcmFtZXRlcnMgd2VyZSBkZWZpbmVkIGFz
IHJlYWQgYW5kIHdyaXRlIGluIHRoZQ0KPiAuaCBmaWxlIHdoaWxlIGluIHRoZSAuYyBmaWxlIGl0
IGlzIHJlYWQgb25seS4NCj4gVGhlIGludGVudGlvbiBoZXJlIHdhcyB0byBiZSByZWFkIG9ubHkg
dG8gYXZvaWQgdGhlIG5lZWQgb2YNCj4gYWRkaXRpb25hbA0KPiBoYW5kbGluZy4NCj4gDQo+IENj
OiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+DQo+IENjOiBQZXRy
aSBMYXR2YWxhIDxwZXRyaS5sYXR2YWxhQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSm9z
w6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmggfCA0ICsrLS0NCj4gwqAxIGZpbGUgY2hh
bmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3BhcmFtcy5oDQo+IGluZGV4IGYwMzE5NjZhZjViNy4uNDhmNDdlNDRlODQ4IDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmgNCj4gQEAgLTU0LDggKzU0LDggQEAg
c3RydWN0IGRybV9wcmludGVyOw0KPiDCoMKgwqDCoMKgwqDCoMKgcGFyYW0oaW50LCBlbmFibGVf
ZGMsIC0xLCAwNDAwKSBcDQo+IMKgwqDCoMKgwqDCoMKgwqBwYXJhbShpbnQsIGVuYWJsZV9mYmMs
IC0xLCAwNjAwKSBcDQo+IMKgwqDCoMKgwqDCoMKgwqBwYXJhbShpbnQsIGVuYWJsZV9wc3IsIC0x
LCAwNjAwKSBcDQo+IC3CoMKgwqDCoMKgwqDCoHBhcmFtKGJvb2wsIHBzcl9zYWZlc3RfcGFyYW1z
LCBmYWxzZSwgMDYwMCkgXA0KPiAtwqDCoMKgwqDCoMKgwqBwYXJhbShib29sLCBlbmFibGVfcHNy
Ml9zZWxfZmV0Y2gsIGZhbHNlLCAwNjAwKSBcDQo+ICvCoMKgwqDCoMKgwqDCoHBhcmFtKGJvb2ws
IHBzcl9zYWZlc3RfcGFyYW1zLCBmYWxzZSwgMDQwMCkgXA0KPiArwqDCoMKgwqDCoMKgwqBwYXJh
bShib29sLCBlbmFibGVfcHNyMl9zZWxfZmV0Y2gsIGZhbHNlLCAwNDAwKSBcDQo+IMKgwqDCoMKg
wqDCoMKgwqBwYXJhbShpbnQsIGRpc2FibGVfcG93ZXJfd2VsbCwgLTEsIDA0MDApIFwNCj4gwqDC
oMKgwqDCoMKgwqDCoHBhcmFtKGludCwgZW5hYmxlX2lwcywgMSwgMDYwMCkgXA0KPiDCoMKgwqDC
oMKgwqDCoMKgcGFyYW0oaW50LCBpbnZlcnRfYnJpZ2h0bmVzcywgMCwgMDYwMCkgXA0KDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
