Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D6F53D3A5
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2019 19:11:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70A4C89129;
	Tue, 11 Jun 2019 17:11:30 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B8FF89129
 for <Intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2019 17:11:29 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jun 2019 10:11:28 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 11 Jun 2019 10:11:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Jun 2019 20:11:25 +0300
Date: Tue, 11 Jun 2019 20:11:25 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20190611171125.GH5942@intel.com>
References: <20190610120608.15477-1-tvrtko.ursulin@linux.intel.com>
 <20190610120608.15477-6-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190610120608.15477-6-tvrtko.ursulin@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [CI 6/6] drm/i915: Remove I915_READ64 and
 I915_READ64_32x2
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBKdW4gMTAsIDIwMTkgYXQgMDE6MDY6MDhQTSArMDEwMCwgVHZydGtvIFVyc3VsaW4g
d3JvdGU6Cj4gRnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4K
PiAKPiBOb3cgdGhhdCBhbGwgdGhlaXIgdXNlcnMgYXJlIGdvbmUgd2UgY2FuIHJlbW92ZSB0aGUg
bWFjcm9zIGFuZAo+IGFjY29tcGFueWluZyBkdXBsaWNhdGVkIGNvbW1lbnQuCj4gCj4gU2lnbmVk
LW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiBTdWdn
ZXN0ZWQtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4gUmV2aWV3ZWQt
Ynk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggfCAxOCAtLS0tLS0tLS0tLS0tLS0tLS0KPiAgMSBmaWxl
IGNoYW5nZWQsIDE4IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+IGlu
ZGV4IDIwZWIzN2I3NjBjNC4uZDNjMDJlMDA5YTk4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5oCj4gQEAgLTI4NTEsMjQgKzI4NTEsNiBAQCBleHRlcm4gdm9pZCBpbnRlbF9kaXNwbGF5X3By
aW50X2Vycm9yX3N0YXRlKHN0cnVjdCBkcm1faTkxNV9lcnJvcl9zdGF0ZV9idWYgKmUsCj4gICNk
ZWZpbmUgSTkxNV9SRUFEX05PVFJBQ0UocmVnX18pCSBfX0k5MTVfUkVHX09QKHJlYWRfbm90cmFj
ZSwgZGV2X3ByaXYsIChyZWdfXykpCj4gICNkZWZpbmUgSTkxNV9XUklURV9OT1RSQUNFKHJlZ19f
LCB2YWxfXykgX19JOTE1X1JFR19PUCh3cml0ZV9ub3RyYWNlLCBkZXZfcHJpdiwgKHJlZ19fKSwg
KHZhbF9fKSkKPiAgCj4gLS8qIEJlIHZlcnkgY2FyZWZ1bCB3aXRoIHJlYWQvd3JpdGUgNjQtYml0
IHZhbHVlcy4gT24gMzItYml0IG1hY2hpbmVzLCB0aGV5Cj4gLSAqIHdpbGwgYmUgaW1wbGVtZW50
ZWQgdXNpbmcgMiAzMi1iaXQgd3JpdGVzIGluIGFuIGFyYml0cmFyeSBvcmRlciB3aXRoCj4gLSAq
IGFuIGFyYml0cmFyeSBkZWxheSBiZXR3ZWVuIHRoZW0uIFRoaXMgY2FuIGNhdXNlIHRoZSBoYXJk
d2FyZSB0bwo+IC0gKiBhY3QgdXBvbiB0aGUgaW50ZXJtZWRpYXRlIHZhbHVlLCBwb3NzaWJseSBs
ZWFkaW5nIHRvIGNvcnJ1cHRpb24gYW5kCj4gLSAqIG1hY2hpbmUgZGVhdGguIEZvciB0aGlzIHJl
YXNvbiB3ZSBkbyBub3Qgc3VwcG9ydCBJOTE1X1dSSVRFNjQsIG9yCj4gLSAqIGRldl9wcml2LT51
bmNvcmUuZnVuY3MubW1pb193cml0ZXEuCj4gLSAqCj4gLSAqIFdoZW4gcmVhZGluZyBhIDY0LWJp
dCB2YWx1ZSBhcyB0d28gMzItYml0IHZhbHVlcywgdGhlIGRlbGF5IG1heSBjYXVzZQo+IC0gKiB0
aGUgdHdvIHJlYWRzIHRvIG1pc21hdGNoLCBlLmcuIGEgdGltZXN0YW1wIG92ZXJmbG93aW5nLiBB
bHNvIG5vdGUgdGhhdAo+IC0gKiBvY2Nhc2lvbmFsbHkgYSA2NC1iaXQgcmVnaXN0ZXIgZG9lcyBu
b3QgYWN0dWFseSBzdXBwb3J0IGEgZnVsbCByZWFkcQo+IC0gKiBhbmQgbXVzdCBiZSByZWFkIHVz
aW5nIHR3byAzMi1iaXQgcmVhZHMuCj4gLSAqCj4gLSAqIFlvdSBoYXZlIGJlZW4gd2FybmVkLgoK
V2UgYXJlIG5vIGxvbmdlciB3YXJuZWQ/Cgo+IC0gKi8KPiAtI2RlZmluZSBJOTE1X1JFQUQ2NChy
ZWdfXykJX19JOTE1X1JFR19PUChyZWFkNjQsIGRldl9wcml2LCAocmVnX18pKQo+IC0jZGVmaW5l
IEk5MTVfUkVBRDY0XzJ4MzIobG93ZXJfcmVnX18sIHVwcGVyX3JlZ19fKSBcCj4gLQlfX0k5MTVf
UkVHX09QKHJlYWQ2NF8yeDMyLCBkZXZfcHJpdiwgKGxvd2VyX3JlZ19fKSwgKHVwcGVyX3JlZ19f
KSkKPiAtCj4gICNkZWZpbmUgUE9TVElOR19SRUFEKHJlZ19fKQlfX0k5MTVfUkVHX09QKHBvc3Rp
bmdfcmVhZCwgZGV2X3ByaXYsIChyZWdfXykpCj4gICNkZWZpbmUgUE9TVElOR19SRUFEMTYocmVn
X18pCV9fSTkxNV9SRUdfT1AocG9zdGluZ19yZWFkMTYsIGRldl9wcml2LCAocmVnX18pKQo+ICAK
PiAtLSAKPiAyLjIwLjEKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngKCi0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
