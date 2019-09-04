Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E257EA9767
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2019 01:57:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A49389CAC;
	Wed,  4 Sep 2019 23:57:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71C2B89CAC
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2019 23:57:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 16:57:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,468,1559545200"; d="scan'208";a="383657240"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga006.fm.intel.com with ESMTP; 04 Sep 2019 16:57:30 -0700
Received: from fmsmsx126.amr.corp.intel.com (10.18.125.43) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 4 Sep 2019 16:57:30 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.91]) by
 FMSMSX126.amr.corp.intel.com ([169.254.1.24]) with mapi id 14.03.0439.000;
 Wed, 4 Sep 2019 16:57:29 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 4/4] drm/i915: stop conflating HAS_DISPLAY() and
 disabled display
Thread-Index: AQHVYblY/FbRQLWBPEyhx0ejGLQMZqccqukA
Date: Wed, 4 Sep 2019 23:57:29 +0000
Message-ID: <8c187aebde419b746a1f8f42548aec2fa4e90223.camel@intel.com>
References: <cover.1567446845.git.jani.nikula@intel.com>
 <070054f632d4ce26740949919660ed61d195942e.1567446845.git.jani.nikula@intel.com>
In-Reply-To: <070054f632d4ce26740949919660ed61d195942e.1567446845.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <EB493DB13E5B5945BAF597997F3ABEB3@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: stop conflating HAS_DISPLAY()
 and disabled display
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

T24gTW9uLCAyMDE5LTA5LTAyIGF0IDIxOjA4ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
U3RvcCBzZXR0aW5nIC0+cGlwZV9tYXNrIHRvIHplcm8gd2hlbiBkaXNwbGF5IGlzIGRpc2FibGVk
LCBhbGxvd2luZw0KPiB1cw0KPiB0byBoYXZlIGRpZmZlcmVudCBjb2RlIHBhdGhzIGZvciBub3Qg
YWN0dWFsbHkgaGF2aW5nIGRpc3BsYXkNCj4gaGFyZHdhcmUsDQo+IGFuZCBoYXZpbmcgZGlzcGxh
eSBoYXJkd2FyZSBkaXNhYmxlZC4gVGhpcyBsZXRzIHVzIGRldmVsb3AgdGhvc2UgdHdvDQo+IGF2
ZW51ZXMgaW5kZXBlbmRlbnRseS4NCj4gDQo+IFRoZXJlIGFyZSBubyBmdW5jdGlvbmFsIGNoYW5n
ZXMgZm9yIHdoZW4gdGhlcmUgaXMgbm8gZGlzcGxheS4NCj4gSG93ZXZlciwNCj4gYWxsIHVzZXMg
b2YgZm9yX2VhY2hfcGlwZSgpIGFuZCBmb3JfZWFjaF9waXBlX21hc2tlZCgpIHdpbGwgc3RhcnQN
Cj4gcnVubmluZyBmb3IgdGhlIGRpc2FibGVkIGRpc3BsYXkgY2FzZS4gUHV0IG9uZSBvZiB0aGUg
bW9yZQ0KPiBzaWduaWZpY2FudA0KPiBvbmVzIGJlaGluZCBjaGVja3MgZm9yIElOVEVMX0RJU1BM
QVlfRU5BQkxFRCgpLCBvdGhlcndpc2UgdGhlIGNhc2VzDQo+IHNob3VsZCBub3QgYmUgaGl0IHdp
dGggZGlzYWJsZWQgZGlzcGxheSwgb3IgdGhleSBzZWVtIGJlbmlnbi4gRmluZ2Vycw0KPiBjcm9z
c2VkLg0KPiANCj4gQWxsIGluIGFsbCwgdGhpcyBtaWdodCBub3QgYmUgdGhlIGlkZWFsIHNvbHV0
aW9uLiBJbiBmYWN0IHdlIG1heSBoYXZlDQo+IGhhZCBzb21ldGhpbmcgYWxvbmcgdGhlIGxpbmVz
IG9mIHRoaXMgaW4gdGhlIHBhc3QsIGJ1dCB3ZSBlbmRlZCB1cA0KPiBjb25mbGF0aW5nIHRoZSB0
d28gY2FzZXMuIFBvc3NpYmx5IGV2ZW4gYnkgcmVjb21tZW5kYXRpb24gYnkgeW91cnMNCj4gdHJ1
bHk7IEkgZGlkIG5vdCBkYXJlIGRpZyB1cCB0aGF0IHBhcnQgb2YgdGhlIGhpc3RvcnkuIEJ1dCB0
aGUNCj4gcGVyZmVjdA0KPiBpcyB0aGUgZW5lbXkgb2YgdGhlIGdvb2QsIHRoaXMgaXMgYSBzdHJh
aWdodGZvcndhcmQgY2hhbmdlLCBhbmQgbGV0cw0KPiB1cw0KPiBnZXQgYWN0dWFsIHdvcmsgZG9u
ZSBpbiBib3RoIGZyb250cyB3aXRob3V0IGludGVyZmVyaW5nIHdpdGggZWFjaA0KPiBvdGhlci4N
Cj4gDQo+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4NCj4gQ2M6
IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiBDYzogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2lnbmVkLW9m
Zi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDEyICsrKysrKystLS0t
LQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYyAgICAgfCAgOCAr
Ky0tLS0tLQ0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9u
cygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMNCj4gaW5kZXggYzNiYjE4YWZlNmQ3Li4xNWYwMGRlZTYzNjggMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IEBAIC0xNjIxNywx
MSArMTYyMTcsMTMgQEAgaW50IGludGVsX21vZGVzZXRfaW5pdChzdHJ1Y3QgZHJtX2RldmljZQ0K
PiAqZGV2KQ0KPiAgCQkgICAgICBJTlRFTF9OVU1fUElQRVMoZGV2X3ByaXYpLA0KPiAgCQkgICAg
ICBJTlRFTF9OVU1fUElQRVMoZGV2X3ByaXYpID4gMSA/ICJzIiA6ICIiKTsNCj4gIA0KPiAtCWZv
cl9lYWNoX3BpcGUoZGV2X3ByaXYsIHBpcGUpIHsNCj4gLQkJcmV0ID0gaW50ZWxfY3J0Y19pbml0
KGRldl9wcml2LCBwaXBlKTsNCj4gLQkJaWYgKHJldCkgew0KPiAtCQkJZHJtX21vZGVfY29uZmln
X2NsZWFudXAoZGV2KTsNCj4gLQkJCXJldHVybiByZXQ7DQo+ICsJaWYgKEhBU19ESVNQTEFZKGRl
dl9wcml2KSAmJiBJTlRFTF9ESVNQTEFZX0VOQUJMRUQoZGV2X3ByaXYpKSB7DQo+ICsJCWZvcl9l
YWNoX3BpcGUoZGV2X3ByaXYsIHBpcGUpIHsNCj4gKwkJCXJldCA9IGludGVsX2NydGNfaW5pdChk
ZXZfcHJpdiwgcGlwZSk7DQo+ICsJCQlpZiAocmV0KSB7DQo+ICsJCQkJZHJtX21vZGVfY29uZmln
X2NsZWFudXAoZGV2KTsNCj4gKwkJCQlyZXR1cm4gcmV0Ow0KPiArCQkJfQ0KDQpUaGUgQ0kgd2Fy
bmluZyBhcmUgY29taW5nIGZyb20gdGhpcyBjaGFuZ2UsIHRoZXJlIGlzIG1vcmUgdGhpbmcgdG8g
ZG8NCmJlZm9yZSBub3QgaW5pdGlhbGl6ZSB0aGUgQ1JUQ1MuDQoNCj4gIAkJfQ0KPiAgCX0NCj4g
IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8u
Yw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMNCj4gaW5kZXgg
NTBiMDVhNWRlNTNiLi41ZDJkYTdlNjhhNjAgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZGV2aWNlX2luZm8uYw0KPiBAQCAtODk0LDEyICs4OTQsOCBAQCB2b2lkIGludGVsX2Rl
dmljZV9pbmZvX3J1bnRpbWVfaW5pdChzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYpDQo+ICAJCQlydW50aW1lLT5udW1fc3ByaXRlc1twaXBlXSA9IDE7DQo+ICAJfQ0KPiAgDQo+
IC0JaWYgKGk5MTVfbW9kcGFyYW1zLmRpc2FibGVfZGlzcGxheSkgew0KPiAtCQlEUk1fSU5GTygi
RGlzcGxheSBkaXNhYmxlZCAobW9kdWxlIHBhcmFtZXRlcilcbiIpOw0KPiAtCQlpbmZvLT5waXBl
X21hc2sgPSAwOw0KPiAtCX0gZWxzZSBpZiAoSEFTX0RJU1BMQVkoZGV2X3ByaXYpICYmDQo+IC0J
CSAgIChJU19HRU5fUkFOR0UoZGV2X3ByaXYsIDcsIDgpKSAmJg0KPiAtCQkgICBIQVNfUENIX1NQ
TElUKGRldl9wcml2KSkgew0KPiArCWlmIChIQVNfRElTUExBWShkZXZfcHJpdikgJiYgSVNfR0VO
X1JBTkdFKGRldl9wcml2LCA3LCA4KSAmJg0KPiArCSAgICBIQVNfUENIX1NQTElUKGRldl9wcml2
KSkgew0KDQpUaGlzIGJsb2NrIGxvb2tzIHJpZ2h0Lg0KDQo+ICAJCXUzMiBmdXNlX3N0cmFwID0g
STkxNV9SRUFEKEZVU0VfU1RSQVApOw0KPiAgCQl1MzIgc2Z1c2Vfc3RyYXAgPSBJOTE1X1JFQUQo
U0ZVU0VfU1RSQVApOw0KPiAgDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
