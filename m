Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F65F26E708
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Sep 2020 23:03:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02BC46E32F;
	Thu, 17 Sep 2020 21:03:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40C416E32F
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Sep 2020 21:03:23 +0000 (UTC)
IronPort-SDR: 68N00Vt60BMlFo9mxZQnMlIo9aKv2RD7H7FEIK5AQguFW6bJkvsuYfrq8m05Z79wZrnXlpHKLr
 gJuNlYJgo3mA==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="139798802"
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="139798802"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 14:03:20 -0700
IronPort-SDR: 6fFMmsIGYCsE6jeH2xs1ZaTvxvPgW3xfvjlz5z2A1KApni/ZqKJRcYVmOLc7lSatCfI2d0mja1
 PSgLheECN8uA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="380667714"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga001.jf.intel.com with ESMTP; 17 Sep 2020 14:03:19 -0700
Received: from bgsmsx605.gar.corp.intel.com (10.67.234.7) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 17 Sep 2020 14:03:18 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX605.gar.corp.intel.com (10.67.234.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 18 Sep 2020 02:33:15 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Fri, 18 Sep 2020 02:33:15 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 18/20] drm/i915: Extract ilk_crtc_has_gamma()
 & co.
Thread-Index: AQHWXH9SDTfUAIOnQkOH30rXUqlo3qltsrhQ
Date: Thu, 17 Sep 2020 21:03:15 +0000
Message-ID: <91d624a45cc3402f815f824a712c0b49@intel.com>
References: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
 <20200717211345.26851-19-ville.syrjala@linux.intel.com>
In-Reply-To: <20200717211345.26851-19-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 18/20] drm/i915: Extract
 ilk_crtc_has_gamma() & co.
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
W1BBVENIIDE4LzIwXSBkcm0vaTkxNTogRXh0cmFjdCBpbGtfY3J0Y19oYXNfZ2FtbWEoKSAmIGNv
Lg0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4NCj4gDQo+IEV4dHJhY3QgYSBmZXcgaGVscGVycyB0byBjaGVjayB3aGV0aGVyIHRoZSBo
dyBkZWdhbW1hIG9yIGdhbW1hIExVVCBpcw0KPiBlbmFibGVkLg0KDQpSZXZpZXdlZC1ieTogVW1h
IFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYyB8IDI3ICsrKysrKysrKysr
KysrKystLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspLCA3IGRlbGV0
aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfY29sb3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29s
b3IuYw0KPiBpbmRleCBhY2YzZDE1MmVkZmUuLmY3MTRjODdkOGU0MiAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jDQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYw0KPiBAQCAtMTYyOCwxMiArMTYy
OCwxNSBAQCBzdGF0aWMgaW50IGk5eHhfZ2FtbWFfcHJlY2lzaW9uKGNvbnN0IHN0cnVjdA0KPiBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiAgCX0NCj4gIH0NCj4gDQo+ICtzdGF0aWMg
Ym9vbCBpbGtfY3J0Y19oYXNfZ2FtbWEoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4g
KypjcnRjX3N0YXRlKSB7DQo+ICsJcmV0dXJuIGNydGNfc3RhdGUtPmdhbW1hX2VuYWJsZSAmJg0K
PiArCQkoY3J0Y19zdGF0ZS0+Y3NjX21vZGUgJiBDU0NfUE9TSVRJT05fQkVGT1JFX0dBTU1BKSAh
PSAwOyB9DQo+ICsNCj4gIHN0YXRpYyBpbnQgaWxrX2dhbW1hX3ByZWNpc2lvbihjb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkgIHsNCj4gLQlpZiAoIWNydGNfc3RhdGUt
PmdhbW1hX2VuYWJsZSkNCj4gLQkJcmV0dXJuIDA7DQo+IC0NCj4gLQlpZiAoKGNydGNfc3RhdGUt
PmNzY19tb2RlICYgQ1NDX1BPU0lUSU9OX0JFRk9SRV9HQU1NQSkgPT0gMCkNCj4gKwlpZiAoIWls
a19jcnRjX2hhc19nYW1tYShjcnRjX3N0YXRlKSkNCj4gIAkJcmV0dXJuIDA7DQo+IA0KPiAgCXN3
aXRjaCAoY3J0Y19zdGF0ZS0+Z2FtbWFfbW9kZSkgew0KPiBAQCAtMTY3MSw5ICsxNjc0LDE5IEBA
IHN0YXRpYyBpbnQgZ2xrX2dhbW1hX3ByZWNpc2lvbihjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gIAl9DQo+ICB9DQo+IA0KPiArc3RhdGljIGJvb2wgaWNs
X2NydGNfaGFzX2RlZ2FtbWEoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKypjcnRj
X3N0YXRlKSB7DQo+ICsJcmV0dXJuIGNydGNfc3RhdGUtPmdhbW1hX21vZGUgJiBQUkVfQ1NDX0dB
TU1BX0VOQUJMRTsgfQ0KPiArDQo+ICtzdGF0aWMgYm9vbCBpY2xfY3J0Y19oYXNfZ2FtbWEoY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKypjcnRjX3N0YXRlKSB7DQo+ICsJcmV0dXJu
IGNydGNfc3RhdGUtPmdhbW1hX21vZGUgJiBQT1NUX0NTQ19HQU1NQV9FTkFCTEU7IH0NCj4gKw0K
PiAgc3RhdGljIGludCBpY2xfZ2FtbWFfcHJlY2lzaW9uKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlKSAgew0KPiAtCWlmICgoY3J0Y19zdGF0ZS0+Z2FtbWFfbW9kZSAm
IFBPU1RfQ1NDX0dBTU1BX0VOQUJMRSkgPT0gMCkNCj4gKwlpZiAoIWljbF9jcnRjX2hhc19nYW1t
YShjcnRjX3N0YXRlKSkNCj4gIAkJcmV0dXJuIDA7DQo+IA0KPiAgCXN3aXRjaCAoY3J0Y19zdGF0
ZS0+Z2FtbWFfbW9kZSAmIEdBTU1BX01PREVfTU9ERV9NQVNLKSB7DQo+IEBAIC0yMjQxLDEwICsy
MjU0LDEwIEBAIHN0YXRpYyB2b2lkIGljbF9yZWFkX2x1dHMoc3RydWN0IGludGVsX2NydGNfc3Rh
dGUNCj4gKmNydGNfc3RhdGUpICB7DQo+ICAJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19p
bnRlbF9jcnRjKGNydGNfc3RhdGUtPnVhcGkuY3J0Yyk7DQo+IA0KPiAtCWlmIChjcnRjX3N0YXRl
LT5nYW1tYV9tb2RlICYgUFJFX0NTQ19HQU1NQV9FTkFCTEUpDQo+ICsJaWYgKGljbF9jcnRjX2hh
c19kZWdhbW1hKGNydGNfc3RhdGUpKQ0KPiAgCQljcnRjX3N0YXRlLT5ody5kZWdhbW1hX2x1dCA9
IGdsa19yZWFkX2RlZ2FtbWFfbHV0KGNydGMpOw0KPiANCj4gLQlpZiAoKGNydGNfc3RhdGUtPmdh
bW1hX21vZGUgJiBQT1NUX0NTQ19HQU1NQV9FTkFCTEUpID09IDApDQo+ICsJaWYgKCFpY2xfY3J0
Y19oYXNfZ2FtbWEoY3J0Y19zdGF0ZSkpDQo+ICAJCXJldHVybjsNCj4gDQo+ICAJc3dpdGNoIChj
cnRjX3N0YXRlLT5nYW1tYV9tb2RlICYgR0FNTUFfTU9ERV9NT0RFX01BU0spIHsNCj4gLS0NCj4g
Mi4yNi4yDQo+IA0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXw0KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0DQo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcNCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
