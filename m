Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E680462146
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2019 17:14:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD4F9892E7;
	Mon,  8 Jul 2019 15:14:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3337489139
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2019 15:14:19 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 08:13:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,466,1557212400"; d="scan'208";a="340473344"
Received: from hollowex-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.254.101.12])
 by orsmga005.jf.intel.com with ESMTP; 08 Jul 2019 08:13:53 -0700
Date: Mon, 8 Jul 2019 08:13:53 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20190708151353.haudzu2na2iyhp54@ldmartin-desk1>
References: <20190704000649.20661-1-lucas.demarchi@intel.com>
 <20190704000649.20661-3-lucas.demarchi@intel.com>
 <20190704135641.GD25657@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190704135641.GD25657@ideak-desk.fi.intel.com>
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: fix include order in
 intel_tc.*
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdWwgMDQsIDIwMTkgYXQgMDQ6NTY6NDFQTSArMDMwMCwgSW1yZSBEZWFrIHdyb3Rl
Ogo+T24gV2VkLCBKdWwgMDMsIDIwMTkgYXQgMDU6MDY6NDdQTSAtMDcwMCwgTHVjYXMgRGUgTWFy
Y2hpIHdyb3RlOgo+PiBNYWtlIGludGVsX3RjLmggdGhlIGZpcnN0IGluY2x1ZGUgc28gd2UgZ3Vh
cmFudGVlIGl0J3Mgc2VsZi1jb250YWluZWQuCj4+IFNvcnQgdGhlIHJlc3QuIFNhbWUgcHJpbmNp
cGxlIGFwcGxpZXMgZm9yIGluY2x1ZGVzIGluIHRoZSBoZWFkZXIuCj4+Cj4+IFNpZ25lZC1vZmYt
Ynk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+PiAtLS0KPj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYyB8IDUgKysrLS0KPj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuaCB8IDUgKysrLS0KPj4gIDIgZmls
ZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jCj4+IGluZGV4IDFhOWRkMzJmYjBhNS4uZTZl
NjE2M2MxMjMyIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3RjLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5j
Cj4+IEBAIC0zLDEwICszLDExIEBACj4+ICAgKiBDb3B5cmlnaHQgwqkgMjAxOSBJbnRlbCBDb3Jw
b3JhdGlvbgo+PiAgICovCj4+Cj4+ICsjaW5jbHVkZSAiaW50ZWxfdGMuaCIKPgo+SSBnZXQgeW91
ciBwb2ludCB0byBrZWVwIHRoZSBzZWxmLWNvbnRhaW5lZCBjaGVjayB3b3JrIGV2ZW4gd2l0aG91
dCB0aGUKPmhlYWRlciB0ZXN0IGZpbGVzLCBidXQgSSdtIG5vdCBzdXJlIGlmIHdlIG5lZWQgdGhh
dCwgc2luY2UgdGhlcmUgaXMgdGhlCj5oZWFkZXIgdGVzdCBmaWxlIGFwcHJvYWNoIGluIHBsYWNl
LiBJIGhhdmVuJ3Qgc2VlbiB0aGlzIGRvbmUgYW55d2hlcmUKPmVsc2UsIHNvIHdlIHNob3VsZG4n
dCBtYWtlIGFuIGV4Y2VwdGlvbiBoZXJlIGVpdGhlciBpbW8uCj4KPitKYW5pIGZvciB0aGF0Lgo+
Cj5GaXhpbmcgdGhlIHJlc3Qgb2YgbXkgQUJDIHNjcmV3LXVwIGxvb2tzIG9rLgoKSSBjYW4gY2hh
bmdlIHRoaXMgYW5kIGxlYXZlIGl0IGZvciBsYXRlciB0byBtYWludGFpbgpjb25zaXN0ZW5jeSBh
Y3Jvc3MgdGhlIGNvZGViYXNlLgoKTHVjYXMgRGUgTWFyY2hpCgo+Cj4+ICsKPj4gKyNpbmNsdWRl
ICJpOTE1X2Rydi5oIgo+PiAgI2luY2x1ZGUgImludGVsX2Rpc3BsYXkuaCIKPj4gICNpbmNsdWRl
ICJpbnRlbF9kcF9tc3QuaCIKPj4gLSNpbmNsdWRlICJpOTE1X2Rydi5oIgo+PiAtI2luY2x1ZGUg
ImludGVsX3RjLmgiCj4+Cj4+ICBzdGF0aWMgY29uc3QgY2hhciAqdGNfcG9ydF9tb2RlX25hbWUo
ZW51bSB0Y19wb3J0X21vZGUgbW9kZSkKPj4gIHsKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfdGMuaAo+PiBpbmRleCAwZDg0MTFkNGE5MWQuLjQ1YWUzMDUzN2I3OCAxMDA2NDQK
Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5oCj4+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuaAo+PiBAQCAtNiwxMCArNiwx
MSBAQAo+PiAgI2lmbmRlZiBfX0lOVEVMX1RDX0hfXwo+PiAgI2RlZmluZSBfX0lOVEVMX1RDX0hf
Xwo+Pgo+PiAtI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+Cj4+IC0jaW5jbHVkZSA8bGludXgvbXV0
ZXguaD4KPj4gICNpbmNsdWRlICJpbnRlbF9kcnYuaCIKPj4KPj4gKyNpbmNsdWRlIDxsaW51eC9t
dXRleC5oPgo+PiArI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+Cj4+ICsKPj4gIGJvb2wgaW50ZWxf
dGNfcG9ydF9jb25uZWN0ZWQoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpOwo+
PiAgdTMyIGludGVsX3RjX3BvcnRfZ2V0X2xhbmVfbWFzayhzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9w
b3J0ICpkaWdfcG9ydCk7Cj4+ICBpbnQgaW50ZWxfdGNfcG9ydF9maWFfbWF4X2xhbmVfY291bnQo
c3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpOwo+PiAtLQo+PiAyLjIxLjAKPj4K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
