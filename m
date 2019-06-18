Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3884D4A4F0
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 17:14:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 870386E174;
	Tue, 18 Jun 2019 15:14:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC40F6E174
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 15:14:07 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 08:14:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,389,1557212400"; d="scan'208";a="181411627"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 18 Jun 2019 08:14:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Jun 2019 18:14:00 +0300
Date: Tue, 18 Jun 2019 18:14:00 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190618151400.GO5942@intel.com>
References: <20190618142108.9978-1-ville.syrjala@linux.intel.com>
 <20190618142108.9978-2-ville.syrjala@linux.intel.com>
 <156086918982.31375.16222108074150558958@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156086918982.31375.16222108074150558958@skylake-alporthouse-com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Fix various tracepoints for
 gen2
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 Shawn Guo <shawn.guo@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdW4gMTgsIDIwMTkgYXQgMDM6NDY6MjlQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgVmlsbGUgU3lyamFsYSAoMjAxOS0wNi0xOCAxNToyMTowNikKPiA+IEBA
IC01OSwxNCArNTcsMTMgQEAgVFJBQ0VfRVZFTlQoaW50ZWxfcGlwZV9kaXNhYmxlLAo+ID4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICApLAo+ID4gIAo+ID4gICAgICAgICAgICAgVFBfZmFz
dF9hc3NpZ24oCj4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICBlbnVtIHBpcGUgX3BpcGU7
Cj4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICBmb3JfZWFjaF9waXBlKGRldl9wcml2LCBf
cGlwZSkgewo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBfX2VudHJ5LT5m
cmFtZVtfcGlwZV0gPQo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIGRldl9wcml2LT5kcm0uZHJpdmVyLT5nZXRfdmJsYW5rX2NvdW50ZXIoJmRldl9wcml2LT5k
cm0sIF9waXBlKTsKPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgX19lbnRy
eS0+c2NhbmxpbmVbX3BpcGVdID0KPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBpbnRlbF9nZXRfY3J0Y19zY2FubGluZShpbnRlbF9nZXRfY3J0Y19mb3JfcGlw
ZShkZXZfcHJpdiwgX3BpcGUpKTsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwo+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGludGVsX2NydGMgKl9jcnRjOwo+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgZm9yX2VhY2hfaW50ZWxfY3J0YygmZGV2X3By
aXYtPmRybSwgX2NydGMpIHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
X19lbnRyeS0+ZnJhbWVbX2NydGMtPnBpcGVdID0gaW50ZWxfY3J0Y19nZXRfdmJsYW5rX2NvdW50
ZXIoX2NydGMpOwo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBfX2VudHJ5
LT5zY2FubGluZVtfY3J0Yy0+cGlwZV0gPSBpbnRlbF9nZXRfY3J0Y19zY2FubGluZShfY3J0Yyk7
Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICB9Cj4gPiAtICAgICAgICAgICAgICAgICAg
ICAgICAgICBfX2VudHJ5LT5waXBlID0gcGlwZTsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgIF9fZW50cnktPnBpcGUgPSBjcnRjLT5waXBlOwo+IAo+IE9rLiBTdGFyZWQgaGFyZCB0byBt
YWtlIHN1cmUgaXQgd2FzIF9jcnRjIGFuZCBub3QgY3J0Yy4gV291bGQgY3J0Y19fIGJlCj4gbW9y
ZSBvYnZpb3VzLCBvciBtYXliZSBpdF9fIHNvIHRoYXQgaXQgZG9lc24ndCBsb29rIGFueXRoaW5n
IGxpa2UgdGhlCj4gY3J0YyBhcmd1bWVudC4KCkkgc3VwcG9zZSBhIG1vcmUgZGlzdGluY3QgbmFt
ZSBtaWdodCBiZSBhIGdvb2QgaWRlYS4KCj4gCj4gPiAgICAgICAgICAgICBUUF9mYXN0X2Fzc2ln
bigKPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgIGVudW0gcGlwZSBwaXBlOwo+ID4gLSAg
ICAgICAgICAgICAgICAgICAgICAgICAgZm9yX2VhY2hfcGlwZShkZXZfcHJpdiwgcGlwZSkgewo+
ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBfX2VudHJ5LT5mcmFtZVtwaXBl
XSA9Cj4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZGV2X3By
aXYtPmRybS5kcml2ZXItPmdldF92YmxhbmtfY291bnRlcigmZGV2X3ByaXYtPmRybSwgcGlwZSk7
Cj4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF9fZW50cnktPnNjYW5saW5l
W3BpcGVdID0KPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBp
bnRlbF9nZXRfY3J0Y19zY2FubGluZShpbnRlbF9nZXRfY3J0Y19mb3JfcGlwZShkZXZfcHJpdiwg
cGlwZSkpOwo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGludGVsX2NydGMg
KmNydGM7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICBmb3JfZWFjaF9pbnRlbF9jcnRj
KCZkZXZfcHJpdi0+ZHJtLCBjcnRjKSB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIF9fZW50cnktPmZyYW1lW2NydGMtPnBpcGVdID0gaW50ZWxfY3J0Y19nZXRfdmJsYW5r
X2NvdW50ZXIoY3J0Yyk7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF9f
ZW50cnktPnNjYW5saW5lW2NydGMtPnBpcGVdID0gaW50ZWxfZ2V0X2NydGNfc2NhbmxpbmUoY3J0
Yyk7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICB9Cj4gCj4gT3IgZXZlbiBhIHBvcHVs
YXRlX3ZibGFua3MoaTkxNSwgX19lbnRyeS0+ZnJhbWUsIF9fZW50cnktPnNjYW5saW5lKQo+IAo+
IFJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAt
Q2hyaXMKCi0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
