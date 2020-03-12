Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76E3D183CA9
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 23:39:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 810D66EB4C;
	Thu, 12 Mar 2020 22:38:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ED2E6EB4C
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 22:38:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Mar 2020 15:38:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,546,1574150400"; d="scan'208";a="246521246"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga006.jf.intel.com with ESMTP; 12 Mar 2020 15:38:55 -0700
Received: from fmsmsx154.amr.corp.intel.com (10.18.116.70) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 12 Mar 2020 15:38:55 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.253]) by
 FMSMSX154.amr.corp.intel.com ([169.254.6.41]) with mapi id 14.03.0439.000;
 Thu, 12 Mar 2020 15:38:55 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 3/6] drm/i915: Add Wa_1604278689:icl,ehl
Thread-Index: AQHV98FtZ1vYWQuHWUCnGANm780m6ahGBCyA
Date: Thu, 12 Mar 2020 22:38:54 +0000
Message-ID: <6dbb94318857b24828134d188248ae022cbff94d.camel@intel.com>
References: <20200311162300.1838847-1-matthew.d.roper@intel.com>
 <20200311162300.1838847-4-matthew.d.roper@intel.com>
In-Reply-To: <20200311162300.1838847-4-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.15.8]
Content-ID: <6450C38E763F68459B75248B5FEBD43A@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 3/6] drm/i915: Add Wa_1604278689:icl,ehl
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

T24gV2VkLCAyMDIwLTAzLTExIGF0IDA5OjIyIC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBU
aGUgYnNwZWMgZGVzY3JpcHRpb24gZm9yIHRoaXMgd29ya2Fyb3VuZCB0ZWxscyB1cyB0byBwcm9n
cmFtDQo+IDB4RkZGRl9GRkZGIGludG8gYm90aCBGQkNfUlRfQkFTRV9BRERSX1JFR0lTVEVSXyog
cmVnaXN0ZXJzLCBidXQNCj4gd2UndmUNCj4gcHJldmlvdXNseSBmb3VuZCB0aGF0IHRoaXMgbGVh
ZHMgdG8gZmFpbHVyZXMgaW4gQ0kuICBPdXIgc3VzcGljaW9uIGlzDQo+IHRoYXQgdGhlIGZhaWx1
cmVzIGFyZSBjYXVzZWQgYnkgdGhpcyB2YWxpZCB0dXJuaW5nIG9uIHRoZSAiYWRkcmVzcw0KPiB2
YWxpZA0KPiBiaXQiIGV2ZW4gdGhvdWdoIHdlJ3JlIGludGVudGlvbmFsbHkgc3VwcGx5aW5nIGFu
IGludmFsaWQgYWRkcmVzcy4NCj4gRXhwZXJpbWVudGF0aW9uIGhhcyBzaG93biB0aGF0IHNldHRp
bmcgYWxsIGJpdHMgX2V4Y2VwdF8gZm9yIHRoZQ0KPiBSVF9WQUxJRCBiaXQgc2VlbXMgdG8gYXZv
aWQgdGhlc2UgZmFpbHVyZXMuDQo+IA0KPiB2MjoNCj4gIC0gTWFzayBvZmYgdGhlIFJUX1ZBTElE
IGJpdC4gIEV4cGVyaW1lbnRhdGlvbiB3aXRoIENJIHRyeWJvdA0KPiBpbmRpY2F0ZXMNCj4gICAg
dGhhdCB0aGlzIGlzIG5lY2Vzc2FyeSB0byBhdm9pZCByZXNldCBmYWlsdXJlcyBvbiBCQ1MuDQo+
IA0KPiB2MzoNCj4gIC0gUHJvZ3JhbSBSVF9CQVNFIGJlZm9yZSBSVF9CQVNFX1VQUEVSIHNvIHRo
YXQgdGhlIHZhbGlkIGJpdCBpcw0KPiB0dXJuZWQNCj4gICAgb2ZmIGJ5IHRoZSBmaXJzdCB3cml0
ZS4gIChDaHJpcykNCg0KTWF0Y2ggQlNwZWMsIGlmIGlzc3VlIGFib3ZlIGFyZSBzb2x2ZWQ6DQoN
ClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlDQpTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5j
b20+DQoNCg0KPiANCj4gQnNwZWM6IDExMzg4DQo+IEJzcGVjOiAzMzQ1MQ0KPiBTaWduZWQtb2Zm
LWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPg0KPiBDYzogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8IDYgKysrKysrDQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgIHwgMSArDQo+ICAyIGZpbGVzIGNoYW5n
ZWQsIDcgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF93b3JrYXJvdW5kcy5jDQo+IGluZGV4IDNlMzUyZTJhNWI3OS4uM2JiZDg5Mjk0Mjc5IDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5j
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMNCj4g
QEAgLTU3NSw2ICs1NzUsMTIgQEAgc3RhdGljIHZvaWQgaWNsX2N0eF93b3JrYXJvdW5kc19pbml0
KHN0cnVjdA0KPiBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwNCj4gIAkvKiBhbGxvdyBoZWFkZXJs
ZXNzIG1lc3NhZ2VzIGZvciBwcmVlbXB0aWJsZSBHUEdQVSBjb250ZXh0ICovDQo+ICAJV0FfU0VU
X0JJVF9NQVNLRUQoR0VOMTBfU0FNUExFUl9NT0RFLA0KPiAgCQkJICBHRU4xMV9TQU1QTEVSX0VO
QUJMRV9IRUFETEVTU19NU0cpOw0KPiArDQo+ICsJLyogV2FfMTYwNDI3ODY4OTppY2wsZWhsICov
DQo+ICsJd2Ffd3JpdGUod2FsLCBJVkJfRkJDX1JUX0JBU0UsIDB4RkZGRkZGRkYgJiB+SUxLX0ZC
Q19SVF9WQUxJRCk7DQo+ICsJd2Ffd3JpdGVfbWFza2VkX29yKHdhbCwgSVZCX0ZCQ19SVF9CQVNF
X1VQUEVSLA0KPiArCQkJICAgMCwgLyogd3JpdGUtb25seSByZWdpc3Rlcjsgc2tpcCB2YWxpZGF0
aW9uDQo+ICovDQo+ICsJCQkgICAweEZGRkZGRkZGKTsNCj4gIH0NCj4gIA0KPiAgc3RhdGljIHZv
aWQgdGdsX2N0eF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2lu
ZSwNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+IGluZGV4IDc5YWU5NjU0ZGFjOS4uOTJh
ZTk2Y2Y1YjY0IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gQEAgLTMyODUsNiAr
MzI4NSw3IEBAIHN0YXRpYyBpbmxpbmUgYm9vbA0KPiBpOTE1X21taW9fcmVnX3ZhbGlkKGk5MTVf
cmVnX3QgcmVnKQ0KPiAgDQo+ICAvKiBGcmFtZWJ1ZmZlciBjb21wcmVzc2lvbiBmb3IgSXZ5YnJp
ZGdlICovDQo+ICAjZGVmaW5lIElWQl9GQkNfUlRfQkFTRQkJCV9NTUlPKDB4NzAyMCkNCj4gKyNk
ZWZpbmUgSVZCX0ZCQ19SVF9CQVNFX1VQUEVSCQlfTU1JTygweDcwMjQpDQo+ICANCj4gICNkZWZp
bmUgSVBTX0NUTAkJX01NSU8oMHg0MzQwOCkNCj4gICNkZWZpbmUgICBJUFNfRU5BQkxFCSgxIDw8
IDMxKQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
