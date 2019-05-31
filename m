Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B4530E2B
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2019 14:33:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26E98893AB;
	Fri, 31 May 2019 12:33:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE101893AB
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2019 12:33:25 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 May 2019 05:33:25 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 31 May 2019 05:33:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 31 May 2019 15:33:22 +0300
Date: Fri, 31 May 2019 15:33:22 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20190531123322.GT5942@intel.com>
References: <20190531082626.30640-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190531082626.30640-1-imre.deak@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/icl: Ensure port A combo PHY HW
 state is correct
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

T24gRnJpLCBNYXkgMzEsIDIwMTkgYXQgMTE6MjY6MjZBTSArMDMwMCwgSW1yZSBEZWFrIHdyb3Rl
Ogo+IE1ha2Ugc3VyZSB0aGUgSFcgc3RhdGUgb2YgdGhlIHBvcnQgQSBjb21ibyBQSFkgaXMgY29y
cmVjdCB3cnQuIHRoZQo+IElSRUZHRU4gc2V0dGluZy4gVGhpcyB3aWxsIGZvcmNlIGEgcmVwcm9n
cmFtbWluZyBkdXJpbmcgaW5pdCBvciBhIFdBUk4KPiBkdXJpbmcgdW5pbml0IGlmIHRoZSBzZXR0
aW5nIGlzIGluY29ycmVjdC4KPiAKPiBPbiBteSBJQ0wgUlZQIEkgaGF2ZW4ndCBzZWVuIHRoaXMg
Y2hlY2sgZmFpbGluZyBhbmQgbGVhZGluZyB0byBhIGZvcmNlZAo+IHJlaW5pdC9XQVJOLCBidXQg
bGV0J3MgYWRkIGl0IHN0aWxsIGZvciBjb25zaXN0ZW5jeS4KPiAKPiBDYzogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBJbXJl
IERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2NvbWJvX3BoeS5jIHwgNCArKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGlu
c2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
Y29tYm9fcGh5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb21ib19waHkuYwo+IGlu
ZGV4IDk4MjEzY2M1ODczNi4uODQxNzA4ZGE1YTU2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2NvbWJvX3BoeS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfY29tYm9fcGh5LmMKPiBAQCAtMTk4LDYgKzE5OCwxMCBAQCBzdGF0aWMgYm9vbCBpY2xf
Y29tYm9fcGh5X3ZlcmlmeV9zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
Cj4gIAo+ICAJcmV0ID0gY25sX3ZlcmlmeV9wcm9jbW9uX3JlZl92YWx1ZXMoZGV2X3ByaXYsIHBv
cnQpOwo+ICAKPiArCWlmIChwb3J0ID09IFBPUlRfQSkKPiArCQlyZXQgJj0gY2hlY2tfcGh5X3Jl
ZyhkZXZfcHJpdiwgcG9ydCwgSUNMX1BPUlRfQ09NUF9EVzgocG9ydCksCj4gKwkJCQkgICAgIElS
RUZHRU4sIElSRUZHRU4pOwo+ICsKPiAgCXJldCAmPSBjaGVja19waHlfcmVnKGRldl9wcml2LCBw
b3J0LCBJQ0xfUE9SVF9DTF9EVzUocG9ydCksCj4gIAkJCSAgICAgQ0xfUE9XRVJfRE9XTl9FTkFC
TEUsIENMX1BPV0VSX0RPV05fRU5BQkxFKTsKPiAgCj4gLS0gCj4gMi4xNy4xCgotLSAKVmlsbGUg
U3lyasOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
