Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F2D2E997
	for <lists+intel-gfx@lfdr.de>; Thu, 30 May 2019 02:03:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E7B26E0C6;
	Thu, 30 May 2019 00:03:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D4CD6E0C6
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 May 2019 00:03:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 May 2019 17:03:47 -0700
X-ExtLoop1: 1
Received: from relo-linux-2.fm.intel.com (HELO [10.1.27.125]) ([10.1.27.125])
 by fmsmga008.fm.intel.com with ESMTP; 29 May 2019 17:03:46 -0700
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190529232737.31515-1-lucas.demarchi@intel.com>
 <20190529232737.31515-2-lucas.demarchi@intel.com>
From: Antonio Argenziano <antonio.argenziano@intel.com>
Message-ID: <a73633d1-8945-080c-605d-6dbb64424de8@intel.com>
Date: Wed, 29 May 2019 17:03:46 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190529232737.31515-2-lucas.demarchi@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t 2/5] lib/igt_core: reserve long
 options for individual tests
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

CgpPbiAyOS8wNS8xOSAxNjoyNywgTHVjYXMgRGUgTWFyY2hpIHdyb3RlOgo+IFN0YXJ0IHRoZSBj
b3JlIG9wdGlvc24gZnJvbSA1MDAgc28gdGhlIGluZGl2aWR1YWwgdGVzdHMgY2FuIGhhdmUgdGhl
aXIKPiBvd24gb3B0aW9ucyBzdGFydGluZyBmcm9tIDAuIFRoaXMgbWFrZXMgaXQgZWFzaWVyIHRv
IHNldCB0aGUgbG9uZwo+IG9wdGlvbnMgd2l0aG91dCBjb25mbGljdGluZy4KPiAKPiA1MDAgaXMg
anVzdCBhIG1hZ2ljIG51bWJlciwgaGlnaGVyIHRoYW4gYW55IGFzY2lpIGNoYXIgdGhhdCBjb3Vs
ZCBiZQo+IHVzZWQgaW4gdGhlIGluZGl2aWR1YWwgdGVzdC4KPiAKPiBXaGlsZSBhdCBpdCwgZml4
IHRoZSBjb2Rpbmcgc3R5bGUgdG8gdXNlIHRhYiByYXRoZXIgdGhhbiBzcGFjZS4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KCkFj
a2VkLWJ5OiBBbnRvbmlvIEFyZ2Vuemlhbm8gPGFudG9uaW8uYXJnZW56aWFub0BpbnRlbC5jb20+
Cgo+IC0tLQo+ICAgbGliL2lndF9jb3JlLmMgfCAxNiArKysrKysrKysrLS0tLS0tCj4gICAxIGZp
bGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0t
Z2l0IGEvbGliL2lndF9jb3JlLmMgYi9saWIvaWd0X2NvcmUuYwo+IGluZGV4IDljODZkNjY0Li44
MTRmNWM3MiAxMDA2NDQKPiAtLS0gYS9saWIvaWd0X2NvcmUuYwo+ICsrKyBiL2xpYi9pZ3RfY29y
ZS5jCj4gQEAgLTI4MCwxMiArMjgwLDE2IEBAIGludCB0ZXN0X2NoaWxkcmVuX3N6Owo+ICAgYm9v
bCB0ZXN0X2NoaWxkOwo+ICAgCj4gICBlbnVtIHsKPiAtIE9QVF9MSVNUX1NVQlRFU1RTLAo+IC0g
T1BUX1JVTl9TVUJURVNULAo+IC0gT1BUX0RFU0NSSVBUSU9OLAo+IC0gT1BUX0RFQlVHLAo+IC0g
T1BUX0lOVEVSQUNUSVZFX0RFQlVHLAo+IC0gT1BUX0hFTFAgPSAnaCcKPiArCS8qCj4gKwkgKiBM
ZXQgdGhlIGZpcnN0IHZhbHVlcyBiZSB1c2VkIGJ5IGluZGl2aWR1YWwgdGVzdHMgc28gb3B0aW9u
cyBkb24ndAo+ICsJICogY29uZmxpY3Qgd2l0aCBjb3JlIG9uZXMKPiArCSAqLwo+ICsJT1BUX0xJ
U1RfU1VCVEVTVFMgPSA1MDAsCj4gKwlPUFRfUlVOX1NVQlRFU1QsCj4gKwlPUFRfREVTQ1JJUFRJ
T04sCj4gKwlPUFRfREVCVUcsCj4gKwlPUFRfSU5URVJBQ1RJVkVfREVCVUcsCj4gKwlPUFRfSEVM
UCA9ICdoJwo+ICAgfTsKPiAgIAo+ICAgc3RhdGljIGludCBpZ3RfZXhpdGNvZGUgPSBJR1RfRVhJ
VF9TVUNDRVNTOwo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
