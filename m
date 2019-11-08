Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1969F4D8A
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 14:50:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36EE96F99A;
	Fri,  8 Nov 2019 13:50:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3441C6F99B
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 13:50:44 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 05:50:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,281,1569308400"; d="scan'208";a="214926821"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 08 Nov 2019 05:50:40 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 08 Nov 2019 15:50:39 +0200
Date: Fri, 8 Nov 2019 15:50:39 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20191108135039.GI1208@intel.com>
References: <20191107203722.8814-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191107203722.8814-1-matthew.d.roper@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Don't test plane stride with
 !INTEL_DISPLAY_ENABLED
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBOb3YgMDcsIDIwMTkgYXQgMTI6Mzc6MjJQTSAtMDgwMCwgTWF0dCBSb3BlciB3cm90
ZToKPiBJZiBJTlRFTF9ESVNQTEFZX0VOQUJMRUQgaXMgZmFsc2UsIHRoZW4gdGhlIG1vZGVzZXR0
aW5nIHJlc291cmNlcyB3ZXJlCj4gbmV2ZXIgaW5pdGlhbGl6ZWQuICBVc2Vyc3BhY2UgbWF5IHN0
aWxsIGNhbGwgRFJNX0lPQ1RMX01PREVfQ1JFQVRFX0RVTUIKPiB3aGljaCB3aWxsIGV2ZW50dWFs
bHkgbGVhZCBpOTE1X2dlbV9kdW1iX2NyZWF0ZSgpIHRvIHRyeSB0byBkZXJlZmVyZW5jZQo+IGEg
bm9uLWV4aXN0ZW50IHBpcGUgQSBwcmltYXJ5IHBsYW5lIHdoaWxlIGZpZ3VyaW5nIG91dCBhIHBy
b3BlciBwaXRjaC4KPiAKPiBXZSBjb3VsZCBmb3JjZSBkdW1iIGJ1ZmZlciBjcmVhdGlvbiB0byBm
YWlsIGluIGNhc2VzIHdoZXJlIGRpc3BsYXkgaXNuJ3QKPiBlbmFibGVkIChzaW5jZSB0aGVyZSBp
c24ndCByZWFsbHkgYSBkZWZpbml0aW9uIG9mIGEgInN1aXRhYmxlIGZvcgo+IHNjYW5vdXQiIGJ1
ZmZlciBpbiB0aGF0IGNhc2UpLCBidXQgaXQncyBlYXNpZXIgKGFuZCBwcm9iYWJseSBsZXNzCj4g
aW52YXNpdmUgdG8gSUdUIHRlc3RzKSB0byBqdXN0IGRyb3AgdGhlIGF0dGVtcHQgdG8gYWxpZ24g
dG8gcGxhbmUgbWF4Cj4gc3RyaWRlIGluIGNhc2VzIHdoZXJlIHRoZSBkaXNwbGF5IGlzbid0IGVu
YWJsZWQuCgpJIGp1c3QgcHVzaGVkIG15IGVhcmxpZXIgcGF0Y2ggd2hpY2ggZG9lcyBpdCB0aGUg
b3RoZXIgd2F5IGFyb3VuZC4KQnV0IHllYWgsIHdlIHNob3VsZCBwZXJoYXBzIGp1c3QgcmVqZWN0
IHRoZSBlbnRpcmUgdGhpbmcuCgo+IAo+IENjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFy
Y2hpQGludGVsLmNvbT4KPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4K
PiBTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgo+
IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jIHwgMyArKy0KPiAgMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW0uYwo+IGluZGV4IDE0M2E4OTUyYjczNi4uZjAyMmExNzMyOGIwIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbS5jCj4gQEAgLTIyOSw3ICsyMjksOCBAQCBpOTE1X2dlbV9kdW1iX2Ny
ZWF0ZShzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUsCj4gIAlhcmdzLT5waXRjaCA9IEFMSUdOKGFyZ3Mt
PndpZHRoICogY3BwLCA2NCk7Cj4gIAo+ICAJLyogYWxpZ24gc3RyaWRlIHRvIHBhZ2Ugc2l6ZSBz
byB0aGF0IHdlIGNhbiByZW1hcCAqLwo+IC0JaWYgKGFyZ3MtPnBpdGNoID4gaW50ZWxfcGxhbmVf
ZmJfbWF4X3N0cmlkZSh0b19pOTE1KGRldiksIGZvcm1hdCwKPiArCWlmIChJTlRFTF9ESVNQTEFZ
X0VOQUJMRUQodG9faTkxNShkZXYpKSAmJgo+ICsJICAgIGFyZ3MtPnBpdGNoID4gaW50ZWxfcGxh
bmVfZmJfbWF4X3N0cmlkZSh0b19pOTE1KGRldiksIGZvcm1hdCwKPiAgCQkJCQkJICAgIERSTV9G
T1JNQVRfTU9EX0xJTkVBUikpCj4gIAkJYXJncy0+cGl0Y2ggPSBBTElHTihhcmdzLT5waXRjaCwg
NDA5Nik7Cj4gIAo+IC0tIAo+IDIuMjEuMAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
