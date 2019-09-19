Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B72B8160
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 21:26:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AC846F9E5;
	Thu, 19 Sep 2019 19:26:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEAAB6F9E5
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 19:26:28 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 12:26:27 -0700
X-IronPort-AV: E=Sophos;i="5.64,524,1559545200"; d="scan'208";a="338759618"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 12:26:26 -0700
Date: Thu, 19 Sep 2019 22:25:33 +0300
From: Imre Deak <imre.deak@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20190919192533.GH29039@ideak-desk.fi.intel.com>
References: <20190919000726.267988-1-jose.souza@intel.com>
 <20190919000726.267988-11-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190919000726.267988-11-jose.souza@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 10/13] drm/i915/tgl: Check the UC health
 of tc controllers after power on
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

T24gV2VkLCBTZXAgMTgsIDIwMTkgYXQgMDU6MDc6MjNQTSAtMDcwMCwgSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSB3cm90ZToKPiBOZXcgc3RlcCBhZGRlZCBmb3IgVEdMLCByZXF1aXJlZCBmb3IgdXMg
dG8gY2hlY2sgdGhlIFRDCj4gbWljcm9jb250cm9sbGVyIGhlYWx0aCBhZnRlciBwb3dlciBvbiBU
QyBhdXguCj4gCj4gQlNwZWM6IDQ5Mjk0Cj4gCj4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0
byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogSW1yZSBEZWFr
IDxpbXJlLmRlYWtAaW50ZWwuY29tPgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgfCAxMyArKysrKysrKysrKysrCj4gIDEgZmlsZSBj
aGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKPiBpbmRleCBjZTg4YTI3MjI5ZWYuLmYx
MTg2YmMyMzU0MiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfcG93ZXIuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV9wb3dlci5jCj4gQEAgLTU2Miw2ICs1NjIsOCBAQCBzdGF0aWMgdm9pZCBp
Y2xfdGNfcG9ydF9hc3NlcnRfcmVmX2hlbGQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2LAo+ICAKPiAgI2VuZGlmCj4gIAo+ICsjZGVmaW5lIFRHTF9BVVhfUFdfVE9fVENfUE9SVChw
d19pZHgpCSgocHdfaWR4KSAtIFRHTF9QV19DVExfSURYX0FVWF9UQzEpCj4gKwo+ICBzdGF0aWMg
dm9pZAo+ICBpY2xfdGNfcGh5X2F1eF9wb3dlcl93ZWxsX2VuYWJsZShzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsCj4gIAkJCQkgc3RydWN0IGk5MTVfcG93ZXJfd2VsbCAqcG93ZXJf
d2VsbCkKPiBAQCAtNTc4LDYgKzU4MCwxNyBAQCBpY2xfdGNfcGh5X2F1eF9wb3dlcl93ZWxsX2Vu
YWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gIAlJOTE1X1dSSVRFKERQ
X0FVWF9DSF9DVEwoYXV4X2NoKSwgdmFsKTsKPiAgCj4gIAloc3dfcG93ZXJfd2VsbF9lbmFibGUo
ZGV2X3ByaXYsIHBvd2VyX3dlbGwpOwo+ICsKPiArCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49
IDEyICYmICFwb3dlcl93ZWxsLT5kZXNjLT5oc3cuaXNfdGNfdGJ0KSB7Cj4gKwkJZW51bSB0Y19w
b3J0IHRjX3BvcnQ7Cj4gKwo+ICsJCXRjX3BvcnQgPSBUR0xfQVVYX1BXX1RPX1RDX1BPUlQocG93
ZXJfd2VsbC0+ZGVzYy0+aHN3LmlkeCk7Cj4gKwkJSTkxNV9XUklURShISVBfSU5ERVhfUkVHKHRj
X3BvcnQpLCBISVBfSU5ERVhfVkFMKHRjX3BvcnQsIDB4MikpOwo+ICsKPiArCQlpZiAoaW50ZWxf
ZGVfd2FpdF9mb3Jfc2V0KGRldl9wcml2LCBES0xfQ01OX1VDX0RXXzI3KHRjX3BvcnQpLAo+ICsJ
CQkJCSAgREtMX0NNTl9VQ19EVzI3X1VDX0hFQUxUSCwgMSkpCj4gKwkJCURSTV9XQVJOKCJUaW1l
b3V0IHdhaXRpbmcgVEMgdUMgaGVhbHRoXG4iKTsKPiArCX0KPiAgfQo+ICAKPiAgc3RhdGljIHZv
aWQKPiAtLSAKPiAyLjIzLjAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
