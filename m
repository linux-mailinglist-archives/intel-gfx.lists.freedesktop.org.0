Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6801AE7792
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 18:28:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 536B46E157;
	Mon, 28 Oct 2019 17:28:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5803E6E157
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 17:28:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 10:28:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,240,1569308400"; d="scan'208";a="205234621"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by FMSMGA003.fm.intel.com with ESMTP; 28 Oct 2019 10:28:22 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.25]) by
 FMSMSX105.amr.corp.intel.com ([169.254.4.49]) with mapi id 14.03.0439.000;
 Mon, 28 Oct 2019 10:28:21 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [PATCH] drm/i915/tgl: add support to one DP-MST stream
Thread-Index: AQHVjbHg9GuRgr10oE2vVnpa5ZG1P6dwxCMA
Date: Mon, 28 Oct 2019 17:28:20 +0000
Message-ID: <404a68fcf890cb4607f982c74c8e5fe97051bad5.camel@intel.com>
References: <20191028170457.6982-1-lucas.demarchi@intel.com>
In-Reply-To: <20191028170457.6982-1-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <4080AB50FDAEF043B6BD2CD6447D8788@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: add support to one DP-MST
 stream
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

T24gTW9uLCAyMDE5LTEwLTI4IGF0IDEwOjA0IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IFRoaXMgaXMgdGhlIG1pbmltdW0gY2hhbmdlIHRvIHN1cHBvcnQgMSAoYW5kIG9ubHkgMSkg
RFAtTVNUIG1vbml0b3INCj4gY29ubmVjdGVkIG9uIFRpZ2VyIExha2UuIFRoaXMgY2hhbmdlIHdh
cyBpc29sYXRlZCBmcm9tIHByZXZpb3VzIHBhdGNoDQo+IGZyb20gSm9zw6kuIEluIG9yZGVyIHRv
IHN1cHBvcnQgbW9yZSBzdHJlYW1zIHdlIHdpbGwgbmVlZCB0byBjcmVhdGUgYQ0KPiBtYXN0ZXIt
c2xhdmUgcmVsYXRpb24gb24gdGhlIHRyYW5zY29kZXJzIGFuZCB0aGF0IGlzIGN1cnJlbnRseSBu
b3QNCj4gd29ya2luZyB5ZXQuDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiANCj4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291
emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJj
aGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgNCArKysrDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oICAgICAgICAgIHwgMyArKysNCj4gIDIgZmlsZXMgY2hhbmdlZCwgNyBpbnNl
cnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kZGkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRp
LmMNCj4gaW5kZXggMjgxNTk0YmNiZmFlLi4zMmQ5Yzc0YzU4MzggMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBAQCAtMTkwNSw2ICsxOTA1LDEwIEBA
IGludGVsX2RkaV90cmFuc2NvZGVyX2Z1bmNfcmVnX3ZhbF9nZXQoY29uc3QNCj4gc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ICAJfSBlbHNlIGlmIChpbnRlbF9jcnRjX2hh
c190eXBlKGNydGNfc3RhdGUsDQo+IElOVEVMX09VVFBVVF9EUF9NU1QpKSB7DQo+ICAJCXRlbXAg
fD0gVFJBTlNfRERJX01PREVfU0VMRUNUX0RQX01TVDsNCj4gIAkJdGVtcCB8PSBERElfUE9SVF9X
SURUSChjcnRjX3N0YXRlLT5sYW5lX2NvdW50KTsNCj4gKw0KPiArCQlpZiAoSU5URUxfR0VOKGRl
dl9wcml2KSA+PSAxMikNCj4gKwkJCXRlbXAgfD0gVFJBTlNfRERJX01TVF9UUkFOU1BPUlRfU0VM
RUNUKA0KPiArCQkJCWNydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyKTsNCj4gIAl9IGVsc2Ugew0K
PiAgCQl0ZW1wIHw9IFRSQU5TX0RESV9NT0RFX1NFTEVDVF9EUF9TU1Q7DQo+ICAJCXRlbXAgfD0g
RERJX1BPUlRfV0lEVEgoY3J0Y19zdGF0ZS0+bGFuZV9jb3VudCk7DQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaA0KPiBpbmRleCBkZWUzMTY4ZWZkODYuLmUwOGM0ZWEzYjc0NyAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+IEBAIC05NTUwLDYgKzk1NTAsOSBAQCBlbnVtIHNrbF9w
b3dlcl9nYXRlIHsNCj4gICNkZWZpbmUgIFRSQU5TX0RESV9FRFBfSU5QVVRfQV9PTk9GRgkoNCA8
PCAxMikNCj4gICNkZWZpbmUgIFRSQU5TX0RESV9FRFBfSU5QVVRfQl9PTk9GRgkoNSA8PCAxMikN
Cj4gICNkZWZpbmUgIFRSQU5TX0RESV9FRFBfSU5QVVRfQ19PTk9GRgkoNiA8PCAxMikNCj4gKyNk
ZWZpbmUgIFRSQU5TX0RESV9NU1RfVFJBTlNQT1JUX1NFTEVDVF9TSElGVAkxMA0KPiArI2RlZmlu
ZSAgVFJBTlNfRERJX01TVF9UUkFOU1BPUlRfU0VMRUNUX01BU0sJUkVHX0dFTk1BU0soMTIsIDEw
KQ0KPiArI2RlZmluZSAgVFJBTlNfRERJX01TVF9UUkFOU1BPUlRfU0VMRUNUKHRyYW5zKQkoKHRy
YW5zKSA8PCAxMCkNCj4gICNkZWZpbmUgIFRSQU5TX0RESV9IRENQX1NJR05BTExJTkcJKDEgPDwg
OSkNCj4gICNkZWZpbmUgIFRSQU5TX0RESV9EUF9WQ19QQVlMT0FEX0FMTE9DCSgxIDw8IDgpDQo+
ICAjZGVmaW5lICBUUkFOU19ERElfSERNSV9TQ1JBTUJMRVJfQ1RTX0VOQUJMRSAoMSA8PCA3KQ0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
