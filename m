Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39FA14EE82B
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Apr 2022 08:24:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B71D410F78F;
	Fri,  1 Apr 2022 06:24:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 734E610F78F
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Apr 2022 06:24:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648794252; x=1680330252;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=nfCQnH5ka96V1ODnBgjoSBL6clJpSAtYid+BiTu3Cqw=;
 b=bCFMro67KnnCakv/evKIwYDK9inHj7aehbPF4ub9G9vTxQhe4d9ZS/T0
 RtUvMz4n9WY5wfjN77DcbS1osjuxsFdlpf1fnCqmvcEI7FPbvzWysyLwO
 W159N6T+irvuWvpyF+btZzAWRxFHht/ES99QonRN5Da+HonIX+MTJvnNR
 KFklclySWFgD8WBuUQ7wHQDE3ViMx9pLLg1uEpblFaALkn49YPaMerrSE
 8KIAaTCQDyK97wGOQNWL0DgwsAhNLM4HGkmdEa8nBFunRktdNkFc1anxG
 FkgZ6tjHQp6S/U8N4KskliVjC4N7pYPkBcBVOHFhE3xYVWyQ3DdGiG3r4 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10303"; a="346492993"
X-IronPort-AV: E=Sophos;i="5.90,226,1643702400"; d="scan'208";a="346492993"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 23:24:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,226,1643702400"; d="scan'208";a="547669885"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 31 Mar 2022 23:24:04 -0700
Received: from bgsmsx603.gar.corp.intel.com (10.109.78.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 31 Mar 2022 23:24:03 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX603.gar.corp.intel.com (10.109.78.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 1 Apr 2022 11:54:01 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2308.027;
 Fri, 1 Apr 2022 11:54:01 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 04/12] drm/i915/dp:
 s/intel_dp_hdmi_ycbcr420/intel_dp_is_ycbcr420/
Thread-Index: AQHYPeRzBB8MghubfECs9pObgIfofqzapjFg
Date: Fri, 1 Apr 2022 06:24:01 +0000
Message-ID: <7941bd9eb48d4992b67d0b3d6ab3c782@intel.com>
References: <20220322120015.28074-1-ville.syrjala@linux.intel.com>
 <20220322120015.28074-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20220322120015.28074-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.401.20
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 04/12] drm/i915/dp:
 s/intel_dp_hdmi_ycbcr420/intel_dp_is_ycbcr420/
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZSBT
eXJqYWxhDQo+IFNlbnQ6IFR1ZXNkYXksIE1hcmNoIDIyLCAyMDIyIDU6MzAgUE0NCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVsLWdmeF0gW1BB
VENIIHYyIDA0LzEyXSBkcm0vaTkxNS9kcDoNCj4gcy9pbnRlbF9kcF9oZG1pX3ljYmNyNDIwL2lu
dGVsX2RwX2lzX3ljYmNyNDIwLw0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IGludGVsX2RwX2hkbWlfeWNiY3I0MjAoKSBk
b2VzIGFjY291bnQgZm9yIG5hdGl2ZSBEUCA0OjI6MCBvdXRwdXQgYXMgd2VsbCwgc28gbGV0cw0K
PiByZW5hbWUgaXQgYSBiaXQuDQoNCkxvb2tzIEdvb2QgdG8gbWUuDQpSZXZpZXdlZC1ieTogVW1h
IFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDYgKysrLS0tDQo+ICAxIGZp
bGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBpbmRleCBmYzUwODAyYzk5OTcu
Ljk3MjA1NzE0MzhlOSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYw0KPiBAQCAtMTE1Nyw4ICsxMTU3LDggQEAgc3RhdGljIGJvb2wgaW50ZWxfZHBfc3VwcG9y
dHNfZHNjKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHAsDQo+ICAJCWRybV9kcF9zaW5rX3N1
cHBvcnRzX2RzYyhpbnRlbF9kcC0+ZHNjX2RwY2QpOw0KPiAgfQ0KPiANCj4gLXN0YXRpYyBib29s
IGludGVsX2RwX2hkbWlfeWNiY3I0MjAoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gLQkJ
CQkgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gK3N0YXRp
YyBib29sIGludGVsX2RwX2lzX3ljYmNyNDIwKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+
ICsJCQkJIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiAgew0K
PiAgCXJldHVybiBjcnRjX3N0YXRlLT5vdXRwdXRfZm9ybWF0ID09IElOVEVMX09VVFBVVF9GT1JN
QVRfWUNCQ1I0MjANCj4gfHwNCj4gIAkJKGNydGNfc3RhdGUtPm91dHB1dF9mb3JtYXQgPT0NCj4g
SU5URUxfT1VUUFVUX0ZPUk1BVF9ZQ0JDUjQ0NCAmJiBAQCAtMTE2OSw3ICsxMTY5LDcgQEAgc3Rh
dGljIGJvb2wNCj4gaW50ZWxfZHBfaGRtaV9icGNfcG9zc2libGUoc3RydWN0IGludGVsX2RwICpp
bnRlbF9kcCwNCj4gIAkJCQkgICAgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUsDQo+ICAJCQkJICAgICAgIGludCBicGMpDQo+ICB7DQo+IC0JYm9vbCB5Y2JjcjQy
MF9vdXRwdXQgPSBpbnRlbF9kcF9oZG1pX3ljYmNyNDIwKGludGVsX2RwLCBjcnRjX3N0YXRlKTsN
Cj4gKwlib29sIHljYmNyNDIwX291dHB1dCA9IGludGVsX2RwX2lzX3ljYmNyNDIwKGludGVsX2Rw
LCBjcnRjX3N0YXRlKTsNCj4gIAlpbnQgY2xvY2sgPSBjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9t
b2RlLmNydGNfY2xvY2s7DQo+IA0KPiAgCXJldHVybiBpbnRlbF9oZG1pX2JwY19wb3NzaWJsZShj
cnRjX3N0YXRlLCBicGMsDQo+IC0tDQo+IDIuMzQuMQ0KDQo=
