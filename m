Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE00126E6FD
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Sep 2020 22:59:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B36206E043;
	Thu, 17 Sep 2020 20:58:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25B2C6E043
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Sep 2020 20:58:56 +0000 (UTC)
IronPort-SDR: ceSJOQleLpycri9+SLzcxrWupUKffCrPHwbsYZ6VHjWN/k1YLKcZVvm4l770f1CqDTaiuOEq40
 yRFRWrPUZI4g==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="159848733"
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="159848733"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 13:58:52 -0700
IronPort-SDR: OyWfPKlagVB2YFw+nv5mhlZ0WAXAAvAgDBvvbQGPHvH9UFqFJCssBJjpBv7OW5MG3NG03/uap9
 mgLO/aXE3ztQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="507889207"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 17 Sep 2020 13:58:51 -0700
Received: from bgsmsx603.gar.corp.intel.com (10.109.78.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 17 Sep 2020 13:58:51 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX603.gar.corp.intel.com (10.109.78.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 18 Sep 2020 02:28:49 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Fri, 18 Sep 2020 02:28:48 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 16/20] drm/i915: Make ilk_read_luts() capable
 of degamma readout
Thread-Index: AQHWXH9MjoNNAbHes0yTBlDV6K6hPKltsWqA
Date: Thu, 17 Sep 2020 20:58:48 +0000
Message-ID: <0c71a907fc394752900bac68eded284c@intel.com>
References: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
 <20200717211345.26851-17-ville.syrjala@linux.intel.com>
In-Reply-To: <20200717211345.26851-17-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 16/20] drm/i915: Make ilk_read_luts()
 capable of degamma readout
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
W1BBVENIIDE2LzIwXSBkcm0vaTkxNTogTWFrZSBpbGtfcmVhZF9sdXRzKCkgY2FwYWJsZSBvZg0K
PiBkZWdhbW1hIHJlYWRvdXQNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBKdXN0IGxpa2UgaXZiKywgaWxrL3NuYiBjYW4g
c2VsZWN0IHdoZXRoZXIgdGhlIGh3IGx1dCBhY3RzIGFzIGdhbW1hIG9yIGRlZ2FtbWEuDQo+IE1h
a2UgdGhlIHJlYWRvdXQgY29nbml6YW50IG9mIHRoYXQgZmFjdC4NCg0KUmV2aWV3ZWQtYnk6IFVt
YSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMgfCAxMCArKysrKy0tLS0t
DQo+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3Iu
Yw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYw0KPiBpbmRl
eCAxMmE0MWZiNGE5OGMuLjdmOWUyNjQxOWI1NiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYw0KPiBAQCAtMTk3NywxOSArMTk3NywxOSBAQCBzdGF0
aWMgc3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iDQo+ICppbGtfcmVhZF9sdXRfMTAoc3RydWN0IGlu
dGVsX2NydGMgKmNydGMpICBzdGF0aWMgdm9pZCBpbGtfcmVhZF9sdXRzKHN0cnVjdA0KPiBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKSAgew0KPiAgCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRj
ID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT51YXBpLmNydGMpOw0KPiArCXN0cnVjdCBkcm1f
cHJvcGVydHlfYmxvYiAqKmJsb2IgPQ0KPiArCQljcnRjX3N0YXRlLT5jc2NfbW9kZSAmIENTQ19Q
T1NJVElPTl9CRUZPUkVfR0FNTUEgPw0KPiArCQkmY3J0Y19zdGF0ZS0+aHcuZ2FtbWFfbHV0IDog
JmNydGNfc3RhdGUtPmh3LmRlZ2FtbWFfbHV0Ow0KPiANCj4gIAlpZiAoIWNydGNfc3RhdGUtPmdh
bW1hX2VuYWJsZSkNCj4gIAkJcmV0dXJuOw0KPiANCj4gLQlpZiAoKGNydGNfc3RhdGUtPmNzY19t
b2RlICYgQ1NDX1BPU0lUSU9OX0JFRk9SRV9HQU1NQSkgPT0gMCkNCj4gLQkJcmV0dXJuOw0KPiAt
DQo+ICAJc3dpdGNoIChjcnRjX3N0YXRlLT5nYW1tYV9tb2RlKSB7DQo+ICAJY2FzZSBHQU1NQV9N
T0RFX01PREVfOEJJVDoNCj4gLQkJY3J0Y19zdGF0ZS0+aHcuZ2FtbWFfbHV0ID0gaWxrX3JlYWRf
bHV0XzgoY3J0Yyk7DQo+ICsJCSpibG9iID0gaWxrX3JlYWRfbHV0XzgoY3J0Yyk7DQo+ICAJCWJy
ZWFrOw0KPiAgCWNhc2UgR0FNTUFfTU9ERV9NT0RFXzEwQklUOg0KPiAtCQljcnRjX3N0YXRlLT5o
dy5nYW1tYV9sdXQgPSBpbGtfcmVhZF9sdXRfMTAoY3J0Yyk7DQo+ICsJCSpibG9iID0gaWxrX3Jl
YWRfbHV0XzEwKGNydGMpOw0KPiAgCQlicmVhazsNCj4gIAlkZWZhdWx0Og0KPiAgCQlNSVNTSU5H
X0NBU0UoY3J0Y19zdGF0ZS0+Z2FtbWFfbW9kZSk7DQo+IC0tDQo+IDIuMjYuMg0KPiANCj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdA0KPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IGh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4DQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
