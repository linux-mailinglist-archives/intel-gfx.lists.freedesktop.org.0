Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17B7123AD1C
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Aug 2020 21:35:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8ABF06E054;
	Mon,  3 Aug 2020 19:35:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E601F6E054
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Aug 2020 19:35:29 +0000 (UTC)
IronPort-SDR: 5XSYIX6RC06RY396oPFeytbj+k2fMxE0KtX8Akf7+rvE2CZVsk+bbqQDPuZsb742YOfpKsh3vo
 mup7sMkdts6w==
X-IronPort-AV: E=McAfee;i="6000,8403,9702"; a="152158836"
X-IronPort-AV: E=Sophos;i="5.75,431,1589266800"; d="scan'208";a="152158836"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2020 12:35:29 -0700
IronPort-SDR: mZnDve/j3A0jPiG9yW5kTlT1fXA8Xn4EYI989XfJgGmZ4ae/K7MkRbIApXzV/L+lSZ2p6prezk
 QVOrge0GtWiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,431,1589266800"; d="scan'208";a="492049631"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP; 03 Aug 2020 12:35:28 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 3 Aug 2020 12:35:28 -0700
Received: from orsmsx103.amr.corp.intel.com (10.22.225.130) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 3 Aug 2020 12:35:28 -0700
Received: from orsmsx151.amr.corp.intel.com ([169.254.7.123]) by
 ORSMSX103.amr.corp.intel.com ([169.254.5.158]) with mapi id 14.03.0439.000;
 Mon, 3 Aug 2020 12:35:28 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "tianjia.zhang@linux.alibaba.com" <tianjia.zhang@linux.alibaba.com>
Thread-Topic: [PATCH] drm/i915: Fix wrong return value in intel_atomic_check()
Thread-Index: AQHWaL5FmbCy7Xqc0UuFBpjSwAtHiKknPuYA
Date: Mon, 3 Aug 2020 19:35:27 +0000
Message-ID: <6c076128ecda7b48e8a5f1c78eb718026b2cd0ba.camel@intel.com>
References: <20200802111535.5200-1-tianjia.zhang@linux.alibaba.com>
In-Reply-To: <20200802111535.5200-1-tianjia.zhang@linux.alibaba.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.251.135.198]
Content-ID: <B0CD20E5D2597048BA859EB476EF9F9F@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix wrong return value in
 intel_atomic_check()
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
Cc: "tianjia.zhang@alibaba.com" <tianjia.zhang@alibaba.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU3VuLCAyMDIwLTA4LTAyIGF0IDE5OjE1ICswODAwLCBUaWFuamlhIFpoYW5nIHdyb3RlOg0K
PiBJbiB0aGUgY2FzZSBvZiBjYWxsaW5nIGNoZWNrX2RpZ2l0YWxfcG9ydF9jb25mbGljdHMoKSBm
YWlsZWQsIGENCj4gbmVnYXRpdmUgZXJyb3IgY29kZSAtRUlOVkFMIHNob3VsZCBiZSByZXR1cm5l
ZC4NCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50
ZWwuY29tPg0KDQo+IA0KPiBGaXhlczogYmY1ZGE4M2U0YmQ4MCAoImRybS9pOTE1OiBNb3ZlIGNo
ZWNrX2RpZ2l0YWxfcG9ydF9jb25mbGljdHMoKSBlYXJpZXIiKQ0KPiBDYzogVmlsbGUgU3lyasOk
bMOkIDwNCj4gdmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20NCj4gPg0KPiBTaWduZWQtb2Zm
LWJ5OiBUaWFuamlhIFpoYW5nIDwNCj4gdGlhbmppYS56aGFuZ0BsaW51eC5hbGliYWJhLmNvbQ0K
PiA+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMgfCAyICstDQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24o
LSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
DQo+IGluZGV4IDI2OTk2ZTE4MzllMi4uOWYzYTdlZjU4YWJhIDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBAQCAtMTQ4NzIsNyArMTQ4
NzIsNyBAQCBzdGF0aWMgaW50IGludGVsX2F0b21pY19jaGVjayhzdHJ1Y3QgZHJtX2RldmljZSAq
ZGV2LA0KPiAgCWlmIChhbnlfbXMgJiYgIWNoZWNrX2RpZ2l0YWxfcG9ydF9jb25mbGljdHMoc3Rh
dGUpKSB7DQo+ICAJCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLA0KPiAgCQkJICAgICJyZWpl
Y3RpbmcgY29uZmxpY3RpbmcgZGlnaXRhbCBwb3J0IGNvbmZpZ3VyYXRpb25cbiIpOw0KPiAtCQly
ZXQgPSBFSU5WQUw7DQo+ICsJCXJldCA9IC1FSU5WQUw7DQo+ICAJCWdvdG8gZmFpbDsNCj4gIAl9
DQo+ICANCj4gDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
