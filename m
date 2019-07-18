Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 494426D5D6
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 22:35:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BE5E6E462;
	Thu, 18 Jul 2019 20:35:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A41436E462
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 20:35:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jul 2019 13:35:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,279,1559545200"; d="scan'208";a="343481523"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by orsmga005.jf.intel.com with ESMTP; 18 Jul 2019 13:35:33 -0700
Received: from orsmsx155.amr.corp.intel.com (10.22.240.21) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 18 Jul 2019 13:35:33 -0700
Received: from orsmsx114.amr.corp.intel.com ([169.254.8.237]) by
 ORSMSX155.amr.corp.intel.com ([169.254.7.34]) with mapi id 14.03.0439.000;
 Thu, 18 Jul 2019 13:35:33 -0700
From: "Atwood, Matthew S" <matthew.s.atwood@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 01/22] drm/i915/tgl: skip setting
 PORT_CL_DW12_* on initialization
Thread-Index: AQHVORev7yYgHWcczEu2ZvtoTvVJi6bRVGKA
Date: Thu, 18 Jul 2019 20:35:32 +0000
Message-ID: <8808940fd918c65da03ea6ced99a014c6c89636a.camel@intel.com>
References: <20190713010940.17711-1-lucas.demarchi@intel.com>
 <20190713010940.17711-2-lucas.demarchi@intel.com>
In-Reply-To: <20190713010940.17711-2-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.8.109]
Content-ID: <A63ABB2C01B42A49AB0DD428543266A5@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/22] drm/i915/tgl: skip setting
 PORT_CL_DW12_* on initialization
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

T24gRnJpLCAyMDE5LTA3LTEyIGF0IDE4OjA5IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IEFjY29yZGluZyB0byB0aGUgc3BlYyB3aGVuIGluaXRpYWxpemluZyB0aGUgZGlzcGxheSBp
biBUR0wgd2Ugc2hvdWxkDQo+IG5vdA0KPiBzZXQgUE9SVF9DTF9EVzEyIGZvciB0aGUgQXV4IGNo
YW5uZWwgb2YgdGhlIGNvbWJvIFBIWXMuIFdlIHdpbGwgcmUtDQo+IHVzZSB0aGUNCj4gcG93ZXIg
d2VsbCBob29rcyBmcm9tIElDTCBzbyBvbmx5IHNldCB0aGlzIHJlZ2lzdGVyIG9uIGdlbiA8IDEy
Lg0KPiANCj4gdjI6IEdlbmVyYWxpemUgY2hlY2sgZm9yIGdlbiAxMiAoc3VnZ2VzdGVkIGJ5IEpv
c8OpKQ0KPiB2MzogUmViYXNlIGFmdGVyIGVudW0gcGh5IGludHJvZHVjdGlvbg0KPiANClJldmll
d2VkLWJ5OiBNYXR0IEF0d29vZCA8bWF0dGhldy5zLmF0d29vZEBpbnRlbC5jb20+DQo+IENjOiBJ
bXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IENjOiBNYXR0IFJvcGVyIDxtYXR0aGV3
LmQucm9wZXJAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1
Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4NCj4gUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUg
U291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jIHwgMTIgKysrKysrKystLS0tDQo+ICAx
IGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dl
ci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2Vy
LmMNCj4gaW5kZXggOTNhMTQ4Njg0YzUzLi5kZDJhNTBiOGJhMGEgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jDQo+IEBA
IC00NTgsOCArNDU4LDEwIEBAIGljbF9jb21ib19waHlfYXV4X3Bvd2VyX3dlbGxfZW5hYmxlKHN0
cnVjdA0KPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwNCj4gIAl2YWwgPSBJOTE1X1JFQUQo
cmVncy0+ZHJpdmVyKTsNCj4gIAlJOTE1X1dSSVRFKHJlZ3MtPmRyaXZlciwgdmFsIHwgSFNXX1BX
Ul9XRUxMX0NUTF9SRVEocHdfaWR4KSk7DQo+ICANCj4gLQl2YWwgPSBJOTE1X1JFQUQoSUNMX1BP
UlRfQ0xfRFcxMihwaHkpKTsNCj4gLQlJOTE1X1dSSVRFKElDTF9QT1JUX0NMX0RXMTIocGh5KSwg
dmFsIHwgSUNMX0xBTkVfRU5BQkxFX0FVWCk7DQo+ICsJaWYgKElOVEVMX0dFTihkZXZfcHJpdikg
PCAxMikgew0KPiArCQl2YWwgPSBJOTE1X1JFQUQoSUNMX1BPUlRfQ0xfRFcxMihwaHkpKTsNCj4g
KwkJSTkxNV9XUklURShJQ0xfUE9SVF9DTF9EVzEyKHBoeSksIHZhbCB8DQo+IElDTF9MQU5FX0VO
QUJMRV9BVVgpOw0KPiArCX0NCj4gIA0KPiAgCWhzd193YWl0X2Zvcl9wb3dlcl93ZWxsX2VuYWJs
ZShkZXZfcHJpdiwgcG93ZXJfd2VsbCk7DQo+ICANCj4gQEAgLTQ4Nyw4ICs0ODksMTAgQEAgaWNs
X2NvbWJvX3BoeV9hdXhfcG93ZXJfd2VsbF9kaXNhYmxlKHN0cnVjdA0KPiBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiwNCj4gIAllbnVtIHBoeSBwaHkgPSBJQ0xfQVVYX1BXX1RPX1BIWShwd19p
ZHgpOw0KPiAgCXUzMiB2YWw7DQo+ICANCj4gLQl2YWwgPSBJOTE1X1JFQUQoSUNMX1BPUlRfQ0xf
RFcxMihwaHkpKTsNCj4gLQlJOTE1X1dSSVRFKElDTF9QT1JUX0NMX0RXMTIocGh5KSwgdmFsICYg
fklDTF9MQU5FX0VOQUJMRV9BVVgpOw0KPiArCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpIDwgMTIp
IHsNCj4gKwkJdmFsID0gSTkxNV9SRUFEKElDTF9QT1JUX0NMX0RXMTIocGh5KSk7DQo+ICsJCUk5
MTVfV1JJVEUoSUNMX1BPUlRfQ0xfRFcxMihwaHkpLCB2YWwgJg0KPiB+SUNMX0xBTkVfRU5BQkxF
X0FVWCk7DQo+ICsJfQ0KPiAgDQo+ICAJdmFsID0gSTkxNV9SRUFEKHJlZ3MtPmRyaXZlcik7DQo+
ICAJSTkxNV9XUklURShyZWdzLT5kcml2ZXIsIHZhbCAmIH5IU1dfUFdSX1dFTExfQ1RMX1JFUShw
d19pZHgpKTsNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
