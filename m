Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E75AD3F3C
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 14:08:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 491746EC2C;
	Fri, 11 Oct 2019 12:08:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 458FB6EC2C
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 12:08:55 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Oct 2019 05:08:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,284,1566889200"; d="scan'208";a="206431010"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 11 Oct 2019 05:08:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Oct 2019 15:08:50 +0300
Date: Fri, 11 Oct 2019 15:08:50 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20191011120850.GN1208@intel.com>
References: <20191011010907.103309-1-lucas.demarchi@intel.com>
 <20191011010907.103309-7-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011010907.103309-7-lucas.demarchi@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915: prettify MST debug message
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

T24gVGh1LCBPY3QgMTAsIDIwMTkgYXQgMDY6MDk6MDZQTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IHMvPy86LyBzbyBpdCdzIGdldCBjb3JyZWN0bHkgY29sb3JlZCBieSBkbWVzZy4K
CldoYXQgZG8geW91IG1lYW4gY29ycmVjdGx5PwoKVGhlIGRlYnVnIG1lc3NhZ2Ugd2FzIGFza2lu
ZyB0aGUgcXVlc3Rpb24gIihpcykgTVNUIHN1cHBvcnRlZD8iCkFmdGVyIHRoaXMgaXQganVzdCBk
ZWNsYXJlcyB0aGF0IE1TVCBpcyBub3Qgc3VwcG9ydGVkLiBJIGd1ZXNzIG5vIHJlYWwKZGlmZmVy
ZW5jZSBzbyBJIGNvdWxkIGxpdmUgd2l0aCBlaXRoZXIgb25lLgoKVGhlIG9ubHkgdGhpbmcgdGhh
dCBzbGlnaHRseSBib3RoZXJzIG1lIHdpdGggdGhlICc6JyBpcyB0aGF0IHRoZQpwb3J0L3Npbmsv
bW9kcGFyYW0gYWxzbyB1c2UgaXQsIGJ1dCBpbiBhIHNsaWdodGx5IGRpZmZlcmVudCB3YXkKc28g
dGhlICJNU1Qgc3VwcG9ydGVkOiIgJzonIGxvb2tzIGEgYml0IG5ha2VkLgoKUmV2aWV3ZWQtYnk6
IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cgo+IAo+IFNp
Z25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+
IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCAyICstCj4g
IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPiBpbmRleCAzNDhhMDk4OTA2MTEuLjMz
YTU1ZGE4OWNlOSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMK
PiBAQCAtNDQ1MCw3ICs0NDUwLDcgQEAgaW50ZWxfZHBfY29uZmlndXJlX21zdChzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwKQo+ICAJCSZkcF90b19kaWdfcG9ydChpbnRlbF9kcCktPmJhc2U7Cj4g
IAlib29sIHNpbmtfY2FuX21zdCA9IGludGVsX2RwX3NpbmtfY2FuX21zdChpbnRlbF9kcCk7Cj4g
IAo+IC0JRFJNX0RFQlVHX0tNUygiW0VOQ09ERVI6JWQ6JXNdIE1TVCBzdXBwb3J0PyBwb3J0OiAl
cywgc2luazogJXMsIG1vZHBhcmFtOiAlc1xuIiwKPiArCURSTV9ERUJVR19LTVMoIltFTkNPREVS
OiVkOiVzXSBNU1Qgc3VwcG9ydDogcG9ydDogJXMsIHNpbms6ICVzLCBtb2RwYXJhbTogJXNcbiIs
Cj4gIAkJICAgICAgZW5jb2Rlci0+YmFzZS5iYXNlLmlkLCBlbmNvZGVyLT5iYXNlLm5hbWUsCj4g
IAkJICAgICAgeWVzbm8oaW50ZWxfZHAtPmNhbl9tc3QpLCB5ZXNubyhzaW5rX2Nhbl9tc3QpLAo+
ICAJCSAgICAgIHllc25vKGk5MTVfbW9kcGFyYW1zLmVuYWJsZV9kcF9tc3QpKTsKPiAtLSAKPiAy
LjIzLjAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngKCi0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
