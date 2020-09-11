Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA1B2664F2
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Sep 2020 18:48:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB1206EAB2;
	Fri, 11 Sep 2020 16:48:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DCB16EAB2
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Sep 2020 16:48:49 +0000 (UTC)
IronPort-SDR: CwTxF4eLJ8jJ7GZkJvVnOSwS4RhpmAScFm3j933fRmGlM1UxvaTk0pvDe4wvh3wP8Axfm+si8D
 oYMjJtYuC/yA==
X-IronPort-AV: E=McAfee;i="6000,8403,9741"; a="138313835"
X-IronPort-AV: E=Sophos;i="5.76,416,1592895600"; d="scan'208";a="138313835"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 09:48:48 -0700
IronPort-SDR: dkXcVLxICk96nLgR7D3qarIRGeSrItYg/MXdxdrG1JTEHIncf+hJZCo8LWMEZE1BvHsAKkOda4
 +AKx/pdZFpgw==
X-IronPort-AV: E=Sophos;i="5.76,416,1592895600"; d="scan'208";a="481384711"
Received: from shaunbis-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.26.108])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 09:48:47 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200908140210.31048-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200908140210.31048-1-ville.syrjala@linux.intel.com>
 <20200908140210.31048-3-ville.syrjala@linux.intel.com>
Date: Fri, 11 Sep 2020 19:48:50 +0300
Message-ID: <87lfhgz2bx.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Nuke MI_ARB_STATE save/restore
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAwOCBTZXAgMjAyMCwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4KPiBPcmlnaW5hbGx5IGFkZGVkIGluIGNvbW1pdCAxZjg0ZTU1MGE4
NzAgKCJkcm0vaTkxNSBtb3JlIHJlZ2lzdGVycyBmb3IKPiBTMyAoRFNQQ0xLX0dBVEVfRCwgQ0FD
SEVfTU9ERV8wLCBNSV9BUkJfU1RBVEUpIikgdG8gZml4IHNvbWUgdW5kZXJydW5zLgo+IEkgc3Vz
cGVjdCB0aGF0IHdhcyBkdWUgdG8gdGhlIHRyaWNrbGUgZmVlZCBzZXR0aW5ncyBnZXR0aW5nIGNs
b2JiZXJlZAo+IGR1cmluZyBzdXNwZW5kLiBXZSd2ZSBiZWVuIGRpc2FibGluZyB0cmlja2xlIGZl
ZWQgZXhwbGljaXRseSBzaW5jZQo+IGNvbW1pdCAyMGY5NDk2NzBmNTEgKCJkcm0vaTkxNTogRGlz
YWJsZSB0cmlja2xlIGZlZWQgdmlhIE1JX0FSQl9TVEFURQo+IGZvciB0aGUgZ2VuNCIpIHNvIHRo
aXMgbWFnaWMgc2F2ZS9yZXN0b3JlIHNob3VsZCBubyBsb25nZXIgYmUgbmVlZGVkLgo+Cj4gU2ln
bmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4KClJldmlld2VkLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgoKPiAt
LS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgfCAxIC0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9zdXNwZW5kLmMgfCA2IC0tLS0tLQo+ICAyIGZpbGVzIGNoYW5n
ZWQsIDcgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiBpbmRleCAzOTE3
YmIxYTYxNTcuLmNmNTEyNDZiNTQwMiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2Rydi5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+IEBA
IC01MzgsNyArNTM4LDYgQEAgc3RydWN0IGludGVsX2dtYnVzIHsKPiAgc3RydWN0IGk5MTVfc3Vz
cGVuZF9zYXZlZF9yZWdpc3RlcnMgewo+ICAJdTMyIHNhdmVEU1BBUkI7Cj4gIAl1MzIgc2F2ZUNB
Q0hFX01PREVfMDsKPiAtCXUzMiBzYXZlTUlfQVJCX1NUQVRFOwo+ICAJdTMyIHNhdmVTV0YwWzE2
XTsKPiAgCXUzMiBzYXZlU1dGMVsxNl07Cj4gIAl1MzIgc2F2ZVNXRjNbM107Cj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3VzcGVuZC5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9zdXNwZW5kLmMKPiBpbmRleCA1OTJjMjMwZTY5MTQuLjM0YzdkN2JjY2VjNSAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N1c3BlbmQuYwo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3VzcGVuZC5jCj4gQEAgLTY2LDkgKzY2LDYgQEAg
aW50IGk5MTVfc2F2ZV9zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4g
IAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA8IDcpCj4gIAkJZGV2X3ByaXYtPnJlZ2ZpbGUuc2F2
ZUNBQ0hFX01PREVfMCA9IEk5MTVfUkVBRChDQUNIRV9NT0RFXzApOwo+ICAKPiAtCS8qIE1lbW9y
eSBBcmJpdHJhdGlvbiBzdGF0ZSAqLwo+IC0JZGV2X3ByaXYtPnJlZ2ZpbGUuc2F2ZU1JX0FSQl9T
VEFURSA9IEk5MTVfUkVBRChNSV9BUkJfU1RBVEUpOwo+IC0KPiAgCS8qIFNjcmF0Y2ggc3BhY2Ug
Ki8KPiAgCWlmIChJU19HRU4oZGV2X3ByaXYsIDIpICYmIElTX01PQklMRShkZXZfcHJpdikpIHsK
PiAgCQlmb3IgKGkgPSAwOyBpIDwgNzsgaSsrKSB7Cj4gQEAgLTEwNyw5ICsxMDQsNiBAQCBpbnQg
aTkxNV9yZXN0b3JlX3N0YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAg
CQlJOTE1X1dSSVRFKENBQ0hFX01PREVfMCwgZGV2X3ByaXYtPnJlZ2ZpbGUuc2F2ZUNBQ0hFX01P
REVfMCB8Cj4gIAkJCSAgIDB4ZmZmZjAwMDApOwo+ICAKPiAtCS8qIE1lbW9yeSBhcmJpdHJhdGlv
biBzdGF0ZSAqLwo+IC0JSTkxNV9XUklURShNSV9BUkJfU1RBVEUsIGRldl9wcml2LT5yZWdmaWxl
LnNhdmVNSV9BUkJfU1RBVEUgfCAweGZmZmYwMDAwKTsKPiAtCj4gIAkvKiBTY3JhdGNoIHNwYWNl
ICovCj4gIAlpZiAoSVNfR0VOKGRldl9wcml2LCAyKSAmJiBJU19NT0JJTEUoZGV2X3ByaXYpKSB7
Cj4gIAkJZm9yIChpID0gMDsgaSA8IDc7IGkrKykgewoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBP
cGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
