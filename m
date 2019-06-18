Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D630C4A72B
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 18:39:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 492986E200;
	Tue, 18 Jun 2019 16:39:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3663F89BF8
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 16:39:13 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 09:39:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,389,1557212400"; d="scan'208";a="150326621"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 18 Jun 2019 09:39:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Jun 2019 19:39:09 +0300
Date: Tue, 18 Jun 2019 19:39:09 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20190618163909.GS5942@intel.com>
References: <20190604145826.16424-1-imre.deak@intel.com>
 <20190604145826.16424-16-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604145826.16424-16-imre.deak@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 15/23] drm/i915: Sanitize the TypeC FIA lane
 configuration decoding
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

T24gVHVlLCBKdW4gMDQsIDIwMTkgYXQgMDU6NTg6MThQTSArMDMwMCwgSW1yZSBEZWFrIHdyb3Rl
Ogo+IFVzZSBoZXggbnVtYmVycywgc2luY2UgdGhhdCBtYWtlcyBtb3JlIHNlbnNlIHdoZW4gZGVj
b2RpbmcgYSBiaXQgcGF0dGVybi4KPiAKPiBObyBmdW5jdGlvbmFsIGNoYW5nZS4KPiAKPiBTdWdn
ZXN0ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
Cj4gQ2M6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPgo+IENjOiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYt
Ynk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfdGMuYyB8IDE1ICsrKysrKysrLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdl
ZCwgOCBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF90Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
dGMuYwo+IGluZGV4IGZjMDM0MWRjNTBjNS4uNGIyZjUyNWJjMmE2IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3RjLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF90Yy5jCj4gQEAgLTcyLDE1ICs3MiwxNiBAQCBpbnQgaW50ZWxfdGNfcG9ydF9maWFf
bWF4X2xhbmVfY291bnQoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpCj4gIAlz
d2l0Y2ggKGxhbmVfaW5mbykgewo+ICAJZGVmYXVsdDoKPiAgCQlNSVNTSU5HX0NBU0UobGFuZV9p
bmZvKTsKPiAtCWNhc2UgMToKPiAtCWNhc2UgMjoKPiAtCWNhc2UgNDoKPiAtCWNhc2UgODoKPiAr
CQkvKiBmYWxsLXRocm91Z2ggKi8KPiArCWNhc2UgMHgxOgo+ICsJY2FzZSAweDI6Cj4gKwljYXNl
IDB4NDoKPiArCWNhc2UgMHg4Ogo+ICAJCXJldHVybiAxOwo+IC0JY2FzZSAzOgo+IC0JY2FzZSAx
MjoKPiArCWNhc2UgMHgzOgo+ICsJY2FzZSAweGM6Cj4gIAkJcmV0dXJuIDI7Cj4gLQljYXNlIDE1
Ogo+ICsJY2FzZSAweGY6Cj4gIAkJcmV0dXJuIDQ7Cj4gIAl9CgpTdGlsbCBsb29rcyBsaWtlIGEg
aGFuZCByb2xsZWQgaHdlaWdodCgpIHRvIG1lIDspCgo+ICB9Cj4gLS0gCj4gMi4xNy4xCgotLSAK
VmlsbGUgU3lyasOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
