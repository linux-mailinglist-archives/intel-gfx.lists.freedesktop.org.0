Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50CB94D3839
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 18:58:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBBC810E392;
	Wed,  9 Mar 2022 17:58:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D31910E399
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Mar 2022 17:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646848703; x=1678384703;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=fPuHtdSClG24HIeU67xhq80B9LjfMCdkR1bIw8f0jRg=;
 b=jQ67W1vF2QRjnBhQIyk5Xaq5uHLCt6eVudslpjybQpZ2uO2TcF02yFMD
 s10wp/ybql2eld2Vi1skiB4otq5/RoRP9JKF1633Wudt878PgNn4h0LZU
 Mm+5q4uhATk4/5SuFbcPq0LlNQsJ6t1G9CN/J3LEfrLDsw4iFGg3OQoVO
 SoPZhGoB1DjftTR2Ifn+r8lSQ5K1cOYJg/RHPIvgkZAZhhdzDZaBUpyKf
 ePMT5p/A2mZvQDj9Xcds6RD0VLlgaBnU5WbKSL3mejAlgRh91LExw5r/M
 JdSaxRDsd+Cm737GpWZp2QX0qyoWlfirI7ttlPwNu7sN/Con4rcBGC37s Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="234998396"
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="234998396"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 09:58:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="513619935"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 09 Mar 2022 09:58:20 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 9 Mar 2022 09:58:20 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 9 Mar 2022 09:58:19 -0800
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.021;
 Wed, 9 Mar 2022 09:58:19 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Thread-Topic: [PATCH 2/2] drm/i915/display: Do not re-enable PSR after it was
 marked as not reliable
Thread-Index: AQHYMwLhZI08FfGEdU6j0VZDXZOdhKy3mZ+AgABFQ4A=
Date: Wed, 9 Mar 2022 17:58:19 +0000
Message-ID: <29df9c0845990c7e35e9a47ae0ebbfc0bc76a0a4.camel@intel.com>
References: <20220308154136.406578-1-jose.souza@intel.com>
 <20220308154136.406578-2-jose.souza@intel.com>
 <501420c9c41f3ad7e136fa0e36b43c587257a2f8.camel@intel.com>
In-Reply-To: <501420c9c41f3ad7e136fa0e36b43c587257a2f8.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <63C051885B1ED849915F565A19C52D24@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display: Do not re-enable PSR
 after it was marked as not reliable
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

T24gV2VkLCAyMDIyLTAzLTA5IGF0IDEzOjUxICswMDAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+IEhlbGxvIEpvc2UsDQo+IA0KPiBTZWUgbXkgcXVlc3Rpb24vY29tbWVudCBiZWxvdy4NCj4g
DQo+IE9uIFR1ZSwgMjAyMi0wMy0wOCBhdCAwNzo0MSAtMDgwMCwgSm9zw6kgUm9iZXJ0byBkZSBT
b3V6YSB3cm90ZToNCj4gPiBJZiBhIGVycm9yIGhhcHBlbnMgYW5kIHNpbmtfbm90X3JlbGlhYmxl
IGlzIHNldCwgUFNSIHNob3VsZCBiZQ0KPiA+IGRpc2FibGVkDQo+ID4gZm9yIGdvb2QgYnV0IHRo
YXQgaXMgbm90IGhhcHBlbmluZy4NCj4gPiBJdCB3b3VsZCBiZSBkaXNhYmxlZCBieSB0aGUgZnVu
Y3Rpb24gaGFuZGxpbmcgdGhlIFBTUiBlcnJvciBidXQgdGhlbg0KPiA+IG9uIHRoZSBuZXh0IGZh
c3RzZXQgaXQgd291bGQgYmUgZW5hYmxlZCBhZ2FpbiBpbg0KPiA+IF9pbnRlbF9wc3JfcG9zdF9w
bGFuZV91cGRhdGUoKS4NCj4gPiBJdCB3b3VsZCBvbmx5IGJlIGRpc2FibGVkIGZvciBnb29kIGlu
IHRoZSBuZXh0IG1vZGVzZXQgd2hlcmUgaGFzX3Bzcg0KPiA+IHdpbGwgYmUgc2V0IGZhbHNlLg0K
PiANCj4gSG93IGFib3V0IGludmFsaWRhdGUvZmx1c2g/IElmIHlvdSBnZXQgZXJyb3IgYmV0d2Vl
bg0KPiBpbnRlbF9wc3JfaW52YWxpZGF0ZSBhbmQgaW50ZWxfcHNyX2ZsdXNoIHBzciBpcyBhY3Rp
dmF0ZWQNCj4gZXZlbiBzaW5rX25vdF9yZWxpYWJsZSBpcyB0cnVlPw0KDQplbmFibGVkICE9IGFj
dGl2YXRlZC4NCg0KZmx1c2ggYW5kIGludmFsaWRhdGUgZnVuY3Rpb25zIGNoZWNrcyBpZiBQU1Ig
aXMgZW5hYmxlZCwgaWYgbm90IGl0IHJldHVybnMgYW5kIGRvIGEgdGhpbmcuDQoNCj4gDQo+ID4g
DQo+ID4gRml4ZXM6IDljZTU4ODRlNTEzOSAoImRybS9pOTE1L2Rpc3BsYXk6IE9ubHkga2VlcCBQ
U1IgZW5hYmxlZCBpZg0KPiA+IHRoZXJlIGlzIGFjdGl2ZSBwbGFuZXMiKQ0KPiA+IFJlcG9ydGVk
LWJ5OiBLaGFsZWQgQWxtYWhhbGxhd3kgPGtoYWxlZC5hbG1haGFsbGF3eUBpbnRlbC5jb20+DQo+
ID4gUmVwb3J0ZWQtYnk6IENoYXJsdG9uIExpbiA8Y2hhcmx0b24ubGluQGludGVsLmNvbT4NCj4g
PiBDYzogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU2ln
bmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+
DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMg
fCAzICsrKw0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspDQo+ID4gDQo+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4g
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBpbmRleCBi
YmQ1ODFlZDA4MTU5Li5jZDA1ZTVmZGM4Y2E5IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gQEAgLTE4NTMsNiArMTg1Myw5IEBAIHN0YXRp
YyB2b2lkIF9pbnRlbF9wc3JfcG9zdF9wbGFuZV91cGRhdGUoY29uc3QNCj4gPiBzdHJ1Y3QgaW50
ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiANCj4gPiAgICAgICAgICAgICAgIG11dGV4X2xv
Y2soJnBzci0+bG9jayk7DQo+ID4gDQo+ID4gKyAgICAgICAgICAgICBpZiAocHNyLT5zaW5rX25v
dF9yZWxpYWJsZSkNCj4gPiArICAgICAgICAgICAgICAgICAgICAgY29udGludWU7DQo+ID4gKw0K
PiA+ICAgICAgICAgICAgICAgZHJtX1dBUk5fT04oJmRldl9wcml2LT5kcm0sIHBzci0+ZW5hYmxl
ZCAmJg0KPiA+ICFjcnRjX3N0YXRlLT5hY3RpdmVfcGxhbmVzKTsNCj4gPiANCj4gPiAgICAgICAg
ICAgICAgIC8qIE9ubHkgZW5hYmxlIGlmIHRoZXJlIGlzIGFjdGl2ZSBwbGFuZXMgKi8NCj4gDQo+
IEJSLA0KPiANCj4gSm91bmkgSMO2Z2FuZGVyDQoNCg==
