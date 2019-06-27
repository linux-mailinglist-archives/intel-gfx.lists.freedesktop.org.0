Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C763258AEF
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 21:28:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E0856E4BA;
	Thu, 27 Jun 2019 19:28:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EED996E4BA
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 19:28:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 12:28:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,424,1557212400"; d="scan'208";a="173240219"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga002.jf.intel.com with ESMTP; 27 Jun 2019 12:28:16 -0700
Received: from fmsmsx121.amr.corp.intel.com (10.18.125.36) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 27 Jun 2019 12:28:15 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.210]) by
 fmsmsx121.amr.corp.intel.com ([169.254.6.8]) with mapi id 14.03.0439.000;
 Thu, 27 Jun 2019 12:28:15 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [PATCH 12/28] drm/i915/tgl: Add TRANSCODER_A_VDSC power domain
Thread-Index: AQHVK38h+QFljM/7oUaSKECJcVCBs6awW0cA
Date: Thu, 27 Jun 2019 19:28:15 +0000
Message-ID: <c4b390a80e43f115937263fb7d3314a1312cf7eb.camel@intel.com>
References: <20190625175437.14840-1-lucas.demarchi@intel.com>
 <20190625175437.14840-13-lucas.demarchi@intel.com>
In-Reply-To: <20190625175437.14840-13-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.4]
Content-ID: <DFB38E4B9D7C514AA1530280D0920E8B@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 12/28] drm/i915/tgl: Add TRANSCODER_A_VDSC
 power domain
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

T24gVHVlLCAyMDE5LTA2LTI1IGF0IDEwOjU0IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IEZyb206IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0K
PiANCj4gT24gVEdMIHRoZSBzcGVjaWFsIEVEUCB0cmFuc2NvZGVyIGlzIGdvbmUgYW5kIGl0IHNo
b3VsZCBiZSBoYW5kbGVkIGJ5DQo+IHRyYW5zY29kZXIgQS4gQWRkIFBPV0VSX0RPTUFJTl9UUkFO
U0NPREVSX0FfVkRTQyB0byBtYWtlIHRoaXMNCj4gZGlzdGluY3Rpb24gY2xlYXIgYW5kIHVwZGF0
ZSB2ZHNjIGNvZGUgcGF0aC4NCj4gDQo+IENjOiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5j
b20+DQo+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFA
aW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFy
Y2hpQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfcG93ZXIuYyB8ICAyICsrDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuaCB8ICAxICsNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfdmRzYy5jICAgICAgICAgIHwgMTEgKysrKysrKystLS0NCj4gIDMgZmls
ZXMgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIu
Yw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5j
DQo+IGluZGV4IDBjN2Q0YTM2M2RlYi4uMTU1ODI4NDFmZWZjIDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYw0KPiBAQCAt
NTgsNiArNTgsOCBAQCBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbl9zdHIoc3RydWN0DQo+IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUsDQo+ICAJCXJldHVybiAiVFJBTlNDT0RFUl9FRFAiOw0KPiAg
CWNhc2UgUE9XRVJfRE9NQUlOX1RSQU5TQ09ERVJfRURQX1ZEU0M6DQo+ICAJCXJldHVybiAiVFJB
TlNDT0RFUl9FRFBfVkRTQyI7DQo+ICsJY2FzZSBQT1dFUl9ET01BSU5fVFJBTlNDT0RFUl9BX1ZE
U0M6DQo+ICsJCXJldHVybiAiVFJBTlNDT0RFUl9BX1ZEU0MiOw0KPiAgCWNhc2UgUE9XRVJfRE9N
QUlOX1RSQU5TQ09ERVJfRFNJX0E6DQo+ICAJCXJldHVybiAiVFJBTlNDT0RFUl9EU0lfQSI7DQo+
ICAJY2FzZSBQT1dFUl9ET01BSU5fVFJBTlNDT0RFUl9EU0lfQzoNCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5oDQo+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmgNCj4gaW5kZXgg
NzkyNjJhNWJjZWI0Li43NzYxYjQ5MzYwOGEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5oDQo+IEBAIC0yOSw2ICsyOSw3
IEBAIGVudW0gaW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW4gew0KPiAgCVBPV0VSX0RPTUFJTl9U
UkFOU0NPREVSX0QsDQo+ICAJUE9XRVJfRE9NQUlOX1RSQU5TQ09ERVJfRURQLA0KPiAgCVBPV0VS
X0RPTUFJTl9UUkFOU0NPREVSX0VEUF9WRFNDLA0KPiArCVBPV0VSX0RPTUFJTl9UUkFOU0NPREVS
X0FfVkRTQywNCj4gIAlQT1dFUl9ET01BSU5fVFJBTlNDT0RFUl9EU0lfQSwNCj4gIAlQT1dFUl9E
T01BSU5fVFJBTlNDT0RFUl9EU0lfQywNCj4gIAlQT1dFUl9ET01BSU5fUE9SVF9ERElfQV9MQU5F
UywNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRz
Yy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMNCj4gaW5k
ZXggZmZlYzgwN2I4OTYwLi4wYzc1YjQwOGQ2YmEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jDQo+IEBAIC00NTksMTYgKzQ1OSwyMSBAQCBpbnQgaW50
ZWxfZHBfY29tcHV0ZV9kc2NfcGFyYW1zKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHAsDQo+
ICBlbnVtIGludGVsX2Rpc3BsYXlfcG93ZXJfZG9tYWluDQo+ICBpbnRlbF9kc2NfcG93ZXJfZG9t
YWluKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiAgew0KPiAr
CXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Y19zdGF0ZS0N
Cj4gPmJhc2Uuc3RhdGUtPmRldik7DQo+ICAJZW51bSB0cmFuc2NvZGVyIGNwdV90cmFuc2NvZGVy
ID0gY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXI7DQo+ICANCj4gIAkvKg0KPiAtCSAqIE9uIElD
TCBWRFNDL2pvaW5pbmcgZm9yIGVEUCB0cmFuc2NvZGVyIHVzZXMgYSBzZXBhcmF0ZSBwb3dlcg0K
PiB3ZWxsIFBXMg0KPiAtCSAqIFRoaXMgcmVxdWlyZXMgUE9XRVJfRE9NQUlOX1RSQU5TQ09ERVJf
RURQX1ZEU0MgcG93ZXIgZG9tYWluLg0KPiArCSAqIE9uIElDTCsgVkRTQy9qb2luaW5nIGZvciBl
RFAvQSB0cmFuc2NvZGVyIHVzZXMgYSBzZXBhcmF0ZQ0KPiBwb3dlciB3ZWxsDQo+ICsJICogUFcy
LiBUaGlzIHJlcXVpcmVzDQo+ICsJICoNCj4gUE9XRVJfRE9NQUlOX1RSQU5TQ09ERVJfRURQX1ZE
U0MvUE9XRVJfRE9NQUlOX1RSQU5TQ09ERVJfQV9WRFNDIHBvd2VyDQo+ICsJICogZG9tYWluLg0K
PiAgCSAqIEZvciBhbnkgb3RoZXIgdHJhbnNjb2RlciwgVkRTQy9qb2luaW5nIHVzZXMgdGhlIHBv
d2VyIHdlbGwNCj4gYXNzb2NpYXRlZA0KPiAgCSAqIHdpdGggdGhlIHBpcGUvdHJhbnNjb2RlciBp
biB1c2UuIEhlbmNlIGFub3RoZXIgcmVmZXJlbmNlIG9uDQo+IHRoZQ0KPiAgCSAqIHRyYW5zY29k
ZXIgcG93ZXIgZG9tYWluIHdpbGwgc3VmZmljZS4NCj4gIAkgKi8NCj4gLQlpZiAoY3B1X3RyYW5z
Y29kZXIgPT0gVFJBTlNDT0RFUl9FRFApDQo+ICsJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0g
MTIgJiYgY3B1X3RyYW5zY29kZXIgPT0NCj4gVFJBTlNDT0RFUl9BKQ0KPiArCQlyZXR1cm4gUE9X
RVJfRE9NQUlOX1RSQU5TQ09ERVJfQV9WRFNDOw0KPiArCWVsc2UgaWYgKGNwdV90cmFuc2NvZGVy
ID09IFRSQU5TQ09ERVJfRURQKQ0KPiAgCQlyZXR1cm4gUE9XRVJfRE9NQUlOX1RSQU5TQ09ERVJf
RURQX1ZEU0M7DQo+ICAJZWxzZQ0KPiAgCQlyZXR1cm4gUE9XRVJfRE9NQUlOX1RSQU5TQ09ERVIo
Y3B1X3RyYW5zY29kZXIpOw0KDQoNClRoaXMgaXMgbWlzc2luZyB0aGUgY2hhbmdlIGFkZGluZyBQ
T1dFUl9ET01BSU5fVFJBTlNDT0RFUl9FRFBfVkRTQyB0bw0KVEdMX1BXXzJfUE9XRVJfRE9NQUlO
Uy4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
