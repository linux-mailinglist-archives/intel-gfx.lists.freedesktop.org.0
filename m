Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00352165203
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 22:59:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C5C16E882;
	Wed, 19 Feb 2020 21:59:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3E816E882
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 21:59:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Feb 2020 13:59:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,462,1574150400"; d="scan'208";a="436381024"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga006.fm.intel.com with ESMTP; 19 Feb 2020 13:59:32 -0800
Received: from fmsmsx157.amr.corp.intel.com (10.18.116.73) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 19 Feb 2020 13:59:32 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.129]) by
 FMSMSX157.amr.corp.intel.com ([169.254.14.117]) with mapi id 14.03.0439.000;
 Wed, 19 Feb 2020 13:59:32 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2] drm/i915/tgl: Add Wa_22010178259:tgl
Thread-Index: AQHV52+HfxWG9WBgQEWoVI09Uvr3E6gjlyiA
Date: Wed, 19 Feb 2020 21:59:31 +0000
Message-ID: <3654c9483055f022a9cde09d78b91eaf4f02acaf.camel@intel.com>
References: <838de8a5c95f31e021a87a60d36167281667aad3.camel@intel.com>
 <20200219215655.2923650-1-matthew.d.roper@intel.com>
In-Reply-To: <20200219215655.2923650-1-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.232]
Content-ID: <752460C1E645484DBCD78152701A39FE@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/tgl: Add Wa_22010178259:tgl
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

T24gV2VkLCAyMDIwLTAyLTE5IGF0IDEzOjU2IC0wODAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBX
ZSBuZWVkIHRvIGV4cGxpY2l0bHkgc2V0IHRoZSBUTEIgUmVxdWVzdCBUaW1lciBpbml0aWFsIHZh
bHVlIGluIHRoZQ0KPiBCV19CVUREWSByZWdpc3RlcnMgdG8gMHg4IHJhdGhlciB0aGFuIHJlbHlp
bmcgb24gdGhlIGhhcmR3YXJlDQo+IGRlZmF1bHQuDQo+IA0KPiB2MjogQXBwbHkgbWlzc2luZyBS
RUdfRklFTERfUFJFUCB0byBlbnN1cmUgMHg4IGlzIHBsYWNlZCBpbiB0aGUNCj4gY29ycmVjdA0K
PiAgICAgYml0cyBkdXJpbmcgdGhlIHJtdy4gIChKb3NlKQ0KPiANCj4gQnNwZWM6IDUyODkwDQo+
IEJzcGVjOiA1MDA0NA0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9z
ZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gQ2M6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xh
di5saXNvdnNraXlAaW50ZWwuY29tPg0KPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9z
ZS5zb3V6YUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcu
ZC5yb3BlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgfCA4ICsrKysrKysrDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICAgICAgICB8IDEgKw0KPiAgMiBmaWxlcyBjaGFu
Z2VkLCA5IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jDQo+IGluZGV4IDBkOTRmZTAxYmU3Zi4u
OGJhNjhlYzZkYzI0IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfcG93ZXIuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYw0KPiBAQCAtNTAwMyw2ICs1MDAzLDE0IEBAIHN0YXRp
YyB2b2lkIHRnbF9id19idWRkeV9pbml0KHN0cnVjdA0KPiBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdikNCj4gIAkJCSAgICAgICB0YWJsZVtpXS5wYWdlX21hc2spOw0KPiAgCQlpbnRlbF9kZV93
cml0ZShkZXZfcHJpdiwgQldfQlVERFkyX1BBR0VfTUFTSywNCj4gIAkJCSAgICAgICB0YWJsZVtp
XS5wYWdlX21hc2spOw0KPiArDQo+ICsJCS8qIFdhXzIyMDEwMTc4MjU5OnRnbCAqLw0KPiArCQlp
bnRlbF9kZV9ybXcoZGV2X3ByaXYsIEJXX0JVRERZMV9DVEwsDQo+ICsJCQkgICAgIEJXX0JVRERZ
X1RMQl9SRVFfVElNRVJfTUFTSywNCj4gKwkJCSAgICAgUkVHX0ZJRUxEX1BSRVAoQldfQlVERFlf
VExCX1JFUV9USU1FUl9NQVNLDQo+ICwgMHg4KSk7DQo+ICsJCWludGVsX2RlX3JtdyhkZXZfcHJp
diwgQldfQlVERFkyX0NUTCwNCj4gKwkJCSAgICAgQldfQlVERFlfVExCX1JFUV9USU1FUl9NQVNL
LA0KPiArCQkJICAgICBSRUdfRklFTERfUFJFUChCV19CVUREWV9UTEJfUkVRX1RJTUVSX01BU0sN
Cj4gLCAweDgpKTsNCj4gIAl9DQo+ICB9DQo+ICANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
DQo+IGluZGV4IGE2ODQ3ZjI2Njc4Yy4uZDgyOWI5YWU4NDAyIDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmgNCj4gQEAgLTc3NjYsNiArNzc2Niw3IEBAIGVudW0gew0KPiAgI2RlZmluZSBC
V19CVUREWTFfQ1RMCQkJX01NSU8oMHg0NTE0MCkNCj4gICNkZWZpbmUgQldfQlVERFkyX0NUTAkJ
CV9NTUlPKDB4NDUxNTApDQo+ICAjZGVmaW5lICAgQldfQlVERFlfRElTQUJMRQkJUkVHX0JJVCgz
MSkNCj4gKyNkZWZpbmUgICBCV19CVUREWV9UTEJfUkVRX1RJTUVSX01BU0sJUkVHX0dFTk1BU0so
MjEsIDE2KQ0KPiAgDQo+ICAjZGVmaW5lIEJXX0JVRERZMV9QQUdFX01BU0sJCV9NTUlPKDB4NDUx
NDQpDQo+ICAjZGVmaW5lIEJXX0JVRERZMl9QQUdFX01BU0sJCV9NTUlPKDB4NDUxNTQpDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
