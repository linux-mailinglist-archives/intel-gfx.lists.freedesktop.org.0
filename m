Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25EA449275B
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jan 2022 14:40:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7506110E142;
	Tue, 18 Jan 2022 13:40:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5215210E142
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jan 2022 13:40:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642513243; x=1674049243;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Ldm6VjV3Ojr1RqepwDqD9Ex5q/Kl17/iuizO6vQTXxE=;
 b=PcnG4rcfSEZybr6F2aG0oxaD7hbSrXJ4bz5B1lb9C/TNBrnk1KekPrbF
 zlQe0R2491rrOmGqoCusLcxX4lnebBalHcGuoa2AuJJDqfpgdJSxysdg8
 eR8pjlclF+6uShDU85UYTJ4ZXc8MStNAI44aJCD1O9rpOqWa+zrYte7H1
 vI9y6Ny4QSzasxhZAJsv9MQObDoD0PdmlS6xDaeBtS6ci/bQone/Nc4RB
 bab201HwxovNC0Tm6L3YhSaLfw4wp8q6KW9DEeeVpIptxK7qac7qvN5nC
 NZosuy5Cxn4vA4mILrgrOyYMxMhttmWZpt9qRGEENh6eAdItKiS1klhxe w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="225493526"
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="225493526"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 05:40:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="671840933"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP; 18 Jan 2022 05:40:42 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 18 Jan 2022 05:40:42 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 18 Jan 2022 05:40:41 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2308.020;
 Tue, 18 Jan 2022 05:40:41 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 07/14] drm/i915: Clean up pre-skl primary
 plane registers
Thread-Index: AQHX5sfmylNrI8jR80mQW12KA+XKj6xgmnAAgAgqJgCAANZmAA==
Date: Tue, 18 Jan 2022 13:40:41 +0000
Message-ID: <a48b322c7bc9930348f999a9372205020dbb4f23.camel@intel.com>
References: <20211201152552.7821-1-ville.syrjala@linux.intel.com>
 <20211201152552.7821-8-ville.syrjala@linux.intel.com>
 <500a2ae59268fe4579ffcf1164589bf77791a2ad.camel@intel.com>
 <YeYP5AakqGlkVXsE@intel.com>
In-Reply-To: <YeYP5AakqGlkVXsE@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <C8BD4523ED29E3458A32CC51B7EE542C@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 07/14] drm/i915: Clean up pre-skl primary
 plane registers
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIyLTAxLTE4IGF0IDAyOjU1ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFdlZCwgSmFuIDEyLCAyMDIyIGF0IDA4OjEyOjMxUE0gKzAwMDAsIFNvdXphLCBKb3Nl
IHdyb3RlOg0KPiA+IE9uIFdlZCwgMjAyMS0xMi0wMSBhdCAxNzoyNSArMDIwMCwgVmlsbGUgU3ly
amFsYSB3cm90ZToNCj4gPiA+IEBAIC00MjcsOSArNDI3LDkgQEAgc3RhdGljIHZvaWQgaTl4eF9w
bGFuZV91cGRhdGVfbm9hcm0oc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwNCj4gPiA+ICAJCSAq
IHByb2dyYW0gd2hhdGV2ZXIgaXMgdGhlcmUuDQo+ID4gPiAgCQkgKi8NCj4gPiA+ICAJCWludGVs
X2RlX3dyaXRlX2Z3KGRldl9wcml2LCBEU1BQT1MoaTl4eF9wbGFuZSksDQo+ID4gPiAtCQkJCSAg
KGNydGNfeSA8PCAxNikgfCBjcnRjX3gpOw0KPiA+ID4gKwkJCQkgIERTUF9QT1NfWShjcnRjX3kp
IHwgRFNQX1BPU19YKGNydGNfeCkpOw0KPiA+ID4gIAkJaW50ZWxfZGVfd3JpdGVfZncoZGV2X3By
aXYsIERTUFNJWkUoaTl4eF9wbGFuZSksDQo+ID4gPiAtCQkJCSAgKChjcnRjX2ggLSAxKSA8PCAx
NikgfCAoY3J0Y193IC0gMSkpOw0KPiA+ID4gKwkJCQkgIERTUF9IRUlHSFQoY3J0Y19oIC0gMSkg
fCBEU1BfUE9TX1goY3J0Y193IC0gMSkpOw0KPiA+IA0KPiA+IERTUF9IRUlHSFQoY3J0Y19oIC0g
MSkgfCBEU1BfV0lEVEgoY3J0Y193IC0gMSkpOw0KPiANCj4gV2hvb3BzLiBUaGFua3MgZm9yIGNh
dGhjaW5nIHRoYXQuDQo+IA0KPiA8c25pcD4NCj4gPiA+ICsjZGVmaW5lICAgRFNQX0VOQUJMRQkJ
CVJFR19CSVQoMzEpDQo+ID4gDQo+ID4gSSByZWFsbHkgZG9uJ3QgbGlrZSBEU1AsIGl0IGlzIGJy
b2FkbHkgdXNlZCBhY3JvbnltIHRvIERpZ2l0YWwgU2lnbmFsIFByb2Nlc3NvcnMuDQo+ID4gV291
bGQgcHJlZmVyIHRvIGhhdmUgRElTUExBWSBvciBESVNQLg0KPiANCj4gVGhlIHJlZ2lzdGVycyBh
cmUgY2FsbGVkIERTUDxmb28+LCBzbyB0aGUgc3BlYyBtYWtlcyB0aGUgY2FzZSBmb3IgRFNQXy4N
Cj4gVGhlIHByb2JsZW0gd2l0aCBESVNQXy9ldGMuIGlzIHRoYXQgdGhlIG5hbWVzcGFjZSB0aGVu
IG1ha2VzIGl0IGEgYml0DQo+IGhhcmQgdG8gZmlndXJlIG91dCB3aGF0IHJlZ2lzdGVyIHRoZSBk
ZWZpbmVzIGJlbG9uZyB0by4NCj4gDQo+ID4gDQo+ID4gQW55d2F5cywgRFNQX0VOQUJMRSBzaG91
bGQgaGF2ZSBhbHNvIGhhdmUgcGxhbmUgb24gaXQuDQo+IA0KPiBEU1A9PWRpc3BsYXkgcGxhbmUu
IEFueSBtb3JlIHdvdWxkIGJlIHJlZHVuZGFudC4NCg0KRGFtbiwgZXZlbiB3b3JzdCwgdGhvdWdo
dCBpdCB3YXMgRGlTUGxheS4NCkJ1dCBpZiB0aGlzIGlzIHRoZSBCU3BlYyBuYW1lLCBnbyBhaGVh
ZCB3aXRoIGl0LiANCg0KPiANCj4gPiANCj4gPiBPdGhlciB0aGFuIGFib3ZlIGFuZCBhIG1pbm9y
IHR5cG8gcmVwb3J0ZWQgaW4gZ2VuZXJhbCBsb29rcyBnb29kIHRvIG1lIGJ1dCBpdCBhbHNvIGJy
b2tlIGJ1aWxkIGJlY2F1c2UgaXQgbWlzc2VkIEdWVCByZW5hbWVzLg0KPiANCj4gQWx3YXlzIGhh
cHBlbnMgdG8gbWUgOi8NCj4gDQoNCg==
