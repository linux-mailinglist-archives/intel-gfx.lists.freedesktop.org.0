Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B3B9A9C5
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 10:12:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CFFF6EBF5;
	Fri, 23 Aug 2019 08:12:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3E016EBF1
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 08:12:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 02:54:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,416,1559545200"; d="scan'208";a="262802207"
Received: from anshuma1-mobl1.gar.corp.intel.com (HELO [10.66.98.100])
 ([10.66.98.100])
 by orsmga001.jf.intel.com with ESMTP; 22 Aug 2019 02:54:18 -0700
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190816080503.28594-1-lucas.demarchi@intel.com>
 <20190816080503.28594-11-lucas.demarchi@intel.com>
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Message-ID: <d6cd61ad-7e38-97fb-a37b-7d72a1e37e24@intel.com>
Date: Thu, 22 Aug 2019 15:24:17 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190816080503.28594-11-lucas.demarchi@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 10/39] drm/i915/tgl: PSR link standby is not
 supported anymore
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

ClZlcmlmaWVkIHdpdGggcmVzcGVjdCB0d28gQi5TcGNlczogNTA0MzQgYW5kIGVEUCBzcGVjcyBE
UENEIOKAkyBTaW5rIAoiRGV2aWNlIFBTUiBDb25maWd1cmF0aW9uIEZpZWxkIiAwMDE3MGggYWRk
cmVzcy4KTG9va3MgR29vZCB0byBtZS4KT24gOC8xNi8yMDE5IDE6MzQgUE0sIEx1Y2FzIERlIE1h
cmNoaSB3cm90ZToKPiBGcm9tOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGlu
dGVsLmNvbT4KPiAKPiBBY2NvcmRpbmcgdG8gQlNwYyBpZiBsaW5rIHN0YW5kYnkgaXMgc2V0IG9u
IFRHTCssIFBTUiB3aWxsIG5vdCBiZQo+IGVuYWJsZWQuIFZlbmRvcnMgc2hvdWxkIG5vdCB1c2Ug
cGFuZWxzIHRoYXQgcmVxdWlyZXMgbGluayBzdGFuZGJ5IGFuZAo+IGV2ZW4gaWYgdGhleSBkbywg
cGFuZWwgc2hvdWxkIGFzc2VydCBhIFBTUiBlcnJvciB0aGF0IHdpbGwgY2F1c2UgUFNSIHRvCj4g
YmUgZGlzYWJsZWQuCj4gCj4gQlNwZWM6IDUwNDM0Cj4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9i
ZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTHVj
YXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBBbnNo
dW1hbiBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDQgKystLQo+ICAgMSBmaWxlIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiBpbmRleCA3ZTBiMzcwMTgzYWQuLjRjZGUxYjc1Zjkw
MSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+IEBAIC0x
MjQ4LDggKzEyNDgsOCBAQCB2b2lkIGludGVsX3Bzcl9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdikKPiAgIAlpZiAoSVNfSEFTV0VMTChkZXZfcHJpdikgfHwgSVNfQlJPQURX
RUxMKGRldl9wcml2KSkKPiAgIAkJLyogSFNXIGFuZCBCRFcgcmVxdWlyZSB3b3JrYXJvdW5kcyB0
aGF0IHdlIGRvbid0IGltcGxlbWVudC4gKi8KPiAgIAkJZGV2X3ByaXYtPnBzci5saW5rX3N0YW5k
YnkgPSBmYWxzZTsKPiAtCWVsc2UKPiAtCQkvKiBGb3IgbmV3IHBsYXRmb3JtcyBsZXQncyByZXNw
ZWN0IFZCVCBiYWNrIGFnYWluICovCj4gKwllbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpIDwg
MTIpCj4gKwkJLyogRm9yIG5ldyBwbGF0Zm9ybXMgdXAgdG8gVEdMIGxldCdzIHJlc3BlY3QgVkJU
IGJhY2sgYWdhaW4gKi8KPiAgIAkJZGV2X3ByaXYtPnBzci5saW5rX3N0YW5kYnkgPSBkZXZfcHJp
di0+dmJ0LnBzci5mdWxsX2xpbms7Cj4gICAKPiAgIAlJTklUX1dPUksoJmRldl9wcml2LT5wc3Iu
d29yaywgaW50ZWxfcHNyX3dvcmspOwo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
