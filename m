Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D2D10CE92
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 19:31:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A7DB6E875;
	Thu, 28 Nov 2019 18:31:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C7646E875
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 18:31:15 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Nov 2019 10:31:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,254,1571727600"; d="scan'208";a="207139657"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 28 Nov 2019 10:31:13 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 28 Nov 2019 20:31:12 +0200
Date: Thu, 28 Nov 2019 20:31:12 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20191128183112.GW1208@intel.com>
References: <20191123005459.155383-1-jose.souza@intel.com>
 <20191123005459.155383-5-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191123005459.155383-5-jose.souza@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 5/7] drm/i915/display/mst: Move DPMS_OFF
 call to post_disable
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBOb3YgMjIsIDIwMTkgYXQgMDQ6NTQ6NTdQTSAtMDgwMCwgSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSB3cm90ZToKPiBNb3ZpbmcganVzdCB0byBzaW1wbGlmeSBoYW5kbGluZyBhcyB0aGVy
ZSBpcyBubyBjaGFuZ2UgaW4gYmVoYXZpb3IuCgpsZ3RtClJldmlld2VkLWJ5OiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgoKPiAKPiBDYzogTHVjYXMgRGUg
TWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogSm9zw6kg
Um9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgICAgfCAxNCArKysrKysrLS0tLS0tLQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jIHwgIDEgLQo+ICAy
IGZpbGVzIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKPiAKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKPiBpbmRleCA3ZDNhNmUzYzdmNTcu
LmNmY2FhN2M4MTU3NSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RkaS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
ZGkuYwo+IEBAIC0zODA3LDE0ICszODA3LDE0IEBAIHN0YXRpYyB2b2lkIGludGVsX2RkaV9wb3N0
X2Rpc2FibGVfZHAoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4gIAkJCQkJICBJTlRF
TF9PVVRQVVRfRFBfTVNUKTsKPiAgCWVudW0gcGh5IHBoeSA9IGludGVsX3BvcnRfdG9fcGh5KGRl
dl9wcml2LCBlbmNvZGVyLT5wb3J0KTsKPiAgCj4gLQlpZiAoIWlzX21zdCkgewo+IC0JCS8qCj4g
LQkJICogUG93ZXIgZG93biBzaW5rIGJlZm9yZSBkaXNhYmxpbmcgdGhlIHBvcnQsIG90aGVyd2lz
ZSB3ZSBlbmQKPiAtCQkgKiB1cCBnZXR0aW5nIGludGVycnVwdHMgZnJvbSB0aGUgc2luayBvbiBk
ZXRlY3RpbmcgbGluayBsb3NzLgo+IC0JCSAqLwo+IC0JCWludGVsX2RwX3NpbmtfZHBtcyhpbnRl
bF9kcCwgRFJNX01PREVfRFBNU19PRkYpOwo+ICsJLyoKPiArCSAqIFBvd2VyIGRvd24gc2luayBi
ZWZvcmUgZGlzYWJsaW5nIHRoZSBwb3J0LCBvdGhlcndpc2Ugd2UgZW5kCj4gKwkgKiB1cCBnZXR0
aW5nIGludGVycnVwdHMgZnJvbSB0aGUgc2luayBvbiBkZXRlY3RpbmcgbGluayBsb3NzLgo+ICsJ
ICovCj4gKwlpbnRlbF9kcF9zaW5rX2RwbXMoaW50ZWxfZHAsIERSTV9NT0RFX0RQTVNfT0ZGKTsK
PiArCj4gKwlpZiAoIWlzX21zdCkKPiAgCQlpbnRlbF9kZGlfZGlzYWJsZV9waXBlX2Nsb2NrKG9s
ZF9jcnRjX3N0YXRlKTsKPiAtCX0KPiAgCj4gIAlpbnRlbF9kaXNhYmxlX2RkaV9idWYoZW5jb2Rl
ciwgb2xkX2NydGNfc3RhdGUpOwo+ICAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHBfbXN0LmMKPiBpbmRleCA5NzMxYzNjMWQzZjIuLjk0NTQ5ODQ4NjUzYSAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYwo+IEBAIC0zOTAs
NyArMzkwLDYgQEAgc3RhdGljIHZvaWQgaW50ZWxfbXN0X3Bvc3RfZGlzYWJsZV9kcChzdHJ1Y3Qg
aW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPiAgCj4gIAlpbnRlbF9tc3QtPmNvbm5lY3RvciA9IE5V
TEw7Cj4gIAlpZiAoaW50ZWxfZHAtPmFjdGl2ZV9tc3RfbGlua3MgPT0gMCkgewo+IC0JCWludGVs
X2RwX3NpbmtfZHBtcyhpbnRlbF9kcCwgRFJNX01PREVfRFBNU19PRkYpOwo+ICAJCWludGVsX2Rp
Z19wb3J0LT5iYXNlLnBvc3RfZGlzYWJsZSgmaW50ZWxfZGlnX3BvcnQtPmJhc2UsCj4gIAkJCQkJ
CSAgb2xkX2NydGNfc3RhdGUsIE5VTEwpOwo+ICAJCWludGVsX2RwLT5tc3RfbWFzdGVyX3RyYW5z
Y29kZXIgPSBJTlZBTElEX1RSQU5TQ09ERVI7Cj4gLS0gCj4gMi4yNC4wCj4gCj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4CgotLSAKVmlsbGUgU3ly
asOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
