Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0A3BF3BC
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 15:07:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8799F6ED17;
	Thu, 26 Sep 2019 13:07:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40F5D6ED1A
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 13:07:44 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Sep 2019 06:07:43 -0700
X-IronPort-AV: E=Sophos;i="5.64,552,1559545200"; d="scan'208";a="201607375"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Sep 2019 06:07:41 -0700
Date: Thu, 26 Sep 2019 16:06:40 +0300
From: Imre Deak <imre.deak@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20190926130640.GB20817@ideak-desk.fi.intel.com>
References: <20190925234509.29505-1-jose.souza@intel.com>
 <20190925234509.29505-4-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190925234509.29505-4-jose.souza@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v4 3/4] drm/i915/tgl: Fix dkl link training
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBTZXAgMjUsIDIwMTkgYXQgMDQ6NDU6MDhQTSAtMDcwMCwgSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSB3cm90ZToKPiBMaW5rIHRyYWluaW5nIGlzIGZhaWxsaW5nIHdoZW4gcnVubmluZyBs
aW5rIGF0IDIuN0dIeiBhbmQgMS42MkdIeiBhbmQKPiBmb2xsb3dpbmcgQlNwZWMgcGxsIGFsZ29y
aXRobS4KPiAKPiBDb21wYXJpbmcgdGhlIHZhbHVlcyBjYWxjdWxhdGVkIGFuZCB0aGUgb25lcyBm
cm9tIHRoZSByZWZlcmVuY2UgdGFibGUKPiBpdCBsb29rcyBsaWtlIE1HX0NMS1RPUDJfQ09SRUNM
S0NUTDFfQV9ESVZSQVRJTyBzaG91bGQgbm90IGFsd2F5cyBzZXQKPiB0byA1LiBGb3IgRFAgcG9y
dHMgSUNMIG1nIHBsbCBhbGdvcml0aG0gc2V0cyBpdCB0byAxMCBvciA1IGJhc2VkIG9uCj4gZGl2
MiB2YWx1ZSwgdGhhdCBtYXRjaGVzIHdpdGggZGtsIGhhcmRjb2RlZCB0YWJsZS4KPiAKPiBTbyBp
bXBsZW1lbnRpbmcgdGhpcyB3YXkgYXMgaXQgcHJvdmVkIHRvIHdvcmsgaW4gSFcgYW5kIGxlYXZp
bmcgYQo+IGNvbW1lbnQgc28gd2Uga25vdyB3aHkgaXQgZG8gbm90IG1hdGNoIEJTcGVjLgo+IAo+
IHY0Ogo+IFVzaW5nIHRoZSBzYW1lIGlzX2RwIGNoZWNrIGFzIElDTCwgbmVlZCB0ZXN0aW5nIG9u
IEhETUkgb3ZlciB0YyBwb3J0Cj4gCj4gSXNzdWUgcmVwb3J0ZWQgb24gQlNwZWMgNDkyMDQuCj4g
Cj4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRl
bC5jb20+CgpSZXZpZXdlZC1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgoKPiAt
LS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jIHwgMTQg
KysrKysrKy0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNyBkZWxl
dGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcGxsX21nci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxs
X21nci5jCj4gaW5kZXggNjlhYmFmYTQ1Y2U5Li5iZTY5YTIzNDQyOTQgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jCj4gQEAgLTI2MzAsMTMg
KzI2MzAsMTMgQEAgc3RhdGljIGJvb2wgaWNsX21nX3BsbF9maW5kX2Rpdmlzb3JzKGludCBjbG9j
a19raHosIGJvb2wgaXNfZHAsIGJvb2wgdXNlX3NzYywKPiAgCQkJCWNvbnRpbnVlOwo+ICAKPiAg
CQkJaWYgKGRpdjIgPj0gMikgewo+IC0JCQkJaWYgKGlzX2RrbCkgewo+IC0JCQkJCWFfZGl2cmF0
aW8gPSA1Owo+IC0JCQkJCXRsaW5lZHJ2ID0gMTsKPiAtCQkJCX0gZWxzZSB7Cj4gLQkJCQkJYV9k
aXZyYXRpbyA9IGlzX2RwID8gMTAgOiA1Owo+IC0JCQkJCXRsaW5lZHJ2ID0gMjsKPiAtCQkJCX0K
PiArCQkJCS8qCj4gKwkJCQkgKiBOb3RlOiBhX2RpdnJhdGlvIG5vdCBtYXRjaGluZyBUR0wgQlNw
ZWMKPiArCQkJCSAqIGFsZ29yaXRobSBidXQgbWF0Y2hpbmcgaGFyZGNvZGVkIHZhbHVlcyBhbmQK
PiArCQkJCSAqIHdvcmtpbmcgb24gSFcgZm9yIERQIGFsdC1tb2RlIGF0IGxlYXN0Cj4gKwkJCQkg
Ki8KPiArCQkJCWFfZGl2cmF0aW8gPSBpc19kcCA/IDEwIDogNTsKPiArCQkJCXRsaW5lZHJ2ID0g
aXNfZGtsID8gMSA6IDI7Cj4gIAkJCX0gZWxzZSB7Cj4gIAkJCQlhX2RpdnJhdGlvID0gNTsKPiAg
CQkJCXRsaW5lZHJ2ID0gMDsKPiAtLSAKPiAyLjIzLjAKPiAKPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
