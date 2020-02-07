Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA513154FC3
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 01:31:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 071C16E509;
	Fri,  7 Feb 2020 00:31:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2A946E509
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 00:31:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Feb 2020 16:31:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,411,1574150400"; d="scan'208";a="432397965"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga006.fm.intel.com with ESMTP; 06 Feb 2020 16:31:52 -0800
Received: from fmsmsx118.amr.corp.intel.com (10.18.116.18) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 6 Feb 2020 16:31:52 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.3]) by
 fmsmsx118.amr.corp.intel.com ([169.254.1.182]) with mapi id 14.03.0439.000;
 Thu, 6 Feb 2020 16:31:52 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/2] drm/i915/ehl: Update port clock voltage level
 requirements
Thread-Index: AQHV3UuXOAAROUkzZUmtvlO7yTTkvKgPZ3+A
Date: Fri, 7 Feb 2020 00:31:51 +0000
Message-ID: <5119428b6dc04bb85e65ae61f3a471f6c14eb11f.camel@intel.com>
References: <20200207001417.1229251-1-matthew.d.roper@intel.com>
In-Reply-To: <20200207001417.1229251-1-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.13.27]
Content-ID: <40B7FB73CF0C8C45A159BF0475FD7298@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/ehl: Update port clock voltage
 level requirements
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

T24gVGh1LCAyMDIwLTAyLTA2IGF0IDE2OjE0IC0wODAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBW
b2x0YWdlIGxldmVsIGRlcGVuZHMgbm90IG9ubHkgb24gdGhlIGNkY2xrLCBidXQgYWxzbyBvbiB0
aGUgRERJDQo+IGNsb2NrLg0KPiBMYXN0IHRpbWUgdGhlIGJzcGVjIHZvbHRhZ2UgbGV2ZWwgdGFi
bGUgZm9yIEVITCB3YXMgdXBkYXRlZCwgd2Ugb25seQ0KPiB1cGRhdGVkIHRoZSBjZGNsayByZXF1
aXJlbWVudHMsIGJ1dCBmb3Jnb3QgdG8gYWNjb3VudCBmb3IgdGhlIG5ldw0KPiBwb3J0DQo+IGNs
b2NrIGNyaXRlcmlhLg0KPiANCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEg
PGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+IEJzcGVjOiAyMTgwOQ0KPiBGaXhlczogZDE0NzQ4
Mzg4NGVkICgiZHJtL2k5MTUvZWhsOiBVcGRhdGUgdm9sdGFnZSBsZXZlbCBjaGVja3MiKQ0KPiBD
YzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IFNpZ25l
ZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+IC0tLQ0K
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDQgKysrLQ0KPiAg
MSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+IGluZGV4IDRjNWYzMmU1
MDU1NC4uZmY2MzhmYzZlM2Y1IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RkaS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGRpLmMNCj4gQEAgLTQyMDYsNyArNDIwNiw5IEBAIHN0YXRpYyBib29sIGludGVsX2Rk
aV9pc19hdWRpb19lbmFibGVkKHN0cnVjdA0KPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwN
Cj4gIHZvaWQgaW50ZWxfZGRpX2NvbXB1dGVfbWluX3ZvbHRhZ2VfbGV2ZWwoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUNCj4gKmRldl9wcml2LA0KPiAgCQkJCQkgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUNCj4gKmNydGNfc3RhdGUpDQo+ICB7DQo+IC0JaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0g
MTEgJiYgY3J0Y19zdGF0ZS0+cG9ydF9jbG9jayA+DQo+IDU5NDAwMCkNCj4gKwlpZiAoSVNfRUxL
SEFSVExBS0UoZGV2X3ByaXYpICYmIGNydGNfc3RhdGUtPnBvcnRfY2xvY2sgPg0KPiA1OTQwMDAp
DQo+ICsJCWNydGNfc3RhdGUtPm1pbl92b2x0YWdlX2xldmVsID0gMzsNCj4gKwllbHNlIGlmIChJ
TlRFTF9HRU4oZGV2X3ByaXYpID49IDExICYmIGNydGNfc3RhdGUtPnBvcnRfY2xvY2sgPg0KPiA1
OTQwMDApDQo+ICAJCWNydGNfc3RhdGUtPm1pbl92b2x0YWdlX2xldmVsID0gMTsNCj4gIAllbHNl
IGlmIChJU19DQU5OT05MQUtFKGRldl9wcml2KSAmJiBjcnRjX3N0YXRlLT5wb3J0X2Nsb2NrID4N
Cj4gNTk0MDAwKQ0KPiAgCQljcnRjX3N0YXRlLT5taW5fdm9sdGFnZV9sZXZlbCA9IDI7DQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
