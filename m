Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35616EB14A
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2019 14:35:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AFB06EE96;
	Thu, 31 Oct 2019 13:35:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9A6C6EE96
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2019 13:35:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Oct 2019 06:35:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,250,1569308400"; d="scan'208";a="225693192"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga004.fm.intel.com with ESMTP; 31 Oct 2019 06:35:04 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id B4EC85C1E15; Thu, 31 Oct 2019 15:34:08 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191031094259.23028-1-chris@chris-wilson.co.uk>
References: <20191031094212.22896-1-chris@chris-wilson.co.uk>
 <20191031094259.23028-1-chris@chris-wilson.co.uk>
Date: Thu, 31 Oct 2019 15:34:08 +0200
Message-ID: <874kzpkpin.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Assert that the
 idle_pulse is sent
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gV2hlbiBj
aGVja2luZyB0aGUgaGVhcnRiZWF0IHB1bHNlLCB3ZSBleHBlY3QgaXQgdG8gaGF2ZSBiZWVuIHNl
bnQgYnkgdGhlCj4gdGltZSB3ZSBoYXZlIHNsZXB0LiBXZSBjYW4gdmVyaWZ5IHRoaXMgYnkgY2hl
Y2tpbmcgdGhlIGVuZ2luZSBzZXJpYWwKPiBudW1iZXIgdG8gc2VlIGlmIHRoYXQgbWF0Y2hlcyB0
aGUgcHJlZGljdGVkIHB1bHNlIHNlcmlhbC4gSXQgd2lsbCBhbHdheXMKPiBiZSB0cnVlIGlmLCBh
bmQgb25seSBpZiwgdGhlIHB1bHNlIHdhcyBzZW50IGJ5IGl0c2VsZiAoYXMgZGVzaWduZWQgYnkK
PiB0aGUgdGVzdCkuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rf
ZW5naW5lX2hlYXJ0YmVhdC5jIHwgMiArKwo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25z
KCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfZW5n
aW5lX2hlYXJ0YmVhdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfZW5naW5l
X2hlYXJ0YmVhdC5jCj4gaW5kZXggOWU3Mzc2YjU5MmU1Li4wN2EyZmZmZTE2YTEgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfZW5naW5lX2hlYXJ0YmVhdC5j
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfZW5naW5lX2hlYXJ0YmVh
dC5jCj4gQEAgLTk3LDYgKzk3LDggQEAgc3RhdGljIGludCBfX2xpdmVfaWRsZV9wdWxzZShzdHJ1
Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCj4gIAkJZ290byBvdXQ7Cj4gIAl9Cj4gIAo+ICsJ
R0VNX0JVR19PTihSRUFEX09OQ0UoZW5naW5lLT5zZXJpYWwpICE9IGVuZ2luZS0+d2FrZXJlZl9z
ZXJpYWwpOwo+ICsKClllcyB0aGUgd2FrZXJlZl9zZXJpYWwgc2VlbXMgdG8gYmUgb3VyIGxvY2Fs
IGNvcHkuCgpSZXZpZXdlZC1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5p
bnRlbC5jb20+CgpUaGUgZXh0cmEgc3BhY2Ugb24gc3RhcnRpbmcgdGhlIHN1YnRlc3RzLCBhdCB0
aGUgZW5kIG9mCnRoZSBmaWxlLCBjYXVnaHQgbXkgZXllLgoKPiAgCXB1bHNlX3VubG9ja193YWl0
KHApOyAvKiBzeW5jaHJvbml6ZSB3aXRoIHRoZSByZXRpcmVtZW50IGNhbGxiYWNrICovCj4gIAo+
ICAJaWYgKCFpOTE1X2FjdGl2ZV9pc19pZGxlKCZwLT5hY3RpdmUpKSB7Cj4gLS0gCj4gMi4yNC4w
LnJjMQo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
