Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC7AFBCB3
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2019 00:47:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 047BB6EE9E;
	Wed, 13 Nov 2019 23:47:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 665096EE9E
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Nov 2019 23:47:13 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Nov 2019 15:47:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,302,1569308400"; d="scan'208";a="202894252"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by fmsmga008.fm.intel.com with ESMTP; 13 Nov 2019 15:47:12 -0800
Date: Wed, 13 Nov 2019 15:50:11 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20191113235011.GC28227@intel.com>
References: <20191112141503.1116-1-ville.syrjala@linux.intel.com>
 <20191112141503.1116-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191112141503.1116-3-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 02/10] drm/i915: Add intel_crtc_vblank_off()
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBOb3YgMTIsIDIwMTkgYXQgMDQ6MTQ6NTVQTSArMDIwMCwgVmlsbGUgU3lyamFsYSB3
cm90ZToKPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgo+IAo+IFdlIGFscmVhZHkgaGF2ZSBpbnRlbF9jcnRjX3ZibGFua19vbigpLiBBZGQgYSBj
b3VudGVycGFydCBzbyB3ZQo+IGRvbid0IGhhdmUgdG8gaW5saW5lIHRoZSBkaXNhYmxlK2Fzc2Vy
dCBhbGwgb3Zlci4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPgoKTEdUTSwKClJldmlld2VkLWJ5OiBNYW5hc2kgTmF2YXJl
IDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgoKTWFuYXNpCgo+IC0tLQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDE1ICsrKysrKysrKy0tLS0tLQo+
ICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+IAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gaW5kZXggZGEw
MWZhNjkyOGEyLi4xOTQwMjlmZjg2MTcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IEBAIC0xODMxLDYgKzE4MzEsMTIgQEAgc3RhdGljIHZv
aWQgaW50ZWxfY3J0Y192Ymxhbmtfb24oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUpCj4gIAlkcm1fY3J0Y192Ymxhbmtfb24oJmNydGMtPmJhc2UpOwo+ICB9Cj4gIAo+
ICtzdGF0aWMgdm9pZCBpbnRlbF9jcnRjX3ZibGFua19vZmYoc3RydWN0IGludGVsX2NydGMgKmNy
dGMpCj4gK3sKPiArCWRybV9jcnRjX3ZibGFua19vZmYoJmNydGMtPmJhc2UpOwo+ICsJYXNzZXJ0
X3ZibGFua19kaXNhYmxlZCgmY3J0Yy0+YmFzZSk7Cj4gK30KPiArCj4gIHN0YXRpYyB2b2lkIGlu
dGVsX2VuYWJsZV9waXBlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19z
dGF0ZSkKPiAgewo+ICAJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKG5l
d19jcnRjX3N0YXRlLT51YXBpLmNydGMpOwo+IEBAIC02NzM2LDggKzY3NDIsNyBAQCBzdGF0aWMg
dm9pZCBpcm9ubGFrZV9jcnRjX2Rpc2FibGUoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9j
cnRjX3N0YXRlLAo+ICAKPiAgCWludGVsX2VuY29kZXJzX2Rpc2FibGUoc3RhdGUsIGludGVsX2Ny
dGMpOwo+ICAKPiAtCWRybV9jcnRjX3ZibGFua19vZmYoY3J0Yyk7Cj4gLQlhc3NlcnRfdmJsYW5r
X2Rpc2FibGVkKGNydGMpOwo+ICsJaW50ZWxfY3J0Y192Ymxhbmtfb2ZmKGludGVsX2NydGMpOwo+
ICAKPiAgCWludGVsX2Rpc2FibGVfcGlwZShvbGRfY3J0Y19zdGF0ZSk7Cj4gIAo+IEBAIC02Nzg2
LDggKzY3OTEsNyBAQCBzdGF0aWMgdm9pZCBoYXN3ZWxsX2NydGNfZGlzYWJsZShzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUsCj4gIAo+ICAJaW50ZWxfZW5jb2RlcnNfZGlz
YWJsZShzdGF0ZSwgaW50ZWxfY3J0Yyk7Cj4gIAo+IC0JZHJtX2NydGNfdmJsYW5rX29mZihjcnRj
KTsKPiAtCWFzc2VydF92YmxhbmtfZGlzYWJsZWQoY3J0Yyk7Cj4gKwlpbnRlbF9jcnRjX3ZibGFu
a19vZmYoaW50ZWxfY3J0Yyk7Cj4gIAo+ICAJLyogWFhYOiBEbyB0aGUgcGlwZSBhc3NlcnRpb25z
IGF0IHRoZSByaWdodCBwbGFjZSBmb3IgQlhUIERTSS4gKi8KPiAgCWlmICghdHJhbnNjb2Rlcl9p
c19kc2koY3B1X3RyYW5zY29kZXIpKQo+IEBAIC03MTYzLDggKzcxNjcsNyBAQCBzdGF0aWMgdm9p
ZCBpOXh4X2NydGNfZGlzYWJsZShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3Rh
dGUsCj4gIAo+ICAJaW50ZWxfZW5jb2RlcnNfZGlzYWJsZShzdGF0ZSwgaW50ZWxfY3J0Yyk7Cj4g
IAo+IC0JZHJtX2NydGNfdmJsYW5rX29mZihjcnRjKTsKPiAtCWFzc2VydF92YmxhbmtfZGlzYWJs
ZWQoY3J0Yyk7Cj4gKwlpbnRlbF9jcnRjX3ZibGFua19vZmYoaW50ZWxfY3J0Yyk7Cj4gIAo+ICAJ
aW50ZWxfZGlzYWJsZV9waXBlKG9sZF9jcnRjX3N0YXRlKTsKPiAgCj4gLS0gCj4gMi4yMy4wCj4g
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRl
bC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
