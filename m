Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76E3597232
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 08:22:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 476B66E902;
	Wed, 21 Aug 2019 06:22:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0743B6E902
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 06:22:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 23:22:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,411,1559545200"; d="scan'208";a="378841348"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga006.fm.intel.com with ESMTP; 20 Aug 2019 23:22:51 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 8A4185C1F9C; Wed, 21 Aug 2019 09:22:04 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190821042044.7354-1-chris@chris-wilson.co.uk>
References: <20190821042044.7354-1-chris@chris-wilson.co.uk>
Date: Wed, 21 Aug 2019 09:22:04 +0300
Message-ID: <87blwjujg3.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gtt: Relax assertion for pt_used
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gV2hlbiBp
bnNlcnRpbmcgdGhlIGZpbmFsIGxldmVsIFBURSwgd2UgY2hlY2sgdGhhdCB3ZSBhcmUgbm90IG92
ZXJmbG93aW5nCj4gdGhlIHBhZ2UgdGFibGUgKGNoZWNraW5nIHRoYXQgcHRfdXNlZCBkb2VzIG5v
dCBleGNlZWQgdGhlIHNpemUgb2YgdGhlCj4gdGFibGUpLiBIb3dldmVyLCB3ZSBoYXZlIHRvIGFs
bG93IGZvciBldmVyeSBvdGhlciBQVEUgdG8gYmUgcGlubmVkIGJ5IGEKPiBzaW11bHRhbmVvdXMg
cmVtb3ZhbCB0aHJlYWQgKGFzIG9uIHJlbW92ZSB3ZSBidW1wIHRoZSBwdF91c2VkIGNvdW50ZXIK
PiBiZWZvcmUgYWRqdXN0aW5nIHRoZSB0YWJsZSkuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogTWlrYSBLdW9wcGFsYSA8bWlr
YS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogTWlrYSBLdW9wcGFsYSA8
bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dlbV9ndHQuYyB8IDMgKystCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbV9ndHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4g
aW5kZXggMDgxYzhiNzljMDQ3Li45NDcxMmQzZWI4ODIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dlbV9ndHQuYwo+IEBAIC0xMTEyLDcgKzExMTIsOCBAQCBzdGF0aWMgaW50IF9fZ2VuOF9w
cGd0dF9hbGxvYyhzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICogY29uc3Qgdm0sCj4gIAkJCSAg
ICBhdG9taWNfcmVhZCgmcHQtPnVzZWQpKTsKPiAgCj4gIAkJCWF0b21pY19hZGQoY291bnQsICZw
dC0+dXNlZCk7Cj4gLQkJCUdFTV9CVUdfT04oYXRvbWljX3JlYWQoJnB0LT51c2VkKSA+IEk5MTVf
UERFUyk7Cj4gKwkJCS8qIEFsbCBvdGhlciBwZGVzIG1heSBiZSBzaW11bHRhbmVvdXNseSByZW1v
dmVkICovCj4gKwkJCUdFTV9CVUdfT04oYXRvbWljX3JlYWQoJnB0LT51c2VkKSA+IDIgKiBJOTE1
X1BERVMpOwo+ICAJCQkqc3RhcnQgKz0gY291bnQ7Cj4gIAkJfQo+ICAJfSB3aGlsZSAoaWR4Kyss
IC0tbGVuKTsKPiAtLSAKPiAyLjIzLjAucmMxCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
