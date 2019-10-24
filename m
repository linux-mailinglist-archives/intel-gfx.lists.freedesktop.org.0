Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1921E2EC6
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 12:25:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E11A89E8C;
	Thu, 24 Oct 2019 10:25:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9C4089ECD
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 10:25:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 03:25:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,224,1569308400"; d="scan'208";a="192142359"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
 by orsmga008.jf.intel.com with ESMTP; 24 Oct 2019 03:25:28 -0700
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.185]) by
 IRSMSX101.ger.corp.intel.com ([169.254.1.76]) with mapi id 14.03.0439.000;
 Thu, 24 Oct 2019 11:25:27 +0100
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 01/13] drm/i915: Add debugs to
 distingiush a cd2x update from a full cdclk pll update
Thread-Index: AQHVg48YK38X/yJoa0eHA8gQBnPYaKdpkiYA
Date: Thu, 24 Oct 2019 10:25:26 +0000
Message-ID: <67d081b134fa3c217b1b8bd00b4cd9411dbdf7ba.camel@intel.com>
References: <20191015193035.25982-1-ville.syrjala@linux.intel.com>
 <20191015193035.25982-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20191015193035.25982-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.89]
Content-ID: <CC09BAA0715B9D42BDA09912AF8F9E4C@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 01/13] drm/i915: Add debugs to
 distingiush a cd2x update from a full cdclk pll update
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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

T24gVHVlLCAyMDE5LTEwLTE1IGF0IDIyOjMwICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gVG8gbWFrZSB0aGUgbG9ncyBhIGJpdCBsZXNzIGNvbmZ1c2luZyBsZXQncyB0b3NzIGlu
IHNvbWUNCj4gZGVidWcgcHJpbnRzIHRvIGluZGljYXRlIHdoZXRoZXIgdGhlIGNkY2xrIHJlcHJv
Z3JhbW1pbmcNCj4gaXMgZ29pbmcgdG8gaGFwcGVuIHdpdGggYSBzaW5nbGUgcGlwZSBhY3RpdmUg
b3Igd2hldGhlciB3ZQ0KPiBuZWVkIHRvIHR1cm4gYWxsIHBpcGVzIG9mZiBmb3IgdGhlIGR1cmF0
aW9uLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0
YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPg0KDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIHwgNSArKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQs
IDUgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfY2RjbGsuYw0KPiBpbmRleCAzZDg2Nzk2M2E2ZDEuLjZlYWViYzM4ZWUwMSAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0KPiBAQCAtMjM0
Myw2ICsyMzQzLDkgQEAgaW50IGludGVsX21vZGVzZXRfY2FsY19jZGNsayhzdHJ1Y3QNCj4gaW50
ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkNCj4gIAkJCXJldHVybiByZXQ7DQo+ICANCj4gIAkJc3Rh
dGUtPmNkY2xrLnBpcGUgPSBwaXBlOw0KPiArDQo+ICsJCURSTV9ERUJVR19LTVMoIkNhbiBjaGFu
Z2UgY2RjbGsgd2l0aCBwaXBlICVjIGFjdGl2ZVxuIiwNCj4gKwkJCSAgICAgIHBpcGVfbmFtZShw
aXBlKSk7DQo+ICAJfSBlbHNlIGlmIChpbnRlbF9jZGNsa19uZWVkc19tb2Rlc2V0KCZkZXZfcHJp
di0+Y2RjbGsuYWN0dWFsLA0KPiAgCQkJCQkgICAgICZzdGF0ZS0+Y2RjbGsuYWN0dWFsKSkgew0K
PiAgCQlyZXQgPSBpbnRlbF9tb2Rlc2V0X2FsbF9waXBlcyhzdGF0ZSk7DQo+IEBAIC0yMzUwLDYg
KzIzNTMsOCBAQCBpbnQgaW50ZWxfbW9kZXNldF9jYWxjX2NkY2xrKHN0cnVjdA0KPiBpbnRlbF9h
dG9taWNfc3RhdGUgKnN0YXRlKQ0KPiAgCQkJcmV0dXJuIHJldDsNCj4gIA0KPiAgCQlzdGF0ZS0+
Y2RjbGsucGlwZSA9IElOVkFMSURfUElQRTsNCj4gKw0KPiArCQlEUk1fREVCVUdfS01TKCJNb2Rl
c2V0IHJlcXVpcmVkIGZvciBjZGNsayBjaGFuZ2VcbiIpOw0KPiAgCX0NCj4gIA0KPiAgCURSTV9E
RUJVR19LTVMoIk5ldyBjZGNsayBjYWxjdWxhdGVkIHRvIGJlIGxvZ2ljYWwgJXUga0h6LA0KPiBh
Y3R1YWwgJXUga0h6XG4iLA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
