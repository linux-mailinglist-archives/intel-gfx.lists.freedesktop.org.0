Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 598F830FDFF
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 21:21:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A02A96EE68;
	Thu,  4 Feb 2021 20:21:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB8106EE68
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Feb 2021 20:21:09 +0000 (UTC)
IronPort-SDR: MKuLbVOQYi+iZX4fo8AXiHp1V6t6JNxsbkxrL+fwLhTFm05wSWhNWdutAZser7yn+P1qzq9tFe
 bHnuo6i8x10g==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="178760756"
X-IronPort-AV: E=Sophos;i="5.81,153,1610438400"; d="scan'208";a="178760756"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 12:21:09 -0800
IronPort-SDR: NI5TIEfU/zUTaA6DfjXiAy79FizPS2Po18Sg3HKx/egl4keC5DswnT4ABIHpiQwbpV4ar+xqx8
 UJglp+aDDA3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,153,1610438400"; d="scan'208";a="393352550"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 04 Feb 2021 12:21:08 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 4 Feb 2021 12:21:08 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 4 Feb 2021 12:21:08 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.002;
 Thu, 4 Feb 2021 12:21:08 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/display: Remove PSR2 on JSL and EHL
Thread-Index: AQHW+x8qk431NohpP0qY5BGhPOJLFapI9s6A
Date: Thu, 4 Feb 2021 20:21:08 +0000
Message-ID: <36155ec2b35643b5885010292e389874fd42a90d.camel@intel.com>
References: <20210204175830.97857-1-jose.souza@intel.com>
In-Reply-To: <20210204175830.97857-1-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <2F8EE3BBFF937240B19954B3780F3003@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Remove PSR2 on JSL and EHL
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
Cc: "Dea, Edmund J" <edmund.j.dea@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIxLTAyLTA0IGF0IDA5OjU4IC0wODAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBGcm9tOiBFZG11bmQgRGVhIDxlZG11bmQuai5kZWFAaW50ZWwuY29tPg0KPiAN
Cj4gV2hpbGUgSlNMIGFuZCBFSEwgZURQIHRyYW5zY29kZXIgc3VwcG9ydHMgUFNSMiwgdGhlIHBo
eSBvZiB0aGlzDQo+IHBsYXRmb3JtcyBvbmx5IHN1cHBvcnRzIGVEUCAxLjMsIHNvIHJlbW92aW5n
IFBTUjIgc3VwcG9ydCBhcyB0aGlzDQo+IGZlYXR1cmUgd2FzIGFkZGVkIGluIGVEUCAxLjQuDQoN
Ckp1c3Qgc2VudCBhIHBhdGNoIGZyb20gRWRtdW5kIHdpdGggYSBtaW5vciBjb21taXQgbWVzc2Fn
ZSB0d2Vha3MsIHNvIEkgZ3Vlc3MgbXkgcnZiIGlzIHZhbGlkIGlmIG5vdCBwbGVhc2UgbGV0IG1l
IGtub3cuDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXph
QGludGVsLmNvbT4NCg0KPiANCj4gU2lnbmVkLW9mZi1ieTogRWRtdW5kIERlYSA8ZWRtdW5kLmou
ZGVhQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8
am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMgfCA2ICsrKysrKw0KPiDCoDEgZmlsZSBjaGFuZ2VkLCA2IGluc2Vy
dGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0K
PiBpbmRleCAyYzM2NWI3NzhmNzQuLmNjY2I4YWZmNDMzNiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC03MTgsNiArNzE4LDEyIEBAIHN0YXRp
YyBib29sIGludGVsX3BzcjJfY29uZmlnX3ZhbGlkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAs
DQo+IMKgCWlmICghZGV2X3ByaXYtPnBzci5zaW5rX3BzcjJfc3VwcG9ydCkNCj4gwqAJCXJldHVy
biBmYWxzZTsNCj4gwqANCj4gDQo+IA0KPiANCj4gKwkvKiBKU0wgYW5kIEVITCBvbmx5IHN1cHBv
cnRzIGVEUCAxLjMgKi8NCj4gKwlpZiAoSVNfSlNMX0VITChkZXZfcHJpdikpIHsNCj4gKwkJZHJt
X2RiZ19rbXMoJmRldl9wcml2LT5kcm0sICJQU1IyIG5vdCBzdXBwb3J0ZWQgYnkgcGh5XG4iKTsN
Cj4gKwkJcmV0dXJuIGZhbHNlOw0KPiArCX0NCj4gKw0KPiDCoAlpZiAoIXRyYW5zY29kZXJfaGFz
X3BzcjIoZGV2X3ByaXYsIGNydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyKSkgew0KPiDCoAkJZHJt
X2RiZ19rbXMoJmRldl9wcml2LT5kcm0sDQo+IMKgCQkJICAgICJQU1IyIG5vdCBzdXBwb3J0ZWQg
aW4gdHJhbnNjb2RlciAlc1xuIiwNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
