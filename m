Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B86A71F210B
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jun 2020 22:53:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E839089D89;
	Mon,  8 Jun 2020 20:53:16 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAE2589D89
 for <Intel-gfx@lists.freedesktop.org>; Mon,  8 Jun 2020 20:53:15 +0000 (UTC)
IronPort-SDR: b1miaH4NIcN5+L0VwJuAaPB2yO+5QR0aUTJlfXXCuS+qcy1c9bdB3Ffa1GRFGsiP/LzK3nk1nF
 3XtxdzUznN/Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2020 13:53:15 -0700
IronPort-SDR: xZ7vw0UhqCR2gNYfJNLTV/J9AsFrlyPEgKrORuwPMIPfCEtEIhyiGj74IGFTi1nbABM/QnyoHB
 G8Co707BJKXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,489,1583222400"; d="scan'208";a="313998727"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by FMSMGA003.fm.intel.com with ESMTP; 08 Jun 2020 13:53:15 -0700
Received: from fmsmsx102.amr.corp.intel.com (10.18.124.200) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 8 Jun 2020 13:53:15 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.171]) by
 FMSMSX102.amr.corp.intel.com ([169.254.10.33]) with mapi id 14.03.0439.000;
 Mon, 8 Jun 2020 13:53:14 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/tc: fix the reset of ln0
Thread-Index: AQHWPdXK1olPceotmUKbR4+CTZ9IIajPp7gA
Date: Mon, 8 Jun 2020 20:53:14 +0000
Message-ID: <f45396c86bf9f0409a26ab543f253289db1acc3d.camel@intel.com>
References: <20200608204537.28468-1-khaled.almahallawy@intel.com>
In-Reply-To: <20200608204537.28468-1-khaled.almahallawy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.255.72.168]
Content-ID: <EF110EC0AF6DB444BF684AC4932666A7@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tc: fix the reset of ln0
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

T24gTW9uLCAyMDIwLTA2LTA4IGF0IDEzOjQ1IC0wNzAwLCBLaGFsZWQgQWxtYWhhbGxhd3kgd3Jv
dGU6DQo+IFNldHRpbmcgbG4wIHNpbWlsYXIgdG8gbG4xDQoNClJldmlld2VkLWJ5OiBKb3PDqSBS
b2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiANCj4gU2lnbmVkLW9m
Zi1ieTogS2hhbGVkIEFsbWFoYWxsYXd5IDxraGFsZWQuYWxtYWhhbGxhd3lAaW50ZWwuY29tPg0K
PiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCAyICst
DQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBpbmRleCA5NmVhYTRi
MzljNjguLjFjMGMzNjk1NzNlNyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kZGkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RkaS5jDQo+IEBAIC0zMDI1LDcgKzMwMjUsNyBAQCBpY2xfcHJvZ3JhbV9tZ19kcF9t
b2RlKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0LA0KPiAgCQlsbjEg
PSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBNR19EUF9NT0RFKDEsIHRjX3BvcnQpKTsNCj4gIAl9
DQo+ICANCj4gLQlsbjAgJj0gfihNR19EUF9NT0RFX0NGR19EUF9YMV9NT0RFIHwgTUdfRFBfTU9E
RV9DRkdfRFBfWDFfTU9ERSk7DQo+ICsJbG4wICY9IH4oTUdfRFBfTU9ERV9DRkdfRFBfWDFfTU9E
RSB8IE1HX0RQX01PREVfQ0ZHX0RQX1gyX01PREUpOw0KPiAgCWxuMSAmPSB+KE1HX0RQX01PREVf
Q0ZHX0RQX1gxX01PREUgfCBNR19EUF9NT0RFX0NGR19EUF9YMl9NT0RFKTsNCj4gIA0KPiAgCS8q
IERQUEFUQyAqLw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
