Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33CC09BD3A
	for <lists+intel-gfx@lfdr.de>; Sat, 24 Aug 2019 13:10:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADC496E0BB;
	Sat, 24 Aug 2019 11:10:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECB646E0BA
 for <intel-gfx@lists.freedesktop.org>; Sat, 24 Aug 2019 11:10:07 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Aug 2019 04:10:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,425,1559545200"; d="scan'208";a="179403460"
Received: from genxfsim-desktop.iind.intel.com (HELO intel.com)
 ([10.223.74.120])
 by fmsmga008.fm.intel.com with ESMTP; 24 Aug 2019 04:10:06 -0700
Date: Sat, 24 Aug 2019 16:36:52 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, jose.souza@intel.com
Message-ID: <20190824110652.GC30506@intel.com>
References: <20190823082055.5992-1-lucas.demarchi@intel.com>
 <20190823082055.5992-10-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190823082055.5992-10-lucas.demarchi@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v3 09/23] drm/i915/tgl: Add maximum
 resolution supported by PSR2 HW
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
Cc: intel-gfx@lists.freedesktop.org,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAxOS0wOC0yMyBhdCAwMToyMDo0MSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hpIHdyb3RlOgo+
IEZyb206IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+IAo+
IFRHTCBQU1IyIEhXIHN1cHBvcnRzIGEgYmlnZ2VyIHJlc29sdXRpb24sIHNvIGxldHMgYWRkIGl0
Cj4gCj4gQ2M6IERoaW5ha2FyYW4gUGFuZGl5YW4gPGRoaW5ha2FyYW4ucGFuZGl5YW5AaW50ZWwu
Y29tPgo+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+Cj4gU2lnbmVk
LW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4g
U2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+
Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCA1ICsr
KystCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiBpbmRleCBjMzNhYTE2
ZWQwMzguLjVkMjRmMWM0N2EyYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYwo+IEBAIC01NzAsNyArNTcwLDEwIEBAIHN0YXRpYyBib29sIGludGVsX3BzcjJf
Y29uZmlnX3ZhbGlkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCj4gIAkJcmV0dXJuIGZhbHNl
Owo+ICAJfQo+ICAKPiAtCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEwIHx8IElTX0dFTUlO
SUxBS0UoZGV2X3ByaXYpKSB7Cj4gKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikgewpB
cyBwZXIgQi5TcGVjczoyODY5MiBvbiBmZXcgR2VuMTEgcGxhdGZvcm0sIFBTUjIgc3VwcG9ydHMg
bWF4IHJlc29sdXRpb24gb2YgNTEyMFgzMjAwLgpEbyB3ZSBuZWVkIHRvIGhhbmRsZSB0aG9zZSBH
ZW4xMSBwbGF0Zm9ybSBoZXJlPyAKPiArCQlwc3JfbWF4X2ggPSA1MTIwOwo+ICsJCXBzcl9tYXhf
diA9IDMyMDA7Cj4gKwl9IGVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTAgfHwgSVNf
R0VNSU5JTEFLRShkZXZfcHJpdikpIHsKPiAgCQlwc3JfbWF4X2ggPSA0MDk2Owo+ICAJCXBzcl9t
YXhfdiA9IDIzMDQ7Cj4gIAl9IGVsc2UgaWYgKElTX0dFTihkZXZfcHJpdiwgOSkpIHsKPiAtLSAK
PiAyLjIzLjAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
