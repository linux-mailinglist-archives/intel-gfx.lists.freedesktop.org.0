Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 42585489096
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 08:15:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4780510FCA8;
	Mon, 10 Jan 2022 07:15:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 082F610FCA8
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jan 2022 07:15:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641798910; x=1673334910;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cac9Rky+FsdXOqOFRQO/5mO00JAWWoMlxj5K4DGs0ok=;
 b=JDxwaC4A7PzhisZLfu2HoGBqSsllv2rBwl9O7IzJKXGPrqiGQYsAngLj
 Bwk5R1RLG/WG02N0+xXpCdKnFSUhcV9W54hpRZ3wmgF5c3szv1jg3qu22
 uArbvKQszpmu0fra0R5uf9UCTDDCS2xJm94201/TbQpELeBXJyb96UN2K
 kcLMmPXIhFkoL5Vm8GnijVjB0EurFtYuJN2J1aB076761kYUleRU3S6Rf
 YMdu8rMgAL0qovLkfJxNQNTSmsqpGYFJRXK5DLZVz3L3k86vkZH7yZBI9
 Wbt19Es7XiLlyMUFKvy1sZ1qxapf5SWEYUSuysAgVB346UIV8r8wdqImB w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10222"; a="243368364"
X-IronPort-AV: E=Sophos;i="5.88,276,1635231600"; d="scan'208";a="243368364"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2022 23:15:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,276,1635231600"; d="scan'208";a="619348683"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga002.fm.intel.com with ESMTP; 09 Jan 2022 23:15:09 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Sun, 9 Jan 2022 23:15:08 -0800
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Sun, 9 Jan 2022 23:15:07 -0800
Received: from bgsmsx602.gar.corp.intel.com ([10.109.78.81]) by
 BGSMSX602.gar.corp.intel.com ([10.109.78.81]) with mapi id 15.01.2308.020;
 Mon, 10 Jan 2022 12:45:05 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "Lisovskiy, Stanislav"
 <stanislav.lisovskiy@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Enable second VDSC engine
 for higher moderates
Thread-Index: AQHXqK0inD+P6mZa3kyDbF0BuUUoBquixrYAgABcbgD//6kzAIAAE+QAgAAzeICAABDVgIAAB9CAgAAIagCAAF7qcP//s/qAgLlJ2RA=
Date: Mon, 10 Jan 2022 07:15:04 +0000
Message-ID: <03b4a5dab8384622b5c9baa2f92a9469@intel.com>
References: <20210913143923.21119-1-vandita.kulkarni@intel.com>
 <YUBPJrm1IZWwukS5@intel.com> <9dd78b35e9bf41f8816a0e7dedf75c64@intel.com>
 <YUBT3ljaDzwtXkwq@intel.com> <20210914085958.GA27514@intel.com>
 <87k0jj2wjo.fsf@intel.com> <20210914130425.GA27850@intel.com>
 <20210914133223.GA28709@intel.com> <87bl4v2r2h.fsf@intel.com>
 <c3813f0b1b18411abfdd9004378f2329@intel.com> <87zgsf19dc.fsf@intel.com>
In-Reply-To: <87zgsf19dc.fsf@intel.com>
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
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Enable second VDSC engine
 for higher moderates
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

UmV2aXNpdGluZyB0aGlzIHRocmVhZCBhZnRlciB1cGRhdGUgZnJvbSB0aGUgYnNwZWMuDQoNCj4g
LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmlrdWxhLCBKYW5pIDxqYW5pLm5p
a3VsYUBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIFNlcHRlbWJlciAxNCwgMjAyMSA4OjQw
IFBNDQo+IFRvOiBLdWxrYXJuaSwgVmFuZGl0YSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+
OyBMaXNvdnNraXksIFN0YW5pc2xhdg0KPiA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+
DQo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPjsg
aW50ZWwtDQo+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IE5hdmFyZSwgTWFuYXNpIEQgPG1h
bmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJFOiBbSW50ZWwtZ2Z4XSBbUEFU
Q0hdIGRybS9pOTE1L2Rpc3BsYXk6IEVuYWJsZSBzZWNvbmQgVkRTQw0KPiBlbmdpbmUgZm9yIGhp
Z2hlciBtb2RlcmF0ZXMNCj4gDQo+IE9uIFR1ZSwgMTQgU2VwIDIwMjEsICJLdWxrYXJuaSwgVmFu
ZGl0YSIgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPg0KPiB3cm90ZToNCj4gPj4gLS0tLS1P
cmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPj4gRnJvbTogTmlrdWxhLCBKYW5pIDxqYW5pLm5pa3Vs
YUBpbnRlbC5jb20+DQo+ID4+IFNlbnQ6IFR1ZXNkYXksIFNlcHRlbWJlciAxNCwgMjAyMSA3OjMz
IFBNDQo+ID4+IFRvOiBMaXNvdnNraXksIFN0YW5pc2xhdiA8c3RhbmlzbGF2Lmxpc292c2tpeUBp
bnRlbC5jb20+DQo+ID4+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPjsgS3Vsa2FybmksIFZhbmRpdGENCj4gPj4gPHZhbmRpdGEua3Vsa2FybmlAaW50
ZWwuY29tPjsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsNCj4gPj4gTmF2YXJlLCBN
YW5hc2kgRCA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4NCj4gPj4gU3ViamVjdDogUmU6IFtJ
bnRlbC1nZnhdIFtQQVRDSF0gZHJtL2k5MTUvZGlzcGxheTogRW5hYmxlIHNlY29uZCBWRFNDDQo+
ID4+IGVuZ2luZSBmb3IgaGlnaGVyIG1vZGVyYXRlcw0KPiA+Pg0KPiA+PiBPbiBUdWUsIDE0IFNl
cCAyMDIxLCAiTGlzb3Zza2l5LCBTdGFuaXNsYXYiDQo+ID4+IDxzdGFuaXNsYXYubGlzb3Zza2l5
QGludGVsLmNvbT4NCj4gPj4gd3JvdGU6DQo+ID4+ID4gT24gVHVlLCBTZXAgMTQsIDIwMjEgYXQg
MDQ6MDQ6MjVQTSArMDMwMCwgTGlzb3Zza2l5LCBTdGFuaXNsYXYgd3JvdGU6DQo+ID4+ID4+IE9u
IFR1ZSwgU2VwIDE0LCAyMDIxIGF0IDAzOjA0OjExUE0gKzAzMDAsIEphbmkgTmlrdWxhIHdyb3Rl
Og0KPiA+PiA+PiA+IE9uIFR1ZSwgMTQgU2VwIDIwMjEsICJMaXNvdnNraXksIFN0YW5pc2xhdiIN
Cj4gPj4gPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPiB3cm90ZToNCj4gPj4gPj4gPiA+
IE9uIFR1ZSwgU2VwIDE0LCAyMDIxIGF0IDEwOjQ4OjQ2QU0gKzAzMDAsIFZpbGxlIFN5cmrDpGzD
pCB3cm90ZToNCj4gPj4gPj4gPiA+PiBPbiBUdWUsIFNlcCAxNCwgMjAyMSBhdCAwNzozMTo0NkFN
ICswMDAwLCBLdWxrYXJuaSwgVmFuZGl0YQ0KPiB3cm90ZToNCj4gPj4gPj4gPiA+PiA+ID4gLS0t
LS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPj4gPj4gPiA+PiA+ID4gRnJvbTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPj4gPj4gPiA+PiA+ID4g
U2VudDogVHVlc2RheSwgU2VwdGVtYmVyIDE0LCAyMDIxIDEyOjU5IFBNDQo+ID4+ID4+ID4gPj4g
PiA+IFRvOiBLdWxrYXJuaSwgVmFuZGl0YSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+DQo+
ID4+ID4+ID4gPj4gPiA+IENjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBOaWt1
bGEsIEphbmkNCj4gPj4gPj4gPiA+PiA+ID4gPGphbmkubmlrdWxhQGludGVsLmNvbT47IE5hdmFy
ZSwgTWFuYXNpIEQNCj4gPj4gPj4gPiA+PiA+ID4gPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+
DQo+ID4+ID4+ID4gPj4gPiA+IFN1YmplY3Q6IFJlOiBbSW50ZWwtZ2Z4XSBbUEFUQ0hdIGRybS9p
OTE1L2Rpc3BsYXk6IEVuYWJsZQ0KPiA+PiA+PiA+ID4+ID4gPiBzZWNvbmQgVkRTQyBlbmdpbmUg
Zm9yIGhpZ2hlciBtb2RlcmF0ZXMNCj4gPj4gPj4gPiA+PiA+ID4NCj4gPj4gPj4gPiA+PiA+ID4g
T24gTW9uLCBTZXAgMTMsIDIwMjEgYXQgMDg6MDk6MjNQTSArMDUzMCwgVmFuZGl0YQ0KPiA+PiA+
PiA+ID4+ID4gPiBLdWxrYXJuaQ0KPiA+PiB3cm90ZToNCj4gPj4gPj4gPiA+PiA+ID4gPiBFYWNo
IFZEU0Mgb3BlcmF0ZXMgd2l0aCAxcHBjIHRocm91Z2hwdXQsIGhlbmNlIGVuYWJsZQ0KPiA+PiA+
PiA+ID4+ID4gPiA+IHRoZSBzZWNvbmQgVkRTQyBlbmdpbmUgd2hlbiBtb2RlcmF0ZSBpcyBoaWdo
ZXIgdGhhdCB0aGUNCj4gPj4gPj4gPiA+PiA+ID4gPiBjdXJyZW50DQo+ID4+IGNkY2xrLg0KPiA+
PiA+PiA+ID4+ID4gPiA+DQo+ID4+ID4+ID4gPj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogVmFuZGl0
YSBLdWxrYXJuaQ0KPiA+PiA+PiA+ID4+ID4gPiA+IDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNv
bT4NCj4gPj4gPj4gPiA+PiA+ID4gPiAtLS0NCj4gPj4gPj4gPiA+PiA+ID4gPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgMTINCj4gPj4gPj4gPiA+PiA+ID4gPiAr
KysrKysrKysrLS0NCj4gPj4gPj4gPiA+PiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2Vy
dGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+ID4+ID4+ID4gPj4gPiA+ID4NCj4gPj4gPj4gPiA+
PiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jDQo+ID4+ID4+ID4gPj4gPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMNCj4gPj4gPj4gPiA+PiA+ID4gPiBpbmRleCAxNjFjMzNiMmM4NjkuLjU1ODc4ZjY1
ZjcyNCAxMDA2NDQNCj4gPj4gPj4gPiA+PiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPj4gPj4gPiA+PiA+ID4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPj4gPj4gPiA+PiA+ID4gPiBAQCAtNzAs
NiArNzAsNyBAQA0KPiA+PiA+PiA+ID4+ID4gPiA+ICAjaW5jbHVkZSAiaW50ZWxfdGMuaCINCj4g
Pj4gPj4gPiA+PiA+ID4gPiAgI2luY2x1ZGUgImludGVsX3Zkc2MuaCINCj4gPj4gPj4gPiA+PiA+
ID4gPiAgI2luY2x1ZGUgImludGVsX3Zyci5oIg0KPiA+PiA+PiA+ID4+ID4gPiA+ICsjaW5jbHVk
ZSAiaW50ZWxfY2RjbGsuaCINCj4gPj4gPj4gPiA+PiA+ID4gPg0KPiA+PiA+PiA+ID4+ID4gPiA+
ICAjZGVmaW5lIERQX0RQUlhfRVNJX0xFTiAxNA0KPiA+PiA+PiA+ID4+ID4gPiA+DQo+ID4+ID4+
ID4gPj4gPiA+ID4gQEAgLTEyOTEsMTAgKzEyOTIsMTMgQEAgc3RhdGljIGludA0KPiA+PiA+PiA+
ID4+ID4gPiA+IGludGVsX2RwX2RzY19jb21wdXRlX2NvbmZpZyhzdHJ1Y3QNCj4gPj4gPj4gPiA+
PiA+ID4gaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+PiA+PiA+ID4+ID4gPiA+ICAJCQkJICAgICAg
IHN0cnVjdA0KPiBkcm1fY29ubmVjdG9yX3N0YXRlDQo+ID4+ICpjb25uX3N0YXRlLA0KPiA+PiA+
PiA+ID4+ID4gPiA+ICAJCQkJICAgICAgIHN0cnVjdCBsaW5rX2NvbmZpZ19saW1pdHMNCj4gKmxp
bWl0cykgIHsNCj4gPj4gPj4gPiA+PiA+ID4gPiArCXN0cnVjdCBpbnRlbF9jZGNsa19zdGF0ZSAq
Y2RjbGtfc3RhdGU7DQo+ID4+ID4+ID4gPj4gPiA+ID4gIAlzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9w
b3J0ICpkaWdfcG9ydCA9DQo+ID4+IGRwX3RvX2RpZ19wb3J0KGludGVsX2RwKTsNCj4gPj4gPj4g
PiA+PiA+ID4gPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9DQo+IHRvX2k5
MTUoZGlnX3BvcnQtDQo+ID4+ID4+ID4gPj4gPiA+ID5iYXNlLmJhc2UuZGV2KTsNCj4gPj4gPj4g
PiA+PiA+ID4gPiAgCWNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICphZGp1c3RlZF9tb2Rl
ID0NCj4gPj4gPj4gPiA+PiA+ID4gPiAgCQkmcGlwZV9jb25maWctPmh3LmFkanVzdGVkX21vZGU7
DQo+ID4+ID4+ID4gPj4gPiA+ID4gKwlzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSA9
DQo+ID4+ID4+ID4gPj4gPiA+ID4gKw0KPiAJdG9faW50ZWxfYXRvbWljX3N0YXRlKHBpcGVfY29u
ZmlnLQ0KPiA+PiA+PiA+ID4+ID4gPiA+dWFwaS5zdGF0ZSk7DQo+ID4+ID4+ID4gPj4gPiA+ID4g
IAlpbnQgcGlwZV9icHA7DQo+ID4+ID4+ID4gPj4gPiA+ID4gIAlpbnQgcmV0Ow0KPiA+PiA+PiA+
ID4+ID4gPiA+DQo+ID4+ID4+ID4gPj4gPiA+ID4gQEAgLTEzNzMsMTIgKzEzNzcsMTYgQEAgc3Rh
dGljIGludA0KPiA+PiA+PiA+ID4+ID4gPiA+IGludGVsX2RwX2RzY19jb21wdXRlX2NvbmZpZyhz
dHJ1Y3QNCj4gPj4gPj4gPiA+PiA+ID4gaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+PiA+PiA+ID4+
ID4gPiA+ICAJCX0NCj4gPj4gPj4gPiA+PiA+ID4gPiAgCX0NCj4gPj4gPj4gPiA+PiA+ID4gPg0K
PiA+PiA+PiA+ID4+ID4gPiA+ICsJY2RjbGtfc3RhdGUgPSBpbnRlbF9hdG9taWNfZ2V0X2NkY2xr
X3N0YXRlKHN0YXRlKTsNCj4gPj4gPj4gPiA+PiA+ID4gPiArCWlmIChJU19FUlIoY2RjbGtfc3Rh
dGUpKQ0KPiA+PiA+PiA+ID4+ID4gPiA+ICsJCXJldHVybiBQVFJfRVJSKGNkY2xrX3N0YXRlKTsN
Cj4gPj4gPj4gPiA+PiA+ID4gPiArDQo+ID4+ID4+ID4gPj4gPiA+ID4gIAkvKg0KPiA+PiA+PiA+
ID4+ID4gPiA+ICAJICogVkRTQyBlbmdpbmUgb3BlcmF0ZXMgYXQgMSBQaXhlbCBwZXIgY2xvY2ss
IHNvIGlmDQo+ID4+ID4+ID4gPj4gPiA+ID4gcGVhayBwaXhlbA0KPiA+PiByYXRlDQo+ID4+ID4+
ID4gPj4gPiA+ID4gLQkgKiBpcyBncmVhdGVyIHRoYW4gdGhlIG1heGltdW0gQ2RjbG9jayBhbmQg
aWYgc2xpY2UNCj4gY291bnQgaXMNCj4gPj4gZXZlbg0KPiA+PiA+PiA+ID4+ID4gPiA+ICsJICog
aXMgZ3JlYXRlciB0aGFuIHRoZSBjdXJyZW50IENkY2xvY2sgYW5kIGlmIHNsaWNlDQo+ID4+ID4+
ID4gPj4gPiA+ID4gK2NvdW50IGlzIGV2ZW4NCj4gPj4gPj4gPiA+PiA+ID4gPiAgCSAqIHRoZW4g
d2UgbmVlZCB0byB1c2UgMiBWRFNDIGluc3RhbmNlcy4NCj4gPj4gPj4gPiA+PiA+ID4gPiAgCSAq
Lw0KPiA+PiA+PiA+ID4+ID4gPiA+IC0JaWYgKGFkanVzdGVkX21vZGUtPmNydGNfY2xvY2sgPiBk
ZXZfcHJpdi0NCj4gPm1heF9jZGNsa19mcmVxDQo+ID4+IHx8DQo+ID4+ID4+ID4gPj4gPiA+ID4g
KwlpZiAoYWRqdXN0ZWRfbW9kZS0+Y3J0Y19jbG9jayA+DQo+ID4+ID4+ID4gPj4gPiA+ID4gK2Nk
Y2xrX3N0YXRlLT5hY3R1YWwuY2RjbGsgfHwNCj4gPj4gPj4gPiA+PiA+ID4NCj4gPj4gPj4gPiA+
PiA+ID4gVGhpcyBpcyB3cm9uZy4gV2UgY29tcHV0ZSB0aGUgY2RjbGsgYmFzZWQgb24gdGhlDQo+
ID4+ID4+ID4gPj4gPiA+IHJlcXVpcmVtZW50cyBvZiB0aGUgbW9kZS9ldGMuLCBub3QgdGhlIG90
aGVyIHdheSBhcm91bmQuDQo+ID4+ID4+ID4gPg0KPiA+PiA+PiA+ID4gQWNjb3JkaW5nIHRvIEJT
cGVjIGd1aWRlbGluZSwgd2UgZGVjaWRlIHdoZXRoZXIgd2UgZW5hYmxlIG9yDQo+ID4+ID4+ID4g
PiBkaXNhYmxlIHNlY29uZCBWRFNDIGVuZ2luZSwgYmFzZWQgb24gdGhhdCBjb25kaXRpb24uIEFz
IEkNCj4gPj4gPj4gPiA+IHVuZGVyc3RhbmQgdGhhdCBvbmUgaXMgYWJvdXQgRFNDIGNvbmZpZyBj
YWxjdWxhdGlvbiwgYmFzZWQgb24NCj4gPj4gPj4gPiA+IENEQ0xLDQo+ID4+IHdoaWNoIHdhcyBj
YWxjdWxhdGVkLg0KPiA+PiA+PiA+DQo+ID4+ID4+ID4gUG9pbnQgaXMsIGF0IHRoZSB0aW1lIGNv
bXB1dGVfY29uZmlnIGdldHMgY2FsbGVkLCB3aGF0DQo+ID4+ID4+ID4gZ3VhcmFudGVlcyBhcmUg
dGhlcmUgdGhhdCBjZGNsa19zdGF0ZS0+YWN0dWFsLmNkY2xrIGNvbnRhaW5zDQo+IGFueXRoaW5n
IHVzZWZ1bD8NCj4gPj4gPj4gPiBUaGlzIGlzIHRoZSBkZXNpZ24gd2UgaGF2ZS4NCj4gPj4gPj4N
Cj4gPj4gPj4gVGhhdCBpcyBhY3R1YWxseSBnb29kIHF1ZXN0aW9uLCB3YXMgd2lsbGluZyB0byBj
aGVjayB0aGF0IGFzIHdlbGwuDQo+ID4+ID4+DQo+ID4+ID4+ID4NCj4gPj4gPj4gPiA+IElmIHdl
IGJ1bXAgdXAgQ0RDTEssIHRvIGF2b2lkIHRoaXMsIHdpbGwgd2UgZXZlbiB0aGVuIHVzZSBhDQo+
ID4+ID4+ID4gPiBzZWNvbmQNCj4gPj4gVkRTQyBldmVyPw0KPiA+PiA+PiA+DQo+ID4+ID4+ID4g
SSB0aGluayB3ZSdsbCBldmVudHVhbGx5IG5lZWQgYmV0dGVyIGxvZ2ljIHRoYW4gdW5jb25kaXRp
b25hbGx5DQo+ID4+ID4+ID4gYnVtcGluZyB0byBtYXgsIGFuZCBpdCBuZWVkcyB0byB0YWtlICpi
b3RoKiB0aGUgY2RjbGsgYW5kIHRoZQ0KPiA+PiA+PiA+IG51bWJlciBvZiBkc2MgZW5naW5lcyBp
bnRvIGFjY291bnQuIFRoZSByZWZlcmVuY2VkIGJzcGVjIG9ubHkNCj4gPj4gPj4gPiBoYXMgdGhl
IHZkc2MgY2xvY2sgcGVyc3BlY3RpdmUsIG5vdCBvdmVyYWxsIHBlcnNwZWN0aXZlLg0KPiA+PiA+
Pg0KPiA+PiA+PiBXaGF0IHdlIG5lZWQgdG8gY2xhcmlmeSBoZXJlIGlzIHRoYXQgaG93IHRoaXMg
aXMgc3VwcG9zZWQgdG8gd29yaw0KPiA+PiA+PiBpbg0KPiA+PiB0aGVvcnkuDQo+ID4+ID4+IEJh
c2ljYWxseSBzYW1lIGlzc3VlIGNhbiBiZSBmaXhlZCBieSBib3RoIGluY3JlYXNpbmcgdGhlIENE
Q0xLIG9yDQo+ID4+ID4+IGVuYWJsaW5nIDJuZCBWRFNDIGVuZ2luZS4NCj4gPj4gPj4gVGhlcmUg
c2hvdWxkIGJlIHNvbWUgZ3VpZGVsaW5lIHRlbGxpbmcgdXMsIGhvdyB0byBwcmlvcml0aXplLg0K
PiA+PiA+PiBGcm9tIG92ZXJhbGwgcGVyc3BlY3RpdmUgYXMgSSB1bmRlcnN0YW5kLCBieSBkZWZh
dWx0LCB3ZSBhcmUgYWJsZQ0KPiA+PiA+PiB0byBrZWVwIENEQ0xLIDIgdGltZXMgbGVzcyB0aGFu
IHBpeGVsIHJhdGUoc2VlDQo+ID4+ID4+IGludGVsX3BpeGVsX3JhdGVfdG9fY2RjbGspLCBob3dl
dmVyIGR1ZSB0byB0aGF0IFZEU0MgbGltaXRhdGlvbg0KPiA+PiA+PiB0aGF0IGl0IGNhbiB1c2Ug
b25seSAxIHBwYyB0aGlzIGJlY29tZXMsIG5vdCBhcHBsaWNhYmxlIGFueW1vcmUoYXQNCj4gPj4g
Pj4gbGVhc3QgYXMgb2YgQlNwZWMgNDkyNTkpLCBzbyB3ZSBoYXZlIHRvIGluY3JlYXNlIGFtb3Vu
dCBvZiBWRFNDDQo+ID4+ID4+IGluc3RhbmNlcw0KPiA+PiB0aGVuLg0KPiA+PiA+Pg0KPiA+PiA+
PiBTbyB0aGUgcXVlc3Rpb24gaXMgbm93IC0gd2hhdCBpcyBtb3JlIG9wdGltYWwgaGVyZT8NCj4g
Pj4gPj4gQWxzbyBpZiB3ZSBidW1wIHVwIENEQ0xLKHdoaWNoIHdlIGhhdmUgZG9uZSBtYW55IHRp
bWVzIGFscmVhZHkgaW4NCj4gPj4gPj4gZmFjdCksIHdlIHRoZW4gbmVlZCB0byBhZGQgc29tZSBs
b2dpYyB0byBpbnRlbF9jb21wdXRlX21pbl9jZGNsaw0KPiA+PiA+PiB0byBjaGVjayBpZiB3ZSBh
cmUgdXNpbmcgRFNDIG9yIG5vdCwgYmVjYXVzZSBvdGhlcndpc2Ugd2UgZG9uJ3QNCj4gPj4gPj4g
cmVhbGx5IG5lZWQNCj4gPj4gdG8gZG8gdGhhdC4NCj4gPj4NCj4gPj4gaW50ZWxfY29tcHV0ZV9t
aW5fY2RjbGsoKSBhbHJlYWR5IG5lZWRzIHRvIGJlIGRzYyBhd2FyZSB3aGVuIHNsaWNlDQo+ID4+
IGNvdW50IGlzIDEgYW5kIHdlIGNhbid0IHVzZSB0d28gZHNjIGVuZ2luZXMgYW55d2F5LiBTZWUg
dGhlIHJlY2VudA0KPiA+PiBjb21taXQgZmUwMTg4M2ZkY2VmICgiZHJtL2k5MTU6IEdldCBwcm9w
ZXIgbWluIGNkY2xrIGlmIHZEU0MgZW5hYmxlZCIpLg0KPiA+Pg0KPiA+PiBMb29raW5nIGFnYWlu
LCBJJ20gbm90IHN1cmUgdGhhdCBkb2VzIHRoZSByaWdodCBkZWNpc2lvbiBmb3Igd2hlbg0KPiA+
PiBkc2Muc2xpY2VfY291bnQgPiAxLCBidXQgZHNjLnNwbGl0ID09IGZhbHNlLiBJdCBzaG91bGQg
cHJvYmFibHkgdXNlDQo+ID4+IGRzYy5zcGxpdCBmb3IgdGhlIGRlY2lzaW9uLg0KPiA+Pg0KPiA+
PiA+Pg0KPiA+PiA+PiBTdGFuDQo+ID4+ID4NCj4gPj4gPiBDaGVja2VkIGFuZCBpbmRlZWQsIGVu
Y29kZXItPmNvbXB1dGVfY29uZmlnIGlzIGNhbGxlZCB3YXkgYmVmb3JlLA0KPiA+PiA+IGJhc2lj
YWxseSBDRENMSyBjYWxjdWxhdGlvbiBpcyBjYWxsZWQgYWxtb3N0IGluIHRoZSBlbmQgb2YNCj4g
Pj4gPiBhdG9taWNfY2hlY2ssIHNvIGluIGNvbXB1dGVfY29uZmlnLCB0aGVyZSB3b3VsZCBiZSBh
biBvbGQgQ0RDTEsNCj4gPj4gPiB2YWx1ZSBjb3BpZWQgZnJvbSBwcmV2aW91cyBjZGNsayBzdGF0
ZSwgYnV0IG5vdCB0aGUgbGFzdCBvbmUuDQo+ID4+ID4NCj4gPj4gPiBWYW5kaXRhLCB0aGlzIG1l
YW5zIHdlIGFjdHVhbGx5IGNhbid0IGRvIGl0IHRoYXQgd2F5LCBpZiB5b3Ugd2FudA0KPiA+PiA+
IHRvIGRvIGFueXRoaW5nIHdpdGggVkRTQyBiYXNlZCBvbiBDRENMSyB0aGlzIGhhcyB0byBiZSBk
b25lIF9hZnRlcl8NCj4gPj4gPiBpbnRlbF9jb21wdXRlX21pbl9jZGNsayB3YXMgY2FsbGVkLiBX
aGljaCBpcyBub3QgdmVyeSBzd2VldCwgSSBndWVzcy4NCj4gPj4gPg0KPiA+PiA+IFNvIGFzIG9m
IGN1cnJlbnQgYXJjaGl0ZWN0dXJlLCBpdCBzZWVtcyB0aGF0IHRoZSBlYXNpZXN0IHdheSBpcw0K
PiA+PiA+IGluZGVlZCB0byBidW1wIHRoZSBDRENMSyBvciB3ZSBuZWVkIHRvIGZpZ3VyZSB0aGUg
d2F5IGhvdyB0byBlbmFibGUNCj4gPj4gPiAybmQgVkRTQyBzb21ld2hlcmUgZWxzZSwgYWZ0ZXIg
Q0RDTEsgd2FzIGNhbGN1bGF0ZWQuDQo+ID4+DQo+ID4+IEFsdGVybmF0aXZlbHksIHdlIGNvdWxk
IHVzZSB0d28gZHNjIGVuZ2luZXMgbW9yZSBhZ2dyZXNzaXZlbHksIGJ1dA0KPiA+PiB0aGF0IGRl
Y2lzaW9uIGN1cnJlbnRseSBjYW4ndCB0YWtlIG92ZXJhbGwgY2hvc2VuIGNkY2xrIGludG8gYWNj
b3VudC4NCj4gPj4NCj4gPj4gV2UnbGwgZW5kIHVwIHNvbWV0aW1lcyB1bm5lY2Vzc2FyaWx5IHVz
aW5nIGEgdG9vIGhpZ2ggY2RjbGsgb3IgdHdvDQo+ID4+IGRzYyBlbmdpbmVzLCBqdXN0IGhhdmUg
dG8gcGljayB0aGUgcG9pc29uLg0KPiA+Pg0KPiA+PiBJIHRoaW5rIHRyeWluZyB0byBkbyBkc2Mg
ZGVjaXNpb25zIGFmdGVyIGludGVsX2NvbXB1dGVfbWluX2NkY2xrKCkNCj4gPj4gZ2V0cyB3YXkg
dG9vIGNvbXBsaWNhdGVkLg0KPiA+DQo+ID4gSW4gdGhpcyBjYXNlLCBjYW4gd2UganVzdCB1c2Ug
dGhlIDJuZCBWRFNDIGVuZ2luZSBpZiBzbGljZV9jb3VudCBpcyAyIG9yDQo+IG1vcmU/DQo+ID4g
V2hpY2ggd291bGQgbWVhbiB3ZSBhbHdheXMgb3BlcmF0ZSBpbiBqb2luZXIgZW5hYmxlZCBtb2Rl
KHNtYWxsDQo+ID4gam9pbmVyKSBvZiBhbGwgdGhlIGNvbXByZXNzaW9uIG1vZGVzIG9mIG9wZXJh
dGlvbiBtZW50aW9uZWQgaW4gdGhlDQo+ID4gdGFibGUgYnNwZWM6IDQ5MjU5IEJlY2F1c2Ugd2Ug
YXJlIHN0aWxsIGdvaW5nIHRvIGhpdCB0aGUgbWF4IGNkY2xrIHJlc3RyaWN0aW9uDQo+IGZvciBo
aWdoZXIgcmVzb2x1dGlvbnMsIGFuZCBtYW55IGxvd2VyIHJlc29sdXRpb25zIHdvdWxkbuKAmXQg
bmVlZCBtYXggY2RjbGsuDQo+ID4gQW5kIGV2ZW50dWFsbHkgb25jZSB3ZSBoYXZlIG1vcmUgZGV0
YWlscyBvbiBjZCBjbGsgdnMgMlZEU0MgZW5naW5lIHdlDQo+ID4gY291bGQgYWRkIHRoZSBsb2dp
YyB0byBjaG9vc2Ugb25lIG92ZXIgdGhlIG90aGVyPw0KPiA+DQo+ID4gSSBzZWUgdGhhdCBpbiBj
YXNlIG9mIERTSSB3ZSBkbyBzcGxpdCA9IHRydWUsIGZvciBzbGljZV9jb3VudCA+IDEgYnV0IHRo
YXQNCj4gd291bGQgbmVlZCBhIGRpZmZlcmVudCBzZXQgb2YgY2hlY2tzLCB0aGF0cyBhIFRCRC4N
Cj4gPg0KPiA+IE9yIERvIHlvdSBzdWdnZXN0IEkganVzdCBkbyB0aGlzIGZvciBub3cgbWF4IGNk
Y2xrIHdoZW4gc2xpY2VfY291bnQgPTENCj4gPiAod2hhdCB3ZSBhcmUgZG9pbmcgbm93KSByZXBs
YWNlIHdpdGggY29tcHJlc3Npb24gPSB0cnVlIGFuZCBzcGxpdCA9DQo+ID4gZmFsc2UNCj4gDQo+
IEkgdGhpbmsgdGhlIGNoZWNrIGluIGludGVsX2NvbXB1dGVfbWluX2NkY2xrKCkgc2hvdWxkIGJl
Og0KPiANCj4gCWlmIChjcnRjX3N0YXRlLT5kc2MuY29tcHJlc3Npb25fZW5hYmxlICYmICFjcnRj
X3N0YXRlLQ0KPiA+ZHNjLmRzY19zcGxpdCkNCj4gDQo+IFRoYXQncyBhIHNlcGFyYXRlIGNoYW5n
ZS4NCj4gDQo+IEVuYWJsaW5nIHR3byBkc2MgZW5naW5lcyBtb3JlIGFnZ3Jlc3NpdmVseS4uLiBJ
IGRvbid0IG1pbmQgZG9pbmcgaXQNCj4gdW5jb25kaXRpb25hbGx5IHdoZW4gc2xpY2UgY291bnQg
PiAxIGZvciBzdGFydGVycy4gQnV0IEkgdGhpbmsgd2UnbGwgbmVlZCB0bw0KPiBpbXByb3ZlIHRo
aXMgZ29pbmcgZm9yd2FyZCwgaW5jbHVkaW5nIGZpeGluZyB0aGUgbW9kZSB2YWxpZCBjaGVja3Mg
ZXRjLiBhcw0KPiB3ZSd2ZSBkaXNjdXNzZWQuDQoNCkRlc2lnbiByZWNvbW1lbmRhdGlvbiBpcyB0
byB1c2UgMiBWRFNDIGluc3RhbmNlcyB3aGlsZSBtZWV0aW5nIHRoZSBmb2xsb3dpbmcgY29uc3Ry
YWludCBzbyB0aGF0IGNkY2xrIGNhbiBzdGF5IGFzIGxvdyBhcyBwb3NzaWJsZS4NCkRQL0hETUkg
UFBSIHNwZWMgcHJvdmlkZWQgc2xpY2Ugc2l6ZSA8IERQQ0QgcHJvdmlkZWQgTWF4U2xpY2VXaWR0
aA0KDQpUaGFua3MsDQpWYW5kaXRhDQo+IA0KPiBWaWxsZSwgYW55IG9iamVjdGlvbnM/DQo+IA0K
PiBCUiwNCj4gSmFuaS4NCj4gDQo+IA0KPiA+DQo+ID4gVGhhbmtzLA0KPiA+IFZhbmRpdGENCj4g
Pj4NCj4gPj4gQlIsDQo+ID4+IEphbmkNCj4gPj4NCj4gPj4NCj4gPj4NCj4gPj4NCj4gPj4gPg0K
PiA+PiA+IFN0YW4NCj4gPj4gPg0KPiA+PiA+Pg0KPiA+PiA+PiA+DQo+ID4+ID4+ID4gQlIsDQo+
ID4+ID4+ID4gSmFuaS4NCj4gPj4gPj4gPg0KPiA+PiA+PiA+ID4gQW5vdGhlciB0aGluZyBpcyB0
aGF0IHByb2JhYmx5IGVuYWJsaW5nIHNlY29uZCBWRFNDIGlzIGNoZWFwZXINCj4gPj4gPj4gPiA+
IGluIHRlcm1zIG9mIHBvd2VyIGNvbnN1bXB0aW9uLCB0aGFuIGJ1bXBpbmcgdXAgdGhlIENEQ0xL
Lg0KPiA+PiA+PiA+ID4NCj4gPj4gPj4gPiA+IFN0YW4NCj4gPj4gPj4gPiA+DQo+ID4+ID4+ID4g
Pj4gPg0KPiA+PiA+PiA+ID4+ID4gT2theSAsIFNvIHlvdSBzdWdnZXN0IHRoYXQgd2Ugc2V0IHRo
ZSBjZCBjbG9jayB0byBtYXggd2hlbg0KPiA+PiA+PiA+ID4+ID4gd2UNCj4gPj4gaGF2ZSBzdWNo
IHJlcXVpcmVtZW50LCB0aGFuIGVuYWJsaW5nIHRoZSBzZWNvbmQgZW5naW5lPw0KPiA+PiA+PiA+
ID4+DQo+ID4+ID4+ID4gPj4gVGhhdCBzZWVtcyBsaWtlIHRoZSBlYXNpZXN0IHNvbHV0aW9uLiBB
bm90aGVyIG9wdGlvbiBtaWdodCBiZQ0KPiA+PiA+PiA+ID4+IHRvIGNvbWUgdXAgd2l0aCBzb21l
IGxvd2VyIGRvdGNsb2NrIGxpbWl0IGZvciB0aGUgdXNlIG9mIHRoZQ0KPiA+PiA+PiA+ID4+IHNl
Y29uZCB2ZHNjLiBCdXQgbm90IHN1cmUgd2Uga25vdyB3aGVyZSB0aGUgdGlwcGluZyBwb2ludCBp
cw0KPiA+PiA+PiA+ID4+IHdydC4gcG93cg0KPiA+PiBjb25zdW1wdGlvbi4NCj4gPj4gPj4gPiA+
Pg0KPiA+PiA+PiA+ID4+IC0tDQo+ID4+ID4+ID4gPj4gVmlsbGUgU3lyasOkbMOkDQo+ID4+ID4+
ID4gPj4gSW50ZWwNCj4gPj4gPj4gPg0KPiA+PiA+PiA+IC0tDQo+ID4+ID4+ID4gSmFuaSBOaWt1
bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcg0KPiA+Pg0KPiA+PiAtLQ0KPiA+
PiBKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyDQo+IA0KPiAt
LQ0KPiBKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyDQo=
