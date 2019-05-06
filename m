Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8072B149B9
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2019 14:35:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00F17891C0;
	Mon,  6 May 2019 12:35:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 120B6891C0
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2019 12:35:56 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 May 2019 05:35:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,438,1549958400"; d="scan'208";a="168399130"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 06 May 2019 05:35:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 May 2019 15:35:52 +0300
Date: Mon, 6 May 2019 15:35:52 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20190506123552.GX24299@intel.com>
References: <20190502232648.4450-1-imre.deak@intel.com>
 <20190502232648.4450-10-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190502232648.4450-10-imre.deak@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 09/10] drm/i915: Avoid taking the PPS lock
 for non-eDP/VLV/CHV
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

T24gRnJpLCBNYXkgMDMsIDIwMTkgYXQgMDI6MjY6NDdBTSArMDMwMCwgSW1yZSBEZWFrIHdyb3Rl
Ogo+IE9uIElDTCB3ZSBoYXZlIHRvIG1ha2Ugc3VyZSB0aGF0IHdlIGVuYWJsZSB0aGUgQVVYIHBv
d2VyIGRvbWFpbiBpbiBhCj4gY29udHJvbGxlZCB3YXkgKGNvcnJlc3BvbmRpbmcgdG8gdGhlIHBv
cnQncyBhY3R1YWwgVHlwZUMgbW9kZSkuIFNpbmNlCj4gdGhlIFBQUyBsb2NrIC0gd2hpY2ggdGFr
ZXMgYW4gQVVYIHBvd2VyIHJlZiAtIGlzIG9ubHkgbmVlZGVkIG9uCj4gZURQL1ZMVi9DSFYgYXZv
aWQgdGFraW5nIGl0IGluIG90aGVyIGNhc2VzLgo+IAo+IENjOiBWaWxsZSBTeXJqYWxhIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGlt
cmUuZGVha0BpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rw
LmMgfCA0ICsrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZHAuYwo+IGluZGV4IGY1NmNiZGE1OWZiMy4uMWVlOWI3ZWJkODAxIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jCj4gQEAgLTYyNjMsNiArNjI2MywxMCBAQCB2b2lkIGlu
dGVsX2RwX2VuY29kZXJfcmVzZXQoc3RydWN0IGRybV9lbmNvZGVyICplbmNvZGVyKQo+ICAKPiAg
CWludGVsX2RwLT5yZXNldF9saW5rX3BhcmFtcyA9IHRydWU7Cj4gIAo+ICsJaWYgKCFJU19WQUxM
RVlWSUVXKGRldl9wcml2KSAmJiAhSVNfQ0hFUlJZVklFVyhkZXZfcHJpdikgJiYKPiArCSAgICAh
aW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSkKPiArCQlyZXR1cm47Cgp2bHYvY2h2IG5lZWQgdGhp
cyBmb3IgYWxsIERQIHBvcnRzLgoKPiArCj4gIAl3aXRoX3Bwc19sb2NrKGludGVsX2RwLCB3YWtl
cmVmKSB7Cj4gIAkJaWYgKElTX1ZBTExFWVZJRVcoZGV2X3ByaXYpIHx8IElTX0NIRVJSWVZJRVco
ZGV2X3ByaXYpKQo+ICAJCQlpbnRlbF9kcC0+YWN0aXZlX3BpcGUgPSB2bHZfYWN0aXZlX3BpcGUo
aW50ZWxfZHApOwo+IC0tIAo+IDIuMTcuMQoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
