Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 663CE10C103
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 01:38:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B00D26E147;
	Thu, 28 Nov 2019 00:38:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A77E46E147
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 00:38:23 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 16:38:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,251,1571727600"; d="scan'208";a="211919139"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga006.jf.intel.com with ESMTP; 27 Nov 2019 16:38:22 -0800
Date: Wed, 27 Nov 2019 16:38:22 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20191128003822.GO6337@mdroper-desk1.amr.corp.intel.com>
References: <20191126005400.264480-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191126005400.264480-1-jose.souza@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH v2 1/5] drm/i915/psr: Add bits per pixel
 limitation
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

T24gTW9uLCBOb3YgMjUsIDIwMTkgYXQgMDQ6NTM6NTZQTSAtMDgwMCwgSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSB3cm90ZToKPiBQU1IyIEhXIG9ubHkgc3VwcG9ydCBhIGxpbWl0ZWQgbnVtYmVyIG9m
IGJpdHMgcGVyIHBpeGVsLCBpZiBtb2RlIGhhcwo+IG1vcmUgdGhhbiBzdXBwb3J0ZWQgUFNSMiBz
aG91bGQgbm90IGJlIGVuYWJsZWQuCj4gCj4gQlNwZWM6IDUwNDIyCj4gQlNwZWM6IDc3MTMKPiBD
YzogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPgo+IENjOiBNYXR0
IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgo+IFJldmlld2VkLWJ5OiBMdWNhcyBE
ZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBKb3PD
qSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KClJldmlld2VkLWJ5OiBN
YXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgoKPiAtLS0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDExICsrKysrKysrKystCj4gIDEgZmls
ZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gaW5kZXggYzFkMTMzMzYyYjc2Li4wZDg0
ZWEyOGJjNmYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMK
PiBAQCAtNjA4LDcgKzYwOCw3IEBAIHN0YXRpYyBib29sIGludGVsX3BzcjJfY29uZmlnX3ZhbGlk
KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYgPSBkcF90b19pOTE1KGludGVsX2RwKTsKPiAgCWludCBjcnRjX2hkaXNwbGF5ID0g
Y3J0Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZS5jcnRjX2hkaXNwbGF5Owo+ICAJaW50IGNydGNf
dmRpc3BsYXkgPSBjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlLmNydGNfdmRpc3BsYXk7Cj4g
LQlpbnQgcHNyX21heF9oID0gMCwgcHNyX21heF92ID0gMDsKPiArCWludCBwc3JfbWF4X2ggPSAw
LCBwc3JfbWF4X3YgPSAwLCBtYXhfYnBwID0gMDsKPiAgCj4gIAlpZiAoIWRldl9wcml2LT5wc3Iu
c2lua19wc3IyX3N1cHBvcnQpCj4gIAkJcmV0dXJuIGZhbHNlOwo+IEBAIC02MzIsMTIgKzYzMiwx
NSBAQCBzdGF0aWMgYm9vbCBpbnRlbF9wc3IyX2NvbmZpZ192YWxpZChzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwLAo+ICAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpIHsKPiAgCQlwc3Jf
bWF4X2ggPSA1MTIwOwo+ICAJCXBzcl9tYXhfdiA9IDMyMDA7Cj4gKwkJbWF4X2JwcCA9IDMwOwo+
ICAJfSBlbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEwIHx8IElTX0dFTUlOSUxBS0Uo
ZGV2X3ByaXYpKSB7Cj4gIAkJcHNyX21heF9oID0gNDA5NjsKPiAgCQlwc3JfbWF4X3YgPSAyMzA0
Owo+ICsJCW1heF9icHAgPSAyNDsKPiAgCX0gZWxzZSBpZiAoSVNfR0VOKGRldl9wcml2LCA5KSkg
ewo+ICAJCXBzcl9tYXhfaCA9IDM2NDA7Cj4gIAkJcHNyX21heF92ID0gMjMwNDsKPiArCQltYXhf
YnBwID0gMjQ7Cj4gIAl9Cj4gIAo+ICAJaWYgKGNydGNfaGRpc3BsYXkgPiBwc3JfbWF4X2ggfHwg
Y3J0Y192ZGlzcGxheSA+IHBzcl9tYXhfdikgewo+IEBAIC02NDcsNiArNjUwLDEyIEBAIHN0YXRp
YyBib29sIGludGVsX3BzcjJfY29uZmlnX3ZhbGlkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAs
Cj4gIAkJcmV0dXJuIGZhbHNlOwo+ICAJfQo+ICAKPiArCWlmIChjcnRjX3N0YXRlLT5waXBlX2Jw
cCA+IG1heF9icHApIHsKPiArCQlEUk1fREVCVUdfS01TKCJQU1IyIG5vdCBlbmFibGVkLCBwaXBl
IGJwcCAlZCA+IG1heCBzdXBwb3J0ZWQgJWRcbiIsCj4gKwkJCSAgICAgIGNydGNfc3RhdGUtPnBp
cGVfYnBwLCBtYXhfYnBwKTsKPiArCQlyZXR1cm4gZmFsc2U7Cj4gKwl9Cj4gKwo+ICAJLyoKPiAg
CSAqIEhXIHNlbmRzIFNVIGJsb2NrcyBvZiBzaXplIGZvdXIgc2NhbiBsaW5lcywgd2hpY2ggbWVh
bnMgdGhlIHN0YXJ0aW5nCj4gIAkgKiBYIGNvb3JkaW5hdGUgYW5kIFkgZ3JhbnVsYXJpdHkgcmVx
dWlyZW1lbnRzIHdpbGwgYWx3YXlzIGJlIG1ldC4gV2UKPiAtLSAKPiAyLjI0LjAKPiAKCi0tIApN
YXR0IFJvcGVyCkdyYXBoaWNzIFNvZnR3YXJlIEVuZ2luZWVyClZUVC1PU0dDIFBsYXRmb3JtIEVu
YWJsZW1lbnQKSW50ZWwgQ29ycG9yYXRpb24KKDkxNikgMzU2LTI3OTUKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
