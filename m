Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A24472AB30A
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Nov 2020 10:00:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15C50897EB;
	Mon,  9 Nov 2020 09:00:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EB6D897EB
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Nov 2020 09:00:36 +0000 (UTC)
IronPort-SDR: ltcO+vG87G9v+mvcoTBBcchvS5y8D/GTEBfz5C6koF7YtJf8P6J6uxfLgQ7eh+YPl7Eo8noV45
 kbN6jKU/vVkw==
X-IronPort-AV: E=McAfee;i="6000,8403,9799"; a="169883141"
X-IronPort-AV: E=Sophos;i="5.77,463,1596524400"; d="scan'208";a="169883141"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2020 01:00:35 -0800
IronPort-SDR: 3aHrVCtJMKSHc6z2R5Qrdonc4bmbubJmN53j6j/JdH60PbUvw6d92sb6HJtzrlBoLN9aauln2D
 eHBmEGq5boWw==
X-IronPort-AV: E=Sophos;i="5.77,463,1596524400"; d="scan'208";a="355600473"
Received: from pjgubbin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.16.193])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2020 01:00:33 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20201106225531.920641-3-lucas.demarchi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201106225531.920641-1-lucas.demarchi@intel.com>
 <20201106225531.920641-3-lucas.demarchi@intel.com>
Date: Mon, 09 Nov 2020 11:00:31 +0200
Message-ID: <878sbaucpc.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/8] drm/i915/display: Do not reset display
 when there is none
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

T24gRnJpLCAwNiBOb3YgMjAyMCwgTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRl
bC5jb20+IHdyb3RlOgo+IEZyb206IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFA
aW50ZWwuY29tPgo+Cj4gRGlzcGxheSBpcyBhbHdheXMgZGlzYWJsZWQgYW5kIGVuYWJsZWQgd2hl
biByZXNldHRpbmcgYW55IGVuZ2luZSwgYnV0IGlmCj4gdGhlcmUgaXMgbm8gZGlzcGxheSBpdCBz
aG91bGQgbm90IGRvIGFueXRoaW5nIHdpdGggZGlzcGxheSBhbmQgb25seQo+IHJlc2V0IHRoZSBu
ZWVkZWQgZW5naW5lcy4KPgo+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29t
Pgo+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50
ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlA
aW50ZWwuY29tPgoKUmV2aWV3ZWQtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5j
b20+Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YyB8IDYgKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKPgo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gaW5kZXggYWIwNGM4
OWNkZjA1Li5iNmE5ZDQxYTA0M2UgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYwo+IEBAIC00OTU4LDYgKzQ5NTgsOSBAQCB2b2lkIGludGVsX2Rp
c3BsYXlfcHJlcGFyZV9yZXNldChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4g
IAlzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3RhdGU7Cj4gIAlpbnQgcmV0Owo+ICAKPiArCWlm
ICghSEFTX0RJU1BMQVkoZGV2X3ByaXYpKQo+ICsJCXJldHVybjsKPiArCj4gIAkvKiByZXNldCBk
b2Vzbid0IHRvdWNoIHRoZSBkaXNwbGF5ICovCj4gIAlpZiAoIWRldl9wcml2LT5wYXJhbXMuZm9y
Y2VfcmVzZXRfbW9kZXNldF90ZXN0ICYmCj4gIAkgICAgIWdwdV9yZXNldF9jbG9iYmVyc19kaXNw
bGF5KGRldl9wcml2KSkKPiBAQCAtNTAxOCw2ICs1MDIxLDkgQEAgdm9pZCBpbnRlbF9kaXNwbGF5
X2ZpbmlzaF9yZXNldChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gIAlzdHJ1
Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3RhdGU7Cj4gIAlpbnQgcmV0Owo+ICAKPiArCWlmICghSEFT
X0RJU1BMQVkoZGV2X3ByaXYpKQo+ICsJCXJldHVybjsKPiArCj4gIAkvKiByZXNldCBkb2Vzbid0
IHRvdWNoIHRoZSBkaXNwbGF5ICovCj4gIAlpZiAoIXRlc3RfYml0KEk5MTVfUkVTRVRfTU9ERVNF
VCwgJmRldl9wcml2LT5ndC5yZXNldC5mbGFncykpCj4gIAkJcmV0dXJuOwoKLS0gCkphbmkgTmlr
dWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
