Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8215A4ED0C
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2019 18:20:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86D3C6E8F1;
	Fri, 21 Jun 2019 16:20:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2291B6E8F1
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jun 2019 16:20:50 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jun 2019 09:20:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,401,1557212400"; d="scan'208";a="183450750"
Received: from mdroper-desk.fm.intel.com (HELO
 mdroper-desk.amr.corp.intel.com) ([10.105.128.126])
 by fmsmga004.fm.intel.com with ESMTP; 21 Jun 2019 09:20:44 -0700
Date: Fri, 21 Jun 2019 09:20:44 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20190621162044.GC24125@mdroper-desk.amr.corp.intel.com>
References: <20190621004556.9614-1-jose.souza@intel.com>
 <20190621004556.9614-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190621004556.9614-2-jose.souza@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH v2 2/3] drm/i915/ehl: Remove unsupported cd
 clocks
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdW4gMjAsIDIwMTkgYXQgMDU6NDU6NTVQTSAtMDcwMCwgSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSB3cm90ZToKPiBFSEwgZG8gbm90IHN1cHBvcnQgNjQ4IGFuZCA2NTIuOCBNSHouCj4g
Cj4gdjI6Cj4gLSBMaW1pdGluZyBtYXhpbXVtIENEIGNsb2NrIGJ5IG1heF9jZGNsa19mcmVxIGlu
c3RlYWQgb2YgcmVtb3ZlIGl0Cj4gZnJvbSBpY2xfY2FsY19jZGNsaygpKFZpbGxlIGFuZCBKYW5p
KQo+IAo+IEJTcGVjOiAyMDU5OAo+IENjOiBDbGludCBUYXlsb3IgPENsaW50b24uQS5UYXlsb3JA
aW50ZWwuY29tPgo+IENjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgo+
IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IENj
OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEpv
c8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgoKTWF0Y2hlcyBic3Bl
Yy4KClJldmlld2VkLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgoK
PiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIHwgNyAr
KysrKystCj4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkK
PiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNs
ay5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCj4gaW5kZXgg
OGVlZjE3N2IyYmJkLi5kYWFiNGU5YTYzNTkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jZGNsay5jCj4gQEAgLTI2MDYsNyArMjYwNiwxMiBAQCBzdGF0aWMgaW50
IGludGVsX2NvbXB1dGVfbWF4X2RvdGNsayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYpCj4gICAqLwo+ICB2b2lkIGludGVsX3VwZGF0ZV9tYXhfY2RjbGsoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2KQo+ICB7Cj4gLQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAx
MSkgewo+ICsJaWYgKElTX0VMS0hBUlRMQUtFKGRldl9wcml2KSkgewo+ICsJCWlmIChkZXZfcHJp
di0+Y2RjbGsuaHcucmVmID09IDI0MDAwKQo+ICsJCQlkZXZfcHJpdi0+bWF4X2NkY2xrX2ZyZXEg
PSA1NTIwMDA7Cj4gKwkJZWxzZQo+ICsJCQlkZXZfcHJpdi0+bWF4X2NkY2xrX2ZyZXEgPSA1NTY4
MDA7Cj4gKwl9IGVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpIHsKPiAgCQlpZiAo
ZGV2X3ByaXYtPmNkY2xrLmh3LnJlZiA9PSAyNDAwMCkKPiAgCQkJZGV2X3ByaXYtPm1heF9jZGNs
a19mcmVxID0gNjQ4MDAwOwo+ICAJCWVsc2UKPiAtLSAKPiAyLjIyLjAKPiAKCi0tIApNYXR0IFJv
cGVyCkdyYXBoaWNzIFNvZnR3YXJlIEVuZ2luZWVyCklvVEcgUGxhdGZvcm0gRW5hYmxpbmcgJiBE
ZXZlbG9wbWVudApJbnRlbCBDb3Jwb3JhdGlvbgooOTE2KSAzNTYtMjc5NQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
