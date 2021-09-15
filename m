Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD94A40CB81
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Sep 2021 19:17:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E57A56E9A0;
	Wed, 15 Sep 2021 17:17:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16F246E9CF
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Sep 2021 17:17:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10108"; a="283383668"
X-IronPort-AV: E=Sophos;i="5.85,296,1624345200"; d="scan'208";a="283383668"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2021 10:17:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,296,1624345200"; d="scan'208";a="482425825"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 15 Sep 2021 10:17:48 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 15 Sep 2021 10:17:48 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 15 Sep 2021 10:17:47 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Wed, 15 Sep 2021 10:17:47 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Yokoyama, Caz" <caz.yokoyama@intel.com>
CC: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>, "Roper, Matthew
 D" <matthew.d.roper@intel.com>
Thread-Topic: [PATCH 1/1] drm/i915/adlp: Keep hardware default dbox B credits
Thread-Index: AQHXqlSnaqY3R7bJzUWerYC11qunV6ulzW2A
Date: Wed, 15 Sep 2021 17:17:47 +0000
Message-ID: <13b95424bc8a4c7c77fe5679f09d4bcdbdb99830.camel@intel.com>
References: <8b54dd068cbd8b7448a1a2b5b6c6c962f576a6f2.1631725784.git.caz.yokoyama@intel.com>
In-Reply-To: <8b54dd068cbd8b7448a1a2b5b6c6c962f576a6f2.1631725784.git.caz.yokoyama@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <8866E8FD0C74094A825106D21B3B531C@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/adlp: Keep hardware default
 dbox B credits
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

T24gV2VkLCAyMDIxLTA5LTE1IGF0IDEwOjEwIC0wNzAwLCBZb2tveWFtYSwgQ2F6IHdyb3RlOg0K
PiBGcm9tOiBDYXogWW9rb3lhbWEgPGNhei55b2tveWFtYUBpbnRlbC5jb20+DQo+IA0KPiBEbyBu
b3Qgb3ZlcndyaXRlIHJlZ2lzdGVycyB0aGF0IGRvbid0IG5lZWQgdG8gY2hhbmdlIGZyb20gZGVm
YXVsdA0KPiB2YWx1ZSB0byAwLg0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6
YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gDQo+IGJzcGVjIDQ5MjEzDQo+IENjOiBSYWRo
YWtyaXNobmEgU3JpcGFkYSA8cmFkaGFrcmlzaG5hLnNyaXBhZGFAaW50ZWwuY29tPg0KPiBDYzog
Sm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IENjOiBNYXR0
IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBDYXog
WW9rb3lhbWEgPGNhei55b2tveWFtYUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAxMyArKysrKysrKystLS0tDQo+ICAx
IGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gaW5kZXggYTdj
YTM4NjEzZjg5Li45MTkwYTNiYzI4YTggMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IEBAIC0yOTU1LDE4ICsyOTU1LDIzIEBAIHN0YXRp
YyB2b2lkIGljbF9waXBlX21idXNfZW5hYmxlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLCBib29s
IGpvaW5lZF9tYnVzKQ0KPiAgew0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOw0KPiAgCWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+
cGlwZTsNCj4gLQl1MzIgdmFsOw0KPiArCXUzMiB2YWwgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2
LCBQSVBFX01CVVNfREJPWF9DVEwocGlwZSkpOw0KPiAgDQo+ICsJdmFsICY9IH5NQlVTX0RCT1hf
QV9DUkVESVRfTUFTSzsNCj4gIAkvKiBXYV8yMjAxMDk0NzM1ODphZGwtcCAqLw0KPiAgCWlmIChJ
U19BTERFUkxBS0VfUChkZXZfcHJpdikpDQo+IC0JCXZhbCA9IGpvaW5lZF9tYnVzID8gTUJVU19E
Qk9YX0FfQ1JFRElUKDYpIDogTUJVU19EQk9YX0FfQ1JFRElUKDQpOw0KPiArCQl2YWwgfD0gam9p
bmVkX21idXMgPyBNQlVTX0RCT1hfQV9DUkVESVQoNikgOiBNQlVTX0RCT1hfQV9DUkVESVQoNCk7
DQo+ICAJZWxzZQ0KPiAtCQl2YWwgPSBNQlVTX0RCT1hfQV9DUkVESVQoMik7DQo+ICsJCXZhbCB8
PSBNQlVTX0RCT1hfQV9DUkVESVQoMik7DQo+ICANCj4gLQlpZiAoRElTUExBWV9WRVIoZGV2X3By
aXYpID49IDEyKSB7DQo+ICsJaWYgKElTX0FMREVSTEFLRV9QKGRldl9wcml2KSkgew0KPiArCQkv
KiBUYWtlIGVmZmVjdCBoYXJkd2FyZSBkZWZhdWx0IE1CVVNfREJPWF9CX0NSRURJVCg4KSAqLw0K
PiArCX0gZWxzZSBpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDEyKSB7DQo+ICsJCXZhbCAm
PSB+KE1CVVNfREJPWF9CV19DUkVESVRfTUFTSyB8IE1CVVNfREJPWF9CX0NSRURJVF9NQVNLKTsN
Cj4gIAkJdmFsIHw9IE1CVVNfREJPWF9CV19DUkVESVQoMik7DQo+ICAJCXZhbCB8PSBNQlVTX0RC
T1hfQl9DUkVESVQoMTIpOw0KPiAgCX0gZWxzZSB7DQo+ICsJCXZhbCAmPSB+KE1CVVNfREJPWF9C
V19DUkVESVRfTUFTSyB8IE1CVVNfREJPWF9CX0NSRURJVF9NQVNLKTsNCj4gIAkJdmFsIHw9IE1C
VVNfREJPWF9CV19DUkVESVQoMSk7DQo+ICAJCXZhbCB8PSBNQlVTX0RCT1hfQl9DUkVESVQoOCk7
DQo+ICAJfQ0KDQo=
