Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 164583964A
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 21:58:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 124A189B62;
	Fri,  7 Jun 2019 19:58:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FC9E89B62
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 19:58:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jun 2019 12:58:42 -0700
X-ExtLoop1: 1
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga007.fm.intel.com with ESMTP; 07 Jun 2019 12:58:42 -0700
Received: from fmsmsx116.amr.corp.intel.com (10.18.116.20) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 7 Jun 2019 12:58:42 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.248]) by
 fmsmsx116.amr.corp.intel.com ([169.254.2.137]) with mapi id 14.03.0415.000;
 Fri, 7 Jun 2019 12:58:42 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH 06/23] drm/i915: Fix the TBT AUX power well enabling
Thread-Index: AQHVGuYZW+6ryAjsYEe0V1QUcMlW96aRFloA
Date: Fri, 7 Jun 2019 19:58:41 +0000
Message-ID: <0d9bcac71b5fcb2e3908c4f3c8a7ae9d4aee3aae.camel@intel.com>
References: <20190604145826.16424-1-imre.deak@intel.com>
 <20190604145826.16424-7-imre.deak@intel.com>
In-Reply-To: <20190604145826.16424-7-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.8.212]
Content-ID: <66355BF79370094780FB51FE72BDB391@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 06/23] drm/i915: Fix the TBT AUX power well
 enabling
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

T24gVHVlLCAyMDE5LTA2LTA0IGF0IDE3OjU4ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEZp
eCB0aGUgbWFwcGluZyBmcm9tIGEgVEJUIEFVWCBwb3dlciB3ZWxsIGluZGV4IHRvIHRoZSBEUF9B
VVhfQ0hfQ1RMDQo+IHJlZ2lzdGVyLg0KPiANCj4gRml4ZXM6IGM3Mzc1ZDk1NDJmMSAoImRybS9p
OTE1OiBDb25maWd1cmUgQVVYX0NIX0NUTCB3aGVuIGVuYWJsaW5nDQo+IHRoZSBBVVggcG93ZXIg
ZG9tYWluIikNCj4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPg0KPiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPg0KPiBTaWdu
ZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheV9wb3dlci5jIHwgMTEgKysrKysrKysrLS0N
Cj4gIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheV9wb3dlci5j
DQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheV9wb3dlci5jDQo+IGluZGV4
IDI0OWE1ZmE1NWRmNi4uMTRjZjA0YmYwYmY0IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfZGlzcGxheV9wb3dlci5jDQo+IEBAIC00NDIsMTYgKzQ0MiwyMyBAQCBpY2xfY29t
Ym9fcGh5X2F1eF9wb3dlcl93ZWxsX2Rpc2FibGUoc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2LA0KPiAgI2RlZmluZSBJQ0xfQVVYX1BXX1RPX0NIKHB3X2lkeCkJXA0KPiAgCSgo
cHdfaWR4KSAtIElDTF9QV19DVExfSURYX0FVWF9BICsgQVVYX0NIX0EpDQo+ICANCj4gKyNkZWZp
bmUgSUNMX1RCVF9BVVhfUFdfVE9fQ0gocHdfaWR4KQlcDQo+ICsJKChwd19pZHgpIC0gSUNMX1BX
X0NUTF9JRFhfQVVYX1RCVDEgKyBBVVhfQ0hfQykNCj4gKw0KPiAgc3RhdGljIHZvaWQNCj4gIGlj
bF90Y19waHlfYXV4X3Bvd2VyX3dlbGxfZW5hYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiwNCj4gIAkJCQkgc3RydWN0IGk5MTVfcG93ZXJfd2VsbCAqcG93ZXJfd2VsbCkNCj4g
IHsNCj4gLQllbnVtIGF1eF9jaCBhdXhfY2ggPSBJQ0xfQVVYX1BXX1RPX0NIKHBvd2VyX3dlbGwt
PmRlc2MtDQo+ID5oc3cuaWR4KTsNCj4gKwlpbnQgcHdfaWR4ID0gcG93ZXJfd2VsbC0+ZGVzYy0+
aHN3LmlkeDsNCj4gKwlib29sIGlzX3RidCA9IHBvd2VyX3dlbGwtPmRlc2MtPmhzdy5pc190Y190
YnQ7DQo+ICsJZW51bSBhdXhfY2ggYXV4X2NoOw0KPiAgCXUzMiB2YWw7DQo+ICANCj4gKwlhdXhf
Y2ggPSBpc190YnQgPyBJQ0xfVEJUX0FVWF9QV19UT19DSChwd19pZHgpIDoNCj4gKwkJCSAgSUNM
X0FVWF9QV19UT19DSChwd19pZHgpOw0KDQpNYXRjaGVzDQoNClJldmlld2VkLWJ5OiBKb3PDqSBS
b2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiAgCXZhbCA9IEk5MTVf
UkVBRChEUF9BVVhfQ0hfQ1RMKGF1eF9jaCkpOw0KPiAgCXZhbCAmPSB+RFBfQVVYX0NIX0NUTF9U
QlRfSU87DQo+IC0JaWYgKHBvd2VyX3dlbGwtPmRlc2MtPmhzdy5pc190Y190YnQpDQo+ICsJaWYg
KGlzX3RidCkNCj4gIAkJdmFsIHw9IERQX0FVWF9DSF9DVExfVEJUX0lPOw0KDQpTbyB0aGlzIHJl
Z2lzdGVyIG5lZWRzIHRvIGJlIHNldCBiZWZvcmUgdGhlIGF1eCB0cmFuc2FjdGlvbj8NCg0KPiAg
CUk5MTVfV1JJVEUoRFBfQVVYX0NIX0NUTChhdXhfY2gpLCB2YWwpOw0KPiAgDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
