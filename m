Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96CCB31FF7B
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Feb 2021 20:35:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 067BE6EB9A;
	Fri, 19 Feb 2021 19:35:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC2C96EB9A
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Feb 2021 19:35:37 +0000 (UTC)
IronPort-SDR: 4e16ryg9VFomdE57Dp49o3iC1HvXmshhNqKqllHB0vihI4OGvxZ/JEa2YyI3+HWk4fh/185EG0
 EoV+fKHGpz7Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9900"; a="171070352"
X-IronPort-AV: E=Sophos;i="5.81,189,1610438400"; d="scan'208";a="171070352"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2021 11:35:36 -0800
IronPort-SDR: bKUyW/zNGschKt3iRAcOhMRBBBd+6ZCamOh+OwOs0vSoq2DId+W9k/v38hxL41O5TQMI6Wfzn3
 sxIFPS7e3jfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,189,1610438400"; d="scan'208";a="496449374"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP; 19 Feb 2021 11:35:36 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 19 Feb 2021 11:35:36 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 19 Feb 2021 11:35:36 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.002;
 Fri, 19 Feb 2021 11:35:35 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 3/3] drm/i915: Fix plane watermark mismatches
Thread-Index: AQHXAWvFgtFzeGCzuUqI9w5witXg7KpVXxCAgAATkYCAABiMAIAHm+8AgABQwICAAUIZgIAADxgAgAGnewA=
Date: Fri, 19 Feb 2021 19:35:35 +0000
Message-ID: <00cf44dc72095f5861102e94919838947c418721.camel@intel.com>
References: <20210212182201.155043-1-jose.souza@intel.com>
 <20210212182201.155043-3-jose.souza@intel.com> <YCbKi3rpV3pWwkHw@intel.com>
 <463536ed55ca9d96c96e48efe60e99e2dad8cb07.camel@intel.com>
 <YCbvjHhGHvD5vM+0@intel.com>
 <65170873d65d0bcd9bb97e10fe152b7a3c42bac0.camel@intel.com>
 <YC2VVWNAMSLqRdLR@intel.com>
 <cbb1fdee5dea7737ec209a114c84cd5aef5c11e4.camel@intel.com>
 <YC6wMEIOfYOfLeKB@intel.com>
In-Reply-To: <YC6wMEIOfYOfLeKB@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <42DC550A1D43C6458864CBF7A0F1E7DC@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Fix plane watermark mismatches
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIxLTAyLTE4IGF0IDIwOjIxICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFRodSwgRmViIDE4LCAyMDIxIGF0IDA1OjI1OjU0UE0gKzAwMDAsIFNvdXphLCBKb3Nl
IHdyb3RlOg0KPiA+IE9uIFRodSwgMjAyMS0wMi0xOCBhdCAwMDoxNCArMDIwMCwgVmlsbGUgU3ly
asOkbMOkIHdyb3RlOg0KPiA+ID4gT24gV2VkLCBGZWIgMTcsIDIwMjEgYXQgMDU6MjQ6MDNQTSAr
MDAwMCwgU291emEsIEpvc2Ugd3JvdGU6DQo+ID4gPiA+IE9uIEZyaSwgMjAyMS0wMi0xMiBhdCAy
MzoxMyArMDIwMCwgVmlsbGUgU3lyasOkbMOkIHdyb3RlOg0KPiA+ID4gPiA+IE9uIEZyaSwgRmVi
IDEyLCAyMDIxIGF0IDA3OjQ0OjIyUE0gKzAwMDAsIFNvdXphLCBKb3NlIHdyb3RlOg0KPiA+ID4g
PiA+ID4gT24gRnJpLCAyMDIxLTAyLTEyIGF0IDIwOjM1ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qg
d3JvdGU6DQo+ID4gPiA+ID4gPiA+IE9uIEZyaSwgRmViIDEyLCAyMDIxIGF0IDEwOjIyOjAxQU0g
LTA4MDAsIEpvc8OpIFJvYmVydG8gZGUgU291emEgd3JvdGU6DQo+ID4gPiA+ID4gPiA+ID4gRm91
bmQgYSBzeXN0ZW0gd2VyZSBmaXJtd2FyZS9CSU9TIGxlZnQgdGhlIHBsYW5lX3Jlc19iIGFuZCBw
bGFuZV9yZXNfbA0KPiA+ID4gPiA+ID4gPiA+IHNldCB3aXRoIG5vbi16ZXJvIHZhbHVlcyBmb3Ig
ZGlzYWJsZSBwbGFuZXMuDQo+ID4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gPiBJdCBwcmV0dHkg
bXVjaCBoYXBwZW5zIGFsd2F5cyBzaW5jZSB0aGUgcmVzZXQgdmFsdWUgaXMgbm90IHplcm8uDQo+
ID4gPiA+ID4gPiA+IElJUkMgd2UgbWFkZSB0aGUgc3RhdGUgY2hja2VyIHBlZGFudGljIGVub3Vn
aCB0byBjb21wbGFpbiBhYm91dA0KPiA+ID4gPiA+ID4gPiB0aGF0LCBzbyB3ZSBuZWVkIHRvIGNs
ZWFuIGl0IHVwLg0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiBBcmUgeW91IHBsYW5uaW5nIHRv
IGZpeCBpdCBzb29uPw0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IEZpeCB3aGF0IGV4YWN0bHk/IEkg
Z3Vlc3MgeW91J3JlIHNlZWluZyBhbiBhY3R1YWwgcHJvYmxlbSBvZiBzb21lIHNvcnQ/DQo+ID4g
PiA+IA0KPiA+ID4gPiBZb3VyIGNvbW1lbnQgYWJvdmUgbWFkZSBtZSB1bmRlcnN0YW5kIHRoYXQg
eW91IHdlcmUgcGxhbm5pbmcgdG8gZml4IHRoaXMgcGxhbmUgd2F0ZXJtYXJrIG1pc21hdGNoZXMg
Zm9yIGRpc2FibGVkIHBsYW5lcyBpbiBvdGhlciB3YXkgb3RoZXIgdGhhbiB3aGF0DQo+ID4gPiA+
IHRoaXMgcGF0Y2ggZG9lcy4NCj4gPiA+ID4gT3Igc2hvdWxkIHdlIHByb2NlZWQgd2l0aCB0aGlz
IHNvbHV0aW9uPyANCj4gPiA+IA0KPiA+ID4gVGhlcmUgc2hvdWxkIGJlIG5vIG1pc21hdGNoZXMg
d2l0aCB0aGUgY3VycmVudCBzY2hlbWUuDQo+ID4gPiBXZSBleHBsaWNpdGx5IHByb2dyYW0gd21z
IHRvIDAgZm9yIGRpc2FibGVkIHBsYW5lcy4NCj4gPiA+IA0KPiA+IA0KPiA+IEl0IHN0aWxsIGhh
cHBlbnMgd2hlbiB3ZSB0YWtlIG92ZXIgdGhlIHN0YXRlIHRoYXQgQklPUy9maXJtd2FyZSBsZWZ0
Lg0KPiANCj4gVGhhdCB3b3VsZCBzZWVtIHRvIGltcGx5IHNrbF93bV9hZGRfYWZmZWN0ZWRfcGxh
bmVzKCkgaXNuJ3Qgd29ya2luZw0KPiByaWdodCBmb3Igc29tZSByZWFzb24uDQo+IA0KDQpSZWFk
aW5nIG91dCB3YXRlcm1hcmsgc3RhdGUgZHVyaW5nIGluaXRpYWwgcmVhZG91dCBmaXhlZCBpdDoN
CmRybS9pOTE1L2Rpc3BsYXk6IFJlYWQgcGxhbmVzIHdhdGVybWFya3MgZHVyaW5nIGluaXRpYWwg
c3RhdGUgcmVhZG91dA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
