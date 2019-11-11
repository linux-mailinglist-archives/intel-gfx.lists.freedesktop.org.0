Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B427AF7289
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 11:54:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 239446E89D;
	Mon, 11 Nov 2019 10:54:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B23D6E89D
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 10:54:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Nov 2019 02:54:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,292,1569308400"; d="scan'208";a="213743664"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga001.fm.intel.com with ESMTP; 11 Nov 2019 02:54:23 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 8A9815C1DF4; Mon, 11 Nov 2019 12:54:14 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191110185806.17413-7-chris@chris-wilson.co.uk>
References: <20191110185806.17413-1-chris@chris-wilson.co.uk>
 <20191110185806.17413-7-chris@chris-wilson.co.uk>
Date: Mon, 11 Nov 2019 12:54:14 +0200
Message-ID: <878som65ux.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 07/25] drm/i915: Cancel context if it hangs
 after it is closed
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gSWYgd2Ug
ZGV0ZWN0IGEgaGFuZyBpbiBhIGNsb3NlZCBjb250ZXh0LCBqdXN0IGZsdXNoIGFsbCBvZiBpdHMg
cmVxdWVzdHMKPiBhbmQgY2FuY2VsIGFueSByZW1haW5pbmcgZXhlY3V0aW9uIGFsb25nIHRoZSBj
b250ZXh0LiBOb3RlIHRoYXQgYWZ0ZXIKPiBjbG9zaW5nIHRoZSBjb250ZXh0LCB0aGUgbGFzdCBy
ZWZlcmVuY2UgdG8gdGhlIGNvbnRleHQgbWF5IGJlIGRyb3BwZWQsCj4gbGVhdmluZyBpdCBvbmx5
IHZhbGlkIHVuZGVyIFJDVS4KClNvdW5kIGdvb2QuIEJ1dCBpcyB0aGVyZSBhIHdpbmRvdyBmb3Ig
dXNlcnNwYWNlIHRvIHN0YXJ0CnRvIHNlZSAtRUlPIGlmIGl0IHJlc3VibWl0cyB0byBhIGNsb3Nl
ZCBjb250ZXh0PwoKSW4gb3RoZXIgd29yZHMsIGFmdGVyIHVzZXJzcGFjZSBkb2luZyBnZW1fY3R4
X2Rlc3Ryb3koY3R4X2hhbmRsZSksCndlIHdvdWxkIHJldHVybiAtRUlOVkFMIGR1ZSB0byBjdHhf
aGFuZGxlIGJlaW5nIHN0YWxlCmVhcmxpZXIgdGhhbiB3ZSBjaGVjayBmb3IgYmFubmVkIHN0YXR1
cyBhbmQgcmV0dXJuIC1FSU8/CgotTWlrYQoKPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9yZXNldC5jIHwgNyArKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2Vy
dGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9y
ZXNldC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYwo+IGluZGV4IGYw
M2UwMDAwNTFjMS4uYTZiMGQwMGMzYTUxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3Jlc2V0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9yZXNldC5jCj4gQEAgLTgxLDYgKzgxLDExIEBAIHN0YXRpYyBib29sIGNvbnRleHRfbWFya19n
dWlsdHkoc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCkKPiAgCWJvb2wgYmFubmVkOwo+ICAJ
aW50IGk7Cj4gIAo+ICsJaWYgKGk5MTVfZ2VtX2NvbnRleHRfaXNfY2xvc2VkKGN0eCkpIHsKPiAr
CQlpOTE1X2dlbV9jb250ZXh0X3NldF9iYW5uZWQoY3R4KTsKPiArCQlyZXR1cm4gdHJ1ZTsKPiAr
CX0KPiArCj4gIAlhdG9taWNfaW5jKCZjdHgtPmd1aWx0eV9jb3VudCk7Cj4gIAo+ICAJLyogQ29v
bCBjb250ZXh0cyBhcmUgdG9vIGNvb2wgdG8gYmUgYmFubmVkISAoVXNlZCBmb3IgcmVzZXQgdGVz
dGluZy4pICovCj4gQEAgLTEyNCw2ICsxMjksNyBAQCB2b2lkIF9faTkxNV9yZXF1ZXN0X3Jlc2V0
KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLCBib29sIGd1aWx0eSkKPiAgCj4gIAlHRU1fQlVHX09O
KGk5MTVfcmVxdWVzdF9jb21wbGV0ZWQocnEpKTsKPiAgCj4gKwlyY3VfcmVhZF9sb2NrKCk7IC8q
IHByb3RlY3QgdGhlIEdFTSBjb250ZXh0ICovCj4gIAlpZiAoZ3VpbHR5KSB7Cj4gIAkJaTkxNV9y
ZXF1ZXN0X3NraXAocnEsIC1FSU8pOwo+ICAJCWlmIChjb250ZXh0X21hcmtfZ3VpbHR5KHJxLT5n
ZW1fY29udGV4dCkpCj4gQEAgLTEzMiw2ICsxMzgsNyBAQCB2b2lkIF9faTkxNV9yZXF1ZXN0X3Jl
c2V0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLCBib29sIGd1aWx0eSkKPiAgCQlkbWFfZmVuY2Vf
c2V0X2Vycm9yKCZycS0+ZmVuY2UsIC1FQUdBSU4pOwo+ICAJCWNvbnRleHRfbWFya19pbm5vY2Vu
dChycS0+Z2VtX2NvbnRleHQpOwo+ICAJfQo+ICsJcmN1X3JlYWRfdW5sb2NrKCk7Cj4gIH0KPiAg
Cj4gIHN0YXRpYyBib29sIGk5MTVfaW5fcmVzZXQoc3RydWN0IHBjaV9kZXYgKnBkZXYpCj4gLS0g
Cj4gMi4yNC4wCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
