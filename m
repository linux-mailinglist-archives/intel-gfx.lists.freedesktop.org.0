Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 190C841978D
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Sep 2021 17:16:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF3356E831;
	Mon, 27 Sep 2021 15:16:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEECC6E860
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Sep 2021 15:16:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10120"; a="224558319"
X-IronPort-AV: E=Sophos;i="5.85,326,1624345200"; d="scan'208";a="224558319"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2021 08:16:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,326,1624345200"; d="scan'208";a="475953971"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga007.jf.intel.com with ESMTP; 27 Sep 2021 08:16:17 -0700
Received: from bgsmsx605.gar.corp.intel.com (10.67.234.7) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 27 Sep 2021 08:16:16 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX605.gar.corp.intel.com (10.67.234.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 27 Sep 2021 20:46:14 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2242.012;
 Mon, 27 Sep 2021 20:46:14 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/fbc: Allow FBC with Yf tiling
Thread-Index: AQHXsU5czHdkLJqSIUCHUJugTnssb6u4AggQ
Date: Mon, 27 Sep 2021 15:16:13 +0000
Message-ID: <1e066583caf64c439fea897d81f22412@intel.com>
References: <20210924141330.1515-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210924141330.1515-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/fbc: Allow FBC with Yf tiling
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVmlsbGUgU3lyamFsYSA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgU2VwdGVtYmVy
IDI0LCAyMDIxIDc6NDQgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
Cj4gQ2M6IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBb
UEFUQ0hdIGRybS9pOTE1L2ZiYzogQWxsb3cgRkJDIHdpdGggWWYgdGlsaW5nDQo+IA0KPiBGcm9t
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4g
RkJDK1lmIHRpbGluZyBzZWVtcyB0byB3b3JrIGp1c3QgZmluZSwgYW5kIHVubGlrZSB3aXRoIGxp
bmVhcg0KPiB0aGUgaGFyZHdhcmUgZG9lcyBhcHBlYXIgdG8gY29ycmVjdGx5IGNhbGN1bGF0ZSB0
aGUgQ0ZCIHN0cmlkZSB3aXRoIHVzaW5nIHRoZQ0KPiBvdmVycmlkZSBzdHJpZGUgb24gYm90aCBj
ZmwgYW5kIGdsay4gU28gbm8gbmVlZCBmb3IgYW55IGFkZGl0aW9uYWwgdHdlYWtzLg0KDQpMb29r
cyBHb29kIHRvIG1lLg0KUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRl
bC5jb20+DQoNCj4gQ2M6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+ICN2Mg0K
PiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJj
LmMgfCAxICsNCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQ0KPiANCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+IGluZGV4IDQ2ZjYyZmRmOWVl
ZS4uNjg3NDMxZmFmMDJmIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2ZiYy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZmJjLmMNCj4gQEAgLTc0Niw2ICs3NDYsNyBAQCBzdGF0aWMgYm9vbCB0aWxpbmdfaXNfdmFs
aWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiAgCXN3aXRjaCAobW9kaWZp
ZXIpIHsNCj4gIAljYXNlIERSTV9GT1JNQVRfTU9EX0xJTkVBUjoNCj4gIAljYXNlIEk5MTVfRk9S
TUFUX01PRF9ZX1RJTEVEOg0KPiArCWNhc2UgSTkxNV9GT1JNQVRfTU9EX1lmX1RJTEVEOg0KPiAg
CQlyZXR1cm4gRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDk7DQo+ICAJY2FzZSBJOTE1X0ZPUk1B
VF9NT0RfWF9USUxFRDoNCj4gIAkJcmV0dXJuIHRydWU7DQo+IC0tDQo+IDIuMzIuMA0KDQo=
