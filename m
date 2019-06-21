Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 258794F022
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2019 22:52:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D67A6E924;
	Fri, 21 Jun 2019 20:52:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27B226E924
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jun 2019 20:52:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jun 2019 13:52:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,401,1557212400"; d="scan'208";a="154585421"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga008.jf.intel.com with ESMTP; 21 Jun 2019 13:52:17 -0700
Received: from fmsmsx155.amr.corp.intel.com (10.18.116.71) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 21 Jun 2019 13:52:17 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.210]) by
 FMSMSX155.amr.corp.intel.com ([169.254.5.98]) with mapi id 14.03.0439.000;
 Fri, 21 Jun 2019 13:52:17 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 5/5] drm/i915/ehl: Enable DDI-D
Thread-Index: AQHVJ9Vavvt3eUlB7k2Yyw4drzNCWqanDBeA
Date: Fri, 21 Jun 2019 20:52:16 +0000
Message-ID: <07f22ed3e9c2e555ec6472f1dfc72788fe64a700.camel@intel.com>
References: <20190621020132.1164-1-matthew.d.roper@intel.com>
 <20190621020132.1164-6-matthew.d.roper@intel.com>
In-Reply-To: <20190621020132.1164-6-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.8.250]
Content-ID: <77EBF1BE739F9E4CB2D3B7D13D7F3FAD@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915/ehl: Enable DDI-D
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

T24gVGh1LCAyMDE5LTA2LTIwIGF0IDE5OjAxIC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBF
SEwgaGFzIGZvdXIgRERJJ3MgKERESS1BIGFuZCBEREktRCBzaGFyZSBjb21ibyBQSFkgQSkuDQo+
IA0KPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+
IFNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+
IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAx
ICsNCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQ0KPiANCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gaW5kZXggZTcyYWNlNDIz
MjdjLi43NGNkMTgwMzYwZjQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jDQo+IEBAIC0xNTEyOCw2ICsxNTEyOCw3IEBAIHN0YXRpYyB2b2lk
IGludGVsX3NldHVwX291dHB1dHMoc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KQ0KPiAgCQlpbnRlbF9kZGlfaW5pdChkZXZfcHJpdiwgUE9SVF9BKTsNCj4gIAkJaW50ZWxfZGRp
X2luaXQoZGV2X3ByaXYsIFBPUlRfQik7DQo+ICAJCWludGVsX2RkaV9pbml0KGRldl9wcml2LCBQ
T1JUX0MpOw0KPiArCQlpbnRlbF9kZGlfaW5pdChkZXZfcHJpdiwgUE9SVF9EKTsNCg0KSGVyZSB3
ZSBzaG91bGQgb25seSBpbml0aWFsaXplIG9ubHkgdGhlIG9uZSB0aGF0IGlzIGdvaW5nIHRvIGJl
IHVzZWQgQQ0Kb3IgRCBhdCB0aGlzIHBvaW50IHdlIGFscmVhZHkgaGF2ZSB0aGF0IGluZm9ybWF0
aW9uIGFuZCB0aGUgbXV4IHNldC4NCg0KPiAgCQlpY2xfZHNpX2luaXQoZGV2X3ByaXYpOw0KPiAg
CX0gZWxzZSBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkgew0KPiAgCQlpbnRlbF9kZGlf
aW5pdChkZXZfcHJpdiwgUE9SVF9BKTsNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
