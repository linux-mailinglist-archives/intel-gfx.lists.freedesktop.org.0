Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4162326E55D
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Sep 2020 21:42:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86E446EC80;
	Thu, 17 Sep 2020 19:42:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 639046E2ED
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Sep 2020 19:42:05 +0000 (UTC)
IronPort-SDR: kAvHnQoUbnIS9lrn/k+kwBuRjDmL/H3cu38aUZEUrpMihZm6RPMautYdy4G5YwKj+HxhIpejCi
 TuKJ/FqzN3+Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="139784455"
X-IronPort-AV: E=Sophos;i="5.77,271,1596524400"; d="scan'208";a="139784455"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 12:42:04 -0700
IronPort-SDR: wwTbIentUfWBblVC9KFQqTC0D2WoYNwOOW/NFox2Uv3lTWoAeqj2LYlDddV4QXZIAlfXkJaUGE
 g7soJ4b46PVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,271,1596524400"; d="scan'208";a="289090571"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 17 Sep 2020 12:42:04 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 17 Sep 2020 12:42:03 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX604.gar.corp.intel.com (10.67.234.6) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 18 Sep 2020 01:12:01 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Fri, 18 Sep 2020 01:12:01 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 06/20] drm/i915: Shuffle chv_cgm_gamma_pack()
 around a bit
Thread-Index: AQHWXH8+fokiJSqsFkKmcN84w4LHXqltnA3g
Date: Thu, 17 Sep 2020 19:42:00 +0000
Message-ID: <5d96be5b3f914dc49cf9ab9658291511@intel.com>
References: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
 <20200717211345.26851-7-ville.syrjala@linux.intel.com>
In-Reply-To: <20200717211345.26851-7-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 06/20] drm/i915: Shuffle
 chv_cgm_gamma_pack() around a bit
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFNhdHVyZGF5LCBKdWx5IDE4LCAyMDIwIDI6NDQgQU0NCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVsLWdmeF0g
W1BBVENIIDA2LzIwXSBkcm0vaTkxNTogU2h1ZmZsZSBjaHZfY2dtX2dhbW1hX3BhY2soKQ0KPiBh
cm91bmQgYSBiaXQNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+DQo+IA0KPiBNb3ZlIGNodl9jZ21fZ2FtbWFfcGFjaygpIG5leHQgdG8g
dGhlIG90aGVyIENHTSBnYW1tYSBmdW5jdGlvbnMuDQo+IFJpZ2h0IG5vdyBpdCdzIHN0dWNrIGlu
IHRoZSBtaWRkbGUgb2YgdGhlIENHTSBkZWdhbW1hIGZ1bmN0aW9ucy4NCg0KUmV2aWV3ZWQtYnk6
IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMgfCAxNCArKysrKysr
LS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMo
LSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2NvbG9yLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMN
Cj4gaW5kZXggMzdhNGZlZGU3YmMwLi4yNjBiYmJkNWJiZjIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYw0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMNCj4gQEAgLTEwMzAsMTMgKzEwMzAsNiBA
QCBzdGF0aWMgdTMyIGNodl9jZ21fZGVnYW1tYV91ZHcoY29uc3Qgc3RydWN0DQo+IGRybV9jb2xv
cl9sdXQgKmNvbG9yKQ0KPiAgCXJldHVybiBkcm1fY29sb3JfbHV0X2V4dHJhY3QoY29sb3ItPnJl
ZCwgMTQpOyAgfQ0KPiANCj4gLXN0YXRpYyB2b2lkIGNodl9jZ21fZ2FtbWFfcGFjayhzdHJ1Y3Qg
ZHJtX2NvbG9yX2x1dCAqZW50cnksIHUzMiBsZHcsIHUzMg0KPiB1ZHcpIC17DQo+IC0JZW50cnkt
PmdyZWVuID0NCj4gaW50ZWxfY29sb3JfbHV0X3BhY2soUkVHX0ZJRUxEX0dFVChDR01fUElQRV9H
QU1NQV9HUkVFTl9NQVNLLCBsZHcpLA0KPiAxMCk7DQo+IC0JZW50cnktPmJsdWUgPQ0KPiBpbnRl
bF9jb2xvcl9sdXRfcGFjayhSRUdfRklFTERfR0VUKENHTV9QSVBFX0dBTU1BX0JMVUVfTUFTSywg
bGR3KSwgMTApOw0KPiAtCWVudHJ5LT5yZWQgPQ0KPiBpbnRlbF9jb2xvcl9sdXRfcGFjayhSRUdf
RklFTERfR0VUKENHTV9QSVBFX0dBTU1BX1JFRF9NQVNLLCB1ZHcpLCAxMCk7DQo+IC19DQo+IC0N
Cj4gIHN0YXRpYyB2b2lkIGNodl9sb2FkX2NnbV9kZWdhbW1hKHN0cnVjdCBpbnRlbF9jcnRjICpj
cnRjLA0KPiAgCQkJCSBjb25zdCBzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2IgKmJsb2IpICB7IEBA
IC0NCj4gMTA2NCw2ICsxMDU3LDEzIEBAIHN0YXRpYyB1MzIgY2h2X2NnbV9nYW1tYV91ZHcoY29u
c3Qgc3RydWN0DQo+IGRybV9jb2xvcl9sdXQgKmNvbG9yKQ0KPiAgCXJldHVybiBkcm1fY29sb3Jf
bHV0X2V4dHJhY3QoY29sb3ItPnJlZCwgMTApOyAgfQ0KPiANCj4gK3N0YXRpYyB2b2lkIGNodl9j
Z21fZ2FtbWFfcGFjayhzdHJ1Y3QgZHJtX2NvbG9yX2x1dCAqZW50cnksIHUzMiBsZHcsDQo+ICt1
MzIgdWR3KSB7DQo+ICsJZW50cnktPmdyZWVuID0NCj4gaW50ZWxfY29sb3JfbHV0X3BhY2soUkVH
X0ZJRUxEX0dFVChDR01fUElQRV9HQU1NQV9HUkVFTl9NQVNLLCBsZHcpLA0KPiAxMCk7DQo+ICsJ
ZW50cnktPmJsdWUgPQ0KPiBpbnRlbF9jb2xvcl9sdXRfcGFjayhSRUdfRklFTERfR0VUKENHTV9Q
SVBFX0dBTU1BX0JMVUVfTUFTSywgbGR3KSwgMTApOw0KPiArCWVudHJ5LT5yZWQgPQ0KPiAraW50
ZWxfY29sb3JfbHV0X3BhY2soUkVHX0ZJRUxEX0dFVChDR01fUElQRV9HQU1NQV9SRURfTUFTSywg
dWR3KSwNCj4gMTApOw0KPiArfQ0KPiArDQo+ICBzdGF0aWMgdm9pZCBjaHZfbG9hZF9jZ21fZ2Ft
bWEoc3RydWN0IGludGVsX2NydGMgKmNydGMsDQo+ICAJCQkgICAgICAgY29uc3Qgc3RydWN0IGRy
bV9wcm9wZXJ0eV9ibG9iICpibG9iKSAgew0KPiAtLQ0KPiAyLjI2LjINCj4gDQo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IEludGVsLWdmeCBtYWls
aW5nIGxpc3QNCj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
