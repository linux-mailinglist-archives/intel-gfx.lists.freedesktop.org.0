Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D00FBCD6
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2019 01:06:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 339D06EEA8;
	Thu, 14 Nov 2019 00:06:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30F846EEA4
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Nov 2019 00:06:21 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Nov 2019 16:06:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,302,1569308400"; d="scan'208";a="203141584"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by fmsmga007.fm.intel.com with ESMTP; 13 Nov 2019 16:06:20 -0800
Date: Wed, 13 Nov 2019 16:09:18 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20191114000918.GE28227@intel.com>
References: <20191112141503.1116-1-ville.syrjala@linux.intel.com>
 <20191112141503.1116-5-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191112141503.1116-5-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 04/10] drm/i915: Move crtc_state to tighter
 scope
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

T24gVHVlLCBOb3YgMTIsIDIwMTkgYXQgMDQ6MTQ6NTdQTSArMDIwMCwgVmlsbGUgU3lyamFsYSB3
cm90ZToKPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgo+IAo+IGludGVsX21vZGVzZXRfc2V0dXBfaHdfc3RhdGUoKSBkb2Vzbid0IG5lZWQgdGhl
IGNydGNfc3RhdGUgYXQgdGhlCj4gdG9wIGxldmVsIHNjb3BlLiBNb3ZlIGl0IHRvIHdoZXJlIGl0
J3MgbmVlZGVkLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+CgpMb29rcyBnb29kIGV2ZW4gdGhvdWdoIGl0IGRvZXMgYWRk
IHRvIHRoZSBjb2RlIHNpemUgc2luY2Ugd2UgbmVlZCB0byBkZXJpdmUgaXQgaW4KMyBkaWZmZXJl
bnQgcGxhY2VzIGFuZCBtaWdodCBiZSBtb3JlIGluIHRoZSBmdXR1cmUuCkJ1dCBsb2dpY2FsbHkg
bWFrZXMgc2Vuc2UgdG8gbGltaXQgaXRzIHNjb3AgdG8gZm9yIGxvb3BzIHdoZXJlIGl0cyBuZWVk
ZWQuCgpSZXZpZXdlZC1ieTogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNv
bT4KCk1hbmFzaQoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMgfCAxMSArKysrKysrLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25z
KCspLCA0IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jCj4gaW5kZXggODlkMTUwYjQ1NTIwLi5lNTJlYTk2NDM3OTAgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IEBAIC0x
NzcxNiw3ICsxNzcxNiw2IEBAIGludGVsX21vZGVzZXRfc2V0dXBfaHdfc3RhdGUoc3RydWN0IGRy
bV9kZXZpY2UgKmRldiwKPiAgCQkJICAgICBzdHJ1Y3QgZHJtX21vZGVzZXRfYWNxdWlyZV9jdHgg
KmN0eCkKPiAgewo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkx
NShkZXYpOwo+IC0Jc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGU7Cj4gIAlzdHJ1
Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcjsKPiAgCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOwo+
ICAJaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7Cj4gQEAgLTE3NzQ5LDcgKzE3NzQ4LDggQEAgaW50
ZWxfbW9kZXNldF9zZXR1cF9od19zdGF0ZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAo+ICAJICog
d2FpdHMsIHNvIHdlIG5lZWQgdmJsYW5rIGludGVycnVwdHMgcmVzdG9yZWQgYmVmb3JlaGFuZC4K
PiAgCSAqLwo+ICAJZm9yX2VhY2hfaW50ZWxfY3J0YygmZGV2X3ByaXYtPmRybSwgY3J0Yykgewo+
IC0JCWNydGNfc3RhdGUgPSB0b19pbnRlbF9jcnRjX3N0YXRlKGNydGMtPmJhc2Uuc3RhdGUpOwo+
ICsJCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlID0KPiArCQkJdG9faW50ZWxf
Y3J0Y19zdGF0ZShjcnRjLT5iYXNlLnN0YXRlKTsKPiAgCj4gIAkJZHJtX2NydGNfdmJsYW5rX3Jl
c2V0KCZjcnRjLT5iYXNlKTsKPiAgCj4gQEAgLTE3NzYzLDcgKzE3NzYzLDkgQEAgaW50ZWxfbW9k
ZXNldF9zZXR1cF9od19zdGF0ZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAo+ICAJCWludGVsX3Nh
bml0aXplX2VuY29kZXIoZW5jb2Rlcik7Cj4gIAo+ICAJZm9yX2VhY2hfaW50ZWxfY3J0YygmZGV2
X3ByaXYtPmRybSwgY3J0Yykgewo+IC0JCWNydGNfc3RhdGUgPSB0b19pbnRlbF9jcnRjX3N0YXRl
KGNydGMtPmJhc2Uuc3RhdGUpOwo+ICsJCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlID0KPiArCQkJY3J0Y19zdGF0ZSA9IHRvX2ludGVsX2NydGNfc3RhdGUoY3J0Yy0+YmFzZS5z
dGF0ZSk7Cj4gKwo+ICAJCWludGVsX3Nhbml0aXplX2NydGMoY3J0YywgY3R4KTsKPiAgCQlpbnRl
bF9kdW1wX3BpcGVfY29uZmlnKGNydGNfc3RhdGUsIE5VTEwsICJbc2V0dXBfaHdfc3RhdGVdIik7
Cj4gIAl9Cj4gQEAgLTE3Nzk2LDkgKzE3Nzk4LDEwIEBAIGludGVsX21vZGVzZXRfc2V0dXBfaHdf
c3RhdGUoc3RydWN0IGRybV9kZXZpY2UgKmRldiwKPiAgCX0KPiAgCj4gIAlmb3JfZWFjaF9pbnRl
bF9jcnRjKGRldiwgY3J0Yykgewo+ICsJCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlID0KPiArCQkJdG9faW50ZWxfY3J0Y19zdGF0ZShjcnRjLT5iYXNlLnN0YXRlKTsKPiAgCQl1
NjQgcHV0X2RvbWFpbnM7Cj4gIAo+IC0JCWNydGNfc3RhdGUgPSB0b19pbnRlbF9jcnRjX3N0YXRl
KGNydGMtPmJhc2Uuc3RhdGUpOwo+ICAJCXB1dF9kb21haW5zID0gbW9kZXNldF9nZXRfY3J0Y19w
b3dlcl9kb21haW5zKGNydGNfc3RhdGUpOwo+ICAJCWlmIChXQVJOX09OKHB1dF9kb21haW5zKSkK
PiAgCQkJbW9kZXNldF9wdXRfcG93ZXJfZG9tYWlucyhkZXZfcHJpdiwgcHV0X2RvbWFpbnMpOwo+
IC0tIAo+IDIuMjMuMAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
