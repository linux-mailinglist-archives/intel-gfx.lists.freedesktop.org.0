Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA364EB301
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 19:59:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70CD510E5E6;
	Tue, 29 Mar 2022 17:59:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C315010E5E6
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 17:59:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648576747; x=1680112747;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RLI6i1gfm9LLsETtAltez1xOfpiNG+WbST37o+9WxdQ=;
 b=VJdcQv380QQz/eRPijqeG7tx7EWR5K5UhwFNKVBPF5C7f2zJOSSEP1ZB
 xD/ulPPt1+8Q7iIqI3wZ5zNSS6j4ThZT6YvoabJ7czbM2bFt17gSmtzVz
 B7zrP9bUoJjpi0ZgnL/LOrBo9lL+TUQvcbbCpKFRE2GhG4OOVwv0zJRvP
 ta6vR+ktdIHIrlIoR593X7WOabXr1rgrf/wQoYaSjrYaeZb2IBZO+TA1D
 8S6a8sLh+3OFdgLSIwI2laDEE47Ca038U9XYV+zRs63GMvL0fLv0PgdCF
 n+BUyc85QGSWYcf9QyVF29PoB/z8m9qjkY5zKkvygbPz9JpEoNp6AaAT8 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="239921844"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="239921844"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 10:59:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="694803851"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 29 Mar 2022 10:59:06 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 29 Mar 2022 10:59:05 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 29 Mar 2022 10:59:05 -0700
Received: from orsmsx611.amr.corp.intel.com ([10.22.229.24]) by
 ORSMSX611.amr.corp.intel.com ([10.22.229.24]) with mapi id 15.01.2308.027;
 Tue, 29 Mar 2022 10:59:05 -0700
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 1/3] drm/i915/display: Program
 PIPE_MBUS_DBOX_CTL with adl-p values
Thread-Index: AQHYQtgqHsy95UZLOU+hasR9rU7MSazWp26A
Date: Tue, 29 Mar 2022 17:59:05 +0000
Message-ID: <7963e5752f274089b07ae8ed45e9033e@intel.com>
References: <20220328191617.122838-1-jose.souza@intel.com>
In-Reply-To: <20220328191617.122838-1-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.401.20
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 1/3] drm/i915/display: Program
 PIPE_MBUS_DBOX_CTL with adl-p values
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3PDqQ0K
PiBSb2JlcnRvIGRlIFNvdXphDQo+IFNlbnQ6IFR1ZXNkYXksIE1hcmNoIDI5LCAyMDIyIDEyOjQ2
IEFNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBOaWt1bGEs
IEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gU3ViamVjdDogW0ludGVsLWdmeF0gW1BB
VENIIHYzIDEvM10gZHJtL2k5MTUvZGlzcGxheTogUHJvZ3JhbQ0KPiBQSVBFX01CVVNfREJPWF9D
VEwgd2l0aCBhZGwtcCB2YWx1ZXMNCj4gDQo+IEZyb206IENheiBZb2tveWFtYSA8Y2F6Lnlva295
YW1hQGludGVsLmNvbT4NCj4gDQo+IEIgY3JlZGl0cyBzZXQgYnkgSUZXSSBkbyBub3QgbWF0Y2gg
d2l0aCBzcGVjaWZpY2F0aW9uIGRlZmF1bHQsIHNvIGhlcmUNCj4gcHJvZ3JhbW1pbmcgdGhlIHJp
Z2h0IHZhbHVlLg0KPiANCj4gQWxzbyB3aGlsZSBhdCBpdCwgdGFraW5nIHRoZSBvcG9ydHVuaXR5
IHRvIGRvIGEgcmVhZC1tb2RpZnktd3JpdGUgdG8NCj4gbm90IG92ZXJ3cml0ZSBhbGwgb3RoZXIg
Yml0cyBpbiB0aGlzIHJlZ2lzdGVyIHRoYXQgc3BlY2lmaWNhdGlvbiBkb24ndA0KPiBhc2sgdXMg
dG8gY2hhbmdlLg0KPiANCj4gQlNwZWM6IDQ5MjEzDQo+IEJTcGVjOiA1MDM0Mw0KPiBDYzogTWF0
dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4NCj4gQ2M6IFN0YW5pc2xhdiBMaXNv
dnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPg0KPiBDYzogSmFuaSBOaWt1bGEg
PGphbmkubmlrdWxhQGludGVsLmNvbT4NClJldmlld2VkLWJ5OiBSYWRoYWtyaXNobmEgU3JpcGFk
YSA8cmFkaGFrcmlzaG5hLnNyaXBhZGFAaW50ZWwuY29tPg0KDQoNCj4gU2lnbmVkLW9mZi1ieTog
Q2F6IFlva295YW1hIDxjYXoueW9rb3lhbWFAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBK
b3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gLS0tDQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDEyICsrKysrKysr
Ky0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkN
Cj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
DQo+IGluZGV4IDNkMmZmMjU4ZjBhOTQuLjA3OGFkYTA0MWUxY2QgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IEBAIC0xODMwLDEzICsx
ODMwLDE5IEBAIHN0YXRpYyB2b2lkIGljbF9waXBlX21idXNfZW5hYmxlKHN0cnVjdCBpbnRlbF9j
cnRjDQo+ICpjcnRjLCBib29sIGpvaW5lZF9tYnVzKQ0KPiAgCWVudW0gcGlwZSBwaXBlID0gY3J0
Yy0+cGlwZTsNCj4gIAl1MzIgdmFsOw0KPiANCj4gKwl2YWwgPSBpbnRlbF9kZV9yZWFkKGRldl9w
cml2LCBQSVBFX01CVVNfREJPWF9DVEwocGlwZSkpOw0KPiArCXZhbCAmPSB+TUJVU19EQk9YX0Ff
Q1JFRElUX01BU0s7DQo+ICAJLyogV2FfMjIwMTA5NDczNTg6YWRsLXAgKi8NCj4gIAlpZiAoSVNf
QUxERVJMQUtFX1AoZGV2X3ByaXYpKQ0KPiAtCQl2YWwgPSBqb2luZWRfbWJ1cyA/IE1CVVNfREJP
WF9BX0NSRURJVCg2KSA6DQo+IE1CVVNfREJPWF9BX0NSRURJVCg0KTsNCj4gKwkJdmFsIHw9IGpv
aW5lZF9tYnVzID8gTUJVU19EQk9YX0FfQ1JFRElUKDYpIDoNCj4gTUJVU19EQk9YX0FfQ1JFRElU
KDQpOw0KPiAgCWVsc2UNCj4gLQkJdmFsID0gTUJVU19EQk9YX0FfQ1JFRElUKDIpOw0KPiArCQl2
YWwgfD0gTUJVU19EQk9YX0FfQ1JFRElUKDIpOw0KPiANCj4gLQlpZiAoRElTUExBWV9WRVIoZGV2
X3ByaXYpID49IDEyKSB7DQo+ICsJdmFsICY9IH4oTUJVU19EQk9YX0JXX0NSRURJVF9NQVNLIHwN
Cj4gTUJVU19EQk9YX0JfQ1JFRElUX01BU0spOw0KPiArCWlmIChJU19BTERFUkxBS0VfUChkZXZf
cHJpdikpIHsNCj4gKwkJdmFsIHw9IE1CVVNfREJPWF9CV19DUkVESVQoMik7DQo+ICsJCXZhbCB8
PSBNQlVTX0RCT1hfQl9DUkVESVQoOCk7DQo+ICsJfSBlbHNlIGlmIChESVNQTEFZX1ZFUihkZXZf
cHJpdikgPj0gMTIpIHsNCj4gIAkJdmFsIHw9IE1CVVNfREJPWF9CV19DUkVESVQoMik7DQo+ICAJ
CXZhbCB8PSBNQlVTX0RCT1hfQl9DUkVESVQoMTIpOw0KPiAgCX0gZWxzZSB7DQo+IC0tDQo+IDIu
MzUuMQ0KDQo=
