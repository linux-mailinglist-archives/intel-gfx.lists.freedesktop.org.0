Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B686499B
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 17:30:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A2B66E102;
	Wed, 10 Jul 2019 15:30:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BE186E0E4;
 Wed, 10 Jul 2019 15:30:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 08:30:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,475,1557212400"; d="scan'208";a="173890386"
Received: from irsmsx109.ger.corp.intel.com ([163.33.3.23])
 by FMSMGA003.fm.intel.com with ESMTP; 10 Jul 2019 08:30:04 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.40]) by
 IRSMSX109.ger.corp.intel.com ([169.254.13.29]) with mapi id 14.03.0439.000;
 Wed, 10 Jul 2019 16:30:03 +0100
From: "Ser, Simon" <simon.ser@intel.com>
To: "Liviu.Dudau@arm.com" <Liviu.Dudau@arm.com>, "Hiler, Arkadiusz"
 <arkadiusz.hiler@intel.com>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, 
 "Latvala, Petri" <petri.latvala@intel.com>, "rodrigosiqueiramelo@gmail.com"
 <rodrigosiqueiramelo@gmail.com>, "daniel@ffwll.ch" <daniel@ffwll.ch>
Thread-Topic: [igt-dev] [PATCH V6 i-g-t 3/6] lib: Add function to hash a
 framebuffer
Thread-Index: AQHVIY4m8lL0V0+yDEiG1MnM8wBO8KbEFMaA
Date: Wed, 10 Jul 2019 15:30:02 +0000
Message-ID: <cb41813cb605db17faee193acfa3f1bbd5b2a039.camel@intel.com>
References: <cover.1560374714.git.rodrigosiqueiramelo@gmail.com>
 <539f9b55a8269d3eb20d7d211f701d1a301d5b9d.1560374714.git.rodrigosiqueiramelo@gmail.com>
In-Reply-To: <539f9b55a8269d3eb20d7d211f701d1a301d5b9d.1560374714.git.rodrigosiqueiramelo@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.181]
Content-ID: <DFF02465DCBA96458C6C87176E9A89F5@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [PATCH V6 i-g-t 3/6] lib: Add function to
 hash a framebuffer
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "nd@arm.com" <nd@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TW9zdGx5IExHVE0sIGhlcmUgYXJlIGEgZmV3IG5pdHMuDQoNCk9uIFdlZCwgMjAxOS0wNi0xMiBh
dCAyMzoxNyAtMDMwMCwgQnJpYW4gU3RhcmtleSB3cm90ZToNCj4gVG8gdXNlIHdyaXRlYmFjayBi
dWZmZXJzIGFzIGEgQ1JDIHNvdXJjZSwgd2UgbmVlZCB0byBiZSBhYmxlIHRvIGhhc2gNCj4gdGhl
bS4gSW1wbGVtZW50IGEgc2ltcGxlIEZWQS0xYSBoYXNoaW5nIHJvdXRpbmUgZm9yIHRoaXMgcHVy
cG9zZS4NCj4gDQo+IERvaW5nIGEgYnl0ZXdpc2UgaGFzaCBvbiB0aGUgZnJhbWVidWZmZXIgZGly
ZWN0bHkgY2FuIGJlIHZlcnkgc2xvdyBpZg0KPiB0aGUgbWVtb3J5IGlzIG5vbmNhY2hlZC4gQnkg
bWFraW5nIGEgY29weSBvZiBlYWNoIGxpbmUgaW4gdGhlIEZCIGZpcnN0DQo+ICh3aGljaCBjYW4g
dGFrZSBhZHZhbnRhZ2Ugb2Ygd29yZC1hY2Nlc3Mgc3BlZWR1cCksIHdlIGNhbiBkbyB0aGUgaGFz
aA0KPiBvbiBhIGNhY2hlZCBjb3B5LCB3aGljaCBpcyBtdWNoIGZhc3RlciAoMTB4IHNwZWVkdXAg
b24gbXkgcGxhdGZvcm0pLg0KPiANCj4gdjY6IHVzZSBpZ3RfbWVtY3B5X2Zyb21fd2MoKSBpbnN0
ZWFkIG9mIHBsYWluIG1lbWNweSwgYXMgc3VnZ2VzdGVkIGJ5DQo+ICAgICBDaHJpcyBXaWxzb24N
Cj4gDQo+IFNpZ25lZC1vZmYtYnk6IEJyaWFuIFN0YXJrZXkgPGJyaWFuLnN0YXJrZXlAYXJtLmNv
bT4NCj4gW3JlYmFzZWQgYW5kIHVwZGF0ZWQgdG8gdGhlIG1vc3QgcmVjZW50IEFQSV0NCj4gU2ln
bmVkLW9mZi1ieTogTGl2aXUgRHVkYXUgPGxpdml1LmR1ZGF1QGFybS5jb20+DQo+IC0tLQ0KPiAg
bGliL2lndF9mYi5jIHwgNjYgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKw0KPiAgbGliL2lndF9mYi5oIHwgIDMgKysrDQo+ICAyIGZpbGVzIGNoYW5n
ZWQsIDY5IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9saWIvaWd0X2ZiLmMgYi9s
aWIvaWd0X2ZiLmMNCj4gaW5kZXggOWQ0ZjkwNWUuLmQwN2RhZTM5IDEwMDY0NA0KPiAtLS0gYS9s
aWIvaWd0X2ZiLmMNCj4gKysrIGIvbGliL2lndF9mYi5jDQo+IEBAIC0zMjU2LDYgKzMyNTYsNzIg
QEAgYm9vbCBpZ3RfZmJfc3VwcG9ydGVkX2Zvcm1hdCh1aW50MzJfdCBkcm1fZm9ybWF0KQ0KPiAg
CXJldHVybiBmYWxzZTsNCj4gIH0NCj4gIA0KPiArLyoNCj4gKyAqIFRoaXMgaW1wbGVtZW50cyB0
aGUgRk5WLTFhIGhhc2hpbmcgYWxnb3JpdGhtIGluc3RlYWQgb2YgQ1JDLCBmb3INCj4gKyAqIHNp
bXBsaWNpdHkNCj4gKyAqIGh0dHA6Ly93d3cuaXN0aGUuY29tL2Nob25nby90ZWNoL2NvbXAvZm52
L2luZGV4Lmh0bWwNCj4gKyAqDQo+ICsgKiBoYXNoID0gb2Zmc2V0X2Jhc2lzDQo+ICsgKiBmb3Ig
ZWFjaCBvY3RldF9vZl9kYXRhIHRvIGJlIGhhc2hlZA0KPiArICogICAgICAgICBoYXNoID0gaGFz
aCB4b3Igb2N0ZXRfb2ZfZGF0YQ0KPiArICogICAgICAgICBoYXNoID0gaGFzaCAqIEZOVl9wcmlt
ZQ0KPiArICogcmV0dXJuIGhhc2gNCj4gKyAqDQo+ICsgKiAzMiBiaXQgb2Zmc2V0X2Jhc2lzID0g
MjE2NjEzNjI2MQ0KPiArICogMzIgYml0IEZOVl9wcmltZSA9IDIyNCArIDI4ICsgMHg5MyA9IDE2
Nzc3NjE5DQo+ICsgKi8NCj4gK2ludCBpZ3RfZmJfZ2V0X2NyYyhzdHJ1Y3QgaWd0X2ZiICpmYiwg
aWd0X2NyY190ICpjcmMpDQo+ICt7DQo+ICsjZGVmaW5lIEZOVjFhX09GRlNFVF9CSUFTIDIxNjYx
MzYyNjENCj4gKyNkZWZpbmUgRk5WMWFfUFJJTUUgMTY3Nzc2MTkNCg0KSSdkIGp1c3QgdXNlIHBs
YWluIHVpbnQzMl90IHZhcmlhYmxlcyBmb3IgdGhvc2UsIGJ1dCBubyBiaWcgZGVhbC4NCg0KPiAr
CXVpbnQzMl90IGhhc2g7DQo+ICsJdm9pZCAqbWFwOw0KPiArCWNoYXIgKnB0ciwgKmxpbmUgPSBO
VUxMOw0KPiArCWludCB4LCB5LCBjcHAgPSBpZ3RfZHJtX2Zvcm1hdF90b19icHAoZmItPmRybV9m
b3JtYXQpIC8gODsNCj4gKwl1aW50MzJfdCBzdHJpZGUgPSBjYWxjX3BsYW5lX3N0cmlkZShmYiwg
MCk7DQoNCldlIGNvdWxkIHJldHVybiAtRUlOVkFMIGluIGNhc2UgZmItPm51bV9wbGFuZXMgIT0g
MS4NCg0KPiArCWlmIChmYi0+aXNfZHVtYikNCj4gKwkJbWFwID0ga21zdGVzdF9kdW1iX21hcF9i
dWZmZXIoZmItPmZkLCBmYi0+Z2VtX2hhbmRsZSwgZmItPnNpemUsDQo+ICsJCQkJCSAgICAgIFBS
T1RfUkVBRCk7DQo+ICsJZWxzZQ0KPiArCQltYXAgPSBnZW1fbW1hcF9fZ3R0KGZiLT5mZCwgZmIt
PmdlbV9oYW5kbGUsIGZiLT5zaXplLA0KPiArCQkJCSAgICBQUk9UX1JFQUQpOw0KPiArCXB0ciA9
IG1hcDsNCg0KTml0OiBubyBuZWVkIGZvciB0aGlzLCBjYW4gYXNzaWduIHRoZSByZXN1bHQgb2Yg
bW1hcCBkaXJlY3RseSB0byBwdHIuDQoNCj4gKw0KPiArCS8qDQo+ICsJICogRnJhbWVidWZmZXJz
IGFyZSBvZnRlbiB1bmNhY2hlZCwgd2hpY2ggY2FuIG1ha2UgYnl0ZS13aXNlIGFjY2Vzc2VzDQo+
ICsJICogdmVyeSBzbG93LiBXZSBjb3B5IGVhY2ggbGluZSBvZiB0aGUgRkIgaW50byBhIGxvY2Fs
IGJ1ZmZlciB0byBzcGVlZA0KPiArCSAqIHVwIHRoZSBoYXNoaW5nLg0KPiArCSAqLw0KPiArCWxp
bmUgPSBtYWxsb2Moc3RyaWRlKTsNCj4gKwlpZiAoIWxpbmUpIHsNCj4gKwkJbXVubWFwKG1hcCwg
ZmItPnNpemUpOw0KPiArCQlyZXR1cm4gLUVOT01FTTsNCj4gKwl9DQo+ICsNCj4gKwloYXNoID0g
Rk5WMWFfT0ZGU0VUX0JJQVM7DQo+ICsNCj4gKwlmb3IgKHkgPSAwOyB5IDwgZmItPmhlaWdodDsg
eSsrLCBwdHIgKz0gc3RyaWRlKSB7DQo+ICsNCj4gKwkJaWd0X21lbWNweV9mcm9tX3djKGxpbmUs
IHB0ciwgc3RyaWRlKTsNCg0KTml0OiBubyBuZWVkIHRvIGNvcHkgdGhlIHdob2xlIHN0cmlkZSBh
Y3R1YWxseSwgd2UgY2FuIGp1c3QgY29weQ0KZmItPndpZHRoICogY3BwIHNpbmNlIHdlJ3JlIG9u
bHkgZ29pbmcgdG8gcmVhZCB0aGF0Lg0KDQo+ICsNCj4gKwkJZm9yICh4ID0gMDsgeCA8IGZiLT53
aWR0aCAqIGNwcDsgeCsrKSB7DQo+ICsJCQloYXNoIF49IGxpbmVbeF07DQo+ICsJCQloYXNoICo9
IEZOVjFhX1BSSU1FOw0KPiArCQl9DQo+ICsJfQ0KPiArDQo+ICsJY3JjLT5uX3dvcmRzID0gMTsN
Cj4gKwljcmMtPmNyY1swXSA9IGhhc2g7DQo+ICsNCj4gKwlmcmVlKGxpbmUpOw0KPiArCW11bm1h
cChtYXAsIGZiLT5zaXplKTsNCj4gKw0KPiArCXJldHVybiAwOw0KPiArI3VuZGVmIEZOVjFhX09G
RlNFVF9CSUFTDQo+ICsjdW5kZWYgRk5WMWFfUFJJTUUNCj4gK30NCj4gKw0KPiAgLyoqDQo+ICAg
KiBpZ3RfZm9ybWF0X2lzX3l1djoNCj4gICAqIEBkcm1fZm9ybWF0OiBkcm0gZm91cmNjDQo+IGRp
ZmYgLS1naXQgYS9saWIvaWd0X2ZiLmggYi9saWIvaWd0X2ZiLmgNCj4gaW5kZXggYWRlZmViZTEu
LmEyNzQxYzA1IDEwMDY0NA0KPiAtLS0gYS9saWIvaWd0X2ZiLmgNCj4gKysrIGIvbGliL2lndF9m
Yi5oDQo+IEBAIC0zNyw2ICszNyw3IEBADQo+ICAjaW5jbHVkZSA8aTkxNV9kcm0uaD4NCj4gIA0K
PiAgI2luY2x1ZGUgImlndF9jb2xvcl9lbmNvZGluZy5oIg0KPiArI2luY2x1ZGUgImlndF9kZWJ1
Z2ZzLmgiDQo+ICANCj4gIC8qDQo+ICAgKiBJbnRlcm5hbCBmb3JtYXQgdG8gZGVub3RlIGEgYnVm
ZmVyIGNvbXBhdGlibGUgd2l0aCBwaXhtYW4ncw0KPiBAQCAtMTk0LDUgKzE5NSw3IEBAIGludCBp
Z3RfZm9ybWF0X3BsYW5lX2JwcCh1aW50MzJfdCBkcm1fZm9ybWF0LCBpbnQgcGxhbmUpOw0KPiAg
dm9pZCBpZ3RfZm9ybWF0X2FycmF5X2ZpbGwodWludDMyX3QgKipmb3JtYXRzX2FycmF5LCB1bnNp
Z25lZCBpbnQgKmNvdW50LA0KPiAgCQkJICAgYm9vbCBhbGxvd195dXYpOw0KPiAgDQo+ICtpbnQg
aWd0X2ZiX2dldF9jcmMoc3RydWN0IGlndF9mYiAqZmIsIGlndF9jcmNfdCAqY3JjKTsNCj4gKw0K
PiAgI2VuZGlmIC8qIF9fSUdUX0ZCX0hfXyAqLw0KPiAgDQo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IGlndC1kZXYgbWFpbGluZyBsaXN0DQo+IGln
dC1kZXZAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaWd0LWRldg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
