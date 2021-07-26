Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 996063D6880
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jul 2021 23:15:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C98676FAC4;
	Mon, 26 Jul 2021 21:15:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31A3B6FAC4
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jul 2021 21:15:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10057"; a="212309120"
X-IronPort-AV: E=Sophos;i="5.84,272,1620716400"; d="scan'208";a="212309120"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2021 14:15:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,272,1620716400"; d="scan'208";a="474130912"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga008.fm.intel.com with ESMTP; 26 Jul 2021 14:15:33 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 26 Jul 2021 14:15:33 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 26 Jul 2021 14:15:32 -0700
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2242.010;
 Mon, 26 Jul 2021 14:15:32 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/4] drm/i915/display/psr2: Mark as updated
 all planes that intersect with pipe_clip
Thread-Index: AQHXeqhGCXe2rAy68E+G7BF6x3jmw6tV0UeA
Date: Mon, 26 Jul 2021 21:15:32 +0000
Message-ID: <6e6234022c2d4ff0bc17f6c66783d8d3@intel.com>
References: <20210717011227.204494-1-jose.souza@intel.com>
 <20210717011227.204494-2-jose.souza@intel.com>
In-Reply-To: <20210717011227.204494-2-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/display/psr2: Mark as updated
 all planes that intersect with pipe_clip
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3PDqQ0K
PiBSb2JlcnRvIGRlIFNvdXphDQo+IFNlbnQ6IEZyaWRheSwgSnVseSAxNiwgMjAyMSA2OjEyIFBN
DQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRl
bC1nZnhdIFtQQVRDSCAyLzRdIGRybS9pOTE1L2Rpc3BsYXkvcHNyMjogTWFyayBhcyB1cGRhdGVk
IGFsbA0KPiBwbGFuZXMgdGhhdCBpbnRlcnNlY3Qgd2l0aCBwaXBlX2NsaXANCj4gDQo+IFdpdGhv
dXQgdGhpcyBwbGFuZXMgdGhhdCB3ZXJlIGFkZGVkIGJ5IGludGVsX3BzcjJfc2VsX2ZldGNoX3Vw
ZGF0ZSgpIHRoYXQNCj4gaW50ZXJzZWN0IHdpdGggcGlwZSBkYW1hZ2VkIGFyZWEgd2lsbCBub3Qg
aGF2ZSBza2xfcHJvZ3JhbV9wbGFuZSgpIGFuZA0KPiBpbnRlbF9wc3IyX3Byb2dyYW1fcGxhbmVf
c2VsX2ZldGNoKCkNCj4gY2FsbGVkLCBjYXVzaW5nIHBhbmVsIHRvIG5vdCBiZSBwcm9wZXJseSB1
cGRhdGVkLg0KPiANCj4gQ2M6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcubXVuQGludGVs
LmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6
YUBpbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2
YXRzYUBpbnRlbC5jb20+DQoNCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jIHwgMSArDQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
DQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCBk
NDM2NDkwYWIyOGM2Li4xYzQxMDQyODQxZmIxIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTE2OTksNiArMTY5OSw3IEBAIGludCBpbnRlbF9w
c3IyX3NlbF9mZXRjaF91cGRhdGUoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUs
DQo+ICAJCXNlbF9mZXRjaF9hcmVhID0gJm5ld19wbGFuZV9zdGF0ZS0+cHNyMl9zZWxfZmV0Y2hf
YXJlYTsNCj4gIAkJc2VsX2ZldGNoX2FyZWEtPnkxID0gaW50ZXIueTEgLSBuZXdfcGxhbmVfc3Rh
dGUtDQo+ID51YXBpLmRzdC55MTsNCj4gIAkJc2VsX2ZldGNoX2FyZWEtPnkyID0gaW50ZXIueTIg
LSBuZXdfcGxhbmVfc3RhdGUtDQo+ID51YXBpLmRzdC55MTsNCj4gKwkJY3J0Y19zdGF0ZS0+dXBk
YXRlX3BsYW5lcyB8PSBCSVQocGxhbmUtPmlkKTsNCj4gIAl9DQo+IA0KPiAgc2tpcF9zZWxfZmV0
Y2hfc2V0X2xvb3A6DQo+IC0tDQo+IDIuMzIuMA0KPiANCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdA0KPiBJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4DQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
